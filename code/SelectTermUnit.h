//---------------------------------------------------------------------------

#ifndef SelectTermUnitH
#define SelectTermUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <DBGrids.hpp>
#include <Grids.hpp>
//---------------------------------------------------------------------------
class TSelectTermForm : public TForm
{
__published:	// IDE-managed Components
        TLabel *Label1;
        TDBGrid *DBGrid1;
        void __fastcall DBGrid1DblClick(TObject *Sender);
        void __fastcall DBGrid1KeyUp(TObject *Sender, WORD &Key,
          TShiftState Shift);
        void __fastcall FormShow(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TSelectTermForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TSelectTermForm *SelectTermForm;
//---------------------------------------------------------------------------
#endif
