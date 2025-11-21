object CartonOrder_Me: TCartonOrder_Me
  Left = 319
  Top = 255
  Width = 738
  Height = 378
  BorderIcons = [biSystemMenu]
  Caption = 'CartonOrder_Me'
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 730
    Height = 49
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 19
      Width = 62
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'XieXing'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 160
      Top = 19
      Width = 62
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'XieMing:'
    end
    object lbCapacity: TLabel
      Left = 368
      Top = 18
      Width = 63
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Capacity:'
    end
    object Edit1: TEdit
      Left = 64
      Top = 16
      Width = 97
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 224
      Top = 16
      Width = 145
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
    object Button1: TButton
      Left = 507
      Top = 8
      Width = 78
      Height = 33
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
    object cbCapacity: TComboBox
      Left = 432
      Top = 16
      Width = 65
      Height = 24
      ItemHeight = 16
      TabOrder = 3
      Items.Strings = (
        '18'
        '12'
        '10'
        '8'
        '6'
        '4'
        '2'
        '1')
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 49
    Width = 730
    Height = 298
    Align = alClient
    DataSource = DS2
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Width = 127
      end
      item
        EditButtons = <>
        FieldName = 'XXCC'
        Footers = <>
        Width = 37
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'L'
        Footers = <>
        Width = 43
      end
      item
        EditButtons = <>
        FieldName = 'W'
        Footers = <>
        Width = 39
      end
      item
        EditButtons = <>
        FieldName = 'H'
        Footers = <>
        Width = 38
      end
      item
        EditButtons = <>
        FieldName = 'NW'
        Footers = <>
        Width = 39
      end
      item
        EditButtons = <>
        FieldName = 'GW'
        Footers = <>
        Width = 37
      end
      item
        EditButtons = <>
        FieldName = 'CBM'
        Footers = <>
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'Capacity'
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 126
      end>
  end
  object YWBZPO: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select distinct DDZL.XieXing, YWBZPO.CLBH,YWBZPO.L,YWBZPO.W,YWBZ' +
        'PO.H,'
      
        '      YWBZPO.NW,YWBZPO.GW,YWBZPO.CBM,YWDDS.XXCC,XXZl.XieMing,YWW' +
        'X2.Capacity,CLZL.YWPM  '
      'from YWBZPO'
      
        'left join YWBZPOS on YWBZPOS.DDBH=YWBZPO.DDBH  and YWBZPOS.XH=YW' +
        'BZPO.XH'
      
        'left join YWDDS on YWDDS.DDBH=YWBZPOS.DDBH and YWBZPOS.DDCC=YWDD' +
        'S.DDCC'
      'left join YWDD on YWBZPO.DDBH=YWDD.DDBH'
      'left join DDZL on YWDD.YSBH=DDZL.DDBH'
      
        'left join XXZl on DDZL.XieXing=XXZl.XieXing and DDZL.SheHao=XXZL' +
        '.SheHao'
      'left join YWWX2 on YWBZPO.CLBH = YWWX2.CLBH'
      'left join CLZL on CLZL.CLDH=YWBZPO.CLBH'
      'where DDZL.XieXing='#39'T201I-A1'#39
      '      and YWDDS.XXCC='#39' 06'#39)
    Left = 12
    Top = 104
    object YWBZPOXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object YWBZPOXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object YWBZPOXXCC: TStringField
      FieldName = 'XXCC'
      FixedChar = True
      Size = 6
    end
    object YWBZPOCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object YWBZPOL: TIntegerField
      FieldName = 'L'
      DisplayFormat = '##,#0'
    end
    object YWBZPOW: TIntegerField
      FieldName = 'W'
      DisplayFormat = '##,#0'
    end
    object YWBZPOH: TIntegerField
      FieldName = 'H'
      DisplayFormat = '##,#0'
    end
    object YWBZPONW: TCurrencyField
      FieldName = 'NW'
      DisplayFormat = '##,#0.00'
    end
    object YWBZPOGW: TCurrencyField
      FieldName = 'GW'
      DisplayFormat = '##,#0.00'
    end
    object YWBZPOCBM: TCurrencyField
      FieldName = 'CBM'
      DisplayFormat = '##,#0.0000'
    end
    object YWBZPOCapacity: TSmallintField
      FieldName = 'Capacity'
    end
    object YWBZPOYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
  end
  object DS2: TDataSource
    DataSet = YWBZPO
    Left = 52
    Top = 104
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 16
    Top = 144
  end
end
