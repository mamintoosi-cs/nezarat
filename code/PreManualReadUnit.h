//---------------------------------------------------------------------------

#ifndef PreManualReadUnitH
#define PreManualReadUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "ParentUnit.h"
#include <Buttons.hpp>
#include <DB.hpp>
#include <DBCtrls.hpp>
#include <DBTables.hpp>
#include <ExtCtrls.hpp>
#include <Mask.hpp>
#include <DBGrids.hpp>
#include <Grids.hpp>
//---------------------------------------------------------------------------
class TPreManualReadForm : public TParentForm
{
__published:	// IDE-managed Components
        TLabel *Label12;
        TBitBtn *SabtBtn;
        TGroupBox *GroupBox1;
        TDBEdit *DBEdit1;
        TGroupBox *GroupBox2;
        TLabel *Label8;
        TDBLookupComboBox *GroupIDDBBox;
        TBitBtn *ManualReadBtn;
        TEdit *TPasokhEdit;
        TQuery *TeachersNameQuery;
        TDataSource *TeachersNameQueryDS;
        TTable *Lessons;
        TSmallintField *LessonsLessonID;
        TStringField *LessonsLessonName;
        TStringField *LessonsLessonName2;
        TSmallintField *LessonsNOTUT;
        TSmallintField *LessonsNOOPE;
        TSmallintField *LessonsLessonTypeID;
        TStringField *LessonsLessonTypeName;
        TDataSource *LessonsDS;
        TSmallintField *TeachersNameQueryTeacherID;
        TStringField *TeachersNameQueryHamkariName;
        TStringField *TeachersNameQueryGroupName;
        TStringField *TeachersNameQueryFacultyName;
        TSmallintField *TeachersNameQueryGroupID;
        TDBGrid *DBGrid1;
        TStringField *TeachersNameQueryLastName;
        TStringField *TeachersNameQueryFirstName;
        TLabel *Label1;
        TDBGrid *DBGrid2;
        void __fastcall FormShow(TObject *Sender);
        void __fastcall GroupBox1Exit(TObject *Sender);
        void __fastcall SabtBtnClick(TObject *Sender);
        void __fastcall ManualReadBtnClick(TObject *Sender);
        void __fastcall TPasokhEditKeyPress(TObject *Sender, char &Key);
        void __fastcall DBGrid1KeyPress(TObject *Sender, char &Key);
        void __fastcall DBGrid2KeyPress(TObject *Sender, char &Key);
private:	// User declarations
public:		// User declarations
        __fastcall TPreManualReadForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TPreManualReadForm *PreManualReadForm;
//---------------------------------------------------------------------------
#endif
