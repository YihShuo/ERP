object MaterialNew_LB: TMaterialNew_LB
  Left = 427
  Top = 227
  Width = 476
  Height = 383
  BorderIcons = [biSystemMenu]
  Caption = 'MaterialNew_LB'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 468
    Height = 48
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 16
      Width = 61
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'LBBH:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 152
      Top = 16
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MEMO:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 64
      Top = 11
      Width = 89
      Height = 26
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 224
      Top = 11
      Width = 145
      Height = 26
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Button1: TButton
      Left = 377
      Top = 8
      Width = 75
      Height = 33
      Caption = 'Query'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 48
    Width = 468
    Height = 304
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'LBBH'
        Footers = <>
        Width = 127
      end
      item
        EditButtons = <>
        FieldName = 'MEMO'
        Footers = <>
        Width = 153
      end
      item
        EditButtons = <>
        FieldName = 'CMEMO'
        Footers = <>
        Width = 138
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select  *'
      'from CLLBVN'
      'order by LBBH')
    Left = 432
    Top = 280
    object Query1LBBH: TStringField
      FieldName = 'LBBH'
      Origin = 'DB.CLLBVN.LBBH'
      FixedChar = True
      Size = 4
    end
    object Query1MEMO: TStringField
      FieldName = 'MEMO'
      Origin = 'DB.CLLBVN.MEMO'
      FixedChar = True
      Size = 50
    end
    object Query1CMEMO: TStringField
      FieldName = 'CMEMO'
      Origin = 'DB.CLLBVN.CMEMO'
      FixedChar = True
      Size = 50
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.CLLBVN.USERID'
      FixedChar = True
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.CLLBVN.USERDATE'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.CLLBVN.YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 392
    Top = 280
  end
end
