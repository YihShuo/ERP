object OrderPO: TOrderPO
  Left = 292
  Top = 208
  Width = 867
  Height = 473
  Caption = 'OrderPO'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 859
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 11
      Width = 61
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DDBH:'
    end
    object Label2: TLabel
      Left = 192
      Top = 11
      Width = 69
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'XieMing:'
    end
    object Label3: TLabel
      Left = 0
      Top = 43
      Width = 61
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Article::'
    end
    object Label4: TLabel
      Left = 192
      Top = 42
      Width = 68
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Qty:'
    end
    object SPB1: TSpeedButton
      Left = 672
      Top = 16
      Width = 23
      Height = 22
      Visible = False
      OnClick = SPB1Click
    end
    object Button1: TButton
      Left = 424
      Top = 8
      Width = 169
      Height = 25
      Caption = 'One Size Calculate'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 424
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Save'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 520
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 2
      OnClick = Button3Click
    end
    object Edit1: TEdit
      Left = 64
      Top = 8
      Width = 121
      Height = 24
      Color = 15000804
      ReadOnly = True
      TabOrder = 3
    end
    object Edit2: TEdit
      Left = 264
      Top = 8
      Width = 121
      Height = 24
      Color = 15000804
      ReadOnly = True
      TabOrder = 4
    end
    object Edit3: TEdit
      Left = 64
      Top = 40
      Width = 121
      Height = 24
      Color = 15000804
      ReadOnly = True
      TabOrder = 5
    end
    object Edit4: TEdit
      Left = 264
      Top = 40
      Width = 121
      Height = 24
      Color = 15000804
      ReadOnly = True
      TabOrder = 6
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 624
    Height = 369
    Align = alClient
    DataSource = DS1
    EvenRowColor = clWindow
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 3
    PopupMenu = Pop1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyPress = DBGridEh1KeyPress
  end
  object DBGridEh2: TDBGridEh
    Left = 624
    Top = 73
    Width = 235
    Height = 369
    Align = alRight
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
  end
  object YWBZPOS: TQuery
    CachedUpdates = True
    AfterOpen = YWBZPOSAfterOpen
    AfterInsert = YWBZPOSAfterInsert
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select *'
      'from YWBZPOS')
    UpdateObject = UpSQL1
    Left = 176
    Top = 136
  end
  object DS1: TDataSource
    DataSet = YWBZPOS
    Left = 208
    Top = 136
  end
  object CC: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select CC'
      'from DDZLS'
      'where DDBH=:DDBH'
      'and quantity<>0'
      'order by CC')
    Left = 304
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DDBH'
        ParamType = ptUnknown
      end>
  end
  object UpSQL1: TUpdateSQL
    Left = 240
    Top = 136
  end
  object Pop1: TPopupMenu
    AutoHotkeys = maManual
    Left = 216
    Top = 248
    object N1: TMenuItem
      Caption = 'Append'
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = 'Calculate'
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = 'Delete'
      OnClick = N3Click
    end
    object N4: TMenuItem
      Caption = 'Save'
      OnClick = N4Click
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 536
    Top = 152
  end
  object YWPOZL: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select *'
      'from YWBZPOS'
      '')
    UpdateObject = UpdateSQL1
    Left = 448
    Top = 224
    object YWPOZLDDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.YWBZPOS.DDBH'
      FixedChar = True
      Size = 15
    end
    object YWPOZLXH: TStringField
      FieldName = 'XH'
      Origin = 'DB.YWBZPOS.XH'
      FixedChar = True
      Size = 3
    end
    object YWPOZLDDCC: TStringField
      FieldName = 'DDCC'
      Origin = 'DB.YWBZPOS.DDCC'
      FixedChar = True
      Size = 6
    end
    object YWPOZLQty: TIntegerField
      FieldName = 'Qty'
      Origin = 'DB.YWBZPOS.Qty'
    end
    object YWPOZLCTS: TIntegerField
      FieldName = 'CTS'
      Origin = 'DB.YWBZPOS.CTS'
    end
    object YWPOZLMEMO: TStringField
      FieldName = 'MEMO'
      Origin = 'DB.YWBZPOS.MEMO'
      FixedChar = True
    end
    object YWPOZLUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.YWBZPOS.USERDATE'
    end
    object YWPOZLUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.YWBZPOS.USERID'
      FixedChar = True
    end
    object YWPOZLYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.YWBZPOS.YN'
      FixedChar = True
      Size = 1
    end
  end
  object UpdateSQL1: TUpdateSQL
    Left = 488
    Top = 224
  end
  object DataSource1: TDataSource
    DataSet = YWPOZL
    Left = 528
    Top = 224
  end
  object YWBZPO: TQuery
    DatabaseName = 'DB'
    Left = 312
    Top = 272
  end
  object Qtemp2: TQuery
    DatabaseName = 'DB'
    Left = 408
    Top = 296
  end
end
