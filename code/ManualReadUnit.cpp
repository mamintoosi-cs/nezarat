//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "ManualReadUnit.h"
#include "DMUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TManualReadForm *ManualReadForm;
TEdit *EditList[MaxNoofQuestions][MaxNoofColumns];
TLabel *LabelList[MaxNoofQuestions];
TBevel *BevelList[MaxNoofQuestions];
AnsiString num;
int DlgAnswer;
//---------------------------------------------------------------------------
__fastcall TManualReadForm::TManualReadForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TManualReadForm::FormCreate(TObject *Sender)
{
  int i,j;
  for(i=0;i<MaxNoofQuestions;i++)
    for(j=0;j<MaxNoofColumns;j++)
        {
          EditList[i][j]=new TEdit(this);
          EditList[i][j]->Left=50+38*j;
          EditList[i][j]->Top=30+23*i;
          EditList[i][j]->Height=20;
          EditList[i][j]->Width=35;
          EditList[i][j]->Font->Name="Terminal";
          EditList[i][j]->Font->Size=9;
          EditList[i][j]->Text="0";
          EditList[i][j]->Parent=this;
          EditList[i][j]->OnExit=EditExit;
          EditList[i][j]->OnKeyPress=EditKeyPress;
          EditList[i][j]->OnKeyDown=EditKeyDown;
          EditList[i][j]->Tag=i*DM->NoofColumns+j;
//          EditList[i][j]->Show();
        }
  for(i=0;i<MaxNoofQuestions;i++)
  {
   LabelList[i]=new TLabel(this);
   BevelList[i]=new TBevel(this);
     BevelList[i]->Parent=this;
     BevelList[i]->Left=245;
     BevelList[i]->Top=30+23*i;
     BevelList[i]->Height=EditList[0][0]->Height-8;
     BevelList[i]->Width=340;
     BevelList[i]->Shape=bsBottomLine;
     BevelList[i]->Hide();

     LabelList[i]->Parent=this;
     LabelList[i]->Left=250+38*j;
     LabelList[i]->Top=30+23*i;
     LabelList[i]->Height=20;
     LabelList[i]->Width=185;
     LabelList[i]->BiDiMode=bdRightToLeft ;
     LabelList[i]->Font->Name="Arial";
     LabelList[i]->Font->Style=TFontStyles()<< fsBold ;
     LabelList[i]->Font->Size=10;
     LabelList[i]->Hide();
  }
  isItFirstTime=true;
  needZero=true;
}
//---------------------------------------------------------------------------
void __fastcall TManualReadForm::FormShow(TObject *Sender)
{
  int i,j;
  AnsiString countStr;
   DM->varQuestions->Filtered=false;
   DM->varQuestions->Filter= "LessonTypeID="+IntToStr(DM->LessonTypeID);
   DM->varQuestions->Filtered=true;
   DM->varQuestions->First();

  DM->NoofQuestions =DM->varQuestions->RecordCount;
  for(i=0;i<MaxNoofQuestions;i++)
    for(j=0;j<MaxNoofColumns;j++)
      if(i<DM->NoofQuestions && j<DM->NoofColumns)
      {
          if(needZero) EditList[i][j]->Text="0";
          EditList[i][j]->Show();
      }
      else
          EditList[i][j]->Hide();
   i=0;
   while(i<MaxNoofQuestions)
   {
     if(i<DM->NoofQuestions && !DM->varQuestions->Eof )
     {
       BevelList[i]->Show();
       countStr.sprintf("%-3d) ",i+1);
       LabelList[i]->Caption=countStr+DM->varQuestions->FieldByName("Title")->AsString;
       LabelList[i]->Show();
       DM->varQuestions->Next();
     }
     else
     {
       BevelList[i]->Hide();
       LabelList[i]->Hide();
     }
     i++;
   }
   BitBtn1->Top= BevelList[DM->NoofQuestions-1]->Top+30;
   BitBtn1->Left=this->Width/2 - BitBtn1->Width/2;
   this->Height=BitBtn1->Top+BitBtn1->Height+40;
   DlgAnswer=mrOk;
   needZero=false;
}
//---------------------------------------------------------------------------
void __fastcall TManualReadForm::FormDestroy(TObject *Sender)
{
  int i,j;
  for(i=0;i<MaxNoofQuestions;i++)
    for(j=0;j<MaxNoofColumns;j++)
      delete EditList[i][j];
  for(i=0;i<MaxNoofQuestions;i++)
  {
      delete LabelList[i];
      delete BevelList[i];
  }
}
//---------------------------------------------------------------------------

void __fastcall TManualReadForm::BitBtn1Click(TObject *Sender)
{
  int i,j;
  unsigned rowSum;
  for(i=0;i<DM->NoofQuestions;i++)
  {
    rowSum=0;
    for(j=0;j<DM->NoofColumns;j++)
    {
      s[i][j]=StrToInt(EditList[i][j]->Text.Trim());
      rowSum+=s[i][j];
    }
    if(rowSum>TPasokh)
      if( (rowSum-s[i][0])<=TPasokh)
      {
         if(DlgAnswer!=mrAll)
           DlgAnswer=MessageDlg("ãÌãæÚ ÌæÇÈåÇ ÏÑ ÓæÇá"+
                IntToStr(i+1)+"ÈíÔÊÑ ÇÒ ÊÚÏÇÏ ÇÓÎåÇ ãí ÈÇÔÏ\nÈÇ ÊÛííÑ ÊÚÏÇÏ ãæÇÑÏ Èí äÙÑ ÊÕÍíÍ ÇäÌÇã ÔæÏ¿"
                ,mtInformation, TMsgDlgButtons() << mbYes<<mbNo<<mbAll, 0);
         if(DlgAnswer==mrNo)
         {
           EditList[i][0]->SetFocus();
           return;
         }
         s[i][0]-=rowSum-TPasokh;
         EditList[i][0]->Text=IntToStr(s[i][0]);
      }
      else
      {
         ShowMessage("ãÌãæÚ ÌæÇÈåÇ ÏÑ ÓæÇá"+IntToStr(i+1)+"ÈíÔÊÑ ÇÒ ÊÚÏÇÏ ÇÓÎåÇ ãí ÈÇÔÏ");
         EditList[i][0]->SetFocus();
         return;//break;
      }
    else
       if(rowSum<TPasokh)
       {
         if(DlgAnswer!=mrAll)
           DlgAnswer=MessageDlg("ãÌãæÚ ÌæÇÈåÇ ÏÑ ÓæÇá"+
                IntToStr(i+1)+"ßãÊÑÇÒ ÊÚÏÇÏ ÇÓÎåÇ ãí ÈÇÔÏ\nÈÇ ÊÛííÑ ÊÚÏÇÏ ãæÇÑÏ Èí äÙÑ ÊÕÍíÍ ÇäÌÇã ÔæÏ¿"
                ,mtInformation, TMsgDlgButtons() << mbYes<<mbNo<<mbAll, 0);
         if(DlgAnswer==mrNo)
         {
           EditList[i][0]->SetFocus();
           return;
         }
         s[i][0]-=rowSum-TPasokh;
         EditList[i][0]->Text=IntToStr(s[i][0]);
       }
  }
//  this->Hide();
  ManualReadForm->Close();
}
//---------------------------------------------------------------------------

void __fastcall TManualReadForm::EditKeyPress(TObject *Sender, char &Key)
{
  if(!isdigit(Key) && Key!=8) Key='0'; //8=BackSpace
}
//---------------------------------------------------------------------------

void __fastcall TManualReadForm::EditExit(TObject *Sender)
{
  num=((TEdit *)Sender)->Text.Trim();
  if (num.AnsiCompare("") ==0)
    ((TEdit *)Sender)->Text="0";
}
//---------------------------------------------------------------------------
void __fastcall TManualReadForm::EditKeyDown(TObject *Sender, WORD &Key,
      TShiftState Shift)
{
//  Label1->Caption=IntToStr(Key);
  if(Key>=37 && Key <=40)
  {
  row=((TEdit*)Sender)->Tag/DM->NoofColumns;
  col=((TEdit*)Sender)->Tag%DM->NoofColumns;
  uRow=(row==0)?DM->NoofQuestions-1:row-1;
  dRow=(row==DM->NoofQuestions-1)?0:row+1;
  lCol=(col==0)?DM->NoofColumns-1:col-1;
  rCol=(col==DM->NoofColumns-1)?0:col+1;
  switch(Key)
  {
    case 37:EditList[row][lCol]->SetFocus(); break;//LeftArrow
    case 38:EditList[uRow][col]->SetFocus(); break;//UpArrow
    case 39:EditList[row][rCol]->SetFocus(); break;//RightArrow
    case 40:EditList[dRow][col]->SetFocus(); break;//DownArrow
  }
  }
}
//---------------------------------------------------------------------------

