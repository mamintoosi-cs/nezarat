//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "ColumnLessonsListRepUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "ParentRepUnit"
#pragma resource "*.dfm"
TColumnLessonsListRep *ColumnLessonsListRep;
//---------------------------------------------------------------------------
__fastcall TColumnLessonsListRep::TColumnLessonsListRep(TComponent* Owner)
        : TParentRep(Owner)
{
}
//---------------------------------------------------------------------------
