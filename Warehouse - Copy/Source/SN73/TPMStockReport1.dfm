object TPMStockReport: TTPMStockReport
  Left = 186
  Top = 135
  Width = 1305
  Height = 675
  Caption = 'TPM Stock Report'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 88
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 33
      Top = 19
      Width = 48
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CLDH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 14
      Top = 52
      Width = 67
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'StockDate:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 256
      Top = 18
      Width = 54
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'ZWPM:'
    end
    object Label4: TLabel
      Left = 264
      Top = 50
      Width = 46
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'YWPM:'
    end
    object Edit1: TEdit
      Left = 85
      Top = 15
      Width = 153
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Button1: TButton
      Left = 514
      Top = 25
      Width = 90
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object DTP1: TDateTimePicker
      Left = 85
      Top = 47
      Width = 106
      Height = 24
      Date = 44896.406377673610000000
      Format = 'yyyy/MM/dd'
      Time = 44896.406377673610000000
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 312
      Top = 15
      Width = 160
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object Edit3: TEdit
      Left = 312
      Top = 47
      Width = 160
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object Button2: TButton
      Left = 613
      Top = 25
      Width = 90
      Height = 33
      Caption = 'Excel'
      TabOrder = 5
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 713
      Top = 25
      Width = 90
      Height = 33
      Caption = 'Monthly'
      TabOrder = 6
      OnClick = Button3Click
    end
  end
  object PC1: TPageControl
    Left = 0
    Top = 88
    Width = 1289
    Height = 548
    ActivePage = TS1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TS1: TTabSheet
      Caption = 'Qty'
      object DBGrid1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1281
        Height = 517
        Align = alClient
        DataSource = DS1
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        SumList.VirtualRecords = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CLDH'
            Footers = <>
            Title.Caption = #26448#26009#32232#34399'|CLDH'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'ZWPM'
            Footers = <>
            Title.Caption = #20013#25991#21697#21517'|ZWPM'
            Width = 350
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <
              item
                FieldName = 'YWPM'
                ValueType = fvtCount
              end>
            Title.Caption = #33521#25991#21697#21517'|YWPM'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 350
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            Title.Caption = #21934#20301'|DWBH'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 46
          end
          item
            Color = 12582911
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <
              item
                FieldName = 'Qty'
                ValueType = fvtSum
              end>
            Title.Caption = #24235#23384#25976#37327'|Qty'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 88
          end
          item
            EditButtons = <>
            FieldName = 'LastRem'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #26376#21021#24235#23384'|LastRem'
          end
          item
            EditButtons = <>
            FieldName = 'RKQty'
            Footers = <
              item
                FieldName = 'RKQty'
                ValueType = fvtSum
              end>
            Title.Caption = #20837#24235#25976#37327'|RKQty'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 83
          end
          item
            EditButtons = <>
            FieldName = 'LLQty'
            Footers = <
              item
                FieldName = 'LLQty'
                ValueType = fvtSum
              end>
            Title.Caption = #20986#24235#25976#37327'|LLQty'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 82
          end
          item
            EditButtons = <>
            FieldName = 'ZSDH'
            Footers = <>
            Title.Caption = #24288#21830#36039#35338'|ZSDH'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 53
          end
          item
            EditButtons = <>
            FieldName = 'ZSQM'
            Footers = <>
            Title.Caption = #24288#21830#36039#35338'|Name'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 150
          end>
      end
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 512
    Top = 296
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'if object_id('#39'tempdb..#CLZLKC'#39') is not null  '
      'begin   drop table #CLZLKC end   '
      
        'select CLZL.CLDH as CLDH,LastKC.LastRem,RK.RKQty,LL.LLQty into #' +
        'CLZLKC  '
      'from CLZL '
      'Left join ( Select KCCLMONTH.CLBH,Sum(KCCLMONTH.Qty) as LastRem '
      #9#9#9'from KCCLMONTH_TPM as KCCLMONTH    '
      #9#9#9'where KCCLMONTH.KCYEAR='#39'2023'#39' '
      #9#9#9'and KCMONTH='#39'05'#39
      #9#9#9'and KCCLMONTH.CLBH like '#39'%'#39' '
      #9#9#9'Group by KCCLMONTH.CLBH '
      #9#9'  ) LastKC on LastKC.CLBH=CLZL.cldh'
      'left join ( select KCRKS.CLBH,sum(KCRKS.Qty) as RKQty '
      #9#9'    from KCRKS_TPM KCRKS   '
      '            left join KCRK_TPM KCRK on KCRK.RKNO=KCRKS.RKNO '
      
        '            where convert(smalldatetime,convert(varchar,KCRK.USE' +
        'RDATE,111))>='#39'2023/06/01'#39
      
        '            and convert(smalldatetime,convert(varchar,KCRK.USERD' +
        'ATE,111))<='#39'2023/06/30'#39
      '            and KCRKS.CLBH like '#39'%'#39
      '            group by KCRKS.CLBH) RK on RK.CLBH=CLZL.CLDH '
      'left join ( select KCLLS.CLBH,sum(KCLLS.Qty) as LLQty '
      #9#9#9'from KCLLS_TPM KCLLS '
      '            left join KCLL_TPM KCLL on KCLL.LLNO=KCLLS.LLNO '
      
        '            where convert(smalldatetime,convert(varchar,KCLL.CFM' +
        'DATE,111))>='#39'2023/06/01'#39
      
        '            and convert(smalldatetime,convert(varchar,KCLL.CFMDA' +
        'TE,111))<='#39'2023/06/30'#39
      '            and KCLLS.CLBH like '#39'%'#39' '
      '            and KCLL.CFMID<>'#39'NO'#39
      '            group by KCLLS.CLBH) LL on LL.CLBH=CLZL.CLDH'
      
        'where  not (LastKC.LastRem is null  and RK.RKQty is null and LL.' +
        'LLQty is null)'
      
        'select #CLZLKC.CLDH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,isnull(#CLZLKC' +
        '.LastRem,0) as LastRem,'
      
        '       isnull(round(#CLZLKC.RKQty,4),0) as RKQty,isnull(round(#C' +
        'LZLKC.LLQty,4),0) as LLQty,'
      
        '       isnull(Round(#CLZLKC.LastRem,4),0)+isnull(Round(#CLZLKC.R' +
        'KQty,4),0)-isnull(Round(#CLZLKC.LLQty,4),0) as Qty,CLZL.ZSDH,ZSZ' +
        'L.ZSQM'
      'from #CLZLKC '
      'left join CLZL on CLZL.CLDH=#CLZLKC.CLDH'
      'left join ZSZL on ZSZL.ZSDH = CLZL.ZSDH'
      
        'where not (#CLZLKC.LastRem is null  and #CLZLKC.RKQty is null an' +
        'd #CLZLKC.LLQty is null ) '
      'order by #CLZLKC.CLDH')
    Left = 472
    Top = 296
    object Query1CLDH: TStringField
      FieldName = 'CLDH'
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
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1LastRem: TCurrencyField
      FieldName = 'LastRem'
      DisplayFormat = '##,#0.00'
    end
    object Query1RKQty: TCurrencyField
      FieldName = 'RKQty'
      DisplayFormat = '##,#0.00'
    end
    object Query1LLQty: TCurrencyField
      FieldName = 'LLQty'
      DisplayFormat = '##,#0.00'
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object Query1ZSDH: TStringField
      FieldName = 'ZSDH'
      FixedChar = True
      Size = 6
    end
    object Query1ZSQM: TStringField
      FieldName = 'ZSQM'
      FixedChar = True
      Size = 200
    end
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    Left = 320
    Top = 297
  end
end
