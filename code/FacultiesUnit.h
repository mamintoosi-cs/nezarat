//---------------------------------------------------------------------------

#ifndef FacultiesUnitH
#define FacultiesUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "ParentUnit.h"
#include <DBGrids.hpp>
#include <Grids.hpp>
#include <Buttons.hpp>
#include <DBCtrls.hpp>
#include <ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TFacultiesForm : public TParentForm
{
__published:	// IDE-managed Components
        TDBGrid *DBGrid1;
        TDBNavigator *DBNavigator1;
        void __fastcall BitBtn2Click(TObject *Sender);
        void __fastcall FormShow(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TFacultiesForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFacultiesForm *FacultiesForm;
//---------------------------------------------------------------------------
#endif
