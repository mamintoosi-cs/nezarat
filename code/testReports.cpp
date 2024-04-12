//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
//---------------------------------------------------------------------------
USEFORM("testReportsUnit1.cpp", Form1);
USEFORM("DMUnit.cpp", DM); /* TDataModule: File Type */
USEFORM("ParentUnit.cpp", ParentForm);
USEFORM("ParentRepUnit.cpp", ParentRep); /* TQuickRep: File Type */
USEFORM("LessonResultRepUnit.cpp", LessonResultRep); /* TQuickRep: File Type */
USEFORM("LessonsReportsUnit.cpp", LessonsReportsForm);
USEFORM("LetterToTeacherRepUnit.cpp", LetterToTeacherRep); /* TQuickRep: File Type */
USEFORM("LetterToTeacherRepA5Unit.cpp", LetterToTeacherRepA5); /* TQuickRep: File Type */
USEFORM("ChooseLessonTypeUnit.cpp", ChooseLessonType);
USEFORM("EmailOptionsUnit.cpp", EmailOptionsForm);
USEFORM("ConfigurationUnit.cpp", ConfigurationForm);
USEFORM("BossParentRepUnit.cpp", BossParentRep); /* TQuickRep: File Type */
USEFORM("BossReportsUnit.cpp", BossReportsForm);
USEFORM("BossGroupRepUnit.cpp", BossGroupRep); /* TQuickRep: File Type */
USEFORM("BossRepUnit.cpp", BossRep); /* TQuickRep: File Type */
USEFORM("FilteringUnit.cpp", FilteringForm);
USEFORM("RadehBandyRepUnit.cpp", RadehBandyRep); /* TQuickRep: File Type */
USEFORM("RadehBandyUnit.cpp", RadehBandyForm);
USEFORM("ParentReportsUnit.cpp", ParentReportsForm);
USEFORM("PrintTablesUnit.cpp", PrintTablesForm);
USEFORM("GridRepUnit.cpp", QRGridRep); /* TQuickRep: File Type */
//---------------------------------------------------------------------------
WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
        try
        {
                 Application->Initialize();
                 Application->CreateForm(__classid(TForm1), &Form1);
                 Application->CreateForm(__classid(TDM), &DM);
                 Application->CreateForm(__classid(TChooseLessonType), &ChooseLessonType);
                 Application->CreateForm(__classid(TLessonsReportsForm), &LessonsReportsForm);
                 Application->CreateForm(__classid(TLessonResultRep), &LessonResultRep);
                 Application->CreateForm(__classid(TEmailOptionsForm), &EmailOptionsForm);
                 Application->CreateForm(__classid(TConfigurationForm), &ConfigurationForm);
                 Application->CreateForm(__classid(TBossReportsForm), &BossReportsForm);
                 Application->CreateForm(__classid(TBossGroupRep), &BossGroupRep);
                 Application->CreateForm(__classid(TFilteringForm), &FilteringForm);
                 Application->CreateForm(__classid(TRadehBandyRep), &RadehBandyRep);
                 Application->CreateForm(__classid(TRadehBandyForm), &RadehBandyForm);
                 Application->CreateForm(__classid(TParentReportsForm), &ParentReportsForm);
                 Application->CreateForm(__classid(TPrintTablesForm), &PrintTablesForm);
                 Application->CreateForm(__classid(TQRGridRep), &QRGridRep);
                 Application->Run();
        }
        catch (Exception &exception)
        {
                 Application->ShowException(&exception);
        }
        catch (...)
        {
                 try
                 {
                         throw Exception("");
                 }
                 catch (Exception &exception)
                 {
                         Application->ShowException(&exception);
                 }
        }
        return 0;
}
//---------------------------------------------------------------------------
