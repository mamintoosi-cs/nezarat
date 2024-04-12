//---------------------------------------------------------------------------

#include <vcl.h>
#include "DMUnit.h"
#pragma hdrstop

#include "EmailOptionsUnit.h"

//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "ParentUnit"
#pragma resource "*.dfm"
TEmailOptionsForm *EmailOptionsForm;
//---------------------------------------------------------------------------
__fastcall TEmailOptionsForm::TEmailOptionsForm(TComponent* Owner)
        : TParentForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TEmailOptionsForm::ReturnToMainBitBtnClick(TObject *Sender)
{
    if(DM->EmailOptions->State==dsEdit) DM->EmailOptions->Post();
    SetOptions();
    this->Close();
}
//---------------------------------------------------------------------------
void __fastcall TEmailOptionsForm::SendMail(TStringList *toAddress,TStringList *attachments)
{
    if(NMSMTP1->Connected)
        NMSMTP1->Disconnect();
    SetOptions();
    NMSMTP1->PostMessage->ToAddress->Text=toAddress->Text;
    NMSMTP1->PostMessage->Attachments->Text=attachments->Text;
    NMSMTP1->Connect();
    if(DM->TerminateSW==false) NMSMTP1->SendMail();
}
void __fastcall TEmailOptionsForm::NMSMTP1Failure(TObject *Sender)
{
  ShowMessage("ÎØÇ ÏÑ ÇÑÓÇá íÇã (Emaill)!\n áÛæ ÇÏÇãå ÒÇÑÔ.");
  DM->TerminateSW=true;
}
//---------------------------------------------------------------------------

void __fastcall TEmailOptionsForm::NMSMTP1ConnectionFailed(TObject *Sender)
{
  ShowMessage("ÎØÇ ÏÑ ÇíÌÇÏ ÇÑÊÈÇØ\n áÛæ ÇÏÇãå ÒÇÑÔ.");
  DM->TerminateSW=true;
}
//---------------------------------------------------------------------------

void __fastcall TEmailOptionsForm::NMSMTP1AuthenticationFailed(
      bool &Handled)
{
  ShowMessage("ÎØÇ ÏÑ ÊÕÏíŞ åæíÊ \n áÛæ ÇÏÇãå ÒÇÑÔ.");
  DM->TerminateSW=true;
}
//---------------------------------------------------------------------------

void __fastcall TEmailOptionsForm::NMSMTP1InvalidHost(bool &Handled)
{
  ShowMessage("ÎØÇ ÏÑ ÓÑæíÓ ÏåäÏå ÎÏãÇÊ ÓÊ ÇáßÊÑæäíß\n áÛæ ÇÏÇãå ÒÇÑÔ.");
  DM->TerminateSW=true;
}
//---------------------------------------------------------------------------
void __fastcall TEmailOptionsForm::NMSMTP1Success(TObject *Sender)
{
//  ShowMessage("Send Message Successful.");
}
//---------------------------------------------------------------------------
void __fastcall TEmailOptionsForm::SetOptions()
{
    NMSMTP1->PostMessage->ToAddress->Clear();
    NMSMTP1->PostMessage->ToBlindCarbonCopy->Clear();
    NMSMTP1->PostMessage->ToCarbonCopy->Clear();

///    NMSMTP1->PostMessage->ToAddress->CommaText = ToEdit->Text;
    NMSMTP1->PostMessage->FromAddress = FromDBEdit->Text;
    NMSMTP1->PostMessage->ReplyTo = FromDBEdit->Text;
    NMSMTP1->PostMessage->ToBlindCarbonCopy->CommaText = BCCDBEdit->Text;
    NMSMTP1->PostMessage->ToCarbonCopy->CommaText = CCDBEdit->Text;
    NMSMTP1->PostMessage->Subject = SubjectDBEdit->Text;

    NMSMTP1->PostMessage->LocalProgram = "My Emailer";
    NMSMTP1->PostMessage->Body->Assign(BodyDBMemo->Lines);
    NMSMTP1->UserID = UserIDDBEdit->Text;
    NMSMTP1->Host = HostDBEdit->Text;
  //      NMSMTP1->PostMessage->Attachments
//TStringlist exception
//    NMSMTP1->SendMail();
}
//---------------------------------------------------------------------------


