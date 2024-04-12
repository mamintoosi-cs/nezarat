//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "MainUnit.h"
#include "DMUnit.h"
#include "FacultiesUnit.h"
#include "TeachersUnit.h"
#include "NewTeacherUnit.h"
#include "LessonsUnit.h"
#include "GroupsUnit.h"
#include "BossReportsUnit.h"
#include "RadehBandyUnit.h"
#include "ChooseLessonTypeUnit.h"
#include "PreManualReadUnit.h"
#include "ReadOMRUnit.h"
#include "ReportModificationUnit.h"
#include "NewTermUnit.h"
#include "SelectTermUnit.h"
#include "LessonsReportsUnit.h"
#include "QuestionsModificationUnit.h"
#include "ColumnLessonsListRepUnit.h"
#include "ColumnTeachersListRepUnit.h"
#include "about.h"
#include "FilteringUnit.h"
#include "ConfigurationUnit.h"
#include "EmailOptionsUnit.h"
#include "QuickTeachersModificationUnit.h"
#include "PrintTablesUnit.h"
#include "BossReportsSavabeghUnit.h"
#include "QuestionsRadehBandyUnit.h"
/*#include "QuestionsUnit.h"
#include "QRUnit1.h"
#include "UnivRepUnit.h"
#include "ManualReadUnit.h"
#include "GroupRepunt.h"
*/
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TMainForm *MainForm;
//---------------------------------------------------------------------------
__fastcall TMainForm::TMainForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::ExitClick(TObject *Sender)
{
 Application->Terminate();
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::FormActivate(TObject *Sender)
{
//  Application->UseRightToLeftReading();
//  Application->BiDiMode=bdRightToLeft;
  Application->BiDiKeyboard="00000429";
  DM->Terms->Filtered=false;
  DM->Terms->Last();
  DM->Terms->Filter="TermID="+IntToStr(DM->Terms->FieldByName("TermID")->AsInteger);
  DM->Terms->Filtered=true;
  DateLabel->Caption=CurFarsiDate();
  EmailOptionsForm->SetOptions();
  DM->UnitInfo->Open();
}
//---------------------------------------------------------------------------


void __fastcall TMainForm::FacultiesInfoClick(TObject *Sender)
{
  FacultiesForm->ShowModal();
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::QuestionsClick(TObject *Sender)
{
  QuestionsModificationForm->ShowModal();
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::OMR1Click(TObject *Sender)
{
  ReadFromOMR=new TReadFromOMR(this);
  ReadFromOMR->ShowModal();
  delete ReadFromOMR;
//  ReadFromOMR->Visible=true;
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::ManualReadClick(TObject *Sender)
{
//  ChooseLessonType->ShowModal();
  PreManualReadForm =new TPreManualReadForm(this);
  ReadFromOMR=new TReadFromOMR(this);
  PreManualReadForm->ShowModal();
  delete ReadFromOMR;
  delete PreManualReadForm;
//  ManualReadForm->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::LessonsInfoClick(TObject *Sender)
{
   LessonsForm->ShowModal();
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::ReportsForTeachersClick(TObject *Sender)
{
  LessonsReportsForm->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::ReadedModificationClick(TObject *Sender)
{
  ReportModificationForm=new TReportModificationForm(this);
  ReportModificationForm->ShowModal();
  delete ReportModificationForm;
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::GroupsInfoClick(TObject *Sender)
{
  GroupsForm->ShowModal();
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::Button1Click(TObject *Sender)
{
  MainMenu->Items->Find("ËÈÊ äÙÑÎæÇåí ÏÇäÔÌæíÇä")->Enabled=false;
  MainMenu->BiDiMode=bdRightToLeft;
//  if(MainMenu->Items->Find("ÇØáÇÚÇÊ ÇÓÇÊíÏ"))     MainMenu->Items->Find("ÇØáÇÚÇÊ ÇÓÇÊíÏ")->Enabled=false;
  if(MainMenu->Items->Items[0]->Find("ÇØáÇÚÇÊ ÇÓÇÊíÏ"))
     MainMenu->Items->Items[0]->Find("ÇØáÇÚÇÊ ÇÓÇÊíÏ")->Enabled=false;
//  table->Open();
/* try {
        table->Close();
        table->Exclusive = true;
        table->Open();
        Screen->Cursor = crHourGlass;
        DbiRegenIndexes(table->Handle);
        Screen->Cursor = crDefault;
        table->Close();
        table->Exclusive = false;
        table->Open();

    } catch(Exception &E) {
        Screen->Cursor = crDefault;
        table->Exclusive = false;
        table->Open();
        MessageDlg(AnsiString("Unable to rebuild indexes. ") + E.Message,
             mtError, TMsgDlgButtons() << mbOK, 0);
    }*/
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::ReportsForBossClick(TObject *Sender)
{
  FilteringForm->isItFirstTime=true;
  FilteringForm->ShowModal();
  BossReportsForm=new TBossReportsForm(this);
  BossReportsForm->ShowModal();
  delete BossReportsForm;
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::RadehBandyClick(TObject *Sender)
{
  FilteringForm->isItFirstTime=true;
  FilteringForm->ShowModal();
  RadehBandyForm=new  TRadehBandyForm(this);
  RadehBandyForm->ShowModal();
  delete RadehBandyForm;
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::TeachersModificationClick(TObject *Sender)
{
  TeachersForm->ShowModal();
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::NewTeacherClick(TObject *Sender)
{
  NewTeacherForm->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::SelectActiveTermClick(TObject *Sender)
{
  SelectTermForm->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::NewTermClick(TObject *Sender)
{
  NewTermForm->ShowModal();
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::CodeColumnLessonListClick(TObject *Sender)
{
  TColumnLessonsListRep *listRep;
  listRep=new TColumnLessonsListRep(this);
  listRep->Query->Close();
  listRep->Query->SQL->Clear();
  listRep->Query->SQL->Add("select L.LessonID,L.LessonName,L.LessonName2,LT.LessonTypeName");
  listRep->Query->SQL->Add("from Lessons L,LessonsTypes LT");
  listRep->Query->SQL->Add("where L.LessonTypeID=LT.LessonTypeID");
  listRep->Query->SQL->Add("order by L.LessonID");
  listRep->Query->Open();
  listRep->TitleLabel->Caption="áíÓÊ ÏÑæÓ ÏÇäÔÇå ÊÑÈíÊ ãÚáã ÓÈÒæÇÑ ÈÑ ÇÓÇÓ ßÏ ÏÑÓ";
  listRep->PreviewModal();
  delete listRep;
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::NameColumnLessonsListClick(TObject *Sender)
{
  TColumnLessonsListRep *listRep;
  listRep=new TColumnLessonsListRep(this);
  listRep->PreviewModal();
  delete listRep;
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::AboutClick(TObject *Sender)
{
  AboutBox->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::FormCreate(TObject *Sender)
{
  bool expired;
// Application->BiDiKeyboard="00000401";
 Session->AddPassword("amin313");
 DM->UnitInfo->Open();
/* expired=DM->UnitInfo->FieldByName("Expired")->AsBoolean
         || CurFarsiDate() >="1384/02/29"
         || CurFarsiDate() <="1383/09/01";
 if(expired)
 {
   DM->UnitInfo->Edit();
   DM->UnitInfo->FieldByName("Expired")->AsBoolean=true;
   DM->UnitInfo->Post();
   DM->UnitInfo->Close();
   Session->RemoveAllPasswords();
   ShowMessage("ÎØÇí 50201! ãÏíÑ ÓíÓÊã ÑÇ ãØáÚ ßäíÏ");
   Application->Terminate();
 }*/
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::ConfigClick(TObject *Sender)
{
  ConfigurationForm->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::EmailOptionsClick(TObject *Sender)
{
  EmailOptionsForm->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::N2Click(TObject *Sender)
{
  QuickTeachersModificationForm->ShowModal();
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::DetailTeachersListClick(TObject *Sender)
{
  TPrintTablesForm *Form;
  Form=new TPrintTablesForm(this);
  Form->ShowModal();
  delete Form;
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::ReportsForBossSavebeghClick(TObject *Sender)
{
  BossReportsSavabeghForm=new TBossReportsSavabeghForm(this);
  BossReportsSavabeghForm->ShowModal();
  delete BossReportsSavabeghForm;
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::N3Click(TObject *Sender)
{
  QuestionsRadehBandyForm=new TQuestionsRadehBandyForm(this);
  QuestionsRadehBandyForm->ShowModal();
  delete QuestionsRadehBandyForm;
}
//---------------------------------------------------------------------------

