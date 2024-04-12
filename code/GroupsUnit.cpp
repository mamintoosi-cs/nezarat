//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "GroupsUnit.h"
#include "DMUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "ParentUnit"
#pragma resource "*.dfm"
TGroupsForm *GroupsForm;
//---------------------------------------------------------------------------
__fastcall TGroupsForm::TGroupsForm(TComponent* Owner)
        : TParentForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TGroupsForm::FormShow(TObject *Sender)
{
//  DM->TeachersNameQuery->Close();
//  DM->TeachersNameQuery->Open();        
}
//---------------------------------------------------------------------------
void __fastcall TGroupsForm::ReturnToMainBitBtnClick(TObject *Sender)
{
  if(DM->Groups->State==dsEdit || DM->Groups->State==dsInsert)
     DM->Groups->Post();
  GroupsForm->Close();
}
//---------------------------------------------------------------------------

