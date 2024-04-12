inherited BossRep: TBossRep
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
      Size.Values = (
        87.3125
        833.4375
        211.666666666667
        230.1875)
      FontSize = 14
    end
  end
  inherited DetailBand: TQRBand
    BeforePrint = DetailBandBeforePrint
    Size.Values = (
      50.2708333333333
      1899.70833333333)
    inherited CountExpr: TQRExpr
      Size.Values = (
        60.8541666666667
        1830.91666666667
        0
        68.7916666666667)
      Transparent = True
      FontSize = 9
    end
    object Rotbeh: TQRDBText
      Left = 0
      Top = 0
      Width = 45
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
        119.0625)
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
    object FacultyAvg: TQRDBText
      Left = 48
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
        127
        0
        100.541666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = DM.Flat1
      DataField = 'FacultyAverage'
      Mask = '00.00'
      Transparent = True
      WordWrap = True
      FontSize = 9
    end
    object GroupAvg: TQRDBText
      Left = 98
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
        259.291666666667
        0
        100.541666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = DM.Flat1
      DataField = 'GroupAverage'
      Mask = '00.00'
      Transparent = True
      WordWrap = True
      FontSize = 9
    end
    object Moadel: TQRDBText
      Left = 145
      Top = 0
      Width = 40
      Height = 18
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        47.625
        383.645833333333
        0
        105.833333333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = DM.Flat1
      DataField = 'TeacherAverage'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      Mask = '00.00'
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object TPasokh: TQRDBText
      Left = 192
      Top = 0
      Width = 40
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
        105.833333333333)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = DM.Flat1
      DataField = 'TPasokh'
      Transparent = True
      WordWrap = True
      FontSize = 9
    end
    object Average: TQRDBText
      Left = 244
      Top = 0
      Width = 37
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        645.583333333333
        0
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
    object Madrak: TQRDBText
      Left = 287
      Top = 0
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
        0
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
      Transparent = True
      WordWrap = True
      FontSize = 9
    end
    object Hamkari: TQRDBText
      Left = 357
      Top = 0
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
        0
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
      Transparent = True
      WordWrap = True
      FontSize = 9
    end
    object LessonName: TQRDBText
      Left = 441
      Top = 0
      Width = 104
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1166.8125
        0
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
    object Name: TQRDBText
      Left = 550
      Top = 0
      Width = 55
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1455.20833333333
        0
        145.520833333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      Color = clWhite
      DataSet = DM.Flat1
      DataField = 'FirstName'
      Transparent = True
      WordWrap = True
      FontSize = 9
    end
    object Family: TQRDBText
      Left = 610
      Top = 0
      Width = 73
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1613.95833333333
        0
        193.145833333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      Color = clWhite
      DataSet = DM.Flat1
      DataField = 'LastName'
      Transparent = True
      WordWrap = True
      FontSize = 9
    end
  end
  inherited CulomnHeaderBand: TQRBand
    Size.Values = (
      79.375
      1899.70833333333)
    inherited RadifLabel: TQRLabel
      Size.Values = (
        60.8541666666667
        1820.33333333333
        5.29166666666667
        76.7291666666667)
      FontSize = 10
    end
    object FamilyLabel: TQRLabel
      Left = 629
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
        1664.22916666667
        5.29166666666667
        140.229166666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object NameLabel: TQRLabel
      Left = 590
      Top = 2
      Width = 14
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        1561.04166666667
        5.29166666666667
        37.0416666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1606#1575#1605' '
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object LessonNameLabel: TQRLabel
      Left = 510
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
        1349.375
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
    object HamkariLabel: TQRLabel
      Left = 385
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
        1018.64583333333
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
      Left = 292
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
        772.583333333333
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
    object AverageLabel: TQRLabel
      Left = 240
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
        635
        5.29166666666667
        119.0625)
      Alignment = taLeftJustify
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
    object TPasokhLabel: TQRLabel
      Left = 190
      Top = 2
      Width = 47
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        502.708333333333
        5.29166666666667
        124.354166666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1578#1593#1583#1575#1583' '#1662#1575#1587#1582' '
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object MoadelLabel: TQRLabel
      Left = 143
      Top = 2
      Width = 43
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        378.354166666667
        5.29166666666667
        113.770833333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1605#1593#1583#1604' '#1575#1587#1578#1575#1583
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Zar'
      Font.Style = [fsItalic]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object GroupLabel: TQRLabel
      Left = 95
      Top = 2
      Width = 44
      Height = 28
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        74.0833333333333
        251.354166666667
        5.29166666666667
        116.416666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1605#1593#1583#1604' '#1711#1585#1608#1607
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object FacultyLabel: TQRLabel
      Left = 37
      Top = 2
      Width = 56
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        97.8958333333333
        5.29166666666667
        148.166666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1605#1593#1583#1604' '#1583#1575#1606#1588#1603#1583#1607
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object RotbehLabel: TQRLabel
      Left = 12
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
        31.75
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
  end
  inherited EveryPageFooterBand: TQRBand
    Top = 552
    Height = 29
    Size.Values = (
      76.7291666666667
      1899.70833333333)
    inherited QRExpr2: TQRExpr
      Top = 12
      Size.Values = (
        66.1458333333333
        825.5
        31.75
        248.708333333333)
      FontSize = 10
    end
  end
  inherited EndPageFooterBand: TQRBand
    Height = 134
    Size.Values = (
      354.541666666667
      1899.70833333333)
    inherited EhteramQRMemo: TQRMemo
      Top = 16
      Height = 105
      Size.Values = (
        277.8125
        370.416666666667
        42.3333333333333
        222.25)
      FontSize = 14
    end
  end
  inherited EveryPageHeaderBand: TQRBand
    Size.Values = (
      243.416666666667
      1899.70833333333)
    inherited TitleLabel2: TQRLabel
      Size.Values = (
        121.708333333333
        343.958333333333
        47.625
        1209.14583333333)
      FontSize = 16
    end
    inherited TermName2: TQRDBText
      Size.Values = (
        87.3125
        833.4375
        148.166666666667
        230.1875)
      FontSize = 14
    end
  end
  inherited QRImage1: TQRImage
    Top = 10
    Size.Values = (
      238.125
      1838.85416666667
      26.4583333333333
      174.625)
  end
  inherited QRLabel5: TQRLabel
    Top = 96
    Size.Values = (
      50.2708333333333
      1833.5625
      254
      182.5625)
    FontSize = 8
  end
  inherited QRChildBand1: TQRChildBand
    Size.Values = (
      317.5
      1899.70833333333)
    inherited UnivLabel: TQRLabel
      Size.Values = (
        60.8541666666667
        158.75
        232.833333333333
        150.8125)
      FontSize = 10
    end
    inherited UnivAvg: TQRExpr
      Size.Values = (
        60.8541666666667
        60.8541666666667
        232.833333333333
        92.6041666666667)
      FontSize = 10
    end
    inherited QRShape2: TQRShape
      Size.Values = (
        264.583333333333
        346.604166666667
        34.3958333333333
        1209.14583333333)
    end
    inherited QRLabel1: TQRLabel
      Size.Values = (
        60.8541666666667
        1291.16666666667
        10.5833333333333
        227.541666666667)
      FontSize = 9
    end
    inherited QRLabel2: TQRLabel
      Size.Values = (
        60.8541666666667
        1291.16666666667
        68.7916666666667
        219.604166666667)
      FontSize = 10
    end
    inherited VELabel: TQRLabel
      Size.Values = (
        60.8541666666667
        1039.8125
        68.7916666666667
        238.125)
      FontSize = 10
    end
    inherited NDLabel: TQRLabel
      Size.Values = (
        60.8541666666667
        1071.5625
        142.875
        203.729166666667)
      FontSize = 10
    end
    inherited QRLabel3: TQRLabel
      Size.Values = (
        60.8541666666667
        1291.16666666667
        142.875
        216.958333333333)
      FontSize = 10
    end
    inherited QRLabel4: TQRLabel
      Size.Values = (
        60.8541666666667
        1291.16666666667
        216.958333333333
        214.3125)
      FontSize = 10
    end
    inherited MDLabel: TQRLabel
      Size.Values = (
        60.8541666666667
        1031.875
        216.958333333333
        243.416666666667)
      FontSize = 10
    end
    inherited QRImage2: TQRImage
      Size.Values = (
        246.0625
        357.1875
        39.6875
        277.8125)
    end
  end
end
