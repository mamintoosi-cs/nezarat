inherited RadehBandyForm: TRadehBandyForm
  Left = 159
  Top = 190
  Width = 692
  Height = 482
  Caption = 'RadehBandyForm'
  Color = clMoneyGreen
  ParentFont = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label2: TLabel [0]
    Left = 191
    Top = 24
    Width = 36
    Height = 26
    Caption = '     --'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Zar'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  inherited ReturnToMainBitBtn: TBitBtn
    Left = 460
    Top = 328
    TabOrder = 6
  end
  inherited StatusPanel: TPanel
    Top = 437
    Width = 684
    inherited UnitNameDBText: TDBText
      Left = 575
    end
    inherited MsgLabel: TLabel
      Width = 421
    end
  end
  inherited PrintBitBtn: TBitBtn
    Left = 460
    Top = 272
  end
  inherited SelectionBitBtn: TBitBtn
    Left = 460
    Top = 300
    OnClick = SelectionBitBtnClick
  end
  inherited SendMethodRadioGroup: TRadioGroup
    Left = 472
    Top = 130
  end
  inherited GroupBox1: TGroupBox
    Left = 376
    Top = 48
    Width = 281
    inherited EhteramCheckBox: TCheckBox
      Left = 80
      Checked = True
      State = cbChecked
    end
    inherited NOVisibilityCheckBox: TCheckBox
      Left = 9
      Width = 260
      Caption = #1576#1585#1670#1587#1576' '#1588#1605#1575#1585#1607#1548' '#1578#1575#1585#1610#1582' '#1608' '#1662#1610#1608#1587#1578' '#1583#1585' '#1711#1586#1575#1585#1588' '#1670#1575#1662' '#1588#1608#1583
      Enabled = True
    end
  end
  object RotbehTV: TTreeView [7]
    Left = 71
    Top = 49
    Width = 277
    Height = 344
    BiDiMode = bdLeftToRight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Indent = 19
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    OnClick = RotbehTVClick
  end
  object Button1: TButton [8]
    Left = 408
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 7
    Visible = False
  end
  object Faculties: TTable
    Active = True
    DatabaseName = 'atNezarat'
    TableName = 'Faculties.DB'
    Left = 8
    Top = 80
  end
  object Groups: TTable
    Active = True
    DatabaseName = 'atNezarat'
    TableName = 'Groups.DB'
    Left = 8
    Top = 112
  end
  object LTeachers: TTable
    DatabaseName = 'atNezarat'
    IndexFieldNames = 'TeacherID'
    TableName = 'Teachers.DB'
    Left = 8
    Top = 144
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
    object LTeachersTeacherName: TStringField
      FieldName = 'TeacherName'
      Size = 40
    end
    object LTeachersTitle: TStringField
      FieldName = 'Title'
      Size = 7
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
    object LTeachersEmailAddress: TStringField
      FieldName = 'EmailAddress'
      Size = 40
    end
  end
  object DataSource1: TDataSource
    DataSet = LTeachers
    Left = 8
    Top = 184
  end
end
