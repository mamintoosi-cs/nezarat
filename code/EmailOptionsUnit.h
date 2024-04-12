//---------------------------------------------------------------------------

#ifndef EmailOptionsUnitH
#define EmailOptionsUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "ParentUnit.h"
#include <Buttons.hpp>
#include <DBCtrls.hpp>
#include <ExtCtrls.hpp>
#include <NMsmtp.hpp>
#include <Psock.hpp>
#include <Mask.hpp>

//---------------------------------------------------------------------------
class TEmailOptionsForm : public TParentForm
{
__published:	// IDE-managed Components
        TPanel *Panel1;
        TLabel *Label2;
        TLabel *Label3;
        TLabel *Label4;
        TLabel *Label5;
        TLabel *Label1;
        TLabel *Label6;
        TLabel *Label7;
        TLabel *Label8;
        TNMSMTP *NMSMTP1;
        TDBMemo *BodyDBMemo;
        TDBNavigator *DBNavigator1;
        TDBEdit *SubjectDBEdit;
        TDBEdit *CCDBEdit;
        TDBEdit *BCCDBEdit;
        TDBEdit *UserIDDBEdit;
        TDBEdit *HostDBEdit;
        TDBEdit *FromDBEdit;
        void __fastcall ReturnToMainBitBtnClick(TObject *Sender);
        void __fastcall NMSMTP1Failure(TObject *Sender);
        void __fastcall NMSMTP1ConnectionFailed(TObject *Sender);
        void __fastcall NMSMTP1AuthenticationFailed(bool &Handled);
        void __fastcall NMSMTP1InvalidHost(bool &Handled);
        void __fastcall NMSMTP1Success(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TEmailOptionsForm(TComponent* Owner);
        void __fastcall SendMail(TStringList *,TStringList *);
        void __fastcall SetOptions();
};
//---------------------------------------------------------------------------
extern PACKAGE TEmailOptionsForm *EmailOptionsForm;
//---------------------------------------------------------------------------
#endif
