inherited LessonResultRep: TLessonResultRep
  DataSet = Query1
  Functions.DATA = (
    '0'
    '0'
    #39#39
    #39#39)
  Options = [FirstPageHeader, LastPageFooter]
  Page.Values = (
    100
    2970
    50
    2100
    100
    100
    0)
  ReportTitle = 'LessonsResults'
  Units = Native
  inherited FirstPageHeaderBand: TQRBand
    Top = 19
    Height = 160
    ForceNewPage = True
    Size.Values = (
      423.333333333333
      1899.70833333333)
    BandType = rbPageHeader
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
      Left = 266
      Top = 34
      Width = 185
      Size.Values = (
        121.708333333333
        703.791666666667
        89.9583333333333
        489.479166666667)
      Caption = #1606#1578#1575#1610#1580' '#1606#1592#1585#1582#1608#1575#1607#1610' '#1575#1586' '#1583#1575#1606#1588#1580#1608#1610#1575#1606
      FontSize = 16
    end
    inherited TermName1: TQRDBText
      Top = 72
      Size.Values = (
        87.3125
        833.4375
        190.5
        230.1875)
      FontSize = 14
    end
    object QRLabel30: TQRLabel
      Left = 656
      Top = 100
      Width = 60
      Height = 28
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        74.0833333333333
        1735.66666666667
        264.583333333333
        158.75)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = ':'#1606#1600#1600#1600#1600#1575#1605' '#1583#1585#1587
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Zar'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 12
    end
    object QRDBText24: TQRDBText
      Left = 456
      Top = 100
      Width = 196
      Height = 28
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        74.0833333333333
        1206.5
        264.583333333333
        518.583333333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      Color = clWhite
      DataSet = Query1
      DataField = 'LessonName'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Zar'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 13
    end
    object QRLabel40: TQRLabel
      Left = 25
      Top = 132
      Width = 73
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        66.1458333333333
        349.25
        193.145833333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = ':'#1578#1593#1583#1575#1583' '#1662#1575#1587#1582' '#1583#1607#1606#1583#1607
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText31: TQRDBText
      Left = 0
      Top = 132
      Width = 25
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        0
        349.25
        66.1458333333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = Query1
      DataField = 'TPasokh'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel14: TQRLabel
      Left = 653
      Top = 131
      Width = 60
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.9166666666667
        1727.72916666667
        346.604166666667
        158.75)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      Caption = ':'#1605#1593#1583#1604' '#1583#1585#1587
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 12
    end
    object QRDBText11: TQRDBText
      Left = 612
      Top = 131
      Width = 38
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        50.2708333333333
        1619.25
        346.604166666667
        100.541666666667)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = Query1
      DataField = 'LessonAverage'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Mask = '00.00'
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 11
    end
    object QRExpr4: TQRExpr
      Left = 0
      Top = 100
      Width = 390
      Height = 33
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        87.3125
        0
        264.583333333333
        1031.875)
      Alignment = taLeftJustify
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      BiDiMode = bdRightToLeftNoAlign
      ParentBiDiMode = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Zar'
      Font.Style = []
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = #39#1606#1575#1605' '#1605#1583#1585#1587': '#39'+Query1.FirstName+'#39'  '#39'+Query1.LastName'
      FontSize = 14
    end
    object QRExpr5: TQRExpr
      Left = 226
      Top = 132
      Width = 266
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        597.958333333333
        349.25
        703.791666666667)
      Alignment = taCenter
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      BiDiMode = bdRightToLeftNoAlign
      ParentBiDiMode = False
      Color = clWhite
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = #39' '#1575#1585#1575#1574#1607' '#1588#1583#1607' '#1576#1585#1575#1610' '#1711#1585#1608#1607' '#39'+Query1.LessonGroupName'
      FontSize = 10
    end
  end
  inherited DetailBand: TQRBand
    Top = 250
    Frame.DrawBottom = False
    Size.Values = (
      50.2708333333333
      1899.70833333333)
    inherited CountExpr: TQRExpr
      Enabled = False
      Size.Values = (
        60.8541666666667
        1830.91666666667
        0
        68.7916666666667)
      FontSize = 9
    end
    object QRDBText1: TQRDBText
      Left = 674
      Top = 0
      Width = 41
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1783.29166666667
        0
        108.479166666667)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      Color = clWhite
      DataSet = Query1
      DataField = 'RowNo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText2: TQRDBText
      Left = 623
      Top = 0
      Width = 41
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = True
      Frame.DrawRight = True
      Size.Values = (
        44.9791666666667
        1648.35416666667
        0
        108.479166666667)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      Color = clWhite
      DataSet = Query1
      DataField = 'Coef'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText3: TQRDBText
      Left = 311
      Top = 0
      Width = 298
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        822.854166666667
        0
        788.458333333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      Color = clWhite
      DataSet = Query1
      DataField = 'QTitle'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Yagut'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText7: TQRDBText
      Left = 264
      Top = 0
      Width = 35
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = True
      Size.Values = (
        44.9791666666667
        698.5
        0
        92.6041666666667)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = Query1
      DataField = 'F4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText6: TQRDBText
      Left = 232
      Top = 0
      Width = 35
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        613.833333333333
        0
        92.6041666666667)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = Query1
      DataField = 'F3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText5: TQRDBText
      Left = 192
      Top = 0
      Width = 35
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        508
        0
        92.6041666666667)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = Query1
      DataField = 'F2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText4: TQRDBText
      Left = 160
      Top = 0
      Width = 35
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = True
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        423.333333333333
        0
        92.6041666666667)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = Query1
      DataField = 'F1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText8: TQRDBText
      Left = 104
      Top = 0
      Width = 41
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        275.166666666667
        0
        108.479166666667)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = Query1
      DataField = 'AnswersSum'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Mask = '00'
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText9: TQRDBText
      Left = 51
      Top = 0
      Width = 41
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        134.9375
        0
        108.479166666667)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = Query1
      DataField = 'ScoresSum'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Mask = '000.0'
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText10: TQRDBText
      Left = 5
      Top = 0
      Width = 38
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        13.2291666666667
        0
        100.541666666667)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = Query1
      DataField = 'rowAvg'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Mask = '00.00'
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  inherited CulomnHeaderBand: TQRBand
    Top = 179
    Height = 42
    Frame.DrawTop = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    Color = clMoneyGreen
    Size.Values = (
      111.125
      1899.70833333333)
    inherited RadifLabel: TQRLabel
      Top = 18
      Size.Values = (
        60.8541666666667
        1820.33333333333
        47.625
        76.7291666666667)
      Transparent = True
      FontSize = 10
    end
    object QRLabel3: TQRLabel
      Left = 623
      Top = 17
      Width = 41
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        1648.35416666667
        44.9791666666667
        108.479166666667)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1590#1585#1610#1576
      Color = clWhite
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object QRLabel4: TQRLabel
      Left = 300
      Top = 17
      Width = 309
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        793.75
        44.9791666666667
        817.5625)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1605#1578#1606' '#1587#1608#1575#1604#1575#1578
      Color = clWhite
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object QRLabel6: TQRLabel
      Left = 265
      Top = 18
      Width = 35
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = True
      Size.Values = (
        60.8541666666667
        701.145833333333
        47.625
        92.6041666666667)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1593#1575#1604#1610
      Color = clWhite
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object QRLabel7: TQRLabel
      Left = 230
      Top = 18
      Width = 35
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = True
      Size.Values = (
        60.8541666666667
        608.541666666667
        47.625
        92.6041666666667)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1582#1608#1576
      Color = clWhite
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object QRLabel8: TQRLabel
      Left = 195
      Top = 18
      Width = 35
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = True
      Size.Values = (
        60.8541666666667
        515.9375
        47.625
        92.6041666666667)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1605#1578#1608#1587#1591
      Color = clWhite
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object QRLabel9: TQRLabel
      Left = 160
      Top = 18
      Width = 35
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = True
      Frame.DrawRight = True
      Size.Values = (
        60.8541666666667
        423.333333333333
        47.625
        92.6041666666667)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1590#1593#1610#1601
      Color = clWhite
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object QRLabel1: TQRLabel
      Left = 160
      Top = 1
      Width = 139
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      Size.Values = (
        44.9791666666667
        423.333333333333
        2.64583333333333
        367.770833333333)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1578#1593#1583#1575#1583' '#1605#1608#1575#1585#1583
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 8
    end
    object QRLabel10: TQRLabel
      Left = 94
      Top = 17
      Width = 49
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        248.708333333333
        44.9791666666667
        129.645833333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1580#1605#1593' '#1662#1575#1587#1582#1607#1575
      Color = clWhite
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object QRLabel11: TQRLabel
      Left = 54
      Top = 17
      Width = 21
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        142.875
        44.9791666666667
        55.5625)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1575#1605#1578#1610#1575#1586
      Color = clWhite
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object QRLabel12: TQRLabel
      Left = 10
      Top = 17
      Width = 21
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        26.4583333333333
        44.9791666666667
        55.5625)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1605#1593#1583#1604
      Color = clWhite
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
  end
  inherited EveryPageFooterBand: TQRBand
    Top = 334
    Height = 17
    Size.Values = (
      44.9791666666667
      1899.70833333333)
    BandType = rbGroupFooter
    inherited QRExpr2: TQRExpr
      Top = -1
      Size.Values = (
        66.1458333333333
        825.5
        -2.64583333333333
        248.708333333333)
      FontSize = 10
    end
  end
  inherited EndPageFooterBand: TQRBand
    Top = 286
    Height = 48
    Frame.DrawTop = True
    Size.Values = (
      127
      1899.70833333333)
    BandType = rbGroupFooter
    inherited EhteramQRMemo: TQRMemo
      Left = 98
      Width = 75
      Height = 36
      Size.Values = (
        95.25
        259.291666666667
        21.1666666666667
        198.4375)
      Font.Height = -17
      FontSize = 13
    end
    object QRExpr3: TQRExpr
      Left = 563
      Top = 7
      Width = 60
      Height = 20
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.9166666666667
        1489.60416666667
        18.5208333333333
        158.75)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Color = clWhite
      Master = Owner
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      WordWrap = True
      Expression = 'Query1.LessonAverage'
      Mask = '00.00'
      FontSize = 12
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
  object QRGroup1: TQRGroup
    Left = 38
    Top = 221
    Width = 718
    Height = 7
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
      18.5208333333333
      1899.70833333333)
    Expression = 'Query1.ID'
    FooterBand = EndPageFooterBand
    Master = Owner
    ReprintOnNewPage = False
  end
  object QRGroup2: TQRGroup
    Left = 38
    Top = 228
    Width = 718
    Height = 22
    Frame.Color = clBlack
    Frame.DrawTop = True
    Frame.DrawBottom = False
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AfterPrint = QRGroup2AfterPrint
    AlignToBottom = False
    Color = clSilver
    ForceNewColumn = False
    ForceNewPage = False
    LinkBand = QRGroup1
    Size.Values = (
      58.2083333333333
      1899.70833333333)
    Expression = 'Query1.QGroupNo'
    FooterBand = QRBandGFooter2
    Master = Owner
    ReprintOnNewPage = False
    object QRDBText12: TQRDBText
      Left = 319
      Top = 3
      Width = 80
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        844.020833333333
        7.9375
        211.666666666667)
      Alignment = taCenter
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = Query1
      DataField = 'QGroupName'
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
  end
  object QRBandGFooter2: TQRBand
    Left = 38
    Top = 269
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
    LinkBand = QRGroup2
    Size.Values = (
      44.9791666666667
      1899.70833333333)
    BandType = rbGroupFooter
    object QRExpr1: TQRExpr
      Left = 10
      Top = -2
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
        -5.29166666666667
        103.1875)
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
      Expression = 'sum(rowAvg*Coef)/sum(Coef)'
      Mask = '00.00'
      FontSize = 10
    end
    object QRLabel17: TQRLabel
      Left = 56
      Top = 0
      Width = 62
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        148.166666666667
        0
        164.041666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1605#1610#1575#1606#1711#1610#1606' '#1593#1606#1608#1575#1606
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
  object Query1: TQuery
    DatabaseName = 'atNezarat'
    DataSource = DM.TermsDS
    SQL.Strings = (
      
        'select Tf.LastName,TF.FirstName,TF.TeacherID,TF.LessonName,TF.Le' +
        'ssonTypeName,TF.LessonGroupName,'
      '   TF.LessonAverage,TF.TPasokh,R.*,R.Average as rowAvg,'
      '   Qu.QGroupNo,Qu.Title as QTitle,Qu.Coef,QuG.QGroupName'
      'from varQuestions Qu,QuestionsGroups QuG'
      ',TeachersFlat TF join  varResults R'
      'on TF.ID=R.ID'
      'where R.RowNo=Qu.RowNo'
      '  AND Qu.QGroupNo=QuG.QGroupNo and varQuestions.TermID=:TermID'
      '  and varQuestions.LessonTypeID=TF.LessonTypeID'
      '')
    Left = 55
    Top = 8
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'TermID'
        ParamType = ptUnknown
        Size = 2
      end>
  end
end
