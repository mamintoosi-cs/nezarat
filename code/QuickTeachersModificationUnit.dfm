inherited QuickTeachersModificationForm: TQuickTeachersModificationForm
  Left = 224
  Top = 138
  Width = 800
  Height = 600
  Caption = 'QuickTeachersModificationForm'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object DBText1: TDBText [0]
    Left = 544
    Top = 508
    Width = 153
    Height = 17
    DataField = 'TermID'
    DataSource = DM.TermsDS
    Visible = False
  end
  inherited ReturnToMainBitBtn: TBitBtn
    Left = 307
    Top = 502
    OnClick = ReturnToMainBitBtnClick
    Kind = bkCustom
  end
  inherited StatusPanel: TPanel
    Top = 555
    Width = 792
    inherited UnitNameDBText: TDBText
      Left = 683
    end
    inherited MsgLabel: TLabel
      Width = 529
    end
  end
  object DBGrid1: TDBGrid
    Left = 19
    Top = 24
    Width = 753
    Height = 464
    DataSource = TeachersInfoQueryDS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Color = clYellow
        Expanded = False
        FieldName = 'TeacherName'
        ReadOnly = True
        Title.Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610' '#1608' '#1606#1575#1605
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Title'
        Title.Caption = #1593#1606#1608#1575#1606
        Width = 35
        Visible = True
      end
      item
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'JensId'
        Title.Alignment = taCenter
        Title.Caption = #1580
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 15
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MarriageID'
        Title.Alignment = taCenter
        Title.Caption = #1578
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 20
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'DateofLastPromotion'
        Title.Alignment = taCenter
        Title.Caption = #1578'.'#1570'.'#1575#1585#1578#1602#1575#1569
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 45
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'ReportStatus'
        Title.Alignment = taCenter
        Title.Caption = 'Mail'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'ConditionID'
        Title.Alignment = taCenter
        Title.Caption = #1608
        Width = 15
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EmailAddress'
        Title.Caption = #1570#1583#1585#1587' '#1662#1587#1578' '#1575#1604#1603#1578#1585#1608#1606#1610#1603
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HamkariID'
        Title.Caption = #1603#1583
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 15
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Hamkari'
        Title.Caption = #1606#1581#1608#1607' '#1607#1605#1603#1575#1585#1610
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DegreeID'
        Title.Caption = #1603#1583
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 15
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Degree'
        Title.Caption = #1605#1585#1578#1576#1607' '#1593#1604#1605#1610
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MadrakID'
        Title.Caption = #1603#1583
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 15
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Madrak'
        Title.Caption = #1605#1583#1585#1603
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GroupID'
        Title.Caption = #1603#1583
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Group'
        Title.Caption = #1711#1585#1608#1607
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 80
        Visible = True
      end>
  end
  object TeachersInfoQueryDS: TDataSource
    DataSet = TeachersInfoQuery
    Left = 48
    Top = 32
  end
  object LVarTeachersDS: TDataSource
    DataSet = LVarTeachers
    Left = 48
    Top = 64
  end
  object LVarTeachers: TTable
    Active = True
    DatabaseName = 'atNezarat'
    Filter = 'TermID=3'
    Filtered = True
    IndexName = 'TeacherIDidx'
    MasterFields = 'TeacherID'
    MasterSource = TeachersInfoQueryDS
    TableName = 'varTeachers.DB'
    Left = 16
    Top = 64
  end
  object LTeachers: TTable
    Active = True
    DatabaseName = 'atNezarat'
    IndexFieldNames = 'TeacherID'
    MasterFields = 'TeacherID'
    MasterSource = TeachersInfoQueryDS
    TableName = 'Teachers.DB'
    Left = 16
    Top = 96
  end
  object LTeachersDS: TDataSource
    DataSet = LTeachers
    Left = 48
    Top = 96
  end
  object TeachersInfoQuery: TQuery
    Active = True
    CachedUpdates = True
    BeforeDelete = TeachersInfoQueryBeforeDelete
    BeforeScroll = TeachersInfoQueryBeforeScroll
    OnUpdateRecord = TeachersInfoQueryUpdateRecord
    DatabaseName = 'atNezarat'
    Filter = 'TermID=3'
    Filtered = True
    RequestLive = True
    SQL.Strings = (
      'select T.*,  VT.*'
      'from Teachers T,varTeachers VT'
      'where T.TeacherID=VT.TeacherID'
      'order by lastname2')
    Left = 16
    Top = 32
    object TeachersInfoQueryTeacherID: TSmallintField
      FieldName = 'TeacherID'
      Origin = 'ATNEZARAT."Teachers.DB".TeacherID'
    end
    object TeachersInfoQueryFirstName: TStringField
      FieldName = 'FirstName'
      Origin = 'ATNEZARAT."Teachers.DB".FirstName'
      Size = 15
    end
    object TeachersInfoQueryLastName: TStringField
      FieldName = 'LastName'
      Origin = 'ATNEZARAT."Teachers.DB".LastName'
    end
    object TeachersInfoQueryTeacherName: TStringField
      FieldName = 'TeacherName'
      Origin = 'ATNEZARAT."Teachers.DB".TeacherName'
      Size = 40
    end
    object TeachersInfoQueryTitle: TStringField
      FieldName = 'Title'
      Origin = 'ATNEZARAT."Teachers.DB".Title'
      Size = 7
    end
    object TeachersInfoQueryJensId: TSmallintField
      FieldName = 'JensId'
      Origin = 'ATNEZARAT."Teachers.DB".JensId'
    end
    object TeachersInfoQueryMarriageID: TSmallintField
      Alignment = taCenter
      FieldName = 'MarriageID'
      Origin = 'ATNEZARAT."Teachers.DB".MarriageID'
    end
    object TeachersInfoQueryDateE: TStringField
      FieldName = 'DateE'
      Origin = 'ATNEZARAT."Teachers.DB".DateE'
      Size = 8
    end
    object TeachersInfoQueryDateofLastPromotion: TStringField
      FieldName = 'DateofLastPromotion'
      Origin = 'ATNEZARAT."Teachers.DB".DateofLastPromotion'
      Size = 8
    end
    object TeachersInfoQueryLang1: TSmallintField
      Alignment = taCenter
      FieldName = 'Lang1'
      Origin = 'ATNEZARAT."Teachers.DB".Lang1'
    end
    object TeachersInfoQueryLang2: TSmallintField
      Alignment = taCenter
      FieldName = 'Lang2'
      Origin = 'ATNEZARAT."Teachers.DB".Lang2'
    end
    object TeachersInfoQueryConditionID: TSmallintField
      FieldName = 'ConditionID'
      Origin = 'ATNEZARAT."Teachers.DB".ConditionID'
    end
    object TeachersInfoQueryEmailAddress: TStringField
      FieldName = 'EmailAddress'
      Origin = 'ATNEZARAT."Teachers.DB".EmailAddress'
      Size = 40
    end
    object TeachersInfoQueryTermID: TSmallintField
      FieldName = 'TermID'
      Origin = 'ATNEZARAT."varTeachers.DB".TermID'
    end
    object TeachersInfoQueryHamkariID: TSmallintField
      FieldName = 'HamkariID'
      Origin = 'ATNEZARAT."varTeachers.DB".HamkariID'
    end
    object TeachersInfoQueryDegreeID: TSmallintField
      FieldName = 'DegreeID'
      Origin = 'ATNEZARAT."varTeachers.DB".DegreeID'
    end
    object TeachersInfoQueryMadrakID: TSmallintField
      FieldName = 'MadrakID'
      Origin = 'ATNEZARAT."varTeachers.DB".MadrakID'
    end
    object TeachersInfoQueryGroupID: TSmallintField
      FieldName = 'GroupID'
      Origin = 'ATNEZARAT."varTeachers.DB".GroupID'
    end
    object TeachersInfoQueryFacultyID: TSmallintField
      FieldName = 'FacultyID'
      Origin = 'ATNEZARAT."varTeachers.DB".FacultyID'
    end
    object TeachersInfoQueryHamkari: TStringField
      FieldKind = fkLookup
      FieldName = 'Hamkari'
      LookupDataSet = DM.Hamkari
      LookupKeyFields = 'HamkariID'
      LookupResultField = 'HamkariName'
      KeyFields = 'HamkariID'
      Lookup = True
    end
    object TeachersInfoQueryDegree: TStringField
      FieldKind = fkLookup
      FieldName = 'Degree'
      LookupDataSet = DM.Degree
      LookupKeyFields = 'DegreeID'
      LookupResultField = 'DegreeName'
      KeyFields = 'DegreeID'
      Lookup = True
    end
    object TeachersInfoQueryMadrak: TStringField
      FieldKind = fkLookup
      FieldName = 'Madrak'
      LookupDataSet = DM.Madrak
      LookupKeyFields = 'MadrakID'
      LookupResultField = 'MadrakName'
      KeyFields = 'MadrakID'
      Lookup = True
    end
    object TeachersInfoQueryGroup: TStringField
      FieldKind = fkLookup
      FieldName = 'Group'
      LookupDataSet = DM.Groups
      LookupKeyFields = 'GroupID'
      LookupResultField = 'GroupName'
      KeyFields = 'GroupID'
      Size = 30
      Lookup = True
    end
    object TeachersInfoQueryReportStatus: TStringField
      FieldName = 'ReportStatus'
      Origin = 'ATNEZARAT."Teachers.DB".ReportStatus'
      Size = 1
    end
  end
end
