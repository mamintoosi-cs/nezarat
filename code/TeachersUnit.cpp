//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "TeachersUnit.h"
#include "NewTeacherUnit.h"
#include "DMUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "ParentUnit"
#pragma resource "*.dfm"
TTeachersForm *TeachersForm;
//---------------------------------------------------------------------------
__fastcall TTeachersForm::TTeachersForm(TComponent* Owner)
        : TParentForm(Owner)
{
}
//---------------------------------------------------------------------------


void __fastcall TTeachersForm::SelectDBBoxClick(TObject *Sender)
{
 LvarTeachers->Last();
}
//---------------------------------------------------------------------------
void __fastcall TTeachersForm::FirstNameDBEditExit(TObject *Sender)
{
   LTeachers->Edit();
   LTeachers->FieldByName("FirstName2")->AsString=
      addYe(LTeachers->FieldByName("FirstName")->AsString);
   LTeachers->Edit();
   LTeachers->FieldByName("TeacherName")->AsString=
      LTeachers->FieldByName("LastName")->AsString+" - "+
      LTeachers->FieldByName("FirstName")->AsString;
}
//---------------------------------------------------------------------------
void __fastcall TTeachersForm::LastNameDBEditExit(TObject *Sender)
{
   LTeachers->Edit();
   LTeachers->FieldByName("LastName2")->AsString=
      addYe(LTeachers->FieldByName("LastName")->AsString);
   LTeachers->FieldByName("TeacherName")->AsString=
      LTeachers->FieldByName("LastName")->AsString+" - "+
      LTeachers->FieldByName("FirstName")->AsString;
}
//---------------------------------------------------------------------------

void __fastcall TTeachersForm::BSDBGridKeyDown(TObject *Sender, WORD &Key,
      TShiftState Shift)
{
  switch(Key)
  {
    case VK_DOWN:
      MSDBGrid->SetFocus();
      Key=VK_LEFT;
      break;
    case VK_UP:
      PHDDBGrid->SetFocus();
      Key=VK_LEFT;
      break;
    case VK_TAB:
      Key=VK_LEFT;
      break;
  }
}
//---------------------------------------------------------------------------

void __fastcall TTeachersForm::MSDBGridKeyDown(TObject *Sender, WORD &Key,
      TShiftState Shift)
{
  switch(Key)
  {
    case VK_DOWN:
      PHDDBGrid->SetFocus();
      Key=VK_LEFT;
      break;
    case VK_UP:
      BSDBGrid->SetFocus();
      Key=VK_LEFT;
      break;
    case VK_TAB:
      Key=VK_LEFT;
      break;
  }
}
//---------------------------------------------------------------------------

void __fastcall TTeachersForm::PHDDBGridKeyDown(TObject *Sender, WORD &Key,
      TShiftState Shift)
{
  switch(Key)
  {
    case VK_DOWN:
      BSDBGrid->SetFocus();
      Key=VK_LEFT;
      break;
    case VK_UP:
      MSDBGrid->SetFocus();
      Key=VK_LEFT;
      break;
    case VK_TAB:
      DegreeDBBox->SetFocus();
      Key=VK_LEFT;
      break;
  }
}
//---------------------------------------------------------------------------
void __fastcall TTeachersForm::LTeachersAfterPost(TDataSet *DataSet)
{
  if(LvarTeachers->State == dsEdit)
          LvarTeachers->Post();
}
//---------------------------------------------------------------------------

void __fastcall TTeachersForm::DBRadioGroup2Exit(TObject *Sender)
{
  BSDBGrid->SetFocus();
}
//---------------------------------------------------------------------------
void __fastcall TTeachersForm::DBNavigator1Click(TObject *Sender,
      TNavigateBtn Button)
{
  DM->Alaki->Edit();
  DM->Alaki->FieldByName("TeacherID")->AsInteger=LTeachers->FieldByName("TeacherID")->AsInteger;
  DM->Alaki->Post();
}
//---------------------------------------------------------------------------

void __fastcall TTeachersForm::NewTeacherBtnClick(TObject *Sender)
{
  NewTeacherForm->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TTeachersForm::BitBtn2Click(TObject *Sender)
{
  //probably have a problem after first teacher
  LTeachers->First();
  LTeachers->Last();
  TeachersForm->Close();
}
//---------------------------------------------------------------------------

void __fastcall TTeachersForm::FormShow(TObject *Sender)
{
  DM->Alaki->Edit();
  DM->Alaki->FieldByName("TeacherID")->AsInteger=LTeachers->FieldByName("TeacherID")->AsInteger;
  DM->Alaki->Post();
}
//---------------------------------------------------------------------------
void __fastcall TTeachersForm::LvarTeachersAfterPost(TDataSet *DataSet)
{
  if(LvarTeachers->FieldByName("MadrakID")->AsInteger==3)
  {
    LTeachers->Edit();
    LTeachers->FieldByName("Title")->AsString="ฯ฿สั";
    LTeachers->Post();
  }
  else
    if(LTeachers->FieldByName("Title")->AsString=="ฯ฿สั")
    {
      LTeachers->Edit();
      LTeachers->FieldByName("Title")->AsString="";
      LTeachers->Post();
    }
}
//---------------------------------------------------------------------------

