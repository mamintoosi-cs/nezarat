//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "LetterToTeacherRepUnit.h"
#include "ChooseLessonTypeUnit.h"
#include "LessonsReportsUnit.h"
#include "DMUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "ParentRepUnit"
#pragma resource "*.dfm"
TLetterToTeacherRep *LetterToTeacherRep;
//---------------------------------------------------------------------------
__fastcall TLetterToTeacherRep::TLetterToTeacherRep(TComponent* Owner)
        : TParentRep(Owner)
{
  Initialize();
}
//---------------------------------------------------------------------------
__fastcall TLetterToTeacherRep::Initialize()
{
  NDLabel->Caption="ÏÑæÓ "+ChooseLessonType->NDRadioGroup->Items->Strings[ChooseLessonType->NDRadioGroup->ItemIndex];
  TeachersFlat->Refresh();
  ZemnanQRExpr->Expression=IntToStr(TeachersFlat->RecordCount);
  NoteQRMemo->Lines=LessonsReportsForm->NoteMemo->Lines;
  if(NoteQRMemo->Lines->Count!=0)
    NoteQRMemo->Enabled=true;
  else NoteQRMemo->Enabled=false;
  DM->ChartDecisionQuery->Close();
  DM->ChartDecisionQuery->ParamByName("TeacherID")->AsInteger=DM->Alaki->FieldByName("Short3")->AsInteger;
  DM->ChartDecisionQuery->Open();
  QRChart1->Enabled=DM->ChartDecisionQuery->RecordCount>1;
//  for (int t=0;t<=LessonsReportsForm->DBChart1->SeriesCount()-1;t++)
  //   CloneChartSeries(LessonsReportsForm->DBChart1->Series[t])->ParentChart=QRChart1->Chart;
}
//---------------------------------------------------------------------------
void __fastcall TLetterToTeacherRep::FirstPageHeaderBandBeforePrint(
      TQRCustomBand *Sender, bool &PrintBand)
{
  CountExpr->Reset();
  Initialize();
}
//---------------------------------------------------------------------------
void __fastcall TLetterToTeacherRep::DetailBandBeforePrint(
      TQRCustomBand *Sender, bool &PrintBand)
{
  BandColor(DetailBand,TeachersFlat->FieldByName("LessonAverage")->AsFloat);
}
//---------------------------------------------------------------------------

