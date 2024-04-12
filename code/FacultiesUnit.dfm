inherited FacultiesForm: TFacultiesForm
  Left = 192
  Top = 108
  Height = 331
  VertScrollBar.ParentColor = False
  VertScrollBar.Smooth = True
  VertScrollBar.Visible = False
  Caption = #1575#1591#1604#1575#1593#1575#1578' '#1583#1575#1606#1588#1603#1583#1607' '#1607#1575
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object DBGrid1: TDBGrid [0]
    Left = 56
    Top = 23
    Width = 417
    Height = 138
    Color = clWhite
    DataSource = DM.FacultiesDS
    FixedColor = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'FacultyID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FacultyName'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BossName'
        Visible = True
      end>
  end
  inherited ReturnToMainBitBtn: TBitBtn
    Left = 176
    Top = 230
    TabOrder = 3
    OnClick = BitBtn2Click
    Kind = bkCustom
  end
  inherited StatusPanel: TPanel
    Top = 286
  end
  object DBNavigator1: TDBNavigator
    Left = 159
    Top = 185
    Width = 220
    Height = 32
    DataSource = DM.FacultiesDS
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
    TabOrder = 2
  end
end
