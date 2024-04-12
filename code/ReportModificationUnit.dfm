inherited ReportModificationForm: TReportModificationForm
  Left = 5
  Top = 96
  Width = 767
  Height = 533
  Caption = #1575#1589#1604#1575#1581' '#1583#1585#1608#1587' '#1582#1608#1575#1606#1583#1607' '#1588#1583#1607' '#1575#1586' OMR'
  ParentFont = True
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object SearchButton: TSpeedButton [0]
    Left = 500
    Top = 408
    Width = 23
    Height = 27
    Hint = #1580#1587#1578#1580#1608#1610' '#1610#1603' '#1575#1587#1578#1575#1583' '#1610#1575' '#1583#1585#1587
    Glyph.Data = {
      CA010000424DCA01000000000000760000002800000022000000110000000100
      04000000000054010000CE0E0000D80E00001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333333FBFFF
      FFFFF3333333333333333300000033333333FBBFFFFBF3333333333333333300
      00003333333FBFFFFBFFF333333333333333330000003333333FBFFFFBFBF333
      3333333333333300000033333333FBBFFFFFF333333333333333330000003333
      333444FBFFFBF3333333888333333300000033333344834FBFFFF33333388738
      333333000000333334847F84BFFFF33333878737833333000000333334484F84
      FBBFB333338878378333330000003333348F74483FF3F3333387338873333300
      0000333344FFF743333333333883333833333300000033448F84443333333338
      873388873333330000003448F74333333333338873387773333333000000348F
      77333333333333873337333333333300000034F7743333333333338333873333
      3333330000003444433333333333338888733333333333000000333333333333
      3333333333333333333333000000}
    NumGlyphs = 2
    OnClick = SearchButtonClick
  end
  inherited ReturnToMainBitBtn: TBitBtn
    Left = 298
    Top = 438
    OnClick = ReturnToMainBitBtnClick
  end
  inherited StatusPanel: TPanel
    Top = 488
    Width = 759
    TabOrder = 3
    inherited UnitNameDBText: TDBText
      Left = 650
    end
    inherited MsgLabel: TLabel
      Width = 496
      Caption = #1576#1585#1575#1610' '#1583#1610#1583#1606' '#1604#1610#1587#1578' '#1575#1587#1575#1578#1610#1583' '#1603#1604#1610#1583' F5 '#1585#1575' '#1601#1588#1575#1585' '#1583#1607#1610#1583
      Visible = False
    end
  end
  object DBGrid1: TDBGrid
    Left = 44
    Top = 23
    Width = 671
    Height = 360
    DataSource = QLTDS
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    OnEnter = DBGrid1Enter
    OnExit = DBGrid1Exit
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Color = clLime
        Expanded = False
        FieldName = 'TeacherID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Default'
        Font.Style = [fsBold]
        Title.Caption = #1603#1583' '#1575#1587#1578#1575#1583
        Width = 40
        Visible = True
      end
      item
        Color = 52224
        Expanded = False
        FieldName = '_TeacherLastName'
        Title.Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = '_TeacherFirstName'
        Title.Caption = #1606#1575#1605
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LessonID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Default'
        Font.Style = [fsBold]
        Title.Caption = #1603#1583' '#1583#1585#1587
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = '_LessonName'
        Title.Caption = #1606#1575#1605' '#1583#1585#1587
        Width = 165
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TPasokh'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'System'
        Font.Style = [fsBold]
        Title.Caption = #1662#1575#1587#1582#1607#1575
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GroupCode'
        Title.Caption = #1583#1587#1578#1607
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Average'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'System'
        Font.Style = [fsBold]
        Title.Caption = #1606#1605#1585#1607' '#1583#1585#1587
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GroupID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Default'
        Font.Style = [fsBold]
        Title.Caption = #1603#1583'  '#1608' '
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = '_GroupName'
        Title.Caption = #1606#1575#1605' '#1711#1585#1608#1607' '#1583#1585#1587
        Width = 100
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 275
    Top = 408
    Width = 225
    Height = 27
    DataSource = QLTDS
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
    TabOrder = 2
    OnClick = DBNavigator1Click
  end
  object LorTRadioGroup: TRadioGroup
    Left = 584
    Top = 408
    Width = 121
    Height = 73
    Caption = #1583#1587#1578#1607' '#1576#1606#1583#1610' '#1576#1585' '#1575#1587#1575#1587
    ItemIndex = 0
    Items.Strings = (
      #1603#1583' '#1575#1587#1578#1575#1583
      #1603#1583' '#1583#1585#1587)
    TabOrder = 5
    OnClick = LorTRadioGroupClick
  end
  object Panel1: TPanel
    Left = 251
    Top = 184
    Width = 257
    Height = 89
    TabOrder = 6
    Visible = False
    object Label1: TLabel
      Left = 135
      Top = 16
      Width = 92
      Height = 16
      Caption = #1603#1583' '#1583#1585#1587' '#1585#1575' '#1608#1575#1585#1583' '#1603#1606#1610#1583
    end
    object Edit1: TEdit
      Left = 24
      Top = 16
      Width = 97
      Height = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Terminal'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = '1'
    end
    object BitBtn1: TBitBtn
      Left = 96
      Top = 48
      Width = 75
      Height = 25
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 1
      OnClick = BitBtn1Click
      Glyph.Data = {
        CA010000424DCA01000000000000760000002800000022000000110000000100
        04000000000054010000CE0E0000D80E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333333FBFFF
        FFFFF3333333333333333300000033333333FBBFFFFBF3333333333333333300
        00003333333FBFFFFBFFF333333333333333330000003333333FBFFFFBFBF333
        3333333333333300000033333333FBBFFFFFF333333333333333330000003333
        333444FBFFFBF3333333888333333300000033333344834FBFFFF33333388738
        333333000000333334847F84BFFFF33333878737833333000000333334484F84
        FBBFB333338878378333330000003333348F74483FF3F3333387338873333300
        0000333344FFF743333333333883333833333300000033448F84443333333338
        873388873333330000003448F74333333333338873387773333333000000348F
        77333333333333873337333333333300000034F7743333333333338333873333
        3333330000003444433333333333338888733333333333000000333333333333
        3333333333333333333333000000}
      NumGlyphs = 2
    end
  end
  object TeachersDBGrid: TDBGrid
    Left = 192
    Top = 11
    Width = 409
    Height = 403
    DataSource = TeachersNameQueryDS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Lotus'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clRed
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    Visible = False
    OnDblClick = TeachersDBGridDblClick
    OnKeyPress = TeachersDBGridKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'TeacherID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Default'
        Font.Style = []
        Title.Caption = #1603#1583' '#1575#1587#1578#1575#1583
        Width = 40
        Visible = True
      end
      item
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'LastName'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Jadid'
        Font.Style = []
        Title.Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FirstName'
        Title.Caption = #1606#1575#1605
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HamkariName'
        Title.Caption = #1606#1608#1593' '#1607#1605#1603#1575#1585#1610
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GroupName'
        Title.Caption = #1606#1575#1605' '#1711#1585#1608#1607
        Width = 108
        Visible = True
      end>
  end
  object MarkBtn: TButton
    Left = 16
    Top = 392
    Width = 75
    Height = 25
    Caption = 'MarkBtn'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    Visible = False
    OnClick = MarkBtnClick
  end
  object DelFromResultBtn: TButton
    Left = 96
    Top = 392
    Width = 121
    Height = 25
    Caption = 'DelFromResultBtn'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    Visible = False
    OnClick = DelFromResultBtnClick
  end
  object DeleteFromVarQLTQueryBtn: TButton
    Left = 64
    Top = 424
    Width = 75
    Height = 25
    Caption = 'DeleteFromVarQLTQueryBtn'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    Visible = False
    OnClick = DeleteFromVarQLTQueryBtnClick
  end
  object QLTDS: TDataSource
    DataSet = LvarQLT
    Left = 32
    Top = 56
  end
  object LvarQLT: TTable
    Active = True
    BeforeDelete = LvarQLTBeforeDelete
    AfterDelete = LvarQLTAfterDelete
    DatabaseName = 'atNezarat'
    FieldDefs = <
      item
        Name = 'TermID'
        DataType = ftSmallint
      end
      item
        Name = 'TeacherID'
        DataType = ftSmallint
      end
      item
        Name = 'LessonID'
        DataType = ftSmallint
      end
      item
        Name = 'GroupCode'
        DataType = ftSmallint
      end
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'Average'
        DataType = ftFloat
      end
      item
        Name = 'Rotbeh'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'TPasokh'
        DataType = ftSmallint
      end
      item
        Name = 'GroupID'
        DataType = ftSmallint
      end
      item
        Name = 'IsConsidered'
        DataType = ftBoolean
      end>
    IndexDefs = <
      item
        Fields = 'TermID;TeacherID;LessonID;GroupCode'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'Lindex'
        Fields = 'TermID;LessonID'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'IDindex'
        Fields = 'ID'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'TLindex'
        Fields = 'TermID;TeacherID;LessonID'
        Options = [ixCaseInsensitive]
      end>
    IndexName = 'TLindex'
    MasterFields = 'TermID'
    MasterSource = DM.TermsDS
    StoreDefs = True
    TableName = 'varQlt.DB'
    Top = 56
    object LvarQLTTeacherID: TIntegerField
      FieldName = 'TeacherID'
    end
    object LvarQLT_TeacherName: TStringField
      FieldKind = fkLookup
      FieldName = '_TeacherLastName'
      LookupDataSet = DM.Teachers
      LookupKeyFields = 'TeacherID'
      LookupResultField = 'LastName'
      KeyFields = 'TeacherID'
      Lookup = True
    end
    object LvarQLT_TeacherFirstName: TStringField
      FieldKind = fkLookup
      FieldName = '_TeacherFirstName'
      LookupDataSet = DM.Teachers
      LookupKeyFields = 'TeacherID'
      LookupResultField = 'FirstName'
      KeyFields = 'TeacherID'
      Size = 15
      Lookup = True
    end
    object LvarQLTLessonID: TIntegerField
      FieldName = 'LessonID'
    end
    object LvarQLT_LessonName: TStringField
      FieldKind = fkLookup
      FieldName = '_LessonName'
      LookupDataSet = DM.Lessons
      LookupKeyFields = 'LessonID'
      LookupResultField = 'LessonName'
      KeyFields = 'LessonID'
      Size = 30
      Lookup = True
    end
    object LvarQLTTPasokh: TSmallintField
      FieldName = 'TPasokh'
      ReadOnly = True
    end
    object LvarQLTGroupCode: TSmallintField
      FieldName = 'GroupCode'
    end
    object LvarQLTAverage: TFloatField
      FieldName = 'Average'
      ReadOnly = True
      Precision = 4
    end
    object LvarQLTGroupID: TSmallintField
      FieldName = 'GroupID'
    end
    object LvarQLT_GroupName: TStringField
      FieldKind = fkLookup
      FieldName = '_GroupName'
      LookupDataSet = DM.Groups
      LookupKeyFields = 'GroupID'
      LookupResultField = 'GroupName'
      KeyFields = 'GroupID'
      Size = 25
      Lookup = True
    end
    object LvarQLTTermID: TSmallintField
      FieldName = 'TermID'
    end
    object LvarQLTID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object LvarQLTRotbeh: TStringField
      FieldName = 'Rotbeh'
      Size = 9
    end
    object LvarQLTIsConsidered: TBooleanField
      FieldName = 'IsConsidered'
    end
  end
  object DeleteFromResultsQuery: TQuery
    DatabaseName = 'atNezarat'
    SQL.Strings = (
      'Delete from varResults'
      'where ID=:id')
    Top = 88
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
        Value = 0
      end>
  end
  object TeachersNameQuery: TQuery
    Active = True
    DatabaseName = 'atNezarat'
    DataSource = DM.TermsDS
    RequestLive = True
    SQL.Strings = (
      
        'SELECT DISTINCT T.TeacherID,T.LastName,T.FirstName ,T.LastName2,' +
        'T.FirstName2'
      '  ,H.HamkariName,G.GroupName,VT.GroupID'
      'FROM Teachers T,varTeachers VT,Hamkari H,Groups G,varQlt Q'
      
        'WHERE T.TeacherID=VT.TeacherID and VT.TermID=:TermID and VT.Hamk' +
        'ariID=H.HamkariID '
      
        '   and VT.GroupID=G.GroupID'#13' and  VT.TeacherID=Q.TeacherID and Q' +
        '.TermID=:TermID'
      #10
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      #13'ORDER BY T.LastName2,T.FirstName2')
    Left = 8
    Top = 384
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
    object TeachersNameQueryTeacherID: TSmallintField
      FieldName = 'TeacherID'
      Origin = 'ATNEZARAT."Teachers.DB".TeacherID'
    end
    object TeachersNameQueryHamkariName: TStringField
      FieldName = 'HamkariName'
      Origin = 'ATNEZARAT."Hamkari.DB".HamkariName'
      Size = 13
    end
    object TeachersNameQueryGroupName: TStringField
      FieldName = 'GroupName'
      Origin = 'ATNEZARAT."Groups.DB".GroupName'
      Size = 22
    end
    object TeachersNameQueryGroupID: TSmallintField
      FieldName = 'GroupID'
      Origin = 'ATNEZARAT."varTeachers.DB".GroupID'
    end
    object TeachersNameQueryLastName: TStringField
      FieldName = 'LastName'
      Origin = 'ATNEZARAT."Teachers.DB".LastName'
    end
    object TeachersNameQueryFirstName: TStringField
      FieldName = 'FirstName'
      Origin = 'ATNEZARAT."Teachers.DB".FirstName'
      Size = 15
    end
  end
  object TeachersNameQueryDS: TDataSource
    DataSet = TeachersNameQuery
    Left = 40
    Top = 384
  end
  object MarkQuery: TQuery
    DatabaseName = 'atNezarat'
    SQL.Strings = (
      'update varQLT'
      'set  isConsidered=False'
      'where ID <> :ID and teacherID = :tID and lessonID = :lID and '
      'TPasokh = :tPasokh and average = :average and groupCode > :gCode')
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'lID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tPasokh'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'average'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'gCode'
        ParamType = ptUnknown
      end>
  end
  object DeleteFromVarQLTQuery: TQuery
    DatabaseName = 'atNezarat'
    SQL.Strings = (
      'delete from varQLT'
      'where  isConsidered=False')
    Top = 168
  end
end
