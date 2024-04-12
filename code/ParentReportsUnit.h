//---------------------------------------------------------------------------

#ifndef ParentReportsUnitH
#define ParentReportsUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "ParentUnit.h"
#include <Buttons.hpp>
#include <DBCtrls.hpp>
#include <ExtCtrls.hpp>
#include "ParentRepUnit.h"
#include <DB.hpp>
#include <DBTables.hpp>
#include <Chart.hpp>
#include <DbChart.hpp>
#include <Series.hpp>
#include <TeEngine.hpp>
#include <TeeProcs.hpp>
//---------------------------------------------------------------------------
class TParentReportsForm : public TParentForm
{
__published:	// IDE-managed Components
        TBitBtn *PrintBitBtn;
        TBitBtn *SelectionBitBtn;
        TRadioGroup *SendMethodRadioGroup;
        TGroupBox *GroupBox1;
        TCheckBox *EhteramCheckBox;
        TCheckBox *NOVisibilityCheckBox;
        TTable *PR_Teachers;
        void __fastcall SendMethodRadioGroupClick(TObject *Sender);
        void __fastcall PrintBitBtnClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TParentReportsForm(TComponent* Owner);
        __fastcall ~TParentReportsForm();
        void __fastcall PrintOrSave(TParentRep *);
        TParentRep *QRep[3];
        TStringList *ToAddress,*Attachments,*Others;
        virtual void __fastcall DoReport(void)=0;
        int NoOfReports;
        void __fastcall SendMail();
        AnsiString  FindEmail(int teacherID);
};
//---------------------------------------------------------------------------
extern PACKAGE TParentReportsForm *ParentReportsForm;
//---------------------------------------------------------------------------
#endif
