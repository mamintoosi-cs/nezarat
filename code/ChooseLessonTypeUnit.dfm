inherited ChooseLessonType: TChooseLessonType
  Left = 383
  Top = 131
  Width = 324
  Height = 114
  VertScrollBar.Visible = False
  BorderIcons = []
  Caption = #1575#1606#1580#1575#1605' '#1605#1581#1575#1587#1576#1575#1578
  ParentFont = True
  OldCreateOrder = True
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel [0]
    Left = 24
    Top = 216
    Width = 43
    Height = 16
    Caption = 'Label1'
    Color = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel [1]
    Left = 24
    Top = 231
    Width = 43
    Height = 16
    Caption = 'Label1'
    Color = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label3: TLabel [2]
    Left = 24
    Top = 247
    Width = 43
    Height = 16
    Caption = 'Label1'
    Color = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object MinIDDBText: TDBText [3]
    Left = 232
    Top = 208
    Width = 65
    Height = 17
    DataField = 'MIN OF ID'
    DataSource = MinIDQueryDS
  end
  object MaxIDDBText: TDBText [4]
    Left = 232
    Top = 240
    Width = 65
    Height = 17
    DataField = 'MAX OF ID'
    DataSource = MaxIDQueryDS
  end
  object Label4: TLabel [5]
    Left = 94
    Top = 16
    Width = 129
    Height = 16
    Caption = ' '#1604#1591#1601#1575'" '#1670#1606#1583' '#1604#1581#1592#1607' '#1589#1576#1585' '#1603#1606#1610#1583'...'
  end
  inherited ReturnToMainBitBtn: TBitBtn
    Left = 88
    Top = 232
    Width = 133
    Height = 28
    Caption = #1578#1575#1610#1610#1583
    Default = True
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    Kind = bkCustom
  end
  inherited StatusPanel: TPanel
    Top = 263
    Width = 316
    TabOrder = 2
    inherited UnitNameDBText: TDBText
      Left = 207
    end
    inherited MsgLabel: TLabel
      Width = 53
    end
  end
  object NDRadioGroup: TRadioGroup
    Left = 72
    Top = 88
    Width = 153
    Height = 129
    Caption = #1606#1608#1593' '#1583#1585#1587
    ItemIndex = 0
    Items.Strings = (
      #1606#1592#1585#1610
      #1593#1605#1604#1610
      #1603#1575#1585#1711#1575#1607#1610
      #1570#1586#1605#1575#1610#1588#1711#1575#1607#1610)
    TabOrder = 1
  end
  object ProgressBar1: TProgressBar
    Left = 32
    Top = 48
    Width = 249
    Height = 16
    Min = 0
    Max = 100
    Step = 1
    TabOrder = 3
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
      ' LessonDegreeName,LessonAverage,LessonRotbeh,TPasokh'
      ')'
      
        'select T.TeacherID,T.FirstName,T.LastName,T.Title,H.HamkariName,' +
        'M.MadrakName,'
      '   F.FacultyID,F.FacultyName,G.GroupID,G.GroupName,J.JensName,'
      
        '   Q.ID,L.LessonID,L.LessonName,L.LessonTypeID,LT.LessonTypeName' +
        ',G2.GroupName,'
      '   LD.LessonDegreeName,Q.Average,Q.Rotbeh,Q.TPasokh'
      
        'from Teachers T,varQLT Q,Madrak M,Hamkari H,Lessons L,varTeacher' +
        's VT,'
      
        '   Faculties F,Groups G,Jens J,Groups G2,LessonsTypes LT,Lessons' +
        'Degrees LD'
      'where T.TeacherID=Q.TeacherID and T.TeacherID=VT.TeacherID and'
      
        '  VT.MadrakID=M.MadrakID and VT.HamkariID=H.HamkariID and VT.Gro' +
        'upID=G.GroupID'
      
        '  and G.FacultyID=F.FacultyID and T.JensID=J.JensID and Q.GroupI' +
        'D=G2.GroupID'
      
        '  and Q.LessonID=L.LessonID and  Q.TermID=:TermID and VT.TermID=' +
        ':TermID'
      
        '  and L.LessonTypeID=LT.LessonTypeID and L.LessonDegreeID=LD.Les' +
        'sonDegreeID')
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
  object MinIDQuery: TQuery
    Active = True
    DatabaseName = 'atNezarat'
    SQL.Strings = (
      'select min(ID)'
      'from TeachersFlat')
    Left = 16
    Top = 152
  end
  object MinIDQueryDS: TDataSource
    DataSet = MinIDQuery
    Left = 40
    Top = 152
  end
  object MaxIDQueryDS: TDataSource
    DataSet = MaxIDQuery
    Left = 40
    Top = 184
  end
  object MaxIDQuery: TQuery
    Active = True
    DatabaseName = 'atNezarat'
    SQL.Strings = (
      'select max(ID)'
      'from TeachersFlat')
    Left = 16
    Top = 184
  end
end
