inherited LessonRep: TLessonRep
  Left = -161
  Top = -365
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
    Height = 163
    Size.Values = (
      431.270833333333
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
      Left = 266
      Width = 185
      Size.Values = (
        121.708333333333
        703.791666666667
        111.125
        489.479166666667)
      Caption = #1606#1578#1575#1610#1580' '#1606#1592#1585#1582#1608#1575#1607#1610' '#1575#1586' '#1583#1575#1606#1588#1580#1608#1610#1575#1606
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
    object QRLabel33: TQRLabel
      Left = 642
      Top = 101
      Width = 68
      Height = 28
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        74.0833333333333
        1698.625
        267.229166666667
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
    object QRLabel25: TQRLabel
      Left = 65
      Top = 132
      Width = 630
      Height = 18
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        47.625
        171.979166666667
        349.25
        1666.875)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 
        '.'#1576#1575' '#1587#1604#1575#1605#1563' '#1575#1581#1578#1585#1575#1605#1575'" '#1606#1578#1610#1580#1607' '#1606#1592#1585#1582#1608#1575#1607#1610' '#1575#1586' '#1583#1585#1587' '#1584#1610#1604' '#1603#1607'  '#1578#1608#1587#1591' '#1580#1606#1575#1576#1593#1575#1604#1610' '#1578 +
        #1583#1585#1610#1587' '#1588#1583#1607' '#1575#1587#1578' '#1580#1607#1578' '#1575#1591#1604#1575#1593' '#1608' '#1576#1607#1585#1607' '#1576#1585#1583#1575#1585#1610' '#1575#1585#1587#1575#1604' '#1605#1610' '#1711#1585#1583#1583
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 11
    end
  end
  inherited DetailBand: TQRBand
    Top = 231
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
  end
  inherited CulomnHeaderBand: TQRBand
    Top = 201
    Size.Values = (
      79.375
      1899.70833333333)
    inherited QRShape1: TQRShape
      Size.Values = (
        66.1458333333333
        0
        0
        1899.70833333333)
    end
    inherited RadifLabel: TQRLabel
      Size.Values = (
        60.8541666666667
        1820.33333333333
        5.29166666666667
        76.7291666666667)
      FontSize = 10
    end
  end
  inherited EveryPageFooterBand: TQRBand
    Top = 384
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
    Top = 250
    Size.Values = (
      354.541666666667
      1899.70833333333)
    inherited EhteramQRMemo: TQRMemo
      Size.Values = (
        95.25
        370.416666666667
        42.3333333333333
        243.416666666667)
      FontSize = 16
    end
    inherited ModirNameQRDBText: TQRDBText
      Size.Values = (
        95.25
        317.5
        148.166666666667
        277.8125)
      FontSize = 16
    end
    inherited QRDBText1: TQRDBText
      Size.Values = (
        95.25
        275.166666666667
        235.479166666667
        246.0625)
      FontSize = 16
    end
  end
  inherited QRImage1: TQRImage
    Top = 26
    Size.Values = (
      238.125
      1838.85416666667
      68.7916666666667
      174.625)
  end
  inherited QRLabel5: TQRLabel
    Top = 112
    Size.Values = (
      50.2708333333333
      1833.5625
      296.333333333333
      182.5625)
    FontSize = 8
  end
  object Query1: TQuery
    DatabaseName = 'atNezarat'
    SQL.Strings = (
      
        'select t.TeacherID,J.Name as JensName,t.Name+" "+t.Family as Ost' +
        'adName,'
      
        '  G.Name as GroupName,F.Name as FacultyName,G.TeachersNo as GTsN' +
        'o,'
      '  F.TeachersNo as FTsNo,'
      
        '  C.Name as LessonName,q.Average as LessonAvg,q.Rotbeh,q.TPasokh' +
        ','
      
        '  t.Moadel,m.Name as madrak,Hamkari.Name as hamkari, F.Moadel as' +
        ' FMoadel,'
      
        '  G.Moadel as GMoadel,R.*,Qu.*,QuG.Name as QuestionGroup,R.Avera' +
        'ge as rowAvg,'
      
        #13'  t.RotbehInUniv,t.RotbehInFaculty,t.RotbehInGroup,Q.LRotbeh,Un' +
        'itInfo.*'#10
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'from foxTeach t,QLT q,Madrak m,Hamkari H,Faculties F,foxGrop G,'
      
        '       foxCourse C,Report R,Questions Qu,Jens J,QuestionsGroups ' +
        'QuG,UnitInfo  '
      'where t.TeacherID=q.TeacherID and'
      '  t.Madrak=m.Madrak and T.TypeM=H.TypeM and'
      '  t.CodeD=F.CodeD and t.CodeD=G.CodeD and t.CodeG=G.CodeG'
      '  and q.LessonID=C.LessonID AND R.ID=q.ID AND R.RowNo=Qu.RowNo'
      #13'  AND t.sex=J.sex AND Qu.GroupNo=QuG.GroupNo'
      '/*  AND F.CodeD=1   AND G.CodeG=5*/'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'ORDER BY TeacherID,ID,Qu.GroupNo,RowNo'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ' '
      ' ')
    Left = 207
    Top = 8
  end
end
