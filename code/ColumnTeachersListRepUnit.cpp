//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "ColumnTeachersListRepUnit.h"
#include "DMUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "ParentRepUnit"
#pragma resource "*.dfm"
TColumnTeachersListRep *ColumnTeachersListRep;
//---------------------------------------------------------------------------
__fastcall TColumnTeachersListRep::TColumnTeachersListRep(TComponent* Owner)
        : TParentRep(Owner)
{
}
//---------------------------------------------------------------------------
