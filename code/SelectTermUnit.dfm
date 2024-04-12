object SelectTermForm: TSelectTermForm
  Left = 246
  Top = 137
  Width = 267
  Height = 270
  BorderIcons = []
  Caption = #1575#1606#1578#1582#1575#1576' '#1578#1585#1605' '#1601#1593#1575#1604
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 72
    Top = 8
    Width = 113
    Height = 13
    Caption = #1578#1585#1605' '#1601#1593#1575#1604' '#1585#1575' '#1575#1606#1578#1582#1575#1576' '#1606#1605#1575#1610#1610#1583
  end
  object DBGrid1: TDBGrid
    Left = 30
    Top = 32
    Width = 196
    Height = 185
    BiDiMode = bdRightToLeft
    DataSource = DM.TermsDS
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentBiDiMode = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyUp = DBGrid1KeyUp
    Columns = <
      item
        Expanded = False
        FieldName = 'TermName'
        Title.Caption = #1593#1606#1608#1575#1606' '#1578#1585#1605
        Width = 180
        Visible = True
      end>
  end
end
