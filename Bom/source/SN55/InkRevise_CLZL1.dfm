object InkRevise_CLZL: TInkRevise_CLZL
  Left = 393
  Top = 248
  Width = 710
  Height = 407
  Caption = 'InkRevise_CLZL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 106
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 694
    Height = 57
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 9
      Top = 18
      Width = 43
      Height = 16
      Caption = 'MatNo:'
    end
    object Label2: TLabel
      Left = 184
      Top = 19
      Width = 62
      Height = 16
      Caption = 'VN Name:'
    end
    object Label3: TLabel
      Left = 384
      Top = 19
      Width = 65
      Height = 16
      Caption = 'TW Name:'
    end
    object Button1: TButton
      Left = 594
      Top = 9
      Width = 81
      Height = 33
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 248
      Top = 16
      Width = 129
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object EDIT1: TEdit
      Left = 56
      Top = 16
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit3: TEdit
      Left = 456
      Top = 16
      Width = 129
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 3
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 694
    Height = 310
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
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
        FieldName = 'cldh'
        Footers = <>
        Title.Caption = 'MatNo'
      end
      item
        EditButtons = <>
        FieldName = 'cllb'
        Footers = <>
        Title.Caption = 'Class'
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'dwbh'
        Footers = <>
        Title.Caption = 'Unit'
        Width = 57
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Title.Caption = 'MatEN'
        Width = 110
      end
      item
        EditButtons = <>
        FieldName = 'zwpm'
        Footers = <>
        Title.Caption = 'MatCN'
        Width = 111
      end
      item
        EditButtons = <>
        FieldName = 'tyjh'
        Footers = <>
        Title.Caption = 'Stop'
        Width = 67
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 384
    Top = 120
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select CLZL.CLDH,CLZL.CLLB,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,CLZL.TY' +
        'JH,KCZLS.KCQty,UnKCLL.UnLLQty,(KCZLS.KCQty-IsNull(UnKCLL.UnLLQty' +
        ',0) )as AvailQty from CLZL '
      'left join  KCZLS on KCZLS.CLBH=CLZL.CLDh and KCZLS.CKBH='#39'VTXX'#39
      'left join ('
      
        '   select KCLLS.CLBH,Sum(KCLLS.TempQty) as UnLLQty from KCLLS,KC' +
        'LL where  KCLLS.LLNO=KCLL.LLNO and KCLL.CFMID='#39'NO'#39' and KCLL.CKBH' +
        ' in ('#39'VTXW'#39','#39'VTXX'#39','#39'VTXY'#39','#39'VTXZ'#39') Group by KCLLS.CLBH ) UnKCLL o' +
        'n UnKCLL.CLBH=CLZL.CLDH'
      'where CLZL.CLDH like'#39'%'#39
      '      and CLZL.YWPM like '#39'%%'#39
      '      and CLZL.ZWPM like '#39'%%'#39
      '      and ((CLZL.TYJH<>'#39'Y'#39')or (TYJH is null))'
      '      and IsNull(KCQty,0)>0'
      'order by CLZL.CLDH desc')
    Left = 384
    Top = 152
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
    object Query1zwpm: TStringField
      FieldName = 'zwpm'
      Origin = 'DB.clzl.zwpm'
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
    object Query1tyjh: TStringField
      FieldName = 'tyjh'
      Origin = 'DB.clzl.tyjh'
      FixedChar = True
      Size = 1
    end
  end
end
