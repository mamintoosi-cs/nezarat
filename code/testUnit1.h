//---------------------------------------------------------------------------

#ifndef testUnit1H
#define testUnit1H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <DB.hpp>
#include <DBGrids.hpp>
#include <DBTables.hpp>
#include <Grids.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
        TDataSource *DataSource1;
        TDBGrid *DBGrid1;
        TQuery *Query1;
        TSmallintField *Query1TeacherID;
        TStringField *Query1LastName;
        TSmallintField *Query1LessonID;
        TStringField *Query1LessonName;
private:	// User declarations
public:		// User declarations
        __fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
