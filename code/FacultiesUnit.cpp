//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "FacultiesUnit.h"
#include "DMUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "ParentUnit"
#pragma resource "*.dfm"
TFacultiesForm *FacultiesForm;
//---------------------------------------------------------------------------
__fastcall TFacultiesForm::TFacultiesForm(TComponent* Owner)
        : TParentForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TFacultiesForm::BitBtn2Click(TObject *Sender)
{
  if(DM->Faculties->State==dsEdit || DM->Faculties->State==dsInsert)
     DM->Faculties->Post();
  FacultiesForm->Close();
}
//---------------------------------------------------------------------------

void __fastcall TFacultiesForm::FormShow(TObject *Sender)
{
//  DM->TeachersNameQuery->Close();
//  DM->TeachersNameQuery->Open();
}
//---------------------------------------------------------------------------

