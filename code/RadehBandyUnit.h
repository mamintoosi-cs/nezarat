//---------------------------------------------------------------------------

#ifndef RadehBandyUnitH
#define RadehBandyUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "ParentReportsUnit.h"
#include <ComCtrls.hpp>
#include <Db.hpp>
#include <DBTables.hpp>
#include <DB.hpp>
#include <Buttons.hpp>
#include <DBCtrls.hpp>
#include <ExtCtrls.hpp>
#include <DBGrids.hpp>
#include <Grids.hpp>
#include "ParentUnit.h"
//---------------------------------------------------------------------------
class TRadehBandyForm : public TParentReportsForm
{
__published:	// IDE-managed Components
        TTreeView *RotbehTV;
        TTable *Faculties;
        TTable *Groups;
        TTable *LTeachers;
        TDataSource *DataSource1;
        TSmallintField *LTeachersTeacherID;
        TStringField *LTeachersFirstName;
        TStringField *LTeachersFirstName2;
        TStringField *LTeachersLastName;
        TStringField *LTeachersLastName2;
        TStringField *LTeachersTeacherName;
        TStringField *LTeachersTitle;
        TSmallintField *LTeachersJensId;
        TSmallintField *LTeachersMarriageID;
        TStringField *LTeachersDateE;
        TStringField *LTeachersBSCourse;
        TStringField *LTeachersBSUniversity;
        TStringField *LTeachersBSCountry;
        TStringField *LTeachersBSDate;
        TStringField *LTeachersBSProject;
        TStringField *LTeachersMSCourse;
        TStringField *LTeachersMSUniversity;
        TStringField *LTeachersMSCountry;
        TStringField *LTeachersMSDate;
        TStringField *LTeachersMSProject;
        TStringField *LTeachersPHDCourse;
        TStringField *LTeachersPHDUniversity;
        TStringField *LTeachersPHDCountry;
        TStringField *LTeachersPHDDate;
        TStringField *LTeachersPHDThesis;
        TStringField *LTeachersDateofLastPromotion;
        TSmallintField *LTeachersLang1;
        TSmallintField *LTeachersLang2;
        TSmallintField *LTeachersConditionID;
        TStringField *LTeachersEmailAddress;
        TButton *Button1;
        TLabel *Label2;
        void __fastcall FormCreate(TObject *Sender);
        void __fastcall FormShow(TObject *Sender);
        void __fastcall FormDestroy(TObject *Sender);
        void __fastcall SelectionBitBtnClick(TObject *Sender);
        void __fastcall Button1Click(TObject *Sender);
        void __fastcall RotbehTVClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TRadehBandyForm(TComponent* Owner);
        void report(AnsiString title,AnsiString locName,AnsiString sqlSelect,
                AnsiString sqlWhere,AnsiString sqlGroupBy,bool AezaeVisiblity);
        void Hazf(TTreeNode *node);
        void __fastcall DoReport(void);
};
//---------------------------------------------------------------------------
extern PACKAGE TRadehBandyForm *RadehBandyForm;
//---------------------------------------------------------------------------
#endif
