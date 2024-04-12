//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "BossReportsUnit.h"
#include "DMUnit.H"
#include "BossRepUnit.h"
#include "FilteringUnit.h"
#include "BossGroupRepUnit.h"
#include "HistoryRepUnit.h"

#define Title part1Title+" "+part2Title+" "+part3Title
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "ParentReportsUnit"
//#pragma link "ParentUnit"
#pragma resource "*.dfm"
TBossReportsForm *BossReportsForm;
//---------------------------------------------------------------------------
__fastcall TBossReportsForm::TBossReportsForm(TComponent* Owner)
        : TParentReportsForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TBossReportsForm::FacultyDBBoxClick(TObject *Sender)
{
  RadioGroup1->ItemIndex=((TDBLookupComboBox *)Sender)->Tag;
  RadioGroup1Click(Sender);
}
//---------------------------------------------------------------------------
void __fastcall TBossReportsForm::FormShow(TObject *Sender)
{
  DM->ActiveLessons->Close();
  DM->ActiveLessons->Open();
  DM->ActiveTeachers->Close();
  DM->ActiveTeachers->Open();
//  FilteringForm->isItFirstTime=true;
//  FilteringForm->ShowModal();
  Label1->Caption=DM->Terms->Filter;
  RadioGroup1Click(Sender);
}
//---------------------------------------------------------------------------
void __fastcall TBossReportsForm::LessonAvgReport(void)
{
 AnsiString  LocalFilter="",part1Title,part2Title,part3Title;
 part1Title="äÊÇíÌ ÇÑÒÔíÇÈí ÏÑæÓ ãÏÑÓíä";
 part3Title="ÈÑ ÇÓÇÓ äãÑå ÏÑÓ";
 TBossRep *LQRep;
 LQRep=(TBossRep *)QRep[0];
   LQRep->MoadelLabel->Enabled=true;
   LQRep->Moadel->Enabled=true;
   LQRep->GroupLabel->Enabled=true;
   LQRep->GroupAvg->Enabled=true;
   LQRep->FacultyLabel->Enabled=true;
   LQRep->FacultyAvg->Enabled=true;
 switch(RadioGroup1->ItemIndex)
 {
   case 0://University
         LocalFilter="";
         LQRep->UnivLabel->Caption="ãÚÏá ÏÇäÔÇå";
         LQRep->UnivAvg->Expression=FloatToStr(FilteringForm->univAvg);
//for security disabled part2Title=DM->UnitInfo->FieldByName("UnitName")->AsString;
         part2Title="ÏÇäÔÇå";
         LQRep->TitleLabel->Caption=Title;
         break;
   case 1://Special Faculty
         LocalFilter="FacultyID="+IntToStr(DM->Alaki->FieldByName("Short1")->AsInteger);
//         +"OR LessonGroupID="+IntToStr(DM->Alaki->FieldByName("Short2")->AsInteger);
         LQRep->UnivLabel->Caption="ãÚÏá ÏÇäÔßÏå";
         LQRep->UnivAvg->Expression=
                FloatToStr(FilteringForm->F[DM->Alaki->FieldByName("Short1")->AsInteger].average);
         part2Title="ÏÇäÔßÏå "+FacultyDBBox->Text ;
         LQRep->TitleLabel->Caption=Title;
         break;
   case 2://Special Group
         LocalFilter="GroupID="+IntToStr(DM->Alaki->FieldByName("Short2")->AsInteger)+
                "OR LessonGroupID="+IntToStr(DM->Alaki->FieldByName("Short2")->AsInteger);
         LQRep->UnivLabel->Caption="ãÚÏá Ñæå";
         LQRep->UnivAvg->Expression=
                FloatToStr(FilteringForm->G[DM->Alaki->FieldByName("Short2")->AsInteger].average);
         part2Title="Ñæå "+GroupDBBox->Text ;
         LQRep->TitleLabel->Caption=Title;
         break;
   case 3:
         LocalFilter="TeacherID="+IntToStr(DM->Alaki->FieldByName("Short3")->AsInteger);
         LQRep->UnivLabel->Caption="ãÚÏá ÇÓÊÇÏ";
         LQRep->UnivAvg->Expression=
                FloatToStr(FilteringForm->T[DM->Alaki->FieldByName("Short3")->AsInteger].average);
//         part2Title="ÇÓÊÇÏ "+TeacherDBBox->Text ;
         LQRep->TitleLabel->Caption="äÊÇíÌ ÇÑÒÔíÇÈí ÏÑæÓ íß ÇÓÊÇÏ";
         break;
   case 4:
         LocalFilter="LessonID="+IntToStr(DM->Alaki->FieldByName("Short4")->AsInteger);
         LQRep->UnivLabel->Caption="ãÚÏá ÏÇäÔÇå";
         LQRep->UnivAvg->Expression=FloatToStr(FilteringForm->univAvg);
         LQRep->TitleLabel->Caption="ÎáÇÕå äÊíÌå ÇÑÒÔíÇÈí ÏÑÓ "+ LessonDBBox->Text;
         break;
  }
 DM->Flat1->Filtered=false;
 DM->Flat1->Filter=LocalFilter;
 DM->Flat1->Filtered=true;

 switch(RadioGroup1->ItemIndex)
 {
   case 3://Teacher     NO break
        LQRep->MoadelLabel->Enabled=false;
        LQRep->Moadel->Enabled=false;
   case 2://Group     NO break
        LQRep->GroupLabel->Enabled=false;
        LQRep->GroupAvg->Enabled=false;
   case 1://Faculty
        LQRep->FacultyLabel->Enabled=false;
        LQRep->FacultyAvg->Enabled=false;
  }
// Label1->Caption=LQRep->UnivAvg->Expression;
 LQRep->NoDateAttachMemo->Enabled=NOVisibilityCheckBox->Checked;
 LQRep->EhteramQRMemo->Enabled=EhteramCheckBox->Checked;
////// LQRep->PreviewModal();
// delete LQRep;
// Label1->Caption= DM->Flat1->Filter;
/*/ if(RadioGroup1->ItemIndex<3)//Selections are important
 {
   if(DM->FilterString =="" ) DM->Flat1->Filter=LocalFilter;
   else if(LocalFilter=="") DM->Flat1->Filter=DM->FilterString;
        else DM->Flat1->Filter=DM->FilterString+ " AND "+LocalFilter;
   DM->Flat1->Filtered=true;
 }
/*/
}
//------------------------
void __fastcall TBossReportsForm::TeacherAvgReport(void)
{
 AnsiString  LocalFilter="",part1Title,part2Title,part3Title;
// TBossGroupRep *LQRep=new TBossGroupRep(this);
 part1Title="äÊÇíÌ ÇÑÒÔíÇÈí ÏÑæÓ ãÏÑÓíä";
 part3Title="ÈÑ ÇÓÇÓ ãÚÏá ÇÓÊÇÏ";
 TBossGroupRep *LQRep;
 LQRep=(TBossGroupRep *)QRep[0];
 LQRep->GroupLabel->Enabled=true;
 LQRep->GroupAvg->Enabled=true;
 LQRep->FacultyLabel->Enabled=true;
 LQRep->FacultyAvg->Enabled=true;

 switch(RadioGroup1->ItemIndex)
 {
   case 0://University
         LocalFilter="";
         LQRep->UnivLabel->Caption="ãÚÏá ÏÇäÔÇå";
         LQRep->UnivAvg->Expression=FloatToStr(FilteringForm->univAvg);
//for security disabled part2Title=DM->UnitInfo->FieldByName("UnitName")->AsString;
         part2Title="ÏÇäÔÇå ";
         LQRep->TitleLabel->Caption=Title;
         LQRep->LocationLbl->Caption="ÏÇäÔÇå";
         break;
   case 1://Special Faculty
         LocalFilter="FacultyID="+IntToStr(DM->Alaki->FieldByName("Short1")->AsInteger);
         LQRep->UnivLabel->Caption="ãÚÏá ÏÇäÔßÏå";
         LQRep->UnivAvg->Expression=
                FloatToStr(FilteringForm->F[DM->Alaki->FieldByName("Short1")->AsInteger].average);
         part2Title="ÏÇäÔßÏå "+FacultyDBBox->Text ;
         LQRep->TitleLabel->Caption=Title;
         LQRep->LocationLbl->Caption="ÏÇäÔßÏå";
         break;
   case 2://Special Group
         LocalFilter="GroupID="+IntToStr(DM->Alaki->FieldByName("Short2")->AsInteger);
         LQRep->UnivLabel->Caption="ãÚÏá Ñæå";
         LQRep->UnivAvg->Expression=
                FloatToStr(FilteringForm->G[DM->Alaki->FieldByName("Short2")->AsInteger].average);
         part2Title="Ñæå "+GroupDBBox->Text ;
         LQRep->TitleLabel->Caption=Title;
         LQRep->LocationLbl->Caption="Ñæå";
         break;
   case 3:
         LocalFilter="TeacherID="+IntToStr(DM->Alaki->FieldByName("Short3")->AsInteger);
         LQRep->UnivLabel->Caption="ãÚÏá ÇÓÊÇÏ";
         LQRep->UnivAvg->Expression=
                FloatToStr(FilteringForm->T[DM->Alaki->FieldByName("Short3")->AsInteger].average);
//         part2Title="ÇÓÊÇÏ "+TeacherDBBox->Text ;
         LQRep->TitleLabel->Caption="äÊÇíÌ ÇÑÒÔíÇÈí ÏÑæÓ íß ÇÓÊÇÏ";
         LQRep->LocationLbl->Caption="";
         break;
   case 4:
         LocalFilter="LessonID="+IntToStr(DM->Alaki->FieldByName("Short4")->AsInteger);
         LQRep->UnivLabel->Caption="ãÚÏá ÏÇäÔÇå";
         LQRep->UnivAvg->Expression=FloatToStr(FilteringForm->univAvg);
         LQRep->TitleLabel->Caption="ÎáÇÕå äÊíÌå ÇÑÒÔíÇÈí ÏÑÓ "+ LessonDBBox->Text;
         LQRep->LocationLbl->Caption="";
         break;
  }
 DM->Flat1->Filtered=false;
 DM->Flat1->Filter=LocalFilter;
 DM->Flat1->Filtered=true;

 switch(RadioGroup1->ItemIndex)
 {
   case 3://Teacher     NO break
//        LQRep->MoadelLabel->Enabled=false;
//        LQRep->Moadel->Enabled=false;
   case 2://Group     NO break
        LQRep->GroupLabel->Enabled=false;
        LQRep->GroupAvg->Enabled=false;
   case 1://Faculty
        LQRep->FacultyLabel->Enabled=false;
        LQRep->FacultyAvg->Enabled=false;
  }
// Label1->Caption=LQRep->UnivAvg->Expression;
 LQRep->NoDateAttachMemo->Enabled=NOVisibilityCheckBox->Checked;
 LQRep->EhteramQRMemo->Enabled=EhteramCheckBox->Checked;
///// LQRep->PreviewModal();
//   LQRep->MoadelLabel->Enabled=true;
//   LQRep->Moadel->Enabled=true;
// delete LQRep;
}
//---------------------------------------------------------------------------
void __fastcall TBossReportsForm::RadioGroup1Click(TObject *Sender)
{
 AnsiString  LocalFilter="",sqlText;
 DM->Alaki->Edit();
 switch(RadioGroup1->ItemIndex)
 {
   case 0://University
         LocalFilter="";
         DM->Alaki->FieldByName("Short3")->AsInteger=DM->UnitInfo->FieldByName("UnitBossID")->AsInteger;
         break;
   case 1://Special Faculty
         LocalFilter="FacultyID="+IntToStr(DM->Alaki->FieldByName("Short1")->AsInteger);
         DM->Alaki->FieldByName("Short3")->AsInteger=DM->FacultiesQuery->FieldByName("FacultyBossID")->AsInteger;
         break;
   case 2://Special Group
         LocalFilter="GroupID="+IntToStr(DM->Alaki->FieldByName("Short2")->AsInteger);
         DM->Alaki->FieldByName("Short3")->AsInteger=DM->Groups->FieldByName("GroupBossID")->AsInteger;
         break;
   case 3:
         LocalFilter="TeacherID="+IntToStr(DM->Alaki->FieldByName("Short3")->AsInteger);
         break;
   case 4:
         LocalFilter="TeacherID="+IntToStr(DM->ActiveLessons->FieldByName("TeacherID")->AsInteger);
         DM->Alaki->FieldByName("Short3")->AsInteger=DM->ActiveLessons->FieldByName("TeacherID")->AsInteger;
         break;
  }
 DM->Alaki->FieldByName("EmailRecieverID")->AsInteger=DM->Alaki->FieldByName("Short3")->AsInteger;
 DM->Alaki->FieldByName("EmailRecieverAddress")->AsString=FindEmail(DM->Alaki->FieldByName("Short3")->AsInteger);
 DM->Alaki->Post();
// DM->ActiveTeachers->Close();
 DM->ActiveTeachers->Filtered=false;
 DM->ActiveTeachers->Filter=LocalFilter;
 DM->ActiveTeachers->Filtered=true;
// DM->ActiveTeachers->Open();
}
//---------------------------------------------------------------------------
void __fastcall TBossReportsForm::DoReport(void)
{
  if(LorTRadioGroup->ItemIndex==0)
  {
    DM->Flat1->IndexName="LessonAvgIDX";
//    DM->Flat1->Active=true;
    QRep[0]=(TBossRep *)new TBossRep(this);
    LessonAvgReport();
  }
  else
  {
    DM->Flat1->IndexName="TeacherAvgIDX";
//    DM->Flat1->Active=true;
    QRep[0]=(TBossGroupRep *)new TBossGroupRep(this);
    TeacherAvgReport();
  }
  PrintOrSave(QRep[0]);
  ToAddress->Add(DM->Alaki->FieldByName("EmailRecieverAddress")->AsString);
  if(RadioGroup1->ItemIndex==0)
    Others->Add(FindEmail(DM->UnitInfo->FieldByName("EducationalAssistantID")->AsInteger));
  if(SendMethodRadioGroup->ItemIndex==2) SendMail();
  delete QRep[0];

  DM->Flat1->Filtered=false;
//  Memo1->Text=ToAddress->Text;
}
//---------------------------------------------------------------------------
void __fastcall TBossReportsForm::SelectionBitBtnClick(TObject *Sender)
{
  FilteringForm->ShowModal();
  Label1->Caption=DM->Terms->Filter;
}
//---------------------------------------------------------------------------
void __fastcall TBossReportsForm::DBGrid1Exit(TObject *Sender)
{
//  if(Field->FieldName=="TeacherName")
  DM->Alaki->Edit();
  DM->Alaki->FieldByName("EmailRecieverAddress")->AsString=FindEmail(DM->Alaki->FieldByName("EmailRecieverID")->AsInteger);
  DM->Alaki->Post();
}
//---------------------------------------------------------------------------

void __fastcall TBossReportsForm::DBGrid1KeyDown(TObject *Sender,
      WORD &Key, TShiftState Shift)
{
  switch(Key)
  {
    case VK_TAB:
      DBGrid2->SetFocus();
      Key=VK_LEFT;
      break;
  }
}
//---------------------------------------------------------------------------
void __fastcall TBossReportsForm::DBGrid2KeyDown(TObject *Sender,
      WORD &Key, TShiftState Shift)
{
  switch(Key)
  {
    case VK_TAB:
      PrintBitBtn->SetFocus();
      Key=VK_LEFT;
      break;
  }
}
//---------------------------------------------------------------------------

void __fastcall TBossReportsForm::DBGrid2Exit(TObject *Sender)
{
  DM->Alaki->Post();
}
//---------------------------------------------------------------------------

