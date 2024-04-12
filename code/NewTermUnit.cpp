//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "NewTermUnit.h"
#include "DMUnit.h"
#include "MainUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TNewTermForm *NewTermForm;
AnsiString termName,modirName,modirTitle;
float LR1,UR1,LR2,UR2;
int CR1,CR2;
bool CUR1,CUR2;
short termID;
//---------------------------------------------------------------------------
__fastcall TNewTermForm::TNewTermForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TNewTermForm::FormShow(TObject *Sender)
{
  DM->Terms->Filtered=false;
  if(DM->Terms->RecordCount==0)
  {
    CopyBtn->Enabled=false;
    termID=1;
  }
  else
  {
  //current term must save
    CopyBtn->Enabled=true;
    DM->Terms->Last();
    termName=DM->Terms->FieldByName("TermName")->AsString;
    modirName=DM->Terms->FieldByName("ModirName")->AsString;
    modirTitle=DM->Terms->FieldByName("ModirTitle")->AsString;
    termID=DM->Terms->FieldByName("TermID")->AsInteger+1;
    LR1=DM->Terms->FieldByName("LR1")->AsFloat;
    UR1=DM->Terms->FieldByName("UR1")->AsFloat;
    LR2=DM->Terms->FieldByName("LR2")->AsFloat;
    UR2=DM->Terms->FieldByName("UR2")->AsFloat;
    CR1=DM->Terms->FieldByName("CR1")->AsInteger;
    CR2=DM->Terms->FieldByName("CR2")->AsInteger;
    CUR1=DM->Terms->FieldByName("CUR1")->AsBoolean;
    CUR2=DM->Terms->FieldByName("CUR2")->AsBoolean;
  }
  DM->Terms->Insert();
  DM->Terms->FieldByName("TermID")->AsInteger=termID;
}
//---------------------------------------------------------------------------
void __fastcall TNewTermForm::CopyBtnClick(TObject *Sender)
{
  DM->Terms->FieldByName("TermName")->AsString=termName;
  DM->Terms->FieldByName("ModirName")->AsString=modirName;
  DM->Terms->FieldByName("ModirTitle")->AsString=modirTitle;
  DM->Terms->FieldByName("LR1")->AsFloat=LR1;
  DM->Terms->FieldByName("UR1")->AsFloat=UR1;
  DM->Terms->FieldByName("LR2")->AsFloat=LR2;
  DM->Terms->FieldByName("UR2")->AsFloat=UR2;
  DM->Terms->FieldByName("CR1")->AsInteger=CR1;
  DM->Terms->FieldByName("CR2")->AsInteger=CR2;
  DM->Terms->FieldByName("CUR1")->AsBoolean=CUR1;
  DM->Terms->FieldByName("CUR2")->AsBoolean=CUR2;
}
//---------------------------------------------------------------------------
void __fastcall TNewTermForm::SabtBtnClick(TObject *Sender)
{
  int dlgMsg;
  dlgMsg=MessageDlg("ÏÑ ÕæÑÊ ËÈÊ ÊÑã ÌÏíÏ ÇãßÇä ÊÛííÑ ÇØáÇÚÇÊ ÊÑã ÌÇÑí ÑÇ äÎæÇåíÏ ÏÇÔÊ \n\t\t\tÊÑã ÌÏíÏ ËÈÊ ÔæÏ¿",
   mtConfirmation, TMsgDlgButtons() << mbYes<<mbCancel, 0);
  if(dlgMsg==mrCancel) return;
  DM->Terms->Post();
  dlgMsg=MessageDlg("ÌÏæá ãÑÈæØ Èå ÇØáÇÚÇÊ ŞÑÇÆÊ ÔÏå ÇÒ ÏÓÊÇå ÎÇáí äíÓÊ \n\t\t\tÌÏæá ÎÇáí ÔæÏ¿",
   mtConfirmation, TMsgDlgButtons() << mbYes<<mbNo<<mbCancel, 0);
  if(dlgMsg==mrCancel) return;
  if(dlgMsg==mrYes) DeleteFromOMRQuery->ExecSQL();
  if(termID != 1)
  {
    CopyVarTeachersQuery->Close();
    CopyVarTeachersQuery->ParamByName("termID")->AsInteger=termID-1;
    CopyVarTeachersQuery->Open();
    DM->varTeachers->BatchMove(CopyVarTeachersQuery,batAppend);
    CopyVarQuestionsQuery->Close();
    CopyVarQuestionsQuery->ParamByName("termID")->AsInteger=termID-1;
    CopyVarQuestionsQuery->Open();
    DM->varQuestions->BatchMove(CopyVarQuestionsQuery,batAppend);
  }
  NullReportStatusQuery->ExecSQL();
  bool isLastTerm=true;
  MainForm->MainMenu->Items->Items[0]->Enabled=isLastTerm;
  MainForm->MainMenu->Items->Items[3]->Enabled=isLastTerm;
  DM->Terms->Filter="TermID="+IntToStr(DM->Terms->FieldByName("TermID")->AsInteger);
  DM->Terms->Filtered=true;
  this->Close();
}
//---------------------------------------------------------------------------
void __fastcall TNewTermForm::CancelBtnClick(TObject *Sender)
{
  DM->Terms->Cancel();
  DM->Terms->Filtered=true;
  this->Close();
}
//---------------------------------------------------------------------------
