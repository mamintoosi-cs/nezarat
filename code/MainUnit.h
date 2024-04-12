//---------------------------------------------------------------------------

#ifndef MainUnitH
#define MainUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <Menus.hpp>
#include <ExtCtrls.hpp>
#include <Graphics.hpp>
#include <Db.hpp>
#include <DBGrids.hpp>
#include <DBTables.hpp>
#include <Grids.hpp>
#include <DBCtrls.hpp>
#include <DBCGrids.hpp>
#include <DB.hpp>
//---------------------------------------------------------------------------
class TMainForm : public TForm
{
__published:	// IDE-managed Components
        TMainMenu *MainMenu;
        TMenuItem *DataEntry;
        TMenuItem *Reports;
        TMenuItem *Exit;
        TMenuItem *TeachersInfo;
        TMenuItem *Questions;
        TMenuItem *GroupsInfo;
        TMenuItem *FacultiesInfo;
        TMenuItem *LessonsInfo;
        TMenuItem *OMR1;
        TMenuItem *ManualRead;
        TImage *Image1;
        TLabel *Label1;
        TMenuItem *ReportsForTeachers;
        TMenuItem *ReadedModification;
        TButton *Button1;
        TTable *table;
        TDataSource *DataSource1;
        TMenuItem *ReportsForBoss;
        TMenuItem *RadehBandy;
        TMenuItem *TeachersModification;
        TMenuItem *NewTeacher;
        TMenuItem *NazarReading;
        TMenuItem *Facilities;
        TMenuItem *SelectActiveTerm;
        TMenuItem *NewTerm;
        TMenuItem *N1;
        TMenuItem *CodeColumnLessonList;
        TMenuItem *NameColumnLessonsList;
        TDBText *DBText1;
        TMenuItem *About;
        TLabel *DateLabel;
        TMenuItem *Config;
        TMenuItem *EmailOptions;
        TMenuItem *N2;
        TMenuItem *DetailTeachersList;
        TMenuItem *ReportsForBossSavebegh;
        TMenuItem *N3;
        void __fastcall ExitClick(TObject *Sender);
        void __fastcall FormActivate(TObject *Sender);
        void __fastcall FacultiesInfoClick(TObject *Sender);
        void __fastcall QuestionsClick(TObject *Sender);
        void __fastcall OMR1Click(TObject *Sender);
        void __fastcall ManualReadClick(TObject *Sender);
        void __fastcall LessonsInfoClick(TObject *Sender);
        void __fastcall ReportsForTeachersClick(TObject *Sender);
        void __fastcall ReadedModificationClick(TObject *Sender);
        void __fastcall GroupsInfoClick(TObject *Sender);
        void __fastcall Button1Click(TObject *Sender);
        void __fastcall ReportsForBossClick(TObject *Sender);
        void __fastcall RadehBandyClick(TObject *Sender);
        void __fastcall TeachersModificationClick(TObject *Sender);
        void __fastcall NewTeacherClick(TObject *Sender);
        void __fastcall SelectActiveTermClick(TObject *Sender);
        void __fastcall NewTermClick(TObject *Sender);
        void __fastcall CodeColumnLessonListClick(TObject *Sender);
        void __fastcall NameColumnLessonsListClick(TObject *Sender);
        void __fastcall AboutClick(TObject *Sender);
        void __fastcall FormCreate(TObject *Sender);
        void __fastcall ConfigClick(TObject *Sender);
        void __fastcall EmailOptionsClick(TObject *Sender);
        void __fastcall N2Click(TObject *Sender);
        void __fastcall DetailTeachersListClick(TObject *Sender);
        void __fastcall ReportsForBossSavebeghClick(TObject *Sender);
        void __fastcall N3Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TMainForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TMainForm *MainForm;
//---------------------------------------------------------------------------
#endif
