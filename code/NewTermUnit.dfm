object NewTermForm: TNewTermForm
  Left = 273
  Top = 124
  Width = 284
  Height = 243
  Caption = #1578#1593#1585#1610#1601' '#1578#1585#1605' '#1580#1583#1610#1583
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 205
    Top = 28
    Width = 66
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    BiDiMode = bdRightToLeft
    Caption = #1593#1606#1608#1575#1606' '#1578#1585#1605
    FocusControl = EditTermName
    ParentBiDiMode = False
  end
  object Label3: TLabel
    Left = 205
    Top = 50
    Width = 66
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    BiDiMode = bdRightToLeft
    Caption = #1606#1575#1605' '#1605#1583#1610#1585
    FocusControl = EditModirName
    ParentBiDiMode = False
  end
  object Label4: TLabel
    Left = 205
    Top = 72
    Width = 66
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    BiDiMode = bdRightToLeft
    Caption = #1587#1605#1578' '#1605#1583#1610#1585
    FocusControl = EditModirTitle
    ParentBiDiMode = False
  end
  object EditTermName: TDBEdit
    Left = 36
    Top = 25
    Width = 165
    Height = 21
    BiDiMode = bdRightToLeft
    DataField = 'TermName'
    DataSource = DM.TermsDS
    ParentBiDiMode = False
    TabOrder = 0
  end
  object EditModirName: TDBEdit
    Left = 36
    Top = 47
    Width = 165
    Height = 21
    BiDiMode = bdRightToLeft
    DataField = 'ModirName'
    DataSource = DM.TermsDS
    ParentBiDiMode = False
    TabOrder = 1
  end
  object EditModirTitle: TDBEdit
    Left = 36
    Top = 69
    Width = 165
    Height = 21
    BiDiMode = bdRightToLeft
    DataField = 'ModirTitle'
    DataSource = DM.TermsDS
    ParentBiDiMode = False
    TabOrder = 2
  end
  object CopyBtn: TBitBtn
    Left = 78
    Top = 120
    Width = 120
    Height = 25
    Caption = #1603#1662#1610' '#1575#1586' '#1578#1585#1605' '#1602#1576#1604
    TabOrder = 4
    OnClick = CopyBtnClick
  end
  object SabtBtn: TBitBtn
    Left = 78
    Top = 144
    Width = 120
    Height = 25
    Caption = #1578#1575#1610#1610#1583
    TabOrder = 3
    OnClick = SabtBtnClick
    Kind = bkOK
  end
  object CancelBtn: TBitBtn
    Left = 78
    Top = 168
    Width = 120
    Height = 25
    Caption = #1604#1594#1608
    TabOrder = 5
    OnClick = CancelBtnClick
    Kind = bkCancel
  end
  object CopyVarTeachersQuery: TQuery
    DatabaseName = 'atNezarat'
    SQL.Strings = (
      'select TeacherID,TermID+1,HamkariId,DegreeId,MadrakID,GroupID'
      'from varTeachers'
      'where TermID=:termID')
    Left = 16
    Top = 120
    ParamData = <
      item
        DataType = ftInteger
        Name = 'termID'
        ParamType = ptUnknown
        Value = 0
      end>
  end
  object CopyVarQuestionsQuery: TQuery
    DatabaseName = 'atNezarat'
    SQL.Strings = (
      'select TermID+1,LessonTypeID,RowNo,Coef,Title,QGroupNo'
      'from varQuestions'
      'where TermID=:termID')
    Left = 16
    Top = 152
    ParamData = <
      item
        DataType = ftInteger
        Name = 'termID'
        ParamType = ptUnknown
        Value = 0
      end>
  end
  object NullReportStatusQuery: TQuery
    DatabaseName = 'atNezarat'
    SQL.Strings = (
      'update Teachers'
      'set ReportStatus=""')
    Left = 16
    Top = 184
  end
  object DeleteFromOMRQuery: TQuery
    DatabaseName = 'OMRData'
    SQL.Strings = (
      'DELETE FROM OMRData')
    Left = 16
    Top = 88
  end
end
