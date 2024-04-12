//---------------------------------------------------------------------------

#ifndef BossParentRepUnitH
#define BossParentRepUnitH
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
class TBossParentRep : public TParentRep
{
__published:	// IDE-managed Components
        TQRBand *EveryPageHeaderBand;
        TQRLabel *TitleLabel2;
        TQRDBText *TermName2;
        TQRChildBand *QRChildBand1;
        TQRLabel *UnivLabel;
        TQRExpr *UnivAvg;
        TQRShape *QRShape2;
        TQRLabel *QRLabel1;
        TQRLabel *QRLabel2;
        TQRLabel *VELabel;
        TQRLabel *NDLabel;
        TQRLabel *QRLabel3;
        TQRLabel *QRLabel4;
        TQRLabel *MDLabel;
        TQRImage *QRImage2;
        void __fastcall FirstPageHeaderBandBeforePrint(
          TQRCustomBand *Sender, bool &PrintBand);
private:	// User declarations
public:		// User declarations
        __fastcall TBossParentRep(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TBossParentRep *BossParentRep;
//---------------------------------------------------------------------------
#endif
