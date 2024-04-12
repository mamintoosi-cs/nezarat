inherited BossReportsForm: TBossReportsForm
  Left = 221
  Top = 166
  Width = 586
  Height = 413
  Caption = #1575#1593#1604#1575#1606' '#1606#1578#1575#1610#1580' '#1575#1585#1586#1588#1610#1575#1576#1610' '#1575#1587#1575#1578#1610#1583' '#1576#1607' '#1605#1587#1574#1608#1604#1610#1606
  Color = clMoneyGreen
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel [0]
    Left = 200
    Top = 344
    Width = 43
    Height = 16
    Caption = 'Label1'
    Visible = False
  end
  object RadioGroup1: TRadioGroup [1]
    Left = 196
    Top = 23
    Width = 354
    Height = 210
    Caption = #1711#1586#1610#1606#1607' '#1605#1608#1585#1583' '#1606#1592#1585' '#1582#1608#1583' '#1585#1575' '#1575#1606#1578#1582#1575#1576' '#1606#1605#1575#1610#1610#1583
    Color = clMoneyGreen
    ItemIndex = 0
    Items.Strings = (
      #1606#1578#1575#1610#1580' '#1575#1585#1586#1588#1610#1575#1576#1610' '#1603#1604' '#1583#1575#1606#1588#1711#1575#1607
      #1606#1578#1575#1610#1580' '#1575#1585#1586#1588#1610#1575#1576#1610' '#1575#1587#1575#1578#1610#1583' '#1583#1575#1606#1588#1603#1583#1607
      #1606#1578#1575#1610#1580' '#1575#1585#1586#1588#1610#1575#1576#1610' '#1575#1587#1575#1578#1610#1583' '#1711#1600#1600#1600#1600#1585#1608#1607
      #1606#1578#1575#1610#1580' '#1575#1585#1586#1588#1610#1575#1576#1610' '#1583#1585#1608#1587' '#1575#1587#1600#1578#1600#1600#1600#1575#1583
      #1606#1578#1610#1580#1607' '#1575#1585#1586#1588#1610#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1575#1576#1610' '#1583#1585#1587)
    ParentColor = False
    TabOrder = 1
    OnClick = RadioGroup1Click
  end
  inherited StatusPanel: TPanel [2]
    Top = 368
    Width = 578
    TabOrder = 6
    inherited UnitNameDBText: TDBText
      Left = 469
    end
    inherited MsgLabel: TLabel
      Width = 315
    end
  end
  object FacultyDBBox: TDBLookupComboBox [3]
    Tag = 1
    Left = 233
    Top = 87
    Width = 144
    Height = 24
    BiDiMode = bdRightToLeft
    Color = clWhite
    DataField = 'Short1'
    DataSource = DM.AlakiDS
    KeyField = 'FacultyID'
    ListField = 'FacultyName'
    ListSource = DM.FacultiesQueryDS
    ParentBiDiMode = False
    TabOrder = 8
    OnClick = FacultyDBBoxClick
  end
  object GroupDBBox: TDBLookupComboBox [4]
    Tag = 2
    Left = 233
    Top = 122
    Width = 144
    Height = 24
    Color = clWhite
    DataField = 'Short2'
    DataSource = DM.AlakiDS
    KeyField = 'GroupID'
    ListField = 'GroupName'
    ListSource = DM.GroupsDS
    TabOrder = 9
    OnClick = FacultyDBBoxClick
  end
  object TeacherDBBox: TDBLookupComboBox [5]
    Tag = 3
    Left = 233
    Top = 158
    Width = 144
    Height = 24
    Color = clWhite
    DataField = 'Short3'
    DataSource = DM.AlakiDS
    KeyField = 'TeacherID'
    ListField = 'TeacherName'
    ListSource = DM.ActiveTeachersDS
    TabOrder = 10
    OnClick = FacultyDBBoxClick
  end
  object LessonDBBox: TDBLookupComboBox [6]
    Tag = 4
    Left = 233
    Top = 193
    Width = 144
    Height = 24
    Color = clWhite
    DataField = 'Short4'
    DataSource = DM.AlakiDS
    KeyField = 'LessonID'
    ListField = 'LessonName'
    ListSource = DM.ActiveLessonsQueryDS
    TabOrder = 11
    OnClick = FacultyDBBoxClick
  end
  inherited ReturnToMainBitBtn: TBitBtn [7]
    Left = 33
    Top = 328
  end
  inherited PrintBitBtn: TBitBtn
    Left = 33
    Top = 272
  end
  inherited SelectionBitBtn: TBitBtn
    Left = 33
    Top = 300
    OnClick = SelectionBitBtnClick
  end
  inherited SendMethodRadioGroup: TRadioGroup
    Left = 32
    Top = 130
    Width = 145
  end
  inherited GroupBox1: TGroupBox
    Left = 245
    Height = 73
    inherited NOVisibilityCheckBox: TCheckBox
      Enabled = True
    end
  end
  object LorTRadioGroup: TRadioGroup [12]
    Left = 32
    Top = 22
    Width = 145
    Height = 91
    Caption = #1606#1608#1593' '#1711#1586#1575#1585#1588' '#1576#1585' '#1575#1587#1575#1587' '
    ItemIndex = 0
    Items.Strings = (
      #1606#1605#1585#1607' '#1583#1585#1587
      #1605#1593#1583#1604' '#1575#1587#1578#1575#1583)
    TabOrder = 7
  end
  object DBGrid1: TDBGrid [13]
    Left = 408
    Top = 320
    Width = 138
    Height = 41
    DataSource = DM.AlakiDS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    OnExit = DBGrid1Exit
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'TeacherName'
        Title.Caption = #1583#1585#1610#1575#1601#1578' '#1603#1606#1606#1583#1607' '#1606#1575#1605#1607
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 134
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid [14]
    Left = 245
    Top = 320
    Width = 160
    Height = 41
    DataSource = DM.AlakiDS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    OnExit = DBGrid2Exit
    OnKeyDown = DBGrid2KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'EmailRecieverAddress'
        Title.Caption = #1570#1583#1585#1587' '#1662#1587#1578' '#1575#1604#1603#1578#1585#1608#1606#1610#1603
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 156
        Visible = True
      end>
  end
  object LTeachers: TTable [15]
    Active = True
    DatabaseName = 'atNezarat'
    IndexFieldNames = 'TeacherID'
    MasterFields = 'Short3'
    MasterSource = DM.AlakiDS
    TableName = 'Teachers.DB'
    Left = 544
    Top = 272
  end
  object LTeachersDS: TDataSource [16]
    DataSet = LTeachers
    Left = 544
    Top = 304
  end
end
