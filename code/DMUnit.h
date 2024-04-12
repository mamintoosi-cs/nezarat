//---------------------------------------------------------------------------

#ifndef DMUnitH
#define DMUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <Db.hpp>
#include <DBTables.hpp>
#include <DB.hpp>
#include <MXTABLES.hpp>

#define MaxValueofLessonsNo 30000
#define MaxValueofTeachersNo 500
#define MaxValueofGroupsNo 50
#define MaxValueofFacultiesNo 10
#define MaxNoofQuestions 50
#define MaxNoofColumns 6
#define MaxNoofLessonTypes 6 //It should greater than Number of Lesson Types 
struct AvgAndCount
        {
        float average;
        int count;
        int lastRotbeh;
        };

//---------------------------------------------------------------------------
class TDM : public TDataModule
{
__published:	// IDE-managed Components
        TTable *Faculties;
        TTable *Groups;
        TTable *Teachers;
        TTable *varQuestions;
        TTable *varResults;
        TTable *ColumnsCoefs;
        TDataSource *FacultiesDS;
        TDataSource *GroupsDS;
        TDataSource *TeachersDS;
        TDataSource *varQuestionsDS;
        TDataSource *varResultsDS;
        TDataSource *ColumnsCoefsDS;
        TTable *Lessons;
        TDataSource *LessonsDS;
        TTable *varQLT;
        TDataSource *varQLTDS;
        TTable *OMR;
        TDataSource *OMRDS;
        TTable *Hamkari;
        TTable *Madrak;
        TTable *Degree;
        TDataSource *HamkariDS;
        TDataSource *MadrakDS;
        TDataSource *DegreeDS;
        TTable *Alaki;
        TDataSource *AlakiDS;
        TDataSource *UnitInfoDS;
        TTable *UnitInfo;
        TQuery *GroupsQuery;
        TDataSource *GroupsQueryDS;
        TDataSource *FacultiesQueryDS;
        TQuery *FacultiesQuery;
        TTable *varTeachers;
        TDataSource *varTeachersDS;
        TDataSource *TermsDS;
        TTable *Terms;
        TTable *Condition;
        TDataSource *ConditionDS;
        TTable *Jens;
        TDataSource *JensDS;
        TTable *Language;
        TDataSource *LanguageDS;
        TTable *QuestionsGroups;
        TDataSource *QuestionsGroupsDS;
        TSmallintField *FacultiesFacultyID;
        TStringField *FacultiesFacultyName;
        TSmallintField *FacultiesFacultyBossID;
        TStringField *FacultiesBossName;
        TStringField *FacultiesFacultyName2;
        TSmallintField *GroupsGroupID;
        TStringField *GroupsGroupName;
        TStringField *GroupsGroupName2;
        TSmallintField *GroupsGroupBossID;
        TStringField *GroupsBossName;
        TStringField *GroupsFacultyName;
        TSmallintField *GroupsFacultyID;
        TTable *Marriage;
        TDataSource *MarriageDS;
        TSmallintField *LessonsLessonID;
        TStringField *LessonsLessonName;
        TStringField *LessonsLessonName2;
        TSmallintField *LessonsNOTUT;
        TSmallintField *LessonsNOOPE;
        TSmallintField *TeachersTeacherID;
        TStringField *TeachersFirstName;
        TStringField *TeachersFirstName2;
        TStringField *TeachersLastName;
        TStringField *TeachersLastName2;
        TStringField *TeachersTeacherName;
        TSmallintField *TeachersJensId;
        TSmallintField *TeachersMarriageID;
        TStringField *TeachersDateE;
        TStringField *TeachersBSCourse;
        TStringField *TeachersBSUniversity;
        TStringField *TeachersBSCountry;
        TStringField *TeachersBSDate;
        TStringField *TeachersBSProject;
        TStringField *TeachersMSCourse;
        TStringField *TeachersMSUniversity;
        TStringField *TeachersMSCountry;
        TStringField *TeachersMSDate;
        TStringField *TeachersMSProject;
        TStringField *TeachersPHDCourse;
        TStringField *TeachersPHDUniversity;
        TStringField *TeachersPHDCountry;
        TStringField *TeachersPHDDate;
        TStringField *TeachersPHDThesis;
        TStringField *TeachersDateofLastPromotion;
        TSmallintField *TeachersLang1;
        TSmallintField *TeachersLang2;
        TSmallintField *TeachersConditionID;
        TTable *Flat1;
        TDataSource *Flat1DS;
        TDataSource *ActiveTeachersDS;
        TQuery *ActiveTeachers;
        TDataSource *ActiveLessonsQueryDS;
        TQuery *ActiveLessons;
        TQuery *Flat1Query;
        TSmallintField *varQuestionsTermID;
        TSmallintField *varQuestionsLessonTypeID;
        TSmallintField *varQuestionsRowNo;
        TFloatField *varQuestionsCoef;
        TStringField *varQuestionsTitle;
        TSmallintField *varQuestionsQGroupNo;
        TSmallintField *QuestionsGroupsQGroupNo;
        TStringField *QuestionsGroupsQGroupName;
        TStringField *varQuestionsq;
        TSmallintField *LessonsLessonTypeID;
        TTable *LessonsTypes;
        TDataSource *LessonsTypesDS;
        TStringField *LessonsLessonTypeName;
        TSmallintField *TermsTermID;
        TStringField *TermsTermName;
        TStringField *TermsModirName;
        TStringField *TermsModirTitle;
        TDataSource *TeachersFlatDS;
        TTable *TeachersFlat;
        TQuery *MaxLessonIDQuery;
        TSmallintField *LessonsLessonDegreeID;
        TDataSource *LessonsDegreesDS;
        TTable *LessonsDegrees;
        TSmallintField *LessonsDegreesLessonDegreeID;
        TStringField *LessonsDegreesLessonDegreeName;
        TStringField *LessonsLessonDegreeName;
        TDataSource *EmailOptionsDS;
        TTable *EmailOptions;
        TStringField *EmailOptionsFrom;
        TStringField *EmailOptionsTo;
        TStringField *EmailOptionsCC;
        TStringField *EmailOptionsBCC;
        TStringField *EmailOptionsMailServerAddress;
        TStringField *EmailOptionsAttachments;
        TMemoField *EmailOptionsBody;
        TStringField *EmailOptionsSubject;
        TStringField *EmailOptionsUserID;
        TSmallintField *ActiveLessonsLessonID;
        TStringField *ActiveLessonsLessonName;
        TStringField *ActiveLessonsLessonName2;
        TSmallintField *ActiveLessonsTeacherID;
        TSmallintField *ActiveTeachersTeacherID;
        TStringField *ActiveTeachersTeacherName;
        TStringField *ActiveTeachersLastName2;
        TStringField *ActiveTeachersFirstName2;
        TSmallintField *ActiveTeachersFacultyID;
        TSmallintField *ActiveTeachersGroupID;
        TStringField *ActiveTeachersEmailAddress;
        TStringField *UnitInfoUnitName;
        TStringField *UnitInfoUnitBossName;
        TGraphicField *UnitInfoBlackUnitArm;
        TGraphicField *UnitInfoGrayUnitArm;
        TStringField *UnitInfoVahedeNezaratName;
        TBooleanField *UnitInfoExpired;
        TSmallintField *UnitInfoUnitBossID;
        TSmallintField *UnitInfoEducationalAssistantID;
        TStringField *ActiveTeachersReportStatus;
        TDecisionQuery *ChartDecisionQuery;
        TDataSource *ChartDecisionQueryDS;
        TFloatField *TermsLR1;
        TFloatField *TermsUR1;
        TIntegerField *TermsCR1;
        TBooleanField *TermsCUR1;
        TFloatField *TermsLR2;
        TFloatField *TermsUR2;
        TIntegerField *TermsCR2;
        TBooleanField *TermsCUR2;
        TFloatField *AlakiFloat;
        TStringField *AlakiName;
        TIntegerField *AlakiInteger;
        TSmallintField *AlakiShort1;
        TSmallintField *AlakiShort2;
        TSmallintField *AlakiShort3;
        TSmallintField *AlakiShort4;
        TSmallintField *AlakiLessonID;
        TSmallintField *AlakiTeacherID;
        TSmallintField *AlakiFacultyID;
        TSmallintField *AlakiGroupID;
        TSmallintField *AlakiFromTerm;
        TSmallintField *AlakiToTerm;
        TSmallintField *AlakiEmailRecieverID;
        TStringField *AlakiEmailRecieverAddress;
        TStringField *AlakiTeacherName;
        void __fastcall varQLTPostError(TDataSet *DataSet, EDatabaseError *E,
          TDataAction &Action);
        void __fastcall LessonsBeforePost(TDataSet *DataSet);
        void __fastcall FacultiesBeforePost(TDataSet *DataSet);
        void __fastcall GroupsBeforePost(TDataSet *DataSet);
        void __fastcall TermsAfterScroll(TDataSet *DataSet);
        void __fastcall DataModuleCreate(TObject *Sender);
        void __fastcall QuestionsGroupsBeforeDelete(TDataSet *DataSet);
        void __fastcall LessonsAfterInsert(TDataSet *DataSet);
private:	// User declarations
public:		// User declarations
        __fastcall TDM(TComponent* Owner);
        //My Global Variables
        AnsiString  FilterString;
        int NoofQuestions,NoofColumns;
        int LessonTypeID,QuestionNo;
        void recreateFlats(void);
        AnsiString LessonDegreeName[5];
        bool TerminateSW;
};


//---------------------------------------------------------------------------
extern PACKAGE TDM *DM;
//----------------------------BAZELI-----------------------------------------
//--------------------------------
 AnsiString __fastcall CurFarsiDate()
  {
    SYSTEMTIME SystemTime;
    GetLocalTime(&SystemTime);
//    CurYear=SystemTime.wYear;
//    CurMonth=SystemTime.wMonth;
//    CurDay=SystemTime.wDay;

    //PROCEDURE _FarDate
    //PARAMETERS MilDate

    int MilLen[]={0,31,28,31,30,31,30,31,31,30,31,30,31};
    int FarLen[]={0,20,30,29,31,31,31,31,31,31,30,30,30};

    int MilDay,MilMonth,MilYear,FarDay,FarMonth,FarYear,i,SumDays;;

    //* SumDays --------------------------------- ˘¢™ ˝§ï® ˝ë˚•¯§ ¢ê¢„ó
    //* MilDay,MilMonth,MilYear ---------------- ˝¢Úã˛ı Òë® ä ˘ëı ä •¯§
    //* FarDay,FarMonth,FarYear ----------------- ¸ã®ı™ Òë® ä ˘ëı ä •¯§
    //    CurYear=SystemTime.wYear;
    //    CurMonth=SystemTime.wMonth;
    //    CurDay=SystemTime.wDay;

    MilDay= SystemTime.wDay;
    MilMonth= SystemTime.wMonth;
    MilYear= SystemTime.wYear;
    bool MilCabis;
    MilCabis=( (MilYear-1996) % 4 == 0 ) ? true: false;
    if( (MilYear-622-1375) % 4 == 0 ) //&& Farsi Cabiseh?
      {
       FarLen[1]=19;
       FarLen[3]=30;
       }
    FarYear=MilYear-622;
    SumDays=0;

    for(i=1;i<=MilMonth-1;i++) SumDays+=MilLen[i];
    SumDays+=MilDay;
    if( MilCabis && MilMonth > 2 ) SumDays+=1;
    for(i=1;i<=12 && SumDays>FarLen[i];i++) SumDays-=FarLen[i];
    if (i>3)
      {
       FarDay=SumDays;
       FarMonth=i-3;
       FarYear++;
       }
    else
      {
       FarMonth=i+9;
       FarDay=(FarMonth == 10 ) ? SumDays+(30-FarLen[1]):SumDays;
       }
  AnsiString StrFarMonth=IntToStr(FarMonth);
  AnsiString StrFarDay=IntToStr(FarDay);
  if (FarMonth <=9 ) StrFarMonth="0"+IntToStr(FarMonth);
  if (FarDay <=9 ) StrFarDay="0"+IntToStr(FarDay);

  return  IntToStr(FarYear)+AnsiString("/")+StrFarMonth+AnsiString("/")+StrFarDay;

 }
//-------------------------------------------------------------------------------
bool ValidDate(AnsiString InDate)
{
 AnsiString x=InDate;
 bool Ans=true;
 AnsiString XMyYear=x.SubString(1,4);
 AnsiString XMyMonth=x.SubString(6,2);
 AnsiString XMyDay=x.SubString(9,2);
 if ( ! InDate.IsEmpty() && x != "13  /  /")
 {
  if ( XMyYear == "  " || XMyMonth == "  " || XMyDay == "  " )
      {
       Ans=false;
       if ( XMyYear == "  " && XMyMonth == "  " && XMyDay == "  " )
          Ans=true;
       }
  else
   {
    if( x.Pos(" ") != 0 ) Ans=false;
    else
      {
//      int MyYear=x.SubString(1,4).ToInt();
//      int MyMonth=x.SubString(6,2).ToInt();
//      int MyDay=x.SubString(9,2).ToInt();
      int MyYear=0;
      int MyMonth=0;
      int MyDay=0;
      if (!x.SubString(1,4).IsEmpty())
          MyYear=x.SubString(1,4).ToInt();
      if (!x.SubString(6,2).IsEmpty())
          MyMonth=x.SubString(6,2).ToInt();
      if (!x.SubString(9,2).IsEmpty())
          MyDay=x.SubString(9,2).ToInt();
      if ( MyYear > 1399 || MyYear < 1300 ) Ans=false;
      if ( MyMonth > 12 || MyMonth < 1 ) Ans=false;
      if ( MyMonth <= 6 && MyMonth >= 1 )
        if ( MyDay > 31 || MyDay < 1 ) Ans=false;
      if ( MyMonth <= 11 && MyMonth >= 7 )
        if ( MyDay > 30 || MyDay < 1 ) Ans=false;
      if (( MyMonth == 12 ) && ( (MyYear-1370)%4 == 0 ) && ( MyDay > 30 || MyDay < 1 ))
            Ans=false;
      if (( MyMonth == 12 ) && ( (MyYear-1370)%4 != 0 ) &&  ( MyDay > 29 || MyDay < 1 ))
            Ans=false;
      }
    }
  if ( Ans == false )
     MessageBox(NULL,"  «—ÌŒ €Ì— „⁄ »— «” ","Â‘œ«—", MB_ICONSTOP );

  }
 return Ans;
}
//------------------------------------------
void __fastcall DisplayError(EDatabaseError *Er,AnsiString Noa)
{
/* if (Er->ClassNameIs("EDBEngineError"))
  {
   EDBEngineError *pDBE = (EDBEngineError *)Er;
   int ErrCode=pDBE->Errors[pDBE->ErrorCount - 1]->ErrorCode;
   AnsiString msg;
   switch(ErrCode)
    {
     case DBIERR_KEYVIOL : msg = IntToStr(ErrCode)+"‘„«—Â Ì« ﬂœ " +" ( "+Noa+" ) "+" ﬂ—«—Ì «” "; break;
     case DBIERR_LOCKED  : msg = IntToStr(ErrCode)+ " ! «Ì‰ —ﬂÊ—œ  Ê”ÿ  ´ ﬂ«—»— œÌê—Ì ª œ— Õ«· ÊÌ—«Ì‘ «” "; break;
     case DBIERR_ALREADYLOCKED : msg = IntToStr(ErrCode)+ " «Ì‰ —ﬂÊ—œ ﬁ»·« ﬁ›· ‘œÂ «” °—ﬂÊ—œ ﬁ»·Ì —« ¬“«œ ﬂ‰Ìœ"; break;
     case DBIERR_FILELOCKED  :
     case DBIERR_FILEBUSY  : msg = IntToStr(ErrCode)+ " ! «Ì‰ ›«Ì·  Ê”ÿ ´ ﬂ«—»— œÌê—Ì ª œ— Õ«· ÊÌ—«Ì‘ «” "; break;
     case DBIERR_MINVALERR : msg = IntToStr(ErrCode)+ " ! «“ Õœ „Ã«“ ﬂ„ — «” "; break;
     case DBIERR_MAXVALERR : msg = IntToStr(ErrCode)+ " !«“ Õœ „Ã«“ »Ì‘ — «” "; break;
     case DBIERR_REQDERR   : msg = IntToStr(ErrCode)+ " „ﬁœ«— ›Ì·œ Ì« ” Ê‰ Œ«·Ì «” "; break;
     default : msg= Er->Message+ IntToStr(ErrCode)+ " ! Œÿ‹‹«Ì ‰«‘‰«Œ Â ! »Â „œÌ— ”Ì” „ «ÿ·«⁄ œÂÌœ";
     }
   MessageBox(NULL,msg.c_str(),"! Œÿ‹‹«",MB_ICONSTOP | MB_RIGHT | MB_OK);
   }
 else
  {
   MessageBox(NULL, Er->Message.c_str(), " ! Œÿ‹‹«Ì ‰«‘‰«Œ Â ! »Â „œÌ— ”Ì” „ «ÿ·«⁄ œÂÌœ",MB_ICONSTOP | MB_RIGHT | MB_OK);
   }
  */
 }
//---------------------------------------------------------
AnsiString Taqsim ( float f1,float f2,int Point,int Digits)
{
 AnsiString os;
 if (f2 != 0) os=FloatToStrF(f1/f2,ffFixed,Point,Digits);
 else os="0";
 return os;
}
//---------------------
bool __fastcall BetweenNum(float MyNum,float First,float Last)
{
 return ( MyNum >= First && MyNum <= Last ) ? true:false;
 }
//----------------------
bool __fastcall BetweenStr(AnsiString MyStr,AnsiString First,AnsiString Last)
{
 if (MyStr >=First && MyStr <= Last )
      return true;
 else
      return false;

 }


#endif
