//---------------------------------------------------------------------------

#ifndef NewTeacherUnitH
#define NewTeacherUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "ParentUnit.h"
#include <Buttons.hpp>
#include <Db.hpp>
#include <DBGrids.hpp>
#include <DBTables.hpp>
#include <Grids.hpp>
#include <DBCtrls.hpp>
#include <ExtCtrls.hpp>
#include <Mask.hpp>
#include <DB.hpp>
#include <ComCtrls.hpp>
#include <ToolWin.hpp>
//---------------------------------------------------------------------------
class TNewTeacherForm : public TParentForm
{
__published:	// IDE-managed Components
        TTable *LvarTeachers;
        TTable *LTeachers;
        TDataSource *LTeachersDS;
        TDataSource *LvarTeachersDS;
        TDBEdit *FirstNameDBEdit;
        TDBEdit *LastNameDBEdit;
        TDBLookupComboBox *DegreeDBBox;
        TSmallintField *LTeachersTeacherID;
        TStringField *LTeachersFirstName;
        TStringField *LTeachersFirstName2;
        TStringField *LTeachersLastName;
        TStringField *LTeachersLastName2;
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
        TStringField *LTeachersTeacherName;
        TBevel *Bevel1;
        TDBLookupComboBox *ConditionDBBox5;
        TDBLookupComboBox *DBLookupComboBox6;
        TDBLookupComboBox *DBLookupComboBox7;
        TLabel *Label2;
        TLabel *Label3;
        TLabel *Label4;
        TLabel *Label7;
        TDBGrid *BSDBGrid;
        TDBGrid *MSDBGrid;
        TDBGrid *PHDDBGrid;
        TLabel *Label9;
        TLabel *Label10;
        TDBEdit *DBEdit4;
        TLabel *Label11;
        TLabel *Label12;
        TDBEdit *DBEdit5;
        TLabel *Label13;
        TDBLookupComboBox *DBLookupComboBox4;
        TLabel *Label14;
        TDBLookupComboBox *DBLookupComboBox5;
        TLabel *Label8;
        TBevel *Bevel2;
        TLabel *Label15;
        TLabel *Label16;
        TLabel *Label18;
        TSmallintField *LvarTeachersTeacherID;
        TSmallintField *LvarTeachersTermID;
        TSmallintField *LvarTeachersHamkariID;
        TSmallintField *LvarTeachersDegreeID;
        TSmallintField *LvarTeachersMadrakID;
        TSmallintField *LvarTeachersFacultyID;
        TSmallintField *LvarTeachersGroupID;
        TDBRadioGroup *DBRadioGroup1;
        TDBRadioGroup *DBRadioGroup2;
        TDBNavigator *DBNavigator2;
        TDBNavigator *DBNavigator3;
        TLabel *Label5;
        TLabel *Label6;
        TBitBtn *SaveandNewBtn;
        TBitBtn *SaveBtn;
        TBitBtn *DeleteBtn;
        TLabel *Label1;
        TDBLookupComboBox *DBLookupComboBox1;
        TDBText *DBText1;
        TLabel *Label19;
        TDBEdit *DBEdit2;
        TStringField *LTeachersTitle;
        TDBEdit *DBEdit3;
        TLabel *Label20;
        TStringField *LTeachersEmailAddress;
        void __fastcall FirstNameDBEditExit(TObject *Sender);
        void __fastcall LastNameDBEditExit(TObject *Sender);
        void __fastcall BSDBGridKeyDown(TObject *Sender, WORD &Key,
          TShiftState Shift);
        void __fastcall MSDBGridKeyDown(TObject *Sender, WORD &Key,
          TShiftState Shift);
        void __fastcall PHDDBGridKeyDown(TObject *Sender, WORD &Key,
          TShiftState Shift);
        void __fastcall DBRadioGroup2Exit(TObject *Sender);
        void __fastcall FormShow(TObject *Sender);
        void __fastcall SaveandNewBtnClick(TObject *Sender);
        void __fastcall SaveBtnClick(TObject *Sender);
        void __fastcall DeleteBtnClick(TObject *Sender);
        void __fastcall BitBtn2Click(TObject *Sender);
        void __fastcall LvarTeachersAfterPost(TDataSet *DataSet);
private:	// User declarations
public:		// User declarations
        __fastcall TNewTeacherForm(TComponent* Owner);
        void __fastcall InsertNewTeacher(void);
};
//---------------------------------------------------------------------------
extern PACKAGE TNewTeacherForm *NewTeacherForm;
//---------------------------------------------------------------------------
#endif
