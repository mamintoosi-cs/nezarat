//---------------------------------------------------------------------------

#ifndef FilteringUnitH
#define FilteringUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "ParentUnit.h"
#include <Buttons.hpp>
#include <ExtCtrls.hpp>
#include <Db.hpp>
#include <DBTables.hpp>
#include <DB.hpp>
#include <DBCtrls.hpp>
#include "DMUnit.H"
//---------------------------------------------------------------------------
class TFilteringForm : public TParentForm
{
__published:	// IDE-managed Components
        TRadioGroup *VERadioGroup;
        TQuery *InsertToFlat1Query;
        TQuery *EmptyFlat1Query;
        TLabel *Label1;
        TLabel *Label2;
        TLabel *Label3;
        TRadioGroup *NDRadioGroup;
        TRadioGroup *MDRadioGroup;
        TStaticText *StaticText1;
        TBitBtn *CancelBitBtn;
        void __fastcall ReturnToMainBitBtnClick(TObject *Sender);
        void __fastcall CancelBitBtnClick(TObject *Sender);
        void __fastcall FormShow(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TFilteringForm(TComponent* Owner);
        void computeAverages(void);
        AvgAndCount T[MaxValueofTeachersNo],G[MaxValueofGroupsNo],F[MaxValueofFacultiesNo];
        float univAvg;
        bool isItFirstTime;
        short int radiosStatus[5];
};
//---------------------------------------------------------------------------
extern PACKAGE TFilteringForm *FilteringForm;
//---------------------------------------------------------------------------
#endif
