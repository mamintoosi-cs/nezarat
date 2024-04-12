//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
//---------------------------------------------------------------------------
USEFORM("DMUnit.cpp", DM); /* TDataModule: File Type */
USEFORM("ParentUnit.cpp", ParentForm);
USEFORM("ReportModificationUnit.cpp", ReportModificationForm);
//---------------------------------------------------------------------------
WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
        try
        {
                 Application->Initialize();
                 Application->CreateForm(__classid(TReportModificationForm), &ReportModificationForm);
                 Application->CreateForm(__classid(TDM), &DM);
                 Application->CreateForm(__classid(TParentForm), &ParentForm);
                 Application->Run();
        }
        catch (Exception &exception)
        {
                 Application->ShowException(&exception);
        }
        catch (...)
        {
                 try
                 {
                         throw Exception("");
                 }
                 catch (Exception &exception)
                 {
                         Application->ShowException(&exception);
                 }
        }
        return 0;
}
//---------------------------------------------------------------------------
