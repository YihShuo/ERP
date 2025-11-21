object DeliverAccount: TDeliverAccount
  Left = 293
  Top = 317
  Width = 1435
  Height = 443
  Caption = 'DeliverAccount'
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
    Width = 1427
    Height = 89
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 0
      Top = 18
      Width = 62
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo:'
    end
    object Label3: TLabel
      Left = 173
      Top = 18
      Width = 89
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatName:'
    end
    object Label1: TLabel
      Left = 176
      Top = 60
      Width = 84
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Year:'
    end
    object Label4: TLabel
      Left = 315
      Top = 61
      Width = 52
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Month:'
    end
    object Label5: TLabel
      Left = 0
      Top = 56
      Width = 62
      Height = 16
      Alignment = taRightJustify
      Caption = 'SCBH:'
    end
    object Label6: TLabel
      Left = 480
      Top = 18
      Width = 75
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'XieMing'
    end
    object Label7: TLabel
      Left = 416
      Top = 60
      Width = 58
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'GSBH:'
    end
    object Label8: TLabel
      Left = 553
      Top = 59
      Width = 64
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Article'
    end
    object Button1: TButton
      Left = 744
      Top = 51
      Width = 73
      Height = 33
      Caption = 'QUERY'
      TabOrder = 6
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 64
      Top = 16
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object Edit2: TEdit
      Left = 264
      Top = 16
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyPress = Edit2KeyPress
    end
    object CBX2: TComboBox
      Left = 261
      Top = 56
      Width = 57
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 15
      TabOrder = 4
      Text = '2021'
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
        '2029'
        '2030')
    end
    object CBX3: TComboBox
      Left = 368
      Top = 57
      Width = 49
      Height = 24
      DropDownCount = 12
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 5
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
    object Edit4: TEdit
      Left = 65
      Top = 53
      Width = 102
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 3
      OnKeyPress = Edit4KeyPress
    end
    object Button2: TButton
      Left = 744
      Top = 11
      Width = 73
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 7
      OnClick = Button2Click
    end
    object Edit5: TEdit
      Left = 560
      Top = 16
      Width = 113
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
      OnKeyPress = Edit5KeyPress
    end
    object CB1: TComboBox
      Left = 477
      Top = 56
      Width = 73
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      TabOrder = 8
      Text = 'VTX'
    end
    object Edit3: TEdit
      Left = 376
      Top = 16
      Width = 97
      Height = 24
      TabOrder = 9
    end
    object Edit6: TEdit
      Left = 619
      Top = 57
      Width = 113
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 10
      OnKeyPress = Edit5KeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 89
    Width = 1427
    Height = 323
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object Splitter1: TSplitter
      Left = 1034
      Top = 1
      Width = 7
      Height = 321
    end
    object DBGrid2: TDBGridEh
      Left = 1041
      Top = 1
      Width = 385
      Height = 321
      Align = alClient
      DataSource = DS2
      Flat = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      FooterColor = 16765136
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      FrozenCols = 1
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
      ParentFont = False
      PopupMenu = PopupMenu1
      ReadOnly = True
      RowHeight = 4
      RowLines = 2
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      OnGetCellParams = DBGrid2GetCellParams
      Columns = <
        item
          EditButtons = <>
          FieldName = 'Article'
          Footers = <>
          Title.Caption = 'SKU#|Article'
          Width = 54
        end
        item
          EditButtons = <>
          FieldName = 'XieMing'
          Footers = <>
          Title.Caption = #38795#22411#21517#31281'|XieMing'
          Width = 110
        end
        item
          DisplayFormat = '##,#0'
          EditButtons = <>
          FieldName = 'Pairs'
          Footer.FieldName = 'Pairs'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = #35330#21934#38617#25976'|Pairs'
        end
        item
          DisplayFormat = '##,#0.00'
          EditButtons = <>
          FieldName = 'USACC'
          Footer.DisplayFormat = '##,#0.00'
          Footer.FieldName = 'USACC'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = #32654#37329#37329#38989'|USACC'
          Width = 68
        end
        item
          DisplayFormat = '##,#0.00'
          EditButtons = <>
          FieldName = 'PairUSACC'
          Footers = <>
          Title.Caption = #21934#38617#32654#37329'|PairUSACC'
          Width = 62
        end>
    end
    object DBGrid1: TDBGridEh
      Left = 1
      Top = 1
      Width = 1033
      Height = 321
      Align = alLeft
      DataSource = DS1
      Flat = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      FooterColor = 16765136
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      FrozenCols = 1
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghFitRowHeightToText, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
      ParentFont = False
      PopupMenu = PopupMenu1
      ReadOnly = True
      RowHeight = 4
      RowLines = 2
      SumList.Active = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      OnGetCellParams = DBGrid2GetCellParams
      Columns = <
        item
          EditButtons = <>
          FieldName = 'ZLBH'
          Footers = <>
          Title.Caption = #21046#20196#32232#34399'|ZLBH'
          Title.TitleButton = True
          Width = 71
        end
        item
          EditButtons = <>
          FieldName = 'Article'
          Footers = <>
          Title.Caption = 'SKU#|Article'
          Title.TitleButton = True
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = 'XieMing'
          Footers = <>
          Title.Caption = #38795#22411#21517#31281'|XieMing'
          Title.TitleButton = True
          Width = 112
        end
        item
          EditButtons = <>
          FieldName = 'Pairs'
          Footers = <>
          Title.Caption = #35330#21934#38617#25976'|Pairs'
          Width = 55
        end
        item
          EditButtons = <>
          FieldName = 'CLBH'
          Footer.FieldName = 'CLBH'
          Footer.ValueType = fvtCount
          Footers = <>
          Title.Caption = #26448#26009#32232#34399'|CLBH'
          Title.TitleButton = True
          Width = 81
        end
        item
          EditButtons = <>
          FieldName = 'YWPM'
          Footers = <>
          Title.Caption = #26448#26009#33521#25991#21517#31281'|YWPM'
          Title.TitleButton = True
          Width = 308
        end
        item
          EditButtons = <>
          FieldName = 'DWBH'
          Footers = <>
          Title.Caption = #21934#20301'|DWBH'
          Title.TitleButton = True
          Width = 51
        end
        item
          EditButtons = <>
          FieldName = 'CLSL'
          Footers = <>
          Title.Caption = #21046#20196#25976#37327'|CLSL'
          Title.TitleButton = True
          Width = 61
        end
        item
          EditButtons = <>
          FieldName = 'Qty'
          Footers = <>
          Title.Caption = #38936#26009#25976#37327'|Qty'
          Title.TitleButton = True
          Width = 59
        end
        item
          EditButtons = <>
          FieldName = 'RepQty'
          Footers = <>
          Title.Caption = #35036#26009#25976'|RepQty'
          Width = 59
        end
        item
          EditButtons = <>
          FieldName = 'Person'
          Footers = <
            item
              FieldName = 'Person'
              ValueType = fvtAvg
            end>
          Title.Caption = #38936#26009#27604#29575'|Person'
          Title.TitleButton = True
        end
        item
          EditButtons = <>
          FieldName = 'USPrice'
          Footers = <>
          Title.Caption = #32654#37329#21934#20729'|USPrice'
        end
        item
          EditButtons = <>
          FieldName = 'USACC'
          Footers = <
            item
              FieldName = 'USACC'
              ValueType = fvtSum
            end>
          Title.Caption = #32654#37329#37329#38989'|USACC'
          Width = 62
        end
        item
          EditButtons = <>
          FieldName = 'ACCRep'
          Footers = <
            item
              FieldName = 'ACCRep'
              ValueType = fvtSum
            end>
          Title.Caption = #35036#26009#37329#38989'|ACCRep'
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = 'ZWPM'
          Footers = <>
          Title.Caption = #20013#25991#21517#31281'|ZWPM'
          Width = 275
        end>
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 296
    Top = 120
  end
  object Query1: TQuery
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from #OrdCLCWDJ  OrdCL '
      'order by OrdCL.ZLBH,OrdCL.CLBH')
    Left = 296
    Top = 160
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1CLSL: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0'
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object Query1RepQty: TFloatField
      FieldKind = fkCalculated
      FieldName = 'RepQty'
      DisplayFormat = '##,#0.00'
      Calculated = True
    end
    object Query1Person: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Person'
      DisplayFormat = '#,##0.0%'
      Calculated = True
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
    object Query1Pairs: TIntegerField
      FieldName = 'Pairs'
      DisplayFormat = '##,#0'
    end
    object Query1USPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.0000'
    end
    object Query1USACC: TFloatField
      FieldName = 'USACC'
      DisplayFormat = '##,#0.00'
    end
    object Query1ACCRep: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ACCRep'
      DisplayFormat = '##,#0.00'
      Calculated = True
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 296
    Top = 232
    object Detail1: TMenuItem
      Caption = 'Detail'
      OnClick = Detail1Click
    end
    object Print1: TMenuItem
      Caption = 'Print'
      OnClick = Print1Click
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'if object_id('#39'tempdb..#OrdCLCWDJ'#39') is not null'
      'begin   drop table #OrdCLCWDJ end'
      
        'select OrdCL.ZLBH,OrdCL.CLBH,OrdCL.CLSL,OrdCL.Article,OrdCL.XieM' +
        'ing,OrdCL.Pairs,KCLLS.Qty'
      
        '       ,KCLLS.USPrice,KCLLS.USACC,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH ' +
        ' into #OrdCLCWDJ '
      
        'from(Select ZLZLS2.ZLBH,ZLZLS2.CLBH,sum(ZLZLS2.CLSL) as CLSL,XXZ' +
        'L.Article,XXZL.XieMing,DDZL.Pairs '
      '     from ZLZLS2'
      '     left join CLZL on ZLZLS2.CLBH=CLZL.CLDH'
      '     left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH'
      '     left join  DDZL on DDZL.DDBH=ZLZL.DDBH'
      '     left join SCZLDate on SCZLDate.ZLBH=ZLZLS2.ZLBH '
      
        '     left join XXZl on XXZL.XieXing=DDZl.XieXing and XXZl.Shehao' +
        '=DDZL.SheHao'
      '     where DDZL.GSBH='#39'VA12'#39' '
      '           and ZLZLS2.CLBH like '#39'%'#39
      '           and CLZL.YWPM like '#39'%%'#39
      '           and CLZL.YWPM like '#39'%%'#39
      '           and ZLZLS2.ZLBH like '#39'Y2101-000%'#39
      '           and MJBH='#39'ZZZZZZZZZZ'#39' '
      '           and ZLZLS2.CLSL<>0'
      '           and XXZL.XieMing like '#39'%%'#39' '
      
        '        and Convert(smalldatetime,convert(varchar,DDZL.Shipdate,' +
        '111)) between '
      '        '#39'2021/01/01'#39' and '#39'2021/01/31'#39
      
        '     group by ZLZLS2.ZLBH,ZLZLS2.CLBH,XXZL.Article,XXZL.XieMing,' +
        'DDZL.Pairs '
      '     union all '
      
        '     select KCLLS.SCBH,KCLLS.CLBH,0.0 as CLSL,XXZL.Article,XXZL.' +
        'XieMing,DDZL.Pairs  '
      '           from  KCLLS'
      '           left join KCLL on KCLL.LLNO=KCLLS.LLNO '
      '           left join DDZL on DDZL.DDBH=KCLLS.SCBH'
      
        '           left join XXZl on XXZL.XieXing=DDZl.XieXing and XXZl.' +
        'Shehao=DDZL.SheHao '
      '           left join SCZLDate on SCZLDate.ZLBH=DDZL.ZLBH '
      '           left join CLZL on CLZL.CLDH=KCLLS.CLBH'
      
        '           left join CWDJ on CWDJ.CLBH=KCLLS.CLBH and CWDJ.DJYea' +
        'r=convert(varchar,datepart(yyyy,KCLL.CFMDate)) and CWDJ.DJMonth=' +
        'convert(varchar,datepart(MM,KCLL.CFMDate)) '
      '           left join ('
      '             select ZLZLS2.ZLBH,ZLZLS2.CLBH '
      '             from ZLZLS2'
      '             left join CLZL on ZLZLS2.CLBH=CLZL.CLDH'
      '             left join  DDZL on DDZL.DDBH=ZLZLS2.ZLBH'
      '             left join SCZLDate on SCZLDate.ZLBH=ZLZLS2.ZLBH '
      
        '             left join XXZl on XXZL.XieXing=DDZl.XieXing and XXZ' +
        'l.Shehao=DDZL.SheHao'
      '             where DDZL.GSBH='#39'VA12'#39' '
      '               and ZLZLS2.CLBH like '#39'%'#39
      '               and CLZL.YWPM like '#39'%%'#39
      '               and CLZL.YWPM like '#39'%%'#39
      '               and ZLZLS2.ZLBH like '#39'Y2101-000%'#39
      '               and MJBH='#39'ZZZZZZZZZZ'#39' '
      '               and ZLZLS2.CLSL<>0'
      '               and XXZL.XieMing like '#39'%%'#39' '
      
        '            and Convert(smalldatetime,convert(varchar,DDZL.Shipd' +
        'ate,111)) between '
      '            '#39'2021/01/01'#39' and '#39'2021/01/31'#39
      
        '              group by ZLZLS2.ZLBH,ZLZLS2.CLBH ) ZLZLS2 ON  ZLZL' +
        'S2.ZLBH=KCLLS.SCBH  AND ZLZLS2.CLBH=KCLLS.CLBH   '
      '           where  KCLLS.CLBH like '#39'%'#39
      '                  and KCLLS.SCBH like '#39'Y2101-000%'#39
      '                  and CLZL.YWPM like '#39'%%'#39
      '                  and CLZL.YWPM like '#39'%%'#39
      '                  and DDZL.GSBH='#39'VA12'#39' '
      
        '            and Convert(smalldatetime,convert(varchar,DDZL.Shipd' +
        'ate,111)) between '
      '            '#39'2021/01/01'#39' and '#39'2021/01/31'#39
      '                  and KCLL.CFMID<>'#39'NO'#39' '
      '                  and KCLL.SCBH<>'#39'JJJJJJJJJJ'#39' '
      '                  and substring(KCLL.DepId,1,1)<>'#39'R'#39'  '
      '                  and KCLLS.Qty<>0'
      '                  and ZLZLS2.ZLBH is null  '
      
        '           group by KCLLS.SCBH, KCLLS.CLBH,XXZL.Article,XXZL.Xie' +
        'Ming,DDZL.Pairs '
      ' ) OrdCL'
      
        'left join (select KCLLS.SCBH,KCLLS.CLBH, sum(KCLLS.Qty) as Qty, ' +
        'Avg(CWDJ.USPrice) as USPrice,Sum(KCLLS.Qty*CWDJ.USPrice) as USAC' +
        'C '
      '           from  KCLLS'
      '           left join KCLL on KCLL.LLNO=KCLLS.LLNO '
      '           left join DDZL on DDZL.DDBH=KCLLS.SCBH'
      '           left join SCZLDate on SCZLDate.ZLBH=DDZL.ZLBH '
      '           left join CLZL on CLZL.CLDH=KCLLS.CLBH'
      
        '           left join CWDJ on CWDJ.CLBH=KCLLS.CLBH and CWDJ.DJYea' +
        'r=convert(varchar,datepart(yyyy,KCLL.CFMDate)) and CWDJ.DJMonth=' +
        'convert(varchar,datepart(MM,KCLL.CFMDate)) '
      '           where  KCLLS.CLBH like '#39'%'#39
      '                  and KCLLS.SCBH like '#39'Y2101-000%'#39
      '                  and CLZL.YWPM like '#39'%%'#39
      '                  and CLZL.YWPM like '#39'%%'#39
      '                  and DDZL.GSBH='#39'VA12'#39' '
      
        '            and Convert(smalldatetime,convert(varchar,DDZL.Shipd' +
        'ate,111)) between '
      '            '#39'2021/01/01'#39' and '#39'2021/01/31'#39
      '                  and KCLL.CFMID<>'#39'NO'#39' '
      '                  and KCLL.SCBH<>'#39'JJJJJJJJJJ'#39' '
      '                  and substring(KCLL.DepId,1,1)<>'#39'R'#39'  '
      '                  and KCLLS.Qty<>0'
      '           group by KCLLS.SCBH, KCLLS.CLBH ) KCLLS  '
      
        '                 on KCLLS.SCBH=OrdCL.ZLBH and KCLLS.CLBH=OrdCL.C' +
        'LBH '
      'left join CLZL on CLZL.CLDH=OrdCL.CLBH  ')
    Left = 256
    Top = 160
  end
  object PrintDBGridEh1: TPrintDBGridEh
    Options = []
    Page.BottomMargin = 0.500000000000000000
    Page.LeftMargin = 0.500000000000000000
    Page.RightMargin = 0.500000000000000000
    Page.TopMargin = 0.500000000000000000
    PageFooter.Font.Charset = ANSI_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = #27161#26999#39636
    PageFooter.Font.Style = []
    PageHeader.CenterText.Strings = (
      #35330#21934#26448#26009#38936#26009#27604#20363#21450#37329#38989
      'Order Material Deliver Person & Account')
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -24
    PageHeader.Font.Name = 'MS Sans Serif'
    PageHeader.Font.Style = []
    Units = MM
    OnBeforePrint = PrintDBGridEh1BeforePrint
    Left = 296
    Top = 192
  end
  object Query2: TQuery
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select Article,XieMing,Sum(Pairs) as Pairs,Sum(USACC) as USACC,S' +
        'um(USACC)/Sum(Pairs) as PairUSACC'
      'from ('
      '  select * from #OrdCLCWDJ  '
      ') OrdCL'
      'Group by Article,XieMing'
      'order by OrdCL.Article,OrdCL.XieMing')
    Left = 344
    Top = 160
    object Query2Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query2XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query2Pairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Query2USACC: TCurrencyField
      FieldName = 'USACC'
    end
    object Query2PairUSACC: TCurrencyField
      FieldName = 'PairUSACC'
    end
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 344
    Top = 120
  end
end
