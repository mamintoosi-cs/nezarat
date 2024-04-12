//---------------------------------------------------------------------------

#ifndef UnitUnitH
#define UnitUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <DB.hpp>
#include <DBCtrls.hpp>
#include <DBGrids.hpp>
#include <DBTables.hpp>
#include <Grids.hpp>
//---------------------------------------------------------------------------
class TUnitForm : public TForm
{
__published:	// IDE-managed Components
        TDBGrid *DBGrid1;
        TDBImage *DBImage1;
        TTable *Table1;
        TDataSource *DataSource1;
        TDBImage *DBImage2;
private:	// User declarations
public:		// User declarations
        __fastcall TUnitForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TUnitForm *UnitForm;
//---------------------------------------------------------------------------
#endif
