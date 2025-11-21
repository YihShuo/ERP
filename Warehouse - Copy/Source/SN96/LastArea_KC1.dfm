object LastArea_KC: TLastArea_KC
  Left = 383
  Top = 321
  Width = 509
  Height = 381
  Caption = 'LastArea_KC'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 501
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 18
      Width = 94
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'AreaNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 200
      Top = 18
      Width = 86
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'AreaName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 424
      Top = 10
      Width = 73
      Height = 33
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 288
      Top = 16
      Width = 129
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object EDIT1: TEdit
      Left = 96
      Top = 16
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 501
    Height = 301
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
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
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
        Width = 114
      end
      item
        EditButtons = <>
        FieldName = 'KCBH'
        Footers = <>
        Width = 160
      end
      item
        EditButtons = <>
        FieldName = 'KCMC'
        Footers = <>
        Width = 179
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 128
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select KCZL.* from KCZL '
      'left join KCCK on KCCK.CKBH=KCZL.CKBH ')
    Left = 424
    Top = 160
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
      Origin = 'DB.KCZL.CKBH'
      FixedChar = True
      Size = 4
    end
    object Query1KCBH: TStringField
      FieldName = 'KCBH'
      Origin = 'DB.KCZL.KCBH'
      FixedChar = True
      Size = 6
    end
    object Query1KCMC: TStringField
      FieldName = 'KCMC'
      Origin = 'DB.KCZL.KCMC'
      FixedChar = True
      Size = 50
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.KCZL.USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.KCZL.USERID'
      FixedChar = True
      Size = 15
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.KCZL.YN'
      FixedChar = True
      Size = 1
    end
  end
end
