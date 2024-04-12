inherited ConfigurationForm: TConfigurationForm
  Left = 277
  Top = 141
  Width = 472
  Height = 445
  Caption = #1578#1606#1592#1610#1605#1575#1578
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  inherited StatusPanel: TPanel [0]
    Top = 400
    Width = 464
    inherited UnitNameDBText: TDBText
      Left = 355
    end
    inherited MsgLabel: TLabel
      Width = 201
    end
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 464
    Height = 113
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 374
      Top = 47
      Width = 67
      Height = 16
      Caption = #1585#1574#1610#1587' '#1583#1575#1606#1588#1711#1575#1607':'
    end
    object Label2: TLabel
      Left = 372
      Top = 71
      Width = 69
      Height = 16
      Caption = #1605#1593#1575#1608#1606' '#1570#1605#1608#1586#1588#1610':'
    end
    object Bevel1: TBevel
      Left = 16
      Top = 40
      Width = 369
      Height = 1
    end
    object Label8: TLabel
      Left = 9
      Top = 16
      Width = 58
      Height = 16
      Caption = #1575#1585#1587#1575#1604' mail'
    end
    object UnivViceChancellorDBComboBox: TDBLookupComboBox
      Left = 216
      Top = 44
      Width = 153
      Height = 24
      Color = clWhite
      DataField = 'UnitBossID'
      DataSource = LUnitInfoDS
      KeyField = 'TeacherID'
      ListField = 'TeacherName'
      ListSource = LTeachersDS
      TabOrder = 0
      OnExit = UnivViceChancellorDBComboBoxExit
    end
    object EducationalViceChancellorDBComboBox: TDBLookupComboBox
      Left = 216
      Top = 65
      Width = 153
      Height = 24
      Color = clWhite
      DataField = 'EducationalAssistantID'
      DataSource = LUnitInfoDS
      KeyField = 'TeacherID'
      ListField = 'TeacherName'
      ListSource = LTeachers2DS
      TabOrder = 1
      OnExit = EducationalViceChancellorDBComboBoxExit
    end
    object UnivViceChancellorDBEdit: TDBEdit
      Left = 64
      Top = 44
      Width = 145
      Height = 24
      BiDiMode = bdLeftToRight
      DataField = 'EmailAddress'
      DataSource = LTeachersDS
      ParentBiDiMode = False
      TabOrder = 2
      OnExit = UnivViceChancellorDBComboBoxExit
    end
    object EducationalViceChancellorDBEdit: TDBEdit
      Left = 64
      Top = 65
      Width = 145
      Height = 24
      BiDiMode = bdLeftToRight
      DataField = 'EmailAddress'
      DataSource = LTeachers2DS
      ParentBiDiMode = False
      TabOrder = 3
      OnExit = EducationalViceChancellorDBComboBoxExit
    end
    object StaticText1: TStaticText
      Left = 280
      Top = 16
      Width = 16
      Height = 20
      Caption = #1606#1575#1605
      TabOrder = 4
    end
    object StaticText2: TStaticText
      Left = 88
      Top = 16
      Width = 105
      Height = 20
      Caption = #1570#1583#1585#1587' '#1662#1587#1578' '#1575#1604#1603#1578#1585#1608#1606#1610#1603
      TabOrder = 5
    end
    object EducationalViceChancellorCheckBox: TCheckBox
      Left = 24
      Top = 67
      Width = 25
      Height = 17
      Checked = True
      State = cbChecked
      TabOrder = 6
    end
    object UnivViceChancellorCheckBox: TCheckBox
      Left = 24
      Top = 46
      Width = 25
      Height = 17
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 7
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 113
    Width = 464
    Height = 104
    Align = alCustom
    TabOrder = 3
    object Label3: TLabel
      Left = 289
      Top = 30
      Width = 120
      Height = 16
      Caption = #1605#1583#1610#1585' '#1583#1601#1578#1585' '#1606#1592#1575#1585#1578' '#1608' '#1575#1585#1586#1610#1575#1576#1610
    end
    object Label4: TLabel
      Left = 290
      Top = 68
      Width = 151
      Height = 16
      Caption = #1593#1606#1608#1575#1606' '#1605#1583#1610#1585' '#1583#1601#1578#1585' '#1606#1592#1575#1585#1578' '#1608' '#1575#1585#1586#1610#1575#1576#1610
    end
    object DBEdit1: TDBEdit
      Left = 104
      Top = 25
      Width = 177
      Height = 24
      DataField = 'ModirName'
      DataSource = DM.TermsDS
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 104
      Top = 65
      Width = 177
      Height = 24
      DataField = 'ModirTitle'
      DataSource = DM.TermsDS
      TabOrder = 1
    end
  end
  inherited ReturnToMainBitBtn: TBitBtn [3]
    Left = 123
    Top = 342
    Caption = #1579#1576#1578' '#1608' '#1576#1575#1586#1711#1588#1578' '#1576#1607' '#1589#1601#1581#1607' '#1575#1589#1604#1610
    OnClick = ReturnToMainBitBtnClick
    Kind = bkCustom
  end
  object Panel3: TPanel
    Left = 0
    Top = 217
    Width = 464
    Height = 112
    Align = alCustom
    TabOrder = 4
    object Bevel2: TBevel
      Left = 40
      Top = 24
      Width = 353
      Height = 9
      Shape = bsTopLine
    end
    object Label5: TLabel
      Left = 84
      Top = 8
      Width = 199
      Height = 16
      Caption = #1585#1606#1711'           '#1581#1583' '#1576#1575#1604#1575'        '#1581#1583' '#1662#1575#1610#1610#1606'     '#1576#1575#1586#1607
    end
    object Label6: TLabel
      Left = 82
      Top = 35
      Width = 26
      Height = 19
      BiDiMode = bdLeftToRight
      Caption = '1: ('
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object Shape1: TShape
      Left = 256
      Top = 32
      Width = 38
      Height = 24
      OnMouseDown = Shape1MouseDown
    end
    object CloseLabel1: TLabel
      Left = 231
      Top = 35
      Width = 6
      Height = 19
      BiDiMode = bdLeftToRight
      Caption = ')'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -17
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      OnClick = CloseLabel1Click
    end
    object Label7: TLabel
      Left = 82
      Top = 67
      Width = 26
      Height = 19
      BiDiMode = bdLeftToRight
      Caption = '2: ('
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object CloseLabel2: TLabel
      Left = 231
      Top = 67
      Width = 6
      Height = 19
      BiDiMode = bdLeftToRight
      Caption = ')'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -17
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      OnClick = CloseLabel1Click
    end
    object Shape2: TShape
      Left = 256
      Top = 64
      Width = 38
      Height = 24
      OnMouseDown = Shape2MouseDown
    end
    object DBEdit4: TDBEdit
      Left = 176
      Top = 32
      Width = 50
      Height = 24
      BiDiMode = bdLeftToRight
      DataField = 'UR1'
      DataSource = DM.TermsDS
      ParentBiDiMode = False
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 112
      Top = 32
      Width = 50
      Height = 24
      BiDiMode = bdLeftToRight
      DataField = 'LR1'
      DataSource = DM.TermsDS
      ParentBiDiMode = False
      TabOrder = 0
    end
    object DBEdit5: TDBEdit
      Left = 112
      Top = 64
      Width = 50
      Height = 24
      BiDiMode = bdLeftToRight
      DataField = 'LR2'
      DataSource = DM.TermsDS
      ParentBiDiMode = False
      TabOrder = 2
    end
    object DBEdit6: TDBEdit
      Left = 176
      Top = 64
      Width = 50
      Height = 24
      BiDiMode = bdLeftToRight
      DataField = 'UR2'
      DataSource = DM.TermsDS
      ParentBiDiMode = False
      TabOrder = 3
    end
  end
  object LUnitInfo: TTable
    Active = True
    DatabaseName = 'atNezarat'
    FieldDefs = <
      item
        Name = 'UnitName'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'UnitBossName'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'BlackUnitArm'
        DataType = ftGraphic
      end
      item
        Name = 'GrayUnitArm'
        DataType = ftGraphic
      end
      item
        Name = 'VahedeNezaratName'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Expired'
        DataType = ftBoolean
      end
      item
        Name = 'UnitBossID'
        DataType = ftInteger
      end
      item
        Name = 'EducationalAssistantID'
        DataType = ftInteger
      end>
    StoreDefs = True
    TableName = 'UnitInfo.DB'
    Left = 376
    object LUnitInfoUnitName: TStringField
      FieldName = 'UnitName'
      Size = 50
    end
    object LUnitInfoUnitBossName: TStringField
      FieldName = 'UnitBossName'
      Size = 30
    end
    object LUnitInfoBlackUnitArm: TGraphicField
      FieldName = 'BlackUnitArm'
      BlobType = ftGraphic
    end
    object LUnitInfoGrayUnitArm: TGraphicField
      FieldName = 'GrayUnitArm'
      BlobType = ftGraphic
    end
    object LUnitInfoVahedeNezaratName: TStringField
      FieldName = 'VahedeNezaratName'
    end
    object LUnitInfoExpired: TBooleanField
      FieldName = 'Expired'
    end
    object LUnitInfoUnitBossID: TSmallintField
      FieldName = 'UnitBossID'
    end
    object LUnitInfoEducationalAssistantID: TSmallintField
      FieldName = 'EducationalAssistantID'
    end
    object LUnitInfostaff: TStringField
      FieldKind = fkLookup
      FieldName = 'staff'
      LookupDataSet = LTeachers
      LookupKeyFields = 'TeacherID'
      LookupResultField = 'TeacherName'
      KeyFields = 'UnitBossID'
      Size = 50
      Lookup = True
    end
  end
  object LUnitInfoDS: TDataSource
    DataSet = LUnitInfo
    Left = 408
  end
  object LTeachersDS: TDataSource
    DataSet = LTeachers
    Left = 80
    Top = 4
  end
  object LTeachers: TTable
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
    Left = 56
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
  object LTeachers2: TTable
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
    Top = 92
    object SmallintField1: TSmallintField
      FieldName = 'TeacherID'
    end
    object StringField1: TStringField
      FieldName = 'FirstName'
      Size = 15
    end
    object StringField2: TStringField
      FieldName = 'FirstName2'
      Size = 25
    end
    object StringField3: TStringField
      FieldName = 'LastName'
    end
    object StringField4: TStringField
      FieldName = 'LastName2'
      Size = 30
    end
    object SmallintField2: TSmallintField
      FieldName = 'JensId'
    end
    object SmallintField3: TSmallintField
      FieldName = 'MarriageID'
    end
    object StringField5: TStringField
      FieldName = 'DateE'
      Size = 8
    end
    object StringField6: TStringField
      FieldName = 'BSCourse'
      Size = 30
    end
    object StringField7: TStringField
      FieldName = 'BSUniversity'
    end
    object StringField8: TStringField
      FieldName = 'BSCountry'
      Size = 15
    end
    object StringField9: TStringField
      FieldName = 'BSDate'
      Size = 4
    end
    object StringField10: TStringField
      FieldName = 'BSProject'
      Size = 100
    end
    object StringField11: TStringField
      FieldName = 'MSCourse'
      Size = 30
    end
    object StringField12: TStringField
      FieldName = 'MSUniversity'
    end
    object StringField13: TStringField
      FieldName = 'MSCountry'
      Size = 15
    end
    object StringField14: TStringField
      FieldName = 'MSDate'
      Size = 4
    end
    object StringField15: TStringField
      FieldName = 'MSProject'
      Size = 100
    end
    object StringField16: TStringField
      FieldName = 'PHDCourse'
      Size = 30
    end
    object StringField17: TStringField
      FieldName = 'PHDUniversity'
    end
    object StringField18: TStringField
      FieldName = 'PHDCountry'
      Size = 15
    end
    object StringField19: TStringField
      FieldName = 'PHDDate'
      Size = 4
    end
    object StringField20: TStringField
      FieldName = 'PHDThesis'
      Size = 100
    end
    object StringField21: TStringField
      FieldName = 'DateofLastPromotion'
      Size = 8
    end
    object SmallintField4: TSmallintField
      FieldName = 'Lang1'
    end
    object SmallintField5: TSmallintField
      FieldName = 'Lang2'
    end
    object SmallintField6: TSmallintField
      FieldName = 'ConditionID'
    end
    object StringField22: TStringField
      FieldName = 'TeacherName'
      Size = 40
    end
    object StringField23: TStringField
      FieldName = 'Title'
      Size = 7
    end
    object StringField24: TStringField
      FieldName = 'EmailAddress'
      Size = 40
    end
  end
  object LTeachers2DS: TDataSource
    DataSet = LTeachers2
    Left = 48
    Top = 92
  end
  object ColorDialog1: TColorDialog
    Ctl3D = True
    Left = 16
    Top = 344
  end
end
