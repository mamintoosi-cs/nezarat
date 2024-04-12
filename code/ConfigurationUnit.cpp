//---------------------------------------------------------------------------

#include <vcl.h>
#include "DMUnit.h"
#pragma hdrstop

#include "ConfigurationUnit.h"

//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "ParentUnit"
#pragma resource "*.dfm"
TConfigurationForm *ConfigurationForm;
//DM->Terms: LR1:LowerBound of Range1, UR1:UpperBound of Range1
//           CR1: Color of Range1, CUR1: Is Close Upper Bound1
//---------------------------------------------------------------------------
__fastcall TConfigurationForm::TConfigurationForm(TComponent* Owner)
        : TParentForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TConfigurationForm::ReturnToMainBitBtnClick(
      TObject *Sender)
{
  if(LTeachers->State==dsEdit)LTeachers->Post();
  if(LTeachers->State==dsEdit)LTeachers2->Post();
  if(LUnitInfo->State==dsEdit)LUnitInfo->Post();
  if(DM->Terms->State==dsEdit)DM->Terms->Post();
  DM->Terms->Edit();
  DM->Terms->FieldByName("CUR1")->AsBoolean= CloseLabel1->Caption=="]";
  DM->Terms->FieldByName("CUR2")->AsBoolean= CloseLabel2->Caption=="]";
  DM->Terms->Post();
  this->Close();
}
//---------------------------------------------------------------------------

void __fastcall TConfigurationForm::Button1Click(TObject *Sender)
{
  LTeachers->Post();
  LTeachers2->Post();
}
//---------------------------------------------------------------------------

void __fastcall TConfigurationForm::UnivViceChancellorDBComboBoxExit(TObject *Sender)
{
//  if(LTeachers->State==dsEdit)LTeachers->Post();
}
//---------------------------------------------------------------------------
void __fastcall TConfigurationForm::EducationalViceChancellorDBComboBoxExit(TObject *Sender)
{
  if(LTeachers2->State==dsEdit)LTeachers2->Post();
}
//---------------------------------------------------------------------------
void __fastcall TConfigurationForm::Shape1MouseDown(TObject *Sender,
      TMouseButton Button, TShiftState Shift, int X, int Y)
{
    if  (ColorDialog1->Execute())
    {
      Shape1->Brush->Color = ColorDialog1->Color;
      DM->Terms->FieldByName("CR1")->AsInteger=ColorDialog1->Color;
    }
}
//---------------------------------------------------------------------------
void __fastcall TConfigurationForm::FormShow(TObject *Sender)
{
  Shape1->Brush->Color = DM->Terms->FieldByName("CR1")->AsInteger;
  CloseLabel1->Caption=DM->Terms->FieldByName("CUR1")->AsBoolean?"]":")";
  Shape2->Brush->Color = DM->Terms->FieldByName("CR2")->AsInteger;
  CloseLabel2->Caption=DM->Terms->FieldByName("CUR2")->AsBoolean?"]":")";
  DM->Terms->Edit();
}
//---------------------------------------------------------------------------
void __fastcall TConfigurationForm::CloseLabel1Click(TObject *Sender)
{
 ((TLabel *)Sender)->Caption=(((TLabel *)Sender)->Caption=="]")?")":"]";
}
//---------------------------------------------------------------------------
void __fastcall TConfigurationForm::Shape2MouseDown(TObject *Sender,
      TMouseButton Button, TShiftState Shift, int X, int Y)
{
    if  (ColorDialog1->Execute())
    {
      Shape2->Brush->Color = ColorDialog1->Color;
      DM->Terms->FieldByName("CR2")->AsInteger=ColorDialog1->Color;
    }
}
//---------------------------------------------------------------------------

