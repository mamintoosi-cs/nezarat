//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "DMUnit.h"
#include "ParentUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TDM *DM;
//---------------------------------------------------------------------------
__fastcall TDM::TDM(TComponent* Owner)
        : TDataModule(Owner)
{
/* LessonDegreeName[5]=//ãÞÇØÚ ÏÑÓí
        {
          "äÇãÔÎÕ",
          "ßÇÑÏÇäí",
          "ßÇÑÔäÇÓí",
          "ßÇÑÔäÇÓí ÇÑÔÏ",
          "ÏßÊÑí"
        };*/
}
//---------------------------------------------------------------------------
void __fastcall TDM::varQLTPostError(TDataSet *DataSet, EDatabaseError *E,
      TDataAction &Action)
{
/* if (E->ClassNameIs("EDBEngineError"))
  {
    EDBEngineError *pDBE = (EDBEngineError *)E;
    if (pDBE->Errors[pDBE->ErrorCount - 1]->ErrorCode == DBIERR_KEYVIOL)
//      UpdateAction = uaSkip; // Key violation, just skip this record
    {
      Action=daAbort;
//      Label1->Caption=E->Message;
//      Label1->Update();
    }
  }
// Abort();*/
}
//---------------------------------------------------------------------------

void __fastcall TDM::LessonsBeforePost(TDataSet *DataSet)
{
   Lessons->FieldByName("LessonName2")->AsString=
      ParentForm->addYe(Lessons->FieldByName("LessonName")->AsString);
}
//---------------------------------------------------------------------------
void __fastcall TDM::FacultiesBeforePost(TDataSet *DataSet)
{
   Faculties->FieldByName("FacultyName2")->AsString=
      ParentForm->addYe(Faculties->FieldByName("FacultyName")->AsString);
}
//---------------------------------------------------------------------------
void __fastcall TDM::GroupsBeforePost(TDataSet *DataSet)
{
   Groups->FieldByName("GroupName2")->AsString=
      ParentForm->addYe(Groups->FieldByName("GroupName")->AsString);

}
//---------------------------------------------------------------------------
void __fastcall TDM::TermsAfterScroll(TDataSet *DataSet)
{
//  TeachersNameQuery->Close();
  //TeachersNameQuery->Open();
//  recreateFlats();
}
//---------------------------------------------------------------------------
void TDM::recreateFlats(void)
{
 try
    {
        Screen->Cursor = crHourGlass;
        Flat1->Close();
//        Flat1->Exclusive = true;
  //      Flat1->EmptyTable();
    //    Flat1->Exclusive = false;
//        Flat1Query->ExecSQL();
        Flat1->Open();
        Screen->Cursor = crDefault;

    } catch(Exception &E) {
        Screen->Cursor = crDefault;
//        Flat1->Exclusive = false;
        Flat1->Open();
        MessageDlg(AnsiString("Unable to rebuild indexes. ") + E.Message,
             mtError, TMsgDlgButtons() << mbOK, 0);
    }
}
//---------------------------------------------------------------------------
void __fastcall TDM::DataModuleCreate(TObject *Sender)
{
   NoofQuestions=22;
   NoofColumns=5;
   LessonTypeID=1;
}
//---------------------------------------------------------------------------
void __fastcall TDM::QuestionsGroupsBeforeDelete(TDataSet *DataSet)
{
  Abort();
}
//---------------------------------------------------------------------------
void __fastcall TDM::LessonsAfterInsert(TDataSet *DataSet)
{
  MaxLessonIDQuery->Close();
  MaxLessonIDQuery->Open();
  Lessons->FieldByName("LessonID")->AsInteger=MaxLessonIDQuery->FieldByName("maxLessonID")->AsInteger+1;
}
//---------------------------------------------------------------------------


