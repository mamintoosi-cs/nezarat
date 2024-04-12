object Form1: TForm1
  Left = 250
  Top = 155
  Width = 544
  Height = 375
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 256
    Top = 216
    Width = 32
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 256
    Top = 240
    Width = 32
    Height = 13
    Caption = 'Label2'
  end
  object Button1: TButton
    Left = 232
    Top = 72
    Width = 75
    Height = 25
    Caption = 'RadehBandy'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 232
    Top = 112
    Width = 75
    Height = 25
    Caption = 'BossRep'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 232
    Top = 152
    Width = 75
    Height = 25
    Caption = 'LessonsReports'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Edit1: TEdit
    Left = 312
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '169'
  end
  object BitBtn1: TBitBtn
    Left = 48
    Top = 120
    Width = 129
    Height = 97
    TabOrder = 4
    Kind = bkClose
  end
  object Button4: TButton
    Left = 240
    Top = 264
    Width = 75
    Height = 25
    Caption = 'EmailOptions'
    TabOrder = 5
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 240
    Top = 296
    Width = 75
    Height = 25
    Caption = 'config'
    TabOrder = 6
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 360
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Button6'
    TabOrder = 7
    OnClick = Button6Click
  end
  object Memo1: TMemo
    Left = 344
    Top = 240
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 8
  end
  object Button7: TButton
    Left = 320
    Top = 72
    Width = 75
    Height = 25
    Caption = 'PrintTables'
    TabOrder = 9
    OnClick = Button7Click
  end
  object InsertToTeachersFlat: TQuery
    DatabaseName = 'atNezarat'
    DataSource = DM.TermsDS
    SQL.Strings = (
      'insert into TeachersFlat'
      '(TeacherID,FirstName,LastName,Title,HamkariName,MadrakName,'
      ' FacultyID,FacultyName,GroupID,GroupName,JensName,'
      
        ' ID,LessonID,LessonName,LessonTypeID,LessonTypeName,LessonGroupN' +
        'ame,'
      ' LessonAverage,LessonRotbeh,TPasokh'
      ')'
      
        'select T.TeacherID,T.FirstName,T.LastName,T.Title,H.HamkariName,' +
        'M.MadrakName,'
      '   F.FacultyID,F.FacultyName,G.GroupID,G.GroupName,J.JensName,'
      
        '   Q.ID,L.LessonID,L.LessonName,L.LessonTypeID,LT.LessonTypeName' +
        ',G2.GroupName,'
      '   Q.Average,Q.Rotbeh,Q.TPasokh'
      
        'from Teachers T,varQLT Q,Madrak M,Hamkari H,Lessons L,varTeacher' +
        's VT,'
      '   Faculties F,Groups G,Jens J,Groups G2,LessonsTypes LT'
      'where T.TeacherID=Q.TeacherID and T.TeacherID=VT.TeacherID and'
      
        '  VT.MadrakID=M.MadrakID and VT.HamkariID=H.HamkariID and VT.Gro' +
        'upID=G.GroupID'
      
        '  and G.FacultyID=F.FacultyID and T.JensID=J.JensID and Q.GroupI' +
        'D=G2.GroupID'
      
        '  and Q.LessonID=L.LessonID and  Q.TermID=:TermID and VT.TermID=' +
        ':TermID'
      '  and L.LessonTypeID=LT.LessonTypeID'
      ''
      #10
      ''
      ''
      '')
    Left = 16
    Top = 8
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'TermID'
        ParamType = ptUnknown
        Size = 2
      end
      item
        DataType = ftSmallint
        Name = 'TermID'
        ParamType = ptUnknown
      end>
  end
  object EmptyTeachersFlat: TQuery
    DatabaseName = 'atNezarat'
    SQL.Strings = (
      'delete from TeachersFlat')
    Left = 16
    Top = 40
  end
end
