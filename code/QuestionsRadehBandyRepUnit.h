//---------------------------------------------------------------------------

#ifndef QuestionsRadehBandyRepUnitH
#define QuestionsRadehBandyRepUnitH
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
class TQuestionsRadehBandyRep : public TParentRep
{
__published:	// IDE-managed Components
        TQuery *Query1;
        TQRLabel *QRLabel12;
        TQRDBText *QRDBText10;
        TQRDBText *QRDBText3;
        TQRLabel *QRLabel6;
        TQRLabel *QRLabel7;
        TQRLabel *QRLabel8;
        TQRLabel *QRLabel9;
        TQRLabel *QRLabel10;
        TQRLabel *QRLabel11;
        TQRDBText *QRDBText4;
        TQRDBText *QRDBText8;
        TQRDBText *QRDBText9;
        TQRDBText *QRDBText13;
        TQRDBText *QRDBText2;
        TQRDBText *QRDBText5;
        TQRLabel *QRLabel1;
        TQRDBText *QRDBText1;
        TQRLabel *QRLabel2;
        void __fastcall QRGroup2AfterPrint(TQRCustomBand *Sender,
          bool BandPrinted);
private:	// User declarations
public:		// User declarations
        __fastcall TQuestionsRadehBandyRep(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TQuestionsRadehBandyRep *QuestionsRadehBandyRep;
//---------------------------------------------------------------------------
#endif
