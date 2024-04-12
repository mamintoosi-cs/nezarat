//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "QuickTeachersModificationUnit.h"
#include "DMUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "ParentUnit"
#pragma resource "*.dfm"
TQuickTeachersModificationForm *QuickTeachersModificationForm;
//---------------------------------------------------------------------------
__fastcall TQuickTeachersModificationForm::TQuickTeachersModificationForm(TComponent* Owner)
        : TParentForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TQuickTeachersModificationForm::FormShow(TObject *Sender)
{
  TeachersInfoQuery->Close();
  TeachersInfoQuery->Filter="TermID="+DBText1->Field->AsString;
  LVarTeachers->Filter="TermID="+DBText1->Field->AsString;
  TeachersInfoQuery->Open();
}
//---------------------------------------------------------------------------

void __fastcall TQuickTeachersModificationForm::ReturnToMainBitBtnClick(
      TObject *Sender)
{
/*  int msgResult=mrNo;
  if(BDEClientDataSet1->ChangeCount > 0)
     msgResult=MessageDlg(" €ÌÌ—«  –ŒÌ—Â ‘Ê‰œø"
                ,mtInformation, TMsgDlgButtons() << mbYes<<mbNo<<mbCancel, 0);
  switch(msgResult)
  {
    case mrYes:  BDEClientDataSet1->ApplyUpdates(-1);
    case mrNo: this->Close();
  }             */
  TeachersInfoQuery->ApplyUpdates();
  this->Close();
}
//---------------------------------------------------------------------------

void __fastcall TQuickTeachersModificationForm::TeachersInfoQueryUpdateRecord(
      TDataSet *DataSet, TUpdateKind UpdateKind,
      TUpdateAction &UpdateAction)
{
  LVarTeachers->Edit();
  LVarTeachers->FieldByName("HamkariID")->AsInteger=DataSet->FieldByName("HamkariID")->AsInteger;
  LVarTeachers->FieldByName("DegreeID")->AsInteger=DataSet->FieldByName("DegreeID")->AsInteger;
  LVarTeachers->FieldByName("MadrakID")->AsInteger=DataSet->FieldByName("MadrakID")->AsInteger;
  LVarTeachers->FieldByName("GroupID")->AsInteger=DataSet->FieldByName("GroupID")->AsInteger;
  LVarTeachers->Post();
  LTeachers->Edit();
  LTeachers->FieldByName("Title")->AsString=DataSet->FieldByName("Title")->AsString;
  LTeachers->FieldByName("JensID")->AsInteger=DataSet->FieldByName("JensID")->AsInteger;
  LTeachers->FieldByName("MarriageID")->AsInteger=DataSet->FieldByName("MarriageID")->AsInteger;
  LTeachers->FieldByName("DateofLastPromotion")->AsString=DataSet->FieldByName("DateofLastPromotion")->AsString;
  LTeachers->FieldByName("ReportStatus")->AsString=DataSet->FieldByName("ReportStatus")->AsString;
//  LTeachers->FieldByName("Lang2")->AsInteger=DataSet->FieldByName("Lang2")->AsInteger;
  LTeachers->FieldByName("ConditionID")->AsInteger=DataSet->FieldByName("ConditionID")->AsInteger;
  LTeachers->FieldByName("EMailAddress")->AsString=DataSet->FieldByName("EMailAddress")->AsString;
  LTeachers->Post();
  UpdateAction=uaApplied;
}
//---------------------------------------------------------------------------

void __fastcall TQuickTeachersModificationForm::TeachersInfoQueryBeforeScroll(
      TDataSet *DataSet)
{
  TeachersInfoQuery->ApplyUpdates();
}
//---------------------------------------------------------------------------
void __fastcall TQuickTeachersModificationForm::TeachersInfoQueryBeforeDelete(
      TDataSet *DataSet)
{
  ShowMessage("«„ﬂ«‰ Õ–› œ— «Ì‰ ’›ÕÂ ÊÃÊœ ‰œ«—œ");
}
//---------------------------------------------------------------------------

