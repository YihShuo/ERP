object AD_Article: TAD_Article
  Left = 230
  Top = 214
  Width = 1052
  Height = 459
  Caption = 'AD_Article'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid2: TDBGridEh
    Left = 0
    Top = 49
    Width = 1036
    Height = 372
    Align = alClient
    DataSource = DS2
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -16
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid2DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Width = 116
      end
      item
        EditButtons = <>
        FieldName = 'BWBH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'Part ID'
        Width = 51
      end
      item
        EditButtons = <>
        FieldName = 'BWMC'
        Footers = <>
        Title.Caption = 'Part Name'
        Width = 140
      end
      item
        EditButtons = <>
        FieldName = 'DType'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'Mat No'
        Width = 105
      end
      item
        EditButtons = <>
        FieldName = 'CLMC'
        Footers = <>
        Title.Caption = 'Mat Name'
        Width = 376
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'Unit'
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'CCQQ'
        Footers = <>
        Title.Caption = 'Size Fro'
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'CCQZ'
        Footers = <>
        Title.Caption = 'Size To'
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'Supplier'
        Width = 103
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1036
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label5: TLabel
      Left = 11
      Top = 16
      Width = 48
      Height = 20
      Caption = 'Article:'
    end
    object Button1: TButton
      Left = 249
      Top = 12
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object CheckBox1: TCheckBox
      Left = 328
      Top = 16
      Width = 185
      Height = 17
      Caption = 'Not yet exists at AD '
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object CheckFilterAD: TCheckBox
      Left = 536
      Top = 16
      Width = 209
      Height = 17
      Caption = 'Filter Avery and "LOGO"'
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object ArticleEdit: TEdit
      Left = 67
      Top = 12
      Width = 174
      Height = 28
      TabOrder = 3
    end
  end
  object XXZLS: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select XXZL.Article,XXZLS.XieXing,XXZLS.SheHao,XXZLS.XH, XXZLS.B' +
        'WBH,BWZL.ywsm BWMC,XXZLS.CLBH,'#39'Assembly'#39' as DType,'
      
        '         CLZL.YWPM as CLMC, CLZL.ZWPM as CLZW,BWZL.zwsm  as BWZW' +
        ','
      
        '         CLZL.DWBH,CLZL.LYCC,LBZLS.BZ,XXZLS.BWLB,ZSZL.ZSYWJC,XXZ' +
        'LS.LOSS,XXZLS.CLSL,'
      '        XXZLS.CCQQ,XXZLS.CCQZ,CLZL.CLZMLB'
      ' FROM XXZLS'
      
        'LEFT JOIN XXZL on XXZL.XieXing=XXZLS.XieXing and XXZLS.SheHao=XX' +
        'ZL.SheHao'
      
        'LEFT JOIN BWZL  ON XXZLS.BWBH = BWZL.bwdh                       ' +
        '        '
      
        'LEFT JOIN CLZL   ON XXZLS.CLBH = CLZL.cldh                      ' +
        '        '
      
        'LEFT JOIN LBZLS ON SUBSTRING(XXZLS.CLBH,1,1) = LBZLS.lbdh AND LB' +
        'ZLS.LB='#39'05'#39'                             '
      'LEFT JOIN ZSZL on ZSZL.ZSDH=XXZLS.CSBH'
      
        'where XXZL.Article like '#39'%1398%'#39' and XXZLS.CSBH='#39'P024'#39' and CLZL.' +
        'YWPM like '#39'%NO:BA%'#39' '
      ' ORDER BY XXZLS.XH')
    Left = 76
    Top = 200
    object XXZLSXieXing: TStringField
      FieldKind = fkCalculated
      FieldName = 'XieXing'
      Calculated = True
    end
    object XXZLSSheHao: TStringField
      FieldKind = fkCalculated
      FieldName = 'SheHao'
      Calculated = True
    end
    object XXZLSXH: TStringField
      FieldName = 'XH'
      FixedChar = True
      Size = 3
    end
    object XXZLSBWBH: TStringField
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object XXZLSBWMC: TStringField
      FieldName = 'BWMC'
      FixedChar = True
      Size = 40
    end
    object XXZLSCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object XXZLSCLMC: TStringField
      FieldName = 'CLMC'
      FixedChar = True
      Size = 200
    end
    object XXZLSCLZW: TStringField
      FieldName = 'CLZW'
      FixedChar = True
      Size = 200
    end
    object XXZLSBWZW: TStringField
      FieldName = 'BWZW'
      FixedChar = True
      Size = 40
    end
    object XXZLSDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object XXZLSLYCC: TStringField
      FieldName = 'LYCC'
      FixedChar = True
      Size = 1
    end
    object XXZLSBZ: TStringField
      FieldName = 'BZ'
      FixedChar = True
    end
    object XXZLSBWLB: TStringField
      FieldName = 'BWLB'
      FixedChar = True
      Size = 1
    end
    object XXZLSZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object XXZLSLOSS: TFloatField
      FieldName = 'LOSS'
      DisplayFormat = '##,#0'
    end
    object XXZLSCLSL: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0000'
    end
    object XXZLSCCQQ: TStringField
      FieldName = 'CCQQ'
      FixedChar = True
      Size = 6
    end
    object XXZLSCCQZ: TStringField
      FieldName = 'CCQZ'
      FixedChar = True
      Size = 6
    end
    object XXZLSCLZMLB: TStringField
      FieldName = 'CLZMLB'
      FixedChar = True
      Size = 1
    end
    object XXZLSArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
  end
  object DS2: TDataSource
    DataSet = XXZLS
    Left = 76
    Top = 232
  end
end
