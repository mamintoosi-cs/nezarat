//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "QuestionsModificationUnit.h"
#include "DMUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "ParentUnit"
#pragma resource "*.dfm"
TQuestionsModificationForm *QuestionsModificationForm;
//---------------------------------------------------------------------------
__fastcall TQuestionsModificationForm::TQuestionsModificationForm(TComponent* Owner)
        : TParentForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TQuestionsModificationForm::NDRadioGroupClick(
      TObject *Sender)
{
  varQuestions->Filter="LessonTypeID="+IntToStr(NDRadioGroup->ItemIndex+1);
}
//---------------------------------------------------------------------------

void __fastcall TQuestionsModificationForm::BitBtn1Click(TObject *Sender)
{
  QGroupNamesDBGrid->Visible=true;
}
//---------------------------------------------------------------------------

void __fastcall TQuestionsModificationForm::QGroupNamesDBGridKeyPress(
      TObject *Sender, char &Key)
{
  if(Key==VK_ESCAPE)
  {
    QGroupNamesDBGrid->Visible=false;
    QsDBGrid->SetFocus();
  }
}
//---------------------------------------------------------------------------

void __fastcall TQuestionsModificationForm::QsDBGridEnter(TObject *Sender)
{
    QGroupNamesDBGrid->Visible=false;
}
//---------------------------------------------------------------------------


void __fastcall TQuestionsModificationForm::varQuestionsAfterInsert(
      TDataSet *DataSet)
{
  varQuestions->FieldByName("TermID")->AsInteger=DM->Terms->FieldByName("TermID")->AsInteger;
  varQuestions->FieldByName("LessonTypeID")->AsInteger=NDRadioGroup->ItemIndex+1;
}
//---------------------------------------------------------------------------

void __fastcall TQuestionsModificationForm::FormShow(TObject *Sender)
{
  varQuestions->Filter="LessonTypeID="+IntToStr(NDRadioGroup->ItemIndex+1);
  varQuestions->Close();
  varQuestions->Open();
}
//---------------------------------------------------------------------------

