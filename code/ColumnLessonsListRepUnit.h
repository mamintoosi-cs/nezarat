//---------------------------------------------------------------------------

#ifndef ColumnLessonsListRepUnitH
#define ColumnLessonsListRepUnitH
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
class TColumnLessonsListRep : public TParentRep
{
__published:	// IDE-managed Components
        TQRDBText *QRDBText2;
        TQuery *Query;
        TQRLabel *QRLabel1;
        TQRLabel *QRLabel2;
        TQRLabel *QRLabel3;
        TQRDBText *QRDBText3;
        TQRDBText *QRDBText4;
private:	// User declarations
public:		// User declarations
        __fastcall TColumnLessonsListRep(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TColumnLessonsListRep *ColumnLessonsListRep;
//---------------------------------------------------------------------------
#endif
