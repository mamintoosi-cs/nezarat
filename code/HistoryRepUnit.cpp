//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "HistoryRepUnit.h"
#include "DMUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "ParentRepUnit"
#pragma resource "*.dfm"
THistoryRep *HistoryRep;
//---------------------------------------------------------------------------
__fastcall THistoryRep::THistoryRep(TComponent* Owner)
        : TParentRep(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall THistoryRep::DetailBandBeforePrint(TQRCustomBand *Sender,
      bool &PrintBand)
{
  BandColor(DetailBand,DM->Flat1->FieldByName("LessonAverage")->AsFloat);        
}
//---------------------------------------------------------------------------

