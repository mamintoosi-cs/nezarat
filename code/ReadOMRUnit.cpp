//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "ReadOMRUnit.h"
//#include "DMUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "ParentUnit"
#pragma resource "*.dfm"
TReadFromOMR *ReadFromOMR;
FILE *err;
int recNo;
AnsiString STOP_CODE="999";

//---------------------------------------------------------------------------
__fastcall TReadFromOMR::TReadFromOMR(TComponent* Owner)
        : TParentForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TReadFromOMR::ComputeGradesBtnClick(TObject *Sender)
{
 int lessonID,groupCode,teacherID,groupID;
 char t[30];
 int i,j;
 AnsiString str;//,idCodes;
 ProgressBar1->Position=0;
 ProgressBar1->Show();
 ProgressBar1->Max=DM->OMR->RecordCount;
 MsgLabel->Caption="·ÿ›« ç‰œ ·ÕŸÂ ’»— ﬂ‰Ìœ";

/* if(Application->MessageBox("œ—Ê” ŒÊ«‰œÂ ‘œÂ  —„ Ã«—Ì Õ–› ‘Ê‰œø","«Œÿ«—",MB_YESNO)==IDYES)
 {
   DeleteFromVarResults->ExecSQL();
   DeleteFromVarQLT->ExecSQL();
 }*/
  recNo=0;
  DM->OMR->First();
  while (!DM->OMR->Eof)
  {
   //Must be checked for correctness
//   idCodes=DM->OMR->FieldByName("IDCodes")->AsString;
   TeacherAndLessonIDs(teacherID,lessonID);
   Label1->Caption=IntToStr(recNo);
   Label1->Update();
   recNo++;
   DM->OMR->Next();  ProgressBar1->StepIt();

   groupCode=NextGroupCode(teacherID,lessonID);
   TeacherGroupIDQuery->Close();
   TeacherGroupIDQuery->ParamByName("teacherID")->AsInteger=teacherID;
   TeacherGroupIDQuery->Open();
   groupID=TeacherGroupIDQuery->FieldByName("groupID")->AsInteger;
   readRecords(teacherID,lessonID,groupCode,groupID);

//   Label1->Caption=IntToStr(teacherID)+" "+IntToStr(lessonID)+" "+IntToStr(groupID);

//   break;
  }
 DeleteBtn->Enabled=true;
 ProgressBar1->Hide();
 DM->OMR->Close();
 DeleteFromOMRQuery->ExecSQL();
 MsgLabel->Caption="„Õ«”»«  «‰Ã«„ ‘œ° »—«Ì «’·«Õ œ—Ê” ŒÊ«‰œÂ ‘œÂ „Ì  Ê«‰Ìœ »Â ’›ÕÂ «’·Ì —ÃÊ⁄ ﬂ‰Ìœ";
}
//---------------------------------------------------------------------------
int __fastcall TReadFromOMR::NextGroupCode(int teacherID,int lessonID)
{
   ExistDarsQry->Close();
   ExistDarsQry->ParamByName("TeacherID")->AsInteger=teacherID;
   ExistDarsQry->ParamByName("LessonID")->AsInteger=lessonID;
   ExistDarsQry->Open();
   if(ExistDarsQry->RecordCount == 0) return(1);
   ExistDarsQry->Last();
   return(ExistDarsQry->FieldByName("groupCode")->AsInteger+1);
}
//---------------------------------------------------------------------------
void TReadFromOMR::Initialize(void)
{
  int i=0,lt; //lt:lesson type
  ColumnsCoefs->First();
  while(!ColumnsCoefs->Eof)
  {
//   ListBox1->Items->Add(FloatToStr(->ColumnsCoefs->FieldByName("ColCoef")->AsFloat));
   colCoef[i++]=ColumnsCoefs->FieldByName("ColCoef")->AsFloat;
   ColumnsCoefs->Next();
  }

  DM->LessonsTypes->Open();
  DM->LessonsTypes->First();
  while(!DM->LessonsTypes->Eof)
  {
    lt=DM->LessonsTypes->FieldByName("LessonTypeID")->AsInteger;
    i=0;
    sumOfRowCoef[lt]=0;
    varQuestions->Filtered=false;
    varQuestions->Filter= "LessonTypeID="+IntToStr(lt);
    varQuestions->Filtered=true;
    varQuestions->First();
    while(!varQuestions->Eof)
    {
     rowCoef[lt][i]=varQuestions->FieldByName("Coef")->AsFloat;
     sumOfRowCoef[lt] += rowCoef[lt][i];
     varQuestions->Next();
     i++;
     if(i>MaxNoofQuestions) ShowMessage("Error in ReadOMR: MaxNoOfQuestions");
    }
    DM->LessonsTypes->Next();
  }//end while
  err=fopen("Error.txt","w");
  recNo=1;
}
//---------------------------------------------------------------------------
void TReadFromOMR::readRecords(int tID,int lID,int gCode,int gID)
{
//  DM->varQLT->Insert();
//Reprot À»  Å«”ŒÂ« œ—
  AnsiString javab;
  int i,lt,k,noofQuestions;
  unsigned int s[MaxNoofQuestions][MaxNoofColumns]={0};
   while(DM->OMR->FieldByName("StopCode")->AsString != STOP_CODE && !DM->OMR->Eof)
   {
      if (FareghRadioGroup->ItemIndex==1)
            javab=DM->OMR->FieldByName("Answers")->AsString;
      else
            javab=DM->OMR->FieldByName("Part1")->AsString+
            DM->OMR->FieldByName("Part2")->AsString+
            DM->OMR->FieldByName("Part3")->AsString+
            DM->OMR->FieldByName("Part4")->AsString;

      noofQuestions=NoOfQuestions(lID,lt);
      for(i=0;i<noofQuestions;i++)
      {
        if(isdigit(javab[i+1]))
        {
         if(javab[i+1]>'4')
         {
          ShowMessage("‘„«—Â ÃÊ«» »«Ìœ ﬂÊçﬂ — Ì« „”«ÊÌ »« 4 »«‘œ. ");
          fprintf(err,"Javab No must be <=4 Error on record No %d\n",recNo);
         }
         k=javab[i+1]-'0';
         s[i][k]++;
        }
      }
     Label1->Caption=IntToStr(recNo);
     Label1->Update();
     DM->OMR->Next();recNo++; ProgressBar1->StepIt();
   }
  saveToTable(s,tID,lID,gCode,gID);
}
//---------------------------------------------------------------------------
void TReadFromOMR::saveToTable(unsigned int s[MaxNoofQuestions][MaxNoofColumns],int tID,int lID,int gCode,int gID)
{
  int i,j,noofQuestions,lt;
  int AnswersSum,tPasokh=0,ID;
  float ScoresSum,AVG=0;

  noofQuestions=NoOfQuestions(lID,lt);
  MaxIDQuery->Close();
  MaxIDQuery->Open();
  ID=MaxIDQuery->FieldByName("maxID")->AsInteger+1;
  for(i=0;i<noofQuestions;i++)
  {
    AnswersSum=0; ScoresSum=0;tPasokh=0;
    DM->varResults->Insert();
    DM->varResults->Edit();
    DM->varResults->FieldByName("ID")->AsInteger=ID;//DM->varQLT->FieldByName("ID")->AsInteger;
    DM->varResults->FieldByName("RowNo")->AsInteger=i+1;
    for(j=0;j<5;j++)
    {
      DM->varResults->Fields->Fields[5+j]->AsInteger=s[i][j];
      tPasokh+=s[i][j];//must be changed if two answer equal with no answer
      if(j>0)
      {
       AnswersSum += s[i][j];
       ScoresSum += s[i][j]*colCoef[j];
      }
    }
    DM->varResults->FieldByName("AnswersSum")->AsInteger=AnswersSum;
    DM->varResults->FieldByName("ScoresSum")->AsFloat=ScoresSum;
    if(AnswersSum==0) DM->varResults->FieldByName("Average")->AsFloat=0;
    else
    {
      DM->varResults->FieldByName("Average")->AsFloat=ScoresSum/AnswersSum;
      AVG += (ScoresSum/AnswersSum) * rowCoef[lt][i];
    }
    DM->varResults->Post();
//    if(AnswersSum>tPasokh) tPasokh=AnswersSum;
  }
  float avg=AVG/sumOfRowCoef[lt];
  AnsiString rotbeh;
  DM->varQLT->Append();
  DM->varQLT->FieldByName("ID")->AsInteger=ID;
  DM->varQLT->FieldByName("TeacherID")->AsInteger=tID;
  DM->varQLT->FieldByName("LessonID")->AsInteger=lID;
  DM->varQLT->FieldByName("groupCode")->AsInteger=gCode;
  DM->varQLT->FieldByName("groupID")->AsInteger=gID;
  DM->varQLT->FieldByName("TermID")->AsInteger=DM->Terms->FieldByName("TermID")->AsInteger;
 //  DM->varQLT->Post();
 //  DM->varQLT->Edit();
  DM->varQLT->FieldByName("Average")->AsFloat=avg;
  DM->varQLT->FieldByName("TPasokh")->AsInteger=tPasokh;
  if(avg>=18.8) rotbeh="⁄«·Ì";
  else if(avg>=16.3 && avg<18.8) rotbeh="ŒÊ»";
  else if(avg>=14 && avg<16.3) rotbeh="„ Ê”ÿ";
  else if(avg>=11.3 && avg<14) rotbeh="÷⁄Ì›";
  else rotbeh="»”Ì«—÷⁄Ì›";
  DM->varQLT->FieldByName("Rotbeh")->AsString=rotbeh;
  DM->varQLT->Post();
}
//---------------------------------------------------------------------------
void __fastcall TReadFromOMR::DeleteBtnClick(TObject *Sender)
{
 if(Application->MessageBox("œ—Ê” ŒÊ«‰œÂ ‘œÂ  —„ Ã«—Ì Õ–› ‘Ê‰œø","«Œÿ«—",MB_YESNO)==IDYES)
 {
   Label1->Caption="Deleted";
   DeleteFromVarResults->ExecSQL();
   DeleteFromVarQLT->ExecSQL();
 }
}
//---------------------------------------------------------------------------
void __fastcall TReadFromOMR::FormShow(TObject *Sender)
{
  Initialize();
  DM->OMR->Close();
  DM->OMR->Open();
  varQuestions->Close();
  varQuestions->Open();
  ColumnsCoefs->Close();
  ColumnsCoefs->Open();
  Lessons->Close();
  Lessons->Open();
  ProgressBar1->Hide();
  MsgLabel->Caption="„‘Œ’Â Â«Ì Œ«—Ã «“ „ÕœÊœÂ „Ã«“ »« ’›— Ã«Ìê“Ì‰ ŒÊ«Â‰œ ‘œ";
  StopCodeEdit->Text=STOP_CODE;
}
//---------------------------------------------------------------------------
void __fastcall TReadFromOMR::Button1Click(TObject *Sender)
{
//  Label1->Caption=MaxIDQuery->FieldByName("maxID")->AsInteger+1;
  AnsiString s="abcdefgh";
  Label1->Caption=s.sprintf("%04d",23);
}
//---------------------------------------------------------------------------
void __fastcall TReadFromOMR::ReadAndTestBtnClick(TObject *Sender)
{
 ProgressBar1->Position=0;
 ProgressBar1->Show();
 ProgressBar1->Max=DM->OMR->RecordCount;
 TBookmark Bookmark;
 DM->OMR->DisableControls();
 if(TestingReadedLessons())
 {
   ComputeGradesBtn->Enabled=true;
   if(MessageDlg("«ÿ·«⁄«  Ê«—œ ‘œÂ ’ÕÌÕ Â” ‰œ° „Õ«”»Â ‰„—«  «‰Ã«„ ‘Êœø",
      mtConfirmation,TMsgDlgButtons() <<mbYes<<mbNo,0)==mrYes)
        ComputeGradesBtnClick(Sender);
 }
 DM->OMR->EnableControls(); // Turn on display of records in data controls
 ProgressBar1->Hide();
}
//---------------------------------------------------------------------------
void __fastcall TReadFromOMR::TeacherBoxClick(TObject *Sender)
{
  int teacherID=TeachersNameQuery->FieldByName("TeacherID")->AsInteger;
  if(DM->OMR->FieldByName("StopCode")->AsString != STOP_CODE) return;
  AnsiString s="abcdef";
  AnsiString format="%0"+IntToStr(DM->OMR->FieldByName("TeacherID")->Size)+"d";
  s.sprintf(format.c_str(),teacherID);
  DM->OMR->Edit();
  DM->OMR->FieldByName("TeacherID")->AsString=s;
  DM->OMR->Post();
  TeacherBox->Enabled=false;
  ReadAndTestBtnClick(Sender);
}
//---------------------------------------------------------------------------
void __fastcall TReadFromOMR::LessonBoxClick(TObject *Sender)
{
  int lessonID=Lessons->FieldByName("LessonID")->AsInteger;
  if(DM->OMR->FieldByName("StopCode")->AsString != STOP_CODE) return;
  AnsiString s="abcdef";
  AnsiString format="%0"+IntToStr(DM->OMR->FieldByName("LessonID")->Size)+"d";
  s.sprintf(format.c_str(),lessonID);
  DM->OMR->Edit();
  DM->OMR->FieldByName("LessonID")->AsString=s;
  DM->OMR->Post();
  LessonBox->Enabled=false;
  ReadAndTestBtnClick(Sender);
}
//---------------------------------------------------------------------------
int __fastcall TReadFromOMR::NoOfQuestions(int lID,  int &lt)
{
  TLocateOptions Opts;
  Opts.Clear();
  DM->Lessons->Locate("LessonID",lID,Opts);
  lt=DM->Lessons->FieldByName("LessonTypeID")->AsInteger;
  varQuestions->Filtered=false;
  varQuestions->Filter= "LessonTypeID="+IntToStr(lt);
  varQuestions->Filtered=true;
  return(varQuestions->RecordCount);
}
//---------------------------------------------------------------------------
void __fastcall TReadFromOMR::TeacherAndLessonIDs(int &teacherID,int &lessonID)
{
  AnsiString idCodes;
  teacherID=StrToInt(DM->OMR->FieldByName("TeacherID")->AsString);
  if(teacherID>MaxValueofTeachersNo)
  {
   ShowMessage("‘„«—Â «” «œ «“ 500 »Ì‘ — ‘œÂ «” !");
   teacherID=0;
  }
  lessonID=StrToInt(DM->OMR->FieldByName("lessonID")->AsString);
  if(lessonID>MaxValueofLessonsNo)
  {
   ShowMessage("‘„«—Â œ—” «“ 30000 »Ì‘ — ‘œÂ «” !");
   lessonID=0;
  }
}
//---------------------------------------------------------------------------
void __fastcall TReadFromOMR::LessonsDBGridKeyPress(TObject *Sender,
      char &Key)
{
 if(Key==VK_ESCAPE)
 {
   LessonsDBGrid->Visible=false;
   ReadAndTestBtnClick(Sender);
 }
}
//---------------------------------------------------------------------------
bool __fastcall TReadFromOMR::TestingReadedLessons(void)
{
 int lessonID,groupCode,teacherID,groupID;
 char t[30];
 int i,j,noofQuestions,lt;
 AnsiString str,idCodes,javab,msg;
 bool teacherStatus,lessonStatus,alreadyTestedLT,isLastRecord,isCorrect=true;
 TLocateOptions Opts;
 int testLT1=0,testLT2=0,tPasokh=0; //testLT1 : test lesson type<lt

  recNo=0;
  DM->OMR->First();
  if(DM->OMR->FieldByName("StopCode")->AsString!=STOP_CODE)
  {
    ShowMessage("«Ê·Ì‰ ”ÿ— ÃœÊ· «ÿ·«⁄«  ŒÊ«‰œÂ ‘œÂ Õ«ÊÌ ﬂœ  Êﬁ› ‰Ì” ");
    return false;
  }
  while (!DM->OMR->Eof)
  {
    TeacherAndLessonIDs(teacherID,lessonID);
    Opts.Clear();
    teacherStatus=DM->Teachers->Locate("TeacherID",teacherID,Opts);
  //   Label1->Caption=IntToStr(teacherID);
    lessonStatus=DM->Lessons->Locate("LessonID",lessonID,Opts);
//    Opts<< loPartialKey;
//    TeachersNameQuery->Locate("TeacherID",teacherID,Opts);
    DM->Alaki->Edit();
    DM->Alaki->FieldByName("TeacherID")->AsInteger=teacherID;
    DM->Alaki->FieldByName("lessonID")->AsInteger=lessonID;
    DM->Alaki->Post();
    if( teacherStatus==false )
    {
       ShowMessage("«” «œÌ »« ﬂœ "+IntToStr(teacherID)+"ÊÃÊœ ‰œ«—œ\n"+"«” «œ „Ê—œ‰Ÿ— —« „‘Œ’ ‰„«ÌÌœ");
       TeacherBox->Enabled=true;
       TeacherBox->SetFocus();
       return false;
    }
    if( lessonStatus==false )
    {
       ShowMessage("œ—”Ì »« ﬂœ "+IntToStr(lessonID)+"ÊÃÊœ ‰œ«—œ\n"+"œ—” „Ê—œ‰Ÿ— —« „‘Œ’ ‰„«ÌÌœ");
       LessonBox->Enabled=true;
       LessonBox->SetFocus();
       return false;
    }
//    Bookmark= DM->OMR->GetBookmark();
    noofQuestions=NoOfQuestions(lessonID,lt);
//    Label1->Caption=IntToStr(recNo);    Label1->Update();

    DM->OMR->Next();  recNo++; ProgressBar1->StepIt();
    if(DM->OMR->Eof || DM->OMR->FieldByName("StopCode")->AsString==STOP_CODE)
    {
      if(DM->OMR->FieldByName("StopCode")->AsString==STOP_CODE) DM->OMR->Prior();
      TeacherAndLessonIDs(teacherID,lessonID);
      DM->Alaki->Edit();
      DM->Alaki->FieldByName("TeacherID")->AsInteger=teacherID;
      DM->Alaki->FieldByName("lessonID")->AsInteger=lessonID;
      DM->Alaki->Post();
      msg="\t œ—” "+LessonBox->Text+" - "+IntToStr(lessonID)+
        +"\n\t"+"»« «” «œ "+
        TeacherBox->Text.SubString(1,TeacherBox->Text.Pos("°")-1)+
        " - "+IntToStr(teacherID)+"\n"+"Å«”Œ‰«„Â «Ì ‰œ«‘ Â Ê ·–« Õ–› „Ì ‘Êœ";
      ShowMessage(msg);
      DM->OMR->Delete();
      Label2->Caption=BoolToStr(DM->OMR->Eof,true);
      continue;
    }
    tPasokh=testLT1=testLT2=0;
//    javab=DM->OMR->FieldByName("Answers")->AsString;
    if (FareghRadioGroup->ItemIndex==1)
            javab=DM->OMR->FieldByName("Answers")->AsString;
    else
            javab=DM->OMR->FieldByName("Part1")->AsString+
            DM->OMR->FieldByName("Part2")->AsString+
            DM->OMR->FieldByName("Part3")->AsString+
            DM->OMR->FieldByName("Part4")->AsString;
    if(noofQuestions != javab.Length() && FareghRadioGroup->ItemIndex==1)
    {
      ShowMessage(" ⁄œ«œ Å«”ŒÂ«Ì ﬁ—«∆  ‘œÂ Ê  ⁄œ«œ ”Ê«·«  œ— ÃœÊ· œ—Ê” »« Â„ „ÿ«»ﬁ  ‰œ«—‰œ");
      msg="«Ì‰ œ—” »Â Â„—«Â Å«”ŒÂ«Ì ﬁ—«∆  ‘œÂ Õ–› ‘Êœø  œ—’Ê— Ì ﬂÂ ÃÊ«» „‰›Ì »«‘œ ⁄„· »——”Ì „ Êﬁ› „Ì ‘Êœ.";
      if(MessageDlg(msg,mtWarning,TMsgDlgButtons() <<mbYes<<mbNo,0)==mrNo)
        return false;

      DM->OMR->Prior();
      DM->OMR->Delete();
      while (!DM->OMR->Eof && DM->OMR->FieldByName("StopCode")->AsString!=STOP_CODE)
        {DM->OMR->Delete();recNo++; ProgressBar1->StepIt();}
      continue;
    }
    while (!DM->OMR->Eof && DM->OMR->FieldByName("StopCode")->AsString!=STOP_CODE)
    {
      if (FareghRadioGroup->ItemIndex==1)
            javab=DM->OMR->FieldByName("Answers")->AsString;
      else
            javab=DM->OMR->FieldByName("Part1")->AsString+
            DM->OMR->FieldByName("Part2")->AsString+
            DM->OMR->FieldByName("Part3")->AsString+
            DM->OMR->FieldByName("Part4")->AsString;
//      javab=DM->OMR->FieldByName("Answers")->AsString;
//      if(javab[noofQuestions]=='0') testLT1++;
//      if(javab[noofQuestions+1]!='0' && noofQuestions<MaxNoofQuestions) testLT2++;
      tPasokh++;
      DM->OMR->Next();recNo++; ProgressBar1->StepIt();
    }
    isLastRecord=DM->OMR->Eof;
    alreadyTestedLT=DM->OMR->FieldByName("Flag")->AsString=="OK";
/*    if(!alreadyTestedLT)
     if(testLT1>tPasokh/2 || testLT2>tPasokh/2)
     {
      DM->OMR->Edit();
      DM->OMR->FieldByName("Flag")->AsString="OK";
      DM->OMR->Post();
      msg="»Ì‘ — «“ ‰’› œ«‰‘ÃÊÌ«‰ ";
      if(testLT1>tPasokh/2) msg+="»Â ﬂ„ — «“ ";
      else msg+="»Â »Ì‘ — «“ ";
      msg+=IntToStr(noofQuestions)+"  ”Ê«· ÃÊ«» œ«œÂ «‰œ"+"\n\t\t\t";
      msg+=" ¬Ì« „«Ì· »Â  €ÌÌ— ‰Ê⁄ œ—” Â” Ìœø";
      str="\t œ— œ—” "+Lessons->FieldByName("LessonTypeName")->AsString+" "+
        LessonBox->Text+"\n\t\t\t\t"+"»« «” «œ "+
        TeacherBox->Text.SubString(1,TeacherBox->Text.Pos("°")-1)+"\n";

      if(MessageDlg(str+msg,mtWarning,TMsgDlgButtons() <<mbYes<<mbNo,0)==mrYes)
      {
        LessonsDBGrid->Visible=true;
        LessonsDBGrid->SetFocus();
//        DM->OMR->GotoBookmark(Bookmark);
//        DM->OMR->FreeBookmark(Bookmark);
        return false;
      }
     }*/
//   DM->OMR->FreeBookmark(Bookmark); // Deallocate memory for the bookmark
    if(isLastRecord) break;
  }//end while
  return true;
}
void __fastcall TReadFromOMR::StopCodeEditExit(TObject *Sender)
{
  STOP_CODE=StopCodeEdit->Text;
}
//---------------------------------------------------------------------------

void __fastcall TReadFromOMR::FareghRadioGroupClick(TObject *Sender)
{
  AnsiString tableName[2]={"OMRFareghData.db","OMRData.db"};
  DM->OMR->Close();
  DM->OMR->TableName=tableName[FareghRadioGroup->ItemIndex];
  DM->OMR->Open();
}
//---------------------------------------------------------------------------

