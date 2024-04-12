inherited LessonsForm: TLessonsForm
  Left = 42
  Top = 99
  Width = 736
  Height = 456
  Caption = #1575#1591#1604#1575#1593#1575#1578' '#1583#1585#1608#1587
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 16
  inherited ReturnToMainBitBtn: TBitBtn
    Left = 267
    Top = 357
    OnClick = ReturnToMainBitBtnClick
    Kind = bkCustom
  end
  inherited StatusPanel: TPanel
    Top = 411
    Width = 728
    TabOrder = 3
    inherited UnitNameDBText: TDBText
      Left = 605
    end
    inherited MsgLabel: TLabel
      Width = 451
    end
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 20
    Width = 697
    Height = 271
    DataSource = DM.LessonsDS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Zar'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'LessonID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LessonName'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NOTUT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Default'
        Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NOOPE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Default'
        Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LessonTypeID'
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LessonTypeName'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LessonDegreeID'
        Title.Caption = #1603#1583' '#1605#1602#1591#1593' '#1583#1585#1587
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LessonDegreeName'
        Title.Caption = #1606#1575#1605' '#1605#1602#1591#1593' '#1583#1585#1587
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 239
    Top = 312
    Width = 250
    Height = 28
    DataSource = DM.LessonsDS
    TabOrder = 2
  end
end
