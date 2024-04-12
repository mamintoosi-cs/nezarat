//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "LessonsUnit.h"
#include "DMUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "ParentUnit"
#pragma resource "*.dfm"
TLessonsForm *LessonsForm;
//---------------------------------------------------------------------------
__fastcall TLessonsForm::TLessonsForm(TComponent* Owner)
        : TParentForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TLessonsForm::ReturnToMainBitBtnClick(TObject *Sender)
{
  if(DM->Lessons->State==dsEdit || DM->Lessons->State==dsInsert)
     DM->Lessons->Post();
  LessonsForm->Close();
}
//---------------------------------------------------------------------------

