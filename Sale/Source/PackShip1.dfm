object PackShip: TPackShip
  Left = 344
  Top = 88
  Width = 1240
  Height = 623
  Caption = 'PackShip'
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
  object Splitter1: TSplitter
    Left = 377
    Top = 81
    Width = 4
    Height = 511
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 81
    Width = 377
    Height = 511
    Align = alLeft
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = 16765650
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 1
    ParentFont = False
    PopupMenu = PopupMenu2
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
        FieldName = 'DDBH'
        Footers = <>
        ReadOnly = True
        Width = 71
      end
      item
        Checkboxes = True
        EditButtons = <>
        FieldName = 'TPrint'
        Footers = <>
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'KHPO'
        Footers = <>
        ReadOnly = True
        Width = 105
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        ReadOnly = True
        Width = 146
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        ReadOnly = True
        Width = 112
      end
      item
        EditButtons = <>
        FieldName = 'YSSM'
        Footers = <>
        ReadOnly = True
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        ReadOnly = True
        Width = 48
      end
      item
        EditButtons = <>
        FieldName = 'CTS'
        Footers = <>
        ReadOnly = True
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'CBM'
        Footers = <>
        ReadOnly = True
        Width = 57
      end
      item
        EditButtons = <>
        FieldName = 'Country'
        Footers = <>
        ReadOnly = True
        Width = 122
      end
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        ReadOnly = True
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'NW'
        Footers = <>
        ReadOnly = True
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'GW'
        Footers = <>
        ReadOnly = True
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'KFJC'
        Footers = <>
        ReadOnly = True
        Width = 93
      end>
  end
  object Panel2: TPanel
    Left = 381
    Top = 81
    Width = 851
    Height = 511
    Align = alClient
    TabOrder = 1
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 4
      Height = 509
      Align = alLeft
      TabOrder = 0
    end
    object DBGridEh2: TDBGridEh
      Left = 5
      Top = 1
      Width = 845
      Height = 509
      Align = alClient
      DataSource = DS2
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = 16764622
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -13
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      FrozenCols = 4
      ParentFont = False
      PopupMenu = PopupMenu1
      SumList.Active = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 1232
    Height = 81
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 14
      Width = 78
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SpecNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 194
      Top = 14
      Width = 60
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Customer:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 360
      Top = 50
      Width = 55
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CUFT:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 32
      Top = 50
      Width = 54
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Article:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 192
      Top = 50
      Width = 62
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Buyno:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 359
      Top = 14
      Width = 55
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'X/F Date:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 520
      Top = 16
      Width = 17
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'To'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 88
      Top = 11
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
      Left = 256
      Top = 11
      Width = 97
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
      Left = 667
      Top = 25
      Width = 81
      Height = 41
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
    object Edit3: TEdit
      Left = 417
      Top = 47
      Width = 96
      Height = 24
      Color = clInactiveBorder
      ReadOnly = True
      TabOrder = 3
    end
    object CB1: TCheckBox
      Left = 526
      Top = 50
      Width = 67
      Height = 17
      Caption = 'All'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object Edit4: TEdit
      Left = 88
      Top = 45
      Width = 96
      Height = 24
      TabOrder = 5
    end
    object Edit5: TEdit
      Left = 256
      Top = 47
      Width = 98
      Height = 24
      TabOrder = 6
    end
    object DTP1: TDateTimePicker
      Left = 416
      Top = 12
      Width = 97
      Height = 24
      Date = 39783.568310717590000000
      Format = 'yyyy/MM/dd'
      Time = 39783.568310717590000000
      TabOrder = 7
    end
    object DTP2: TDateTimePicker
      Left = 544
      Top = 12
      Width = 97
      Height = 24
      Date = 39783.569282222220000000
      Format = 'yyyy/MM/dd'
      Time = 39783.569282222220000000
      TabOrder = 8
    end
  end
  object YWDD: TQuery
    CachedUpdates = True
    AfterScroll = YWDDAfterScroll
    OnNewRecord = YWDDNewRecord
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'select YWDD.YSBH as DDBH, XXZL.XieMing,DDZL.Pairs as Qty,XXZL.Xi' +
        'eXing,DDZL.KHBH,DDZL.ShipDate,KFZL.KFJC,0 TPrint, '
      
        '       DDZL.KHPO,LBZLS.YWSM as Country,DDZL.YN,XXZL.Article,Max(' +
        'YWDD.CGNO) as CGNO,DDZL.GSBH,XXZL.YSSM '
      
        '       ,sum(YWBZPO.CTS) as CTS,sum(YWBZPO.CTS*YWBZPO.NW) as NW,s' +
        'um(YWBZPo.CTS*YWBZPO.GW) as GW,sum(round(YWBZPO.CBM,4)*YWBZPO.CT' +
        'S) as CBM '
      'from YWDD'
      'left join DDZL on YWDD.YSBH=DDZl.DDBH '
      'left join ZLZL  on ZLZL.DDBH=DDZL.DDBH'
      
        'left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZ' +
        'L.SheHao'
      'left join LBZLS on LBZLS.LB='#39'06'#39' and LBZLS.LBDH=DDZL.DDGB'
      'left join KFZL on KFZL.KFDH=DDZL.KHBH '
      'left join YWBZPO on YWBZPO.DDBH=YWDD.DDBH '
      'where DDZL.DDBH like '#39'Y1804-0124%'#39
      '      and KFZL.KFJC like '#39'%%'#39
      
        '      and convert(smalldatetime,convert(varchar,YWDD.ETD,111)) b' +
        'etween '
      '      '#39'2019/08/01'#39'and '#39'2019/08/31'#39
      
        '      and exists(select DDBH from YWBZPOS where YWBZPOS.DDBH=YWD' +
        'D.DDBH)'
      
        '       and exists(select DDBH from YWBZPO where YWBZPO.DDBH=YWDD' +
        '.DDBH)'
      
        'group by YWDD.YSBH, XXZL.XieMing,DDZL.Pairs,XXZL.XieXing,DDZL.KH' +
        'BH,DDZL.ShipDate,KFZL.KFJC, '
      
        '          DDZL.KHPO,LBZLS.YWSM,DDZL.YN,XXZL.Article,DDZL.GSBH,XX' +
        'ZL.YSSM '
      'order by YWDD.DDBH')
    UpdateObject = UpdateSQL1
    Left = 249
    Top = 224
    object YWDDDDBH: TStringField
      DisplayLabel = 'OrderNO'
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object YWDDKHPO: TStringField
      DisplayLabel = 'PO#'
      FieldName = 'KHPO'
      FixedChar = True
      Size = 25
    end
    object YWDDXieMing: TStringField
      DisplayLabel = 'Style'
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object YWDDArticle: TStringField
      DisplayLabel = 'SKU#'
      FieldName = 'Article'
      FixedChar = True
    end
    object YWDDYSSM: TStringField
      DisplayLabel = 'Color'
      FieldName = 'YSSM'
      FixedChar = True
      Size = 40
    end
    object YWDDCTS: TIntegerField
      DisplayLabel = 'CTN'
      FieldName = 'CTS'
      DisplayFormat = '##,#0'
    end
    object YWDDCBM: TCurrencyField
      FieldName = 'CBM'
      DisplayFormat = '##,#0.000'
    end
    object YWDDCountry: TStringField
      FieldName = 'Country'
      FixedChar = True
      Size = 50
    end
    object YWDDGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object YWDDNW: TCurrencyField
      FieldName = 'NW'
      DisplayFormat = '##,#0.00'
    end
    object YWDDGW: TCurrencyField
      FieldName = 'GW'
      DisplayFormat = '##,#0.00'
    end
    object YWDDKFJC: TStringField
      DisplayLabel = 'Customer'
      FieldName = 'KFJC'
      FixedChar = True
    end
    object YWDDTPrint: TIntegerField
      FieldName = 'TPrint'
    end
    object YWDDQty: TIntegerField
      FieldName = 'Qty'
    end
  end
  object YWBZPO: TQuery
    AfterScroll = YWBZPOAfterScroll
    DatabaseName = 'DB'
    SQL.Strings = (
      'select POS.DDBH,POS.XH,POS.CTS'
      ',max(case when POS.DDCC='#39'02'#39
      ' then POS.Qty end ) as '#39'02'#39
      ',max(case when POS.DDCC='#39'03'#39
      ' then POS.Qty end ) as '#39'03'#39
      ',max(case when POS.DDCC='#39'04'#39
      ' then POS.Qty end ) as '#39'04'#39
      ',max(case when POS.DDCC='#39'05'#39
      ' then POS.Qty end ) as '#39'05'#39
      ',max(case when POS.DDCC='#39'05.5'#39
      ' then POS.Qty end ) as '#39'05.5'#39
      
        ',YWBZPO.CLBH,YWBZPO.L,YWBZPO.W,YWBZPO.H,YWBZPO.NW,YWBZPO.GW,YWBZ' +
        'PO.CTQ,YWBZPO.CTZ,YWBZPO.CBM'
      'from (select DDBH,null as XH,DDCC,Qty,null as CTS '
      '      from YWDDS where YWDDS.DDBH='#39'LT0809017'#39
      '                       and Qty<>0'
      '      union    '
      '      select DDBH,XH,DDCC,Qty,CTS '
      '      from YWBZPOS where YWBZPOS.DDBH='#39'LT0809017'#39
      ' ) POS   '
      'left join YWBZPO on YWBZPO.DDBH=POS.DDBH and YWBZPO.XH=POS.XH '
      
        'group by  POS.DDBH,POS.XH,POS.CTS,YWBZPO.CTQ,YWBZPO.CTZ,YWBZPO.N' +
        'W,'
      'YWBZPO.GW,YWBZPO.L,YWBZPO.W,YWBZPO.H,YWBZPO.CBM,YWBZPO.CLBH ')
    Left = 385
    Top = 225
  end
  object DS1: TDataSource
    DataSet = YWDD
    Left = 281
    Top = 225
  end
  object DS2: TDataSource
    DataSet = YWBZPO
    Left = 425
    Top = 225
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update YWBZPO'
      'set'
      '  DDBH = :DDBH,'
      '  XH = :XH,'
      '  CLBH = :CLBH,'
      '  CTQ = :CTQ,'
      '  CTZ = :CTZ,'
      '  CTS = :CTS,'
      '  NW = :NW,'
      '  GW = :GW,'
      '  L = :L,'
      '  W = :W,'
      '  H = :H,'
      '  CBM = :CBM,'
      '  USERDATE = :USERDATE,'
      '  USERID = :USERID,'
      '  YN = :YN'
      'where'
      '  DDBH = :OLD_DDBH')
    InsertSQL.Strings = (
      'insert into YWBZPO'
      
        '  (DDBH, XH, CLBH, CTQ, CTZ, CTS, NW, GW, L, W, H, CBM, USERDATE' +
        ', '
      'USERID, '
      '   YN)'
      'values'
      
        '  (:DDBH, :XH, :CLBH, :CTQ, :CTZ, :CTS, :NW, :GW, :L, :W, :H, :C' +
        'BM, :USERDATE, '
      '   :USERID, :YN)')
    DeleteSQL.Strings = (
      'delete from YWBZPO'
      'where'
      '  DDBH = :OLD_DDBH')
    Left = 385
    Top = 257
  end
  object PopupMenu1: TPopupMenu
    Left = 521
    Top = 257
    object N1: TMenuItem
      Caption = 'Excel'
      OnClick = N1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 208
    Top = 224
    object CheckNWGW1: TMenuItem
      Caption = 'N1 Master Excel'
      OnClick = CheckNWGW1Click
    end
    object DetailExcel1: TMenuItem
      Caption = 'N2 Detail Excel'
      OnClick = DetailExcel1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object N3: TMenuItem
      Caption = 'N3 Select All'
      OnClick = N3Click
    end
    object N4: TMenuItem
      Caption = 'N4 Cancel All'
      OnClick = N4Click
    end
  end
  object SaveDialog1: TSaveDialog
    Filter = 'txt|txt|csv|csv|htm|htm|rtf|rtf|xls|xls'
    Left = 352
    Top = 128
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 521
    Top = 225
  end
  object UpdateSQL2: TUpdateSQL
    Left = 250
    Top = 256
  end
end
