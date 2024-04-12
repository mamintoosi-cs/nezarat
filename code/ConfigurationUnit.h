//---------------------------------------------------------------------------

#ifndef ConfigurationUnitH
#define ConfigurationUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "ParentUnit.h"
#include <Buttons.hpp>
#include <DBCtrls.hpp>
#include <ExtCtrls.hpp>
#include <Mask.hpp>
#include <DB.hpp>
#include <DBTables.hpp>
#include <Dialogs.hpp>
//---------------------------------------------------------------------------
class TConfigurationForm : public TParentForm
{
__published:	// IDE-managed Components
        TTable *LUnitInfo;
        TDataSource *LUnitInfoDS;
        TDataSource *LTeachersDS;
        TTable *LTeachers;
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
        TStringField *LTeachersTitle;
        TStringField *LUnitInfoUnitName;
        TStringField *LUnitInfoUnitBossName;
        TGraphicField *LUnitInfoBlackUnitArm;
        TGraphicField *LUnitInfoGrayUnitArm;
        TStringField *LUnitInfoVahedeNezaratName;
        TBooleanField *LUnitInfoExpired;
        TSmallintField *LUnitInfoUnitBossID;
        TSmallintField *LUnitInfoEducationalAssistantID;
        TStringField *LUnitInfostaff;
        TStringField *LTeachersEmailAddress;
        TTable *LTeachers2;
        TSmallintField *SmallintField1;
        TStringField *StringField1;
        TStringField *StringField2;
        TStringField *StringField3;
        TStringField *StringField4;
        TSmallintField *SmallintField2;
        TSmallintField *SmallintField3;
        TStringField *StringField5;
        TStringField *StringField6;
        TStringField *StringField7;
        TStringField *StringField8;
        TStringField *StringField9;
        TStringField *StringField10;
        TStringField *StringField11;
        TStringField *StringField12;
        TStringField *StringField13;
        TStringField *StringField14;
        TStringField *StringField15;
        TStringField *StringField16;
        TStringField *StringField17;
        TStringField *StringField18;
        TStringField *StringField19;
        TStringField *StringField20;
        TStringField *StringField21;
        TSmallintField *SmallintField4;
        TSmallintField *SmallintField5;
        TSmallintField *SmallintField6;
        TStringField *StringField22;
        TStringField *StringField23;
        TStringField *StringField24;
        TDataSource *LTeachers2DS;
        TPanel *Panel1;
        TLabel *Label1;
        TLabel *Label2;
        TDBLookupComboBox *UnivViceChancellorDBComboBox;
        TDBLookupComboBox *EducationalViceChancellorDBComboBox;
        TDBEdit *UnivViceChancellorDBEdit;
        TDBEdit *EducationalViceChancellorDBEdit;
        TPanel *Panel2;
        TLabel *Label3;
        TLabel *Label4;
        TDBEdit *DBEdit1;
        TDBEdit *DBEdit2;
        TBevel *Bevel1;
        TStaticText *StaticText1;
        TStaticText *StaticText2;
        TPanel *Panel3;
        TDBEdit *DBEdit3;
        TDBEdit *DBEdit4;
        TBevel *Bevel2;
        TLabel *Label5;
        TLabel *Label6;
        TShape *Shape1;
        TLabel *CloseLabel1;
        TColorDialog *ColorDialog1;
        TLabel *Label7;
        TDBEdit *DBEdit5;
        TDBEdit *DBEdit6;
        TLabel *CloseLabel2;
        TShape *Shape2;
        TLabel *Label8;
        TCheckBox *EducationalViceChancellorCheckBox;
        TCheckBox *UnivViceChancellorCheckBox;
        void __fastcall ReturnToMainBitBtnClick(TObject *Sender);
        void __fastcall Button1Click(TObject *Sender);
        void __fastcall UnivViceChancellorDBComboBoxExit(TObject *Sender);
        void __fastcall EducationalViceChancellorDBComboBoxExit(TObject *Sender);
        void __fastcall Shape1MouseDown(TObject *Sender,
          TMouseButton Button, TShiftState Shift, int X, int Y);
        void __fastcall FormShow(TObject *Sender);
        void __fastcall CloseLabel1Click(TObject *Sender);
        void __fastcall Shape2MouseDown(TObject *Sender,
          TMouseButton Button, TShiftState Shift, int X, int Y);
private:	// User declarations
public:		// User declarations
        __fastcall TConfigurationForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TConfigurationForm *ConfigurationForm;
//---------------------------------------------------------------------------
#endif
