//---------------------------------------------------------------------------

#ifndef GridRepUnitH
#define GridRepUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "ParentRepUnit.h"
#include <ExtCtrls.hpp>
#include <Graphics.hpp>
#include <QRCtrls.hpp>
#include <QuickRpt.hpp>
//---------------------------------------------------------------------------
class TQRGridRep : public TParentRep
{
__published:	// IDE-managed Components
private:	// User declarations
public:		// User declarations
        __fastcall TQRGridRep(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TQRGridRep *QRGridRep;
//---------------------------------------------------------------------------
#endif
