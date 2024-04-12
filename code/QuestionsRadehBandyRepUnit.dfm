inherited QuestionsRadehBandyRep: TQuestionsRadehBandyRep
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
  ReportTitle = 'QuestionsRadehBandy'
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
      Left = 242
      Top = 66
      Width = 233
      Size.Values = (
        121.708333333333
        640.291666666667
        174.625
        616.479166666667)
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      Caption = #1604#1610#1587#1578' '#1575#1587#1575#1578#1610#1583' '#1576#1585' '#1575#1587#1575#1587' '#1606#1605#1585#1607' '#1705#1587#1576' '#1588#1583#1607' '#1583#1585' '#1587#1608#1575#1604
      Font.Height = -17
      FontSize = 13
    end
    inherited TermName1: TQRDBText
      Top = 32
      Size.Values = (
        87.3125
        833.4375
        84.6666666666667
        230.1875)
      FontSize = 14
    end
    object QRDBText3: TQRDBText
      Left = 333
      Top = 101
      Width = 51
      Height = 33
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        87.3125
        881.0625
        267.229166666667
        134.9375)
      Alignment = taCenter
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      Color = clWhite
      DataSet = Query1
      DataField = 'QTitle'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Zar'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 15
    end
    object QRLabel1: TQRLabel
      Left = 656
      Top = 137
      Width = 57
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        1735.66666666667
        362.479166666667
        150.8125)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ':'#1606#1608#1593' '#1587#1608#1575#1604
      Color = clWhite
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object QRDBText1: TQRDBText
      Left = 552
      Top = 135
      Width = 97
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        1460.5
        357.1875
        256.645833333333)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      Color = clWhite
      DataSet = Query1
      DataField = 'LessonTypeName'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 12
    end
    object QRLabel2: TQRLabel
      Left = 656
      Top = 107
      Width = 57
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        1735.66666666667
        283.104166666667
        150.8125)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = ':'#1605#1578#1606' '#1587#1608#1575#1604
      Color = clWhite
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
  end
  inherited DetailBand: TQRBand
    Top = 208
    Frame.DrawBottom = False
    Size.Values = (
      50.2708333333333
      1899.70833333333)
    inherited CountExpr: TQRExpr
      Size.Values = (
        60.8541666666667
        1830.91666666667
        0
        68.7916666666667)
      FontSize = 9
    end
    object QRDBText10: TQRDBText
      Left = 24
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
        63.5
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
      Font.Style = [fsBold]
      Mask = '00.00'
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText4: TQRDBText
      Left = 617
      Top = 4
      Width = 68
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1632.47916666667
        10.5833333333333
        179.916666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      Color = clWhite
      DataSet = Query1
      DataField = 'LastName'
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
      Left = 565
      Top = 4
      Width = 48
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1494.89583333333
        10.5833333333333
        127)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      Color = clWhite
      DataSet = Query1
      DataField = 'FirstName'
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
    object QRDBText9: TQRDBText
      Left = 485
      Top = 4
      Width = 62
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1283.22916666667
        10.5833333333333
        164.041666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      Color = clWhite
      DataSet = Query1
      DataField = 'HamkariName'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object QRDBText13: TQRDBText
      Left = 404
      Top = 4
      Width = 64
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        1068.91666666667
        10.5833333333333
        169.333333333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      Color = clWhite
      DataSet = Query1
      DataField = 'MadrakName'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object QRDBText2: TQRDBText
      Left = 332
      Top = 4
      Width = 44
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        878.416666666667
        10.5833333333333
        116.416666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = Query1
      DataField = 'TeacherAverage'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      Mask = '00.00'
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText5: TQRDBText
      Left = 120
      Top = 0
      Width = 151
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.9791666666667
        317.5
        0
        399.520833333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      Color = clWhite
      DataSet = Query1
      DataField = 'LessonName'
      Transparent = True
      WordWrap = True
      FontSize = 9
    end
  end
  inherited CulomnHeaderBand: TQRBand
    Top = 179
    Height = 29
    Frame.DrawTop = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    Color = clMoneyGreen
    Size.Values = (
      76.7291666666667
      1899.70833333333)
    inherited RadifLabel: TQRLabel
      Top = 8
      Size.Values = (
        60.8541666666667
        1820.33333333333
        21.1666666666667
        76.7291666666667)
      Transparent = True
      FontSize = 10
    end
    object QRLabel12: TQRLabel
      Left = 18
      Top = 7
      Width = 50
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        47.625
        18.5208333333333
        132.291666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1606#1605#1585#1607' '#1587#1608#1575#1604
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Zar'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object QRLabel6: TQRLabel
      Left = 629
      Top = 8
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
        21.1666666666667
        140.229166666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
      Color = clWhite
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object QRLabel7: TQRLabel
      Left = 590
      Top = 8
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
        21.1666666666667
        37.0416666666667)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1606#1575#1605' '
      Color = clWhite
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object QRLabel8: TQRLabel
      Left = 493
      Top = 8
      Width = 51
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        1304.39583333333
        21.1666666666667
        134.9375)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1606#1608#1593' '#1607#1605#1603#1575#1585#1610
      Color = clWhite
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object QRLabel9: TQRLabel
      Left = 411
      Top = 8
      Width = 57
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        1087.4375
        21.1666666666667
        150.8125)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1605#1583#1585#1603' '#1578#1581#1589#1610#1604#1610
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Zar'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 9
    end
    object QRLabel10: TQRLabel
      Left = 332
      Top = 8
      Width = 43
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        878.416666666667
        21.1666666666667
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
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object QRLabel11: TQRLabel
      Left = 209
      Top = 8
      Width = 34
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.8541666666667
        552.979166666667
        21.1666666666667
        89.9583333333333)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = '  '#1606#1575#1605' '#1583#1585#1587
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Zar'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 9
    end
  end
  inherited EveryPageFooterBand: TQRBand
    Top = 227
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
    Top = 244
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
  object Query1: TQuery
    DatabaseName = 'atNezarat'
    DataSource = DM.TermsDS
    SQL.Strings = (
      
        'select Tf.LastName,TF.FirstName,TF.TeacherID,TF.LessonName,TF.Le' +
        'ssonTypeName,TF.LessonGroupName,'
      '   TF.LessonAverage,TF.TPasokh,R.*,R.Average as rowAvg, '
      
        '   TF.LessonTypeID,TF.HamkariName,TF.MadrakName,TF.TeacherAverag' +
        'e,'
      '   TF.FacultyID, TF.GroupID,'
      '   Qu.QGroupNo,Qu.Title as QTitle,Qu.Coef,QuG.QGroupName'
      'from varQuestions Qu,QuestionsGroups QuG'
      ',TeachersFlat TF join  varResults R'
      'on TF.ID=R.ID'
      'where R.RowNo=Qu.RowNo and'
      'R.ID>= (select min(id) from varqlt where termid=:TermID)'
      'and R.ID<= (select max(id) from varqlt where termid=:TermID) '
      '  AND Qu.QGroupNo=QuG.QGroupNo and varQuestions.TermID=:TermID'
      '  and varQuestions.LessonTypeID=TF.LessonTypeID'
      ''
      '')
    Left = 55
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
      end
      item
        DataType = ftSmallint
        Name = 'TermID'
        ParamType = ptUnknown
      end>
  end
end
