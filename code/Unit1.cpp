//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
//#include "Unit2.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button1Click(TObject *Sender)
{
//  QuickReport2->Preview();
//  QRChart1->Chart->Series[0]->ParentChart=  DBChart1;//->Series[0]->ParentChart;
/* QRChart1->Chart->FreeAllSeries();
 QRChart1->Chart->Assign(Chart1);
*/ for (int t=0;t<=DBChart1->SeriesCount()-1;t++)
     CloneChartSeries(DBChart1->Series[t])->ParentChart=QRChart1->Chart;

}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button2Click(TObject *Sender)
{
 // Create the QRChart
  TQRChart *tmp=new TQRChart(this);
  // Create the QRDBChart
  TQRDBChart *tmpQRDB=new TQRDBChart(tmp);
  tmpQRDB->Parent=tmp;
  tmpQRDB->Name=TeeGetUniqueName(tmpQRDB->Owner,"QRChart");
  tmpQRDB->Title->Text->Clear();
  tmpQRDB->Title->Text->Add(tmp->ClassName());

  // add the QRChart to the QuickReport...
  tmp->ParentReport=QuickRep1;
  tmp->Parent=TitleBand1;
  tmp->Width=300;
  tmp->Height=160;
  tmp->Left=30;
  tmp->Top=20;
  // Create a Series and add sample values...
  TBarSeries *tmpSer=new TBarSeries(this);
  tmpSer->ParentChart=tmp->Chart;
//  tmpSer->FillSampleValues(2);
  CloneChartSeries(DBChart1->Series[0])->ParentChart=tmp->Chart;

}
//---------------------------------------------------------------------------

