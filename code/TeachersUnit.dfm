inherited TeachersForm: TTeachersForm
  Left = 195
  Top = 325
  Width = 800
  Height = 501
  Caption = #1575#1589#1604#1575#1581' '#1605#1588#1582#1589#1575#1578' '#1575#1587#1575#1578#1610#1583
  Color = clInfoBk
  Font.Color = clNavy
  OldCreateOrder = True
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Bevel2: TBevel [0]
    Left = 1
    Top = 71
    Width = 787
    Height = 242
    Shape = bsFrame
  end
  object Bevel1: TBevel [1]
    Left = 2
    Top = 323
    Width = 786
    Height = 58
    Shape = bsFrame
  end
  object Label2: TLabel [2]
    Left = 428
    Top = 28
    Width = 31
    Height = 16
    Caption = #1603#1583#1575#1587#1578#1575#1583
  end
  object Label3: TLabel [3]
    Left = 679
    Top = 94
    Width = 76
    Height = 16
    Caption = #1606#1575#1605'................'
  end
  object Label4: TLabel [4]
    Left = 492
    Top = 94
    Width = 55
    Height = 16
    Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
  end
  object Label7: TLabel [5]
    Left = 278
    Top = 94
    Width = 59
    Height = 16
    Caption = #1608#1590#1593#1610#1578' '#1603#1575#1585#1610
  end
  object Label9: TLabel [6]
    Left = 699
    Top = 262
    Width = 56
    Height = 16
    Caption = #1601#1608#1602' '#1604#1610#1587#1575#1606#1587
  end
  object Label10: TLabel [7]
    Left = 698
    Top = 284
    Width = 54
    Height = 16
    Caption = #1583#1603#1578#1600#1600#1600#1600#1600#1600#1600#1600#1600#1585#1610
  end
  object Label11: TLabel [8]
    Left = 681
    Top = 132
    Width = 74
    Height = 16
    Caption = #1578#1575#1585#1610#1582' '#1575#1587#1578#1582#1583#1575#1605'...'
  end
  object Label12: TLabel [9]
    Left = 676
    Top = 164
    Width = 79
    Height = 16
    Caption = #1578#1575#1585#1610#1582' '#1570#1582#1585#1610#1606' '#1575#1585#1578#1602#1575
  end
  object Label13: TLabel [10]
    Left = 461
    Top = 132
    Width = 88
    Height = 16
    Caption = #1586#1576#1575#1606' '#1582#1575#1585#1580#1610' '#1605#1587#1604#1591'1'
  end
  object Label14: TLabel [11]
    Left = 461
    Top = 164
    Width = 88
    Height = 16
    Caption = #1586#1576#1575#1606' '#1582#1575#1585#1580#1610' '#1605#1587#1604#1591'2'
  end
  object Label8: TLabel [12]
    Left = 698
    Top = 240
    Width = 55
    Height = 16
    Caption = #1604#1610#1587#1600#1600#1600#1600#1600#1600#1600#1575#1606#1587
  end
  object Label15: TLabel [13]
    Left = 708
    Top = 342
    Width = 65
    Height = 16
    Caption = #1605#1585#1578#1576#1600#1600#1600#1600#1600#1607' '#1593#1604#1605#1610
  end
  object Label16: TLabel [14]
    Left = 333
    Top = 342
    Width = 56
    Height = 16
    Caption = #1606#1608#1593' '#1607#1605#1603#1575#1585#1610
  end
  object Label18: TLabel [15]
    Left = 191
    Top = 342
    Width = 30
    Height = 16
    Caption = #1711#1600#1600#1600#1585#1608#1607
  end
  object Label1: TLabel [16]
    Left = 722
    Top = 27
    Width = 55
    Height = 16
    Caption = #1575#1606#1578#1582#1575#1576' '#1575#1587#1578#1575#1583
  end
  object Label5: TLabel [17]
    Left = 369
    Top = 64
    Width = 58
    Height = 16
    Caption = #1575#1591#1604#1575#1593#1575#1578' '#1579#1575#1576#1578
  end
  object Label6: TLabel [18]
    Left = 358
    Top = 316
    Width = 93
    Height = 16
    Caption = #1575#1591#1604#1575#1593#1575#1578' '#1605#1578#1594#1610#1585' '#1576#1575' '#1578#1585#1605
  end
  object Label17: TLabel [19]
    Left = 494
    Top = 342
    Width = 95
    Height = 16
    Caption = #1570#1582#1585#1610#1606' '#1605#1583#1585#1603' '#1578#1581#1589#1610#1604#1610
  end
  object Label19: TLabel [20]
    Left = 280
    Top = 132
    Width = 57
    Height = 16
    Caption = #1593#1606#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1608#1575#1606
  end
  object Label20: TLabel [21]
    Left = 273
    Top = 164
    Width = 64
    Height = 15
    Caption = #1662#1587#1578' '#1575#1604#1603#1578#1585#1608#1606#1610#1603
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BSDBGrid: TDBGrid [22]
    Left = 10
    Top = 208
    Width = 687
    Height = 52
    TabStop = False
    BiDiMode = bdRightToLeft
    DataSource = LTeachersDS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -13
    TitleFont.Name = 'Homa'
    TitleFont.Style = []
    OnKeyDown = BSDBGridKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'BSCourse'
        Title.Caption = #1585#1588#1606#1607' '#1578#1581#1589#1610#1604#1610
        Width = 133
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BSUniversity'
        Title.Caption = ' '#1583#1575#1606#1588#1711#1575#1607' '#1605#1581#1604' '#1575#1582#1584' '#1605#1583#1585#1603
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BSCountry'
        Title.Caption = #1603#1588#1608#1585
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BSDate'
        Title.Caption = #1578#1575#1585#1610#1582' '#1575#1582#1584' '
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BSProject'
        Title.Caption = #1593#1606#1608#1575#1606' '#1662#1585#1608#1688#1607' '#1610#1575' '#1662#1575#1610#1575#1606' '#1606#1575#1605#1607
        Width = 280
        Visible = True
      end>
  end
  inherited ReturnToMainBitBtn: TBitBtn
    Left = 307
    Top = 398
    Caption = #1579#1576#1578' '#1608' '#1576#1575#1586#1711#1588#1578' '#1576#1607' '#1589#1601#1581#1607' '#1575#1589#1604#1610
    TabOrder = 17
    OnClick = BitBtn2Click
    Kind = bkCustom
  end
  object DBNavigator1: TDBNavigator [24]
    Left = 104
    Top = 24
    Width = 220
    Height = 25
    DataSource = LTeachersDS
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Hints.Strings = (
      #1575#1608#1604#1610#1606' '#1585#1603#1608#1585#1583
      #1585#1603#1608#1585#1583' '#1602#1576#1604#1610
      #13#1585#1603#1608#1585#1583' '#1576#1593#1583#1610
      #1570#1582#1585#1610#1606' '#1585#1603#1608#1585#1583
      #1583#1585#1580' '#1585#1603#1608#1585#1583
      #1581#1584#1601' '#1585#1603#1608#1585#1583
      #1575#1589#1604#1575#1581' '#1585#1603#1608#1585#1583
      #1579#1576#1578' '#1575#1589#1604#1575#1581#1575#1578
      #1604#1594#1608' '#1575#1589#1604#1575#1581#1575#1578
      #1578#1575#1586#1607' '#1603#1585#1583#1606' '#1575#1591#1604#1575#1593#1575#1578)
    ParentShowHint = False
    ShowHint = True
    TabOrder = 18
    OnClick = DBNavigator1Click
  end
  object FirstNameDBEdit: TDBEdit [25]
    Left = 584
    Top = 92
    Width = 89
    Height = 24
    DataField = 'FirstName'
    DataSource = LTeachersDS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnExit = FirstNameDBEditExit
  end
  object LastNameDBEdit: TDBEdit [26]
    Left = 360
    Top = 92
    Width = 121
    Height = 24
    DataField = 'LastName'
    DataSource = LTeachersDS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnExit = LastNameDBEditExit
  end
  object DegreeDBBox: TDBLookupComboBox [27]
    Left = 598
    Top = 339
    Width = 105
    Height = 24
    DataField = 'DegreeID'
    DataSource = LvarTeachersDS
    KeyField = 'DegreeID'
    ListField = 'DegreeName'
    ListSource = DM.DegreeDS
    ParentColor = True
    TabOrder = 13
  end
  object ConditionDBBox5: TDBLookupComboBox [28]
    Left = 168
    Top = 92
    Width = 97
    Height = 24
    Color = clWhite
    DataField = 'ConditionID'
    DataSource = LTeachersDS
    KeyField = 'ConditionID'
    ListField = 'ConditionName'
    ListSource = DM.ConditionDS
    TabOrder = 3
  end
  object DBLookupComboBox6: TDBLookupComboBox [29]
    Left = 96
    Top = 339
    Width = 90
    Height = 24
    DataField = 'GroupID'
    DataSource = LvarTeachersDS
    KeyField = 'GroupID'
    ListField = 'GroupName'
    ListSource = DM.GroupsDS
    ParentColor = True
    TabOrder = 16
  end
  object DBLookupComboBox7: TDBLookupComboBox [30]
    Left = 240
    Top = 339
    Width = 90
    Height = 24
    DataField = 'HamkariID'
    DataSource = LvarTeachersDS
    KeyField = 'HamkariID'
    ListField = 'HamkariName'
    ListSource = DM.HamkariDS
    ParentColor = True
    TabOrder = 15
  end
  object MSDBGrid: TDBGrid [31]
    Left = 10
    Top = 258
    Width = 687
    Height = 25
    TabStop = False
    DataSource = LTeachersDS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Options = [dgEditing, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
    ParentFont = False
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -13
    TitleFont.Name = 'Homa'
    TitleFont.Style = []
    OnKeyDown = MSDBGridKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'MSCourse'
        Width = 133
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MSUniversity'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MSCountry'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MSDate'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MSProject'
        Width = 280
        Visible = True
      end>
  end
  object PHDDBGrid: TDBGrid [32]
    Left = 10
    Top = 280
    Width = 687
    Height = 25
    TabStop = False
    DataSource = LTeachersDS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Options = [dgEditing, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
    ParentFont = False
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -13
    TitleFont.Name = 'Homa'
    TitleFont.Style = []
    OnKeyDown = PHDDBGridKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'PHDCourse'
        Width = 133
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PHDUniversity'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PHDCountry'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PHDDate'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PHDThesis'
        Width = 280
        Visible = True
      end>
  end
  object DBEdit4: TDBEdit [33]
    Left = 584
    Top = 132
    Width = 89
    Height = 24
    DataField = 'DateE'
    DataSource = LTeachersDS
    TabOrder = 4
  end
  object DBEdit5: TDBEdit [34]
    Left = 584
    Top = 164
    Width = 89
    Height = 24
    DataField = 'DateofLastPromotion'
    DataSource = LTeachersDS
    TabOrder = 5
  end
  object DBLookupComboBox4: TDBLookupComboBox [35]
    Left = 360
    Top = 128
    Width = 97
    Height = 24
    DataField = 'Lang1'
    DataSource = LTeachersDS
    KeyField = 'LangID'
    ListField = 'LangName'
    ListSource = DM.LanguageDS
    TabOrder = 6
  end
  object DBLookupComboBox5: TDBLookupComboBox [36]
    Left = 360
    Top = 160
    Width = 97
    Height = 24
    DataField = 'Lang2'
    DataSource = LTeachersDS
    KeyField = 'LangID'
    ListField = 'LangName'
    ListSource = DM.LanguageDS
    TabOrder = 7
  end
  object SelectDBBox: TDBLookupComboBox [37]
    Left = 500
    Top = 23
    Width = 217
    Height = 27
    BiDiMode = bdRightToLeft
    DataField = 'TeacherID'
    DataSource = DM.AlakiDS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    KeyField = 'TeacherID'
    ListField = 'TeacherName'
    ListSource = LTeachersDS
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    OnClick = SelectDBBoxClick
  end
  object DBRadioGroup1: TDBRadioGroup [38]
    Left = 96
    Top = 83
    Width = 65
    Height = 59
    Caption = #1580#1606#1587#1610#1578
    DataField = 'JensId'
    DataSource = LTeachersDS
    Items.Strings = (
      #1605#1585#1583
      #1586#1606)
    TabOrder = 8
    Values.Strings = (
      '1'
      '2')
  end
  object DBRadioGroup2: TDBRadioGroup [39]
    Left = 24
    Top = 81
    Width = 65
    Height = 59
    Caption = #1578#1575#1607#1604
    DataField = 'MarriageID'
    DataSource = LTeachersDS
    Items.Strings = (
      #1605#1580#1585#1583
      #1605#1578#1575#1607#1604)
    TabOrder = 9
    Values.Strings = (
      '1'
      '2')
    OnExit = DBRadioGroup2Exit
  end
  object DBEdit1: TDBEdit [40]
    Left = 376
    Top = 24
    Width = 49
    Height = 24
    DataField = 'TeacherID'
    DataSource = DM.AlakiDS
    TabOrder = 19
  end
  object DBNavigator2: TDBNavigator [41]
    Left = 16
    Top = 160
    Width = 72
    Height = 25
    DataSource = LTeachersDS
    VisibleButtons = [nbEdit, nbPost, nbCancel]
    Hints.Strings = (
      #1585#1603#1608#1585#1583' '#1602#1576#1604#1610
      #1585#1603#1608#1585#1583' '#1576#1593#1583#1610
      #1575#1608#1604#1610#1606' '#1585#1603#1608#1585#1583
      #1570#1582#1585#1610#1606' '#1585#1603#1608#1585#1583
      #1583#1585#1580' '#1585#1603#1608#1585#1583
      #1581#1584#1601' '#1585#1603#1608#1585#1583
      #1575#1589#1604#1575#1581' '#1585#1603#1608#1585#1583
      #1579#1576#1578' '#1575#1589#1604#1575#1581#1575#1578
      #1604#1594#1608' '#1575#1589#1604#1575#1581#1575#1578
      #1578#1575#1586#1607' '#1603#1585#1583#1606' '#1575#1591#1604#1575#1593#1575#1578)
    ParentShowHint = False
    ShowHint = True
    TabOrder = 20
  end
  object DBNavigator3: TDBNavigator [42]
    Left = 16
    Top = 336
    Width = 72
    Height = 25
    DataSource = LvarTeachersDS
    VisibleButtons = [nbEdit, nbPost, nbCancel]
    Hints.Strings = (
      #1585#1603#1608#1585#1583' '#1602#1576#1604#1610
      #1585#1603#1608#1585#1583' '#1576#1593#1583#1610
      #1575#1608#1604#1610#1606' '#1585#1603#1608#1585#1583
      #1570#1582#1585#1610#1606' '#1585#1603#1608#1585#1583
      #1583#1585#1580' '#1585#1603#1608#1585#1583
      #1581#1584#1601' '#1585#1603#1608#1585#1583
      #1575#1589#1604#1575#1581' '#1585#1603#1608#1585#1583
      #1579#1576#1578' '#1575#1589#1604#1575#1581#1575#1578
      #1604#1594#1608' '#1575#1589#1604#1575#1581#1575#1578
      #1578#1575#1586#1607' '#1603#1585#1583#1606' '#1575#1591#1604#1575#1593#1575#1578)
    ParentShowHint = False
    ShowHint = True
    TabOrder = 21
  end
  object DBLookupComboBox1: TDBLookupComboBox [43]
    Left = 400
    Top = 339
    Width = 90
    Height = 24
    DataField = 'MadrakID'
    DataSource = LvarTeachersDS
    KeyField = 'MadrakID'
    ListField = 'MadrakName'
    ListSource = DM.MadrakDS
    ParentColor = True
    TabOrder = 14
  end
  object NewTeacherBtn: TBitBtn [44]
    Left = 49
    Top = 24
    Width = 55
    Height = 25
    Caption = #1575#1587#1578#1575#1583' '#1580#1583#1610#1583
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 22
    OnClick = NewTeacherBtnClick
  end
  inherited StatusPanel: TPanel
    Top = 456
    Width = 792
    TabOrder = 23
    inherited UnitNameDBText: TDBText
      Left = 683
      Font.Color = clNavy
    end
    inherited TermNameDBText: TDBText
      Font.Color = clNavy
    end
    inherited MsgLabel: TLabel
      Width = 529
    end
  end
  object DBEdit2: TDBEdit
    Left = 168
    Top = 128
    Width = 97
    Height = 24
    DataField = 'Title'
    DataSource = LTeachersDS
    TabOrder = 24
  end
  object DBEdit3: TDBEdit
    Left = 96
    Top = 160
    Width = 169
    Height = 24
    DataField = 'EmailAddress'
    DataSource = LTeachersDS
    TabOrder = 25
  end
  object LvarTeachers: TTable
    Active = True
    AfterPost = LvarTeachersAfterPost
    DatabaseName = 'atNezarat'
    Filtered = True
    IndexName = 'TeacherIDidx'
    MasterFields = 'TeacherID'
    MasterSource = LTeachersDS
    TableName = 'varTeachers.DB'
    Left = 8
    Top = 36
    object LvarTeachersTeacherID: TSmallintField
      FieldName = 'TeacherID'
    end
    object LvarTeachersTermID: TSmallintField
      FieldName = 'TermID'
    end
    object LvarTeachersHamkariID: TSmallintField
      FieldName = 'HamkariID'
    end
    object LvarTeachersDegreeID: TSmallintField
      FieldName = 'DegreeID'
    end
    object LvarTeachersMadrakID: TSmallintField
      FieldName = 'MadrakID'
    end
    object LvarTeachersFacultyID: TSmallintField
      FieldName = 'FacultyID'
    end
    object LvarTeachersGroupID: TSmallintField
      FieldName = 'GroupID'
    end
  end
  object LTeachers: TTable
    Active = True
    AfterPost = LTeachersAfterPost
    DatabaseName = 'atNezarat'
    Filtered = True
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
        Name = 'EmailAddress'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'EMailSendingStatus'
        DataType = ftBoolean
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
    Left = 8
    Top = 4
    object LTeachersTeacherID: TSmallintField
      FieldName = 'TeacherID'
    end
    object LTeachersFirstName: TStringField
      FieldName = 'FirstName'
      Size = 15
    end
    object LTeachersFirstName2: TStringField
      FieldName = 'FirstName2'
      Size = 25
    end
    object LTeachersLastName: TStringField
      FieldName = 'LastName'
    end
    object LTeachersLastName2: TStringField
      FieldName = 'LastName2'
      Size = 30
    end
    object LTeachersJensId: TSmallintField
      FieldName = 'JensId'
    end
    object LTeachersMarriageID: TSmallintField
      FieldName = 'MarriageID'
    end
    object LTeachersDateE: TStringField
      FieldName = 'DateE'
      Size = 8
    end
    object LTeachersBSCourse: TStringField
      FieldName = 'BSCourse'
      Size = 30
    end
    object LTeachersBSUniversity: TStringField
      FieldName = 'BSUniversity'
    end
    object LTeachersBSCountry: TStringField
      FieldName = 'BSCountry'
      Size = 15
    end
    object LTeachersBSDate: TStringField
      FieldName = 'BSDate'
      Size = 4
    end
    object LTeachersBSProject: TStringField
      FieldName = 'BSProject'
      Size = 100
    end
    object LTeachersMSCourse: TStringField
      FieldName = 'MSCourse'
      Size = 30
    end
    object LTeachersMSUniversity: TStringField
      FieldName = 'MSUniversity'
    end
    object LTeachersMSCountry: TStringField
      FieldName = 'MSCountry'
      Size = 15
    end
    object LTeachersMSDate: TStringField
      FieldName = 'MSDate'
      Size = 4
    end
    object LTeachersMSProject: TStringField
      FieldName = 'MSProject'
      Size = 100
    end
    object LTeachersPHDCourse: TStringField
      FieldName = 'PHDCourse'
      Size = 30
    end
    object LTeachersPHDUniversity: TStringField
      FieldName = 'PHDUniversity'
    end
    object LTeachersPHDCountry: TStringField
      FieldName = 'PHDCountry'
      Size = 15
    end
    object LTeachersPHDDate: TStringField
      FieldName = 'PHDDate'
      Size = 4
    end
    object LTeachersPHDThesis: TStringField
      FieldName = 'PHDThesis'
      Size = 100
    end
    object LTeachersDateofLastPromotion: TStringField
      FieldName = 'DateofLastPromotion'
      Size = 8
    end
    object LTeachersLang1: TSmallintField
      FieldName = 'Lang1'
    end
    object LTeachersLang2: TSmallintField
      FieldName = 'Lang2'
    end
    object LTeachersConditionID: TSmallintField
      FieldName = 'ConditionID'
    end
    object LTeachersTeacherName: TStringField
      FieldName = 'TeacherName'
      Size = 40
    end
    object LTeachersTitle: TStringField
      FieldName = 'Title'
      Size = 7
    end
    object LTeachersEmailAddress: TStringField
      FieldName = 'EmailAddress'
      Size = 40
    end
  end
  object LTeachersDS: TDataSource
    DataSet = LTeachers
    Left = 40
    Top = 4
  end
  object LvarTeachersDS: TDataSource
    DataSet = LvarTeachers
    Left = 40
    Top = 36
  end
  object ListTeacherTable: TTable
    DatabaseName = 'atNezarat'
    IndexFieldNames = 'LastName2;FirstName2'
    TableName = 'Teachers.DB'
    Left = 720
    Top = 52
  end
  object ListTeacherDS: TDataSource
    DataSet = ListTeacherTable
    Left = 752
    Top = 52
  end
end
