//---------------------------------------------------------------------------

#ifndef LessonsReportsUnitH
#define LessonsReportsUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "ParentReportsUnit.h"
#include <Buttons.hpp>
#include <DBCtrls.hpp>
#include <ExtCtrls.hpp>
#include <QuickRpt.hpp>
#include "LetterToTeacherRepUnit.h"
#include "LetterToTeacherRepA5Unit.h"
#include "LessonResultRepUnit.h"
#include <Mask.hpp>
#include <DBGrids.hpp>
#include <Grids.hpp>
#include "ParentUnit.h"
#include <DB.hpp>
#include <DBTables.hpp>
#include <Chart.hpp>
#include <DbChart.hpp>
#include <Series.hpp>
#include <TeEngine.hpp>
#include <TeeProcs.hpp>
//---------------------------------------------------------------------------
class TLessonsReportsForm : public TParentReportsForm
{
__published:	// IDE-managed Components
        TRadioGroup *RadioGroup1;
        TDBLookupComboBox *FacultyDBBox;
        TDBLookupComboBox *GroupDBBox;
        TDBLookupComboBox *TeacherDBBox;
        TDBLookupComboBox *LessonDBBox;
        TCheckBox *LetterCheckBox;
        TCheckBox *LessonCheckBox;
        TRadioGroup *PaperSizeRadioGroup;
        TLabel *Label1;
        TMemo *NoteMemo;
        TDBGrid *DBGrid1;
        TMemo *Memo1;
        TCheckBox *MailCheckBox;
        void __fastcall FacultyDBBoxClick(TObject *Sender);
        void __fastcall FormShow(TObject *Sender);
        void __fastcall BitBtn1Click(TObject *Sender);
        void __fastcall LetterCheckBoxClick(TObject *Sender);
        void __fastcall LessonCheckBoxClick(TObject *Sender);
        void __fastcall RadioGroup1Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TLessonsReportsForm(TComponent* Owner);
        void __fastcall LetterReport(TLetterToTeacherRep *);
        void __fastcall LessonReport(TLessonResultRep *);
        void __fastcall DoReport(void);
        void __fastcall MarkReportStatus(int teacherID);
};
//---------------------------------------------------------------------------
extern PACKAGE TLessonsReportsForm *LessonsReportsForm;
//---------------------------------------------------------------------------
#endif
