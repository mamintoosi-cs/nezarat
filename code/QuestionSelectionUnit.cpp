//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "QuestionSelectionUnit.h"
#include "DMUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TQuestionSelectionForm *QuestionSelectionForm;
TEdit *EditList[MaxNoofQuestions][MaxNoofColumns];
TLabel *LabelList[MaxNoofQuestions];
TBevel *BevelList[MaxNoofQuestions];
AnsiString num;
int DlgAnswer;
//---------------------------------------------------------------------------
__fastcall TQuestionSelectionForm::TQuestionSelectionForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TQuestionSelectionForm::FormCreate(TObject *Sender)
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
void __fastcall TQuestionSelectionForm::FormShow(TObject *Sender)
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
void __fastcall TQuestionSelectionForm::FormDestroy(TObject *Sender)
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

void __fastcall TQuestionSelectionForm::BitBtn1Click(TObject *Sender)
{
//  DM->QuestionNo=1;
  QuestionSelectionForm->Close();
}
//---------------------------------------------------------------------------

