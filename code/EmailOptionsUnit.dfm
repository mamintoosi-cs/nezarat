inherited EmailOptionsForm: TEmailOptionsForm
  Left = 192
  Top = 206
  Width = 760
  Height = 387
  BiDiMode = bdLeftToRight
  Caption = 'EmailOptionsForm'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel [0]
    Left = 595
    Top = 304
    Width = 320
    Height = 16
    Caption = 
      #1605#1578#1606' '#1575#1585#1587#1575#1604#1610' '#1576#1607'  '#1605#1583#1610#1585#1575#1606' '#1711#1585#1608#1607' '#1607#1575' - '#1585#1572#1587#1575#1610' '#1583#1575#1606#1588#1603#1583#1607' '#1607#1575' - '#1608' '#1585#1610#1575#1587#1578' '#1583#1575#1606#1588#1711 +
      #1575#1607
    Visible = False
  end
  object Label6: TLabel [1]
    Left = 606
    Top = 149
    Width = 92
    Height = 16
    Caption = #1605#1578#1606' '#1576#1583#1606#1607' '#1606#1575#1605#1607' '#1575#1585#1587#1575#1604#1610
  end
  inherited StatusPanel: TPanel [2]
    Top = 342
    Width = 752
    TabOrder = 4
    inherited UnitNameDBText: TDBText
      Left = 643
    end
    inherited MsgLabel: TLabel
      Width = 489
    end
  end
  object Panel1: TPanel [3]
    Left = 0
    Top = 0
    Width = 752
    Height = 129
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 34
      Top = 64
      Width = 37
      Height = 16
      Caption = 'From:'
    end
    object Label3: TLabel
      Left = 19
      Top = 104
      Width = 52
      Height = 16
      Caption = 'Subject:'
    end
    object Label4: TLabel
      Left = 287
      Top = 64
      Width = 22
      Height = 16
      BiDiMode = bdLeftToRight
      Caption = 'CC:'
      ParentBiDiMode = False
    end
    object Label5: TLabel
      Left = 508
      Top = 64
      Width = 35
      Height = 16
      BiDiMode = bdLeftToRight
      Caption = 'BCC :'
      ParentBiDiMode = False
    end
    object Label7: TLabel
      Left = 34
      Top = 24
      Width = 77
      Height = 16
      Caption = 'Mail Server:'
    end
    object Label8: TLabel
      Left = 330
      Top = 24
      Width = 49
      Height = 16
      Caption = 'User ID:'
    end
    object DBNavigator1: TDBNavigator
      Left = 504
      Top = 96
      Width = 224
      Height = 25
      DataSource = DM.EmailOptionsDS
      VisibleButtons = [nbEdit, nbPost, nbCancel, nbRefresh]
      TabOrder = 6
    end
    object SubjectDBEdit: TDBEdit
      Left = 72
      Top = 96
      Width = 393
      Height = 24
      DataField = 'Subject'
      DataSource = DM.EmailOptionsDS
      TabOrder = 5
    end
    object CCDBEdit: TDBEdit
      Left = 312
      Top = 56
      Width = 170
      Height = 24
      DataField = 'CC'
      DataSource = DM.EmailOptionsDS
      TabOrder = 3
    end
    object BCCDBEdit: TDBEdit
      Left = 544
      Top = 56
      Width = 170
      Height = 24
      DataField = 'BCC'
      DataSource = DM.EmailOptionsDS
      TabOrder = 4
    end
    object UserIDDBEdit: TDBEdit
      Left = 384
      Top = 16
      Width = 170
      Height = 24
      DataField = 'UserID'
      DataSource = DM.EmailOptionsDS
      TabOrder = 1
    end
    object HostDBEdit: TDBEdit
      Left = 112
      Top = 16
      Width = 170
      Height = 24
      DataField = 'MailServerAddress'
      DataSource = DM.EmailOptionsDS
      TabOrder = 0
    end
    object FromDBEdit: TDBEdit
      Left = 72
      Top = 56
      Width = 170
      Height = 24
      DataField = 'From'
      DataSource = DM.EmailOptionsDS
      TabOrder = 2
    end
  end
  inherited ReturnToMainBitBtn: TBitBtn [4]
    Left = 275
    Top = 297
    Caption = #1578#1575#1610#1610#1583
    TabOrder = 3
    OnClick = ReturnToMainBitBtnClick
    Kind = bkCustom
  end
  object TDBMemo
    Left = 728
    Top = 216
    Width = 665
    Height = 105
    BiDiMode = bdLeftToRight
    DataSource = DM.EmailOptionsDS
    ParentBiDiMode = False
    ScrollBars = ssVertical
    TabOrder = 2
    Visible = False
  end
  object BodyDBMemo: TDBMemo
    Left = 40
    Top = 168
    Width = 665
    Height = 121
    BiDiMode = bdLeftToRight
    DataField = 'Body'
    DataSource = DM.EmailOptionsDS
    ParentBiDiMode = False
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object NMSMTP1: TNMSMTP
    Port = 25
    ReportLevel = 0
    OnInvalidHost = NMSMTP1InvalidHost
    OnConnectionFailed = NMSMTP1ConnectionFailed
    EncodeType = uuMime
    ClearParams = True
    SubType = mtPlain
    Charset = 'us-ascii'
    OnSuccess = NMSMTP1Success
    OnFailure = NMSMTP1Failure
    OnAuthenticationFailed = NMSMTP1AuthenticationFailed
    Left = 8
    Top = 8
  end
end
