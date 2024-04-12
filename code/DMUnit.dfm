object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 194
  Top = 96
  Height = 501
  Width = 560
  object Faculties: TTable
    Active = True
    BeforePost = FacultiesBeforePost
    DatabaseName = 'atNezarat'
    TableName = 'Faculties.DB'
    Left = 16
    Top = 8
    object FacultiesFacultyID: TSmallintField
      DisplayLabel = #1603#1583' '#1583#1575#1606#1588#1603#1583#1607
      DisplayWidth = 3
      FieldName = 'FacultyID'
      Required = True
    end
    object FacultiesFacultyName: TStringField
      DisplayLabel = #1606#1575#1605' '#1583#1575#1606#1588#1603#1583#1607
      DisplayWidth = 20
      FieldName = 'FacultyName'
      Size = 50
    end
    object FacultiesFacultyBossID: TSmallintField
      FieldName = 'FacultyBossID'
    end
    object FacultiesBossName: TStringField
      DisplayLabel = #1606#1575#1605' '#1585#1574#1610#1587' '#1583#1575#1606#1588#1603#1583#1607
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'BossName'
      LookupDataSet = Teachers
      LookupKeyFields = 'TeacherID'
      LookupResultField = 'TeacherName'
      KeyFields = 'FacultyBossID'
      Size = 30
      Lookup = True
    end
    object FacultiesFacultyName2: TStringField
      FieldName = 'FacultyName2'
      Size = 50
    end
  end
  object Groups: TTable
    Active = True
    BeforePost = GroupsBeforePost
    DatabaseName = 'atNezarat'
    IndexFieldNames = 'GroupName2'
    TableName = 'Groups.DB'
    Left = 136
    Top = 8
    object GroupsGroupID: TSmallintField
      DisplayLabel = #1603#1583' '#1711#1585#1608#1607
      FieldName = 'GroupID'
    end
    object GroupsGroupName: TStringField
      DisplayLabel = #1606#1575#1605' '#1711#1585#1608#1607
      FieldName = 'GroupName'
      Size = 32
    end
    object GroupsGroupName2: TStringField
      FieldName = 'GroupName2'
      Size = 32
    end
    object GroupsGroupBossID: TSmallintField
      FieldName = 'GroupBossID'
    end
    object GroupsBossName: TStringField
      DisplayLabel = #1606#1575#1605' '#1605#1583#1610#1585' '#1711#1585#1608#1607
      FieldKind = fkLookup
      FieldName = 'BossName'
      LookupDataSet = Teachers
      LookupKeyFields = 'TeacherID'
      LookupResultField = 'TeacherName'
      KeyFields = 'GroupBossID'
      Lookup = True
    end
    object GroupsFacultyName: TStringField
      DisplayLabel = #1606#1575#1605' '#1583#1575#1606#1588#1603#1583#1607
      FieldKind = fkLookup
      FieldName = 'FacultyName'
      LookupDataSet = Faculties
      LookupKeyFields = 'FacultyID'
      LookupResultField = 'FacultyName'
      KeyFields = 'FacultyID'
      Size = 30
      Lookup = True
    end
    object GroupsFacultyID: TSmallintField
      FieldName = 'FacultyID'
    end
  end
  object Teachers: TTable
    Active = True
    DatabaseName = 'atNezarat'
    FieldDefs = <
      item
        Name = 'TeacherID'
        DataType = ftSmallint
      end
      item
        Name = 'FirstName'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'FirstName2'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'LastName'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'LastName2'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'TeacherName'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Title'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'JensId'
        DataType = ftSmallint
      end
      item
        Name = 'MarriageID'
        DataType = ftSmallint
      end
      item
        Name = 'DateE'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'BSCourse'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'BSUniversity'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'BSCountry'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'BSDate'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'BSProject'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'MSCourse'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'MSUniversity'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'MSCountry'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'MSDate'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'MSProject'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'PHDCourse'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'PHDUniversity'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PHDCountry'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'PHDDate'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'PHDThesis'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'DateofLastPromotion'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Lang1'
        DataType = ftSmallint
      end
      item
        Name = 'Lang2'
        DataType = ftSmallint
      end
      item
        Name = 'ConditionID'
        DataType = ftSmallint
      end
      item
        Name = 'EMailAddress'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ReportStatus'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Fields = 'TeacherID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'FamilyIdx_Teachers'
        Fields = 'LastName2;FirstName2'
        Options = [ixCaseInsensitive]
      end>
    IndexFieldNames = 'LastName2;FirstName2'
    StoreDefs = True
    TableName = 'Teachers.DB'
    Left = 16
    Top = 56
    object TeachersTeacherID: TSmallintField
      FieldName = 'TeacherID'
    end
    object TeachersFirstName: TStringField
      FieldName = 'FirstName'
      Size = 15
    end
    object TeachersFirstName2: TStringField
      FieldName = 'FirstName2'
      Size = 25
    end
    object TeachersLastName: TStringField
      FieldName = 'LastName'
    end
    object TeachersLastName2: TStringField
      FieldName = 'LastName2'
      Size = 30
    end
    object TeachersTeacherName: TStringField
      FieldName = 'TeacherName'
      Size = 40
    end
    object TeachersMarriageID: TSmallintField
      FieldName = 'MarriageID'
    end
    object TeachersDateE: TStringField
      FieldName = 'DateE'
      Size = 8
    end
    object TeachersBSCourse: TStringField
      FieldName = 'BSCourse'
      Size = 30
    end
    object TeachersBSUniversity: TStringField
      FieldName = 'BSUniversity'
    end
    object TeachersBSCountry: TStringField
      FieldName = 'BSCountry'
      Size = 15
    end
    object TeachersJensId: TSmallintField
      FieldName = 'JensId'
    end
    object TeachersBSDate: TStringField
      FieldName = 'BSDate'
      Size = 4
    end
    object TeachersBSProject: TStringField
      FieldName = 'BSProject'
      Size = 100
    end
    object TeachersMSCourse: TStringField
      FieldName = 'MSCourse'
      Size = 30
    end
    object TeachersMSUniversity: TStringField
      FieldName = 'MSUniversity'
    end
    object TeachersMSCountry: TStringField
      FieldName = 'MSCountry'
      Size = 15
    end
    object TeachersMSDate: TStringField
      FieldName = 'MSDate'
      Size = 4
    end
    object TeachersMSProject: TStringField
      FieldName = 'MSProject'
      Size = 100
    end
    object TeachersPHDCourse: TStringField
      FieldName = 'PHDCourse'
      Size = 30
    end
    object TeachersPHDUniversity: TStringField
      FieldName = 'PHDUniversity'
    end
    object TeachersPHDCountry: TStringField
      FieldName = 'PHDCountry'
      Size = 15
    end
    object TeachersPHDDate: TStringField
      FieldName = 'PHDDate'
      Size = 4
    end
    object TeachersPHDThesis: TStringField
      FieldName = 'PHDThesis'
      Size = 100
    end
    object TeachersDateofLastPromotion: TStringField
      FieldName = 'DateofLastPromotion'
      Size = 8
    end
    object TeachersLang1: TSmallintField
      FieldName = 'Lang1'
    end
    object TeachersLang2: TSmallintField
      FieldName = 'Lang2'
    end
    object TeachersConditionID: TSmallintField
      FieldName = 'ConditionID'
    end
  end
  object varQuestions: TTable
    Active = True
    DatabaseName = 'atNezarat'
    IndexFieldNames = 'TermID;LessonTypeID;RowNo'
    MasterFields = 'TermID'
    MasterSource = TermsDS
    TableName = 'varQuestions.DB'
    Left = 136
    Top = 56
    object varQuestionsTermID: TSmallintField
      FieldName = 'TermID'
    end
    object varQuestionsLessonTypeID: TSmallintField
      FieldName = 'LessonTypeID'
    end
    object varQuestionsRowNo: TSmallintField
      FieldName = 'RowNo'
    end
    object varQuestionsCoef: TFloatField
      FieldName = 'Coef'
    end
    object varQuestionsTitle: TStringField
      FieldName = 'Title'
      Size = 100
    end
    object varQuestionsQGroupNo: TSmallintField
      FieldName = 'QGroupNo'
    end
    object varQuestionsq: TStringField
      FieldKind = fkLookup
      FieldName = 'QGroupName'
      LookupDataSet = QuestionsGroups
      LookupKeyFields = 'QGroupNo'
      LookupResultField = 'QGroupName'
      KeyFields = 'QGroupNo'
      Size = 25
      Lookup = True
    end
  end
  object varResults: TTable
    Active = True
    DatabaseName = 'atNezarat'
    TableName = 'varResults.DB'
    Left = 16
    Top = 112
  end
  object ColumnsCoefs: TTable
    Active = True
    DatabaseName = 'atNezarat'
    TableName = 'ColumnsCoefs.db'
    Left = 136
    Top = 112
  end
  object FacultiesDS: TDataSource
    DataSet = Faculties
    Left = 72
    Top = 8
  end
  object GroupsDS: TDataSource
    DataSet = Groups
    Left = 192
    Top = 8
  end
  object TeachersDS: TDataSource
    DataSet = Teachers
    Left = 72
    Top = 56
  end
  object varQuestionsDS: TDataSource
    DataSet = varQuestions
    Left = 192
    Top = 56
  end
  object varResultsDS: TDataSource
    DataSet = varResults
    Left = 72
    Top = 112
  end
  object ColumnsCoefsDS: TDataSource
    DataSet = ColumnsCoefs
    Left = 192
    Top = 112
  end
  object Lessons: TTable
    Active = True
    AfterInsert = LessonsAfterInsert
    BeforePost = LessonsBeforePost
    DatabaseName = 'atNezarat'
    IndexName = 'LessonName2IDX'
    TableName = 'Lessons.DB'
    Left = 248
    Top = 56
    object LessonsLessonID: TSmallintField
      DisplayLabel = #1603#1583' '#1583#1585#1587
      DisplayWidth = 5
      FieldName = 'LessonID'
      Required = True
    end
    object LessonsLessonName: TStringField
      DisplayLabel = #1606#1575#1605' '#1583#1585#1587
      DisplayWidth = 25
      FieldName = 'LessonName'
      Size = 40
    end
    object LessonsLessonName2: TStringField
      FieldName = 'LessonName2'
      Size = 50
    end
    object LessonsNOTUT: TSmallintField
      DisplayLabel = #1578#1593#1583#1575#1583' '#1608#1575#1581#1583' '#1606#1592#1585#1610
      DisplayWidth = 6
      FieldName = 'NOTUT'
    end
    object LessonsNOOPE: TSmallintField
      DisplayLabel = #1578#1593#1583#1575#1583' '#1608#1575#1581#1583' '#1593#1605#1604#1610
      DisplayWidth = 6
      FieldName = 'NOOPE'
    end
    object LessonsLessonTypeID: TSmallintField
      Alignment = taCenter
      DisplayLabel = #1603#1583#1606#1608#1593' '#1583#1585#1587
      DisplayWidth = 9
      FieldName = 'LessonTypeID'
    end
    object LessonsLessonTypeName: TStringField
      DisplayLabel = #1606#1608#1593' '#1583#1585#1587
      FieldKind = fkLookup
      FieldName = 'LessonTypeName'
      LookupDataSet = LessonsTypes
      LookupKeyFields = 'LessonTypeID'
      LookupResultField = 'LessonTypeName'
      KeyFields = 'LessonTypeID'
      Size = 11
      Lookup = True
    end
    object LessonsLessonDegreeID: TSmallintField
      FieldName = 'LessonDegreeID'
    end
    object LessonsLessonDegreeName: TStringField
      FieldKind = fkLookup
      FieldName = 'LessonDegreeName'
      LookupDataSet = LessonsDegrees
      LookupKeyFields = 'LessonDegreeID'
      LookupResultField = 'LessonDegreeName'
      KeyFields = 'LessonDegreeID'
      Size = 13
      Lookup = True
    end
  end
  object LessonsDS: TDataSource
    DataSet = Lessons
    Left = 304
    Top = 56
  end
  object varQLT: TTable
    Active = True
    OnPostError = varQLTPostError
    DatabaseName = 'atNezarat'
    IndexFieldNames = 'TermID'
    MasterFields = 'TermID'
    MasterSource = TermsDS
    TableName = 'varQlt.DB'
    Left = 248
    Top = 8
  end
  object varQLTDS: TDataSource
    DataSet = varQLT
    Left = 304
    Top = 8
  end
  object OMR: TTable
    Active = True
    DatabaseName = 'OMRData'
    TableName = 'OMRData.DB'
    Left = 256
    Top = 112
  end
  object OMRDS: TDataSource
    DataSet = OMR
    Left = 304
    Top = 112
  end
  object Hamkari: TTable
    Active = True
    DatabaseName = 'atNezarat'
    TableName = 'Hamkari.db'
    Left = 16
    Top = 168
  end
  object Madrak: TTable
    Active = True
    DatabaseName = 'atNezarat'
    TableName = 'Madrak.db'
    Left = 136
    Top = 168
  end
  object Degree: TTable
    Active = True
    DatabaseName = 'atNezarat'
    TableName = 'Degree.DB'
    Left = 256
    Top = 168
  end
  object HamkariDS: TDataSource
    DataSet = Hamkari
    Left = 72
    Top = 168
  end
  object MadrakDS: TDataSource
    DataSet = Madrak
    Left = 192
    Top = 168
  end
  object DegreeDS: TDataSource
    DataSet = Degree
    Left = 304
    Top = 168
  end
  object Alaki: TTable
    Active = True
    DatabaseName = 'atNezarat'
    TableName = 'Alaki.db'
    Left = 16
    Top = 216
    object AlakiFloat: TFloatField
      FieldName = 'Float'
    end
    object AlakiName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object AlakiInteger: TIntegerField
      FieldName = 'Integer'
    end
    object AlakiShort1: TSmallintField
      FieldName = 'Short1'
    end
    object AlakiShort2: TSmallintField
      FieldName = 'Short2'
    end
    object AlakiShort3: TSmallintField
      FieldName = 'Short3'
    end
    object AlakiShort4: TSmallintField
      FieldName = 'Short4'
    end
    object AlakiLessonID: TSmallintField
      FieldName = 'LessonID'
    end
    object AlakiTeacherID: TSmallintField
      FieldName = 'TeacherID'
    end
    object AlakiFacultyID: TSmallintField
      FieldName = 'FacultyID'
    end
    object AlakiGroupID: TSmallintField
      FieldName = 'GroupID'
    end
    object AlakiFromTerm: TSmallintField
      FieldName = 'FromTerm'
    end
    object AlakiToTerm: TSmallintField
      FieldName = 'ToTerm'
    end
    object AlakiEmailRecieverID: TSmallintField
      FieldName = 'EmailRecieverID'
    end
    object AlakiEmailRecieverAddress: TStringField
      FieldName = 'EmailRecieverAddress'
      Size = 40
    end
    object AlakiTeacherName: TStringField
      FieldKind = fkLookup
      FieldName = 'TeacherName'
      LookupDataSet = Teachers
      LookupKeyFields = 'TeacherID'
      LookupResultField = 'TeacherName'
      KeyFields = 'EmailRecieverID'
      Size = 40
      Lookup = True
    end
  end
  object AlakiDS: TDataSource
    DataSet = Alaki
    Left = 72
    Top = 216
  end
  object UnitInfoDS: TDataSource
    DataSet = UnitInfo
    Left = 192
    Top = 216
  end
  object UnitInfo: TTable
    DatabaseName = 'atNezarat'
    TableName = 'UnitInfo.db'
    Left = 136
    Top = 216
    object UnitInfoUnitName: TStringField
      FieldName = 'UnitName'
      Size = 50
    end
    object UnitInfoUnitBossName: TStringField
      FieldName = 'UnitBossName'
      Size = 30
    end
    object UnitInfoBlackUnitArm: TGraphicField
      FieldName = 'BlackUnitArm'
      BlobType = ftGraphic
    end
    object UnitInfoGrayUnitArm: TGraphicField
      FieldName = 'GrayUnitArm'
      BlobType = ftGraphic
    end
    object UnitInfoVahedeNezaratName: TStringField
      FieldName = 'VahedeNezaratName'
    end
    object UnitInfoExpired: TBooleanField
      FieldName = 'Expired'
    end
    object UnitInfoUnitBossID: TSmallintField
      FieldName = 'UnitBossID'
    end
    object UnitInfoEducationalAssistantID: TSmallintField
      FieldName = 'EducationalAssistantID'
    end
  end
  object GroupsQuery: TQuery
    Active = True
    DatabaseName = 'atNezarat'
    SQL.Strings = (
      'select * '
      'from Groups'
      'order by GroupName2')
    Left = 16
    Top = 264
  end
  object GroupsQueryDS: TDataSource
    DataSet = GroupsQuery
    Left = 72
    Top = 264
  end
  object FacultiesQueryDS: TDataSource
    DataSet = FacultiesQuery
    Left = 312
    Top = 216
  end
  object FacultiesQuery: TQuery
    Active = True
    DatabaseName = 'atNezarat'
    SQL.Strings = (
      'select * '
      'from Faculties'
      'order by FacultyName2')
    Left = 256
    Top = 216
  end
  object varTeachers: TTable
    Active = True
    DatabaseName = 'atNezarat'
    IndexName = 'TermIDidx'
    MasterFields = 'TermID'
    MasterSource = TermsDS
    TableName = 'varTeachers.DB'
    Left = 136
    Top = 264
  end
  object varTeachersDS: TDataSource
    DataSet = varTeachers
    Left = 192
    Top = 264
  end
  object TermsDS: TDataSource
    DataSet = Terms
    Left = 312
    Top = 264
  end
  object Terms: TTable
    Active = True
    DatabaseName = 'atNezarat'
    TableName = 'Terms.DB'
    Left = 256
    Top = 264
    object TermsTermID: TSmallintField
      FieldName = 'TermID'
    end
    object TermsTermName: TStringField
      FieldName = 'TermName'
      Size = 30
    end
    object TermsModirName: TStringField
      FieldName = 'ModirName'
      Size = 30
    end
    object TermsModirTitle: TStringField
      FieldName = 'ModirTitle'
      Size = 30
    end
    object TermsLR1: TFloatField
      FieldName = 'LR1'
    end
    object TermsUR1: TFloatField
      FieldName = 'UR1'
    end
    object TermsCR1: TIntegerField
      FieldName = 'CR1'
    end
    object TermsCUR1: TBooleanField
      FieldName = 'CUR1'
    end
    object TermsLR2: TFloatField
      FieldName = 'LR2'
    end
    object TermsUR2: TFloatField
      FieldName = 'UR2'
    end
    object TermsCR2: TIntegerField
      FieldName = 'CR2'
    end
    object TermsCUR2: TBooleanField
      FieldName = 'CUR2'
    end
  end
  object Condition: TTable
    Active = True
    DatabaseName = 'atNezarat'
    TableName = 'Condition.db'
    Left = 16
    Top = 320
  end
  object ConditionDS: TDataSource
    DataSet = Condition
    Left = 72
    Top = 320
  end
  object Jens: TTable
    Active = True
    DatabaseName = 'atNezarat'
    TableName = 'Jens.db'
    Left = 136
    Top = 320
  end
  object JensDS: TDataSource
    DataSet = Jens
    Left = 192
    Top = 320
  end
  object Language: TTable
    Active = True
    DatabaseName = 'atNezarat'
    TableName = 'Language.db'
    Left = 256
    Top = 320
  end
  object LanguageDS: TDataSource
    DataSet = Language
    Left = 312
    Top = 320
  end
  object QuestionsGroups: TTable
    Active = True
    BeforeDelete = QuestionsGroupsBeforeDelete
    DatabaseName = 'atNezarat'
    TableName = 'QuestionsGroups.DB'
    Left = 16
    Top = 368
    object QuestionsGroupsQGroupNo: TSmallintField
      FieldName = 'QGroupNo'
    end
    object QuestionsGroupsQGroupName: TStringField
      FieldName = 'QGroupName'
      Size = 30
    end
  end
  object QuestionsGroupsDS: TDataSource
    DataSet = QuestionsGroups
    Left = 72
    Top = 368
  end
  object Marriage: TTable
    Active = True
    DatabaseName = 'atNezarat'
    TableName = 'Marriage.db'
    Left = 136
    Top = 365
  end
  object MarriageDS: TDataSource
    DataSet = Marriage
    Left = 192
    Top = 365
  end
  object Flat1: TTable
    Active = True
    DatabaseName = 'atNezarat'
    IndexName = 'TeacherAvgIDX'
    TableName = 'Flat1.DB'
    Left = 256
    Top = 365
  end
  object Flat1DS: TDataSource
    DataSet = Flat1
    Left = 312
    Top = 365
  end
  object ActiveTeachersDS: TDataSource
    DataSet = ActiveTeachers
    Left = 424
    Top = 8
  end
  object ActiveTeachers: TQuery
    Active = True
    DatabaseName = 'atNezarat'
    DataSource = TermsDS
    SQL.Strings = (
      
        'SELECT DISTINCT T.TeacherID,T.LastName+" - "+T.FirstName as Teac' +
        'herName,T.LastName2,T.FirstName2,G.FacultyID,VT.GroupID,T.EmailA' +
        'ddress,T.ReportStatus'
      'FROM Teachers T,varQLT Q, varTeachers VT, Groups G'
      
        'WHERE T.TeacherID=Q.TeacherID and Q.TermID=:TermID and T.Teacher' +
        'ID=VT.TeacherID '
      'and  VT.GroupID=G.GroupID and VT.TermID=:TermID'
      #13'ORDER BY T.LastName2,T.FirstName2')
    Left = 368
    Top = 8
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'TermID'
        ParamType = ptUnknown
        Size = 2
      end
      item
        DataType = ftSmallint
        Name = 'TermID'
        ParamType = ptUnknown
      end>
    object ActiveTeachersTeacherID: TSmallintField
      FieldName = 'TeacherID'
      Origin = 'ATNEZARAT."Teachers.DB".TeacherID'
    end
    object ActiveTeachersTeacherName: TStringField
      FieldName = 'TeacherName'
      Origin = 'ATNEZARAT."Teachers.DB".LastName'
      Size = 38
    end
    object ActiveTeachersLastName2: TStringField
      FieldName = 'LastName2'
      Origin = 'ATNEZARAT."Teachers.DB".LastName2'
      Size = 30
    end
    object ActiveTeachersFirstName2: TStringField
      FieldName = 'FirstName2'
      Origin = 'ATNEZARAT."Teachers.DB".FirstName2'
      Size = 25
    end
    object ActiveTeachersFacultyID: TSmallintField
      FieldName = 'FacultyID'
      Origin = 'ATNEZARAT."varTeachers.DB".FacultyID'
    end
    object ActiveTeachersGroupID: TSmallintField
      FieldName = 'GroupID'
      Origin = 'ATNEZARAT."varTeachers.DB".GroupID'
    end
    object ActiveTeachersEmailAddress: TStringField
      FieldName = 'EmailAddress'
      Origin = 'ATNEZARAT."Teachers.DB".EmailAddress'
      Size = 40
    end
    object ActiveTeachersReportStatus: TStringField
      FieldName = 'ReportStatus'
      Origin = 'ATNEZARAT."Teachers.DB".ReportStatus'
      Size = 1
    end
  end
  object ActiveLessonsQueryDS: TDataSource
    DataSet = ActiveLessons
    Left = 424
    Top = 56
  end
  object ActiveLessons: TQuery
    Active = True
    DatabaseName = 'atNezarat'
    DataSource = TermsDS
    SQL.Strings = (
      
        'SELECT C.LessonID,C.LessonName+" - " +T.LastName as LessonName,C' +
        '.LessonName2,T.TeacherID'
      'FROM varQLT Q,Lessons C,Teachers T'
      
        'WHERE Q.LessonID=C.LessonID and Q.TermID=:TermID and T.TeacherID' +
        '=Q.TeacherID'
      'ORDER BY C.LessonName2')
    Left = 368
    Top = 56
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'TermID'
        ParamType = ptUnknown
        Size = 2
      end>
    object ActiveLessonsLessonID: TSmallintField
      FieldName = 'LessonID'
      Origin = 'ATNEZARAT."Lessons.DB".LessonID'
    end
    object ActiveLessonsLessonName: TStringField
      FieldName = 'LessonName'
      Origin = 'ATNEZARAT."Lessons.DB".LessonName'
      Size = 58
    end
    object ActiveLessonsLessonName2: TStringField
      FieldName = 'LessonName2'
      Origin = 'ATNEZARAT."Lessons.DB".LessonName2'
      Size = 50
    end
    object ActiveLessonsTeacherID: TSmallintField
      FieldName = 'TeacherID'
      Origin = 'ATNEZARAT."Teachers.DB".TeacherID'
    end
  end
  object Flat1Query: TQuery
    DatabaseName = 'atNezarat'
    DataSource = TermsDS
    SQL.Strings = (
      'insert into flat1'
      
        'select Q.ID,T.TeacherID,T.FirstName,T.LastName,Q.TermID,H.Hamkar' +
        'iID,H.HamkariName,M.MadrakID,M.MadrakName,'
      
        '   F.FacultyID,F.FacultyName,G.GroupID,G.GroupName,J.JensID,J.Je' +
        'nsName,L.LessonID,L.LessonName,Q.Average,Q.Rotbeh,Q.TPasokh,0,0,' +
        '0'
      
        'from Teachers T,varQLT Q,Madrak M,Hamkari H,Lessons L,varTeacher' +
        's VT,Faculties F,Groups G,Jens J'
      'where T.TeacherID=Q.TeacherID and T.TeacherID=VT.TeacherID and'
      
        '  VT.MadrakID=M.MadrakID and VT.HamkariID=H.HamkariID and VT.Fac' +
        'ultyID=F.FacultyID '
      '  and VT.GroupID=G.GroupID and T.JensID=J.JensID'
      
        '  and Q.LessonID=L.LessonID and Q.TermID=:TermID and VT.TermID=:' +
        'TermID')
    Left = 376
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TermID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TermID'
        ParamType = ptUnknown
      end>
  end
  object LessonsTypes: TTable
    Active = True
    BeforePost = LessonsBeforePost
    DatabaseName = 'atNezarat'
    TableName = 'LessonsTypes.db'
    Left = 376
    Top = 272
  end
  object LessonsTypesDS: TDataSource
    DataSet = LessonsTypes
    Left = 432
    Top = 272
  end
  object TeachersFlatDS: TDataSource
    DataSet = TeachersFlat
    Left = 432
    Top = 365
  end
  object TeachersFlat: TTable
    Active = True
    DatabaseName = 'atNezarat'
    TableName = 'TeachersFlat.DB'
    Left = 376
    Top = 365
  end
  object MaxLessonIDQuery: TQuery
    Active = True
    DatabaseName = 'atNezarat'
    SQL.Strings = (
      'SELECT MAX(LessonID) as maxLessonID'
      'FROM Lessons ')
    Left = 368
    Top = 112
  end
  object LessonsDegreesDS: TDataSource
    DataSet = LessonsDegrees
    Left = 424
    Top = 168
  end
  object LessonsDegrees: TTable
    Active = True
    AfterInsert = LessonsAfterInsert
    BeforePost = LessonsBeforePost
    DatabaseName = 'atNezarat'
    TableName = 'LessonsDegrees.db'
    Left = 368
    Top = 168
    object LessonsDegreesLessonDegreeID: TSmallintField
      FieldName = 'LessonDegreeID'
    end
    object LessonsDegreesLessonDegreeName: TStringField
      FieldName = 'LessonDegreeName'
      Size = 15
    end
  end
  object EmailOptionsDS: TDataSource
    DataSet = EmailOptions
    Left = 72
    Top = 416
  end
  object EmailOptions: TTable
    Active = True
    AutoCalcFields = False
    BeforeDelete = QuestionsGroupsBeforeDelete
    DatabaseName = 'atNezarat'
    TableName = 'EMailOptions'
    TableType = ttParadox
    Left = 16
    Top = 416
    object EmailOptionsFrom: TStringField
      FieldName = 'From'
      Size = 40
    end
    object EmailOptionsTo: TStringField
      FieldName = 'To'
      Size = 40
    end
    object EmailOptionsCC: TStringField
      FieldName = 'CC'
      Size = 100
    end
    object EmailOptionsBCC: TStringField
      FieldName = 'BCC'
      Size = 100
    end
    object EmailOptionsMailServerAddress: TStringField
      FieldName = 'MailServerAddress'
      Size = 40
    end
    object EmailOptionsAttachments: TStringField
      FieldName = 'Attachments'
      Size = 100
    end
    object EmailOptionsBody: TMemoField
      FieldName = 'Body'
      BlobType = ftMemo
      Size = 200
    end
    object EmailOptionsSubject: TStringField
      FieldName = 'Subject'
      Size = 80
    end
    object EmailOptionsUserID: TStringField
      FieldName = 'UserID'
      Size = 40
    end
  end
  object ChartDecisionQuery: TDecisionQuery
    Active = True
    DatabaseName = 'atNezarat'
    SQL.Strings = (
      'SELECT TermID,  AVG( Average )  moadel'
      'FROM "varQlt.DB" Varqlt'
      'WHERE  teacherid = :TeacherID'
      'GROUP BY TermID')
    Left = 136
    Top = 416
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'TeacherID'
        ParamType = ptUnknown
        Value = 42
      end>
  end
  object ChartDecisionQueryDS: TDataSource
    DataSet = ChartDecisionQuery
    Left = 176
    Top = 416
  end
end
