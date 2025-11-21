object SplitInvoice: TSplitInvoice
  Left = 184
  Top = 142
  Width = 1231
  Height = 780
  Caption = 'SplitInvoice'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Splitter1: TSplitter
    Left = 433
    Top = 65
    Height = 676
    Color = clSkyBlue
    ParentColor = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1215
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 204
      Top = 12
      Width = 9
      Height = 13
      Caption = '~'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 16
      Top = 36
      Width = 67
      Height = 16
      Caption = 'Invoice No:'
    end
    object Label4: TLabel
      Left = 221
      Top = 36
      Width = 43
      Height = 16
      Caption = 'RY No:'
    end
    object Label21: TLabel
      Left = 648
      Top = 8
      Width = 42
      Height = 16
      Caption = 'Note :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsItalic, fsUnderline]
      ParentFont = False
    end
    object Label22: TLabel
      Left = 728
      Top = 24
      Width = 67
      Height = 16
      Caption = 'Can modify'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object chkIndate: TCheckBox
      Left = 16
      Top = 8
      Width = 66
      Height = 17
      Caption = 'Inv Date'
      Checked = True
      State = cbChecked
      TabOrder = 0
    end
    object DTP1: TDateTimePicker
      Left = 88
      Top = 6
      Width = 105
      Height = 24
      Date = 41898.327956631950000000
      Format = 'yyyy/MM/dd'
      Time = 41898.327956631950000000
      TabOrder = 1
    end
    object DTP2: TDateTimePicker
      Left = 224
      Top = 6
      Width = 105
      Height = 24
      Date = 41898.327956631950000000
      Format = 'yyyy/MM/dd'
      Time = 41898.327956631950000000
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 88
      Top = 32
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Color = cl3DLight
      TabOrder = 3
    end
    object Button1: TButton
      Left = 402
      Top = 14
      Width = 75
      Height = 35
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 269
      Top = 32
      Width = 115
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 5
    end
    object Panel15: TPanel
      Left = 680
      Top = 27
      Width = 41
      Height = 13
      Color = cl3DLight
      TabOrder = 6
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 65
    Width = 433
    Height = 676
    Align = alLeft
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
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FrozenCols = 2
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'INV_NO'
        Footers = <>
        Title.Caption = 'Inv No.'
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'RYNO'
        Footers = <>
        Width = 63
      end
      item
        EditButtons = <>
        FieldName = 'XH'
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = 'SIZ'
        Footers = <>
        Title.Caption = 'Size'
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'CTQ'
        Footers = <>
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'CTZ'
        Footers = <>
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'CTS'
        Footers = <>
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'QTY'
        Footers = <>
        Title.Caption = 'Qty'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'PAIRS'
        Footers = <>
        Title.Caption = 'Pairs'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'NW'
        Footers = <>
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'GW'
        Footers = <>
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'TNW'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'TGW'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'L'
        Footers = <>
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'W'
        Footers = <>
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'H'
        Footers = <>
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'CBM'
        Footers = <>
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'BRAND'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'FACTORY'
        Footers = <>
      end>
  end
  object Panel2: TPanel
    Left = 436
    Top = 65
    Width = 61
    Height = 676
    Align = alLeft
    Color = clSkyBlue
    TabOrder = 2
    object btnAdd: TButton
      Left = 8
      Top = 408
      Width = 43
      Height = 25
      Caption = 'Split >'
      TabOrder = 0
      OnClick = btnAddClick
    end
    object btnAddmore: TButton
      Left = 8
      Top = 448
      Width = 43
      Height = 25
      Caption = '>>'
      Enabled = False
      TabOrder = 1
      OnClick = btnAddmoreClick
    end
  end
  object Panel3: TPanel
    Left = 497
    Top = 65
    Width = 718
    Height = 676
    Align = alClient
    TabOrder = 3
    object Splitter2: TSplitter
      Left = 1
      Top = 297
      Width = 716
      Height = 3
      Cursor = crVSplit
      Align = alTop
      Color = clSkyBlue
      ParentColor = False
    end
    object Splitter3: TSplitter
      Left = 489
      Top = 300
      Height = 375
      Align = alRight
      Color = clSkyBlue
      ParentColor = False
    end
    object DBGridEh3: TDBGridEh
      Left = 1
      Top = 1
      Width = 716
      Height = 296
      Align = alTop
      AllowedOperations = [alopUpdateEh]
      DataSource = DS2
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -13
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FrozenCols = 3
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDblClickOptimizeColWidth, dghDialogFind]
      ParentFont = False
      PopupMenu = Pop_inv
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      Columns = <
        item
          EditButtons = <>
          FieldName = 'INV_NO'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Inv No.'
          Width = 79
        end
        item
          ButtonStyle = cbsNone
          Color = cl3DLight
          DisplayFormat = 'yyyy/MM/dd'
          EditButtons = <>
          FieldName = 'INV_DATE'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Inv Date'
          Width = 70
        end
        item
          Color = cl3DLight
          EditButtons = <>
          FieldName = 'RISK'
          Footers = <>
          ReadOnly = True
          Width = 214
        end
        item
          EditButtons = <>
          FieldName = 'SHIP_BY'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Ship By'
          Width = 89
        end
        item
          EditButtons = <>
          FieldName = 'FROM_WHERE'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'From Where'
          Width = 150
        end
        item
          ButtonStyle = cbsNone
          Color = cl3DLight
          EditButtons = <>
          FieldName = 'TO_WHERE'
          Footers = <>
          PickList.Strings = (
            ''
            'ARGENTINA'
            'AUSTRALIA'
            'BELGIUM'
            'BRASIL'
            'CANADA'
            'CHILE'
            'CHINA'
            'COLUMBIA'
            'CONGO'
            'DJIBOUTI'
            'EGYPT'
            'FRANCE'
            'GABON'
            'GERMANY'
            'GREECE'
            'HONG KONG'
            'INDIA'
            'INDONESIA'
            'ISRAEL'
            'ITALY'
            'JAPAN'
            'KAZAKHSTAN'
            'KOREA'
            'LEBANON'
            'MALAYSIA'
            'MEXICO'
            'MONACO'
            'NEPAL'
            'NETHERLANDS'
            'NEW ZEALAND'
            'NORWAY'
            'PANAMA'
            'PARAGUAY'
            'PERU'
            'PHILIPPINES'
            'RUSSIA'
            'RUSSIAN'
            'S AFRICA'
            'SENEGAL'
            'SINGAPORE'
            'SPAIN'
            'TAIWAN'
            'THAILAND'
            'TUNISIA'
            'TURKEY'
            'U.K.'
            'USA'
            'UAE'
            'UKRAINE'
            'URUGUAY'
            'VENEZUELA'
            'VIETNAM'
            '')
          ReadOnly = True
          Title.Caption = 'To Where'
          Width = 65
          OnUpdateData = DBGridEh3Columns6UpdateData
        end
        item
          Color = 16758783
          EditButtons = <>
          FieldName = 'CUSTID'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Cust ID'
          Width = 55
        end
        item
          DisplayFormat = '#,###'
          EditButtons = <>
          FieldName = 'TOTAL_PAIRS'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Total Pairs'
          Width = 73
        end
        item
          DisplayFormat = '#,##0.00'
          EditButtons = <>
          FieldName = 'TOTAL_AMOUNT'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Total Amount'
          Width = 86
        end
        item
          EditButtons = <>
          FieldName = 'TOTAL_AMOUNT_WORD'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Amount Word'
          Visible = False
          Width = 250
        end
        item
          EditButtons = <>
          FieldName = 'CURRENCY'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Currency'
          Width = 59
        end
        item
          EditButtons = <>
          FieldName = 'BRAND'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Brand'
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = 'NO'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'No.'
          Width = 32
        end
        item
          EditButtons = <>
          FieldName = 'FACTORY'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Factory'
          Width = 54
        end
        item
          EditButtons = <>
          FieldName = 'YEAR'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Year'
          Width = 41
        end
        item
          EditButtons = <>
          FieldName = 'SAVE_USER'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'User ID'
          Width = 50
        end
        item
          EditButtons = <>
          FieldName = 'SAVE_TIME'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'User Date'
          Width = 135
        end>
    end
    object DBGridEh2: TDBGridEh
      Left = 1
      Top = 300
      Width = 488
      Height = 375
      Align = alClient
      DataSource = DS3
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -13
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FrozenCols = 3
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      OnGetCellParams = DBGridEh2GetCellParams
      Columns = <
        item
          EditButtons = <>
          FieldName = 'INV_NO'
          Footers = <>
          Title.Caption = 'Inv No.'
          Width = 85
        end
        item
          EditButtons = <>
          FieldName = 'PACK_NO'
          Footers = <>
          Title.Caption = 'Pack No.'
          Width = 59
        end
        item
          EditButtons = <>
          FieldName = 'RYNO'
          Footers = <>
          Width = 63
        end
        item
          EditButtons = <>
          FieldName = 'STYLE_NAME'
          Footers = <>
          Title.Caption = 'Stype Name'
          Width = 105
        end
        item
          EditButtons = <>
          FieldName = 'PO'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'CUSTORDNO'
          Footers = <>
          Title.Caption = 'Custord No.'
          Width = 74
        end
        item
          EditButtons = <>
          FieldName = 'ARTICLE'
          Footers = <>
          Title.Caption = 'Article'
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = 'SIZE_RUN'
          Footers = <>
          Title.Caption = 'Size Run'
          Width = 57
        end
        item
          EditButtons = <>
          FieldName = 'PAIRS'
          Footers = <>
          Title.Caption = 'Pairs'
          Width = 40
        end
        item
          DisplayFormat = '#,##0.00'
          EditButtons = <>
          FieldName = 'UNIT_PRICE'
          Footers = <>
          Title.Caption = 'Unit Price'
        end
        item
          DisplayFormat = '#,##0.00'
          EditButtons = <>
          FieldName = 'AMOUNT'
          Footers = <>
          Title.Caption = 'Amount'
        end>
    end
    object Panel4: TPanel
      Left = 492
      Top = 300
      Width = 225
      Height = 375
      Align = alRight
      TabOrder = 2
      object Splitter4: TSplitter
        Left = 1
        Top = 215
        Width = 223
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        Color = clSkyBlue
        ParentColor = False
      end
      object DBGridEh4: TDBGridEh
        Left = 1
        Top = 1
        Width = 223
        Height = 214
        Align = alClient
        DataSource = DS4
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'INV_NO'
            Footers = <>
            Title.Caption = 'Inv No.'
            Visible = False
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'RYNO'
            Footers = <>
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'XH'
            Footers = <>
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = 'SIZ'
            Footers = <>
            Title.Caption = 'Size'
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'CTQ'
            Footers = <>
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'CTZ'
            Footers = <>
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'CTS'
            Footers = <>
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footers = <>
            Title.Caption = 'Qty'
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'PAIRS'
            Footers = <>
            Title.Caption = 'Pairs'
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'NW'
            Footers = <>
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'GW'
            Footers = <>
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'L'
            Footers = <>
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'W'
            Footers = <>
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'H'
            Footers = <>
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'CBM'
            Footers = <>
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'TNW'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'TGW'
            Footers = <>
          end>
      end
      object DBGridEh5: TDBGridEh
        Left = 1
        Top = 218
        Width = 223
        Height = 156
        Align = alBottom
        DataSource = DS5
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        PopupMenu = Pop_PackingD
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnGetCellParams = DBGridEh5GetCellParams
        Columns = <
          item
            Color = 16754943
            EditButtons = <>
            FieldName = 'Word'
            Footers = <>
            ReadOnly = True
            Title.Caption = ' '
            Width = 210
          end
          item
            EditButtons = <>
            FieldName = 'CTS'
            Footers = <>
            ReadOnly = True
            Width = 40
          end
          item
            EditButtons = <>
            Footers = <>
            ReadOnly = True
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'Pairs'
            Footers = <>
            ReadOnly = True
            Width = 40
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'NW'
            Footers = <>
            Width = 40
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'GW'
            Footers = <>
            Width = 40
          end
          item
            EditButtons = <>
            Footers = <>
            ReadOnly = True
            Width = 120
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'CBM'
            Footers = <>
            Width = 40
          end
          item
            ButtonStyle = cbsNone
            EditButtons = <>
            FieldName = 'UserDate'
            Footers = <>
            ReadOnly = True
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'UserID'
            Footers = <>
            ReadOnly = True
            Width = 50
          end>
      end
    end
  end
  object qry2: TQuery
    AfterOpen = qry2AfterOpen
    BeforeClose = qry2BeforeClose
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'SELECT im.INV_NO, im.INV_DATE, im.RISK, im.SHIP_BY, im.FROM_WHER' +
        'E, im.TO_WHERE,'
      
        '       im.TOTAL_PAIRS, im.TOTAL_AMOUNT, im.TOTAL_AMOUNT_WORD, im' +
        '.BRAND, im.NO,'
      
        '       im.FACTORY, im.[YEAR], im.SAVE_USER, im.SAVE_TIME, im.PRI' +
        'NT_LOCK,'
      
        '       im.CFM_USER, im.CFM_TIME, im.CFMED, im.PRINT_USER, im.PRI' +
        'NT_TIME,'
      
        '       im.UNLOCK_USER, im.UNLOCK_TIME, im.YN, im.CUSTID, im.CURR' +
        'ENCY, im.Season,'
      '       im.Stage, im.Inv_Type, im.Inv_Sup, im.Unit'
      'FROM INVOICE_M im'
      
        'WHERE im.Inv_Sup=:Inv_No and im.inv_type='#39'Mass Production'#39' AND i' +
        'm.Inv_Sup IS NOT NULL')
    UpdateObject = UpdateSQL3
    Left = 208
    Top = 169
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'INV_NO'
        ParamType = ptUnknown
        Size = 31
      end>
    object qry2INV_DATE: TDateTimeField
      FieldName = 'INV_DATE'
      Origin = 'MYDB.INVOICE_M.INV_DATE'
    end
    object qry2SHIP_BY: TStringField
      FieldName = 'SHIP_BY'
      Origin = 'MYDB.INVOICE_M.SHIP_BY'
      FixedChar = True
      Size = 50
    end
    object qry2FROM_WHERE: TStringField
      FieldName = 'FROM_WHERE'
      Origin = 'MYDB.INVOICE_M.FROM_WHERE'
      FixedChar = True
      Size = 50
    end
    object qry2TO_WHERE: TStringField
      FieldName = 'TO_WHERE'
      Origin = 'MYDB.INVOICE_M.TO_WHERE'
      FixedChar = True
      Size = 50
    end
    object qry2TOTAL_PAIRS: TIntegerField
      FieldName = 'TOTAL_PAIRS'
      Origin = 'MYDB.INVOICE_M.TOTAL_PAIRS'
    end
    object qry2TOTAL_AMOUNT: TCurrencyField
      FieldName = 'TOTAL_AMOUNT'
      Origin = 'MYDB.INVOICE_M.TOTAL_AMOUNT'
    end
    object qry2TOTAL_AMOUNT_WORD: TStringField
      FieldName = 'TOTAL_AMOUNT_WORD'
      Origin = 'MYDB.INVOICE_M.TOTAL_AMOUNT_WORD'
      FixedChar = True
      Size = 200
    end
    object qry2BRAND: TStringField
      FieldName = 'BRAND'
      Origin = 'MYDB.INVOICE_M.BRAND'
      FixedChar = True
      Size = 10
    end
    object qry2NO: TIntegerField
      FieldName = 'NO'
      Origin = 'MYDB.INVOICE_M.NO'
    end
    object qry2FACTORY: TStringField
      FieldName = 'FACTORY'
      Origin = 'MYDB.INVOICE_M.FACTORY'
      FixedChar = True
      Size = 10
    end
    object qry2YEAR: TStringField
      FieldName = 'YEAR'
      Origin = 'MYDB.INVOICE_M.YEAR'
      FixedChar = True
      Size = 10
    end
    object qry2SAVE_USER: TStringField
      FieldName = 'SAVE_USER'
      Origin = 'MYDB.INVOICE_M.SAVE_USER'
      FixedChar = True
      Size = 10
    end
    object qry2SAVE_TIME: TDateTimeField
      FieldName = 'SAVE_TIME'
      Origin = 'MYDB.INVOICE_M.SAVE_TIME'
    end
    object qry2PRINT_LOCK: TStringField
      FieldName = 'PRINT_LOCK'
      Origin = 'MYDB.INVOICE_M.PRINT_LOCK'
      FixedChar = True
      Size = 2
    end
    object qry2CFM_USER: TStringField
      FieldName = 'CFM_USER'
      Origin = 'MYDB.INVOICE_M.CFM_USER'
      FixedChar = True
      Size = 10
    end
    object qry2CFM_TIME: TDateTimeField
      FieldName = 'CFM_TIME'
      Origin = 'MYDB.INVOICE_M.CFM_TIME'
    end
    object qry2CFMED: TStringField
      FieldName = 'CFMED'
      Origin = 'MYDB.INVOICE_M.CFMED'
      FixedChar = True
      Size = 2
    end
    object qry2PRINT_USER: TStringField
      FieldName = 'PRINT_USER'
      Origin = 'MYDB.INVOICE_M.PRINT_USER'
      FixedChar = True
      Size = 10
    end
    object qry2PRINT_TIME: TDateTimeField
      FieldName = 'PRINT_TIME'
      Origin = 'MYDB.INVOICE_M.PRINT_TIME'
    end
    object qry2UNLOCK_USER: TStringField
      FieldName = 'UNLOCK_USER'
      Origin = 'MYDB.INVOICE_M.UNLOCK_USER'
      FixedChar = True
      Size = 10
    end
    object qry2UNLOCK_TIME: TDateTimeField
      FieldName = 'UNLOCK_TIME'
      Origin = 'MYDB.INVOICE_M.UNLOCK_TIME'
    end
    object qry2YN: TStringField
      FieldName = 'YN'
      Origin = 'MYDB.INVOICE_M.YN'
      FixedChar = True
      Size = 1
    end
    object qry2CURRENCY: TStringField
      FieldName = 'CURRENCY'
      Origin = 'MYDB.INVOICE_M.CURRENCY'
      FixedChar = True
      Size = 10
    end
    object qry2Season: TStringField
      FieldName = 'Season'
      Origin = 'MYDB.INVOICE_M.Season'
      FixedChar = True
      Size = 5
    end
    object qry2Stage: TStringField
      FieldName = 'Stage'
      Origin = 'MYDB.INVOICE_M.Stage'
      FixedChar = True
      Size = 10
    end
    object qry2Inv_Type: TStringField
      FieldName = 'Inv_Type'
      Origin = 'MYDB.INVOICE_M.Inv_Type'
      FixedChar = True
      Size = 50
    end
    object qry2INV_NO: TStringField
      FieldName = 'INV_NO'
      Origin = 'MYDB.INVOICE_M.INV_NO'
      FixedChar = True
      Size = 30
    end
    object qry2Inv_Sup: TStringField
      FieldName = 'Inv_Sup'
      Origin = 'MYDB.INVOICE_M.Inv_Sup'
      FixedChar = True
      Size = 15
    end
    object qry2RISK: TStringField
      FieldName = 'RISK'
      FixedChar = True
      Size = 255
    end
    object qry2CUSTID: TStringField
      FieldName = 'CUSTID'
      FixedChar = True
      Size = 10
    end
  end
  object DS2: TDataSource
    DataSet = qry2
    Left = 208
    Top = 137
  end
  object qry1: TQuery
    AfterOpen = qry1AfterOpen
    BeforeClose = qry1BeforeClose
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT p.INV_NO, p.RYNO, p.XH, p.SIZ, p.CTQ, p.CTZ, p.CTS, p.QTY' +
        ', p.PAIRS, p.NW,'
      
        '       p.GW, p.L, p.W, p.H, p.CBM,p.TNW,p.TGW, p.UserID, p.UserD' +
        'ate,0 as YB,im.BRAND'
      '       ,im.FACTORY,im.[YEAR],im.Inv_Type ,im.Inv_Date'
      'FROM PACKING p '
      'LEFT JOIN INVOICE_M im ON p.INV_NO=im.INV_NO'
      'left join DDZL do ON do.DDBH=p.RYNO '
      'WHERE 1=2')
    Left = 168
    Top = 169
    object qry1XH: TStringField
      FieldName = 'XH'
      FixedChar = True
      Size = 10
    end
    object qry1SIZ: TStringField
      FieldName = 'SIZ'
      FixedChar = True
      Size = 10
    end
    object qry1CTS: TIntegerField
      FieldName = 'CTS'
    end
    object qry1QTY: TIntegerField
      FieldName = 'QTY'
    end
    object qry1PAIRS: TIntegerField
      FieldName = 'PAIRS'
    end
    object qry1NW: TFloatField
      FieldName = 'NW'
    end
    object qry1GW: TFloatField
      FieldName = 'GW'
    end
    object qry1L: TFloatField
      FieldName = 'L'
    end
    object qry1W: TFloatField
      FieldName = 'W'
    end
    object qry1H: TFloatField
      FieldName = 'H'
    end
    object qry1CBM: TFloatField
      FieldName = 'CBM'
    end
    object qry1YB: TIntegerField
      FieldName = 'YB'
    end
    object qry1BRAND: TStringField
      FieldName = 'BRAND'
      FixedChar = True
      Size = 10
    end
    object qry1FACTORY: TStringField
      FieldName = 'FACTORY'
      FixedChar = True
      Size = 10
    end
    object qry1YEAR: TStringField
      FieldName = 'YEAR'
      FixedChar = True
      Size = 10
    end
    object qry1Inv_Type: TStringField
      FieldName = 'Inv_Type'
      FixedChar = True
      Size = 50
    end
    object qry1CTQ: TIntegerField
      FieldName = 'CTQ'
    end
    object qry1CTZ: TIntegerField
      FieldName = 'CTZ'
    end
    object qry1Inv_Date: TDateTimeField
      FieldName = 'Inv_Date'
    end
    object qry1INV_NO: TStringField
      FieldName = 'INV_NO'
      FixedChar = True
      Size = 30
    end
    object qry1RYNO: TStringField
      FieldName = 'RYNO'
      FixedChar = True
      Size = 50
    end
    object qry1TNW: TFloatField
      FieldName = 'TNW'
    end
    object qry1TGW: TFloatField
      FieldName = 'TGW'
    end
  end
  object DS1: TDataSource
    DataSet = qry1
    Left = 168
    Top = 137
  end
  object qry4: TQuery
    DatabaseName = 'DB'
    DataSource = DS3
    SQL.Strings = (
      
        'SELECT INV_NO, RYNO, XH, SIZ, CTQ, CTZ, CTS, QTY, PAIRS, NW, GW,' +
        ' L, W, H, CBM,'
      '       UserID, UserDate,TNW,TGW'
      'FROM PACKING'
      'WHERE INV_NO=:INV_NO and RYNO=:RYNO')
    UpdateObject = UpdateSQL2
    Left = 296
    Top = 169
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'INV_NO'
        ParamType = ptUnknown
        Size = 31
      end
      item
        DataType = ftFixedChar
        Name = 'RYNO'
        ParamType = ptUnknown
        Size = 51
      end>
    object StringField3: TStringField
      FieldName = 'XH'
      FixedChar = True
      Size = 10
    end
    object StringField4: TStringField
      FieldName = 'SIZ'
      FixedChar = True
      Size = 10
    end
    object IntegerField1: TIntegerField
      FieldName = 'CTS'
    end
    object IntegerField2: TIntegerField
      FieldName = 'QTY'
    end
    object IntegerField3: TIntegerField
      FieldName = 'PAIRS'
    end
    object FloatField1: TFloatField
      FieldName = 'NW'
    end
    object FloatField2: TFloatField
      FieldName = 'GW'
    end
    object FloatField3: TFloatField
      FieldName = 'L'
    end
    object FloatField4: TFloatField
      FieldName = 'W'
    end
    object FloatField5: TFloatField
      FieldName = 'H'
    end
    object FloatField6: TFloatField
      FieldName = 'CBM'
    end
    object StringField7: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 10
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'UserDate'
    end
    object qry4CTQ: TIntegerField
      FieldName = 'CTQ'
      Origin = 'MYDB.PACKING.CTQ'
    end
    object qry4CTZ: TIntegerField
      FieldName = 'CTZ'
      Origin = 'MYDB.PACKING.CTZ'
    end
    object qry4INV_NO: TStringField
      FieldName = 'INV_NO'
      Origin = 'MYDB.PACKING.INV_NO'
      FixedChar = True
      Size = 30
    end
    object qry4RYNO: TStringField
      FieldName = 'RYNO'
      Origin = 'MYDB.PACKING.RYNO'
      FixedChar = True
      Size = 50
    end
    object qry4TNW: TFloatField
      FieldName = 'TNW'
      Origin = 'DB.PACKING.TNW'
    end
    object qry4TGW: TFloatField
      FieldName = 'TGW'
      Origin = 'DB.PACKING.TGW'
    end
  end
  object DS4: TDataSource
    DataSet = qry4
    Left = 296
    Top = 137
  end
  object qry3: TQuery
    AfterOpen = qry3AfterOpen
    BeforeClose = qry3BeforeClose
    DatabaseName = 'DB'
    DataSource = DS2
    SQL.Strings = (
      
        'SELECT id.INV_NO, id.PACK_NO, id.RYNO, id.STYLE_NAME, id.PO, id.' +
        'CUSTORDNO,'
      
        '       id.ARTICLE, id.SIZE_RUN, id.PAIRS, id.UNIT_PRICE, id.AMOU' +
        'NT, id.UserID,'
      '       id.UserDate'
      'FROM INVOICE_D id LEFT JOIN YWDD ON id.RYNO=YWDD.DDBH'
      'LEFT JOIN DDZL do ON do.DDBH=YWDD.YSBH'
      'where id.INV_NO=:INV_NO'
      'order by CAST(id.PACK_NO AS INT)')
    Left = 248
    Top = 169
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'INV_NO'
        ParamType = ptUnknown
        Size = 31
      end>
    object qry3PACK_NO: TStringField
      FieldName = 'PACK_NO'
      Origin = 'MYDB.INVOICE_D.PACK_NO'
      FixedChar = True
      Size = 10
    end
    object qry3STYLE_NAME: TStringField
      FieldName = 'STYLE_NAME'
      Origin = 'MYDB.INVOICE_D.STYLE_NAME'
      FixedChar = True
      Size = 15
    end
    object qry3PO: TStringField
      FieldName = 'PO'
      Origin = 'MYDB.INVOICE_D.PO'
      FixedChar = True
      Size = 15
    end
    object qry3CUSTORDNO: TStringField
      FieldName = 'CUSTORDNO'
      Origin = 'MYDB.INVOICE_D.CUSTORDNO'
      FixedChar = True
      Size = 15
    end
    object qry3ARTICLE: TStringField
      FieldName = 'ARTICLE'
      Origin = 'MYDB.INVOICE_D.ARTICLE'
      FixedChar = True
      Size = 15
    end
    object qry3SIZE_RUN: TStringField
      FieldName = 'SIZE_RUN'
      Origin = 'MYDB.INVOICE_D.SIZE_RUN'
      FixedChar = True
      Size = 15
    end
    object qry3PAIRS: TIntegerField
      FieldName = 'PAIRS'
      Origin = 'MYDB.INVOICE_D.PAIRS'
    end
    object qry3UNIT_PRICE: TCurrencyField
      FieldName = 'UNIT_PRICE'
      Origin = 'MYDB.INVOICE_D.UNIT_PRICE'
    end
    object qry3AMOUNT: TCurrencyField
      FieldName = 'AMOUNT'
      Origin = 'MYDB.INVOICE_D.AMOUNT'
    end
    object qry3UserID: TStringField
      FieldName = 'UserID'
      Origin = 'MYDB.INVOICE_D.UserID'
      FixedChar = True
      Size = 15
    end
    object qry3UserDate: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'MYDB.INVOICE_D.UserDate'
    end
    object qry3INV_NO: TStringField
      FieldName = 'INV_NO'
      FixedChar = True
      Size = 30
    end
    object qry3RYNO: TStringField
      FieldName = 'RYNO'
      FixedChar = True
      Size = 50
    end
  end
  object DS3: TDataSource
    DataSet = qry3
    Left = 248
    Top = 137
  end
  object packing_D: TQuery
    AfterOpen = packing_DAfterOpen
    BeforeClose = packing_DBeforeClose
    DatabaseName = 'DB'
    DataSource = DS3
    SQL.Strings = (
      'select * ,'#39'Total :'#39'  as Word'
      'from Packing_D '
      'where INV_NO=:INV_NO and RYNO=:RYNO')
    UpdateObject = Upd_PackingD
    Left = 347
    Top = 167
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'INV_NO'
        ParamType = ptUnknown
        Size = 31
      end
      item
        DataType = ftFixedChar
        Name = 'RYNO'
        ParamType = ptUnknown
        Size = 51
      end>
    object packing_DCTS: TIntegerField
      FieldName = 'CTS'
      Origin = 'MYDB.PACKING_D.CTS'
    end
    object packing_DPairs: TIntegerField
      FieldName = 'Pairs'
      Origin = 'MYDB.PACKING_D.Pairs'
    end
    object packing_DNW: TFloatField
      FieldName = 'NW'
      Origin = 'MYDB.PACKING_D.NW'
    end
    object packing_DGW: TFloatField
      FieldName = 'GW'
      Origin = 'MYDB.PACKING_D.GW'
    end
    object packing_DUserID: TStringField
      FieldName = 'UserID'
      Origin = 'MYDB.PACKING_D.UserID'
      FixedChar = True
      Size = 10
    end
    object packing_DUserDate: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'MYDB.PACKING_D.UserDate'
    end
    object packing_DCBM: TFloatField
      FieldName = 'CBM'
      Origin = 'MYDB.PACKING_D.CBM'
    end
    object packing_DWord: TStringField
      FieldName = 'Word'
      FixedChar = True
      Size = 7
    end
    object packing_DYN: TStringField
      FieldName = 'YN'
      Size = 1
    end
    object packing_DINV_NO: TStringField
      FieldName = 'INV_NO'
      FixedChar = True
      Size = 30
    end
    object packing_DRYNO: TStringField
      FieldName = 'RYNO'
      FixedChar = True
      Size = 50
    end
  end
  object DS5: TDataSource
    DataSet = packing_D
    Left = 346
    Top = 137
  end
  object UpdateSQL2: TUpdateSQL
    Left = 296
    Top = 202
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 168
    Top = 232
    object SplitRY1: TMenuItem
      Caption = 'Split Size...'
    end
  end
  object UpdateSQL3: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE INVOICE_M SET'
      '      INV_DATE = :INV_DATE'
      '      ,RISK = :RISK'
      '      ,SHIP_BY = :SHIP_BY'
      '      ,FROM_WHERE = :FROM_WHERE'
      '      ,TO_WHERE = :TO_WHERE'
      '      ,BRAND = :BRAND'
      '      ,NO = :NO'
      '      ,FACTORY = :FACTORY'
      '      ,YEAR = :YEAR'
      '      ,SAVE_USER = :SAVE_USER'
      '      ,SAVE_TIME = getdate()'
      '      ,CURRENCY= :CURRENCY'
      ' WHERE INV_NO=:INV_NO '
      '')
    DeleteSQL.Strings = (
      'delete from INVOICE_M'
      'WHERE INV_NO=:old_INV_NO')
    Left = 208
    Top = 201
  end
  object Pop_inv: TPopupMenu
    OnPopup = Pop_invPopup
    Left = 209
    Top = 233
    object Modify1: TMenuItem
      Caption = 'Modify'
      Enabled = False
      OnClick = Modify1Click
    end
    object Save1: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = Save1Click
    end
    object Cancel1: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = Cancel1Click
    end
  end
  object Upd_PackingD: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE PACKING_D'
      '   SET '
      '      CTS = :CTS'
      '      ,Pairs = :Pairs'
      '      ,NW = :NW'
      '      ,GW = :GW'
      '      ,CBM = :CBM'
      '      ,UserID = :UserID'
      '      ,UserDate = GETDATE()     '
      '      ,YN = :YN'
      ' WHERE INV_NO = :INV_NO and RYNO = :RYNO')
    Left = 345
    Top = 200
  end
  object Pop_PackingD: TPopupMenu
    OnPopup = Pop_PackingDPopup
    Left = 345
    Top = 234
    object Modify2: TMenuItem
      Caption = 'Modify'
      Enabled = False
      OnClick = Modify2Click
    end
    object Save2: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = Save2Click
    end
    object Cancel2: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = Cancel2Click
    end
  end
  object Qry_Temp: TQuery
    DatabaseName = 'DB'
    Left = 216
    Top = 376
  end
end
