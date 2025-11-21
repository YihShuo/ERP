object Report602: TReport602
  Left = 307
  Top = 180
  Width = 870
  Height = 500
  Caption = 'Report602'
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
      Top = 52
      Width = 65
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
      Left = 176
      Top = 50
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
      Left = 11
      Top = 4
      Width = 119
      Height = 19
      Caption = #25104#21697#20489#26085#22577#34920':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 463
      Top = 43
      Width = 31
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
      Left = 594
      Top = 44
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
    object Label7: TLabel
      Left = 320
      Top = 51
      Width = 65
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
    object Label3: TLabel
      Left = 319
      Top = 31
      Width = 65
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = #35330#21934#24288
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 176
      Top = 31
      Width = 60
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = #23458#20154#21517
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 0
      Top = 32
      Width = 68
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = #35330#21934#34399
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 489
      Top = 0
      Width = 217
      Height = 38
      TabOrder = 7
      Visible = False
      object Label10: TLabel
        Left = 100
        Top = 12
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
      object DTP3: TDateTimePicker
        Left = 8
        Top = 8
        Width = 89
        Height = 24
        Date = 39255.000000000000000000
        Format = 'yyyy/MM/dd'
        Time = 39255.000000000000000000
        TabOrder = 0
      end
      object DTP4: TDateTimePicker
        Left = 120
        Top = 8
        Width = 89
        Height = 24
        Date = 39255.000000000000000000
        Format = 'yyyy/MM/dd'
        Time = 39255.000000000000000000
        TabOrder = 1
      end
    end
    object Edit1: TEdit
      Left = 68
      Top = 40
      Width = 105
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 240
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
      Left = 496
      Top = 40
      Width = 89
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 3
    end
    object DTP2: TDateTimePicker
      Left = 616
      Top = 40
      Width = 89
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 4
    end
    object CBX4: TComboBox
      Left = 384
      Top = 40
      Width = 73
      Height = 21
      ItemHeight = 13
      TabOrder = 5
    end
    object CheckBox1: TCheckBox
      Left = 354
      Top = 10
      Width = 129
      Height = 17
      Caption = #21482#26597'X/F'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = CheckBox1Click
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
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        Color = clWhite
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        Title.Caption = #35330#21934#24288#21029'|GSBH'
        Title.TitleButton = True
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'Factory'
        Footers = <>
        Title.Caption = #29983#29986#24288'|Factory'
        Title.TitleButton = True
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
        FieldName = 'CSD'
        Footers = <>
        Title.Caption = 'CSD|CSD'
        Title.TitleButton = True
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'ETD'
        Footers = <>
        Title.Caption = #20986#36008#26085'|X/F'
        Title.TitleButton = True
        Width = 50
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
        Title.TitleButton = True
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
        Title.Caption = #20837#20489#38617#25976'|InQty'
        Title.TitleButton = True
        Width = 70
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
        Title.Caption = #20986#36008#38617#25976'|ExeQty'
        Title.TitleButton = True
        Width = 70
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
        Title.TitleButton = True
        Width = 70
      end
      item
        Color = 13696976
        EditButtons = <>
        FieldName = 'NowQty'
        Footers = <
          item
            FieldName = 'NowQty'
            ValueType = fvtSum
          end>
        Title.Caption = #30070#21069#38617#25976'|NowQty'
        Title.TitleButton = True
        Width = 63
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
        Title.TitleButton = True
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
        Title.Caption = #20837#20489#31665#25976'|InCTS'
        Title.TitleButton = True
        Width = 60
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
        Title.Caption = #20986#36008#31665#25976'|ExeCTS'
        Title.TitleButton = True
        Width = 60
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
        Title.TitleButton = True
        Width = 60
      end
      item
        Color = 14286847
        EditButtons = <>
        FieldName = 'NowCTS'
        Footers = <
          item
            FieldName = 'NowCTS'
            ValueType = fvtSum
          end>
        Title.Caption = #30070#21069#31665#25976'|NowCTS'
        Title.TitleButton = True
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'MaxInDate'
        Footers = <>
        Title.Caption = #28415#31665#26085'|MaxInDate'
        Title.TitleButton = True
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'MinInDate'
        Footers = <>
        Title.Caption = #20837#24235#39318#26085'|MinInDate'
        Title.TitleButton = True
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'InspectDate'
        Footers = <>
        Title.Caption = #39511#36008#26085#26399'|InspectDate'
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'InspectQty'
        Footers = <
          item
            FieldName = 'InspectQty'
            ValueType = fvtSum
          end>
        Title.Caption = #39511#36008#25976#37327'|InspectQty'
        Width = 57
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
    PageFooter.RightText.Strings = (
      '&[page] / &[pages]')
    PageHeader.CenterText.Strings = (
      #25104#21697#20489#26085#22577#34920
      'Warehouse Daily Report')
    PageHeader.Font.Charset = ANSI_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -24
    PageHeader.Font.Name = #26032#32048#26126#39636
    PageHeader.Font.Style = []
    PageHeader.RightText.Strings = (
      #31532'  &[Page]'#38913'  /   '#20849'  &[Pages]'#38913)
    Units = MM
    OnBeforePrint = PrintDBGridEh1BeforePrint
    Left = 152
    Top = 128
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E73696370673935305C64656666305C646566
      6C616E67313033335C6465666C616E676665313032387B5C666F6E7474626C7B
      5C66305C666E696C5C6663686172736574313336204D532053616E7320536572
      69663B7D7D0D0A5C766965776B696E64345C7563315C706172645C6C616E6731
      3032385C66305C6673313620255B54446174655D0D0A5C706172207D0D0A00}
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select DDZL.GSBH,YWCPMin.Factory,YWDD.DDBH,YWDD.YSBH,XXZL.Articl' +
        'e,XXZL.XieMing,DDZL.ShipDate as CSD,YWDD.ETD,LBZLS.YWSM as Count' +
        'ry,KFZL.KFJC,YWDD.Qty,YWBZPO.CTS'
      
        '       ,isnull(YWCPnow.nowQty,0) as NowQty,isnull(YWCPnow.nowCTS' +
        ',0) as NowCTS,isnull(YWCPStart.StartQty,0) as StartQty,isnull(YW' +
        'CPStart.StartCTS,0) as StartCTS'
      
        '       ,isnull(YWCPIn.InQty,0) as InQty,isnull(YWCPIn.InCTS,0) a' +
        's InCTS,isnull(YWCPExe.ExeQty,0) as ExeQty,isnull(YWCPExe.ExeCTS' +
        ',0) as ExeCTS '
      
        '       ,isnull(YWCPEnd.EndQty,0) as EndQty,isnull(YWCPEnd.EndCTS' +
        ',0) as EndCTS,YWCPMin.MinInDate,YWCPMax.MaxInDate,YWDD.InspectDa' +
        'te,YWDD.InspectQty'
      'from YWDD  with (nolock) '
      'left join DDZL  with (nolock) on YWDD.YSBH=DDZl.DDBH '
      
        'left join XXZL  with (nolock) on DDZl.XieXing=XXZl.XieXing and D' +
        'DZL.SheHao=XXZL.Shehao '
      
        'left join LBZLS  with (nolock) on LBZLS.LB='#39'06'#39' and LBZLS.LBDH=D' +
        'DZL.DDGB'
      'left join KFZL  with (nolock) on KFZL.KFDH=DDZL.KHBH '
      
        'left join (select YWCP.DDBH,sum(YWCP.Qty) as nowQty,count(YWCP.D' +
        'DBH) as nowCTS'
      '           from YWCP '
      '           where YWCP.SB<>'#39'3'#39
      
        '           group by YWCP.DDBH) YWCPNow  on YWCPNow.DDBH=YWDD.DDB' +
        'H '
      
        'left join (select YWCP.DDBH,sum(YWCP.Qty) as StartQty,count(YWCP' +
        '.DDBH) as StartCTS'
      '           from YWCP '
      
        '           where convert(smalldatetime,convert(varchar,YWCP.InDa' +
        'te,111)) < '
      '                 '#39'2009/05/31'#39
      
        '           group by YWCP.DDBH) YWCPStart on YWCPStart.DDBH=YWDD.' +
        'DDBH'
      
        'left join (select YWCP.DDBH,sum(YWCP.Qty) as ExeQty,count(YWCP.D' +
        'DBH) as ExeCTS'
      '           from YWCP '
      
        '           where convert(smalldatetime,convert(varchar,YWCP.ExeD' +
        'ate,111)) between '
      '                 '#39'2009/05/31'#39' and '#39'2009/05/31'#39
      
        '           group by YWCP.DDBH) YWCPexe on YWCPExe.DDBH=YWDD.DDBH' +
        ' '
      
        'left join (select YWCP.DDBH,sum(YWCP.Qty) as InQty,count(YWCP.DD' +
        'BH) as InCTS'
      '           from YWCP '
      
        '           where convert(smalldatetime,convert(varchar,YWCP.InDa' +
        'te,111)) between '
      '                 '#39'2009/05/31'#39' and '#39'2009/05/31'#39
      '           group by YWCP.DDBH)YWCPIn  on YWCPIn.DDBH=YWDD.DDBH'
      
        'left join (select YWCP.DDBH,sum(YWCP.Qty) as EndQty,count(YWCP.D' +
        'DBH) as EndCTS'
      '           from YWCP '
      
        '           where convert(smalldatetime,convert(varchar,YWCP.InDa' +
        'te,111)) <='
      '                 '#39'2009/05/31'#39
      '                 and SB<>'#39'3'#39
      
        '           group by YWCP.DDBH) YWCPEnd  on YWCPEnd.DDBH=YWDD.DDB' +
        'H'
      'left join (select YWBZPO.DDBH,sum(YWBZPO.CTS) as CTS '
      
        '           from (select distinct YWBZPOS.DDBH,YWBZPOS.XH,YWBZPOS' +
        '.CTS from YWBZPOS  with (nolock) ) YWBZPO  '
      
        '           group by YWBZPO.DDBH) YWBZPO on YWDD.DDBH=YWBZPO.DDBH' +
        ' '
      'left join (select YWCP.DDBH,min(InDate) as MinInDate '
      
        '                 ,substring(BDepartment.DepName,1,case when char' +
        'index('#39'_'#39',BDepartment.DepName)=0 '
      
        '                                then 4 else  charindex('#39'_'#39',BDepa' +
        'rtment.DepName)-1 end) as Factory'
      '           from YWCP '
      '           left join BDepartment on BDepartment.ID=YWCP.DepNO '
      '           where InDate is not null '
      
        '           group by YWCP.DDBH,substring(BDepartment.DepName,1,ca' +
        'se when charindex('#39'_'#39',BDepartment.DepName)=0 '
      
        '                                then 4 else  charindex('#39'_'#39',BDepa' +
        'rtment.DepName)-1 end)'
      '            ) YWCPMin on YWCPMin.DDBH=YWDD.DDBH '
      'left join (select CP.DDBH,max(CP.InDate) as MaxInDate '
      '           from YWCP CP'
      
        '           where not exists(select DDBH from YWCP where YWCP.DDB' +
        'H=CP.DDBH and YWCP.InDate is null) '
      '           group by CP.DDBH) YWCPMax on YWCPMax.DDBH=YWDD.DDBH '
      'where DDZL.DDBH like '#39'%'#39
      '      and KFZL.KFJC like '#39'%%'#39
      '      and DDZL.GSBH='#39'VA12'#39
      
        '      and not (YWCPNow.nowQty is null and  YWCPExe.ExeQty is nul' +
        'l '
      
        '               and YWCPIn.InQty is null and YWCPend.endQty is nu' +
        'll )'
      'order by YWDD.DDBH ')
    Left = 240
    Top = 96
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object Query1Factory: TStringField
      FieldName = 'Factory'
      FixedChar = True
      Size = 50
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
    object Query1CSD: TDateTimeField
      FieldName = 'CSD'
      DisplayFormat = 'MM/dd'
    end
    object Query1ETD: TDateTimeField
      FieldName = 'ETD'
      DisplayFormat = 'MM/dd'
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
    object Query1Qty: TFloatField
      FieldName = 'Qty'
      DisplayFormat = '##,#0'
    end
    object Query1CTS: TIntegerField
      FieldName = 'CTS'
      DisplayFormat = '##,#0'
    end
    object Query1StartQty: TIntegerField
      FieldName = 'StartQty'
      DisplayFormat = '##,#0'
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
    object Query1endCTS: TIntegerField
      FieldName = 'endCTS'
      DisplayFormat = '##,#0'
    end
    object Query1endQty: TIntegerField
      FieldName = 'endQty'
      DisplayFormat = '##,#0'
    end
    object Query1NowQty: TIntegerField
      FieldName = 'NowQty'
      DisplayFormat = '##,#0'
    end
    object Query1NowCTS: TIntegerField
      FieldName = 'NowCTS'
      DisplayFormat = '##,#0'
    end
    object Query1MaxInDate: TDateTimeField
      FieldName = 'MaxInDate'
      DisplayFormat = 'MM/dd'
    end
    object Query1MinInDate: TDateTimeField
      FieldName = 'MinInDate'
      DisplayFormat = 'MM/dd'
    end
    object Query1InspectDate: TDateTimeField
      FieldName = 'InspectDate'
      DisplayFormat = 'MM/dd'
    end
    object Query1InspectQty: TIntegerField
      FieldName = 'InspectQty'
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
