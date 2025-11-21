object StockList: TStockList
  Left = 224
  Top = 219
  Width = 1345
  Height = 499
  Caption = 'StockList'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1329
    Height = 121
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 409
      Height = 24
      AutoSize = False
      Caption = 'Month Material Stock:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 51
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo:'
    end
    object Label5: TLabel
      Left = 200
      Top = 51
      Width = 62
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatName:'
    end
    object Label2: TLabel
      Left = 256
      Top = 88
      Width = 46
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CKBH:'
    end
    object Label4: TLabel
      Left = 32
      Top = 88
      Width = 46
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Year:'
    end
    object Label6: TLabel
      Left = 152
      Top = 88
      Width = 46
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Month:'
    end
    object Label8: TLabel
      Left = 448
      Top = 51
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CWBH:'
    end
    object Label16: TLabel
      Left = 583
      Top = 51
      Width = 31
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'KHO:'
    end
    object Label7: TLabel
      Left = 362
      Top = 88
      Width = 90
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Not CKBH:'
    end
    object Edit2: TEdit
      Left = 264
      Top = 48
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 80
      Top = 48
      Width = 113
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Button1: TButton
      Left = 728
      Top = 80
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 4
      OnClick = Button1Click
    end
    object CBX1: TComboBox
      Left = 304
      Top = 85
      Width = 73
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      TabOrder = 3
    end
    object Edit3: TEdit
      Left = 368
      Top = 48
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Button2: TButton
      Left = 616
      Top = 80
      Width = 97
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 5
      OnClick = Button2Click
    end
    object CBX2: TComboBox
      Left = 80
      Top = 85
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      TabOrder = 6
      Text = '2020'
      Items.Strings = (
        '2006'
        '2007'
        '2008'
        '2009'
        '2010'
        '2011'
        '2012'
        '2013'
        '2014'
        '2015'
        '2016'
        '2017'
        '2018'
        '2019'
        '2020'
        '2021'
        '2022'
        '2023'
        '2024'
        '2025'
        '2026'
        '2027'
        '2028'
        '2029')
    end
    object CBX3: TComboBox
      Left = 200
      Top = 85
      Width = 49
      Height = 24
      CharCase = ecUpperCase
      DropDownCount = 12
      ItemHeight = 16
      TabOrder = 7
      Text = '01'
      Items.Strings = (
        '01'
        '02'
        '03'
        '04'
        '05'
        '06'
        '07'
        '08'
        '09'
        '10'
        '11'
        '12')
    end
    object Button3: TButton
      Left = 728
      Top = 40
      Width = 89
      Height = 33
      Caption = 'PRINT'
      TabOrder = 8
      OnClick = Button3Click
    end
    object DB1: TCheckBox
      Left = 528
      Top = 88
      Width = 89
      Height = 17
      Caption = 'Including 0'
      TabOrder = 9
    end
    object Edit4: TEdit
      Left = 520
      Top = 48
      Width = 57
      Height = 24
      TabOrder = 10
    end
    object CBX6: TComboBox
      Left = 616
      Top = 48
      Width = 65
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 11
      Text = 'ALL'
      Items.Strings = (
        'ALL'
        'NK'
        'TC'
        'HD'
        'KD'
        'XT'
        'GC'
        'ZZZZ'
        'NK1'
        'TC1'
        'HD1'
        'KD1'
        'H11'
        'NQ'
        'NKNQ')
    end
    object NotInCKBHEdit: TEdit
      Left = 456
      Top = 85
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 12
    end
  end
  object PC1: TPageControl
    Left = 0
    Top = 121
    Width = 1329
    Height = 339
    ActivePage = TabSheet2
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Total'
      object DBGrid1: TDBGridEh
        Left = 0
        Top = 0
        Width = 970
        Height = 308
        Align = alClient
        DataSource = DS1
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16763080
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'KCYEAR'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'KCMONTH'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
            Title.TitleButton = True
            Width = 48
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.TitleButton = True
            Width = 91
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.TitleButton = True
            Width = 364
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <
              item
                Value = 'Total:'
                ValueType = fvtStaticText
              end>
            Title.TitleButton = True
            Width = 47
          end
          item
            EditButtons = <>
            FieldName = 'CWBH'
            Footers = <
              item
                FieldName = 'CWBH'
                ValueType = fvtCount
              end>
            Title.TitleButton = True
            Width = 46
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footers = <
              item
                DisplayFormat = '##,#0.00'
                FieldName = 'QTY'
                ValueType = fvtSum
              end>
            Title.TitleButton = True
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'VNPrice'
            Footers = <
              item
                DisplayFormat = '##,#0'
                FieldName = 'VNPrice'
                ValueType = fvtAvg
              end>
            Title.TitleButton = True
            Width = 72
          end
          item
            EditButtons = <>
            FieldName = 'VNACC'
            Footers = <
              item
                DisplayFormat = '##,#0'
                FieldName = 'VNACC'
                ValueType = fvtSum
              end>
            Title.TitleButton = True
            Width = 96
          end
          item
            EditButtons = <>
            FieldName = 'KCBH'
            Footers = <>
            Title.TitleButton = True
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'LBBH'
            Footers = <>
            Title.TitleButton = True
            Width = 44
          end
          item
            EditButtons = <>
            FieldName = 'VNPrice'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'VNACC'
            Footers = <>
            Visible = False
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Ton Kho'
      ImageIndex = 1
      object DBGrid2: TDBGridEh
        Left = 0
        Top = 0
        Width = 1321
        Height = 308
        Align = alClient
        DataSource = DS2
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16763080
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OddRowColor = clWindow
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'KCYEAR'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'KCMONTH'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
            Title.TitleButton = True
            Width = 48
          end
          item
            EditButtons = <>
            FieldName = 'HGLB'
            Footers = <>
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.TitleButton = True
            Width = 91
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.TitleButton = True
            Width = 364
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <
              item
                Value = 'Total:'
                ValueType = fvtStaticText
              end>
            Title.TitleButton = True
            Width = 47
          end
          item
            EditButtons = <>
            FieldName = 'CWBH'
            Footers = <
              item
                FieldName = 'CWBH'
                ValueType = fvtCount
              end>
            Title.TitleButton = True
            Width = 46
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footers = <
              item
                DisplayFormat = '##,#0.00'
                FieldName = 'QTY'
                ValueType = fvtSum
              end>
            Title.TitleButton = True
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'VNPrice'
            Footers = <
              item
                DisplayFormat = '##,#0'
                FieldName = 'VNPrice'
                ValueType = fvtAvg
              end>
            Title.TitleButton = True
            Width = 72
          end
          item
            EditButtons = <>
            FieldName = 'VNACC'
            Footers = <
              item
                DisplayFormat = '##,#0'
                FieldName = 'VNACC'
                ValueType = fvtSum
              end>
            Title.TitleButton = True
            Width = 96
          end
          item
            EditButtons = <>
            FieldName = 'KCBH'
            Footers = <>
            Title.TitleButton = True
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'LBBH'
            Footers = <>
            Title.TitleButton = True
            Width = 44
          end
          item
            EditButtons = <>
            FieldName = 'HGLB'
            Footers = <>
            Visible = False
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Ton kho HG'
      ImageIndex = 2
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 970
        Height = 308
        Align = alClient
        DataSource = DS3
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16763080
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OddRowColor = clWindow
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'KCYEAR'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'KCMONTH'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
            Title.TitleButton = True
            Width = 48
          end
          item
            EditButtons = <>
            FieldName = 'HGLB'
            Footers = <>
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'CNO'
            Footers = <>
            Title.Caption = 'HGBH'
            Width = 56
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.TitleButton = True
            Width = 91
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.TitleButton = True
            Width = 364
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <
              item
                Value = 'Total:'
                ValueType = fvtStaticText
              end>
            Title.TitleButton = True
            Width = 47
          end
          item
            EditButtons = <>
            FieldName = 'CWBH'
            Footers = <
              item
                FieldName = 'CWBH'
                ValueType = fvtCount
              end>
            Title.TitleButton = True
            Width = 46
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <
              item
                DisplayFormat = '##,#0.00'
                FieldName = 'QTY'
                ValueType = fvtSum
              end>
            Title.TitleButton = True
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'KCBH'
            Footers = <>
            Title.TitleButton = True
            Width = 49
          end>
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select KCCLMONTH.*,CLZL.YWPM,CLZL.DWBH,KCZLS.CWBH,KCZLS.KCBH'
      'from KCCLMONTH'
      'left join CLZL on  CLZL.CLDH=KCCLMONTH.CLBH'
      'left join KCZLS on KCZLS.CLBH=CLZL.CLDH'
      'where KCCLMONTH.KCYEAR='#39'2007'#39
      'and KCCLMONTH.KCMONTH='#39'12'#39
      'order by KCCLMONTH.CLBH')
    Left = 496
    Top = 160
    object Query1KCYEAR: TStringField
      FieldName = 'KCYEAR'
      FixedChar = True
      Size = 4
    end
    object Query1KCMONTH: TStringField
      FieldName = 'KCMONTH'
      FixedChar = True
      Size = 2
    end
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1CWBH: TStringField
      FieldName = 'CWBH'
      FixedChar = True
      Size = 5
    end
    object Query1QTY: TCurrencyField
      FieldName = 'QTY'
      DisplayFormat = '##,#0.00'
    end
    object Query1KCBH: TStringField
      FieldName = 'KCBH'
      FixedChar = True
      Size = 6
    end
    object Query1LBBH: TStringField
      FieldName = 'LBBH'
      FixedChar = True
      Size = 2
    end
    object Query1VNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object Query1VNACC: TCurrencyField
      FieldName = 'VNACC'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 536
    Top = 160
  end
  object Matsite: TQuery
    DatabaseName = 'DB'
    Left = 464
    Top = 160
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select KCCLMONTH.*,CLZL.YWPM,CLZL.DWBH ,KCZLS.KCBH ,KCZLS.CWBH'
      'from KCCLMONTH_HG KCCLMONTH'
      'left join CLZL on  CLZL.CLDH=KCCLMONTH.CLBH'
      
        'left join KCZLS on KCZLS.CKBH=KCCLMONTH.CKBH and KCZLS.CLBH=KCCL' +
        'MONTH.CLBH '
      'left join KCCK on KCCLMONTH.CKBH=KCCK.CKBH '
      'where KCCLMONTH.KCYEAR='#39'2017'#39
      'and KCCLMONTH.KCMONTH='#39'06'#39
      'and KCCLMONTH.CLBH like '#39'%'#39
      'and CLZL.YWPM like '#39'%%'#39
      'and CLZL.YWPM like '#39'%%'#39
      'and KCZLS.CWBH like '#39'%'#39
      'and KCCLMONTH.Qty<>0'
      'and KCCK.GSBH='#39'VA12'#39
      'and KCCLMONTH.CKBH like '#39'%'#39)
    Left = 496
    Top = 192
    object StringField1: TStringField
      FieldName = 'KCYEAR'
      FixedChar = True
      Size = 4
    end
    object StringField2: TStringField
      FieldName = 'KCMONTH'
      FixedChar = True
      Size = 2
    end
    object StringField3: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object StringField4: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object StringField5: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object StringField6: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object StringField7: TStringField
      FieldName = 'CWBH'
      FixedChar = True
      Size = 5
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'QTY'
      DisplayFormat = '##,#0.00'
    end
    object Query2VNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object Query2VNACC: TCurrencyField
      FieldName = 'VNACC'
    end
    object StringField8: TStringField
      FieldName = 'KCBH'
      FixedChar = True
      Size = 6
    end
    object StringField9: TStringField
      FieldName = 'LBBH'
      FixedChar = True
      Size = 2
    end
    object Query2HGLB: TStringField
      FieldName = 'HGLB'
      FixedChar = True
      Size = 4
    end
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 536
    Top = 192
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select KCCLMONTH.KCYEAR,KCCLMONTH.KCMONTH,KCCLMONTH.CKBH,KCCLMON' +
        'TH.CLBH,KCCLMONTH.HGLB,case when CNO='#39'ZZZZ'#39' then null else CNO e' +
        'nd as CNO,KCCLMONTH.Qty,CLZL.YWPM,CLZL.DWBH ,KCZLS.KCBH ,KCZLS.C' +
        'WBH'
      'from KCCLMONTH_HGBH KCCLMONTH'
      'left join CLZL on  CLZL.CLDH=KCCLMONTH.CLBH'
      
        'left join KCZLS on KCZLS.CKBH=KCCLMONTH.CKBH and KCZLS.CLBH=KCCL' +
        'MONTH.CLBH '
      'left join KCCK on KCCLMONTH.CKBH=KCCK.CKBH '
      'where KCCLMONTH.KCYEAR='#39'2017'#39
      'and KCCLMONTH.KCMONTH='#39'11'#39
      'and KCCLMONTH.CLBH like '#39'%'#39
      'and CLZL.YWPM like '#39'%%'#39
      'and CLZL.YWPM like '#39'%%'#39
      'and KCZLS.CWBH like '#39'%'#39
      'and KCCLMONTH.Qty<>0'
      'and KCCK.GSBH='#39'VA12'#39
      'and KCCLMONTH.CKBH like '#39'%'#39)
    Left = 496
    Top = 224
    object Query3KCYEAR: TStringField
      FieldName = 'KCYEAR'
      FixedChar = True
      Size = 11
    end
    object Query3KCMONTH: TStringField
      FieldName = 'KCMONTH'
      FixedChar = True
      Size = 4
    end
    object Query3CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query3CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query3HGLB: TStringField
      FieldName = 'HGLB'
      FixedChar = True
      Size = 4
    end
    object Query3CNO: TStringField
      FieldName = 'CNO'
      FixedChar = True
      Size = 15
    end
    object Query3Qty: TCurrencyField
      FieldName = 'Qty'
    end
    object Query3YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query3DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query3KCBH: TStringField
      FieldName = 'KCBH'
      FixedChar = True
      Size = 10
    end
    object Query3CWBH: TStringField
      FieldName = 'CWBH'
      FixedChar = True
      Size = 5
    end
  end
  object DS3: TDataSource
    DataSet = Query3
    Left = 536
    Top = 224
  end
end
