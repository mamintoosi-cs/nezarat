//---------------------------------------------------------------------------

#ifndef ParentUnitH
#define ParentUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <Buttons.hpp>
#include <DBCtrls.hpp>
#include <ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TParentForm : public TForm
{
__published:	// IDE-managed Components
        TBitBtn *ReturnToMainBitBtn;
        TPanel *StatusPanel;
        TDBText *UnitNameDBText;
        TDBText *TermNameDBText;
        TLabel *MsgLabel;
private:	// User declarations
public:		// User declarations
        __fastcall TParentForm(TComponent* Owner);
        AnsiString addYe(AnsiString);
};
//---------------------------------------------------------------------------
extern PACKAGE TParentForm *ParentForm;
//---------------------------------------------------------------------------
#endif
