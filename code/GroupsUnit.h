//---------------------------------------------------------------------------

#ifndef GroupsUnitH
#define GroupsUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "ParentUnit.h"
#include <Buttons.hpp>
#include <DBGrids.hpp>
#include <Grids.hpp>
#include <DBCtrls.hpp>
#include <ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TGroupsForm : public TParentForm
{
__published:	// IDE-managed Components
        TDBGrid *DBGrid1;
        TDBNavigator *DBNavigator1;
        TSpeedButton *SpeedButton1;
        void __fastcall FormShow(TObject *Sender);
        void __fastcall ReturnToMainBitBtnClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TGroupsForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TGroupsForm *GroupsForm;
//---------------------------------------------------------------------------
#endif
