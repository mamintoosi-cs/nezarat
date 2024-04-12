inherited QuestionsModificationForm: TQuestionsModificationForm
  Left = 126
  Top = 69
  Width = 721
  Height = 573
  Caption = 'QuestionsModificationForm'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  inherited ReturnToMainBitBtn: TBitBtn
    Left = 349
    Top = 483
    Width = 148
  end
  inherited StatusPanel: TPanel
    Top = 528
    Width = 713
    TabOrder = 2
    inherited UnitNameDBText: TDBText
      Left = 604
    end
    inherited MsgLabel: TLabel
      Width = 450
      Caption = 
        #1583#1585' '#1589#1608#1585#1578' '#1578#1594#1610#1610#1585' '#1590#1585#1575#1610#1576' '#1610#1575' '#1578#1585#1578#1610#1576' '#1587#1608#1575#1604#1575#1578' '#1605#1581#1575#1587#1576#1607' '#1606#1605#1585#1575#1578' '#1576#1575#1610#1583' '#1583#1608#1576#1575#1585#1607' '#1575#1606#1580 +
        #1575#1605' '#1588#1608#1583
    end
  end
  object QsDBGrid: TDBGrid
    Left = 11
    Top = 48
    Width = 692
    Height = 382
    DataSource = varQuestionsDS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Default'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    OnEnter = QsDBGridEnter
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'RowNo'
        Title.Caption = #1588#1605#1575#1585#1607' '#1587#1608#1575#1604
        Width = 62
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Coef'
        Title.Caption = #1590#1585#1610#1576
        Width = 37
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Title'
        Title.Caption = #1605#1578#1606' '#1587#1608#1575#1604
        Width = 408
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QGroupNo'
        Title.Caption = #1588#1605#1575#1585#1607
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QGroupName'
        Title.Caption = #1608' '#1606#1575#1605' '#1711#1585#1608#1607' '#1587#1608#1575#1604
        Width = 117
        Visible = True
      end>
  end
  object NDRadioGroup: TRadioGroup
    Left = 104
    Top = 0
    Width = 497
    Height = 43
    Caption = #1606#1608#1593' '#1583#1585#1587
    Columns = 5
    ItemIndex = 0
    Items.Strings = (
      #1606#1592#1585#1610
      #1593#1605#1604#1610
      #1603#1575#1585#1711#1575#1607#1610
      #1570#1586#1605#1575#1610#1588#1711#1575#1607#1610
      #1601#1575#1585#1594' '#1575#1604#1578#1581#1589#1610#1604#1575#1606)
    TabOrder = 3
    OnClick = NDRadioGroupClick
  end
  object BitBtn1: TBitBtn
    Left = 200
    Top = 483
    Width = 148
    Height = 38
    Caption = #1711#1585#1608#1607' '#1607#1575#1610' '#1587#1608#1575#1604#1575#1578
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object QGroupNamesDBGrid: TDBGrid
    Left = 248
    Top = 144
    Width = 213
    Height = 217
    Color = clInfoBk
    DataSource = DM.QuestionsGroupsDS
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    Visible = False
    OnKeyPress = QGroupNamesDBGridKeyPress
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QGroupNo'
        Title.Caption = #1603#1583' '#1711#1585#1608#1607
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QGroupName'
        Title.Caption = #1606#1575#1605' '#1711#1600#1600#1600#1600#1600#1600#1600#1600#1585#1608#1607
        Width = 130
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 226
    Top = 448
    Width = 240
    Height = 25
    DataSource = varQuestionsDS
    TabOrder = 6
  end
  object varQuestions: TTable
    AfterInsert = varQuestionsAfterInsert
    DatabaseName = 'atNezarat'
    Filter = 'LessonTypeID=1'
    Filtered = True
    IndexFieldNames = 'TermID'
    MasterFields = 'TermID'
    MasterSource = DM.TermsDS
    TableName = 'varQuestions.DB'
    Left = 24
    Top = 8
    object varQuestionsTermID: TSmallintField
      FieldName = 'TermID'
    end
    object varQuestionsLessonTypeID: TSmallintField
      FieldName = 'LessonTypeID'
    end
    object varQuestionsRowNo: TSmallintField
      FieldName = 'RowNo'
    end
    object varQuestionsCoef: TFloatField
      FieldName = 'Coef'
    end
    object varQuestionsTitle: TStringField
      FieldName = 'Title'
      Size = 100
    end
    object varQuestionsQGroupNo: TSmallintField
      FieldName = 'QGroupNo'
    end
    object varQuestionsQGroupName: TStringField
      FieldKind = fkLookup
      FieldName = 'QGroupName'
      LookupDataSet = DM.QuestionsGroups
      LookupKeyFields = 'QGroupNo'
      LookupResultField = 'QGroupName'
      KeyFields = 'QGroupNo'
      Size = 25
      Lookup = True
    end
  end
  object varQuestionsDS: TDataSource
    DataSet = varQuestions
    Left = 56
    Top = 8
  end
end
