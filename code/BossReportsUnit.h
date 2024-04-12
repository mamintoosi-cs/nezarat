//---------------------------------------------------------------------------

#ifndef BossReportsUnitH
#define BossReportsUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "ParentReportsUnit.h"
#include <Buttons.hpp>
#include <DBCtrls.hpp>
#include <ExtCtrls.hpp>
#include <Db.hpp>
#include <DBTables.hpp>
#include <DB.hpp>
#include <DBGrids.hpp>
#include <Grids.hpp>
#include "BossParentRepUnit.h"
#include "ParentUnit.h"
//---------------------------------------------------------------------------
class TBossReportsForm : public TParentReportsForm
{
__published:	// IDE-managed Components
        TRadioGroup *RadioGroup1;
        TDBLookupComboBox *FacultyDBBox;
        TDBLookupComboBox *GroupDBBox;
        TDBLookupComboBox *TeacherDBBox;
        TDBLookupComboBox *LessonDBBox;
        TRadioGroup *LorTRadioGroup;
        TLabel *Label1;
        TTable *LTeachers;
        TDataSource *LTeachersDS;
        TDBGrid *DBGrid1;
        TDBGrid *DBGrid2;
        void __fastcall FacultyDBBoxClick(TObject *Sender);
        void __fastcall FormShow(TObject *Sender);
        void __fastcall RadioGroup1Click(TObject *Sender);
        void __fastcall SelectionBitBtnClick(TObject *Sender);
        void __fastcall DBGrid1Exit(TObject *Sender);
        void __fastcall DBGrid1KeyDown(TObject *Sender, WORD &Key,
          TShiftState Shift);
        void __fastcall DBGrid2KeyDown(TObject *Sender, WORD &Key,
          TShiftState Shift);
        void __fastcall DBGrid2Exit(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TBossReportsForm(TComponent* Owner);
        void __fastcall LessonAvgReport(void);
        void __fastcall TeacherAvgReport(void);
        void __fastcall HistoryReport(void);
        void __fastcall DoReport(void);
};
//---------------------------------------------------------------------------
extern PACKAGE TBossReportsForm *BossReportsForm;
//---------------------------------------------------------------------------
#endif
