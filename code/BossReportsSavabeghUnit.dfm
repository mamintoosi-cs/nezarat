inherited BossReportsSavabeghForm: TBossReportsSavabeghForm
  Left = 231
  Top = 172
  Width = 586
  Height = 420
  Caption = #1587#1608#1575#1576#1602' '#1575#1585#1586#1588#1610#1575#1576#1610' '#1607#1575#1610' '#1575#1587#1575#1578#1610#1583
  Color = clMoneyGreen
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel [0]
    Left = 200
    Top = 344
    Width = 43
    Height = 16
    Caption = 'Label1'
    Visible = False
  end
  object Label2: TLabel [1]
    Left = 188
    Top = 268
    Width = 27
    Height = 16
    Caption = #1604#1594#1575#1610#1578':'
  end
  object Label3: TLabel [2]
    Left = 188
    Top = 245
    Width = 13
    Height = 16
    Caption = #1575#1586':'
  end
  inherited SelectionBitBtn: TBitBtn [3]
    Left = 9
    Top = 316
    Visible = False
    OnClick = SelectionBitBtnClick
  end
  object RadioGroup1: TRadioGroup [4]
    Left = 196
    Top = 23
    Width = 354
    Height = 210
    Caption = #1711#1586#1610#1606#1607' '#1605#1608#1585#1583' '#1606#1592#1585' '#1582#1608#1583' '#1585#1575' '#1575#1606#1578#1582#1575#1576' '#1606#1605#1575#1610#1610#1583
    Color = clMoneyGreen
    ItemIndex = 0
    Items.Strings = (
      #1606#1578#1575#1610#1580' '#1575#1585#1586#1588#1610#1575#1576#1610' '#1603#1604' '#1583#1575#1606#1588#1711#1575#1607
      #1606#1578#1575#1610#1580' '#1575#1585#1586#1588#1610#1575#1576#1610' '#1575#1587#1575#1578#1610#1583' '#1583#1575#1606#1588#1603#1583#1607
      #1606#1578#1575#1610#1580' '#1575#1585#1586#1588#1610#1575#1576#1610' '#1575#1587#1575#1578#1610#1583' '#1711#1600#1600#1600#1600#1585#1608#1607
      #1606#1578#1575#1610#1580' '#1575#1585#1586#1588#1610#1575#1576#1610' '#1583#1585#1608#1587' '#1575#1587#1600#1578#1600#1600#1600#1575#1583
      #1606#1578#1610#1580#1607' '#1575#1585#1586#1588#1610#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1575#1576#1610' '#1583#1585#1587)
    ParentColor = False
    TabOrder = 1
    OnClick = RadioGroup1Click
  end
  object FacultyDBBox: TDBLookupComboBox [5]
    Tag = 1
    Left = 233
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
    TabOrder = 8
    OnClick = FacultyDBBoxClick
  end
  object GroupDBBox: TDBLookupComboBox [6]
    Tag = 2
    Left = 233
    Top = 122
    Width = 144
    Height = 24
    Color = clWhite
    DataField = 'Short2'
    DataSource = DM.AlakiDS
    KeyField = 'GroupID'
    ListField = 'GroupName'
    ListSource = DM.GroupsDS
    TabOrder = 9
    OnClick = FacultyDBBoxClick
  end
  object TeacherDBBox: TDBLookupComboBox [7]
    Tag = 3
    Left = 233
    Top = 158
    Width = 144
    Height = 24
    Color = clWhite
    DataField = 'Short3'
    DataSource = DM.AlakiDS
    KeyField = 'TeacherID'
    ListField = 'TeacherName'
    ListSource = DM.ActiveTeachersDS
    TabOrder = 10
    OnClick = FacultyDBBoxClick
  end
  object LessonDBBox: TDBLookupComboBox [8]
    Tag = 4
    Left = 233
    Top = 193
    Width = 144
    Height = 24
    Color = clWhite
    DataField = 'Short4'
    DataSource = DM.AlakiDS
    KeyField = 'LessonID'
    ListField = 'LessonName'
    ListSource = DM.ActiveLessonsQueryDS
    TabOrder = 11
    OnClick = FacultyDBBoxClick
  end
  inherited StatusPanel: TPanel
    Top = 375
    Width = 578
    TabOrder = 6
    inherited UnitNameDBText: TDBText
      Left = 469
    end
    inherited MsgLabel: TLabel
      Width = 315
    end
  end
  inherited ReturnToMainBitBtn: TBitBtn [10]
    Left = 33
    Top = 331
  end
  inherited PrintBitBtn: TBitBtn [11]
    Left = 33
    Top = 303
  end
  inherited SendMethodRadioGroup: TRadioGroup
    Left = 32
    Top = 122
    Width = 145
    Height = 95
    ParentFont = False
  end
  inherited GroupBox1: TGroupBox
    Left = 245
    Height = 73
    inherited NOVisibilityCheckBox: TCheckBox
      Enabled = True
    end
  end
  object LorTRadioGroup: TRadioGroup [14]
    Left = 32
    Top = 22
    Width = 145
    Height = 83
    Caption = #1606#1608#1593' '#1711#1586#1575#1585#1588' '#1576#1585' '#1575#1587#1575#1587' '
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ItemIndex = 0
    Items.Strings = (
      #1711#1586#1575#1585#1588' '#1578#1601#1589#1610#1604#1610' ('#1575#1606#1601#1585#1575#1583#1610')'
      #1711#1586#1575#1585#1588' '#1605#1593#1583#1604' ('#1711#1585#1608#1607#1610')')
    ParentFont = False
    TabOrder = 7
  end
  object DBGrid1: TDBGrid [15]
    Left = 408
    Top = 320
    Width = 138
    Height = 41
    DataSource = DM.AlakiDS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    OnExit = DBGrid1Exit
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'TeacherName'
        Title.Caption = #1583#1585#1610#1575#1601#1578' '#1603#1606#1606#1583#1607' '#1606#1575#1605#1607
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 134
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid [16]
    Left = 245
    Top = 320
    Width = 160
    Height = 41
    DataSource = DM.AlakiDS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    OnExit = DBGrid2Exit
    OnKeyDown = DBGrid2KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'EmailRecieverAddress'
        Title.Caption = #1570#1583#1585#1587' '#1662#1587#1578' '#1575#1604#1603#1578#1585#1608#1606#1610#1603
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 156
        Visible = True
      end>
  end
  object DBLookupComboBox2: TDBLookupComboBox [17]
    Left = 16
    Top = 264
    Width = 169
    Height = 24
    DataField = 'ToTerm'
    DataSource = DM.AlakiDS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    KeyField = 'TermID'
    ListField = 'TermName'
    ListSource = LTermsDS
    ParentFont = False
    TabOrder = 14
  end
  object DBLookupComboBox1: TDBLookupComboBox [18]
    Left = 16
    Top = 240
    Width = 169
    Height = 24
    BiDiMode = bdRightToLeft
    DataField = 'FromTerm'
    DataSource = DM.AlakiDS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    KeyField = 'TermID'
    ListField = 'TermName'
    ListSource = LTermsDS
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 15
  end
  object LTeachers: TTable [19]
    Active = True
    DatabaseName = 'atNezarat'
    IndexFieldNames = 'TeacherID'
    MasterFields = 'Short3'
    MasterSource = DM.AlakiDS
    TableName = 'Teachers.DB'
    Left = 544
    Top = 328
  end
  object LTeachersDS: TDataSource [20]
    DataSet = LTeachers
    Left = 544
    Top = 360
  end
  object InsertHistoryToFlat1Query: TQuery
    DatabaseName = 'atNezarat'
    DataSource = DM.AlakiDS
    SQL.Strings = (
      'insert into flat1'
      
        '(ID,TeacherID,FirstName,LastName,TermID,HamkariID,HamkariName,Ma' +
        'drakID,MadrakName,'
      
        ' FacultyID,FacultyName,GroupID,GroupName,JensID,JensName,LessonI' +
        'D,LessonName,LessonGroupID,LessonGroupName,'
      ' LessonDegreeID,'
      ' LessonAverage,LessonRotbeh,TPasokh,TermName'
      ')'
      
        'select Q.ID,T.TeacherID,T.FirstName,T.LastName,Q.TermID,H.Hamkar' +
        'iID,H.HamkariName,M.MadrakID,M.MadrakName,'
      
        '   F.FacultyID,F.FacultyName,G.GroupID,G.GroupName,J.JensID,J.Je' +
        'nsName,L.LessonID,L.LessonName,Q.GroupID,G2.GroupName,'
      '   L.LessonDegreeID,'
      '   Q.Average,Q.Rotbeh,Q.TPasokh,Terms.TermName'
      
        'from Teachers T,varQLT Q,Madrak M,Hamkari H,Lessons L,varTeacher' +
        's VT,Faculties F,Groups G,Jens J,Groups G2,Terms'
      'where T.TeacherID=Q.TeacherID and T.TeacherID=VT.TeacherID and'
      
        '  VT.MadrakID=M.MadrakID and VT.HamkariID=H.HamkariID and VT.Gro' +
        'upID=G.GroupID'
      
        '  and G.FacultyID=F.FacultyID and T.JensID=J.JensID and Q.GroupI' +
        'D=G2.GroupID'
      
        '  and Q.LessonID=L.LessonID and  VT.TermID=Terms.TermID and Q.Te' +
        'rmID=Terms.TermID'
      
        '  and T.TeacherID=:Short3 and Terms.TermID>=:FromTerm and Terms.' +
        'TermID<=:ToTerm')
    Left = 64
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Short3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FromTerm'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ToTerm'
        ParamType = ptUnknown
      end>
  end
  object LTerms: TTable
    Active = True
    DatabaseName = 'atNezarat'
    TableName = 'Terms.DB'
    Left = 256
    Top = 328
  end
  object LTermsDS: TDataSource
    DataSet = LTerms
    Left = 256
    Top = 360
  end
  object EmptyFlat1Query: TQuery
    DatabaseName = 'atNezarat'
    SQL.Strings = (
      'delete from Flat1')
    Left = 112
    Top = 16
  end
  object InsertGroupHistoryQuery: TQuery
    DatabaseName = 'atNezarat'
    DataSource = DM.AlakiDS
    SQL.Strings = (
      'insert into flat1'
      '(ID,TeacherID,FirstName,LastName,TeacherAverage'
      ')'
      
        'select T.TeacherID,T.TeacherID,T.FirstName,T.LastName,AVG(Q.Aver' +
        'age)'
      'from Teachers T,varQLT Q,Terms'
      'where T.TeacherID=Q.TeacherID and Q.TermID=Terms.TermID'
      '    and Terms.TermID>=:FromTerm and Terms.TermID<=:ToTerm'
      'group by T.TeacherID,T.TeacherID,T.FirstName,T.LastName')
    Left = 24
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FromTerm'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ToTerm'
        ParamType = ptUnknown
      end>
  end
end
