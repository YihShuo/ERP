object DetailB61: TDetailB61
  Left = 373
  Top = 150
  Width = 1305
  Height = 675
  Caption = 'DetailB6'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 97
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 32
      Width = 45
      Height = 16
      Caption = 'DDBH: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 240
      Top = 32
      Width = 51
      Height = 16
      Caption = 'XieMing:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 467
      Top = 34
      Width = 43
      Height = 16
      Caption = 'Article: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 697
      Top = 31
      Width = 26
      Height = 16
      Caption = 'Qty: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 72
      Top = 28
      Width = 129
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 921
      Top = 26
      Width = 80
      Height = 30
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 1016
      Top = 25
      Width = 80
      Height = 30
      Caption = 'EXCEL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button2Click
    end
    object Edit2: TEdit
      Left = 299
      Top = 28
      Width = 125
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Edit3: TEdit
      Left = 513
      Top = 28
      Width = 125
      Height = 21
      TabOrder = 4
    end
    object ComboBox1: TComboBox
      Left = 726
      Top = 28
      Width = 145
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 5
      Items.Strings = (
        ''
        'InQTy'
        'LastInQty'
        'OutQty'
        'LastOutQty'
        'TotalQty')
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 97
    Width = 1289
    Height = 539
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 1
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'BUYNO'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'YSBH'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Width = 113
      end
      item
        EditButtons = <>
        FieldName = 'YSSM'
        Footers = <>
        Width = 112
      end
      item
        EditButtons = <>
        FieldName = 'MDMH'
        Footers = <>
        Width = 99
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Width = 41
      end
      item
        EditButtons = <>
        FieldName = 'Win'
        Footers = <>
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'InQTy'
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'LastInQty'
        Footers = <>
        Width = 51
      end
      item
        EditButtons = <>
        FieldName = 'OutQty'
        Footers = <>
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'LastOutQty'
        Footers = <>
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = '02'
        Footers = <>
        Width = 31
      end
      item
        EditButtons = <>
        FieldName = '02.5'
        Footers = <>
        Width = 37
      end
      item
        EditButtons = <>
        FieldName = '03'
        Footers = <>
        Width = 34
      end
      item
        EditButtons = <>
        FieldName = '03.5'
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = '04'
        Footers = <>
        Width = 33
      end
      item
        EditButtons = <>
        FieldName = '04.5'
        Footers = <>
        Width = 37
      end
      item
        EditButtons = <>
        FieldName = '05'
        Footers = <>
        Width = 36
      end
      item
        EditButtons = <>
        FieldName = '05.5'
        Footers = <>
        Width = 36
      end
      item
        EditButtons = <>
        FieldName = '06'
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = '06.5'
        Footers = <>
        Width = 33
      end
      item
        EditButtons = <>
        FieldName = '07'
        Footers = <>
        Width = 31
      end
      item
        EditButtons = <>
        FieldName = '07.5'
        Footers = <>
        Width = 31
      end
      item
        EditButtons = <>
        FieldName = '08'
        Footers = <>
        Width = 33
      end
      item
        EditButtons = <>
        FieldName = '08.5'
        Footers = <>
        Width = 34
      end
      item
        EditButtons = <>
        FieldName = '09'
        Footers = <>
        Width = 34
      end
      item
        EditButtons = <>
        FieldName = '09.5'
        Footers = <>
        Width = 31
      end
      item
        EditButtons = <>
        FieldName = '10'
        Footers = <>
        Width = 34
      end
      item
        EditButtons = <>
        FieldName = '10.5'
        Footers = <>
        Width = 32
      end
      item
        EditButtons = <>
        FieldName = '11'
        Footers = <>
        Width = 29
      end
      item
        EditButtons = <>
        FieldName = '11.5'
        Footers = <>
        Width = 31
      end
      item
        EditButtons = <>
        FieldName = '12'
        Footers = <>
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = '12.5'
        Footers = <>
        Width = 32
      end
      item
        EditButtons = <>
        FieldName = '13'
        Footers = <>
        Width = 34
      end
      item
        EditButtons = <>
        FieldName = '13.5'
        Footers = <>
        Width = 38
      end
      item
        EditButtons = <>
        FieldName = '14'
        Footers = <>
        Width = 34
      end
      item
        EditButtons = <>
        FieldName = '14.5'
        Footers = <>
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = '15'
        Footers = <>
        Width = 36
      end
      item
        EditButtons = <>
        FieldName = '15.5'
        Footers = <>
        Width = 36
      end
      item
        EditButtons = <>
        FieldName = '16'
        Footers = <>
        Width = 37
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      'select BUYNO, YSBH, a.Article, XieMing, YSSM, MDMH,'
      '  sum(Qty) Qty,'
      ' sum(Win) Win,'
      '  (sum(WIn)-sum(ROut)) InQTy,'
      '    (sum(Qty)-(sum(WIn)-sum(ROut))-sum(ROut)) as LastInQty,'
      '  sum(ROut) OutQty,'
      ' (sum(Qty)-sum(ROut)) as LastOutQty,'
      '  SUM(CASE WHEN SCCX = '#39'02'#39' THEN WIn - ROut ELSE 0 END) AS '#39'02'#39','
      
        '  SUM(CASE WHEN SCCX = '#39'02.5'#39' THEN WIn - ROut ELSE 0 END) AS '#39'02' +
        '.5'#39','
      '  SUM(CASE WHEN SCCX = '#39'03'#39' THEN WIn - ROut ELSE 0 END) AS '#39'03'#39','
      
        '  SUM(CASE WHEN SCCX = '#39'03.5'#39' THEN WIn - ROut ELSE 0 END) AS '#39'03' +
        '.5'#39','
      '  SUM(CASE WHEN SCCX = '#39'04'#39' THEN WIn - ROut ELSE 0 END) AS '#39'04'#39','
      
        '  SUM(CASE WHEN SCCX = '#39'04.5'#39' THEN WIn - ROut ELSE 0 END) AS '#39'04' +
        '.5'#39','
      '  SUM(CASE WHEN SCCX = '#39'05'#39' THEN WIn - ROut ELSE 0 END) AS '#39'05'#39','
      
        '  SUM(CASE WHEN SCCX = '#39'05.5'#39' THEN WIn - ROut ELSE 0 END) AS '#39'05' +
        '.5'#39','
      '  SUM(CASE WHEN SCCX = '#39'06'#39' THEN WIn - ROut ELSE 0 END) AS '#39'06'#39','
      
        '  SUM(CASE WHEN SCCX = '#39'06.5'#39' THEN WIn - ROut ELSE 0 END) AS '#39'06' +
        '.5'#39','
      '  SUM(CASE WHEN SCCX = '#39'07'#39' THEN WIn - ROut ELSE 0 END) AS '#39'07'#39','
      
        '  SUM(CASE WHEN SCCX = '#39'07.5'#39' THEN WIn - ROut ELSE 0 END) AS '#39'07' +
        '.5'#39','
      '  SUM(CASE WHEN SCCX = '#39'08'#39' THEN WIn - ROut ELSE 0 END) AS '#39'08'#39','
      
        '  SUM(CASE WHEN SCCX = '#39'08.5'#39' THEN WIn - ROut ELSE 0 END) AS '#39'08' +
        '.5'#39','
      '  SUM(CASE WHEN SCCX = '#39'09'#39' THEN WIn - ROut ELSE 0 END) AS '#39'09'#39','
      
        '  SUM(CASE WHEN SCCX = '#39'09.5'#39' THEN WIn - ROut ELSE 0 END) AS '#39'09' +
        '.5'#39','
      '  SUM(CASE WHEN SCCX = '#39'10'#39' THEN WIn - ROut ELSE 0 END) AS '#39'10'#39','
      
        '  SUM(CASE WHEN SCCX = '#39'10.5'#39' THEN WIn - ROut ELSE 0 END) AS '#39'10' +
        '.5'#39','
      '  SUM(CASE WHEN SCCX = '#39'11'#39' THEN WIn - ROut ELSE 0 END) AS '#39'11'#39','
      
        '  SUM(CASE WHEN SCCX = '#39'11.5'#39' THEN WIn - ROut ELSE 0 END) AS '#39'11' +
        '.5'#39','
      '  SUM(CASE WHEN SCCX = '#39'12'#39' THEN WIn - ROut ELSE 0 END) AS '#39'12'#39','
      
        '  SUM(CASE WHEN SCCX = '#39'12.5'#39' THEN WIn - ROut ELSE 0 END) AS '#39'12' +
        '.5'#39','
      '  SUM(CASE WHEN SCCX = '#39'13'#39' THEN WIn - ROut ELSE 0 END) AS '#39'13'#39','
      
        '  SUM(CASE WHEN SCCX = '#39'13.5'#39' THEN WIn - ROut ELSE 0 END) AS '#39'13' +
        '.5'#39','
      '  SUM(CASE WHEN SCCX = '#39'14'#39' THEN WIn - ROut ELSE 0 END) AS '#39'14'#39','
      
        '  SUM(CASE WHEN SCCX = '#39'14.5'#39' THEN WIn - ROut ELSE 0 END) AS '#39'14' +
        '.5'#39','
      '  SUM(CASE WHEN SCCX = '#39'15'#39' THEN WIn - ROut ELSE 0 END) AS '#39'15'#39','
      
        '  SUM(CASE WHEN SCCX = '#39'15.5'#39' THEN WIn - ROut ELSE 0 END) AS '#39'15' +
        '.5'#39','
      '  SUM(CASE WHEN SCCX = '#39'16'#39' THEN WIn - ROut ELSE 0 END) AS '#39'16'#39
      'FROM '
      'TB_DD.dbo.SMDDScanOut a'
      'left join TB_ERP.dbo.DDZL b on b.ZLBH=a.YSBH'
      
        'group by BUYNO, YSBH, a.Article, XieMing, YSSM, MDMH HAVING SUM(' +
        'WIn - ROut) > 0'
      ''
      '')
    Left = 248
    Top = 192
    object Query1BUYNO: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
    object Query1YSBH: TStringField
      FieldName = 'YSBH'
      FixedChar = True
      Size = 15
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1YSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 50
    end
    object Query1MDMH: TStringField
      FieldName = 'MDMH'
      FixedChar = True
      Size = 50
    end
    object Query1Qty: TIntegerField
      FieldName = 'Qty'
    end
    object Query1Win: TIntegerField
      FieldName = 'Win'
    end
    object Query1InQTy: TIntegerField
      FieldName = 'InQTy'
    end
    object Query1LastInQty: TIntegerField
      FieldName = 'LastInQty'
    end
    object Query1OutQty: TIntegerField
      FieldName = 'OutQty'
    end
    object Query1LastOutQty: TIntegerField
      FieldName = 'LastOutQty'
    end
    object Query1BDEDesigner02: TIntegerField
      FieldName = '02'
    end
    object Query1BDEDesigner025: TIntegerField
      FieldName = '02.5'
    end
    object Query1BDEDesigner03: TIntegerField
      FieldName = '03'
    end
    object Query1BDEDesigner035: TIntegerField
      FieldName = '03.5'
    end
    object Query1BDEDesigner04: TIntegerField
      FieldName = '04'
    end
    object Query1BDEDesigner045: TIntegerField
      FieldName = '04.5'
    end
    object Query1BDEDesigner05: TIntegerField
      FieldName = '05'
    end
    object Query1BDEDesigner055: TIntegerField
      FieldName = '05.5'
    end
    object Query1BDEDesigner06: TIntegerField
      FieldName = '06'
    end
    object Query1BDEDesigner065: TIntegerField
      FieldName = '06.5'
    end
    object Query1BDEDesigner07: TIntegerField
      FieldName = '07'
    end
    object Query1BDEDesigner075: TIntegerField
      FieldName = '07.5'
    end
    object Query1BDEDesigner08: TIntegerField
      FieldName = '08'
    end
    object Query1BDEDesigner085: TIntegerField
      FieldName = '08.5'
    end
    object Query1BDEDesigner09: TIntegerField
      FieldName = '09'
    end
    object Query1BDEDesigner095: TIntegerField
      FieldName = '09.5'
    end
    object Query1BDEDesigner10: TIntegerField
      FieldName = '10'
    end
    object Query1BDEDesigner105: TIntegerField
      FieldName = '10.5'
    end
    object Query1BDEDesigner11: TIntegerField
      FieldName = '11'
    end
    object Query1BDEDesigner115: TIntegerField
      FieldName = '11.5'
    end
    object Query1BDEDesigner12: TIntegerField
      FieldName = '12'
    end
    object Query1BDEDesigner125: TIntegerField
      FieldName = '12.5'
    end
    object Query1BDEDesigner13: TIntegerField
      FieldName = '13'
    end
    object Query1BDEDesigner135: TIntegerField
      FieldName = '13.5'
    end
    object Query1BDEDesigner14: TIntegerField
      FieldName = '14'
    end
    object Query1BDEDesigner145: TIntegerField
      FieldName = '14.5'
    end
    object Query1BDEDesigner15: TIntegerField
      FieldName = '15'
    end
    object Query1BDEDesigner155: TIntegerField
      FieldName = '15.5'
    end
    object Query1BDEDesigner16: TIntegerField
      FieldName = '16'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 480
    Top = 256
  end
  object PopupMenu1: TPopupMenu
    Left = 184
    Top = 280
    object Detail1: TMenuItem
      Caption = 'Detail'
      OnClick = Detail1Click
    end
  end
end
