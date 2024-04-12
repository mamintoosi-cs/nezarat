//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "LessonResultRepUnit.h"
#include "DMUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "ParentRepUnit"
#pragma resource "*.dfm"
TLessonResultRep *LessonResultRep;
//---------------------------------------------------------------------------
__fastcall TLessonResultRep::TLessonResultRep(TComponent* Owner)
        : TParentRep(Owner)
{
}
//---------------------------------------------------------------------------
/*
select T.TeacherID,T.FirstName,T.LastName,T.Title as TeacherTitle,
   G.GroupName as GroupName,J.JensName,
   Q.ID,L.LessonID,L.LessonName,LT.LessonTypeName,G2.GroupName as LessonGroupName,
   Q.Average,Q.Rotbeh,Q.TPasokh,R.*,Qu.*,QuG.QGroupName,R.Average as rowAvg
from Teachers T,varQLT Q,Lessons L,varTeachers VT,
   Groups G,Jens J,Groups G2,LessonsTypes LT,
   varResults R,varQuestions Qu,QuestionsGroups QuG
where T.TeacherID=Q.TeacherID and T.TeacherID=VT.TeacherID and
   VT.GroupID=G.GroupID and T.JensID=J.JensID and Q.GroupID=G2.GroupID
  and Q.LessonID=L.LessonID and  Q.TermID=:TermID and VT.TermID=:TermID
  and L.LessonTypeID=LT.LessonTypeID and R.ID=Q.ID and R.RowNo=Qu.RowNo
  AND Qu.QGroupNo=QuG.QGroupNo and varQuestions.TermID=:TermID
  and varQuestions.LessonTypeID=L.LessonTypeID
and (T.TeacherID=42 or T.TeacherID=169)

ORDER BY TeacherID,ID,Qu.QGroupNo,RowNo
*/
void __fastcall TLessonResultRep::QRGroup2AfterPrint(TQRCustomBand *Sender,
      bool BandPrinted)
{
  QRBandGFooter2->Enabled=Query1->FieldByName("QGroupNo")->AsInteger!=0;
}
//---------------------------------------------------------------------------

