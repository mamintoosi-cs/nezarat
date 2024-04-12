//---------------------------------------------------------------------------

#ifndef HistoryRepUnitH
#define HistoryRepUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "ParentRepUnit.h"
#include <ExtCtrls.hpp>
#include <Graphics.hpp>
#include <QRCtrls.hpp>
#include <QuickRpt.hpp>
//---------------------------------------------------------------------------
class THistoryRep : public TParentRep
{
__published:	// IDE-managed Components
        TQRLabel *QRLabel1;
        TQRLabel *HamkariLabel;
        TQRLabel *MadrakLabel;
        TQRDBText *Rotbeh;
        TQRDBText *Average;
        TQRDBText *LessonName;
        TQRDBText *QRDBText12;
        TQRBand *QRBandGFooter2;
        TQRExpr *QRExpr3;
        TQRLabel *QRLabel17;
        TQRExpr *QRExpr4;
        TQRLabel *QRLabel2;
        TQRExpr *QRExpr5;
        TQRLabel *QRLabel3;
        TQRLabel *RotbehLabel;
        TQRLabel *AverageLabel;
        TQRLabel *LessonNameLabel;
        TQRDBText *Madrak;
        TQRDBText *Hamkari;
        void __fastcall DetailBandBeforePrint(TQRCustomBand *Sender,
          bool &PrintBand);
private:	// User declarations
public:		// User declarations
        __fastcall THistoryRep(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE THistoryRep *HistoryRep;
//---------------------------------------------------------------------------
#endif
