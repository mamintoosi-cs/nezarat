//----------------------------------------------------------------------------
#ifndef ParentRepUnitH
#define ParentRepUnitH
//----------------------------------------------------------------------------
#include <vcl\Classes.hpp>
#include <vcl\Controls.hpp>
#include <vcl\StdCtrls.hpp>
#include <vcl\Forms.hpp>
#include <vcl\QuickRpt.hpp>
#include <vcl\QRCtrls.hpp>
#include <Db.hpp>
#include <DBTables.hpp>
#include <ExtCtrls.hpp>
#include <Qrctrls.hpp>
#include <Graphics.hpp>
#include <DB.hpp>
//----------------------------------------------------------------------------
class TParentRep : public TQuickRep
{
__published:
        TQRBand *FirstPageHeaderBand;
        TQRBand *DetailBand;
        TQRBand *CulomnHeaderBand;
        TQRLabel *RadifLabel;
        TQRExpr *CountExpr;
        TQRBand *EveryPageFooterBand;
        TQRExpr *QRExpr2;
        TQRBand *EndPageFooterBand;
        TQRLabel *QRLabel16;
        TQRMemo *EhteramQRMemo;
        TQRMemo *NoDateAttachMemo;
        TQRLabel *TitleLabel;
        TQRDBText *TermName1;
        TQRLabel *QRLabel5;
        TQRImage *QRImage1;
private:
public:
   __fastcall TParentRep::TParentRep(TComponent* Owner);
   void BandColor(TQRCustomBand *,float avg);
};
//----------------------------------------------------------------------------
extern TParentRep *ParentRep;
//----------------------------------------------------------------------------
#endif