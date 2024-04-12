//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "SelectTermUnit.h"
#include "DMUnit.h"
#include "MainUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TSelectTermForm *SelectTermForm;
//---------------------------------------------------------------------------
__fastcall TSelectTermForm::TSelectTermForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TSelectTermForm::DBGrid1DblClick(TObject *Sender)
{
//  MainForm->MainMenu->Items->Find("ËÈÊ äÙÑÎæÇåí ÏÇäÔÌæíÇä")->Enabled=isCurrentTerm;
  bool isLastTerm;
  isLastTerm= !(DM->Terms->RecNo < DM->Terms->RecordCount-1);
  MainForm->MainMenu->Items->Items[0]->Enabled=isLastTerm;
//  MainForm->MainMenu->Items->Items[2]->Items[2]->Enabled=isLastTerm;
//  MainForm->MainMenu->Items->Items[2]->Items[3]->Enabled=isLastTerm;
  MainForm->MainMenu->Items->Items[3]->Enabled=isLastTerm;
  DM->Terms->Filter="TermID="+IntToStr(DM->Terms->FieldByName("TermID")->AsInteger);
  DM->Terms->Filtered=true;
  SelectTermForm->Close();
}
//---------------------------------------------------------------------------
void __fastcall TSelectTermForm::DBGrid1KeyUp(TObject *Sender, WORD &Key,
      TShiftState Shift)
{
//  if (Key == VK_RETURN) SelectTermForm->Close();
}
//---------------------------------------------------------------------------
void __fastcall TSelectTermForm::FormShow(TObject *Sender)
{
  DM->Terms->Filtered=false;
  DM->Terms->Last();
}
//---------------------------------------------------------------------------



