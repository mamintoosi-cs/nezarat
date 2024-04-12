inherited FilteringForm: TFilteringForm
  Left = 139
  Top = 133
  HorzScrollBar.Range = 0
  VertScrollBar.Range = 0
  ActiveControl = CancelBitBtn
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'FilteringForm'
  ClientHeight = 383
  ClientWidth = 403
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel [0]
    Left = 32
    Top = 256
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
    Visible = False
  end
  object Label2: TLabel [1]
    Left = 32
    Top = 280
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
    Visible = False
  end
  object Label3: TLabel [2]
    Left = 32
    Top = 304
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
    Visible = False
  end
  inherited ReturnToMainBitBtn: TBitBtn
    Left = 105
    Width = 96
    Hint = #1582#1585#1608#1580' '#1608' '#1579#1576#1578' '#1578#1594#1610#1610#1585#1575#1578' '#1662#1587' '#1575#1586' '#1575#1606#1580#1575#1605' '#1605#1581#1575#1587#1576#1575#1578
    Caption = #1578#1575#1610#1610#1583
    OnClick = ReturnToMainBitBtnClick
    Kind = bkOK
  end
  inherited StatusPanel: TPanel
    Top = 365
    Width = 403
    TabOrder = 2
    inherited UnitNameDBText: TDBText
      Left = 294
    end
    inherited MsgLabel: TLabel
      Width = 140
    end
  end
  object VERadioGroup: TRadioGroup
    Left = 81
    Top = 32
    Width = 241
    Height = 105
    Caption = #1608#1590#1593#1610#1578' '#1575#1587#1578#1582#1583#1575#1605#1610
    ItemIndex = 0
    Items.Strings = (
      #1603#1604#1610#1607' '#1575#1593#1590#1575
      #1575#1593#1590#1575#1610' '#1662#1610#1605#1575#1606#1610#1548#1585#1587#1605#1610' '#1570#1586#1605#1575#1610#1588#1610' '#1608' '#1585#1587#1605#1610
      #1575#1593#1590#1575#1610' '#1581#1602' '#1575#1604#1578#1583#1585#1610#1587)
    TabOrder = 1
  end
  object NDRadioGroup: TRadioGroup
    Left = 208
    Top = 144
    Width = 113
    Height = 161
    Caption = #1606#1608#1593' '#1583#1585#1587
    ItemIndex = 0
    Items.Strings = (
      #1578#1605#1575#1605' '#1583#1585#1608#1587
      #1606#1592#1585#1610
      #1593#1605#1604#1610
      #1603#1575#1585#1711#1575#1607#1610
      #1570#1586#1605#1575#1610#1588#1711#1575#1607#1610)
    TabOrder = 3
  end
  object MDRadioGroup: TRadioGroup
    Left = 80
    Top = 144
    Width = 113
    Height = 161
    Caption = #1605#1602#1591#1593' '#1583#1585#1587
    ItemIndex = 0
    Items.Strings = (
      #1603#1604#1610#1607' '#1605#1602#1575#1591#1593
      #1603#1575#1585#1583#1575#1606#1610
      #1603#1575#1585#1588#1606#1575#1587#1610
      #1603#1575#1585#1588#1606#1575#1587#1610' '#1575#1585#1588#1583)
    TabOrder = 4
  end
  object StaticText1: TStaticText
    Left = 33
    Top = 10
    Width = 337
    Height = 20
    Caption = #1608#1590#1593#1610#1578' '#1575#1593#1590#1575#1610' '#1607#1610#1574#1578' '#1593#1604#1605#1610' '#1608' '#1583#1585#1608#1587' '#1605#1588#1605#1608#1604' '#1583#1585' '#1711#1586#1575#1585#1588#1575#1578' '#1585#1575' '#1605#1588#1582#1589' '#1606#1605#1575#1610#1610#1583
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 5
  end
  object CancelBitBtn: TBitBtn
    Left = 201
    Top = 318
    Width = 96
    Height = 38
    Hint = #1582#1585#1608#1580' '#1608' '#1604#1594#1608' '#1578#1594#1610#1610#1585#1575#1578' '#1576#1583#1608#1606' '#1575#1606#1580#1575#1605' '#1605#1581#1575#1587#1576#1575#1578
    Caption = #1604#1594#1608' '#1578#1594#1610#1610#1585#1575#1578
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = CancelBitBtnClick
    Kind = bkCancel
  end
  object InsertToFlat1Query: TQuery
    DatabaseName = 'atNezarat'
    DataSource = DM.TermsDS
    SQL.Strings = (
      'insert into flat1'
      
        '(ID,TeacherID,FirstName,LastName,TermID,HamkariID,HamkariName,Ma' +
        'drakID,MadrakName,'
      
        ' FacultyID,FacultyName,GroupID,GroupName,JensID,JensName,LessonI' +
        'D,LessonName,LessonGroupID,LessonGroupName,'
      ' LessonDegreeID,'
      
        ' LessonAverage,LessonRotbeh,TPasokh,TeacherAverage,GroupAverage,' +
        'FacultyAverage,IsLessonInRange,IsLessonUnderRange'
      ')'
      
        'select Q.ID,T.TeacherID,T.FirstName,T.LastName,Q.TermID,H.Hamkar' +
        'iID,H.HamkariName,M.MadrakID,M.MadrakName,'
      
        '   F.FacultyID,F.FacultyName,G.GroupID,G.GroupName,J.JensID,J.Je' +
        'nsName,L.LessonID,L.LessonName,Q.GroupID,G2.GroupName,'
      '   L.LessonDegreeID,'
      '   Q.Average,Q.Rotbeh,Q.TPasokh,0,0,0,0,0'
      
        'from Teachers T,varQLT Q,Madrak M,Hamkari H,Lessons L,varTeacher' +
        's VT,Faculties F,Groups G,Jens J,Groups G2'
      'where T.TeacherID=Q.TeacherID and T.TeacherID=VT.TeacherID and'
      
        '  VT.MadrakID=M.MadrakID and VT.HamkariID=H.HamkariID and VT.Gro' +
        'upID=G.GroupID'
      
        '  and G.FacultyID=F.FacultyID and T.JensID=J.JensID and Q.GroupI' +
        'D=G2.GroupID'
      
        '  and Q.LessonID=L.LessonID and  Q.TermID=:TermID and VT.TermID=' +
        ':TermID'
      ''
      ''
      ''
      ''
      ''
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
  object EmptyFlat1Query: TQuery
    DatabaseName = 'atNezarat'
    SQL.Strings = (
      'delete from Flat1')
    Left = 48
    Top = 8
  end
end
