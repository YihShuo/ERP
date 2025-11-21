object DelOther_Mat: TDelOther_Mat
  Left = 278
  Top = 305
  Width = 956
  Height = 500
  BorderIcons = [biSystemMenu]
  Caption = 'DelOther_Mat'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 940
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
      Top = 10
      Width = 78
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 208
      Top = 11
      Width = 98
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 584
      Top = 5
      Width = 89
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
      Left = 304
      Top = 8
      Width = 129
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyPress = Edit2KeyPress
    end
    object EDIT1: TEdit
      Left = 80
      Top = 8
      Width = 121
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = EDIT1KeyPress
    end
    object Edit3: TEdit
      Left = 448
      Top = 8
      Width = 129
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 3
      OnKeyPress = Edit3KeyPress
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 940
    Height = 412
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
        FieldName = 'cldh'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'cllb'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 264
      end
      item
        EditButtons = <>
        FieldName = 'dwbh'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 58
      end
      item
        Color = 10921727
        EditButtons = <>
        FieldName = 'KCQty'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'NK'
        Footers = <>
        Width = 57
      end
      item
        EditButtons = <>
        FieldName = 'TC'
        Footers = <>
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'HD'
        Footers = <>
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'KD'
        Footers = <>
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'XT'
        Footers = <>
        Width = 51
      end
      item
        EditButtons = <>
        FieldName = 'GC'
        Footers = <>
        Width = 54
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
      
        'select CLZL.CLDH,CLZL.CLLB,CLZL.YWPM,CLZL.DWBH,KCZLS.KCQty,KCZLS' +
        '.NK,KCZLS.TC,KCZLS.HD,KCZLS.KD,KCZLS.XT,KCZLS.GC,KCZLS.ZZZZ'
      'from CLZL '
      'left join KCZLS on KCZLS.CLBH=CLZL.CLDh and KCZLS.CKBH='#39'VA12'#39
      'where CLZL.CLDH like'#39'D010003733%'#39
      '      and CLZL.YWPM like '#39'%%'#39
      '      and CLZL.YWPM like '#39'%%'#39
      '      and CLZL.YN<>'#39'2'#39
      'order by CLZL.CLDH')
    Left = 424
    Top = 160
    object Query1cldh: TStringField
      DisplayWidth = 12
      FieldName = 'cldh'
      Origin = 'DB.clzl.cldh'
      FixedChar = True
      Size = 10
    end
    object Query1cllb: TStringField
      DisplayWidth = 6
      FieldName = 'cllb'
      Origin = 'DB.clzl.cllb'
      FixedChar = True
      Size = 3
    end
    object Query1ywpm: TStringField
      DisplayWidth = 229
      FieldName = 'ywpm'
      Origin = 'DB.clzl.ywpm'
      FixedChar = True
      Size = 200
    end
    object Query1dwbh: TStringField
      DisplayWidth = 6
      FieldName = 'dwbh'
      Origin = 'DB.clzl.dwbh'
      FixedChar = True
      Size = 4
    end
    object Query1KCQty: TFloatField
      FieldName = 'KCQty'
      DisplayFormat = '##,#0.0'
    end
    object Query1NK: TCurrencyField
      FieldName = 'NK'
      DisplayFormat = '#0.00'
    end
    object Query1TC: TCurrencyField
      FieldName = 'TC'
      DisplayFormat = '#0.00'
    end
    object Query1HD: TCurrencyField
      FieldName = 'HD'
      DisplayFormat = '#0.00'
    end
    object Query1KD: TCurrencyField
      FieldName = 'KD'
      DisplayFormat = '#0.00'
    end
    object Query1XT: TCurrencyField
      FieldName = 'XT'
      DisplayFormat = '#0.00'
    end
    object Query1GC: TCurrencyField
      FieldName = 'GC'
      DisplayFormat = '#0.00'
    end
    object Query1ZZZZ: TCurrencyField
      FieldName = 'ZZZZ'
      DisplayFormat = '#0.00'
    end
  end
end
