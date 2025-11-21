object EquipmentCal: TEquipmentCal
  Left = 626
  Top = 228
  Width = 928
  Height = 579
  Caption = 'EquipmentCal'
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 920
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 87
      Height = 24
      Caption = 'Calculate'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 226
      Top = 20
      Width = 32
      Height = 16
      Caption = 'Year:'
    end
    object Label3: TLabel
      Left = 341
      Top = 19
      Width = 39
      Height = 16
      Caption = 'Month:'
    end
    object Edit1: TEdit
      Left = 444
      Top = 19
      Width = 35
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'stock'
    end
    object CBX1: TComboBox
      Left = 264
      Top = 17
      Width = 65
      Height = 24
      Style = csDropDownList
      CharCase = ecUpperCase
      ItemHeight = 16
      ItemIndex = 14
      TabOrder = 1
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
        '2026')
    end
    object CBX2: TComboBox
      Left = 384
      Top = 17
      Width = 49
      Height = 24
      Style = csDropDownList
      CharCase = ecUpperCase
      DropDownCount = 12
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 2
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
    object Button1: TButton
      Left = 600
      Top = 14
      Width = 75
      Height = 25
      Caption = 'Print'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button4: TButton
      Left = 680
      Top = 14
      Width = 75
      Height = 25
      Caption = 'Excel'
      TabOrder = 4
      OnClick = Button4Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 49
    Width = 225
    Height = 499
    Align = alLeft
    TabOrder = 1
    object BT1: TButton
      Left = 8
      Top = 8
      Width = 200
      Height = 25
      Caption = 'Check Entry Confirm'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BT1Click
    end
    object BT2: TButton
      Left = 8
      Top = 48
      Width = 200
      Height = 25
      Caption = 'Check Exchange Rate'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BT2Click
    end
    object BT3: TButton
      Left = 8
      Top = 88
      Width = 200
      Height = 25
      Caption = 'Calculate Entry Price'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BT3Click
    end
    object BT4: TButton
      Left = 8
      Top = 128
      Width = 200
      Height = 25
      Caption = 'Write to database'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #27161#26999#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BT4Click
    end
  end
  object Panel3: TPanel
    Left = 491
    Top = 128
    Width = 310
    Height = 193
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label4: TLabel
      Left = 40
      Top = 16
      Width = 150
      Height = 24
      Caption = 'Exchange Rate:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 128
      Top = 84
      Width = 11
      Height = 20
      Caption = '='
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 248
      Top = 83
      Width = 38
      Height = 20
      Caption = 'VND'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit5: TEdit
      Left = 48
      Top = 80
      Width = 73
      Height = 28
      Color = clScrollBar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      Text = '1 USD'
    end
    object Button2: TButton
      Left = 64
      Top = 136
      Width = 81
      Height = 33
      Caption = 'OK'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 176
      Top = 136
      Width = 81
      Height = 33
      Caption = 'CANCEL'
      TabOrder = 2
      OnClick = Button3Click
    end
    object DBEdit1: TDBEdit
      Left = 152
      Top = 80
      Width = 89
      Height = 28
      DataField = 'CWHL'
      DataSource = DS5
      TabOrder = 3
    end
  end
  object DBGrid1: TDBGridEh
    Left = 225
    Top = 49
    Width = 695
    Height = 499
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
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGrid1
    Options = []
    Page.BottomMargin = 0.300000000000000000
    Page.LeftMargin = 0.300000000000000000
    Page.RightMargin = 0.300000000000000000
    Page.TopMargin = 0.300000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageFooter.RightText.Strings = (
      '  &[Page]  /   &[Pages]')
    PageHeader.CenterText.Strings = (
      'CHECK LIST FOR ACCOUNT')
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'MS Sans Serif'
    PageHeader.Font.Style = []
    Units = MM
    Left = 480
    Top = 248
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E73696370673935305C64656666305C646566
      6C616E67313033335C6465666C616E676665313032387B5C666F6E7474626C7B
      5C66305C666E696C5C6663686172736574313336204D532053616E7320536572
      69663B7D7D0D0A5C766965776B696E64345C7563315C706172645C6C616E6731
      3032385C66305C6673313620255B54446174655D0D0A5C706172207D0D0A00}
  end
  object CheckQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select TSCD_KCRK.RKNO,TSCD_KCRK.ZSBH,TSCD_ZSZL.zsjc_yw,TSCD_KCRK' +
        '.DOCNO,TSCD.TSBH,TSCD_SB.YWPM,TSCD_KCRKS.VNPrice,TSCD_KCRKS.VNAC' +
        'C,CWHL,TSCD_KCRKS.USPrice,TSCD_KCRKS.USACC,CWHL_HG,TSCD_KCRKS.VN' +
        'Tax_HG,VNACC_Tax,MonthS'
      
        '       ,Substring(convert(varchar, TSCD_KCRK.CFMDATE ,111),1,7) ' +
        'as STYM ,Substring(convert(varchar,  DateAdd(month,MonthS, TSCD_' +
        'KCRK.CFMDATE ),111),1,7) as EDYM ,TSCD_KCRK.CFMID,TSCD_KCRK.CFMD' +
        'ATE,TSCD_KCRK.YN '
      'from TSCD_KCRK'
      'Left join TSCD_KCRKS on TSCD_KCRKS.RKNO=TSCD_KCRK.RKNO'
      'left join TSCD on TSCD.TSID=TSCD_KCRKS.TSID'
      'Left join TSCD_SB on TSCD_SB.SBBH=TSCD.SBBH'
      'Left join TSCD_ZSZL on TSCD_KCRK.ZSBH=TSCD_ZSZL.ZSDH'
      
        'where  convert(smalldatetime,convert(varchar,TSCD_KCRK.CFMDATE,1' +
        '11)) between '
      '      '#39'2018/10/01'#39' and '#39'2018/10/31'#39' '
      '       and TSCD_KCRK.YN='#39'5'#39)
    Left = 232
    Top = 56
    object CheckQryRKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object CheckQryzsjc_yw: TStringField
      FieldName = 'zsjc_yw'
      FixedChar = True
    end
    object CheckQryZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object CheckQryDOCNO: TStringField
      FieldName = 'DOCNO'
      FixedChar = True
    end
    object CheckQryTSBH: TStringField
      FieldName = 'TSBH'
      FixedChar = True
      Size = 10
    end
    object CheckQryYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object CheckQryUSPrice: TFloatField
      FieldName = 'USPrice'
    end
    object CheckQryVNPrice: TIntegerField
      FieldName = 'VNPrice'
    end
    object CheckQryUSACC: TFloatField
      FieldName = 'USACC'
    end
    object CheckQryVNACC: TFloatField
      FieldName = 'VNACC'
    end
    object CheckQryVNTax_HG: TFloatField
      FieldName = 'VNTax_HG'
    end
    object CheckQryCFMID: TStringField
      FieldName = 'CFMID'
      FixedChar = True
      Size = 10
    end
    object CheckQryCFMDATE: TDateTimeField
      FieldName = 'CFMDATE'
    end
    object CheckQryYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS1: TDataSource
    DataSet = CheckQry
    Left = 264
    Top = 56
  end
  object EntryQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'Select TSCD_KCRK.RKNO,TSCD_KCRK.ZSBH,TSCD_ZSZL.zsjc_yw,TSCD_KCRK' +
        '.DOCNO,TSCD.TSBH,TSCD_SB.YWPM,TSCD_KCRKS.VNPrice,TSCD_KCRKS.VNAC' +
        'C,CWHL,TSCD_KCRKS.USPrice,TSCD_KCRKS.USACC,CWHL_HG,TSCD_KCRKS.VN' +
        'Tax_HG,VNACC_Tax,MonthS'
      
        '       ,Substring(convert(varchar, TSCD.InDate ,111),1,7) as STY' +
        'M ,Substring(convert(varchar,  DateAdd(month,MonthS, TSCD.InDate' +
        ' ),111),1,7) as EDYM ,TSCD.InDate,TSCD_KCRKS.TSID '
      'from TSCD_KCRK'
      'Left join TSCD_KCRKS on TSCD_KCRKS.RKNO=TSCD_KCRK.RKNO'
      'left join TSCD on TSCD.TSID=TSCD_KCRKS.TSID'
      'Left join TSCD_SB on TSCD_SB.SBBH=TSCD.SBBH'
      'Left join TSCD_ZSZL on TSCD_KCRK.ZSBH=TSCD_ZSZL.ZSDH'
      
        'where  convert(smalldatetime,convert(varchar,TSCD_KCRK.CFMDATE,1' +
        '11)) between '
      '      '#39'2020/04/01'#39' and '#39'2020/04/30'#39' '
      '       and TSCD_KCRK.YN='#39'5'#39
      '')
    Left = 232
    Top = 136
    object EntryQryRKNO: TStringField
      DisplayWidth = 11
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object EntryQryZSBH: TStringField
      DisplayWidth = 6
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object EntryQryDOCNO: TStringField
      DisplayWidth = 18
      FieldName = 'DOCNO'
      FixedChar = True
    end
    object EntryQryTSBH: TStringField
      DisplayWidth = 10
      FieldName = 'TSBH'
      FixedChar = True
      Size = 10
    end
    object EntryQryYWPM: TStringField
      DisplayWidth = 12
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object EntryQryVNPrice: TIntegerField
      DisplayWidth = 10
      FieldName = 'VNPrice'
    end
    object EntryQryVNACC: TFloatField
      DisplayWidth = 10
      FieldName = 'VNACC'
    end
    object EntryQryCWHL: TIntegerField
      DisplayWidth = 6
      FieldName = 'CWHL'
    end
    object EntryQryUSPrice: TFloatField
      DisplayWidth = 8
      FieldName = 'USPrice'
    end
    object EntryQryUSACC: TFloatField
      DisplayWidth = 7
      FieldName = 'USACC'
    end
    object EntryQryCWHL_HG: TIntegerField
      DisplayWidth = 10
      FieldName = 'CWHL_HG'
    end
    object EntryQryVNTax_HG: TFloatField
      DisplayWidth = 10
      FieldName = 'VNTax_HG'
    end
    object EntryQryVNACC_Tax: TFloatField
      DisplayWidth = 10
      FieldName = 'VNACC_Tax'
    end
    object EntryQryMonthS: TIntegerField
      DisplayWidth = 7
      FieldName = 'MonthS'
    end
    object EntryQrySTYM: TStringField
      DisplayWidth = 7
      FieldName = 'STYM'
      FixedChar = True
      Size = 14
    end
    object EntryQryEDYM: TStringField
      DisplayWidth = 8
      FieldName = 'EDYM'
      FixedChar = True
      Size = 14
    end
    object EntryQryInDate: TDateTimeField
      DisplayWidth = 8
      FieldName = 'InDate'
    end
    object EntryQryTSID: TStringField
      DisplayWidth = 11
      FieldName = 'TSID'
      FixedChar = True
      Size = 11
    end
  end
  object DS2: TDataSource
    DataSet = EntryQry
    Left = 264
    Top = 136
  end
  object CWHL: TTable
    DatabaseName = 'DB'
    TableName = 'dbo.CWHL'
    Left = 232
    Top = 96
  end
  object DS5: TDataSource
    DataSet = CWHL
    Left = 264
    Top = 96
  end
  object Ptemp: TQuery
    DatabaseName = 'DB'
    Left = 440
    Top = 248
  end
  object TSCD_MonthQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select  TSCD_Month.KCYEAR,TSCD_Month.KCMONTH,TSCD.TSBH,TSCD_SB.D' +
        'WBH,TSCD.Qty,TSCD_SB.YWPM,TSCD_Month.VNACC,TSCD_Month.TSID '
      'from TSCD_Month'
      'left join TSCD on TSCD.TSID=TSCD_Month.TSID'
      'left join TSCD_SB on TSCD.SBBH=TSCD_SB.SBBH'
      'left join ('
      '  select TSCD_KCRKS.TSID'
      '  from TSCD_KCRK'
      '  Left join TSCD_KCRKS on TSCD_KCRKS.RKNO=TSCD_KCRK.RKNO'
      
        '  where  convert(smalldatetime,convert(varchar,TSCD_KCRK.CFMDATE' +
        ',111)) between '
      '      '#39'2018/10/01'#39' and '#39'2018/10/31'#39' '
      
        '       and TSCD_KCRK.YN='#39'5'#39' ) TSCD_KCRKS on TSCD_KCRKS.TSID=TSCD' +
        '_Month.TSID'
      'where TSCD_KCRKS.TSID is not null    '
      'order by TSCD_KCRKS.TSID  '
      '')
    Left = 232
    Top = 171
    object TSCD_MonthQryKCYEAR: TStringField
      FieldName = 'KCYEAR'
      FixedChar = True
      Size = 4
    end
    object TSCD_MonthQryKCMONTH: TStringField
      FieldName = 'KCMONTH'
      FixedChar = True
      Size = 2
    end
    object TSCD_MonthQryTSBH: TStringField
      FieldName = 'TSBH'
      FixedChar = True
      Size = 10
    end
    object TSCD_MonthQryDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object TSCD_MonthQryQty: TFloatField
      FieldName = 'Qty'
    end
    object TSCD_MonthQryYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object TSCD_MonthQryVNACC: TFloatField
      FieldName = 'VNACC'
    end
    object TSCD_MonthQryTSID: TStringField
      FieldName = 'TSID'
      FixedChar = True
      Size = 11
    end
  end
  object DS3: TDataSource
    DataSet = TSCD_MonthQry
    Left = 264
    Top = 171
  end
end
