//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "NewTeacherUnit.h"
#include "DMUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "ParentUnit"
#pragma resource "*.dfm"
TNewTeacherForm *NewTeacherForm;
int lastTeacherCode;
//---------------------------------------------------------------------------
__fastcall TNewTeacherForm::TNewTeacherForm(TComponent* Owner)
        : TParentForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TNewTeacherForm::FirstNameDBEditExit(TObject *Sender)
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

void __fastcall TNewTeacherForm::LastNameDBEditExit(TObject *Sender)
{
   LTeachers->Edit();
   LTeachers->FieldByName("LastName2")->AsString=
      addYe(LTeachers->FieldByName("LastName")->AsString);
   LTeachers->FieldByName("TeacherName")->AsString=
      LTeachers->FieldByName("LastName")->AsString+" - "+
      LTeachers->FieldByName("FirstName")->AsString;
}
//---------------------------------------------------------------------------

void __fastcall TNewTeacherForm::BSDBGridKeyDown(TObject *Sender, WORD &Key,
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

void __fastcall TNewTeacherForm::MSDBGridKeyDown(TObject *Sender, WORD &Key,
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

void __fastcall TNewTeacherForm::PHDDBGridKeyDown(TObject *Sender, WORD &Key,
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

void __fastcall TNewTeacherForm::DBRadioGroup2Exit(TObject *Sender)
{
  BSDBGrid->SetFocus();
}
//---------------------------------------------------------------------------
void __fastcall TNewTeacherForm::FormShow(TObject *Sender)
{
  InsertNewTeacher();
}
//---------------------------------------------------------------------------
void __fastcall TNewTeacherForm::InsertNewTeacher(void)
{
  LTeachers->Filtered=false;
  if(LTeachers->RecordCount==0) lastTeacherCode=0;
  else
  {
    LTeachers->Last();
    lastTeacherCode=LTeachers->FieldByName("TeacherID")->AsInteger;
  }
  LTeachers->Insert();
  LTeachers->FieldByName("TeacherID")->AsInteger=lastTeacherCode+1;
  LTeachers->Post();
//  LTeachers->Edit();
  LvarTeachers->Insert();
  LvarTeachers->FieldByName("TeacherID")->AsInteger=lastTeacherCode+1;
  LvarTeachers->FieldByName("TermID")->AsInteger=DM->Terms->FieldByName("TermID")->AsInteger;
  LvarTeachers->Post();
  LTeachers->Filter="TeacherID="+IntToStr(lastTeacherCode+1);
  LTeachers->Filtered=true;
  FirstNameDBEdit->SetFocus();
//  LvarTeachers->Edit();
}
void __fastcall TNewTeacherForm::SaveandNewBtnClick(TObject *Sender)
{
  LTeachers->Post();
  InsertNewTeacher();
}
//---------------------------------------------------------------------------

void __fastcall TNewTeacherForm::SaveBtnClick(TObject *Sender)
{
  //probably have a problem after first teacher
  LTeachers->First();
  LTeachers->Last();
 // LTeachers->Post();
//  LvarTeachers->Post();
}
//---------------------------------------------------------------------------

void __fastcall TNewTeacherForm::DeleteBtnClick(TObject *Sender)
{
  LvarTeachers->Delete();
  LTeachers->Delete();
  NewTeacherForm->Close();
}
//---------------------------------------------------------------------------

void __fastcall TNewTeacherForm::BitBtn2Click(TObject *Sender)
{
  //probably have a problem after first teacher
  LTeachers->First();
  LTeachers->Last();
  NewTeacherForm->Close();
}
//---------------------------------------------------------------------------

void __fastcall TNewTeacherForm::LvarTeachersAfterPost(TDataSet *DataSet)
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

