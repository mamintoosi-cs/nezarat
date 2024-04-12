//---------------------------------------------------------------------------

#ifndef LessonsUnitH
#define LessonsUnitH
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
#include <Menus.hpp>
//---------------------------------------------------------------------------
class TLessonsForm : public TParentForm
{
__published:	// IDE-managed Components
        TDBGrid *DBGrid1;
        TDBNavigator *DBNavigator1;
        void __fastcall ReturnToMainBitBtnClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TLessonsForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TLessonsForm *LessonsForm;
//---------------------------------------------------------------------------
#endif
