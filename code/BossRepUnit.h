//---------------------------------------------------------------------------

#ifndef BossRepUnitH
#define BossRepUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "BossParentRepUnit.h"
#include <ExtCtrls.hpp>
#include <Graphics.hpp>
#include <QRCtrls.hpp>
#include <QuickRpt.hpp>
//---------------------------------------------------------------------------
class TBossRep : public TBossParentRep
{
__published:	// IDE-managed Components
        TQRDBText *Rotbeh;
        TQRDBText *FacultyAvg;
        TQRDBText *GroupAvg;
        TQRDBText *Moadel;
        TQRDBText *TPasokh;
        TQRDBText *Average;
        TQRDBText *Madrak;
        TQRDBText *Hamkari;
        TQRDBText *LessonName;
        TQRDBText *Name;
        TQRDBText *Family;
        TQRLabel *FamilyLabel;
        TQRLabel *NameLabel;
        TQRLabel *LessonNameLabel;
        TQRLabel *HamkariLabel;
        TQRLabel *MadrakLabel;
        TQRLabel *AverageLabel;
        TQRLabel *TPasokhLabel;
        TQRLabel *MoadelLabel;
        TQRLabel *GroupLabel;
        TQRLabel *FacultyLabel;
        TQRLabel *RotbehLabel;
        void __fastcall DetailBandBeforePrint(TQRCustomBand *Sender,
          bool &PrintBand);
private:	// User declarations
public:		// User declarations
        __fastcall TBossRep(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TBossRep *BossRep;
//---------------------------------------------------------------------------
#endif
