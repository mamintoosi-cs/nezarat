//---------------------------------------------------------------------------

#ifndef QuestionsModificationUnitH
#define QuestionsModificationUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "ParentUnit.h"
#include <Buttons.hpp>
#include <DBCtrls.hpp>
#include <DBGrids.hpp>
#include <Grids.hpp>
#include <ExtCtrls.hpp>
#include <DB.hpp>
#include <DBTables.hpp>
//---------------------------------------------------------------------------
class TQuestionsModificationForm : public TParentForm
{
__published:	// IDE-managed Components
        TDBGrid *QsDBGrid;
        TTable *varQuestions;
        TDataSource *varQuestionsDS;
        TSmallintField *varQuestionsTermID;
        TSmallintField *varQuestionsLessonTypeID;
        TSmallintField *varQuestionsRowNo;
        TFloatField *varQuestionsCoef;
        TStringField *varQuestionsTitle;
        TSmallintField *varQuestionsQGroupNo;
        TStringField *varQuestionsQGroupName;
        TRadioGroup *NDRadioGroup;
        TBitBtn *BitBtn1;
        TDBGrid *QGroupNamesDBGrid;
        TDBNavigator *DBNavigator1;
        void __fastcall NDRadioGroupClick(TObject *Sender);
        void __fastcall BitBtn1Click(TObject *Sender);
        void __fastcall QGroupNamesDBGridKeyPress(TObject *Sender,
          char &Key);
        void __fastcall QsDBGridEnter(TObject *Sender);
        void __fastcall varQuestionsAfterInsert(TDataSet *DataSet);
        void __fastcall FormShow(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TQuestionsModificationForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TQuestionsModificationForm *QuestionsModificationForm;
//---------------------------------------------------------------------------
#endif
