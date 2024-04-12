//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "ParentReportsUnit.h"
#include "DMUnit.h"
#include "EmailOptionsUnit.h"
#include "ConfigurationUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "ParentUnit"
#pragma resource "*.dfm"
TParentReportsForm *ParentReportsForm;
AnsiString BtnFaceFileNames[4]={"Report.bmp","Print.bmp","Mail.bmp","Cancel.bmp"};
//---------------------------------------------------------------------------
__fastcall TParentReportsForm::TParentReportsForm(TComponent* Owner)
        : TParentForm(Owner)
{
  unsigned char idx=SendMethodRadioGroup->ItemIndex;
  PrintBitBtn->Caption=SendMethodRadioGroup->Items->Strings[idx];
  PrintBitBtn->Glyph->LoadFromFile(BtnFaceFileNames[idx]);
  ToAddress=new TStringList;
  Attachments=new TStringList;
  Others=new TStringList;
  NoOfReports=1;
}
//---------------------------------------------------------------------------
__fastcall TParentReportsForm::~TParentReportsForm()
{
  delete ToAddress;
  delete Attachments;
  delete Others;
}
//---------------------------------------------------------------------------
void __fastcall TParentReportsForm::SendMethodRadioGroupClick(TObject *Sender)
{
  unsigned char idx=SendMethodRadioGroup->ItemIndex;
  PrintBitBtn->Caption=SendMethodRadioGroup->Items->Strings[idx];
  PrintBitBtn->Glyph->LoadFromFile(BtnFaceFileNames[idx]);
}
//---------------------------------------------------------------------------

void __fastcall TParentReportsForm::PrintBitBtnClick(TObject *Sender)
{
 if(PrintBitBtn->Caption=="Ъцон")
 {
   DM->TerminateSW=true;
   HWND hwndRep;
   for(int i=0;i<NoOfReports;i++)
   {
     hwndRep=FindWindow(NULL,QRep[i]->ReportTitle.c_str());
     if(hwndRep)
       PostMessage(hwndRep, WM_SYSCOMMAND, SC_CLOSE, 0);
   }
   return;
 }
 DM->TerminateSW=false;
 unsigned char idx=SendMethodRadioGroup->ItemIndex;
 PrintBitBtn->Caption="Ъцон";
 PrintBitBtn->Glyph->LoadFromFile(BtnFaceFileNames[3]);
 Attachments->Clear();
 ToAddress->Clear();
 Others->Clear();

 DoReport();

 PrintBitBtn->Caption=SendMethodRadioGroup->Items->Strings[idx];
 PrintBitBtn->Glyph->LoadFromFile(BtnFaceFileNames[idx]);
 MsgLabel->Caption="";
}
//---------------------------------------------------------------------------
void __fastcall TParentReportsForm::PrintOrSave(TParentRep *QRep)
{
    // --- Use TPrinters GetPrinter() to get the right printer name.
    //     Printer names returned by TPrinter under WIN9x often contain
    //     keywords like "On PORTNAME" which are different depending on the
    //     Windows langauge version.
    char szDeviceName[CCHDEVICENAME], // Printer Name
         szDriverName[MAX_PATH],      // Dummy variable
         szPortName[MAX_PATH];        // Dummy variable
    THandle hPrn;               // Dummy variable
    int printerIndex=-1;

    switch(SendMethodRadioGroup->ItemIndex)
    {
      case 0: QRep->Preview(); break;
      case 1: QRep->Print();break;
      case 2://via E-mail
          Printer()->GetPrinter(szDeviceName, szDriverName, szPortName, hPrn);
          strcpy(szDeviceName,"Jaws PDF Creator");
          strcpy(szPortName,"JawsPDFCreatorPort");//for 98, XP dosn't need
          Printer()->SetPrinter(szDeviceName, szDriverName, szPortName, hPrn);
          printerIndex =Printer()->PrinterIndex;
          QRep->PrinterSettings->PrinterIndex=printerIndex;
          QRep->Print();
          Attachments->Add("Reports\\"+QRep->ReportTitle+".pdf");
          break;
    }
}
//---------------------------------------------------------------------------
void __fastcall TParentReportsForm::SendMail()
{
  if(ConfigurationForm->EducationalViceChancellorCheckBox->Checked)
    ToAddress->AddStrings(Others);
  EmailOptionsForm->SendMail(ToAddress,Attachments);
}
//---------------------------------------------------------------------------
AnsiString  TParentReportsForm::FindEmail(int teacherID)
{
  PR_Teachers->EditKey();
  PR_Teachers->FieldByName("TeacherID")->AsInteger=teacherID;
  PR_Teachers->GotoKey();
  return  PR_Teachers->FieldByName("EMailAddress")->AsString;
}
//---------------------------------------------------------------------------

