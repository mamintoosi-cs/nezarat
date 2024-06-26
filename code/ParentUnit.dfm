object ParentForm: TParentForm
  Left = 376
  Top = 325
  Width = 544
  Height = 413
  BiDiMode = bdRightToLeft
  Caption = 'ParentForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = [fsBold]
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 16
  object ReturnToMainBitBtn: TBitBtn
    Left = 179
    Top = 318
    Width = 194
    Height = 38
    Caption = #1576#1575#1586#1711#1588#1578' '#1576#1607' '#1589#1601#1581#1607' '#1575#1589#1604#1610
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Kind = bkClose
  end
  object StatusPanel: TPanel
    Left = 0
    Top = 361
    Width = 536
    Height = 18
    Align = alBottom
    BevelOuter = bvLowered
    ParentColor = True
    TabOrder = 1
    object UnitNameDBText: TDBText
      Left = 427
      Top = 1
      Width = 108
      Height = 16
      Align = alRight
      AutoSize = True
      DataField = 'UnitName'
      DataSource = DM.UnitInfoDS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object TermNameDBText: TDBText
      Left = 1
      Top = 1
      Width = 153
      Height = 16
      Align = alLeft
      DataField = 'TermName'
      DataSource = DM.TermsDS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object MsgLabel: TLabel
      Left = 154
      Top = 1
      Width = 273
      Height = 16
      Align = alClient
      Alignment = taCenter
    end
  end
end
