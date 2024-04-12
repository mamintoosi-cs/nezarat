inherited QuestionsRadehBandyForm: TQuestionsRadehBandyForm
  Left = 262
  Top = 131
  Width = 583
  Height = 342
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Caption = 'QuestionsRadehBandyForm'
  Color = clMoneyGreen
  Scaled = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  inherited ReturnToMainBitBtn: TBitBtn
    Left = 44
    Top = 216
  end
  inherited StatusPanel: TPanel
    Top = 290
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
    Top = 188
    TabOrder = 5
  end
  inherited SelectionBitBtn: TBitBtn
    Left = 44
    Top = 244
    TabOrder = 6
    Visible = False
  end
  inherited SendMethodRadioGroup: TRadioGroup
    Left = 28
    Top = 74
    Height = 87
    Items.Strings = (
      #1605#1585#1608#1585' '#1711#1586#1575#1585#1588
      #1670#1575#1662' '#1711#1586#1575#1585#1588' '#1585#1608#1610' '#1670#1575#1662#1711#1585)
    TabOrder = 7
  end
  inherited GroupBox1: TGroupBox
    Left = 248
    Top = 190
    TabOrder = 8
    inherited NOVisibilityCheckBox: TCheckBox
      Top = 22
      Checked = False
      Enabled = True
      State = cbUnchecked
    end
  end
  object RadioGroup1: TRadioGroup [6]
    Left = 232
    Top = 23
    Width = 326
    Height = 138
    Caption = #1711#1586#1610#1606#1607' '#1605#1608#1585#1583' '#1606#1592#1585' '#1582#1608#1583' '#1585#1575' '#1575#1606#1578#1582#1575#1576' '#1606#1605#1575#1610#1610#1583
    Color = clMoneyGreen
    ItemIndex = 2
    Items.Strings = (
      #1606#1578#1575#1610#1580' '#1575#1585#1586#1588#1610#1575#1576#1610' '#1603#1604' '#1583#1575#1606#1588#1711#1575#1607
      #1606#1578#1575#1610#1580' '#1575#1585#1586#1588#1610#1575#1576#1610' '#1575#1587#1575#1578#1610#1583' '#1583#1575#1606#1588#1603#1583#1607
      #1606#1578#1575#1610#1580' '#1575#1585#1586#1588#1610#1575#1576#1610' '#1575#1587#1575#1578#1610#1583' '#1711#1600#1600#1600#1600#1585#1608#1607)
    ParentColor = False
    TabOrder = 2
    OnClick = RadioGroup1Click
  end
  object FacultyDBBox: TDBLookupComboBox [7]
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
  object GroupDBBox: TDBLookupComboBox [8]
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
  object LessonTypeSelectionBitBtn: TBitBtn [9]
    Left = 24
    Top = 32
    Width = 193
    Height = 25
    Caption = #1575#1606#1578#1582#1575#1576' '#1606#1608#1593' '#1583#1585#1587' '#1608' '#1588#1605#1575#1585#1607' '#1587#1608#1575#1604
    TabOrder = 9
    OnClick = LessonTypeSelectionBitBtnClick
  end
  inherited PR_Teachers: TTable
    Left = 16
    Top = 8
  end
end
