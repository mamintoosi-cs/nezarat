//---------------------------------------------------------------------------

#ifndef NewTermUnitH
#define NewTermUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <Buttons.hpp>
#include <DBCtrls.hpp>
#include <Mask.hpp>
#include <DB.hpp>
#include <DBTables.hpp>
//---------------------------------------------------------------------------
class TNewTermForm : public TForm
{
__published:	// IDE-managed Components
        TDBEdit *EditTermName;
        TLabel *Label2;
        TLabel *Label3;
        TDBEdit *EditModirName;
        TDBEdit *EditModirTitle;
        TLabel *Label4;
        TBitBtn *SabtBtn;
        TBitBtn *CopyBtn;
        TBitBtn *CancelBtn;
        TQuery *CopyVarTeachersQuery;
        TQuery *CopyVarQuestionsQuery;
        TQuery *NullReportStatusQuery;
        TQuery *DeleteFromOMRQuery;
        void __fastcall FormShow(TObject *Sender);
        void __fastcall CopyBtnClick(TObject *Sender);
        void __fastcall SabtBtnClick(TObject *Sender);
        void __fastcall CancelBtnClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TNewTermForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TNewTermForm *NewTermForm;
//---------------------------------------------------------------------------
#endif
