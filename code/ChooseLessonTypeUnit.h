//---------------------------------------------------------------------------

#ifndef ChooseLessonTypeUnitH
#define ChooseLessonTypeUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "ParentUnit.h"
#include <Buttons.hpp>
#include <ExtCtrls.hpp>
#include <DBCtrls.hpp>
#include <DB.hpp>
#include <DBTables.hpp>
#include "DMUnit.H"
#include <ComCtrls.hpp>
struct TeacherAvgAndCount
        {
        float average;
        int count;
        int lastRotbeh;
        short teacherID,groupID,facultyID;
        int rInGroup,rInFaculty,rInUniversity;//r:Rotbeh
        };
struct AvgAndID
        {
        float average;
        long int ID;
        int rotbeh;
        };
//---------------------------------------------------------------------------
class TChooseLessonType : public TParentForm
{
__published:	// IDE-managed Components
        TRadioGroup *NDRadioGroup;
        TQuery *InsertToTeachersFlat;
        TQuery *EmptyTeachersFlat;
        TLabel *Label1;
        TLabel *Label2;
        TLabel *Label3;
        TDBText *MinIDDBText;
        TQuery *MinIDQuery;
        TDataSource *MinIDQueryDS;
        TDBText *MaxIDDBText;
        TDataSource *MaxIDQueryDS;
        TQuery *MaxIDQuery;
        TProgressBar *ProgressBar1;
        TLabel *Label4;
        void __fastcall FormShow(TObject *Sender);
        void __fastcall ReturnToMain();
private:	// User declarations
public:		// User declarations
        __fastcall TChooseLessonType(TComponent* Owner);
        void sortTeachers(TeacherAvgAndCount *,int);
        void sortLessons(AvgAndID *,int);
        void computeAverages(void);
        TeacherAvgAndCount T[MaxValueofTeachersNo],T2[MaxValueofTeachersNo];
        AvgAndCount G[MaxValueofGroupsNo],F[MaxValueofFacultiesNo],U;
        AvgAndID *L,*L2;
        bool isItFirstTime;
};
//---------------------------------------------------------------------------
extern PACKAGE TChooseLessonType *ChooseLessonType;
//---------------------------------------------------------------------------
#endif
