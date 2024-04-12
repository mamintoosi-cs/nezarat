//---------------------------------------------------------------------------

#include <vcl.h>
#include "DMUnit.h"
#pragma hdrstop

#include "BossGroupRepUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "BossParentRepUnit"
#pragma resource "*.dfm"
TBossGroupRep *BossGroupRep;
int count1=0,count2=0;
//---------------------------------------------------------------------------
__fastcall TBossGroupRep::TBossGroupRep(TComponent* Owner)
        : TBossParentRep(Owner)
{
  count1=0;
}
//---------------------------------------------------------------------------
void __fastcall TBossGroupRep::QRExpr1Print(TObject *sender,
      AnsiString &Value)
{
 Value=IntToStr(++count1);
 count2=0;
}
//---------------------------------------------------------------------------


void __fastcall TBossGroupRep::QRExpr3Print(TObject *sender,
      AnsiString &Value)
{
 Value=IntToStr(++count2);
}
//---------------------------------------------------------------------------

void __fastcall TBossGroupRep::QuickRepBeforePrint(TCustomQuickRep *Sender,
      bool &PrintReport)
{
  count1=0;
}
//---------------------------------------------------------------------------


void __fastcall TBossGroupRep::QRGroup1BeforePrint(TQRCustomBand *Sender,
      bool &PrintBand)
{
  BandColor(QRGroup1,DM->Flat1->FieldByName("TeacherAverage")->AsFloat);
}
//---------------------------------------------------------------------------

