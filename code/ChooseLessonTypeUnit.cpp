//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "ChooseLessonTypeUnit.h"
#include "DMUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "ParentUnit"
#pragma resource "*.dfm"
TChooseLessonType *ChooseLessonType;
//---------------------------------------------------------------------------
__fastcall TChooseLessonType::TChooseLessonType(TComponent* Owner)
        : TParentForm(Owner)
{
  isItFirstTime=true;
}
//---------------------------------------------------------------------------
void __fastcall TChooseLessonType::ReturnToMain()
{
/*  DM->LessonTypeID=RadioGroup1->ItemIndex+1;
  DM->varQuestions->Filtered=false;
  DM->varQuestions->Filter= "LessonTypeID="+IntToStr(DM->LessonTypeID);
  DM->varQuestions->Filtered=true;*/
/* TStrings  *SQLString=new TStringList;
 SQLString->AddStrings(InsertToTeachersFlat->SQL);
 InsertToTeachersFlat->Close();
 InsertToTeachersFlat->SQL->Add(" AND L.LessonTypeID="+IntToStr(NDRadioGroup->ItemIndex+1));
 */Label1->Caption=TimeToStr(Time());
 Label1->Update();
 DM->TeachersFlat->Close();
// DM->TeachersFlat->Exclusive=true;
 EmptyTeachersFlat->ExecSQL();
// DM->TeachersFlat->Exclusive=false;
 InsertToTeachersFlat->ExecSQL();
 DM->TeachersFlat->Open();
// DM->TeachersFlat->Refresh();
 Label1->Caption=DM->TeachersFlat->RecordCount;
 Label1->Update();
 Label2->Caption=TimeToStr(Time());
 Label2->Update();
 ProgressBar1->Max=DM->TeachersFlat->RecordCount*2;
 computeAverages();
// InsertToTeachersFlat->SQL->Clear();
// InsertToTeachersFlat->SQL->AddStrings(SQLString);
 Label3->Caption=TimeToStr(Time());
 Label3->Update();
// delete SQLString;
 isItFirstTime=false;
 ChooseLessonType->Close();
}
//---------------------------------------------------------------------------
void TChooseLessonType::sortTeachers(TeacherAvgAndCount A[],int n)
{
  int i,j;
  TeacherAvgAndCount temp;
  for(i=0;i<n-1;i++)
    for(j=i+1;j<n;j++)
     if(A[i].average < A[j].average)
     {
       temp=A[i];
       A[i]=A[j];
       A[j]=temp;
     }
}
//---------------------------------------------------------------------------
void TChooseLessonType::sortLessons(AvgAndID A[],int n)
{
  int i,j;
  AvgAndID temp;
  for(i=0;i<n-1;i++)
    for(j=i+1;j<n;j++)
     if(A[i].average < A[j].average)
     {
       temp=A[i];
       A[i]=A[j];
       A[j]=temp;
     }
}
//---------------------------------------------------------------------------
void TChooseLessonType::computeAverages(void)
{
  Screen->Cursor = crHourGlass;
  int i,teacherID,groupID,facultyID,noOfLessons;
  float lessonAverage;
  long ID,minID,maxID;

  MinIDQuery->Close();  MinIDQuery->Open();
  MaxIDQuery->Close();  MaxIDQuery->Open();
  maxID=StrToInt(MaxIDDBText->Caption);
  minID=StrToInt(MinIDDBText->Caption);
  noOfLessons=maxID-minID+1;//œ— ‘—«ÌÿÌ ﬂÂ œ—Ê”Ì Õ–› ‘œÂ »«‘‰œ €·ÿ «” 
  L=new AvgAndID[noOfLessons];
  L2=new AvgAndID[noOfLessons];
  for (i=0;i<noOfLessons ;i++) L[i].average=0;
  for (i=0;i<MaxValueofTeachersNo ;i++)
  {
     T[i].average=0;
     T[i].count=0;
     T[i].teacherID=i;
  }
  for (i=0;i<MaxValueofGroupsNo ;i++)
  {
     G[i].average=0;
     G[i].count=0;
     G[i].lastRotbeh=0;
  }
  for (i=0;i<MaxValueofFacultiesNo ;i++)
  {
     F[i].average=0;
     F[i].count=0;
     F[i].lastRotbeh=0;
  }
  U.average=0;
  U.count=0;
  U.lastRotbeh=0;
  DM->TeachersFlat->First();
  while(!DM->TeachersFlat->Eof)
  {
  //if(TeacherID > MaxValueofTeachersNo) Errrrrrrrror
    lessonAverage=DM->TeachersFlat->FieldByName("LessonAverage")->AsFloat;
    ID=DM->TeachersFlat->FieldByName("ID")->AsInteger;
    L[ID-minID].average =lessonAverage;
    L[ID-minID].ID=ID;
    teacherID=DM->TeachersFlat->FieldByName("TeacherID")->AsInteger;
    T[teacherID].average +=lessonAverage;
    T[teacherID].count++;
    groupID=DM->TeachersFlat->FieldByName("GroupID")->AsInteger;
    G[groupID].average +=lessonAverage;
    G[groupID].count++;
    facultyID=DM->TeachersFlat->FieldByName("FacultyID")->AsInteger;
    F[facultyID].average +=lessonAverage;
    F[facultyID].count++;

    T[teacherID].groupID=groupID;
    T[teacherID].facultyID=facultyID;
    U.average +=lessonAverage;
    U.count++;

    DM->TeachersFlat->Next();
    ProgressBar1->StepIt();
  }

  for (i=0;i<MaxValueofTeachersNo ;i++)
    if(T[i].count != 0) T[i].average /= T[i].count;
  for (i=0;i<MaxValueofGroupsNo ;i++)
    if(G[i].count != 0) G[i].average /= G[i].count;
  for (i=0;i<MaxValueofFacultiesNo ;i++)
    if(F[i].count != 0) F[i].average /= F[i].count;
  if(U.count != 0)U.average/=U.count;

  memcpy(L2,L,noOfLessons*sizeof(L[0]));
  sortLessons(L2, noOfLessons);
  for (i=0;i<noOfLessons ;i++)
  {
     if(L2[i].average==0) break;//debug
     L[L2[i].ID-minID].rotbeh=i+1;  //Access Violation 16-12-81
  }
  memcpy(T2,T,MaxValueofTeachersNo*sizeof(T[0]));
  sortTeachers(T2, MaxValueofTeachersNo);
  for (i=0;i<MaxValueofTeachersNo ;i++)
  {
     if(T2[i].average == 0) break;
     T2[i].rInGroup = ++G[T2[i].groupID].lastRotbeh;
     T2[i].rInFaculty = ++F[T2[i].facultyID].lastRotbeh;
     T2[i].rInUniversity = ++U.lastRotbeh;
     T[T2[i].teacherID]=T2[i];
  }


  DM->TeachersFlat->First();
  while(!DM->TeachersFlat->Eof)
  {
    DM->TeachersFlat->Edit();
    ID=DM->TeachersFlat->FieldByName("ID")->AsInteger;
    DM->TeachersFlat->FieldByName("intLessonRotbeh")->AsFloat=L[ID-minID].rotbeh;
    teacherID=DM->TeachersFlat->FieldByName("TeacherID")->AsInteger;
    DM->TeachersFlat->FieldByName("TeacherAverage")->AsFloat=T[teacherID].average;
    DM->TeachersFlat->FieldByName("RotbehInGroup")->AsFloat=T[teacherID].rInGroup;
    DM->TeachersFlat->FieldByName("RotbehInFaculty")->AsFloat=T[teacherID].rInFaculty;
    DM->TeachersFlat->FieldByName("RotbehInUniversity")->AsFloat=T[teacherID].rInUniversity;

    groupID=DM->TeachersFlat->FieldByName("GroupID")->AsInteger;
    DM->TeachersFlat->FieldByName("GroupAverage")->AsFloat=G[groupID].average;
    DM->TeachersFlat->FieldByName("LastRInGroup")->AsFloat=G[groupID].lastRotbeh;

    facultyID=DM->TeachersFlat->FieldByName("FacultyID")->AsInteger;
    DM->TeachersFlat->FieldByName("FacultyAverage")->AsFloat=F[facultyID].average;
    DM->TeachersFlat->FieldByName("LastRInFaculty")->AsFloat=F[facultyID].lastRotbeh;

    DM->TeachersFlat->FieldByName("UniversityAverage")->AsFloat=U.average;
    DM->TeachersFlat->FieldByName("LastRInUniversity")->AsFloat=U.lastRotbeh;

    DM->TeachersFlat->Next();
    ProgressBar1->StepIt();
  }
 delete []L;
 delete []L2;
 Screen->Cursor = crDefault;
}
/*/---------------------------------------------------------------------------
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
*///---------------------------------------------------------------------------

void __fastcall TChooseLessonType::FormShow(TObject *Sender)
{
  ProgressBar1->Position=0;
}
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------

