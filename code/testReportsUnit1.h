//---------------------------------------------------------------------------

#ifndef testReportsUnit1H
#define testReportsUnit1H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <DB.hpp>
#include <DBTables.hpp>
#include <Buttons.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
        TButton *Button1;
        TButton *Button2;
        TButton *Button3;
        TQuery *InsertToTeachersFlat;
        TQuery *EmptyTeachersFlat;
        TLabel *Label1;
        TLabel *Label2;
        TEdit *Edit1;
        TBitBtn *BitBtn1;
        TButton *Button4;
        TButton *Button5;
        TButton *Button6;
        TMemo *Memo1;
        TButton *Button7;
        void __fastcall Button1Click(TObject *Sender);
        void __fastcall Button2Click(TObject *Sender);
        void __fastcall Button3Click(TObject *Sender);
        void __fastcall FormShow(TObject *Sender);
        void __fastcall Button4Click(TObject *Sender);
        void __fastcall Button5Click(TObject *Sender);
        void __fastcall FormCreate(TObject *Sender);
        void __fastcall Button6Click(TObject *Sender);
        void __fastcall Button7Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
