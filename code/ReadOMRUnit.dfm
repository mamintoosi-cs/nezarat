inherited ReadFromOMR: TReadFromOMR
  Left = 43
  Top = 139
  Width = 749
  Height = 483
  Caption = 'ReadFromOMR'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel [0]
    Left = 55
    Top = 384
    Width = 77
    Height = 16
    BiDiMode = bdLeftToRight
    Caption = #1578#1593#1583#1575#1583' '#1585#1603#1608#1585#1583#1607#1575
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'System'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
  end
  object Label2: TLabel [1]
    Left = 55
    Top = 400
    Width = 44
    Height = 16
    BiDiMode = bdLeftToRight
    Caption = 'Label2'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'System'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    Visible = False
  end
  object Label3: TLabel [2]
    Left = 661
    Top = 296
    Width = 38
    Height = 16
    Caption = #1606#1575#1605' '#1575#1587#1578#1575#1583
  end
  object Label4: TLabel [3]
    Left = 661
    Top = 328
    Width = 38
    Height = 16
    Caption = #1606#1575#1605' '#1583#1585#1587
  end
  object Label5: TLabel [4]
    Left = 623
    Top = 352
    Width = 76
    Height = 16
    Caption = #1578#1593#1583#1575#1583' '#1662#1575#1587#1582#1606#1575#1605#1607' '#1607#1575
  end
  object TPasokhLabel: TLabel [5]
    Left = 614
    Top = 352
    Width = 5
    Height = 16
    Caption = #1567
  end
  object Label6: TLabel [6]
    Left = 423
    Top = 380
    Width = 70
    Height = 16
    Caption = 'Stop Code:'
  end
  object ReadAndTestBtn: TBitBtn [7]
    Left = 208
    Top = 288
    Width = 185
    Height = 25
    Caption = #1576#1585#1585#1587#1610' '#1583#1585#1608#1587' '#1582#1608#1575#1606#1583#1607' '#1588#1583#1607' '#1575#1586' '#1583#1587#1578#1711#1575#1607
    TabOrder = 4
    OnClick = ReadAndTestBtnClick
  end
  inherited StatusPanel: TPanel [8]
    Top = 438
    Width = 741
    TabOrder = 2
    inherited UnitNameDBText: TDBText
      Left = 632
    end
    inherited MsgLabel: TLabel
      Width = 478
      Caption = #1605#1588#1582#1589#1607' '#1607#1575#1610' '#1582#1575#1585#1580' '#1575#1586' '#1605#1581#1583#1608#1583#1607' '#1605#1580#1575#1586' '#1576#1575' '#1589#1601#1585' '#1580#1575#1610#1711#1586#1610#1606' '#1582#1608#1575#1607#1606#1583' '#1588#1583
    end
    object ProgressBar1: TProgressBar
      Left = 3
      Top = 1
      Width = 270
      Height = 16
      Min = 0
      Max = 100
      Smooth = True
      Step = 1
      TabOrder = 0
    end
  end
  object ComputeGradesBtn: TBitBtn [9]
    Left = 208
    Top = 312
    Width = 185
    Height = 25
    Caption = #1605#1581#1575#1587#1576#1607' '#1606#1605#1585#1575#1578' '#1583#1585#1608#1587' '#1602#1585#1575#1574#1578' '#1588#1583#1607
    Enabled = False
    TabOrder = 1
    OnClick = ComputeGradesBtnClick
  end
  object Button1: TButton [10]
    Left = 152
    Top = 368
    Width = 75
    Height = 25
    Caption = 'Button1'
    Enabled = False
    TabOrder = 3
    Visible = False
    OnClick = Button1Click
  end
  object TeacherBox: TDBLookupComboBox [11]
    Left = 416
    Top = 288
    Width = 233
    Height = 24
    DataField = 'TeacherID'
    DataSource = DM.AlakiDS
    Enabled = False
    KeyField = 'TeacherID'
    ListField = 'TeacherProperties'
    ListSource = TeachersNameQueryDS
    TabOrder = 5
    OnClick = TeacherBoxClick
  end
  object LessonBox: TDBLookupComboBox [12]
    Left = 416
    Top = 320
    Width = 233
    Height = 24
    DataField = 'LessonID'
    DataSource = DM.AlakiDS
    Enabled = False
    KeyField = 'LessonID'
    ListField = 'LessonName'
    ListSource = LessonsDS
    TabOrder = 6
    OnClick = LessonBoxClick
  end
  object DeleteBtn: TBitBtn [13]
    Left = 208
    Top = 336
    Width = 185
    Height = 25
    Caption = #1581#1584#1601' '#1583#1585#1608#1587' '#1605#1581#1575#1587#1576#1607' '#1588#1583#1607' '#1578#1585#1605' '#1580#1575#1585#1610
    TabOrder = 7
    OnClick = DeleteBtnClick
  end
  inherited ReturnToMainBitBtn: TBitBtn [14]
    Left = 208
    Top = 360
    Width = 185
  end
  object DBGrid1: TDBGrid
    Left = 48
    Top = 16
    Width = 657
    Height = 256
    BiDiMode = bdLeftToRight
    DataSource = DM.OMRDS
    ParentBiDiMode = False
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
  end
  object LessonsDBGrid: TDBGrid
    Left = 192
    Top = 104
    Width = 401
    Height = 108
    Color = clInfoBk
    DataSource = LessonsDS
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    Visible = False
    OnKeyPress = LessonsDBGridKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'LessonID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LessonName'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LessonTypeID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LessonTypeName'
        Visible = True
      end>
  end
  object StopCodeEdit: TEdit
    Left = 515
    Top = 376
    Width = 49
    Height = 24
    TabOrder = 10
    Text = '999'
    OnExit = StopCodeEditExit
  end
  object FareghRadioGroup: TRadioGroup
    Left = 48
    Top = 296
    Width = 145
    Height = 73
    Caption = #1602#1585#1575#1574#1578': '
    ItemIndex = 1
    Items.Strings = (
      #1576#1585#1711#1607' '#1607#1575#1610' '#1601#1575#1585#1594' '#1575#1604#1578#1581#1589#1610#1604#1575#1606
      #1587#1575#1610#1585' '#1576#1585#1711#1607' '#1607#1575)
    TabOrder = 11
    OnClick = FareghRadioGroupClick
  end
  object DeleteFromVarResults: TQuery
    DatabaseName = 'atNezarat'
    DataSource = DM.TermsDS
    SQL.Strings = (
      'DELETE FROM varResults'
      'WHERE ID in'
      '(select id from varQLT '
      ' where TermID=:TermID)')
    Left = 112
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TermID'
        ParamType = ptUnknown
      end>
  end
  object DeleteFromVarQLT: TQuery
    DatabaseName = 'atNezarat'
    DataSource = DM.TermsDS
    SQL.Strings = (
      'DELETE FROM varQLT '
      ' where TermID=:TermID')
    Left = 144
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TermID'
        ParamType = ptUnknown
      end>
  end
  object ExistDarsQry: TQuery
    Active = True
    DatabaseName = 'atNezarat'
    DataSource = DM.TermsDS
    SQL.Strings = (
      'select *'
      'from varQLT'
      
        'where LessonID=:lessonID and TeacherID=:teacherID and TermID=:Te' +
        'rmID')
    Left = 32
    Top = 48
    ParamData = <
      item
        DataType = ftInteger
        Name = 'lessonID'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'teacherID'
        ParamType = ptUnknown
        Value = 0
      end
      item
        DataType = ftSmallint
        Name = 'TermID'
        ParamType = ptUnknown
        Size = 2
      end>
  end
  object ColumnsCoefs: TTable
    Active = True
    DatabaseName = 'atNezarat'
    TableName = 'ColumnsCoefs.db'
    Left = 64
    Top = 8
  end
  object varQuestions: TTable
    Active = True
    DatabaseName = 'atNezarat'
    Filter = 'LessonTypeID=1'
    Filtered = True
    IndexFieldNames = 'TermID;LessonTypeID;RowNo'
    MasterFields = 'TermID'
    MasterSource = DM.TermsDS
    TableName = 'varQuestions.DB'
    Left = 32
    Top = 8
  end
  object MaxIDQuery: TQuery
    DatabaseName = 'atNezarat'
    SQL.Strings = (
      'select max(ID) as maxID'
      'from varQLT')
    Left = 112
    Top = 48
    object MaxIDQuerymaxID: TIntegerField
      FieldName = 'maxID'
      Origin = 'ATNEZARAT."varQLT.DB".ID'
    end
  end
  object TeacherGroupIDQuery: TQuery
    DatabaseName = 'atNezarat'
    DataSource = DM.TermsDS
    SQL.Strings = (
      'select groupID'
      'from varTeachers'
      'where TermID=:TermID and TeacherID=:teacherID')
    Left = 144
    Top = 48
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'TermID'
        ParamType = ptUnknown
        Size = 2
      end
      item
        DataType = ftUnknown
        Name = 'teacherID'
        ParamType = ptUnknown
      end>
    object TeacherGroupIDQuerygroupID: TSmallintField
      FieldName = 'groupID'
      Origin = 'ATNEZARAT."varTeachers.DB".GroupID'
    end
  end
  object TeachersNameQuery: TQuery
    Active = True
    DatabaseName = 'atNezarat'
    DataSource = DM.TermsDS
    SQL.Strings = (
      
        'SELECT DISTINCT T.TeacherID,T.LastName+"'#1548' "+T.FirstName+" --- "+' +
        'G.GroupName+" -- "+'
      '  H.HamkariName as TeacherProperties,T.LastName2,T.FirstName2'
      'FROM Teachers T,varTeachers VT,Hamkari H,Groups G'
      
        'WHERE T.TeacherID=VT.TeacherID and VT.TermID=:TermID and VT.Hamk' +
        'ariID=H.HamkariID'
      '   and VT.GroupID=G.GroupID'
      'ORDER BY T.LastName2,T.FirstName2')
    Left = 400
    Top = 40
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'TermID'
        ParamType = ptUnknown
        Size = 2
      end>
    object TeachersNameQueryTeacherID: TSmallintField
      FieldName = 'TeacherID'
      Origin = 'ATNEZARAT."Teachers.DB".TeacherID'
    end
    object TeachersNameQueryTeacherProperties: TStringField
      FieldName = 'TeacherProperties'
      Origin = 'ATNEZARAT."Teachers.DB".LastName'
      Size = 73
    end
    object TeachersNameQueryLastName2: TStringField
      FieldName = 'LastName2'
      Origin = 'ATNEZARAT."Teachers.DB".LastName2'
      Size = 30
    end
    object TeachersNameQueryFirstName2: TStringField
      FieldName = 'FirstName2'
      Origin = 'ATNEZARAT."Teachers.DB".FirstName2'
      Size = 25
    end
  end
  object TeachersNameQueryDS: TDataSource
    DataSet = TeachersNameQuery
    Left = 432
    Top = 40
  end
  object LessonsDS: TDataSource
    DataSet = Lessons
    Left = 432
    Top = 72
  end
  object Lessons: TTable
    Active = True
    DatabaseName = 'atNezarat'
    IndexName = 'LessonName2IDX'
    TableName = 'Lessons.DB'
    Left = 400
    Top = 72
    object LessonsLessonID: TSmallintField
      DisplayLabel = #1603#1583' '#1583#1585#1587
      DisplayWidth = 5
      FieldName = 'LessonID'
      ReadOnly = True
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
      LookupDataSet = DM.LessonsTypes
      LookupKeyFields = 'LessonTypeID'
      LookupResultField = 'LessonTypeName'
      KeyFields = 'LessonTypeID'
      Size = 11
      Lookup = True
    end
  end
  object DeleteFromOMRQuery: TQuery
    DatabaseName = 'OMRData'
    SQL.Strings = (
      'DELETE FROM OMRData')
    Left = 32
    Top = 80
  end
end
