inherited PreManualReadForm: TPreManualReadForm
  Left = 78
  Top = 236
  Width = 785
  Height = 533
  Caption = #1575#1606#1578#1582#1575#1576' '#1583#1585#1587' '#1576#1585#1575#1610' '#1582#1608#1575#1606#1583#1606' '#1583#1587#1578#1610' '#1662#1575#1587#1582#1606#1575#1605#1607' '#1607#1575
  Color = clMoneyGreen
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label12: TLabel [0]
    Left = 482
    Top = 416
    Width = 72
    Height = 16
    Caption = #1578#1593#1583#1575#1583#1662#1575#1587#1582#1606#1575#1605#1607' '#1607#1575
  end
  inherited ReturnToMainBitBtn: TBitBtn
    Left = 219
    Top = 438
  end
  inherited StatusPanel: TPanel
    Top = 488
    Width = 777
    inherited UnitNameDBText: TDBText
      Left = 668
    end
    inherited MsgLabel: TLabel
      Width = 514
    end
  end
  object SabtBtn: TBitBtn
    Left = 413
    Top = 438
    Width = 194
    Height = 38
    Caption = #1579#1576#1578
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = SabtBtnClick
    Kind = bkOK
  end
  object GroupBox1: TGroupBox
    Left = 343
    Top = 16
    Width = 426
    Height = 377
    Caption = #1605#1588#1582#1589#1575#1578' '#1575#1587#1578#1575#1583
    Color = clMoneyGreen
    ParentColor = False
    TabOrder = 3
    OnExit = GroupBox1Exit
    object Label1: TLabel
      Left = 526
      Top = 40
      Width = 35
      Height = 16
      Caption = #1603#1583' '#1575#1587#1578#1575#1583
    end
    object DBEdit1: TDBEdit
      Left = 480
      Top = 32
      Width = 41
      Height = 24
      BiDiMode = bdRightToLeft
      DataField = 'TeacherID'
      DataSource = DM.AlakiDS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 24
      Width = 409
      Height = 339
      DataSource = TeachersNameQueryDS
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'TeacherID'
          Title.Caption = #1603#1583' '#1575#1587#1578#1575#1583
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LastName'
          Title.Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FirstName'
          Title.Caption = #1606#1575#1605
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HamkariName'
          Title.Caption = #1606#1608#1593' '#1607#1605#1603#1575#1585#1610
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GroupName'
          Title.Caption = #1606#1575#1605' '#1711#1585#1608#1607
          Width = 108
          Visible = True
        end>
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 16
    Width = 331
    Height = 377
    Caption = #1605#1588#1582#1589#1575#1578' '#1583#1585#1587
    Color = clMoneyGreen
    ParentColor = False
    TabOrder = 4
    object Label8: TLabel
      Left = 274
      Top = 352
      Width = 47
      Height = 16
      Caption = #1711#1585#1608#1607' '#1583#1585#1587
    end
    object GroupIDDBBox: TDBLookupComboBox
      Left = 88
      Top = 347
      Width = 177
      Height = 24
      DataField = 'GroupID'
      DataSource = DM.AlakiDS
      KeyField = 'GroupID'
      ListField = 'GroupName'
      ListSource = DM.GroupsDS
      TabOrder = 0
    end
    object DBGrid2: TDBGrid
      Left = 8
      Top = 24
      Width = 314
      Height = 318
      DataSource = LessonsDS
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      OnKeyPress = DBGrid2KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'LessonID'
          Title.Caption = #1603#1583#1583#1585#1587
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LessonName'
          Title.Caption = #1606#1575#1605' '#1583#1585#1587
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LessonTypeName'
          Title.Caption = #1606#1608#1593' '#1583#1585#1587
          Width = 60
          Visible = True
        end>
    end
  end
  object ManualReadBtn: TBitBtn
    Left = 272
    Top = 408
    Width = 115
    Height = 25
    Caption = #1582#1608#1575#1606#1583#1606' '#1662#1575#1587#1582#1606#1575#1605#1607' '#1607#1575
    TabOrder = 5
    OnClick = ManualReadBtnClick
  end
  object TPasokhEdit: TEdit
    Left = 432
    Top = 408
    Width = 41
    Height = 24
    TabOrder = 6
    Text = '20'
    OnKeyPress = TPasokhEditKeyPress
  end
  object TeachersNameQuery: TQuery
    Active = True
    DatabaseName = 'atNezarat'
    DataSource = DM.TermsDS
    SQL.Strings = (
      
        'SELECT DISTINCT T.TeacherID,T.LastName,T.FirstName ,T.LastName2,' +
        'T.FirstName2'
      '  ,H.HamkariName,G.GroupName,F.FacultyName,VT.GroupID'
      'FROM Teachers T,varTeachers VT,Hamkari H,Faculties F,Groups G'
      
        'WHERE T.TeacherID=VT.TeacherID and VT.TermID=:TermID and VT.Hamk' +
        'ariID=H.HamkariID '
      '   and VT.GroupID=G.GroupID'#13' and G.FacultyID=F.FacultyID'#10
      ''
      ''
      ''
      ''
      ''
      ''
      #13'ORDER BY T.LastName2,T.FirstName2')
    Left = 368
    Top = 8
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
    object TeachersNameQueryHamkariName: TStringField
      FieldName = 'HamkariName'
      Origin = 'ATNEZARAT."Hamkari.DB".HamkariName'
      Size = 13
    end
    object TeachersNameQueryGroupName: TStringField
      FieldName = 'GroupName'
      Origin = 'ATNEZARAT."Groups.DB".GroupName'
      Size = 22
    end
    object TeachersNameQueryFacultyName: TStringField
      FieldName = 'FacultyName'
      Origin = 'ATNEZARAT."Faculties.DB".FacultyName'
      Size = 22
    end
    object TeachersNameQueryGroupID: TSmallintField
      FieldName = 'GroupID'
      Origin = 'ATNEZARAT."varTeachers.DB".GroupID'
    end
    object TeachersNameQueryLastName: TStringField
      FieldName = 'LastName'
      Origin = 'ATNEZARAT."Teachers.DB".LastName'
    end
    object TeachersNameQueryFirstName: TStringField
      FieldName = 'FirstName'
      Origin = 'ATNEZARAT."Teachers.DB".FirstName'
      Size = 15
    end
  end
  object TeachersNameQueryDS: TDataSource
    DataSet = TeachersNameQuery
    Left = 400
    Top = 8
  end
  object Lessons: TTable
    Active = True
    DatabaseName = 'atNezarat'
    IndexName = 'LessonName2IDX'
    ReadOnly = True
    TableName = 'Lessons.DB'
    Left = 8
    Top = 16
    object LessonsLessonID: TSmallintField
      FieldName = 'LessonID'
      Required = True
    end
    object LessonsLessonName: TStringField
      FieldName = 'LessonName'
      Size = 35
    end
    object LessonsLessonName2: TStringField
      FieldName = 'LessonName2'
      Size = 50
    end
    object LessonsNOTUT: TSmallintField
      FieldName = 'NOTUT'
    end
    object LessonsNOOPE: TSmallintField
      FieldName = 'NOOPE'
    end
    object LessonsLessonTypeID: TSmallintField
      FieldName = 'LessonTypeID'
    end
    object LessonsLessonTypeName: TStringField
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
  object LessonsDS: TDataSource
    DataSet = Lessons
    Left = 40
    Top = 16
  end
end
