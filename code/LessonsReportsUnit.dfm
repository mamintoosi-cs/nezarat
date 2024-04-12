inherited LessonsReportsForm: TLessonsReportsForm
  Left = 262
  Top = 131
  Width = 583
  Height = 577
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Caption = 'LessonsReportsForm'
  Color = clMoneyGreen
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel [0]
    Left = 367
    Top = 376
    Width = 172
    Height = 16
    Caption = #1578#1584#1603#1585' '#1605#1608#1585#1583' '#1670#1575#1662' '#1583#1585' '#1575#1606#1578#1607#1575#1610' '#1606#1575#1605#1607' '#1576#1607' '#1575#1587#1578#1575#1583
  end
  object PaperSizeRadioGroup: TRadioGroup [1]
    Left = 29
    Top = 246
    Width = 183
    Height = 68
    ItemIndex = 0
    Items.Strings = (
      #1583#1585' '#1602#1575#1604#1576' '#1603#1575#1594#1584' A4'
      #1583#1585' '#1602#1575#1604#1576' '#1603#1575#1594#1584' A5')
    TabOrder = 9
  end
  inherited ReturnToMainBitBtn: TBitBtn
    Left = 44
    Top = 456
  end
  inherited StatusPanel: TPanel
    Top = 532
    Width = 575
    inherited UnitNameDBText: TDBText
      Left = 466
    end
    inherited MsgLabel: TLabel
      Width = 312
    end
  end
  inherited PrintBitBtn: TBitBtn
    Left = 44
    Top = 428
    TabOrder = 13
  end
  inherited SelectionBitBtn: TBitBtn
    Left = 44
    Top = 484
    TabOrder = 14
    Visible = False
  end
  inherited SendMethodRadioGroup: TRadioGroup
    Left = 28
    Top = 322
    Height = 87
    TabOrder = 15
  end
  inherited GroupBox1: TGroupBox
    Left = 248
    Top = 246
    TabOrder = 16
    inherited EhteramCheckBox: TCheckBox
      Enabled = False
    end
    inherited NOVisibilityCheckBox: TCheckBox
      Top = 22
      Checked = False
      State = cbUnchecked
    end
  end
  object RadioGroup1: TRadioGroup [8]
    Left = 176
    Top = 23
    Width = 382
    Height = 210
    Caption = #1711#1586#1610#1606#1607' '#1605#1608#1585#1583' '#1606#1592#1585' '#1582#1608#1583' '#1585#1575' '#1575#1606#1578#1582#1575#1576' '#1606#1605#1575#1610#1610#1583
    Color = clMoneyGreen
    ItemIndex = 3
    Items.Strings = (
      #1606#1578#1575#1610#1580' '#1575#1585#1586#1588#1610#1575#1576#1610' '#1603#1604' '#1583#1575#1606#1588#1711#1575#1607
      #1606#1578#1575#1610#1580' '#1575#1585#1586#1588#1610#1575#1576#1610' '#1575#1587#1575#1578#1610#1583' '#1583#1575#1606#1588#1603#1583#1607
      #1606#1578#1575#1610#1580' '#1575#1585#1586#1588#1610#1575#1576#1610' '#1575#1587#1575#1578#1610#1583' '#1711#1600#1600#1600#1600#1585#1608#1607
      #1606#1578#1575#1610#1580' '#1575#1585#1586#1588#1610#1575#1576#1610' '#1583#1585#1608#1587' '#1575#1587#1600#1578#1600#1600#1600#1575#1583
      #1606#1578#1610#1580#1607' '#1575#1585#1586#1588#1610#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1575#1576#1610' '#1583#1585#1587)
    ParentColor = False
    TabOrder = 2
    OnClick = RadioGroup1Click
  end
  object FacultyDBBox: TDBLookupComboBox [9]
    Tag = 1
    Left = 241
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
    TabOrder = 3
    OnClick = FacultyDBBoxClick
  end
  object GroupDBBox: TDBLookupComboBox [10]
    Tag = 2
    Left = 241
    Top = 122
    Width = 144
    Height = 24
    Color = clWhite
    DataField = 'Short2'
    DataSource = DM.AlakiDS
    KeyField = 'GroupID'
    ListField = 'GroupName'
    ListSource = DM.GroupsDS
    TabOrder = 4
    OnClick = FacultyDBBoxClick
  end
  object TeacherDBBox: TDBLookupComboBox [11]
    Tag = 3
    Left = 241
    Top = 158
    Width = 144
    Height = 24
    Color = clWhite
    DataField = 'Short3'
    DataSource = DM.AlakiDS
    KeyField = 'TeacherID'
    ListField = 'TeacherName'
    ListSource = DM.ActiveTeachersDS
    TabOrder = 5
    OnClick = FacultyDBBoxClick
  end
  object LessonDBBox: TDBLookupComboBox [12]
    Tag = 4
    Left = 184
    Top = 193
    Width = 201
    Height = 24
    Color = clWhite
    DataField = 'Short4'
    DataSource = DM.AlakiDS
    KeyField = 'LessonID'
    ListField = 'LessonName'
    ListSource = DM.ActiveLessonsQueryDS
    TabOrder = 6
    OnClick = FacultyDBBoxClick
  end
  object LetterCheckBox: TCheckBox [13]
    Left = 67
    Top = 247
    Width = 137
    Height = 17
    Caption = #1606#1575#1605#1607' '#1576#1607' '#1575#1587#1575#1578#1610#1583' '#1670#1575#1662' '#1588#1608#1583
    Checked = True
    State = cbChecked
    TabOrder = 7
    OnClick = LetterCheckBoxClick
  end
  object LessonCheckBox: TCheckBox [14]
    Left = 405
    Top = 247
    Width = 137
    Height = 17
    Caption = #1711#1586#1575#1585#1588' '#1583#1585#1608#1587' '#1670#1575#1662' '#1588#1608#1583
    TabOrder = 8
    OnClick = LessonCheckBoxClick
  end
  object NoteMemo: TMemo [15]
    Left = 248
    Top = 400
    Width = 305
    Height = 113
    TabOrder = 10
  end
  object DBGrid1: TDBGrid [16]
    Left = 20
    Top = 32
    Width = 148
    Height = 201
    DataSource = DM.ActiveTeachersDS
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'TeacherName'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Zar'
        Font.Style = []
        Title.Caption = #1606#1575#1605' '#1575#1587#1578#1575#1583
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ReportStatus'
        PickList.Strings = (
          #1670
          #1605
          '-')
        Title.Caption = #1711
        Visible = True
      end>
  end
  object Memo1: TMemo [17]
    Left = 232
    Top = 432
    Width = 161
    Height = 41
    Lines.Strings = (
      'Memo1')
    TabOrder = 12
    Visible = False
  end
  object MailCheckBox: TCheckBox [18]
    Left = 237
    Top = 320
    Width = 305
    Height = 41
    Caption = #1601#1602#1591' '#1576#1607' '#1575#1601#1585#1575#1583#1610' '#1603#1607' '#1602#1576#1604#1575' mail '#1601#1585#1587#1578#1575#1583#1607' '#1606#1588#1583#1607' '#1575#1587#1578' '#1575#1585#1587#1575#1604' '#1588#1608#1583'.'
    Checked = True
    State = cbChecked
    TabOrder = 17
  end
  inherited PR_Teachers: TTable
    Left = 16
    Top = 8
  end
end
