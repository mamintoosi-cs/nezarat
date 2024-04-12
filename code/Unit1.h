//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <Chart.hpp>
#include <DB.hpp>
#include <DbChart.hpp>
#include <DBTables.hpp>
#include <ExtCtrls.hpp>
#include <MXDB.hpp>
#include <Mxstore.hpp>
#include <MXTABLES.hpp>
#include <QRTEE.hpp>
#include <QuickRpt.hpp>
#include <Series.hpp>
#include <TeEngine.hpp>
#include <TeeProcs.hpp>
#include <DBGrids.hpp>
#include <Grids.hpp>
#include <TeeFunci.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
        TQuickRep *QuickRep1;
        TDecisionQuery *DecisionQuery1;
        TButton *Button1;
        TQuery *Query1;
        TDataSource *DataSource1;
        TDBGrid *DBGrid1;
        TDBChart *DBChart1;
        TLineSeries *Series2;
        TDataSource *DataSource2;
        TQRBand *TitleBand1;
        TQRChart *QRChart1;
        TQRDBChart *QRDBChart1;
        TLineSeries *Series1;
        TButton *Button2;
        TLineSeries *Series3;
        void __fastcall Button1Click(TObject *Sender);
        void __fastcall Button2Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
