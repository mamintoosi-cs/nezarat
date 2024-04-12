inherited ParentReportsForm: TParentReportsForm
  Left = 304
  Top = 186
  Width = 584
  Height = 580
  Caption = 'ParentReportsForm'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 16
  inherited ReturnToMainBitBtn: TBitBtn
    Left = 36
    Top = 480
    Width = 145
    Height = 28
  end
  inherited StatusPanel: TPanel
    Top = 535
    Width = 576
    inherited UnitNameDBText: TDBText
      Left = 467
    end
    inherited MsgLabel: TLabel
      Width = 313
    end
  end
  object PrintBitBtn: TBitBtn
    Left = 36
    Top = 424
    Width = 145
    Height = 28
    Caption = #1580#1575#1662
    TabOrder = 2
    OnClick = PrintBitBtnClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
      8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
      8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
      8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
  end
  object SelectionBitBtn: TBitBtn
    Left = 36
    Top = 452
    Width = 145
    Height = 28
    Hint = 
      #1575#1606#1578#1582#1575#1576' '#1608#1590#1593#1610#1578' '#1575#1587#1578#1582#1583#1575#1605#1610' '#1575#1593#1590#1575#1610' '#1607#1610#1574#1578' '#1593#1604#1605#1610' '#1608' '#1606#1608#1593' '#1608' '#1605#1602#1591#1593' '#1583#1585#1608#1587' '#1605#1608#1585#1583' '#1711#1586#1575 +
      #1585#1588' '#1711#1610#1585#1610
    Caption = #1575#1606#1578#1582#1575#1576' '#1606#1608#1593' '#1583#1585#1587
    TabOrder = 3
  end
  object SendMethodRadioGroup: TRadioGroup
    Left = 16
    Top = 242
    Width = 185
    Height = 103
    Caption = #1582#1585#1608#1580#1610' '#1711#1586#1575#1585#1588
    ItemIndex = 0
    Items.Strings = (
      #1605#1585#1608#1585' '#1711#1586#1575#1585#1588
      #1670#1575#1662' '#1711#1586#1575#1585#1588' '#1585#1608#1610' '#1670#1575#1662#1711#1585
      #1575#1585#1587#1575#1604' Email')
    TabOrder = 4
    OnClick = SendMethodRadioGroupClick
  end
  object GroupBox1: TGroupBox
    Left = 232
    Top = 240
    Width = 305
    Height = 68
    TabOrder = 5
    object EhteramCheckBox: TCheckBox
      Left = 104
      Top = 42
      Width = 190
      Height = 17
      Caption = #1576#1585#1670#1587#1576' '#1576#1575' '#1578#1602#1583#1610#1605' '#1575#1581#1578#1585#1575#1605' '#1670#1575#1662' '#1588#1608#1583
      TabOrder = 0
    end
    object NOVisibilityCheckBox: TCheckBox
      Left = 8
      Top = 17
      Width = 286
      Height = 17
      Caption = #1576#1585#1670#1587#1576' '#1588#1605#1575#1585#1607#1548' '#1578#1575#1585#1610#1582' '#1608' '#1662#1610#1608#1587#1578' '#1583#1585' '#1711#1586#1575#1585#1588' '#1583#1585#1587' '#1670#1575#1662' '#1588#1608#1583
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 1
    end
  end
  object PR_Teachers: TTable
    Active = True
    DatabaseName = 'atNezarat'
    IndexFieldNames = 'TeacherID'
    TableName = 'Teachers.DB'
    Left = 24
    Top = 16
  end
end
