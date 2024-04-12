//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "testReportsUnit1.h"
#include "BossParentRepUnit.h"
#include "BossRepUnit.h"
#include "FilteringUnit.h"
#include "ChooseLessonTypeUnit.h"
//#include "LetterToTeacherRepUnit.h"
//#include "LessonsReportsUnit.h"
//#include "LetterToTeacherRepA5Unit.h"
#include "SelectTermUnit.h"
#include "BossReportsUnit.h"
#include "LessonResultRepUnit.h"
#include "LessonsReportsUnit.h"
#include "EmailOptionsUnit.h"
#include "ConfigurationUnit.h"
#include "RadehBandyUnit.h"
#include "PrintTablesUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button1Click(TObject *Sender)
{
  FilteringForm->ShowModal();
  RadehBandyForm->ShowModal();
//ChooseLessonType->ShowModal();
//SelectTermForm->ShowModal();
//  LessonsReportsForm->Show();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button2Click(TObject *Sender)
{
/*  TLetterToTeacherRepA5 *bossRep1=new TLetterToTeacherRepA5(this);
  bossRep1->PreviewModal();
  delete bossRep1;
  */
  FilteringForm->isItFirstTime=true;
  FilteringForm->ShowModal();
  BossReportsForm->ShowModal();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button3Click(TObject *Sender)
{
  DM->TeachersFlat->Close();
  EmptyTeachersFlat->ExecSQL();
  InsertToTeachersFlat->ExecSQL();
  Label1->Caption=TimeToStr(Time());
  LessonsReportsForm->ShowModal();
/*  LessonResultRep->Query1->Close();
  LessonResultRep->Query1->ParamByName("teacherID")->AsInteger=StrToInt(Edit1->Text);
  LessonResultRep->Query1->Open();
  Label2->Caption=TimeToStr(Time());
  LessonResultRep->Preview();*/
}
//---------------------------------------------------------------------------

void __fastcall TForm1::FormShow(TObject *Sender)
{
  DM->Terms->Filtered=false;
  DM->Terms->Last();
  EmailOptionsForm->SetOptions();
 DM->UnitInfo->Open();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button4Click(TObject *Sender)
{
  EmailOptionsForm->Show();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button5Click(TObject *Sender)
{
  ConfigurationForm->ShowModal();
}
//---------------------------------------------------------------------------


void __fastcall TForm1::FormCreate(TObject *Sender)
{
  Session->AddPassword("amin313");
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button6Click(TObject *Sender)
{
  AnsiString temp="Ali\nHasan";
  Memo1->Lines->Add(temp);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button7Click(TObject *Sender)
{
  PrintTablesForm->Show();        
}
//---------------------------------------------------------------------------

