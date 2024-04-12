object Form1: TForm1
  Left = 87
  Top = 107
  Width = 649
  Height = 375
  Caption = 'Form1'
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
    Left = 16
    Top = 80
    Width = 609
    Height = 217
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 56
    Top = 16
  end
  object Query1: TQuery
    DatabaseName = 'atNezarat'
    DataSource = DM.TermsDS
    RequestLive = True
    SQL.Strings = (
      'SELECT Q.TeacherID,T.LastName,Q.LessonID,L.LessonName'
      'FROM varQLT Q,Teachers T,Lessons L'#13
      'WHERE Q.TermID=:TermID and Q.TeacherID=T.TeacherID'
      'and Q.LessonID=L.LessonID'
      'order by T.LastName'
      '')
    Left = 16
    Top = 16
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'TermID'
        ParamType = ptUnknown
        Size = 2
      end>
    object Query1TeacherID: TSmallintField
      FieldName = 'TeacherID'
      Origin = 'ATNEZARAT."varQlt.DB".TeacherID'
    end
    object Query1LastName: TStringField
      FieldName = 'LastName'
      Origin = 'ATNEZARAT."Teachers.DB".LastName'
    end
    object Query1LessonID: TSmallintField
      FieldName = 'LessonID'
      Origin = 'ATNEZARAT."varQlt.DB".LessonID'
    end
    object Query1LessonName: TStringField
      FieldName = 'LessonName'
      Origin = 'ATNEZARAT."Lessons.DB".LessonName'
      Size = 35
    end
  end
end
