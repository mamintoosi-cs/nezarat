inherited PrintTablesForm: TPrintTablesForm
  Left = 169
  Top = 96
  HorzScrollBar.Range = 0
  HorzScrollBar.Visible = False
  VertScrollBar.Range = 0
  VertScrollBar.Visible = False
  AutoScroll = False
  Caption = 'PrintTablesForm'
  ClientHeight = 581
  ClientWidth = 802
  Scaled = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel [0]
    Left = 206
    Top = 6
    Width = 43
    Height = 16
    Caption = 'Label1'
    Visible = False
  end
  inherited ReturnToMainBitBtn: TBitBtn
    Left = 28
    Top = 520
  end
  inherited StatusPanel: TPanel
    Top = 563
    Width = 802
    inherited UnitNameDBText: TDBText
      Left = 693
    end
    inherited MsgLabel: TLabel
      Width = 539
    end
  end
  inherited PrintBitBtn: TBitBtn
    Left = 28
    Top = 492
    Caption = #1605#1585#1608#1585' '#1711#1586#1575#1585#1588
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
      00003333377777777777333330FFFFFFFFF03FF3F7FFFF33FFF7003000000FF0
      00F077F7777773F77737E00FBFBFB0FFFFF07773333FF7FF33F7E0FBFB00000F
      F0F077F333777773F737E0BFBFBFBFB0FFF077F3333FFFF733F7E0FBFB00000F
      F0F077F333777773F737E0BFBFBFBFB0FFF077F33FFFFFF733F7E0FB0000000F
      F0F077FF777777733737000FB0FFFFFFFFF07773F7F333333337333000FFFFFF
      FFF0333777F3FFF33FF7333330F000FF0000333337F777337777333330FFFFFF
      0FF0333337FFFFFF7F37333330CCCCCC0F033333377777777F73333330FFFFFF
      0033333337FFFFFF773333333000000003333333377777777333}
  end
  inherited SelectionBitBtn: TBitBtn
    Left = 28
    Visible = False
  end
  inherited SendMethodRadioGroup: TRadioGroup
    Left = 560
    Top = 450
    Visible = False
  end
  inherited GroupBox1: TGroupBox
    Left = 224
    Top = 480
    Visible = False
  end
  object DBGrid1: TDBGrid [7]
    Left = 10
    Top = 24
    Width = 783
    Height = 444
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    OnCellClick = DBGrid1CellClick
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'TeacherName'
        ReadOnly = True
        Title.Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610' '#1608' '#1606#1575#1605
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Title'
        Title.Caption = #1593#1606#1608#1575#1606
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JensId'
        Title.Alignment = taCenter
        Title.Caption = #1580
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MarriageID'
        Title.Alignment = taCenter
        Title.Caption = #1578
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 20
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'ReportStatus'
        Title.Alignment = taCenter
        Title.Caption = 'Mail'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ConditionID'
        Title.Alignment = taCenter
        Title.Caption = #1608
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EmailAddress'
        Title.Caption = #1570#1583#1585#1587' '#1662#1587#1578' '#1575#1604#1603#1578#1585#1608#1606#1610#1603
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HamkariID'
        Title.Caption = #1603#1583
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Hamkari'
        Title.Caption = #1606#1581#1608#1607' '#1607#1605#1603#1575#1585#1610
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DegreeID'
        Title.Caption = #1603#1583
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Degree'
        Title.Caption = #1605#1585#1578#1576#1607' '#1593#1604#1605#1610
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MadrakID'
        Title.Caption = #1603#1583
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Madrak'
        Title.Caption = #1605#1583#1585#1603
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GroupID'
        Title.Caption = #1603#1583
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Group'
        Title.Caption = #1711#1585#1608#1607
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clInfoBk
        Expanded = False
        FieldName = 'TeacherID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Title.Caption = #1603#1583#1575#1587#1578#1575#1583
        Width = 40
        Visible = True
      end>
  end
  object QuickRep1: TQuickRep [8]
    Left = 900
    Top = 88
    Width = 1123
    Height = 794
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = Query1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poLandscape
    Page.PaperSize = A4
    Page.Values = (
      100
      2100
      100
      2970
      100
      100
      0)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    ReportTitle = 'StaffList'
    SnapToGrid = True
    Units = Pixels
    Zoom = 100
    object DetailQRBand: TQRBand
      Left = 38
      Top = 175
      Width = 1047
      Height = 30
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        79.375
        2770.1875)
      BandType = rbDetail
    end
    object TitleQRBand: TQRBand
      Left = 38
      Top = 145
      Width = 1047
      Height = 30
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        79.375
        2770.1875)
      BandType = rbColumnHeader
    end
    object HeaderQRBand: TQRBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 30
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        79.375
        2770.1875)
      BandType = rbPageHeader
      object QRSysData1: TQRSysData
        Left = 3
        Top = 0
        Width = 53
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375
          7.9375
          0
          140.229166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Yagut'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = False
        FontSize = 12
      end
    end
    object QRBand1: TQRBand
      Left = 38
      Top = 68
      Width = 1047
      Height = 77
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        203.729166666667
        2770.1875)
      BandType = rbTitle
      object QRLabel1: TQRLabel
        Left = 449
        Top = 5
        Width = 148
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          89.9583333333333
          1187.97916666667
          13.2291666666667
          391.583333333333)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = #1583#1575#1606#1588#1711#1575#1607' '#1578#1585#1576#1610#1578' '#1605#1593#1604#1605' '#1587#1576#1586#1608#1575#1585
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Zar'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object TitleQRLabel: TQRLabel
        Left = 498
        Top = 53
        Width = 50
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.1458333333333
          1317.625
          140.229166666667
          132.291666666667)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = #1711#1586#1575#1585#1588#1575#1578
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Zar'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object DateQRLabel: TQRLabel
        Left = -14
        Top = 50
        Width = 88
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.0833333333333
          -37.0416666666667
          132.291666666667
          232.833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DateQRLabel'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Yagut'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
    end
  end
  object GroupBox2: TGroupBox [9]
    Left = 180
    Top = 472
    Width = 609
    Height = 84
    Caption = #1578#1606#1592#1610#1605#1575#1578' '#1711#1586#1575#1585#1588
    TabOrder = 8
    object Label25: TLabel
      Left = 61
      Top = 22
      Width = 108
      Height = 16
      Caption = #1575#1585#1578#1601#1575#1593' '#1593#1606#1575#1608#1610#1606' '#1587#1578#1608#1606' '#1607#1575':'
    end
    object Label27: TLabel
      Left = 66
      Top = 54
      Width = 103
      Height = 16
      Caption = #1575#1585#1578#1601#1575#1593' '#1580#1586#1610#1610#1575#1578' '#1711#1586#1575#1585#1588':'
    end
    object Label2: TLabel
      Left = 520
      Top = 22
      Width = 67
      Height = 16
      Caption = #1593#1606#1608#1575#1606' '#1711#1586#1575#1585#1588':'
    end
    object TitleHeightEdit: TEdit
      Left = 16
      Top = 17
      Width = 33
      Height = 24
      MaxLength = 3
      TabOrder = 0
      Text = '22'
    end
    object DetailHeightEdit: TEdit
      Left = 16
      Top = 49
      Width = 33
      Height = 24
      MaxLength = 3
      TabOrder = 1
      Text = '17'
    end
    object TitleEdit: TEdit
      Left = 288
      Top = 17
      Width = 225
      Height = 24
      TabOrder = 2
      Text = #1604#1610#1587#1578' '#1575#1587#1575#1578#1610#1583
    end
    object CurrentTermCheckBox: TCheckBox
      Left = 280
      Top = 56
      Width = 308
      Height = 17
      Caption = #1601#1602#1591' '#1575#1587#1575#1578#1610#1583#1610' '#1603#1607' '#1583#1585' '#1578#1585#1605' '#1580#1575#1585#1610' '#1583#1585#1587' '#1583#1575#1585#1606#1583' '#1583#1585' '#1711#1586#1575#1585#1588' '#1604#1581#1575#1592' '#1588#1608#1606#1583'.'
      TabOrder = 3
      OnClick = CurrentTermCheckBoxClick
    end
    object ReportTypeRadioGroup: TRadioGroup
      Left = 182
      Top = 10
      Width = 81
      Height = 65
      Caption = #1606#1608#1593' '#1711#1586#1575#1585#1588
      ItemIndex = 0
      Items.Strings = (
        #1711#1587#1578#1585#1583#1607
        #1601#1588#1585#1583#1607)
      TabOrder = 4
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 80
    Top = 72
  end
  object LTeachers: TTable
    Active = True
    DatabaseName = 'atNezarat'
    IndexFieldNames = 'TeacherID'
    MasterFields = 'TeacherID'
    TableName = 'Teachers.DB'
    Left = 32
    Top = 136
  end
  object LVarTeachers: TTable
    Active = True
    DatabaseName = 'atNezarat'
    Filtered = True
    IndexName = 'TeacherIDidx'
    MasterFields = 'TeacherID'
    TableName = 'varTeachers.DB'
    Left = 32
    Top = 104
  end
  object Query1: TQuery
    Active = True
    CachedUpdates = True
    DatabaseName = 'atNezarat'
    Filtered = True
    DataSource = DM.TermsDS
    RequestLive = True
    SQL.Strings = (
      'select T.*,  VT.*'
      'from Teachers T,varTeachers VT'
      'where T.TeacherID=VT.TeacherID and VT.TermID=:TermID'
      'order by lastname2')
    Left = 32
    Top = 72
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'TermID'
        ParamType = ptUnknown
        Size = 2
      end>
    object Query1TeacherName: TStringField
      FieldName = 'TeacherName'
      Origin = 'ATNEZARAT."Teachers.DB".TeacherName'
      Size = 40
    end
    object Query1Title: TStringField
      FieldName = 'Title'
      Origin = 'ATNEZARAT."Teachers.DB".Title'
      Size = 7
    end
    object Query1JensId: TSmallintField
      FieldName = 'JensId'
      Origin = 'ATNEZARAT."Teachers.DB".JensId'
    end
    object Query1MarriageID: TSmallintField
      Alignment = taCenter
      FieldName = 'MarriageID'
      Origin = 'ATNEZARAT."Teachers.DB".MarriageID'
    end
    object Query1ReportStatus: TStringField
      FieldName = 'ReportStatus'
      Origin = 'ATNEZARAT."Teachers.DB".ReportStatus'
      Size = 1
    end
    object Query1ConditionID: TSmallintField
      FieldName = 'ConditionID'
      Origin = 'ATNEZARAT."Teachers.DB".ConditionID'
    end
    object Query1EmailAddress: TStringField
      FieldName = 'EmailAddress'
      Origin = 'ATNEZARAT."Teachers.DB".EmailAddress'
      Size = 40
    end
    object Query1HamkariID: TSmallintField
      FieldName = 'HamkariID'
      Origin = 'ATNEZARAT."varTeachers.DB".HamkariID'
    end
    object Query1Hamkari: TStringField
      FieldKind = fkLookup
      FieldName = 'Hamkari'
      LookupDataSet = DM.Hamkari
      LookupKeyFields = 'HamkariID'
      LookupResultField = 'HamkariName'
      KeyFields = 'HamkariID'
      Lookup = True
    end
    object Query1DegreeID: TSmallintField
      FieldName = 'DegreeID'
      Origin = 'ATNEZARAT."varTeachers.DB".DegreeID'
    end
    object Query1Degree: TStringField
      FieldKind = fkLookup
      FieldName = 'Degree'
      LookupDataSet = DM.Degree
      LookupKeyFields = 'DegreeID'
      LookupResultField = 'DegreeName'
      KeyFields = 'DegreeID'
      Lookup = True
    end
    object Query1MadrakID: TSmallintField
      FieldName = 'MadrakID'
      Origin = 'ATNEZARAT."varTeachers.DB".MadrakID'
    end
    object Query1Madrak: TStringField
      FieldKind = fkLookup
      FieldName = 'Madrak'
      LookupDataSet = DM.Madrak
      LookupKeyFields = 'MadrakID'
      LookupResultField = 'MadrakName'
      KeyFields = 'MadrakID'
      Lookup = True
    end
    object Query1GroupID: TSmallintField
      FieldName = 'GroupID'
      Origin = 'ATNEZARAT."varTeachers.DB".GroupID'
    end
    object Query1Group: TStringField
      FieldKind = fkLookup
      FieldName = 'Group'
      LookupDataSet = DM.Groups
      LookupKeyFields = 'GroupID'
      LookupResultField = 'GroupName'
      KeyFields = 'GroupID'
      Size = 30
      Lookup = True
    end
    object Query1TeacherID: TSmallintField
      FieldName = 'TeacherID'
      Origin = 'ATNEZARAT."Teachers.DB".TeacherID'
    end
    object Query1FacultyID: TSmallintField
      FieldName = 'FacultyID'
      Origin = 'ATNEZARAT."varTeachers.DB".FacultyID'
    end
    object Query1LastName: TStringField
      FieldName = 'LastName'
      Origin = 'ATNEZARAT."Teachers.DB".LastName'
    end
    object Query1FirstName: TStringField
      FieldName = 'FirstName'
      Origin = 'ATNEZARAT."Teachers.DB".FirstName'
      Size = 15
    end
    object Query1DateE: TStringField
      FieldName = 'DateE'
      Origin = 'ATNEZARAT."Teachers.DB".DateE'
      Size = 8
    end
    object Query1TermID: TSmallintField
      FieldName = 'TermID'
      Origin = 'ATNEZARAT."varTeachers.DB".TermID'
    end
    object Query1Lang1: TSmallintField
      Alignment = taCenter
      FieldName = 'Lang1'
      Origin = 'ATNEZARAT."Teachers.DB".Lang1'
    end
    object Query1Lang2: TSmallintField
      Alignment = taCenter
      FieldName = 'Lang2'
      Origin = 'ATNEZARAT."Teachers.DB".Lang2'
    end
    object Query1DateofLastPromotion: TStringField
      FieldName = 'DateofLastPromotion'
      Origin = 'ATNEZARAT."Teachers.DB".DateofLastPromotion'
      Size = 8
    end
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MinFontSize = 0
    MaxFontSize = 0
    Left = 32
    Top = 168
  end
end
