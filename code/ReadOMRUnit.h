//---------------------------------------------------------------------------

#ifndef ReadOMRUnitH
#define ReadOMRUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "ParentUnit.h"
#include <Buttons.hpp>
#include <stdio.h>
#include "DMUnit.h"
#include <DB.hpp>
#include <DBTables.hpp>
#include <DBCtrls.hpp>
#include <ExtCtrls.hpp>
#include <DBGrids.hpp>
#include <Grids.hpp>
#include <ComCtrls.hpp>
//---------------------------------------------------------------------------
class TReadFromOMR : public TParentForm
{
__published:	// IDE-managed Components
        TBitBtn *ComputeGradesBtn;
        TQuery *DeleteFromVarResults;
        TQuery *DeleteFromVarQLT;
        TQuery *ExistDarsQry;
        TTable *ColumnsCoefs;
        TTable *varQuestions;
        TLabel *Label1;
        TQuery *MaxIDQuery;
        TIntegerField *MaxIDQuerymaxID;
        TButton *Button1;
        TQuery *TeacherGroupIDQuery;
        TBitBtn *ReadAndTestBtn;
        TLabel *Label2;
        TQuery *TeachersNameQuery;
        TSmallintField *TeachersNameQueryTeacherID;
        TDataSource *TeachersNameQueryDS;
        TDBLookupComboBox *TeacherBox;
        TDBLookupComboBox *LessonBox;
        TLabel *Label3;
        TLabel *Label4;
        TLabel *Label5;
        TLabel *TPasokhLabel;
        TStringField *TeachersNameQueryTeacherProperties;
        TStringField *TeachersNameQueryLastName2;
        TStringField *TeachersNameQueryFirstName2;
        TDataSource *LessonsDS;
        TTable *Lessons;
        TSmallintField *LessonsLessonID;
        TStringField *LessonsLessonName;
        TStringField *LessonsLessonName2;
        TSmallintField *LessonsNOTUT;
        TSmallintField *LessonsNOOPE;
        TSmallintField *LessonsLessonTypeID;
        TStringField *LessonsLessonTypeName;
        TBitBtn *DeleteBtn;
        TDBGrid *DBGrid1;
        TDBGrid *LessonsDBGrid;
        TSmallintField *TeacherGroupIDQuerygroupID;
        TProgressBar *ProgressBar1;
        TQuery *DeleteFromOMRQuery;
        TEdit *StopCodeEdit;
        TLabel *Label6;
        TRadioGroup *FareghRadioGroup;
        void __fastcall ComputeGradesBtnClick(TObject *Sender);
        void __fastcall DeleteBtnClick(TObject *Sender);
        void __fastcall FormShow(TObject *Sender);
        void __fastcall Button1Click(TObject *Sender);
        void __fastcall ReadAndTestBtnClick(TObject *Sender);
        void __fastcall TeacherBoxClick(TObject *Sender);
        void __fastcall LessonBoxClick(TObject *Sender);
        void __fastcall LessonsDBGridKeyPress(TObject *Sender, char &Key);
        void __fastcall StopCodeEditExit(TObject *Sender);
        void __fastcall FareghRadioGroupClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TReadFromOMR(TComponent* Owner);
        void saveToTable(unsigned int s[MaxNoofQuestions][MaxNoofColumns],int,int,int,int);
        void readRecords(int,int,int,int);
        float colCoef[MaxNoofColumns],
              rowCoef[MaxNoofLessonTypes][MaxNoofQuestions],
              sumOfRowCoef[MaxNoofLessonTypes];
        void Initialize(void);
        int __fastcall NextGroupCode(int teacherID,int lessonID);
        int __fastcall NoOfQuestions(int lID,int &lt);
        void __fastcall TeacherAndLessonIDs(int &teacherID,int &lessonID);
        bool __fastcall TestingReadedLessons(void);
//        void __fastcall ReplaceIDCodes(int startPos,int length,int newVal);
        int FormType;
};
//---------------------------------------------------------------------------
extern PACKAGE TReadFromOMR *ReadFromOMR;
//---------------------------------------------------------------------------
#endif
