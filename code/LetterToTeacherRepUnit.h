//---------------------------------------------------------------------------

#ifndef LetterToTeacherRepUnitH
#define LetterToTeacherRepUnitH
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
#include <DB.hpp>
#include <DBTables.hpp>
#include <Chart.hpp>
#include <DbChart.hpp>
#include <QRTEE.hpp>
#include <Series.hpp>
#include <TeEngine.hpp>
#include <TeeProcs.hpp>
//---------------------------------------------------------------------------
class TLetterToTeacherRep : public TParentRep
{
__published:	// IDE-managed Components
        TQRDBText *LessonName;
        TQRDBText *GroupAvg;
        TQRDBText *QRDBText2;
        TQRDBText *QRDBText3;
        TQRLabel *QRLabel33;
        TQRLabel *QRLabel31;
        TQRDBText *QRDBText26;
        TQRLabel *QRLabel32;
        TQRDBText *QRDBText25;
        TQRExpr *QRExpr1;
        TTable *TeachersFlat;
        TQRLabel *NDLabel;
        TQRLabel *QRLabel40;
        TQRLabel *QRLabel1;
        TQRLabel *QRLabel2;
        TQRLabel *QRLabel3;
        TQRLabel *QRLabel4;
        TQRDBText *QRDBText4;
        TQRShape *QRShape2;
        TQRLabel *QRLabel18;
        TQRLabel *QRLabel15;
        TQRLabel *QRLabel6;
        TQRLabel *QRLabel42;
        TQRLabel *QRLabel20;
        TQRLabel *QRLabel22;
        TQRLabel *QRLabel21;
        TQRLabel *QRLabel38;
        TQRLabel *QRLabel37;
        TQRLabel *QRLabel36;
        TQRDBText *QRDBText28;
        TQRDBText *QRDBText29;
        TQRDBText *QRDBText30;
        TQRDBText *QRDBText16;
        TQRDBText *QRDBText17;
        TQRDBText *QRDBText18;
        TQRDBText *QRDBText14;
        TQRDBText *QRDBText13;
        TQRDBText *QRDBText15;
        TQRDBText *QRDBText32;
        TQRLabel *QRLabel7;
        TQRGroup *QRGroup1;
        TQRMemo *QRMemo1;
        TQRLabel *QRLabel8;
        TQRDBText *QRDBText5;
        TQRExpr *ZemnanQRExpr;
        TQRLabel *QRLabel9;
        TQRMemo *NoteQRMemo;
        TQRChart *QRChart1;
        TQRDBChart *QRDBChart1;
        TBarSeries *Series1;
        void __fastcall FirstPageHeaderBandBeforePrint(
          TQRCustomBand *Sender, bool &PrintBand);
        void __fastcall DetailBandBeforePrint(TQRCustomBand *Sender,
          bool &PrintBand);
private:	// User declarations
public:		// User declarations
        __fastcall TLetterToTeacherRep(TComponent* Owner);
        __fastcall Initialize();
};
//---------------------------------------------------------------------------
extern PACKAGE TLetterToTeacherRep *LetterToTeacherRep;
//---------------------------------------------------------------------------
#endif
