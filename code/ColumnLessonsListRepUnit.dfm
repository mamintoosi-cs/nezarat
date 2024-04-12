inherited ColumnLessonsListRep: TColumnLessonsListRep
  DataSet = Query
  Functions.DATA = (
    '0'
    '0'
    #39#39
    #39#39)
  Options = [FirstPageHeader, LastPageFooter]
  Page.Columns = 3
  Page.Values = (
    70
    2970
    70
    2100
    70
    70
    20)
  inherited FirstPageHeaderBand: TQRBand
    Left = 26
    Top = 26
    Width = 741
    Height = 91
    Size.Values = (
      240.770833333333
      1960.5625)
    BandType = rbPageHeader
    inherited QRLabel16: TQRLabel
      Left = 345
      Size.Values = (
        52.9166666666667
        912.8125
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
      Left = 205
      Top = 29
      Width = 331
      Size.Values = (
        121.708333333333
        542.395833333333
        76.7291666666667
        875.770833333333)
      Caption = #1604#1610#1587#1578' '#1583#1585#1608#1587' '#1583#1575#1606#1588#1711#1575#1607' '#1578#1585#1576#1610#1578' '#1605#1593#1604#1605' '#1587#1576#1586#1608#1575#1585' '#1576#1585' '#1575#1587#1575#1587' '#1606#1575#1605' '#1583#1585#1587
      Font.Height = -19
      FontSize = 14
    end
    inherited TermName1: TQRDBText
      Left = 331
      Top = 62
      Width = 79
      Size.Values = (
        87.3125
        875.770833333333
        164.041666666667
        209.020833333333)
      Font.Height = -17
      FontSize = 13
    end
  end
  inherited DetailBand: TQRBand
    Left = 26
    Top = 147
    Width = 241
    Size.Values = (
      50.2708333333333
      637.645833333333)
    inherited CountExpr: TQRExpr
      Left = 212
      Size.Values = (
        60.8541666666667
        560.916666666667
        0
        68.7916666666667)
      FontSize = 9
    end
    object QRDBText2: TQRDBText
      Left = 5
      Top = 0
      Width = 34
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
        89.9583333333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = Query
      DataField = 'LessonID'
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
      Left = 96
      Top = 0
      Width = 109
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        254
        0
        288.395833333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      Color = clWhite
      DataSet = Query
      DataField = 'LessonName'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText4: TQRDBText
      Left = 40
      Top = 0
      Width = 53
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.3333333333333
        105.833333333333
        0
        140.229166666667)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = Query
      DataField = 'LessonTypeName'
      Mask = '##'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
  end
  inherited CulomnHeaderBand: TQRBand
    Left = 26
    Top = 117
    Width = 241
    Frame.DrawTop = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    Size.Values = (
      79.375
      637.645833333333)
    inherited RadifLabel: TQRLabel
      Left = 208
      Top = 4
      Height = 21
      Size.Values = (
        55.5625
        550.333333333333
        10.5833333333333
        76.7291666666667)
      Font.Height = -12
      ParentFont = False
      FontSize = 9
    end
    object QRLabel1: TQRLabel
      Left = 168
      Top = 3
      Width = 41
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        444.5
        7.9375
        108.479166666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1606#1575#1605' '#1583#1585#1587'  '
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel2: TQRLabel
      Left = 4
      Top = 3
      Width = 37
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        10.5833333333333
        7.9375
        97.8958333333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1603#1583' '#1583#1585#1587
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel3: TQRLabel
      Left = 45
      Top = 3
      Width = 39
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        119.0625
        7.9375
        103.1875)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1606#1608#1593' '#1583#1585#1587
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  inherited EveryPageFooterBand: TQRBand
    Left = 26
    Top = 300
    Width = 741
    Size.Values = (
      76.7291666666667
      1960.5625)
    inherited QRExpr2: TQRExpr
      Left = 323
      Size.Values = (
        66.1458333333333
        854.604166666667
        31.75
        248.708333333333)
      FontSize = 10
    end
  end
  inherited EndPageFooterBand: TQRBand
    Left = 26
    Top = 166
    Width = 741
    Enabled = False
    Size.Values = (
      354.541666666667
      1960.5625)
    inherited EhteramQRMemo: TQRMemo
      Left = 140
      Top = 16
      Width = 92
      Height = 36
      Size.Values = (
        95.25
        370.416666666667
        42.3333333333333
        243.416666666667)
      Font.Height = -21
      FontSize = 16
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
  object Query: TQuery
    Active = True
    DatabaseName = 'atNezarat'
    SQL.Strings = (
      'select L.LessonID,L.LessonName,L.LessonName2,LT.LessonTypeName'
      'from Lessons L,LessonsTypes LT'
      'where L.LessonTypeID=LT.LessonTypeID'
      'order by L.LessonName2')
    Left = 24
    Top = 24
  end
end
