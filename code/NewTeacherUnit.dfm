inherited NewTeacherForm: TNewTeacherForm
  Left = 0
  Top = 102
  Width = 800
  Height = 481
  Caption = #1578#1593#1585#1610#1601' '#1575#1587#1578#1575#1583' '#1580#1583#1610#1583
  Color = clInfoBk
  Font.Color = clNavy
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Bevel2: TBevel [0]
    Left = 1
    Top = 63
    Width = 787
    Height = 242
    Shape = bsFrame
  end
  object Bevel1: TBevel [1]
    Left = 2
    Top = 315
    Width = 786
    Height = 58
    Shape = bsFrame
  end
  object Label2: TLabel [2]
    Left = 740
    Top = 36
    Width = 31
    Height = 16
    Caption = #1603#1583#1575#1587#1578#1575#1583
  end
  object Label3: TLabel [3]
    Left = 679
    Top = 84
    Width = 76
    Height = 16
    Caption = #1606#1575#1605'................'
  end
  object Label4: TLabel [4]
    Left = 492
    Top = 84
    Width = 55
    Height = 16
    Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
  end
  object Label7: TLabel [5]
    Left = 276
    Top = 86
    Width = 59
    Height = 16
    Caption = #1608#1590#1593#1610#1578' '#1603#1575#1585#1610
  end
  object Label9: TLabel [6]
    Left = 699
    Top = 254
    Width = 56
    Height = 16
    Caption = #1601#1608#1602' '#1604#1610#1587#1575#1606#1587
  end
  object Label10: TLabel [7]
    Left = 698
    Top = 276
    Width = 54
    Height = 16
    Caption = #1583#1603#1578#1600#1600#1600#1600#1600#1600#1600#1600#1600#1585#1610
  end
  object Label11: TLabel [8]
    Left = 681
    Top = 124
    Width = 74
    Height = 16
    Caption = #1578#1575#1585#1610#1582' '#1575#1587#1578#1582#1583#1575#1605'...'
  end
  object Label12: TLabel [9]
    Left = 676
    Top = 156
    Width = 79
    Height = 16
    Caption = #1578#1575#1585#1610#1582' '#1570#1582#1585#1610#1606' '#1575#1585#1578#1602#1575
  end
  object Label13: TLabel [10]
    Left = 461
    Top = 124
    Width = 88
    Height = 16
    Caption = #1586#1576#1575#1606' '#1582#1575#1585#1580#1610' '#1605#1587#1604#1591'1'
  end
  object Label14: TLabel [11]
    Left = 461
    Top = 156
    Width = 88
    Height = 16
    Caption = #1586#1576#1575#1606' '#1582#1575#1585#1580#1610' '#1605#1587#1604#1591'2'
  end
  object Label8: TLabel [12]
    Left = 698
    Top = 232
    Width = 55
    Height = 16
    Caption = #1604#1610#1587#1600#1600#1600#1600#1600#1600#1600#1575#1606#1587
  end
  object Label15: TLabel [13]
    Left = 708
    Top = 334
    Width = 65
    Height = 16
    Caption = #1605#1585#1578#1576#1600#1600#1600#1600#1600#1607' '#1593#1604#1605#1610
  end
  object Label16: TLabel [14]
    Left = 325
    Top = 334
    Width = 56
    Height = 16
    Caption = #1606#1608#1593' '#1607#1605#1603#1575#1585#1610
  end
  object Label18: TLabel [15]
    Left = 191
    Top = 334
    Width = 30
    Height = 16
    Caption = #1711#1600#1600#1600#1585#1608#1607
  end
  object Label5: TLabel [16]
    Left = 369
    Top = 56
    Width = 58
    Height = 16
    Caption = #1575#1591#1604#1575#1593#1575#1578' '#1579#1575#1576#1578
  end
  object Label6: TLabel [17]
    Left = 358
    Top = 308
    Width = 93
    Height = 16
    Caption = #1575#1591#1604#1575#1593#1575#1578' '#1605#1578#1594#1610#1585' '#1576#1575' '#1578#1585#1605
  end
  object Label1: TLabel [18]
    Left = 494
    Top = 334
    Width = 95
    Height = 16
    Caption = #1570#1582#1585#1610#1606' '#1605#1583#1585#1603' '#1578#1581#1589#1610#1604#1610
  end
  object DBText1: TDBText [19]
    Left = 670
    Top = 34
    Width = 65
    Height = 17
    Alignment = taRightJustify
    BiDiMode = bdLeftToRight
    DataField = 'TeacherID'
    DataSource = LTeachersDS
    ParentBiDiMode = False
  end
  object Label19: TLabel [20]
    Left = 280
    Top = 124
    Width = 57
    Height = 16
    Caption = #1593#1606#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1608#1575#1606
  end
  object Label20: TLabel [21]
    Left = 273
    Top = 156
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
  object DeleteBtn: TBitBtn [22]
    Left = 409
    Top = 400
    Width = 95
    Height = 25
    Caption = #1581#1584#1601' '#1608' '#1582#1585#1608#1580
    TabOrder = 18
    OnClick = DeleteBtnClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
      F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
      000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
      338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
      45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
      3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
      F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
      000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
      338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
      4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
      8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
      333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
      0000}
    NumGlyphs = 2
  end
  object BSDBGrid: TDBGrid [23]
    Left = 10
    Top = 200
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
    TabOrder = 9
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
    Left = 503
    Top = 400
    Width = 95
    Height = 25
    Caption = #1579#1576#1578' '#1608#1582#1585#1608#1580
    Font.Color = clNavy
    TabOrder = 19
    TabStop = False
    OnClick = BitBtn2Click
    Kind = bkCustom
  end
  inherited StatusPanel: TPanel
    Top = 436
    Width = 792
    TabOrder = 22
    inherited UnitNameDBText: TDBText
      Left = 683
    end
    inherited MsgLabel: TLabel
      Width = 529
    end
  end
  object FirstNameDBEdit: TDBEdit
    Left = 584
    Top = 84
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
    TabOrder = 0
    OnExit = FirstNameDBEditExit
  end
  object LastNameDBEdit: TDBEdit
    Left = 360
    Top = 84
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
    TabOrder = 1
    OnExit = LastNameDBEditExit
  end
  object DegreeDBBox: TDBLookupComboBox
    Left = 600
    Top = 331
    Width = 105
    Height = 24
    DataField = 'DegreeID'
    DataSource = LvarTeachersDS
    KeyField = 'DegreeID'
    ListField = 'DegreeName'
    ListSource = DM.DegreeDS
    ParentColor = True
    TabOrder = 12
  end
  object ConditionDBBox5: TDBLookupComboBox
    Left = 168
    Top = 84
    Width = 97
    Height = 24
    Color = clWhite
    DataField = 'ConditionID'
    DataSource = LTeachersDS
    KeyField = 'ConditionID'
    ListField = 'ConditionName'
    ListSource = DM.ConditionDS
    TabOrder = 2
  end
  object DBLookupComboBox6: TDBLookupComboBox
    Left = 96
    Top = 331
    Width = 90
    Height = 24
    DataField = 'GroupID'
    DataSource = LvarTeachersDS
    KeyField = 'GroupID'
    ListField = 'GroupName'
    ListSource = DM.GroupsDS
    ParentColor = True
    TabOrder = 15
  end
  object DBLookupComboBox7: TDBLookupComboBox
    Left = 232
    Top = 331
    Width = 90
    Height = 24
    DataField = 'HamkariID'
    DataSource = LvarTeachersDS
    KeyField = 'HamkariID'
    ListField = 'HamkariName'
    ListSource = DM.HamkariDS
    ParentColor = True
    TabOrder = 14
  end
  object MSDBGrid: TDBGrid
    Left = 10
    Top = 250
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
    TabOrder = 10
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
  object PHDDBGrid: TDBGrid
    Left = 10
    Top = 272
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
  object DBEdit4: TDBEdit
    Left = 584
    Top = 124
    Width = 89
    Height = 24
    DataField = 'DateE'
    DataSource = LTeachersDS
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 584
    Top = 156
    Width = 89
    Height = 24
    DataField = 'DateofLastPromotion'
    DataSource = LTeachersDS
    TabOrder = 4
  end
  object DBLookupComboBox4: TDBLookupComboBox
    Left = 360
    Top = 120
    Width = 97
    Height = 24
    DataField = 'Lang1'
    DataSource = LTeachersDS
    KeyField = 'LangID'
    ListField = 'LangName'
    ListSource = DM.LanguageDS
    TabOrder = 5
  end
  object DBLookupComboBox5: TDBLookupComboBox
    Left = 360
    Top = 152
    Width = 97
    Height = 24
    DataField = 'Lang2'
    DataSource = LTeachersDS
    KeyField = 'LangID'
    ListField = 'LangName'
    ListSource = DM.LanguageDS
    TabOrder = 6
  end
  object DBRadioGroup1: TDBRadioGroup
    Left = 88
    Top = 80
    Width = 65
    Height = 59
    Caption = #1580#1606#1587#1610#1578
    DataField = 'JensId'
    DataSource = LTeachersDS
    Items.Strings = (
      #1605#1585#1583
      #1586#1606)
    TabOrder = 7
    Values.Strings = (
      '1'
      '2')
  end
  object DBRadioGroup2: TDBRadioGroup
    Left = 16
    Top = 77
    Width = 65
    Height = 59
    Caption = #1578#1575#1607#1604
    DataField = 'MarriageID'
    DataSource = LTeachersDS
    Items.Strings = (
      #1605#1580#1585#1583
      #1605#1578#1575#1607#1604)
    TabOrder = 8
    Values.Strings = (
      '1'
      '2')
    OnExit = DBRadioGroup2Exit
  end
  object DBNavigator2: TDBNavigator
    Left = 16
    Top = 152
    Width = 69
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
  object DBNavigator3: TDBNavigator
    Left = 16
    Top = 328
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
  object SaveandNewBtn: TBitBtn
    Left = 255
    Top = 400
    Width = 75
    Height = 25
    Caption = #1579#1576#1578' '#1608' '#1580#1583#1610#1583
    TabOrder = 16
    OnClick = SaveandNewBtnClick
  end
  object SaveBtn: TBitBtn
    Left = 329
    Top = 400
    Width = 75
    Height = 25
    Caption = #1579#1576#1578
    TabOrder = 17
    OnClick = SaveBtnClick
    NumGlyphs = 2
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 400
    Top = 331
    Width = 90
    Height = 24
    DataField = 'MadrakID'
    DataSource = LvarTeachersDS
    KeyField = 'MadrakID'
    ListField = 'MadrakName'
    ListSource = DM.MadrakDS
    ParentColor = True
    TabOrder = 13
  end
  object DBEdit2: TDBEdit
    Left = 168
    Top = 120
    Width = 97
    Height = 24
    DataField = 'Title'
    DataSource = LTeachersDS
    TabOrder = 23
  end
  object DBEdit3: TDBEdit
    Left = 96
    Top = 152
    Width = 169
    Height = 24
    DataField = 'EmailAddress'
    DataSource = LTeachersDS
    TabOrder = 24
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
    Left = 16
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
    IndexFieldNames = 'TeacherID'
    StoreDefs = True
    TableName = 'Teachers.DB'
    Left = 16
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
    Left = 48
    Top = 4
  end
  object LvarTeachersDS: TDataSource
    DataSet = LvarTeachers
    Left = 48
    Top = 36
  end
end
