//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "QuestionsRadehBandyUnit.h"
#include "DMUnit.h"
#include "ChooseLessonTypeUnit.h"
#include "QuestionsRadehBandyRepUnit.h"
#include "QuestionsModificationUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "ParentReportsUnit"
//#pragma link "ParentUnit"
#pragma resource "*.dfm"
TQuestionsRadehBandyForm *QuestionsRadehBandyForm;

//---------------------------------------------------------------------------
__fastcall TQuestionsRadehBandyForm::TQuestionsRadehBandyForm(TComponent* Owner)
        : TParentReportsForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TQuestionsRadehBandyForm::FacultyDBBoxClick(TObject *Sender)
{
  RadioGroup1->ItemIndex=((TDBLookupComboBox *)Sender)->Tag;
  RadioGroup1Click(Sender);
}
//---------------------------------------------------------------------------

void __fastcall TQuestionsRadehBandyForm::FormShow(TObject *Sender)
{
  DM->ActiveLessons->Close();
  DM->ActiveLessons->Open();
  DM->ActiveTeachers->Close();
  DM->ActiveTeachers->Open();
  ChooseLessonType->isItFirstTime=true;
  ChooseLessonType->Show();
  ChooseLessonType->ReturnToMain();
  ChooseLessonType->Hide();
  RadioGroup1Click(Sender);
  NoOfReports=2;
}
//---------------------------------------------------------------------------
void __fastcall TQuestionsRadehBandyForm::LetterReport(TLetterToTeacherRep *QRep)
{
 AnsiString  LocalFilter="",part1Title,part2Title,part3Title;

 switch(RadioGroup1->ItemIndex)
 {
   case 0://University        LocalFilter="";         break;
   case 1://Special Faculty        LocalFilter="FacultyID="+IntToStr(DM->Alaki->FieldByName("Short1")->AsInteger);         break;
   case 2://Special Group           LocalFilter="GroupID="+IntToStr(DM->Alaki->FieldByName("Short2")->AsInteger);          break;
   case 3:
         LocalFilter="TeacherID="+IntToStr(DM->Alaki->FieldByName("Short3")->AsInteger);
         break;
   case 4:
         LocalFilter="LessonID="+IntToStr(DM->Alaki->FieldByName("Short4")->AsInteger);
         break;
  }
 QRep->TeachersFlat->Close();
 QRep->TeachersFlat->Filtered=false;
 QRep->TeachersFlat->Filter=LocalFilter;
 QRep->TeachersFlat->Filtered=true;
 QRep->TeachersFlat->Open();

// QRep->NoDateAttachMemo->Enabled=NOVisibilityCheckBox->Checked;

}
//---------------------------------------------------------------------------
void __fastcall TQuestionsRadehBandyForm::QuestionsReport(TQuestionsRadehBandyRep *QRep)
{
 AnsiString  LocalFilter="";

 switch(RadioGroup1->ItemIndex)
 {
//   case 0://University
   case 1://Special Faculty
         LocalFilter=" AND TF.FacultyID="+IntToStr(DM->Alaki->FieldByName("Short1")->AsInteger);
         break;
   case 2://Special Group
         LocalFilter=" AND TF.GroupID="+IntToStr(DM->Alaki->FieldByName("Short2")->AsInteger);
         break;
  }

 LocalFilter+=" AND R.RowNo="+IntToStr(QuestionsModificationForm->varQuestions->FieldByName("RowNo")->AsInteger);
 LocalFilter+=" AND LessonTypeID="+IntToStr(QuestionsModificationForm->varQuestions->FieldByName("LessonTypeID")->AsInteger);
 QRep->Query1->Close();
// QRep->Query1->SQL->Add(" and TeacherID=42");//LocalFilter);
  QRep->Query1->SQL->Add(LocalFilter);
 QRep->Query1->SQL->Add(" ORDER BY rowAvg desc");
 QRep->Query1->Open();

 QRep->NoDateAttachMemo->Enabled=NOVisibilityCheckBox->Checked;
 QRep->EhteramQRMemo->Enabled=EhteramCheckBox->Checked;
}
//---------------------------------------------------------------------------
void __fastcall TQuestionsRadehBandyForm::LessonTypeSelectionBitBtnClick(TObject *Sender)
{
//  ChooseLessonType->ShowModal();
  DM->LessonTypeID=0;
  QuestionsModificationForm->ShowModal();
//  Label2->Caption=IntToStr(QuestionsModificationForm->varQuestions->FieldByName("RowNo")->AsInteger);
}
//---------------------------------------------------------------------------

void __fastcall TQuestionsRadehBandyForm::RadioGroup1Click(TObject *Sender)
{
 AnsiString  LocalFilter="",sqlText;
 switch(RadioGroup1->ItemIndex)
 {
   case 0://University
         LocalFilter="";
         break;
   case 1://Special Faculty
         LocalFilter="FacultyID="+IntToStr(DM->Alaki->FieldByName("Short1")->AsInteger);
         break;
   case 2://Special Group
         LocalFilter="GroupID="+IntToStr(DM->Alaki->FieldByName("Short2")->AsInteger);
         break;
   case 3:
         LocalFilter="TeacherID="+IntToStr(DM->Alaki->FieldByName("Short3")->AsInteger);
         break;
   case 4:
         LocalFilter="TeacherID="+IntToStr(DM->ActiveLessons->FieldByName("TeacherID")->AsInteger);
         DM->Alaki->Edit();
         DM->Alaki->FieldByName("Short3")->AsInteger=DM->ActiveLessons->FieldByName("TeacherID")->AsInteger;
         DM->Alaki->Post();
         break;
  }
// DM->ActiveTeachers->Close();
 DM->ActiveTeachers->Filtered=false;
 DM->ActiveTeachers->Filter=LocalFilter;
 DM->ActiveTeachers->Filtered=true;
// DM->ActiveTeachers->Open();
}
//---------------------------------------------------------------------------
void __fastcall TQuestionsRadehBandyForm::DoReport(void)
{
 AnsiString  sqlText,temp;
 if(DM->ActiveTeachers->RecordCount==0)
 {
    MsgLabel->Caption="Empty";
    return;
 }

   QRep[0]=(TQuestionsRadehBandyRep *)new TQuestionsRadehBandyRep(this);
   sqlText=((TQuestionsRadehBandyRep *)QRep[0])->Query1->SQL->Text ;
   QuestionsReport((TQuestionsRadehBandyRep *)QRep[0]);
   PrintOrSave(QRep[0]);
   ((TQuestionsRadehBandyRep *)QRep[0])->Query1->SQL->Text=sqlText;
   if(SendMethodRadioGroup->ItemIndex==2) SendMail();
/*1/3/85
 DM->ActiveTeachers->First();
 while(!DM->ActiveTeachers->Eof)
 {
   temp=DM->ActiveTeachers->FieldByName("ReportStatus")->AsString;
   if(temp=="") temp=" ";
   if(MailCheckBox->Checked &&
     toupper(temp[1])=='M' &&
     SendMethodRadioGroup->ItemIndex==2)
   {
     DM->ActiveTeachers->Next();
     continue;
   }
   ToAddress->Clear();
   Attachments->Clear();
   Others->Clear();
   DM->Alaki->Edit();
   DM->Alaki->FieldByName("Short3")->AsInteger=DM->ActiveTeachers->FieldByName("TeacherID")->AsInteger;
   DM->Alaki->Post();
   MsgLabel->Caption="ÒÇÑÔ íÑí ÏÑæÓ "+DM->ActiveTeachers->FieldByName("TeacherName")->AsString;
   ToAddress->Add(DM->ActiveTeachers->FieldByName("EmailAddress")->AsString);
   ((TQuestionsRadehBandyRep *)QRep[1])->Query1->Close();
   if(LetterCheckBox->Checked)
   {
     LetterReport((TLetterToTeacherRep *)QRep[0]);
     PrintOrSave(QRep[0]);
   }
   if(DM->TerminateSW==true) break;
   if(LessonCheckBox->Checked)
   {
//     if(DM->Terms->TermID->AsInteger >=6) QRep[1]->Page
     LessonReport((TQuestionsRadehBandyRep *)QRep[1]);
     PrintOrSave(QRep[1]);
   }
//   Label1->Caption=IntToStr((int)QRep[1]->Page->Length);
   ToAddress->Add(DM->ActiveTeachers->FieldByName("EmailAddress")->AsString);
   if(RadioGroup1->ItemIndex==4) break;
   ((TQuestionsRadehBandyRep *)QRep[1])->Query1->SQL->Text=sqlText;
   Application->ProcessMessages();
   if(DM->TerminateSW==true) break;
   if(SendMethodRadioGroup->ItemIndex==2) SendMail();
   MarkReportStatus(DM->ActiveTeachers->FieldByName("TeacherID")->AsInteger);
//   Memo1->Lines->Add(Attachments->Text);
//   Memo1->Lines->Add(ToAddress->Text);
//   Memo1->Lines->Add(QRep[1]->ReportTitle);
   DM->ActiveTeachers->Next();
 }      */

 delete QRep[0];
 DM->ActiveTeachers->Close();
 DM->ActiveTeachers->Open();
}
//---------------------------------------------------------------------------
void __fastcall TQuestionsRadehBandyForm::MarkReportStatus(int teacherID)
{
  /* AnsiString status="";
   char halat[4]="-ã";//halat[2]==''
   status[1]=halat[SendMethodRadioGroup->ItemIndex];
    */
  if(SendMethodRadioGroup->ItemIndex==2)
  {
   PR_Teachers->EditKey();
   PR_Teachers->FieldByName("TeacherID")->AsInteger=teacherID;
   PR_Teachers->GotoKey();
   PR_Teachers->Edit();
   PR_Teachers->FieldByName("ReportStatus")->AsString="M";
   PR_Teachers->Post();
  }
}
//---------------------------------------------------------------------------

void __fastcall TQuestionsRadehBandyForm::FormCreate(TObject *Sender)
{
 Session->AddPassword("amin313");
}
//---------------------------------------------------------------------------

