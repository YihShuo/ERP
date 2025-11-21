object ScanAccountMon: TScanAccountMon
  Left = 319
  Top = 211
  Width = 870
  Height = 500
  Caption = 'ScanAccountMon'
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
    Width = 862
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 42
      Width = 86
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'OrderNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 196
      Top = 42
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
    object Label5: TLabel
      Left = 16
      Top = 8
      Width = 195
      Height = 19
      Caption = #25104#21697#20489#26376#20221#36914#20986#26126#32048#34920':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 472
      Top = 42
      Width = 40
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'From'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 600
      Top = 44
      Width = 27
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
    object Label7: TLabel
      Left = 344
      Top = 43
      Width = 54
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'GSBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 88
      Top = 40
      Width = 105
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 258
      Top = 40
      Width = 81
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Button1: TButton
      Left = 720
      Top = 32
      Width = 73
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
    object DTP1: TDateTimePicker
      Left = 512
      Top = 40
      Width = 89
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DTP2: TDateTimePicker
      Left = 632
      Top = 40
      Width = 89
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object CBX4: TComboBox
      Left = 400
      Top = 40
      Width = 73
      Height = 21
      ItemHeight = 13
      TabOrder = 5
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 862
    Height = 396
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 3
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    UseMultiTitle = True
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        Title.Caption = #35330#21934#24288#21029'|GSBH'
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'Factory'
        Footers = <>
        Title.Caption = #29983#29986#24288'|Factory'
        Width = 46
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <
          item
            FieldName = 'DDBH'
            ValueType = fvtCount
          end>
        Title.Caption = #35330#21934#32232#34399'|DDBH'
        Title.TitleButton = True
        Width = 77
      end
      item
        EditButtons = <>
        FieldName = 'YSBH'
        Footers = <>
        Title.Caption = #21046#20196#32232#34399'|YSBH'
        Title.TitleButton = True
        Width = 77
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Title.Caption = 'SKU#|Article'
        Title.TitleButton = True
        Width = 108
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.Caption = #38795#22411#21517#31281'|XieMing'
        Title.TitleButton = True
        Width = 141
      end
      item
        EditButtons = <>
        FieldName = 'ETD'
        Footers = <>
        Title.Caption = #20986#36008#26085'|ETD'
        Title.TitleButton = True
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'Country'
        Footers = <>
        Title.Caption = #20986#36008#22283#23478'|Country'
        Title.TitleButton = True
        Width = 106
      end
      item
        EditButtons = <>
        FieldName = 'KFJC'
        Footers = <>
        Title.Caption = #23458#25142#31777#31281'|KFJC'
        Title.TitleButton = True
        Width = 85
      end
      item
        Color = 13696976
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        Title.Caption = #35330#21934#38617#25976'|Qty'
        Title.TitleButton = True
        Width = 70
      end
      item
        Color = 13696976
        EditButtons = <>
        FieldName = 'StartQty'
        Footers = <
          item
            FieldName = 'StartQty'
            ValueType = fvtSum
          end>
        Title.Caption = #26399#21021#38617#25976'|StartQty'
        Width = 70
      end
      item
        Color = 13696976
        EditButtons = <>
        FieldName = 'InQty'
        Footers = <
          item
            FieldName = 'InQty'
            ValueType = fvtSum
          end>
        Title.Caption = #26412#26399#20837#20489#38617#25976'|InQty'
        Width = 92
      end
      item
        Color = 13696976
        EditButtons = <>
        FieldName = 'ExeQty'
        Footers = <
          item
            FieldName = 'ExeQty'
            ValueType = fvtSum
          end>
        Title.Caption = #26412#26399#32317#20986#36008#25976'|ExeQty'
        Width = 83
      end
      item
        Color = 13696976
        EditButtons = <>
        FieldName = 'endQty'
        Footers = <
          item
            FieldName = 'endQty'
            ValueType = fvtSum
          end>
        Title.Caption = #26399#26410#38617#25976'|endQty'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'DZQty'
        Footers = <
          item
            FieldName = 'DZQty'
            ValueType = fvtSum
          end>
        Title.Caption = #30701#35037#25976#37327'|DZQty'
        Width = 57
      end
      item
        Color = 14286847
        EditButtons = <>
        FieldName = 'CTS'
        Footers = <
          item
            FieldName = 'CTS'
            ValueType = fvtSum
          end>
        Title.Caption = #35330#21934#31665#25976'|CTS'
        Title.TitleButton = True
        Width = 60
      end
      item
        Color = 14286847
        EditButtons = <>
        FieldName = 'StartCTS'
        Footers = <
          item
            FieldName = 'StartCTS'
            ValueType = fvtSum
          end>
        Title.Caption = #26399#21021#31665#25976'|StartCTS'
        Width = 60
      end
      item
        Color = 14286847
        EditButtons = <>
        FieldName = 'InCTS'
        Footers = <
          item
            FieldName = 'InCTS'
            ValueType = fvtSum
          end>
        Title.Caption = #26412#26399#20837#20489#31665#25976'|InCTS'
        Width = 85
      end
      item
        Color = 14286847
        EditButtons = <>
        FieldName = 'ExeCTS'
        Footers = <
          item
            FieldName = 'ExeCTS'
            ValueType = fvtSum
          end>
        Title.Caption = #26412#26399#32317#20986#36008#25976'|ExeCTS'
        Width = 88
      end
      item
        Color = 14286847
        EditButtons = <>
        FieldName = 'endCTS'
        Footers = <
          item
            FieldName = 'endCTS'
            ValueType = fvtSum
          end>
        Title.Caption = #26399#26410#31665#25976'|endCTS'
        Width = 60
      end>
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGridEh1
    Options = []
    Page.BottomMargin = 0.200000000000000000
    Page.LeftMargin = 0.200000000000000000
    Page.RightMargin = 0.200000000000000000
    Page.TopMargin = 0.200000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.CenterText.Strings = (
      #25104#21697#20489#26376#36914#20986#26126#32048#34920
      'Warehouse Monthly In/Out Report')
    PageHeader.Font.Charset = ANSI_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -21
    PageHeader.Font.Name = #26032#32048#26126#39636
    PageHeader.Font.Style = []
    PageHeader.RightText.Strings = (
      #31532'  &[Page]'#38913'  /   '#20849'  &[Pages]'#38913)
    Units = MM
    Left = 152
    Top = 128
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = ScanStockBrand.DS1
    SQL.Strings = (
      
        'select DDZL.GSBH,YWDD.DDBH,YWDD.YSBH,XXZL.Article,XXZL.XieMing,Y' +
        'WDD.ETD,LBZLS.YWSM as Country,KFZL.KFJC,YWDD.Qty,YWBZPO.CTS'
      
        '       ,isnull(YWCPnow.nowInQty,0)-isnull(YWCPendIn.endInQty,0)+' +
        'isnull(YWCPendExe.endExeQty,0) as endQty,YWCPMonIn.Factory'
      
        '       ,isnull(YWCPnow.nowInCTS,0)-isnull(YWCPendIn.endInCTS,0)+' +
        'isnull(YWCPendExe.endExeCTS,0) as endCTS '
      
        '       ,isnull(YWCPStartIn.StartQty,0) as StartQty,isnull(YWCPSt' +
        'artIn.StartCTS,0) as StartCTS,YWCPDZ.DZQty '
      
        '       ,isnull(YWCPMonIn.MonInQty,0) as InQty,isnull(YWCPMonIn.M' +
        'onInCTS,0) as InCTS,isnull(YWCPMonExe.MonExeQty,0) as ExeQty, is' +
        'null(YWCPMonExe.MonExeCTS,0) as ExeCTS'
      'from YWDD  with (nolock) '
      'left join DDZL  with (nolock) on YWDD.YSBH=DDZl.DDBH '
      
        'left join XXZL  with (nolock) on DDZl.XieXing=XXZl.XieXing and D' +
        'DZL.SheHao=XXZL.Shehao '
      
        'left join LBZLS  with (nolock) on LBZLS.LB='#39'06'#39' and LBZLS.LBDH=D' +
        'DZL.DDGB'
      'left join KFZL  with (nolock) on KFZL.KFDH=DDZL.KHBH '
      
        'left join (select YWCP.DDBH,sum(YWCP.Qty) as nowInQty,count(YWCP' +
        '.DDBH) as nowInCTS'
      '           from YWCP '
      '           where YWCP.SB<>'#39'3'#39
      
        '           group by YWCP.DDBH) YWCPNow  on YWCPNow.DDBH=YWDD.DDB' +
        'H '
      
        'left join (select YWCP.DDBH,sum(YWCP.Qty) as StartQty,count(YWCP' +
        '.DDBH) as StartCTS'
      '           from YWCP '
      
        '           where convert(smalldatetime,convert(varchar,YWCP.InDa' +
        'te,111)) <'#39'2009/08/01'#39
      
        '                 and (ExeDate is null or convert(smalldatetime,c' +
        'onvert(varchar,YWCP.ExeDate,111)) >='
      '                      '#39'2009/08/01'#39')'
      
        '           group by YWCP.DDBH) YWCPStartin on YWCPStartIn.DDBH=Y' +
        'WDD.DDBH'
      
        'left join (select YWCP.DDBH,sum(YWCP.Qty) as endInQty,count(YWCP' +
        '.DDBH) as endInCTS'
      '           from YWCP '
      
        '           where convert(smalldatetime,convert(varchar,YWCP.InDa' +
        'te,111)) >'
      '                 '#39'2009/08/31'#39
      
        '           group by YWCP.DDBH) YWCPendin on YWCPendIn.DDBH=YWDD.' +
        'DDBH'
      
        'left join (select YWCP.DDBH,sum(YWCP.Qty) as endExeQty,count(YWC' +
        'P.DDBH) as endExeCTS'
      '           from YWCP '
      
        '           where convert(smalldatetime,convert(varchar,YWCP.ExeD' +
        'ate,111)) >'
      '                 '#39'2009/08/31'#39
      
        '           group by YWCP.DDBH) YWCPendexe on YWCPendExe.DDBH=YWD' +
        'D.DDBH '
      
        'left join (select YWCP.DDBH,sum(YWCP.Qty) as MonInQty,count(YWCP' +
        '.DDBH) as MonInCTS'
      
        '                 ,substring(BDepartment.DepName,1,case when char' +
        'index('#39'_'#39',BDepartment.DepName)=0 '
      
        '                                then 4 else  charindex('#39'_'#39',BDepa' +
        'rtment.DepName)-1 end) as Factory'
      '           from YWCP '
      '           left join BDepartment on BDepartment.ID=YWCP.DepNO '
      
        '           where convert(smalldatetime,convert(varchar,YWCP.InDa' +
        'te,111)) between '
      '                 '#39'2009/08/01'#39' and '#39'2009/08/31'#39
      
        '           group by YWCP.DDBH,substring(BDepartment.DepName,1,ca' +
        'se when charindex('#39'_'#39',BDepartment.DepName)=0 '
      
        '                                then 4 else  charindex('#39'_'#39',BDepa' +
        'rtment.DepName)-1 end) '
      '                    )YWCPMonIn  on YWCPMonIn.DDBH=YWDD.DDBH'
      
        'left join (select YWCP.DDBH,sum(YWCP.Qty) as MonExeQty,count(YWC' +
        'P.DDBH) as MonExeCTS'
      '           from YWCP '
      
        '           where convert(smalldatetime,convert(varchar,YWCP.ExeD' +
        'ate,111)) between '
      '                 '#39'2009/08/01'#39' and '#39'2009/08/31'#39
      
        '           group by YWCP.DDBH) YWCPMonexe  on YWCPMonExe.DDBH=YW' +
        'DD.DDBH'
      'left join (select YWBZPO.DDBH,sum(YWBZPO.CTS) as CTS '
      
        '           from (select distinct YWBZPOS.DDBH,YWBZPOS.XH,YWBZPOS' +
        '.CTS from YWBZPOS  with (nolock) ) YWBZPO  '
      
        '           group by YWBZPO.DDBH) YWBZPO on YWDD.DDBH=YWBZPO.DDBH' +
        ' '
      
        'left join (select YWCP.DDBH,sum(YWDDSDZ.Qty) as DZQty from YWDDS' +
        'DZ '
      '           left join YWCP on YWCP.CartonBar=YWDDSDZ.CartonBar '
      '           group by YWCP.DDBH ) YWCPDZ on YWCPDZ.DDBH=YWDD.DDBH '
      'where DDZL.DDBH like '#39'%'#39
      '      and KFZL.KFJC like '#39'%%'#39
      '      and DDZL.GSBH='#39'VA3'#39
      
        '      and not (YWCPNow.nowInQty is null and YWCPenDIN.endInQty i' +
        's null and YWCPendExe.endExeQty is null '
      
        '               and YWCPMonIn.MonInQty is null and YWCPMonExe.Mon' +
        'ExeQty is null )'
      'order by YWDD.DDBH ')
    Left = 240
    Top = 96
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
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
    object Query1ETD: TDateTimeField
      FieldName = 'ETD'
    end
    object Query1Country: TStringField
      FieldName = 'Country'
      FixedChar = True
      Size = 50
    end
    object Query1KFJC: TStringField
      FieldName = 'KFJC'
      FixedChar = True
    end
    object Query1Factory: TStringField
      FieldName = 'Factory'
      FixedChar = True
      Size = 50
    end
    object Query1Qty: TFloatField
      FieldName = 'Qty'
      DisplayFormat = '##,#0'
    end
    object Query1CTS: TIntegerField
      FieldName = 'CTS'
      DisplayFormat = '##,#0'
    end
    object Query1endQty: TIntegerField
      FieldName = 'endQty'
      DisplayFormat = '##,#0'
    end
    object Query1endCTS: TIntegerField
      FieldName = 'endCTS'
      DisplayFormat = '##,#0'
    end
    object Query1StartQty: TIntegerField
      FieldName = 'StartQty'
      DisplayFormat = '##,#0'
    end
    object Query1DZQty: TIntegerField
      FieldName = 'DZQty'
    end
    object Query1StartCTS: TIntegerField
      FieldName = 'StartCTS'
      DisplayFormat = '##,#0'
    end
    object Query1InQty: TIntegerField
      FieldName = 'InQty'
      DisplayFormat = '##,#0'
    end
    object Query1InCTS: TIntegerField
      FieldName = 'InCTS'
      DisplayFormat = '##,#0'
    end
    object Query1ExeQty: TIntegerField
      FieldName = 'ExeQty'
      DisplayFormat = '##,#0'
    end
    object Query1ExeCTS: TIntegerField
      FieldName = 'ExeCTS'
      DisplayFormat = '##,#0'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 280
    Top = 96
  end
  object PopupMenu1: TPopupMenu
    Left = 176
    Top = 184
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
    object Print1: TMenuItem
      Caption = 'Print'
      OnClick = Print1Click
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 256
    Top = 168
  end
end
