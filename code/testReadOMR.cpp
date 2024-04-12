//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
//---------------------------------------------------------------------------
USEFORM("DMUnit.cpp", DM); /* TDataModule: File Type */
USEFORM("ParentUnit.cpp", ParentForm);
USEFORM("ReadOMRUnit.cpp", ReadFromOMR);
USEFORM("QuestionsModificationUnit.cpp", QuestionsModificationForm);
//---------------------------------------------------------------------------
WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
        try
        {
                 Application->Initialize();
                 Application->CreateForm(__classid(TReadFromOMR), &ReadFromOMR);
                 Application->CreateForm(__classid(TDM), &DM);
                 Application->CreateForm(__classid(TParentForm), &ParentForm);
                 Application->CreateForm(__classid(TQuestionsModificationForm), &QuestionsModificationForm);
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
