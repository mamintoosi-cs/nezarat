//---------------------------------------------------------------------------

#ifndef BossGroupRepUnitH
#define BossGroupRepUnitH
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
//---------------------------------------------------------------------------
class TBossGroupRep : public TBossParentRep
{
__published:	// IDE-managed Components
        TQRLabel *LocationLbl;
        TQRLabel *QRLabel6;
        TQRLabel *QRLabel7;
        TQRLabel *QRLabel8;
        TQRLabel *QRLabel9;
        TQRLabel *QRLabel10;
        TQRLabel *GroupLabel;
        TQRLabel *FacultyLabel;
        TQRLabel *QRLabel11;
        TQRLabel *QRLabel12;
        TQRLabel *QRLabel13;
        TQRLabel *QRLabel14;
        TQRGroup *QRGroup1;
        TQRExpr *QRExpr1;
        TQRDBText *QRDBText4;
        TQRDBText *QRDBText8;
        TQRDBText *QRDBText9;
        TQRDBText *QRDBText10;
        TQRDBText *GroupAvg;
        TQRDBText *FacultyAvg;
        TQRDBText *QRDBText13;
        TQRExpr *QRExpr3;
        TQRDBText *QRDBText2;
        TQRDBText *QRDBText3;
        TQRDBText *QRDBText5;
        TQRDBText *QRDBText6;
        void __fastcall QRExpr1Print(TObject *sender, AnsiString &Value);
        void __fastcall QRExpr3Print(TObject *sender, AnsiString &Value);
        void __fastcall QuickRepBeforePrint(TCustomQuickRep *Sender,
          bool &PrintReport);
        void __fastcall QRGroup1BeforePrint(TQRCustomBand *Sender,
          bool &PrintBand);
private:	// User declarations
public:		// User declarations
        __fastcall TBossGroupRep(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TBossGroupRep *BossGroupRep;
//---------------------------------------------------------------------------
#endif
