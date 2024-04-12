//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "RadehBandyRepUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "BossParentRepUnit"
#pragma resource "*.dfm"
TRadehBandyRep *RadehBandyRep;
//---------------------------------------------------------------------------
__fastcall TRadehBandyRep::TRadehBandyRep(TComponent* Owner)
        : TBossParentRep(Owner)
{
}
//---------------------------------------------------------------------------
