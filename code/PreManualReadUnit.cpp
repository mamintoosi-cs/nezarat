//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "PreManualReadUnit.h"
#include "DMUnit.h"
#include "ManualReadUnit.h"
#include "ReadOMRUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "ParentUnit"
#pragma resource "*.dfm"
TPreManualReadForm *PreManualReadForm;
//---------------------------------------------------------------------------
__fastcall TPreManualReadForm::TPreManualReadForm(TComponent* Owner)
        : TParentForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TPreManualReadForm::FormShow(TObject *Sender)
{
  TeachersNameQuery->Close();
  TeachersNameQuery->Open();
  Lessons->Close();
  Lessons->Open();
  SabtBtn->Enabled=false;
  DM->Alaki->Edit();
  DM->Alaki->FieldByName("GroupID")->AsInteger=TeachersNameQuery->FieldByName("GroupID")->AsInteger;
}
//---------------------------------------------------------------------------
void __fastcall TPreManualReadForm::GroupBox1Exit(TObject *Sender)
{
 DM->Alaki->FieldByName("GroupID")->AsInteger=TeachersNameQuery->FieldByName("GroupID")->AsInteger;
}
//---------------------------------------------------------------------------
void __fastcall TPreManualReadForm::SabtBtnClick(TObject *Sender)
{
  int teacherID,lessonID,groupCode,groupID;

/*  if(TeacherDBLookupComboBox->Text == "")
  {
    ShowMessage("ÇÓÊÇÏ ÏÑÓ ãÔÎÕ äíÓÊ");
    TeacherDBLookupComboBox->SetFocus();
    return;
  }
  if(LessonDBLookupComboBox->Text == "")
  {
    ShowMessage("äÇã ÏÑÓ ãÔÎÕ äíÓÊ");
    LessonDBLookupComboBox->SetFocus();
    return;
  }
  teacherID=DM->Alaki->FieldValues["TeacherID"];
  lessonID=DM->Alaki->FieldValues["LessonID"];
  */
  teacherID=TeachersNameQuery->FieldValues["TeacherID"];
  lessonID=Lessons->FieldValues["LessonID"];
  groupID=DM->Alaki->FieldValues["groupID"];
  ReadFromOMR->Initialize();
  groupCode= ReadFromOMR->NextGroupCode(teacherID,lessonID);
  ReadFromOMR->saveToTable(ManualReadForm->s,teacherID,lessonID,groupCode,groupID );
  SabtBtn->Enabled=false;
  ManualReadForm->needZero=true;
}
//---------------------------------------------------------------------------

void __fastcall TPreManualReadForm::ManualReadBtnClick(TObject *Sender)
{
  DM->LessonTypeID=Lessons->FieldByName("LessonTypeID")->AsInteger;
 ManualReadForm->TPasokh=StrToInt(TPasokhEdit->Text);
 ManualReadForm->ShowModal();
 SabtBtn->Enabled=true;

}
//---------------------------------------------------------------------------

void __fastcall TPreManualReadForm::TPasokhEditKeyPress(TObject *Sender,
      char &Key)
{
  if(!isdigit(Key) && Key!=8) Key='0';
}
//---------------------------------------------------------------------------
void __fastcall TPreManualReadForm::DBGrid1KeyPress(TObject *Sender,
      char &Key)
{
  TLocateOptions Opts;
  AnsiString name="a";
  name[1]=Key;
  Opts.Clear();
  Opts << loPartialKey;
  Variant locvalues;
  locvalues = Variant(name);
  TeachersNameQuery->Locate("LastName", locvalues, Opts);
}
//---------------------------------------------------------------------------

void __fastcall TPreManualReadForm::DBGrid2KeyPress(TObject *Sender,
      char &Key)
{
  TLocateOptions Opts;
  AnsiString name="a";
  name[1]=Key;
  Opts.Clear();
  Opts << loPartialKey;
  Variant locvalues;
  locvalues = Variant(name);
  Lessons->Locate("LessonName", locvalues, Opts);
}
//---------------------------------------------------------------------------

