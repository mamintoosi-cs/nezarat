//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

//---------------------------------------------------------------------------
USEFORM("ParentUnit.cpp", ParentForm);
USEFORM("DMUnit.cpp", DM); /* TDataModule: File Type */
USEFORM("ParentRepUnit.cpp", ParentRep); /* TQuickRep: File Type */
USEFORM("LetterToTeacherRepUnit.cpp", LetterToTeacherRep); /* TQuickRep: File Type */
USEFORM("ParentReportsUnit.cpp", ParentReportsForm);
USEFORM("ChooseLessonTypeUnit.cpp", ChooseLessonType);
USEFORM("LetterToTeacherRepA5Unit.cpp", LetterToTeacherRepA5); /* TQuickRep: File Type */
USEFORM("QuestionsRadehBandyRepUnit.cpp", QuestionsRadehBandyRep); /* TQuickRep: File Type */
USEFORM("QuestionsRadehBandyUnit.cpp", QuestionsRadehBandyForm);
USEFORM("ConfigurationUnit.cpp", ConfigurationForm);
USEFORM("EmailOptionsUnit.cpp", EmailOptionsForm);
USEFORM("QuestionsModificationUnit.cpp", QuestionsModificationForm);
USEFORM("BossParentRepUnit.cpp", BossParentRep); /* TQuickRep: File Type */
//---------------------------------------------------------------------------
WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
        try
        {
                 Application->Initialize();
                 Application->CreateForm(__classid(TQuestionsRadehBandyForm), &QuestionsRadehBandyForm);
                 Application->CreateForm(__classid(TChooseLessonType), &ChooseLessonType);
                 Application->CreateForm(__classid(TDM), &DM);
                 Application->CreateForm(__classid(TQuestionsRadehBandyRep), &QuestionsRadehBandyRep);
                 Application->CreateForm(__classid(TConfigurationForm), &ConfigurationForm);
                 Application->CreateForm(__classid(TEmailOptionsForm), &EmailOptionsForm);
                 Application->CreateForm(__classid(TQuestionsModificationForm), &QuestionsModificationForm);
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
