//---------------------------------------------------------------------------

#ifndef QuestionsRadehBandyUnitH
#define QuestionsRadehBandyUnitH
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
#include "QuestionsRadehBandyRepUnit.h"
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
class TQuestionsRadehBandyForm : public TParentReportsForm
{
__published:	// IDE-managed Components
        TRadioGroup *RadioGroup1;
        TDBLookupComboBox *FacultyDBBox;
        TDBLookupComboBox *GroupDBBox;
        TBitBtn *LessonTypeSelectionBitBtn;
        void __fastcall FacultyDBBoxClick(TObject *Sender);
        void __fastcall FormShow(TObject *Sender);
        void __fastcall LessonTypeSelectionBitBtnClick(TObject *Sender);
        void __fastcall RadioGroup1Click(TObject *Sender);
        void __fastcall FormCreate(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TQuestionsRadehBandyForm(TComponent* Owner);
        void __fastcall LetterReport(TLetterToTeacherRep *);
//        void __fastcall LessonReport(TLessonResultRep *);
        void __fastcall QuestionsReport(TQuestionsRadehBandyRep *QRep);
        void __fastcall DoReport(void);
        void __fastcall MarkReportStatus(int teacherID);
};
//---------------------------------------------------------------------------
extern PACKAGE TQuestionsRadehBandyForm *QuestionsRadehBandyForm;
//---------------------------------------------------------------------------
#endif
