inherited HistoryRep: THistoryRep
  Left = -42
  DataSet = DM.Flat1
  Functions.DATA = (
    '0'
    '0'
    #39#39
    #39#39)
  Page.Values = (
    100
    2970
    100
    2100
    100
    100
    0)
  ReportTitle = 'LastEvaluationResults'
  inherited FirstPageHeaderBand: TQRBand
    Size.Values = (
      314.854166666667
      1899.70833333333)
    inherited QRLabel16: TQRLabel
      Size.Values = (
        52.9166666666667
        883.708333333333
        21.1666666666667
        132.291666666667)
      FontSize = 10
    end
    inherited NoDateAttachMemo: TQRMemo
      Size.Values = (
        150.8125
        2.64583333333333
        0
        275.166666666667)
      FontSize = 10
    end
    inherited TitleLabel: TQRLabel
      Size.Values = (
        121.708333333333
        251.354166666667
        111.125
        1397)
      FontSize = 16
    end
    inherited TermName1: TQRDBText
      Top = 32
      Enabled = False
      Size.Values = (
        87.3125
        833.4375
        84.6666666666667
        230.1875)
      DataSet = DM.Flat1
      FontSize = 14
    end
    object QRExpr5: TQRExpr
      Left = 222
      Top = 76
      Width = 274
      Height = 33
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        87.3125
        587.375
        201.083333333333
        724.958333333333)
      Alignment = taCenter
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      BiDiMode = bdRightToLeftNoAlign
      ParentBiDiMode = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Zar'
      Font.Style = [fsBold]
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 'Flat1.FirstName+'#39'  '#39'+Flat1.LastName'
      FontSize = 14
    end
  end
  inherited DetailBand: TQRBand
    Top = 205
    BeforePrint = DetailBandBeforePrint
    Size.Values = (
      50.2708333333333
      1899.70833333333)
    inherited CountExpr: TQRExpr
      Left = 687
      Size.Values = (
        60.8541666666667
        1817.6875
        0
        68.7916666666667)
      FontSize = 9
    end
    object Rotbeh: TQRDBText
      Left = 0
      Top = 0
      Width = 57
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        0
        0
        150.8125)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      Color = clWhite
      DataSet = DM.Flat1
      DataField = 'LessonRotbeh'
      Transparent = True
      WordWrap = True
      FontSize = 9
    end
    object Average: TQRDBText
      Left = 68
      Top = 1
      Width = 37
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        179.916666666667
        2.64583333333333
        97.8958333333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = DM.Flat1
      DataField = 'LessonAverage'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Mask = '00.00'
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 9
    end
    object LessonName: TQRDBText
      Left = 153
      Top = 1
      Width = 104
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        404.8125
        2.64583333333333
        275.166666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      Color = clWhite
      DataSet = DM.Flat1
      DataField = 'LessonName'
      Transparent = True
      WordWrap = True
      FontSize = 9
    end
  end
  inherited CulomnHeaderBand: TQRBand
    Height = 23
    Frame.DrawTop = True
    Frame.DrawBottom = False
    Frame.DrawLeft = True
    Frame.DrawRight = True
    Size.Values = (
      60.8541666666667
      1899.70833333333)
    inherited RadifLabel: TQRLabel
      Size.Values = (
        60.8541666666667
        1820.33333333333
        5.29166666666667
        76.7291666666667)
      FontSize = 10
    end
    object QRLabel1: TQRLabel
      Left = 686
      Top = 2
      Width = 29
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        1815.04166666667
        5.29166666666667
        76.7291666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1585#1583#1610#1601
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object HamkariLabel: TQRLabel
      Left = 389
      Top = 2
      Width = 51
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        1029.22916666667
        5.29166666666667
        134.9375)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1606#1608#1593' '#1607#1605#1603#1575#1585#1610
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object MadrakLabel: TQRLabel
      Left = 296
      Top = 2
      Width = 65
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        783.166666666667
        5.29166666666667
        171.979166666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1605#1583#1585#1603' '#1578#1581#1589#1610#1604#1610
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel3: TQRLabel
      Left = 618
      Top = 2
      Width = 53
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        1635.125
        5.29166666666667
        140.229166666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1578#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1600#1585#1605
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object RotbehLabel: TQRLabel
      Left = 28
      Top = 2
      Width = 17
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        74.0833333333333
        5.29166666666667
        44.9791666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1585#1578#1576#1607
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object AverageLabel: TQRLabel
      Left = 64
      Top = 2
      Width = 45
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        169.333333333333
        5.29166666666667
        119.0625)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1606#1605#1585#1607' '#1583#1585#1587
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Zar'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object LessonNameLabel: TQRLabel
      Left = 214
      Top = 2
      Width = 35
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        566.208333333333
        5.29166666666667
        92.6041666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1606#1575#1605' '#1583#1585#1587
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  inherited EveryPageFooterBand: TQRBand
    Top = 375
    Size.Values = (
      76.7291666666667
      1899.70833333333)
    inherited QRExpr2: TQRExpr
      Size.Values = (
        66.1458333333333
        825.5
        31.75
        248.708333333333)
      FontSize = 10
    end
  end
  inherited EndPageFooterBand: TQRBand
    Top = 241
    Frame.DrawTop = True
    Size.Values = (
      354.541666666667
      1899.70833333333)
    BandType = rbGroupFooter
    inherited EhteramQRMemo: TQRMemo
      Left = 110
      Top = 24
      Size.Values = (
        256.645833333333
        291.041666666667
        63.5
        222.25)
      FontSize = 14
    end
    object QRExpr4: TQRExpr
      Left = 10
      Top = 6
      Width = 39
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        66.1458333333333
        26.4583333333333
        15.875
        103.1875)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = True
      Transparent = True
      WordWrap = True
      Expression = 'average(LessonAverage)'
      Mask = '00.00'
      FontSize = 10
    end
    object QRLabel2: TQRLabel
      Left = 56
      Top = 5
      Width = 51
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        148.166666666667
        13.2291666666667
        134.9375)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1605#1610#1575#1606#1711#1610#1606' '#1603#1604
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Yagut'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  inherited QRImage1: TQRImage
    Size.Values = (
      238.125
      1838.85416666667
      26.4583333333333
      174.625)
  end
  inherited QRLabel5: TQRLabel
    Size.Values = (
      50.2708333333333
      1833.5625
      254
      182.5625)
    FontSize = 8
  end
  object QRBandGFooter2: TQRBand
    Left = 38
    Top = 224
    Width = 718
    Height = 17
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      44.9791666666667
      1899.70833333333)
    BandType = rbGroupFooter
    object QRExpr3: TQRExpr
      Left = 8
      Top = -2
      Width = 49
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        66.1458333333333
        21.1666666666667
        -5.29166666666667
        129.645833333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Badr'
      Font.Style = []
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = True
      Transparent = True
      WordWrap = True
      Expression = 'average(LessonAverage)'
      Mask = '00.00'
      FontSize = 10
    end
    object QRLabel17: TQRLabel
      Left = 64
      Top = 0
      Width = 39
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        169.333333333333
        0
        103.1875)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1605#1593#1583#1604' '#1578#1585#1605
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  object QRGroup1: TQRGroup
    Left = 38
    Top = 180
    Width = 718
    Height = 3
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = True
    Size.Values = (
      7.9375
      1899.70833333333)
    Expression = 'Flat1.TeacherID'
    FooterBand = EndPageFooterBand
    Master = Owner
    ReprintOnNewPage = False
  end
  object QRGroup2: TQRGroup
    Left = 38
    Top = 183
    Width = 718
    Height = 22
    Frame.Color = clBlack
    Frame.DrawTop = True
    Frame.DrawBottom = False
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    Color = cl3DLight
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      58.2083333333333
      1899.70833333333)
    Expression = 'Flat1.TermID'
    FooterBand = QRBandGFooter2
    Master = Owner
    ReprintOnNewPage = False
    object QRDBText12: TQRDBText
      Left = 460
      Top = 3
      Width = 209
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1217.08333333333
        7.9375
        552.979166666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      Color = clWhite
      DataSet = DM.Flat1
      DataField = 'TermName'
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object Madrak: TQRDBText
      Left = 287
      Top = 1
      Width = 69
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        759.354166666667
        2.64583333333333
        182.5625)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      Color = clWhite
      DataSet = DM.Flat1
      DataField = 'MadrakName'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 9
    end
    object Hamkari: TQRDBText
      Left = 357
      Top = 1
      Width = 79
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        944.5625
        2.64583333333333
        209.020833333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      Color = clWhite
      DataSet = DM.Flat1
      DataField = 'HamkariName'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 9
    end
  end
end
