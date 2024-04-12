//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
#define MAX_COLUMNS 50

#include "PrintTablesUnit.h"
#include "GridRepUnit.h"
#include "DMUnit.h"
#include "ColumnTeachersListRepUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "ParentReportsUnit"
#pragma resource "*.dfm"
TPrintTablesForm *PrintTablesForm;
TFont *tpTitleFont,*tpDetailFont;  // Fonts for changing fonts titles and details.
int SortedColumnIndex=0;
TColor SortedColumnOldColor=clInfoBk;
AnsiString SQLCommand;
//---------------------------------------------------------------------------
__fastcall TPrintTablesForm::TPrintTablesForm(TComponent* Owner)
        : TParentReportsForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TPrintTablesForm::DoReport()
{
  switch(ReportTypeRadioGroup->ItemIndex)
  {
    case 0: SpreadReport(); break;
    case 1: CompactReport(); break;
  }
}
//---------------------------------------------------------------------------
void __fastcall TPrintTablesForm::SpreadReport()
{
 int anySelected=0;
  bool SelectedColumns[MAX_COLUMNS]={false};
 for(int x=0;x<MAX_COLUMNS && x<DBGrid1->Columns->Count;x++)
 {
   SelectedColumns[x]=DBGrid1->Columns->Items[x]->Color!=clWindow;
   anySelected+=(SelectedColumns[x]);
 }
 if(!anySelected) return;
 if(DBGrid1->Columns->Count<50 || Query1->SQL->Count>0)
 {
  Screen->Cursor=crHourGlass;
  QRLabel1->Caption="ÏÇäÔÇå ÊÑÈíÊ ãÚáã ÓÈÒæÇÑ";//+OstanDBLookupComboBox->Text.Trim();

  DetailQRBand->Height=DetailHeightEdit->Text.ToInt();
  TitleQRBand->Height=TitleHeightEdit->Text.ToInt();

  //--------------------Creating  DBTexts for report
  int i,BandLength=40;
  for (i=0;i<DBGrid1->Columns->Count && BandLength <= 1047;i++)
   if(SelectedColumns[i])
    {
     BandLength+=DBGrid1->Columns->Items[i]->Width;
     if(BandLength > 1047)  BandLength = 1047;
     }
//  int reportWidth=QuickRep1->Page->Width;
//  if (BandLength < 400) QuickRep1->Page->Columns=2;
  int LeftRadif=0;
  if (BandLength <= 718 )
    {
     QuickRep1->Page->Orientation=poPortrait;
     LeftRadif=718-40;
    }
  else
    {
     QuickRep1->Page->Orientation=poLandscape;
     LeftRadif=1047-40;
    }

//    Label1->Caption=IntToStr(t);;
  //---------- Radif of report . Detail
  TQRGridRep *QRGridRep1;
  QRGridRep1 = new TQRGridRep(this);
  QRGridRep1->Parent=DetailQRBand;
///  QRGridRep1->AutoSize=false;
  QRGridRep1->BiDiMode=bdRightToLeft;
  QRGridRep1->Top=0;
  QRGridRep1->Left=LeftRadif ;
  QRGridRep1->Width=40;
  QRGridRep1->Height=DetailQRBand->Height;
  QRGridRep1->Font->Assign(tpDetailFont);
  QRGridRep1->Frame->DrawLeft=true;
///  QRGridRep1->Data=qrsDetailNo;
///  QRGridRep1->Alignment=taCenter;
  //----------- Radif of report . Label
  TQRLabel *qrlbl[MAX_COLUMNS+1],*qrlblRadif;
  for(int x=0;x<MAX_COLUMNS+1;x++) qrlbl[x]=NULL;
  qrlblRadif = new TQRLabel(this);
  qrlblRadif->Parent=TitleQRBand;
  qrlblRadif->AutoSize=false;
  qrlblRadif->BiDiMode=bdRightToLeft;
  qrlblRadif->Caption="ÑÏíÝ";
  qrlblRadif->Top=0;
  qrlblRadif->Left=LeftRadif ;
  qrlblRadif->Width=40;
  qrlblRadif->Height=TitleQRBand->Height;
  qrlblRadif->Font->Assign(tpTitleFont);
  qrlblRadif->Frame->DrawLeft=true;
  qrlblRadif->Alignment=taCenter;
  // Produce report...
  TQRExpr *qrexpr[MAX_COLUMNS+1],*qrExprRadif;
///khodam
  for(int x=0;x<MAX_COLUMNS+1;x++) qrexpr[x]=NULL;
  qrExprRadif = new  TQRExpr(this);
  qrExprRadif->Parent=DetailQRBand;
  qrExprRadif->AutoSize=false;
  qrExprRadif->BiDiMode=bdRightToLeft;
//  qrExprRadif->Caption="ÑÏíÝ";
  qrExprRadif->Top=0;
  qrExprRadif->Left=LeftRadif ;
  qrExprRadif->Width=40;
  qrExprRadif->Height=DetailQRBand->Height;
  qrExprRadif->Font->Assign(tpDetailFont);
  qrExprRadif->Frame->DrawLeft=true;
  qrExprRadif->Alignment=taCenter;
  qrExprRadif->Expression="count";

  int lf,OldLeft=LeftRadif,LastColumn=0;
  AnsiString Hazfiha="-";
 //     DBGrid1->Columns->Items[i]->Field->FieldName=="TempCenterTitle")

  for (i=0;i<DBGrid1->Columns->Count;i++)
//  if( DBGrid1->Columns->Items[i]->Width <10)
    if(SelectedColumns[i]==false)
      {
     AnsiString hxx=IntToStr(i);
     hxx=hxx.Trim();
     Hazfiha+=hxx.Trim()+"-";
     }
  else
   if (( OldLeft-DBGrid1->Columns->Items[i]->Width) >= 0)
   {
    int cw=DBGrid1->Columns->Items[i]->Width;
    if(cw>0)
    {
     //---------------------------Details of columns
     qrexpr[i]=new TQRExpr(this);
     qrexpr[i]->Parent=DetailQRBand;
     qrexpr[i]->AutoSize=false;
     qrexpr[i]->BiDiMode=bdRightToLeft;

     TFieldType dt=DBGrid1->Columns->Items[i]->Field->DataType;
     if (dt == ftString || dt == ftSmallint || dt == ftInteger  || dt == ftLargeint  || dt == ftFloat )
         qrexpr[i]->Alignment=taLeftJustify;
     else
         qrexpr[i]->Alignment=taCenter;
     qrexpr[i]->Left=OldLeft-cw ;
     qrexpr[i]->Top=0;
     qrexpr[i]->Width=cw-8;
     qrexpr[i]->Height=DetailQRBand->Height;
     qrexpr[i]->Font->Assign(tpDetailFont);
     qrexpr[i]->Frame->DrawLeft=true;
     qrexpr[i]->Name="qrexpr_"+IntToStr(i).Trim();
     if(DBGrid1->Columns->Items[i]->Color==clMoneyGreen)
       qrexpr[i]->Color=clSilver;
     if(Query1->Fields->Fields[i]->DataType!=ftBoolean)
      qrexpr[i]->Expression="Query1."+Query1->Fields->Fields[i]->FieldName;
     else
      qrexpr[i]->Expression="IF(Query1."+Query1->Fields->Fields[i]->FieldName+",' X ', '   ')";
     //---------------------------Titles of columns
     qrlbl[i] = new TQRLabel(this);
     qrlbl[i]->Parent=TitleQRBand;
     qrlbl[i]->AutoSize=false;
     qrlbl[i]->BiDiMode=bdRightToLeft;
     qrlbl[i]->Caption=DBGrid1->Columns->Items[i]->Title->Caption;
     qrlbl[i]->Top=0;
     qrlbl[i]->Left=OldLeft-cw ;
     qrlbl[i]->Width=cw-8;
     qrlbl[i]->Height=TitleQRBand->Height;
     qrlbl[i]->Font->Assign(tpTitleFont);
     qrlbl[i]->Frame->DrawLeft=true;
     qrlbl[i]->Alignment=taLeftJustify;
     //----------------------------------
     OldLeft=qrexpr[i]->Left;
     LastColumn=i;
     } //if(cw>0)
    } // if (( OldLeft-DBGrid1->Columns->Items[i]->Width) >= 0)
  //-------- Remove left line of last column
  qrlbl[LastColumn]->Frame->DrawLeft=false;
  qrexpr[LastColumn]->Frame->DrawLeft=false;
  // --------
  DateQRLabel->Caption=CurFarsiDate();
  TitleQRLabel->Caption=TitleEdit->Text;

  Screen->Cursor=crArrow;
//  QuickRep1->DateQRLabel->Caption=CurFarsiDate();
  QuickRep1->Preview();
  //--------- Free memory
  QRGridRep1->Free();
  qrlblRadif->Free();
  qrExprRadif->Free();
  for (i=0;i<DBGrid1->Columns->Count;i++)
  {
   AnsiString hx=IntToStr(i);
   hx="-"+hx.Trim()+"-";
   if (Hazfiha.Pos(hx)==0)
       {
        if (qrexpr[i]!=NULL)  qrexpr[i]->Free();
        if (qrlbl[i]!=NULL)    qrlbl[i]->Free();
        } // if (Hazfih
   } // for (i=0;i<DBGrid1->Columns->Count;i++)
  }
 else
   MessageBox(NULL,"ÊÚÏÇÏ ÓÊæäåÇ ÇÒ ÍÏ ãÌÇÒ ÈíÔÊÑ ÇÓÊ","ÎØÇ",
                           MB_ICONSTOP | MB_RIGHT | MB_OK);

}
//---------------------------------------------------------------------------

void __fastcall TPrintTablesForm::FormCreate(TObject *Sender)
{
 tpTitleFont=new TFont();
 tpDetailFont=new TFont();
 //-------------------
 FontDialog1->Font->Name="Lotus";
 FontDialog1->Font->Size=9;
// FontDialog1->Font->Style=TFontStyles()<<fsBold;
 tpDetailFont->Assign(FontDialog1->Font);
 //-------------------
 FontDialog1->Font->Name="Lotus";
 FontDialog1->Font->Size=9;
 FontDialog1->Font->Style=TFontStyles()<<fsBold;
 tpTitleFont->Assign(FontDialog1->Font);
}
//---------------------------------------------------------------------------

void __fastcall TPrintTablesForm::FormDestroy(TObject *Sender)
{
  delete tpTitleFont;
  delete tpDetailFont;
}
//---------------------------------------------------------------------------

void __fastcall TPrintTablesForm::DBGrid1TitleClick(TColumn *Column)
{
  if(Column->Index>=8 && Column->Index%2 == 0) return;
  if(Column->Color==clMoneyGreen) return;
  if(SortedColumnIndex != -1)
    DBGrid1->Columns->Items[SortedColumnIndex]->Color=SortedColumnOldColor;
  SortedColumnOldColor=Column->Color;
  SortedColumnIndex=Column->Index;
  Column->Color=(Column->Color!=clMoneyGreen)?clMoneyGreen:clWindow;
  Label1->Caption="Title"+IntToStr(Column->Index);
  ReSetQuery(Column);
//  SelectedColumns[Column->Index]=!SelectedColumns[Column->Index];
}
//---------------------------------------------------------------------------
void __fastcall TPrintTablesForm::DBGrid1CellClick(TColumn *Column)
{
  Column->Color=(Column->Color!=clInfoBk)?clInfoBk:clWindow;
  Label1->Caption="Cell"+IntToStr(Column->Index);
//  SelectedColumns[Column->Index]=!SelectedColumns[Column->Index];
}
//---------------------------------------------------------------------------
/*SELECT DISTINCT T.TeacherID,T.LastName+" - "+T.FirstName as TeacherName,T.LastName2,T.FirstName2,G.FacultyID,VT.GroupID,T.EmailAddress,T.ReportStatus
FROM Teachers T,varQLT Q, varTeachers VT, Groups G
WHERE T.TeacherID=Q.TeacherID and Q.TermID=:TermID and T.TeacherID=VT.TeacherID
and  VT.GroupID=G.GroupID and VT.TermID=:TermID
ORDER BY T.LastName2,T.FirstName2           */
void __fastcall TPrintTablesForm::ReSetQuery(TColumn *Column)
{
  if(CurrentTermCheckBox->Checked)
    SQLCommand="select DISTINCT T.TeacherID,T.*,VT.* from Teachers T,varTeachers VT,varQLT Q where T.TeacherID=Q.TeacherID and Q.TermID=:TermID and T.TeacherID=VT.TeacherID and VT.TermID=:TermID";
  else
    SQLCommand="select T.*,VT.* from Teachers T,varTeachers VT where T.TeacherID=VT.TeacherID and VT.TermID=:TermID";
  Query1->Close();
  if(Column->Index == 0)
    Query1->SQL->Text=SQLCommand+" order by lastname2";
  else
    Query1->SQL->Text=SQLCommand+" order by "+Column->FieldName;
  Query1->Open();
}
//---------------------------------------------------------------------------

void __fastcall TPrintTablesForm::CurrentTermCheckBoxClick(TObject *Sender)
{
  ReSetQuery(DBGrid1->Columns->Items[SortedColumnIndex]);
}
//---------------------------------------------------------------------------
void __fastcall TPrintTablesForm::CompactReport()
{
  ReSetQuery(DBGrid1->Columns->Items[SortedColumnIndex]);
  TColumnTeachersListRep *listRep;
  listRep=new TColumnTeachersListRep(this);
  listRep->Query->Close();
  listRep->Query->SQL->Text=Query1->SQL->Text;
  listRep->Query->Open();
  listRep->TitleLabel->Caption=TitleEdit->Text;
  listRep->DetailBand->Height=DetailHeightEdit->Text.ToInt();
  listRep->PreviewModal();
  delete listRep;
}
//---------------------------------------------------------------------------

