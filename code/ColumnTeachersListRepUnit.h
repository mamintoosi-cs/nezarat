//---------------------------------------------------------------------------

#ifndef ColumnTeachersListRepUnitH
#define ColumnTeachersListRepUnitH
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
#include <DB.hpp>
#include <DBTables.hpp>
//---------------------------------------------------------------------------
class TColumnTeachersListRep : public TParentRep
{
__published:	// IDE-managed Components
        TQRDBText *QRDBText2;
        TQuery *Query;
        TQRLabel *QRLabel1;
        TQRLabel *QRLabel2;
        TQRDBText *QRDBText1;
        TQRExpr *QRExpr1;
        TQRLabel *QRLabel3;
private:	// User declarations
public:		// User declarations
        __fastcall TColumnTeachersListRep(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TColumnTeachersListRep *ColumnTeachersListRep;
//---------------------------------------------------------------------------
#endif
