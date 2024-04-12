object Form1: TForm1
  Left = 261
  Top = 205
  Width = 731
  Height = 560
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = -8
    Top = 72
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
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
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      100
      2970
      100
      2100
      100
      100
      0)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object TitleBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 243
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
        642.9375
        1899.70833333333)
      BandType = rbTitle
      object QRChart1: TQRChart
        Left = 160
        Top = 0
        Width = 281
        Height = 152
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          402.166666666667
          423.333333333333
          0
          743.479166666667)
        object QRDBChart1: TQRDBChart
          Left = -1
          Top = -1
          Width = 1
          Height = 1
          BackWall.Brush.Color = clWhite
          BackWall.Brush.Style = bsClear
          Title.Text.Strings = (
            'TQRChart')
          object Series1: TLineSeries
            Marks.ArrowLength = 8
            Marks.Visible = False
            SeriesColor = clRed
            XLabelsSource = 'termid'
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            Pointer.Visible = False
            XValues.DateTime = False
            XValues.Name = 'X'
            XValues.Multiplier = 1
            XValues.Order = loAscending
            XValues.ValueSource = 'termid'
            YValues.DateTime = False
            YValues.Name = 'Y'
            YValues.Multiplier = 1
            YValues.Order = loNone
            YValues.ValueSource = 'tedad'
          end
        end
      end
    end
  end
  object Button1: TButton
    Left = 328
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 48
    Top = 376
    Width = 193
    Height = 89
    DataSource = DataSource2
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBChart1: TDBChart
    Left = 392
    Top = 256
    Width = 312
    Height = 162
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'TDBChart')
    TabOrder = 3
    object Series2: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      DataSource = Query1
      SeriesColor = clRed
      XLabelsSource = 'termid'
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      XValues.ValueSource = 'termid'
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
      YValues.ValueSource = 'tedad'
    end
    object Series3: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      DataSource = DecisionQuery1
      SeriesColor = clGreen
      XLabelsSource = 'TermID'
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      XValues.ValueSource = 'TermID'
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
      YValues.ValueSource = 'moadel'
    end
  end
  object Button2: TButton
    Left = 424
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 4
    OnClick = Button2Click
  end
  object DecisionQuery1: TDecisionQuery
    Active = True
    DatabaseName = 'atNezarat'
    SQL.Strings = (
      'SELECT TermID,  AVG( Average ) * 10  moadel'
      'FROM "varQlt.DB" Varqlt'
      'WHERE  teacherid = 42 '
      'GROUP BY TermID')
    Left = 152
    Top = 16
  end
  object Query1: TQuery
    Active = True
    DatabaseName = 'atNezarat'
    SQL.Strings = (
      'select termid,count(*) as tedad'
      'from varteachers'
      'where termid>0'
      'group by termid')
    Left = 24
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 56
    Top = 16
  end
  object DataSource2: TDataSource
    DataSet = DecisionQuery1
    Left = 192
    Top = 16
  end
end
