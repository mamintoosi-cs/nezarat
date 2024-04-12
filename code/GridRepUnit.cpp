//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "GridRepUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "ParentRepUnit"
#pragma resource "*.dfm"
TQRGridRep *QRGridRep;
//---------------------------------------------------------------------------
__fastcall TQRGridRep::TQRGridRep(TComponent* Owner)
        : TParentRep(Owner)
{
}
//---------------------------------------------------------------------------
