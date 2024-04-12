//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "FilteringUnit.h"
//#include "DMUnit.H"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "ParentUnit"
#pragma resource "*.dfm"
TFilteringForm *FilteringForm;
//---------------------------------------------------------------------------
__fastcall TFilteringForm::TFilteringForm(TComponent* Owner)
        : TParentForm(Owner)
{
  isItFirstTime=true;
}
//---------------------------------------------------------------------------
void __fastcall TFilteringForm::ReturnToMainBitBtnClick(TObject *Sender)
{
// DM->Flat1->Filtered=false;
 DM->FilterString="";
 switch(VERadioGroup->ItemIndex)
 {
   case 1:
         DM->FilterString="H.HamkariID>=2";
         break;
   case 2:
         DM->FilterString="H.HamkariID=1";
         break;
  }
 switch(NDRadioGroup->ItemIndex)
 {
   case 1:
   case 2:
   case 3:
   case 4:
     if (DM->FilterString.Length()>0) DM->FilterString+=" AND ";
     DM->FilterString+=" L.LessonTypeID="+IntToStr(NDRadioGroup->ItemIndex);
  }
 switch(MDRadioGroup->ItemIndex)
 {
   case 1:
   case 2:
   case 3:
   case 4:
     if (DM->FilterString.Length()>0) DM->FilterString+=" AND ";
     DM->FilterString+=" L.LessonDegreeID="+IntToStr(MDRadioGroup->ItemIndex);
 }
 TStrings  *SQLString=new TStringList;
 SQLString->AddStrings(InsertToFlat1Query->SQL);
 InsertToFlat1Query->Close();
 if (DM->FilterString.Length()>0)
 {
    InsertToFlat1Query->SQL->Add(" AND ");
    InsertToFlat1Query->SQL->Add(DM->FilterString);
 }
 Label1->Caption=TimeToStr(Time());
 Label1->Update();
 DM->Flat1->Close();
 EmptyFlat1Query->ExecSQL();
 InsertToFlat1Query->ExecSQL();
 DM->Flat1->Open();
 MsgLabel->Caption=DM->Flat1->RecordCount;
 Label1->Caption=DM->Flat1->RecordCount;
 Label2->Caption=TimeToStr(Time());
 Label2->Update();
 computeAverages();
 InsertToFlat1Query->SQL->Clear();
 InsertToFlat1Query->SQL->AddStrings(SQLString);
 Label3->Caption=TimeToStr(Time());
 Label3->Update();
// Memo1->Lines->Clear();
// Memo1->Lines->AddStrings(SQLString);
 delete SQLString;
 isItFirstTime=false;
// Label2->Caption=DM->Terms->Filter;
}
//---------------------------------------------------------------------------
void TFilteringForm::computeAverages(void)
{
  Screen->Cursor = crHourGlass;
  int i,teacherID,groupID,facultyID;
  float lessonAverage;
  for (i=0;i<MaxValueofTeachersNo ;i++)
  {
     T[i].average=0;
     T[i].count=0;
  }
  for (i=0;i<MaxValueofGroupsNo ;i++)
  {
     G[i].average=0;
     G[i].count=0;
  }
  for (i=0;i<MaxValueofFacultiesNo ;i++)
  {
     F[i].average=0;
     F[i].count=0;
  }
  univAvg=0;
  DM->Flat1->First();
  while(!DM->Flat1->Eof)
  {
  //if(TeacherID > MaxValueofTeachersNo) Errrrrrrrror
    lessonAverage=DM->Flat1->FieldByName("LessonAverage")->AsFloat;
    teacherID=DM->Flat1->FieldByName("TeacherID")->AsInteger;
    T[teacherID].average +=lessonAverage;
    T[teacherID].count++;
    groupID=DM->Flat1->FieldByName("GroupID")->AsInteger;
    G[groupID].average +=lessonAverage;
    G[groupID].count++;
    facultyID=DM->Flat1->FieldByName("FacultyID")->AsInteger;
    F[facultyID].average +=lessonAverage;
    F[facultyID].count++;
    univAvg +=lessonAverage;

    DM->Flat1->Next();
  }

  for (i=0;i<MaxValueofTeachersNo ;i++)
    if(T[i].count != 0) T[i].average /= T[i].count;
  for (i=0;i<MaxValueofGroupsNo ;i++)
    if(G[i].count != 0) G[i].average /= G[i].count;
  for (i=0;i<MaxValueofFacultiesNo ;i++)
    if(F[i].count != 0) F[i].average /= F[i].count;
  if(DM->Flat1->RecordCount) univAvg/=DM->Flat1->RecordCount;

  DM->Flat1->First();
  while(!DM->Flat1->Eof)
  {
    DM->Flat1->Edit();
    DM->Flat1->FieldByName("TeacherAverage")->AsFloat=T[DM->Flat1->FieldByName("TeacherID")->AsInteger].average;
    DM->Flat1->FieldByName("GroupAverage")->AsFloat=G[DM->Flat1->FieldByName("GroupID")->AsInteger].average;
    DM->Flat1->FieldByName("FacultyAverage")->AsFloat=F[DM->Flat1->FieldByName("FacultyID")->AsInteger].average;
    lessonAverage=DM->Flat1->FieldByName("LessonAverage")->AsFloat;
    //Ïæ ÎØ ÒíÑ ÈÇíÏ ÇÕáÇÍ ÔæäÏ
    DM->Flat1->FieldByName("IsLessonInRange")->AsInteger= (lessonAverage>=15.37 && lessonAverage<=16)?1:0;
    DM->Flat1->FieldByName("IsLessonUnderRange")->AsInteger= (lessonAverage<15.37)?1:0;
    DM->Flat1->Next();
  }
 Screen->Cursor = crDefault;
}
//---------------------------------------------------------------------------


void __fastcall TFilteringForm::CancelBitBtnClick(TObject *Sender)
{
  VERadioGroup->ItemIndex=radiosStatus[0];
  NDRadioGroup->ItemIndex=radiosStatus[1];
  MDRadioGroup->ItemIndex=radiosStatus[2];
  if(isItFirstTime)
  {
   isItFirstTime=false;
   ReturnToMainBitBtnClick(Sender);
  }
}
//---------------------------------------------------------------------------

void __fastcall TFilteringForm::FormShow(TObject *Sender)
{
  radiosStatus[0]=VERadioGroup->ItemIndex;
  radiosStatus[1]=NDRadioGroup->ItemIndex;
  radiosStatus[2]=MDRadioGroup->ItemIndex;
//  Label1->Caption=DM->Terms->Filter;
}
//---------------------------------------------------------------------------

