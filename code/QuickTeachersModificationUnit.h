//---------------------------------------------------------------------------

#ifndef QuickTeachersModificationUnitH
#define QuickTeachersModificationUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "ParentUnit.h"
#include <Buttons.hpp>
#include <DBCtrls.hpp>
#include <ExtCtrls.hpp>
#include <DB.hpp>
#include <DBClient.hpp>
#include <DBGrids.hpp>
#include <DBLocal.hpp>
#include <DBLocalB.hpp>
#include <DBTables.hpp>
#include <Grids.hpp>
#include <Provider.hpp>
//---------------------------------------------------------------------------
class TQuickTeachersModificationForm : public TParentForm
{
__published:	// IDE-managed Components
        TDataSource *TeachersInfoQueryDS;
        TDBGrid *DBGrid1;
        TDataSource *LVarTeachersDS;
        TTable *LVarTeachers;
        TTable *LTeachers;
        TDataSource *LTeachersDS;
        TQuery *TeachersInfoQuery;
        TSmallintField *TeachersInfoQueryTeacherID;
        TStringField *TeachersInfoQueryFirstName;
        TStringField *TeachersInfoQueryLastName;
        TStringField *TeachersInfoQueryTeacherName;
        TStringField *TeachersInfoQueryTitle;
        TSmallintField *TeachersInfoQueryJensId;
        TSmallintField *TeachersInfoQueryMarriageID;
        TStringField *TeachersInfoQueryDateE;
        TStringField *TeachersInfoQueryDateofLastPromotion;
        TSmallintField *TeachersInfoQueryLang1;
        TSmallintField *TeachersInfoQueryLang2;
        TSmallintField *TeachersInfoQueryConditionID;
        TStringField *TeachersInfoQueryEmailAddress;
        TSmallintField *TeachersInfoQueryTermID;
        TSmallintField *TeachersInfoQueryHamkariID;
        TSmallintField *TeachersInfoQueryDegreeID;
        TSmallintField *TeachersInfoQueryMadrakID;
        TSmallintField *TeachersInfoQueryGroupID;
        TSmallintField *TeachersInfoQueryFacultyID;
        TStringField *TeachersInfoQueryHamkari;
        TStringField *TeachersInfoQueryDegree;
        TStringField *TeachersInfoQueryMadrak;
        TStringField *TeachersInfoQueryGroup;
        TStringField *TeachersInfoQueryReportStatus;
        TDBText *DBText1;
        void __fastcall FormShow(TObject *Sender);
        void __fastcall ReturnToMainBitBtnClick(TObject *Sender);
        void __fastcall TeachersInfoQueryUpdateRecord(TDataSet *DataSet,
          TUpdateKind UpdateKind, TUpdateAction &UpdateAction);
        void __fastcall TeachersInfoQueryBeforeScroll(TDataSet *DataSet);
        void __fastcall TeachersInfoQueryBeforeDelete(TDataSet *DataSet);
private:	// User declarations
public:		// User declarations
        __fastcall TQuickTeachersModificationForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TQuickTeachersModificationForm *QuickTeachersModificationForm;
//---------------------------------------------------------------------------
#endif
