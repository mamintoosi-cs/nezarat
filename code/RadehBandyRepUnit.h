//---------------------------------------------------------------------------

#ifndef RadehBandyRepUnitH
#define RadehBandyRepUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "BossParentRepUnit.h"
#include <ExtCtrls.hpp>
#include <Graphics.hpp>
#include <QRCtrls.hpp>
#include <QuickRpt.hpp>
#include <DB.hpp>
#include <DBTables.hpp>
//---------------------------------------------------------------------------
class TRadehBandyRep : public TBossParentRep
{
__published:	// IDE-managed Components
        TQRLabel *LocNameQRLabel;
        TQRLabel *LocAvgQRLabel;
        TQRLabel *QRLabel6;
        TQRLabel *QRLabel7;
        TQRLabel *DoroosQRLabel;
        TQRLabel *QRLabel8;
        TQRLabel *QRLabel9;
        TQRLabel *QRLabel10;
        TQRLabel *QRLabel11;
        TQRLabel *AezaeQRLabel;
        TQRExpr *QRExpr1;
        TQRDBText *QRDBText2;
        TQRDBText *QRDBText3;
        TQRDBText *QRDBText4;
        TQRDBText *DoroosQRDBText;
        TQRDBText *QRDBText5;
        TQRDBText *QRDBText6;
        TQRDBText *AezaeQRDBText;
        TQuery *Query1;
        TQRLabel *QRLabel12;
        TQRLabel *QRLabel13;
private:	// User declarations
public:		// User declarations
        __fastcall TRadehBandyRep(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TRadehBandyRep *RadehBandyRep;
//---------------------------------------------------------------------------
#endif
