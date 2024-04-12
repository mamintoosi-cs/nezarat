//---------------------------------------------------------------------------

#include <vcl.h>
#include "DMUnit.h"
#pragma hdrstop

#include "BossRepUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "BossParentRepUnit"
#pragma resource "*.dfm"
//TBossRep1 *BossRep1;
//---------------------------------------------------------------------------
__fastcall TBossRep::TBossRep(TComponent* Owner)
        : TBossParentRep(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TBossRep::DetailBandBeforePrint(TQRCustomBand *Sender,
      bool &PrintBand)
{
/*  if(DM->Flat1->FieldByName("LessonRotbeh")->AsString == "ÖÚíÝ")
          DetailBand->Color=clRed;//RGB(0xff,0x22,0x66);//clGray;
  else  if(DM->Flat1->FieldByName("LessonRotbeh")->AsString == "ãÊæÓØ")
          DetailBand->Color=clYellow;//RGB(0xff,0x22,0x66);//clGray;
  else  DetailBand->Color=clWhite;*/
  BandColor(DetailBand,DM->Flat1->FieldByName("LessonAverage")->AsFloat);
}
//---------------------------------------------------------------------------

