//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "BossParentRepUnit.h"
#include "FilteringUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "ParentRepUnit"
#pragma resource "*.dfm"
//TBossParentRep *BossParentRep;
//---------------------------------------------------------------------------
__fastcall TBossParentRep::TBossParentRep(TComponent* Owner)
        : TParentRep(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TBossParentRep::FirstPageHeaderBandBeforePrint(
      TQRCustomBand *Sender, bool &PrintBand)
{
  TitleLabel2->Caption=TitleLabel->Caption;
  VELabel->Caption=FilteringForm->VERadioGroup->Items->Strings[FilteringForm->VERadioGroup->ItemIndex];
  NDLabel->Caption=FilteringForm->NDRadioGroup->Items->Strings[FilteringForm->NDRadioGroup->ItemIndex];
  MDLabel->Caption=FilteringForm->MDRadioGroup->Items->Strings[FilteringForm->MDRadioGroup->ItemIndex];
}
//---------------------------------------------------------------------------
