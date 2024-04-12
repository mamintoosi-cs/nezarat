//---------------------------------------------------------------------------

#ifndef ReportModificationUnitH
#define ReportModificationUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "ParentUnit.h"
#include <Buttons.hpp>
#include <Db.hpp>
#include <DBTables.hpp>
#include <DBCtrls.hpp>
#include <DBGrids.hpp>
#include <Grids.hpp>
#include <ExtCtrls.hpp>
#include <DB.hpp>
//---------------------------------------------------------------------------
class TReportModificationForm : public TParentForm
{
__published:	// IDE-managed Components
        TDBGrid *DBGrid1;
        TDataSource *QLTDS;
        TTable *LvarQLT;
        TIntegerField *LvarQLTTeacherID;
        TIntegerField *LvarQLTLessonID;
        TStringField *LvarQLT_TeacherName;
        TStringField *LvarQLT_TeacherFirstName;
        TStringField *LvarQLT_LessonName;
        TDBNavigator *DBNavigator1;
        TSmallintField *LvarQLTTPasokh;
        TSmallintField *LvarQLTGroupCode;
        TFloatField *LvarQLTAverage;
        TSmallintField *LvarQLTGroupID;
        TStringField *LvarQLT_GroupName;
        TSmallintField *LvarQLTTermID;
        TIntegerField *LvarQLTID;
        TStringField *LvarQLTRotbeh;
        TQuery *DeleteFromResultsQuery;
        TQuery *TeachersNameQuery;
        TSmallintField *TeachersNameQueryTeacherID;
        TStringField *TeachersNameQueryHamkariName;
        TStringField *TeachersNameQueryGroupName;
        TSmallintField *TeachersNameQueryGroupID;
        TStringField *TeachersNameQueryLastName;
        TStringField *TeachersNameQueryFirstName;
        TDataSource *TeachersNameQueryDS;
        TDBGrid *TeachersDBGrid;
        TSpeedButton *SearchButton;
        TBooleanField *LvarQLTIsConsidered;
        TRadioGroup *LorTRadioGroup;
        TPanel *Panel1;
        TEdit *Edit1;
        TLabel *Label1;
        TBitBtn *BitBtn1;
        TButton *MarkBtn;
        TQuery *MarkQuery;
        TButton *DelFromResultBtn;
        TQuery *DeleteFromVarQLTQuery;
        TButton *DeleteFromVarQLTQueryBtn;
        void __fastcall FormShow(TObject *Sender);
        void __fastcall ReturnToMainBitBtnClick(TObject *Sender);
        void __fastcall DBNavigator1Click(TObject *Sender,
          TNavigateBtn Button);
        void __fastcall LvarQLTAfterDelete(TDataSet *DataSet);
        void __fastcall LvarQLTBeforeDelete(TDataSet *DataSet);
        void __fastcall TeachersDBGridKeyPress(TObject *Sender, char &Key);
        void __fastcall TeachersDBGridDblClick(TObject *Sender);
        void __fastcall DBGrid1KeyDown(TObject *Sender, WORD &Key,
          TShiftState Shift);
        void __fastcall SearchButtonClick(TObject *Sender);
        void __fastcall DBGrid1Enter(TObject *Sender);
        void __fastcall DBGrid1Exit(TObject *Sender);
        void __fastcall LorTRadioGroupClick(TObject *Sender);
        void __fastcall BitBtn1Click(TObject *Sender);
        void __fastcall MarkBtnClick(TObject *Sender);
        void __fastcall DelFromResultBtnClick(TObject *Sender);
        void __fastcall DeleteFromVarQLTQueryBtnClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TReportModificationForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TReportModificationForm *ReportModificationForm;
//---------------------------------------------------------------------------
#endif
