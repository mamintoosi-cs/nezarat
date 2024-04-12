//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
USEFORM("DMUnit.cpp", DM); /* TDataModule: File Type */
USEFORM("ParentUnit.cpp", ParentForm);
USEFORM("FacultiesUnit.cpp", FacultiesForm);
USEFORM("GroupsUnit.cpp", GroupsForm);
USEFORM("LessonsUnit.cpp", LessonsForm);
USEFORM("MainUnit.cpp", MainForm);
USEFORM("TeachersUnit.cpp", TeachersForm);
USEFORM("BossReportsSavabeghUnit.cpp", BossReportsSavabeghForm);
USEFORM("RadehBandyUnit.cpp", RadehBandyForm);
USEFORM("NewTeacherUnit.cpp", NewTeacherForm);
USEFORM("ChooseLessonTypeUnit.cpp", ChooseLessonType);
USEFORM("ReadOMRUnit.cpp", ReadFromOMR);
USEFORM("ReportModificationUnit.cpp", ReportModificationForm);
USEFORM("NewTermUnit.cpp", NewTermForm);
USEFORM("SelectTermUnit.cpp", SelectTermForm);
USEFORM("ManualReadUnit.cpp", ManualReadForm);
USEFORM("PreManualReadUnit.cpp", PreManualReadForm);
USEFORM("ParentRepUnit.cpp", ParentRep); /* TQuickRep: File Type */
USEFORM("BossParentRepUnit.cpp", BossParentRep); /* TQuickRep: File Type */
USEFORM("BossGroupRepUnit.cpp", BossGroupRep); /* TQuickRep: File Type */
USEFORM("BossRepUnit.cpp", BossRep); /* TQuickRep: File Type */
USEFORM("LessonsReportsUnit.cpp", LessonsReportsForm);
USEFORM("LetterToTeacherRepUnit.cpp", LetterToTeacherRep); /* TQuickRep: File Type */
USEFORM("RadehBandyRepUnit.cpp", RadehBandyRep); /* TQuickRep: File Type */
USEFORM("LetterToTeacherRepA5Unit.cpp", LetterToTeacherRepA5); /* TQuickRep: File Type */
USEFORM("QuestionsModificationUnit.cpp", QuestionsModificationForm);
USEFORM("ColumnLessonsListRepUnit.cpp", ColumnLessonsListRep); /* TQuickRep: File Type */
USEFORM("ColumnTeachersListRepUnit.cpp", ColumnTeachersListRep); /* TQuickRep: File Type */
USEFORM("about.cpp", AboutBox);
USEFORM("FilteringUnit.cpp", FilteringForm);
USEFORM("LessonResultRepUnit.cpp", LessonResultRep); /* TQuickRep: File Type */
USEFORM("ConfigurationUnit.cpp", ConfigurationForm);
USEFORM("EmailOptionsUnit.cpp", EmailOptionsForm);
USEFORM("QuickTeachersModificationUnit.cpp", QuickTeachersModificationForm);
USEFORM("ParentReportsUnit.cpp", ParentReportsForm);
USEFORM("PrintTablesUnit.cpp", PrintTablesForm);
USEFORM("GridRepUnit.cpp", QRGridRep); /* TQuickRep: File Type */
USEFORM("HistoryRepUnit.cpp", HistoryRep); /* TQuickRep: File Type */
USEFORM("BossReportsUnit.cpp", BossReportsForm);
USEFORM("QuestionsRadehBandyRepUnit.cpp", QuestionsRadehBandyRep); /* TQuickRep: File Type */
USEFORM("QuestionsRadehBandyUnit.cpp", QuestionsRadehBandyForm);
//---------------------------------------------------------------------------
WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
        try
        {
                 Application->Initialize();
                 Application->CreateForm(__classid(TDM), &DM);
                 Application->CreateForm(__classid(TMainForm), &MainForm);
                 Application->CreateForm(__classid(TFilteringForm), &FilteringForm);
                 Application->CreateForm(__classid(TChooseLessonType), &ChooseLessonType);
                 Application->CreateForm(__classid(TNewTeacherForm), &NewTeacherForm);
                 Application->CreateForm(__classid(TNewTermForm), &NewTermForm);
                 Application->CreateForm(__classid(TSelectTermForm), &SelectTermForm);
                 Application->CreateForm(__classid(TManualReadForm), &ManualReadForm);
                 Application->CreateForm(__classid(TFacultiesForm), &FacultiesForm);
                 Application->CreateForm(__classid(TGroupsForm), &GroupsForm);
                 Application->CreateForm(__classid(TLessonsForm), &LessonsForm);
                 Application->CreateForm(__classid(TTeachersForm), &TeachersForm);
                 Application->CreateForm(__classid(TLessonsReportsForm), &LessonsReportsForm);
                 Application->CreateForm(__classid(TQuestionsModificationForm), &QuestionsModificationForm);
                 Application->CreateForm(__classid(TAboutBox), &AboutBox);
                 Application->CreateForm(__classid(TConfigurationForm), &ConfigurationForm);
                 Application->CreateForm(__classid(TEmailOptionsForm), &EmailOptionsForm);
                 Application->CreateForm(__classid(TQuickTeachersModificationForm), &QuickTeachersModificationForm);
                 Application->CreateForm(__classid(TParentReportsForm), &ParentReportsForm);
                 Application->Run();
        }
        catch (Exception &exception)
        {
                 Application->ShowException(&exception);
        }
        return 0;
}
//---------------------------------------------------------------------------
