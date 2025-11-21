object DelFOC_CL: TDelFOC_CL
  Left = 477
  Top = 269
  Width = 915
  Height = 470
  BorderIcons = [biSystemMenu]
  Caption = 'DelFOC_CL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 899
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
      Top = 19
      Width = 76
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CLBH:'
    end
    object Label2: TLabel
      Left = 208
      Top = 19
      Width = 86
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'ZWPM:'
    end
    object Label3: TLabel
      Left = 429
      Top = 19
      Width = 81
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'YWPM:'
    end
    object Button1: TButton
      Left = 650
      Top = 9
      Width = 81
      Height = 33
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 296
      Top = 16
      Width = 129
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object EDIT1: TEdit
      Left = 88
      Top = 16
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit3: TEdit
      Left = 512
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
    Width = 899
    Height = 374
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
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLDH'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 162
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 94
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 80
      end
      item
        Color = clMoneyGreen
        EditButtons = <>
        FieldName = 'KCQty'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 392
    Top = 144
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT '#10
      '  CLZL.CLDH, '#10
      '  CLZL.ZWPM, '#10
      '  CLZL.YWPM, '#10
      '  CLZL.DWBH, '#10
      '  ('#10
      '    KCRKS_TPM.Qty - ISNULL(YnKCLL.YnLLQty, 0)'#10
      '  ) AS KCQty, '#10
      '  UnKCLL.UnLLQty, '#10
      '  ('#10
      '    ISNULL(KCRKS_TPM.Qty, 0) - ('#10
      '      ISNULL(UnKCLL.UnLLQty, 0) + ISNULL(YnKCLL.YnLLQty, 0)'#10
      '    )'#10
      '  ) as AvailQty '#10
      'FROM '#10
      '  CLZL '#10
      '  LEFT JOIN ('#10
      '    SELECT '#10
      '      KCRKS_TPM.CLBH, '#10
      '      SUM(KCRKS_TPM.Qty) AS Qty '#10
      '    FROM '#10
      '      KCRKS_TPM '#10
      '    GROUP BY '#10
      '      KCRKS_TPM.CLBH'#10
      '  ) KCRKS_TPM ON KCRKS_TPM.CLBH = CLZL.CLDH '#10
      '  LEFT JOIN ('#10
      '    SELECT '#10
      '      KCLLS_TPM.CLBH, '#10
      '      Sum(KCLLS_TPM.Qty) AS YnLLQty '#10
      '    FROM '#10
      '      KCLLS_TPM, '#10
      '      KCLL_TPM '#10
      '    WHERE '#10
      '      KCLLS_TPM.LLNO = KCLL_TPM.LLNO '#10
      '      and KCLL_TPM.CFMID <> '#39'NO'#39' '#10
      '    GROUP BY '#10
      '      KCLLS_TPM.CLBH'#10
      '  ) YnKCLL ON YnKCLL.CLBH = CLZL.CLDH '#10
      '  LEFT JOIN ('#10
      '    SELECT '#10
      '      KCLLS_TPM.CLBH, '#10
      '      Sum(KCLLS_TPM.Qty) AS UnLLQty '#10
      '    FROM '#10
      '      KCLLS_TPM, '#10
      '      KCLL_TPM '#10
      '    WHERE '#10
      '      KCLLS_TPM.LLNO = KCLL_TPM.LLNO '#10
      '      and KCLL_TPM.CFMID = '#39'NO'#39' '#10
      '    GROUP BY '#10
      '      KCLLS_TPM.CLBH'#10
      '  ) UnKCLL ON UnKCLL.CLBH = CLZL.CLDH '#10
      'WHERE '#10
      '  CLZL.CLDH like '#39'%'#39' '#10
      '  and CLZL.YWPM like '#39'%'#39' '#10
      '  and CLZL.ZWPM like '#39'%'#39' --and ISNULL(KCRKS_TPM.Qty, 0)> 0'#10
      '  and ISNULL(KCRKS_TPM.Qty, 0) - ISNULL(YnKCLL.YnLLQty, 0) > 0 '#10
      'ORDER BY '#10
      '  CLZL.CLDH DESC'#10)
    Left = 360
    Top = 144
    object Query1CLBH: TStringField
      FieldName = 'CLDH'
    end
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
    end
    object Query1KCQty: TFloatField
      FieldName = 'KCQty'
      DisplayFormat = '##,#0.0'
    end
  end
end
