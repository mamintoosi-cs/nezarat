//---------------------------------------------------------------------------

#ifndef PrintTablesUnitH
#define PrintTablesUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "ParentReportsUnit.h"
#include <Buttons.hpp>
#include <DB.hpp>
#include <DBCtrls.hpp>
#include <DBGrids.hpp>
#include <DBTables.hpp>
#include <ExtCtrls.hpp>
#include <Grids.hpp>
#include <QRCtrls.hpp>
#include <QuickRpt.hpp>
#include <Dialogs.hpp>
//---------------------------------------------------------------------------
class TPrintTablesForm : public TParentReportsForm
{
__published:	// IDE-managed Components
        TDataSource *DataSource1;
        TDBGrid *DBGrid1;
        TTable *LTeachers;
        TTable *LVarTeachers;
        TQuery *Query1;
        TSmallintField *Query1TeacherID;
        TStringField *Query1FirstName;
        TStringField *Query1LastName;
        TStringField *Query1TeacherName;
        TStringField *Query1Title;
        TSmallintField *Query1JensId;
        TSmallintField *Query1MarriageID;
        TStringField *Query1DateE;
        TStringField *Query1DateofLastPromotion;
        TSmallintField *Query1Lang1;
        TSmallintField *Query1Lang2;
        TSmallintField *Query1ConditionID;
        TStringField *Query1EmailAddress;
        TSmallintField *Query1TermID;
        TSmallintField *Query1HamkariID;
        TSmallintField *Query1DegreeID;
        TSmallintField *Query1MadrakID;
        TSmallintField *Query1GroupID;
        TSmallintField *Query1FacultyID;
        TStringField *Query1Hamkari;
        TStringField *Query1Degree;
        TStringField *Query1Madrak;
        TStringField *Query1Group;
        TStringField *Query1ReportStatus;
        TQuickRep *QuickRep1;
        TQRBand *DetailQRBand;
        TQRBand *TitleQRBand;
        TQRBand *HeaderQRBand;
        TQRSysData *QRSysData1;
        TQRBand *QRBand1;
        TQRLabel *QRLabel1;
        TQRLabel *TitleQRLabel;
        TQRLabel *DateQRLabel;
        TFontDialog *FontDialog1;
        TGroupBox *GroupBox2;
        TLabel *Label25;
        TEdit *TitleHeightEdit;
        TEdit *DetailHeightEdit;
        TLabel *Label27;
        TLabel *Label1;
        TEdit *TitleEdit;
        TLabel *Label2;
        TCheckBox *CurrentTermCheckBox;
        TRadioGroup *ReportTypeRadioGroup;
        void __fastcall FormCreate(TObject *Sender);
        void __fastcall FormDestroy(TObject *Sender);
        void __fastcall DBGrid1TitleClick(TColumn *Column);
        void __fastcall DBGrid1CellClick(TColumn *Column);
        void __fastcall CurrentTermCheckBoxClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TPrintTablesForm(TComponent* Owner);
        void __fastcall ReSetQuery(TColumn *Column);
        void __fastcall DoReport();
        void __fastcall SpreadReport();
        void __fastcall CompactReport();
};
//---------------------------------------------------------------------------
extern PACKAGE TPrintTablesForm *PrintTablesForm;
//---------------------------------------------------------------------------
#endif
