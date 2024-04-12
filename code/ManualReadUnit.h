//---------------------------------------------------------------------------

#ifndef ManualReadUnitH
#define ManualReadUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <Mask.hpp>
#include <DB.hpp>
#include <DBTables.hpp>
#include <ExtCtrls.hpp>
#include <Buttons.hpp>
#include "DMUnit.h"
//---------------------------------------------------------------------------
class TManualReadForm : public TForm
{
__published:	// IDE-managed Components
        TBitBtn *BitBtn1;
        TLabel *Label1;
        void __fastcall FormCreate(TObject *Sender);
        void __fastcall FormShow(TObject *Sender);
        void __fastcall FormDestroy(TObject *Sender);
        void __fastcall EditKeyPress(TObject *Sender, char &Key);
        void __fastcall EditExit(TObject *Sender);
        void __fastcall BitBtn1Click(TObject *Sender);
        void __fastcall EditKeyDown(TObject *Sender, WORD &Key,TShiftState Shift);
private:	// User declarations
public:		// User declarations
        __fastcall TManualReadForm(TComponent* Owner);
        unsigned int s[MaxNoofQuestions][MaxNoofColumns];
        unsigned int TPasokh;
        bool isItFirstTime,needZero;
        int row,col,uRow,dRow,lCol,rCol;
};
//---------------------------------------------------------------------------
extern PACKAGE TManualReadForm *ManualReadForm;
//---------------------------------------------------------------------------
#endif
