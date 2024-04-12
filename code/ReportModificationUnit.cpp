//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "ReportModificationUnit.h"
#include "DMUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "ParentUnit"
#pragma resource "*.dfm"
TReportModificationForm *ReportModificationForm;
//---------------------------------------------------------------------------
__fastcall TReportModificationForm::TReportModificationForm(TComponent* Owner)
        : TParentForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TReportModificationForm::FormShow(TObject *Sender)
{
//  QLT->Active=false;
//  QLT->Active=true;
  TeachersNameQuery->Close();
  TeachersNameQuery->Open();
  TeachersDBGrid->Visible=false;
  LvarQLT->Close();
  LvarQLT->Open();
}
//---------------------------------------------------------------------------


void __fastcall TReportModificationForm::ReturnToMainBitBtnClick(
      TObject *Sender)
{
  if(LvarQLT->State==dsEdit || LvarQLT->State==dsInsert)
     LvarQLT->Post();
  ReportModificationForm->Close();
}
//---------------------------------------------------------------------------


void __fastcall TReportModificationForm::DBNavigator1Click(TObject *Sender,
      TNavigateBtn Button)
{
  switch (Button)
  {
    case nbDelete: //
                break;
  }

}
//---------------------------------------------------------------------------

void __fastcall TReportModificationForm::LvarQLTAfterDelete(
      TDataSet *DataSet)
{
    DeleteFromResultsQuery->ExecSQL();
//    ShowMessage("From results deleted");
}
//---------------------------------------------------------------------------

void __fastcall TReportModificationForm::LvarQLTBeforeDelete(
      TDataSet *DataSet)
{
  DeleteFromResultsQuery->ParamByName("id")->AsInteger=LvarQLT->FieldByName("ID")->AsInteger;
}
//---------------------------------------------------------------------------


void __fastcall TReportModificationForm::TeachersDBGridKeyPress(TObject *Sender,
      char &Key)
{
  if(Key==VK_ESCAPE)
  {
   TeachersDBGrid->Visible=false;
   DBGrid1->SetFocus();
  }
  if(Key==VK_RETURN) TeachersDBGridDblClick(Sender);
  else
  {
    TLocateOptions Opts;
    AnsiString name="a";
    name[1]=Key;
    Opts.Clear();
    Opts << loPartialKey;
    TeachersNameQuery->Locate("LastName", name, Opts);
  }
}
//---------------------------------------------------------------------------

void __fastcall TReportModificationForm::TeachersDBGridDblClick(
      TObject *Sender)
{
  TLocateOptions Opts;
  Opts.Clear();
  Opts << loPartialKey;
  Variant locvalues[2];
  locvalues[0] = Variant(DM->Terms->FieldByName("TermID")->AsInteger);
  locvalues[1] = Variant(TeachersNameQuery->FieldByName("TeacherID")->AsInteger);
//  locvalues[2] = Variant(282);
//  locvalues[3] = Variant(0);
  LvarQLT->Locate("TermId;TeacherID", VarArrayOf(locvalues,1),Opts);
  TeachersDBGrid->Visible=false;
  DBGrid1->SetFocus();
}
//---------------------------------------------------------------------------
void __fastcall TReportModificationForm::DBGrid1KeyDown(TObject *Sender,
      WORD &Key, TShiftState Shift)
{
  if(Key==VK_F5) SearchButtonClick(Sender);
}
//---------------------------------------------------------------------------

void __fastcall TReportModificationForm::SearchButtonClick(TObject *Sender)
{
  if(LorTRadioGroup->ItemIndex==0)
  {
    TeachersDBGrid->Visible=true;
    TeachersDBGrid->SetFocus();
  }
  else
  {
    Panel1->Visible=true;
    Panel1->SetFocus();
  }
}
//---------------------------------------------------------------------------

void __fastcall TReportModificationForm::DBGrid1Enter(TObject *Sender)
{
  TeachersDBGrid->Visible=false;
  Panel1->Visible=false;
  MsgLabel->Visible=true;
}
//---------------------------------------------------------------------------

void __fastcall TReportModificationForm::DBGrid1Exit(TObject *Sender)
{
  MsgLabel->Visible=false;
}
//---------------------------------------------------------------------------

void __fastcall TReportModificationForm::LorTRadioGroupClick(
      TObject *Sender)
{
  if(LorTRadioGroup->ItemIndex==0)
  {
    LvarQLT->IndexName="TLindex";
    DBGrid1->Columns->Items[0]->Color=clLime;
    DBGrid1->Columns->Items[1]->Color=0x0000CC00;
    DBGrid1->Columns->Items[3]->Color=clWhite;
    DBGrid1->Columns->Items[4]->Color=clWhite;
  }
  else
  {
    LvarQLT->IndexName="Lindex";
    DBGrid1->Columns->Items[3]->Color=clLime;
    DBGrid1->Columns->Items[4]->Color=0x0000CC00;
    DBGrid1->Columns->Items[0]->Color=clWhite;
    DBGrid1->Columns->Items[1]->Color=clWhite;
  }
}
//---------------------------------------------------------------------------

void __fastcall TReportModificationForm::BitBtn1Click(TObject *Sender)
{
  TLocateOptions Opts;
  Opts.Clear();
  Opts << loPartialKey;
  Variant locvalues[2];
  locvalues[0] = Variant(DM->Terms->FieldByName("TermID")->AsInteger);
  locvalues[1] = Variant(StrToInt(Edit1->Text));
//  locvalues[2] = Variant(282);
//  locvalues[3] = Variant(0);
  LvarQLT->Locate("TermId;LessonID", VarArrayOf(locvalues,1),Opts);
  Panel1->Visible=false;
  DBGrid1->SetFocus();
}
//---------------------------------------------------------------------------

void __fastcall TReportModificationForm::MarkBtnClick(TObject *Sender)
{
  LvarQLT->First();
  int n=LvarQLT->RecordCount;
  int i,ID,tID,lID,tPasokh,gCode;
  float average;
  for(i=1;i<=n;i++)
  {
    ID=LvarQLT->FieldByName("ID")->AsInteger;
    tID=LvarQLT->FieldByName("TeacherID")->AsInteger;
    lID=LvarQLT->FieldByName("LessonID")->AsInteger;
    tPasokh=LvarQLT->FieldByName("TPasokh")->AsInteger;
    gCode=LvarQLT->FieldByName("groupCode")->AsInteger;
    average=LvarQLT->FieldByName("Average")->AsFloat;
    MarkQuery->Close();
    MarkQuery->ParamByName("ID")->AsInteger=ID;
    MarkQuery->ParamByName("tID")->AsInteger=tID;
    MarkQuery->ParamByName("LID")->AsInteger=lID;
    MarkQuery->ParamByName("tPasokh")->AsInteger=tPasokh;
    MarkQuery->ParamByName("gCode")->AsInteger=gCode;
    MarkQuery->ParamByName("average")->AsFloat=average;
    MarkQuery->ExecSQL();
    LvarQLT->Next();
//    if(i==3) break;
  }
  LvarQLT->Close();
  LvarQLT->Open();
}
//---------------------------------------------------------------------------

void __fastcall TReportModificationForm::DelFromResultBtnClick(
      TObject *Sender)
{
  LvarQLT->First();
  int n=LvarQLT->RecordCount;
  int i,ID;
  bool isDeleted;
  float average;
  for(i=1;i<=n;i++)
  {
    ID=LvarQLT->FieldByName("ID")->AsInteger;
    isDeleted=LvarQLT->FieldByName("isConsidered")->AsBoolean;
    if(isDeleted == false)
    {
      DeleteFromResultsQuery->Close();
      DeleteFromResultsQuery->ParamByName("ID")->AsInteger=ID;
      DeleteFromResultsQuery->ExecSQL();
    }
    LvarQLT->Next();
  }
}
//---------------------------------------------------------------------------

void __fastcall TReportModificationForm::DeleteFromVarQLTQueryBtnClick(TObject *Sender)
{
  DeleteFromVarQLTQuery->ExecSQL();
}
//---------------------------------------------------------------------------

