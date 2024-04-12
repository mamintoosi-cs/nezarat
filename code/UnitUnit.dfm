object UnitForm: TUnitForm
  Left = 193
  Top = 107
  Width = 544
  Height = 375
  Caption = 'UnitForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 40
    Width = 513
    Height = 65
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'UnitName'
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UnitBossName'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VahedeNezaratName'
        Visible = True
      end>
  end
  object DBImage1: TDBImage
    Left = 80
    Top = 120
    Width = 105
    Height = 105
    DataField = 'BlackUnitArm'
    DataSource = DataSource1
    Stretch = True
    TabOrder = 1
  end
  object DBImage2: TDBImage
    Left = 208
    Top = 120
    Width = 105
    Height = 105
    DataField = 'GrayUnitArm'
    DataSource = DataSource1
    Stretch = True
    TabOrder = 2
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'atNezarat'
    TableName = 'UnitInfo.DB'
    Left = 40
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 80
    Top = 8
  end
end
