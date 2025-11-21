object Invoice_SelectOrder: TInvoice_SelectOrder
  Left = 132
  Top = 140
  Width = 1094
  Height = 464
  Caption = 'Invoice_SelectOrder'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 1086
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 261
      Top = 34
      Width = 45
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CutRY#'
    end
    object Label3: TLabel
      Left = 459
      Top = 6
      Width = 36
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Brand'
    end
    object Label4: TLabel
      Left = 452
      Top = 34
      Width = 45
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Cust ID.'
    end
    object Label5: TLabel
      Left = 160
      Top = 34
      Width = 36
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Month'
    end
    object Label12: TLabel
      Left = 160
      Top = 8
      Width = 36
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Month'
    end
    object Label13: TLabel
      Left = 160
      Top = 60
      Width = 36
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Month'
    end
    object Label14: TLabel
      Left = 450
      Top = 62
      Width = 45
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Factory'
    end
    object Label2: TLabel
      Left = 265
      Top = 59
      Width = 40
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'YSBH:'
    end
    object DDBHEdit: TEdit
      Left = 308
      Top = 30
      Width = 141
      Height = 24
      TabOrder = 0
    end
    object Button1: TButton
      Left = 760
      Top = 48
      Width = 81
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object CheckBox1: TCheckBox
      Left = 268
      Top = 6
      Width = 41
      Height = 17
      Caption = 'To:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = CheckBox1Click
    end
    object ComboBox5: TComboBox
      Left = 308
      Top = 4
      Width = 145
      Height = 24
      Style = csDropDownList
      CharCase = ecUpperCase
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 3
      Items.Strings = (
        'ARGENTINA'
        'AUSTRALIA'
        'BELGIUM'
        'BRASIL'
        'CANADA'
        'CHILE'
        'CHINA'
        'COLOMBIA'
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
        'VIETNAM')
    end
    object CheckBox2: TCheckBox
      Left = 652
      Top = 8
      Width = 113
      Height = 17
      Caption = 'Show Price'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object CBX1: TComboBox
      Left = 90
      Top = 4
      Width = 65
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 5
      Items.Strings = (
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
        '2029'
        '2030')
    end
    object CBX2: TComboBox
      Left = 204
      Top = 4
      Width = 57
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 6
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
    object cboBrand: TComboBox
      Left = 501
      Top = 4
      Width = 137
      Height = 24
      Style = csDropDownList
      Color = 16758783
      ItemHeight = 16
      TabOrder = 7
      Items.Strings = (
        ''
        'COACH-0063'
        'CONVERSE-036'
        'ADIDAS-0038'
        'KSWISS-0049'
        'PALLADIUM-0051'
        'SANUK-0048'
        'REEBOK-0060'
        'HOKA-0062'
        'TOMMY-048'
        'TEVA-0054'
        'UGG-0055')
    end
    object Edit3: TEdit
      Left = 500
      Top = 30
      Width = 133
      Height = 24
      TabOrder = 8
    end
    object CBX3: TComboBox
      Left = 90
      Top = 30
      Width = 65
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 9
      Items.Strings = (
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
        '2029'
        '2030')
    end
    object CBX4: TComboBox
      Left = 204
      Top = 30
      Width = 57
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 10
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
    object chkRy: TCheckBox
      Left = 8
      Top = 34
      Width = 73
      Height = 17
      Caption = 'Ry Year'
      TabOrder = 11
    end
    object chkSDD: TCheckBox
      Left = 8
      Top = 8
      Width = 81
      Height = 17
      Caption = 'ShipDate'
      Checked = True
      State = cbChecked
      TabOrder = 12
    end
    object chk_PODD: TCheckBox
      Left = 8
      Top = 60
      Width = 81
      Height = 17
      Caption = 'ReceDate'
      TabOrder = 13
    end
    object cbo_PODD_Y: TComboBox
      Left = 90
      Top = 56
      Width = 65
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 14
      Items.Strings = (
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
        '2029'
        '2030')
    end
    object cbo_PODD_M: TComboBox
      Left = 204
      Top = 56
      Width = 57
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 15
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
    object chkDropped: TCheckBox
      Left = 652
      Top = 33
      Width = 101
      Height = 17
      Caption = 'Hide Cancel'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 16
    end
    object GSBH: TComboBox
      Left = 500
      Top = 60
      Width = 63
      Height = 24
      Color = 16758783
      ItemHeight = 16
      TabOrder = 17
      Items.Strings = (
        ''
        'VA12'
        'VB1'
        'VB2')
    end
    object Button2: TButton
      Left = 764
      Top = 20
      Width = 75
      Height = 25
      Caption = 'Copy'
      TabOrder = 18
      OnClick = Button2Click
    end
    object YSBHEdit: TEdit
      Left = 308
      Top = 56
      Width = 141
      Height = 24
      TabOrder = 19
    end
    object CheckBox3: TCheckBox
      Left = 652
      Top = 57
      Width = 101
      Height = 17
      Caption = 'Price must >0'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 20
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 89
    Width = 1086
    Height = 344
    Align = alClient
    AllowedOperations = [alopUpdateEh]
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDblClickOptimizeColWidth, dghDialogFind]
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'RY'
        Footers = <
          item
            FieldName = 'RY'
            ValueType = fvtCount
          end>
        ReadOnly = True
        Title.Caption = 'CutRY'
        Width = 129
      end
      item
        EditButtons = <>
        FieldName = 'StyleName'
        Footers = <>
        ReadOnly = True
        Width = 178
      end
      item
        EditButtons = <>
        FieldName = 'PO'
        Footers = <>
        ReadOnly = True
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'KHDDBH1'
        Footers = <>
        Title.Caption = 'PO/Cut'
        Width = 112
      end
      item
        EditButtons = <>
        FieldName = 'CustOrdNo'
        Footers = <>
        ReadOnly = True
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        ReadOnly = True
        Width = 114
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footers = <
          item
            FieldName = 'Pairs'
            ValueType = fvtSum
          end>
        ReadOnly = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'CustID'
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <>
        Title.Caption = 'Price'
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'YSBH'
        Footers = <>
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'xflock'
        Footers = <>
        Width = 40
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select YWDD.DDBH as RY,YWDD.YSBH,k.XieMing as StyleName,do.KHPO ' +
        'as PO,YWDD.KHDDBH1,RY_VNPRICE.CustOrdNo as CustOrdNo,RY_VNPRICE.' +
        'VNPrice,do.article as Article,YWDD.Qty as Pairs,do.KHBH as CustI' +
        'D,do.DDZT as Status, xflock '
      'FROM YWDD LEFT JOIN DDZL do ON ywdd.YSBH=do.DDBH'
      
        #9#9'       LEFT JOIN kfxxzl k ON k.XieXing=do.XieXing and k.SheHao' +
        '=do.SheHao '
      '          LEFT JOIN RY_VNPRICE on  RY_VNPRICE.RYNO=do.DDBH '
      'WHERE 1=1 '
      'and do.GSBH='#39'VA12'#39' '
      
        ' and not exists (select RYNO from INVOICE_D where YWDD.DDBH=INVO' +
        'ICE_D.RyNo)'
      ' and do.DDBH like '#39'Y1804-0124%'#39
      'and do.DDZT <> '#39'C'#39' '
      'order by YWDD.DDBH')
    Left = 424
    Top = 152
    object Query1RY: TStringField
      FieldName = 'RY'
      FixedChar = True
      Size = 15
    end
    object Query1StyleName: TStringField
      FieldName = 'StyleName'
      FixedChar = True
      Size = 50
    end
    object Query1PO: TStringField
      FieldName = 'PO'
      FixedChar = True
      Size = 25
    end
    object Query1CustOrdNo: TStringField
      FieldName = 'CustOrdNo'
      FixedChar = True
      Size = 15
    end
    object Query1VNPrice: TCurrencyField
      FieldName = 'VNPrice'
      DisplayFormat = '#0.00'
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1Pairs: TFloatField
      FieldName = 'Pairs'
    end
    object Query1CustID: TStringField
      FieldName = 'CustID'
      FixedChar = True
      Size = 4
    end
    object Query1Status: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object Query1KHDDBH1: TStringField
      FieldName = 'KHDDBH1'
      FixedChar = True
      Size = 30
    end
    object Query1YSBH: TStringField
      FieldName = 'YSBH'
      FixedChar = True
      Size = 15
    end
    object Query1xflock: TStringField
      FieldName = 'xflock'
      FixedChar = True
      Size = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 456
    Top = 152
  end
  object qrytemp: TQuery
    DatabaseName = 'DB'
    Left = 344
    Top = 9
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'if object_id('#39'tempdb..#LastCGBJ'#39') is not null  '
      'begin   drop table #LastCGBJ end   '
      
        'select * into #LastCGBJ from (select CLBH,USPRICE,VNPRICE from (' +
        ' select CGBJS.BJNO,CLBH,USPRICE,VNPRICE,ROW_NUMBER() over (PARTI' +
        'TION BY CLBH ORDER BY CGBJS.BJNO DESC) as  rn from CGBJS,CGBJ wh' +
        'ere CGBJS.BJNO=CGBJ.BJNO and CGBJ.GSBH='#39'VA12'#39'  '
      ') A where A.rn=1 ) CGBJS')
    Left = 424
    Top = 208
  end
end
