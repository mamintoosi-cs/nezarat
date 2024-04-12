inherited LetterToTeacherRep: TLetterToTeacherRep
  Top = -261
  DataSet = TeachersFlat
  Functions.DATA = (
    '0'
    '0'
    #39#39
    #39#39)
  Options = [FirstPageHeader]
  Page.Values = (
    100
    2970
    100
    2100
    100
    100
    0)
  ReportTitle = 'StaffLetter'
  Units = Native
  inherited FirstPageHeaderBand: TQRBand
    Height = 251
    BeforePrint = FirstPageHeaderBandBeforePrint
    Size.Values = (
      664.104166666667
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
      Enabled = True
      Size.Values = (
        150.8125
        2.64583333333333
        0
        275.166666666667)
      FontSize = 10
    end
    inherited TitleLabel: TQRLabel
      Left = 266
      Top = 26
      Width = 185
      Size.Values = (
        121.708333333333
        703.791666666667
        68.7916666666667
        489.479166666667)
      Caption = #1606#1578#1575#1610#1580' '#1606#1592#1585#1582#1608#1575#1607#1610' '#1575#1586' '#1583#1575#1606#1588#1580#1608#1610#1575#1606
      FontSize = 16
    end
    inherited TermName1: TQRDBText
      Top = 56
      Size.Values = (
        87.3125
        833.4375
        148.166666666667
        230.1875)
      FontSize = 14
    end
    object QRLabel33: TQRLabel
      Left = 620
      Top = 149
      Width = 68
      Height = 28
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        74.0833333333333
        1640.41666666667
        394.229166666667
        179.916666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = ':'#1605#1583#1585#1587' '#1605#1581#1578#1585#1605
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
    object QRLabel31: TQRLabel
      Left = 646
      Top = 100
      Width = 44
      Height = 28
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        74.0833333333333
        1709.20833333333
        264.583333333333
        116.416666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = ':'#1583#1575#1606#1588#1603#1583#1607
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
    object QRDBText26: TQRDBText
      Left = 538
      Top = 100
      Width = 104
      Height = 28
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        74.0833333333333
        1423.45833333333
        264.583333333333
        275.166666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = True
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      Color = clWhite
      DataSet = TeachersFlat
      DataField = 'FacultyName'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Zar'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 12
    end
    object QRLabel32: TQRLabel
      Left = 662
      Top = 126
      Width = 29
      Height = 28
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        74.0833333333333
        1751.54166666667
        333.375
        76.7291666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = ':'#1711#1585#1608#1607
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
    object QRDBText25: TQRDBText
      Left = 525
      Top = 126
      Width = 132
      Height = 28
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        74.0833333333333
        1389.0625
        333.375
        349.25)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = True
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      Color = clWhite
      DataSet = TeachersFlat
      DataField = 'GroupName'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Zar'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 12
    end
    object QRExpr1: TQRExpr
      Left = 314
      Top = 153
      Width = 302
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.9166666666667
        830.791666666667
        404.8125
        799.041666666667)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 
        'TeachersFlat.JensName+'#39' '#39'+TeachersFlat.Title+'#39' '#39'+TeachersFlat.Fi' +
        'rstName+'#39' '#39'+TeachersFlat.LastName '
      FontSize = 12
    end
    object NDLabel: TQRLabel
      Left = 343
      Top = 92
      Width = 32
      Height = 28
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        74.0833333333333
        907.520833333333
        243.416666666667
        84.6666666666667)
      Alignment = taCenter
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = #1583#1585#1608#1587
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
    object QRMemo1: TQRMemo
      Left = 56
      Top = 177
      Width = 631
      Height = 46
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        121.708333333333
        148.166666666667
        468.3125
        1669.52083333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Yagut'
      Font.Style = []
      Lines.Strings = (
        
          '.'#1576#1575' '#1587#1604#1575#1605#1563' '#1575#1581#1578#1585#1575#1605#1575'" '#1576#1607' '#1662#1610#1608#1587#1578' '#1606#1578#1575#1610#1580' '#1606#1592#1585#1582#1608#1575#1607#1610' '#1575#1586' '#1583#1585#1608#1587' '#1584#1610#1604' '#1603#1607'  '#1578#1608#1587#1591' ' +
          #1580#1606#1575#1576#1593#1575#1604#1610' '#1578#1583#1585#1610#1587' '#1588#1583#1607' '#1575#1587#1578' '#1580#1607#1578' '#1575#1591#1604#1575#1593' '#1608' '#1576#1607#1585#1607' '#1576#1585#1583#1575#1585#1610' '#1575#1585#1587#1575#1604' '#1605#1610' '#1711#1585#1583#1583' '#1604#1591#1601 +
          #1575'" '#1606#1592#1585#1575#1578' '#1608' '#1662#1610#1588#1606#1607#1575#1583#1575#1578' '#1582#1608#1583' '#1585#1575' '#1576#1607' '#1575#1610#1606' '#1583#1601#1578#1585' '#1575#1585#1587#1575#1604' '#1601#1585#1605#1575#1610#1610#1583)
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object ZemnanQRExpr: TQRExpr
      Left = 56
      Top = 224
      Width = 41
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        148.166666666667
        592.666666666667
        108.479166666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      Color = clWhite
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel9: TQRLabel
      Left = 99
      Top = 224
      Width = 122
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        261.9375
        592.666666666667
        322.791666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1578#1593#1583#1575#1583' '#1603#1604' '#1583#1585#1608#1587' '#1575#1585#1586#1610#1575#1576#1610' '#1588#1583#1607
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  inherited DetailBand: TQRBand
    Top = 329
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
    object LessonName: TQRDBText
      Left = 472
      Top = 0
      Width = 209
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1248.83333333333
        0
        552.979166666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      Color = clWhite
      DataSet = TeachersFlat
      DataField = 'LessonName'
      Transparent = True
      WordWrap = True
      FontSize = 9
    end
    object GroupAvg: TQRDBText
      Left = 196
      Top = 0
      Width = 83
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        518.583333333333
        0
        219.604166666667)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TeachersFlat
      DataField = 'LessonRotbeh'
      Transparent = True
      WordWrap = True
      FontSize = 9
    end
    object QRDBText2: TQRDBText
      Left = 344
      Top = 0
      Width = 33
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        910.166666666667
        0
        87.3125)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      Color = clWhite
      DataSet = TeachersFlat
      DataField = 'LessonAverage'
      Mask = '00.00'
      Transparent = True
      WordWrap = True
      FontSize = 9
    end
    object QRDBText3: TQRDBText
      Left = 272
      Top = 0
      Width = 49
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        719.666666666667
        0
        129.645833333333)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      Color = clWhite
      DataSet = TeachersFlat
      DataField = 'TPasokh'
      Transparent = True
      WordWrap = True
      FontSize = 9
    end
    object QRDBText4: TQRDBText
      Left = 392
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
        1037.16666666667
        0
        193.145833333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      Color = clWhite
      DataSet = TeachersFlat
      DataField = 'LessonTypeName'
      Transparent = True
      WordWrap = True
      FontSize = 9
    end
    object QRDBText5: TQRDBText
      Left = 154
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
        407.458333333333
        0
        100.541666666667)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TeachersFlat
      DataField = 'IntLessonRotbeh'
      Transparent = True
      WordWrap = True
      FontSize = 9
    end
  end
  inherited CulomnHeaderBand: TQRBand
    Top = 289
    Frame.DrawTop = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    Size.Values = (
      79.375
      1899.70833333333)
    inherited RadifLabel: TQRLabel
      Top = 1
      Size.Values = (
        60.8541666666667
        1820.33333333333
        2.64583333333333
        76.7291666666667)
      FontSize = 10
    end
    object QRLabel40: TQRLabel
      Left = 269
      Top = 3
      Width = 59
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        50.2708333333333
        711.729166666667
        7.9375
        156.104166666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = ':'#1578#1593#1583#1575#1583' '#1662#1575#1587#1582' '#1583#1607#1606#1583#1607
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Zar'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel1: TQRLabel
      Left = 634
      Top = 1
      Width = 45
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        1677.45833333333
        2.64583333333333
        119.0625)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1606#1575#1605' '#1583#1585#1587
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel2: TQRLabel
      Left = 336
      Top = 1
      Width = 45
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        889
        2.64583333333333
        119.0625)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1606#1605#1585#1607' '#1583#1585#1587
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel3: TQRLabel
      Left = 216
      Top = 1
      Width = 45
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        571.5
        2.64583333333333
        119.0625)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1585#1578#1576#1607
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel4: TQRLabel
      Left = 408
      Top = 1
      Width = 58
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        1079.5
        2.64583333333333
        153.458333333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1606#1608#1593' '#1583#1585#1587
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel8: TQRLabel
      Left = 136
      Top = 1
      Width = 69
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        359.833333333333
        2.64583333333333
        182.5625)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1585#1578#1576#1607' '#1583#1585' '#1583#1575#1606#1588#1711#1575#1607
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  inherited EveryPageFooterBand: TQRBand
    Top = 553
    AlignToBottom = True
    Enabled = False
    Size.Values = (
      76.7291666666667
      1899.70833333333)
    BandType = rbSummary
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
    Top = 348
    Height = 205
    Frame.DrawTop = True
    Size.Values = (
      542.395833333333
      1899.70833333333)
    BandType = rbGroupFooter
    inherited EhteramQRMemo: TQRMemo
      Left = 74
      Top = 153
      Width = 92
      Height = 36
      Size.Values = (
        95.25
        195.791666666667
        404.8125
        243.416666666667)
      Font.Height = -21
      FontSize = 16
    end
    object QRShape2: TQRShape
      Left = 232
      Top = 41
      Width = 478
      Height = 73
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        193.145833333333
        613.833333333333
        108.479166666667
        1264.70833333333)
      Shape = qrsRectangle
    end
    object QRLabel18: TQRLabel
      Left = 388
      Top = 8
      Width = 106
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1026.58333333333
        21.1666666666667
        280.458333333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = #1605#1610#1575#1606#1711#1610#1606' '#1583#1585#1608#1587'  '#1588#1605#1575'  '
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel15: TQRLabel
      Left = 614
      Top = 53
      Width = 82
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1624.54166666667
        140.229166666667
        216.958333333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1605#1610#1575#1606#1711#1610#1606' '#1606#1587#1576#1610' '#1711#1585#1608#1607
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel6: TQRLabel
      Left = 604
      Top = 74
      Width = 93
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1598.08333333333
        195.791666666667
        246.0625)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1605#1610#1575#1606#1711#1610#1606' '#1606#1587#1576#1610' '#1583#1575#1606#1588#1603#1583#1607
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel42: TQRLabel
      Left = 605
      Top = 94
      Width = 92
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1600.72916666667
        248.708333333333
        243.416666666667)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1605#1610#1575#1606#1711#1610#1606' '#1606#1587#1576#1610' '#1583#1575#1606#1588#1711#1575#1607
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel20: TQRLabel
      Left = 434
      Top = 93
      Width = 86
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1148.29166666667
        246.0625
        227.541666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1585#1578#1576#1607' '#1588#1605#1575' '#1583#1585' '#1583#1575#1606#1588#1711#1575#1607
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel22: TQRLabel
      Left = 433
      Top = 73
      Width = 87
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1145.64583333333
        193.145833333333
        230.1875)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1585#1578#1576#1607' '#1588#1605#1575' '#1583#1585' '#1583#1575#1606#1588#1603#1583#1607
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel21: TQRLabel
      Left = 444
      Top = 52
      Width = 76
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1174.75
        137.583333333333
        201.083333333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1585#1578#1576#1607' '#1588#1605#1575' '#1583#1585' '#1711#1585#1608#1607
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel38: TQRLabel
      Left = 290
      Top = 93
      Width = 48
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        767.291666666667
        246.0625
        127)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1570#1582#1585#1610#1606' '#1585#1578#1576#1607
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel37: TQRLabel
      Left = 290
      Top = 73
      Width = 48
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        767.291666666667
        193.145833333333
        127)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1570#1582#1585#1610#1606' '#1585#1578#1576#1607
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel36: TQRLabel
      Left = 290
      Top = 52
      Width = 48
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        767.291666666667
        137.583333333333
        127)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1570#1582#1585#1610#1606' '#1585#1578#1576#1607
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText28: TQRDBText
      Left = 240
      Top = 52
      Width = 44
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        635
        137.583333333333
        116.416666666667)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TeachersFlat
      DataField = 'LastRInGroup'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText29: TQRDBText
      Left = 240
      Top = 73
      Width = 44
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        635
        193.145833333333
        116.416666666667)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TeachersFlat
      DataField = 'LastRInFaculty'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText30: TQRDBText
      Left = 240
      Top = 93
      Width = 45
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        635
        246.0625
        119.0625)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TeachersFlat
      DataField = 'LastRInUniversity'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText16: TQRDBText
      Left = 374
      Top = 93
      Width = 52
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        989.541666666667
        246.0625
        137.583333333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TeachersFlat
      DataField = 'RotbehInUniversity'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText17: TQRDBText
      Left = 374
      Top = 73
      Width = 52
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        989.541666666667
        193.145833333333
        137.583333333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TeachersFlat
      DataField = 'RotbehInFaculty'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText18: TQRDBText
      Left = 374
      Top = 52
      Width = 52
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        989.541666666667
        137.583333333333
        137.583333333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TeachersFlat
      DataField = 'RotbehInGroup'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText14: TQRDBText
      Left = 551
      Top = 53
      Width = 82
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1457.85416666667
        140.229166666667
        216.958333333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TeachersFlat
      DataField = 'GroupAverage'
      Mask = '00.00'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText13: TQRDBText
      Left = 337
      Top = 8
      Width = 47
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        891.645833333333
        21.1666666666667
        124.354166666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TeachersFlat
      DataField = 'TeacherAverage'
      Mask = ' 00.00'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText15: TQRDBText
      Left = 551
      Top = 74
      Width = 90
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1457.85416666667
        195.791666666667
        238.125)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TeachersFlat
      DataField = 'FacultyAverage'
      Mask = '00.00'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText32: TQRDBText
      Left = 551
      Top = 94
      Width = 103
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1457.85416666667
        248.708333333333
        272.520833333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TeachersFlat
      DataField = 'UniversityAverage'
      Mask = '00.00'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel7: TQRLabel
      Left = 626
      Top = 32
      Width = 70
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1656.29166666667
        84.6666666666667
        185.208333333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = '  '#1587#1575#1610#1585' '#1570#1605#1575#1585#1607#1575'   '
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object NoteQRMemo: TQRMemo
      Left = 232
      Top = 120
      Width = 465
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        613.833333333333
        317.5
        1230.3125)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = True
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRChart1: TQRChart
      Left = 0
      Top = 19
      Width = 225
      Height = 121
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        320.145833333333
        0
        50.2708333333333
        595.3125)
      object QRDBChart1: TQRDBChart
        Left = -1
        Top = -1
        Width = 1
        Height = 1
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Text.Strings = (
          #1606#1605#1608#1583#1575#1585' '#1578#1594#1610#1610#1585#1575#1578' '#1605#1610#1575#1606#1711#1610#1606' '#1606#1605#1585#1575#1578' '#1583#1585#1608#1587' '#1588#1605#1575' '#1583#1585' '#1578#1585#1605#1607#1575#1610' '#1711#1584#1588#1578#1607)
        LeftAxis.Automatic = False
        LeftAxis.AutomaticMaximum = False
        LeftAxis.AutomaticMinimum = False
        LeftAxis.AxisValuesFormat = '#,##0.##'
        LeftAxis.Maximum = 20
        LeftAxis.Minimum = 10
        Legend.Visible = False
        object Series1: TBarSeries
          Marks.ArrowLength = 8
          Marks.Style = smsValue
          Marks.Visible = False
          DataSource = DM.ChartDecisionQuery
          SeriesColor = clRed
          ValueFormat = '#,##0.##'
          XLabelsSource = 'TermID'
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1
          XValues.Order = loAscending
          XValues.ValueSource = 'TermID'
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1
          YValues.Order = loNone
          YValues.ValueSource = 'moadel'
        end
      end
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
    Top = 319
    Width = 718
    Height = 10
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
      26.4583333333333
      1899.70833333333)
    Expression = 'TeachersFlat.TeacherID'
    FooterBand = EndPageFooterBand
    Master = Owner
    ReprintOnNewPage = False
  end
  object TeachersFlat: TTable
    Active = True
    DatabaseName = 'atNezarat'
    IndexName = 'TLIndex'
    TableName = 'TeachersFlat.DB'
    Left = 24
    Top = 93
  end
end
