//---------------------------------------------------------------------------

#ifndef LessonResultRepUnitH
#define LessonResultRepUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "ParentRepUnit.h"
#include <DB.hpp>
#include <DBTables.hpp>
#include <ExtCtrls.hpp>
#include <Graphics.hpp>
#include <QRCtrls.hpp>
#include <QuickRpt.hpp>
//---------------------------------------------------------------------------
class TLessonResultRep : public TParentRep
{
__published:	// IDE-managed Components
        TQuery *Query1;
        TQRLabel *QRLabel30;
        TQRDBText *QRDBText24;
        TQRLabel *QRLabel40;
        TQRDBText *QRDBText31;
        TQRLabel *QRLabel3;
        TQRLabel *QRLabel4;
        TQRLabel *QRLabel6;
        TQRLabel *QRLabel7;
        TQRLabel *QRLabel8;
        TQRLabel *QRLabel9;
        TQRLabel *QRLabel1;
        TQRLabel *QRLabel10;
        TQRLabel *QRLabel11;
        TQRLabel *QRLabel12;
        TQRGroup *QRGroup1;
        TQRGroup *QRGroup2;
        TQRDBText *QRDBText12;
        TQRDBText *QRDBText1;
        TQRDBText *QRDBText2;
        TQRDBText *QRDBText3;
        TQRDBText *QRDBText7;
        TQRDBText *QRDBText6;
        TQRDBText *QRDBText5;
        TQRDBText *QRDBText4;
        TQRDBText *QRDBText8;
        TQRDBText *QRDBText9;
        TQRDBText *QRDBText10;
        TQRBand *QRBandGFooter2;
        TQRExpr *QRExpr1;
        TQRLabel *QRLabel17;
        TQRExpr *QRExpr3;
        TQRLabel *QRLabel14;
        TQRDBText *QRDBText11;
        TQRExpr *QRExpr4;
        TQRExpr *QRExpr5;
        void __fastcall QRGroup2AfterPrint(TQRCustomBand *Sender,
          bool BandPrinted);
private:	// User declarations
public:		// User declarations
        __fastcall TLessonResultRep(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TLessonResultRep *LessonResultRep;
//---------------------------------------------------------------------------
#endif
