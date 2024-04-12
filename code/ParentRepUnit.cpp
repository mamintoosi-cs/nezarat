//----------------------------------------------------------------------------
#include <vcl\vcl.h>
#pragma hdrstop

#include "ParentRepUnit.h"
#include "DMUnit.h"
#include "FilteringUnit.h"
//----------------------------------------------------------------------------
#pragma resource "*.dfm"
TParentRep *ParentRep;
//----------------------------------------------------------------------------
__fastcall TParentRep::TParentRep(TComponent* Owner)
    : TQuickRep(Owner)
{
  EhteramQRMemo->Lines->Add(DM->Terms->FieldByName("ModirName")->AsString);
  EhteramQRMemo->Lines->Add(DM->Terms->FieldByName("ModirTitle")->AsString);
  NoDateAttachMemo->Lines->Delete(1);
  NoDateAttachMemo->Lines->Insert(1,"ÊÇÑíÎ:  "+CurFarsiDate());
}
//----------------------------------------------------------------------------
void TParentRep::BandColor(TQRCustomBand *band,float avg)
{
  band->Color=clWhite;
  if(avg>DM->Terms->FieldByName("LR1")->AsFloat)
    switch(DM->Terms->FieldByName("CUR1")->AsBoolean)
    {
      case false: if(avg<DM->Terms->FieldByName("UR1")->AsFloat)
                     band->Color=DM->Terms->FieldByName("CR1")->AsInteger;
                  break;
      case true: if(avg<=DM->Terms->FieldByName("UR1")->AsFloat)
                     band->Color=DM->Terms->FieldByName("CR1")->AsInteger;
                  break;
    }
  else
  if(avg>DM->Terms->FieldByName("LR2")->AsFloat)
    switch(DM->Terms->FieldByName("CUR2")->AsBoolean)
    {
      case false: if(avg<DM->Terms->FieldByName("UR2")->AsFloat)
                     band->Color=DM->Terms->FieldByName("CR2")->AsInteger;
                  break;
      case true: if(avg<=DM->Terms->FieldByName("UR2")->AsFloat)
                     band->Color=DM->Terms->FieldByName("CR2")->AsInteger;
                  break;
    }
}
