object TWAuditReport: TTWAuditReport
  Left = 258
  Top = 263
  Width = 1305
  Height = 687
  Caption = 'Taiwan Audit Report'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
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
  object PageControl1: TPageControl
    Left = 0
    Top = 59
    Width = 1297
    Height = 597
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #20986#26448#26009#21934#22577#34920
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1289
        Height = 569
        Align = alClient
        DataSource = DataSource1
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
        ParentFont = False
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
            FieldName = 'CFMDATE'
            Footers = <>
            Title.Caption = #38936#26009#26085'|Delivery Date'
            Width = 92
          end
          item
            EditButtons = <>
            FieldName = 'LLNO'
            Footers = <>
            Title.Caption = #38936#26009#21934#34399'|Delivery NO'
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = #26448#26009#32232#34399'|Material NO'
          end
          item
            EditButtons = <>
            FieldName = 'ywpm'
            Footers = <>
            Title.Caption = #26448#26009#25551#36848'|Describe'
            Width = 261
          end
          item
            EditButtons = <>
            FieldName = 'dwbh'
            Footers = <>
            Title.Caption = #26448#26009#21934#20301'|Material Unit'
            Width = 80
          end
          item
            DisplayFormat = '0.00'
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <>
            Title.Caption = #25976#37327'|QTY'
          end
          item
            DisplayFormat = '0.00'
            EditButtons = <>
            FieldName = 'USPrice'
            Footers = <>
            Title.Caption = #32654#37329#21934#20729'|USPrice'
          end
          item
            DisplayFormat = '0.00'
            EditButtons = <>
            FieldName = 'USAmount'
            Footers = <>
            Title.Caption = #32654#37329#32317#20729'|USAmount'
          end
          item
            DisplayFormat = '0'
            EditButtons = <>
            FieldName = 'VNPrice'
            Footers = <>
            Title.Caption = #36234#24163#21934#20729'|VNPrice'
          end
          item
            DisplayFormat = '0'
            EditButtons = <>
            FieldName = 'VNAmount'
            Footers = <>
            Title.Caption = #36234#24163#32317#20729'|VNAmount'
          end
          item
            EditButtons = <>
            FieldName = 'MEMO'
            Footers = <>
            Title.Caption = #24037#21934'|Test NO'
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = #20837#24235#21934#22577#34920
      ImageIndex = 1
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 1289
        Height = 569
        Align = alClient
        DataSource = DataSource2
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
        ParentFont = False
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
            FieldName = 'CFMDATE'
            Footers = <>
            Title.Caption = #20837#24235#26085#26399
            Width = 98
          end
          item
            EditButtons = <>
            FieldName = 'RKNO'
            Footers = <>
            Title.Caption = #20837#24235#21934#34399
          end
          item
            EditButtons = <>
            FieldName = 'ZSBH'
            Footers = <>
            Title.Caption = #24288#21830#20195#34399
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'zsjc'
            Footers = <>
            Title.Caption = #24288#21830#31777#31281
          end
          item
            EditButtons = <>
            FieldName = 'ZSNO'
            Footers = <>
            Title.Caption = 'PO'
            Width = 122
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = #26448#26009#32232#34399
          end
          item
            EditButtons = <>
            FieldName = 'ywpm'
            Footers = <>
            Title.Caption = #26448#26009#25944#36848
            Width = 163
          end
          item
            EditButtons = <>
            FieldName = 'dwbh'
            Footers = <>
            Title.Caption = #21934#20301
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <>
            Title.Caption = #25976#37327
          end
          item
            EditButtons = <>
            FieldName = 'USPrice'
            Footers = <>
            Title.Caption = #32654#37329#21934#20729
          end
          item
            EditButtons = <>
            FieldName = 'USAmount'
            Footers = <>
            Title.Caption = #32654#37329#32317#20729
          end
          item
            EditButtons = <>
            FieldName = 'VNPrice'
            Footers = <>
            Title.Caption = #36234#24163#21934#20729
          end
          item
            EditButtons = <>
            FieldName = 'VNAmount'
            Footers = <>
            Title.Caption = #36234#24163#32317#20729
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = #35036#26009#21934#22577#34920
      ImageIndex = 2
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 0
        Width = 1289
        Height = 569
        Align = alClient
        DataSource = DataSource3
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
        ParentFont = False
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
            FieldName = 'CFMDATE'
            Footers = <>
            Title.Caption = #35036#26009#26085#26399
            Width = 92
          end
          item
            EditButtons = <>
            FieldName = 'LLNO'
            Footers = <>
            Title.Caption = #20986#26448#26009#21934#34399
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = #26448#26009#32232#34399
            Width = 102
          end
          item
            EditButtons = <>
            FieldName = 'ywpm'
            Footers = <>
            Title.Caption = #26448#26009#21517#31281
            Width = 208
          end
          item
            EditButtons = <>
            FieldName = 'dwbh'
            Footers = <>
            Title.Caption = #21934#20301
          end
          item
            DisplayFormat = '0.00'
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <>
            Title.Caption = #25976#37327
          end
          item
            DisplayFormat = '0.00'
            EditButtons = <>
            FieldName = 'USPrice'
            Footers = <>
            Title.Caption = #32654#37329#21934#20729
          end
          item
            DisplayFormat = '0.00'
            EditButtons = <>
            FieldName = 'USAmount'
            Footers = <>
            Title.Caption = #32654#37329#32317#20729
          end
          item
            DisplayFormat = '0'
            EditButtons = <>
            FieldName = 'VNPrice'
            Footers = <>
            Title.Caption = #36234#24163#21934#20729
          end
          item
            DisplayFormat = '0'
            EditButtons = <>
            FieldName = 'VNAmount'
            Footers = <>
            Title.Caption = #36234#24163#32317#20729
          end
          item
            EditButtons = <>
            FieldName = 'ZWSM'
            Footers = <>
            Title.Caption = #35036#26009#21407#22240
            Width = 109
          end
          item
            EditButtons = <>
            FieldName = 'MEMO'
            Footers = <>
            Title.Caption = #35036#26009#21934#34399
            Width = 78
          end
          item
            EditButtons = <>
            FieldName = 'MEMO_1'
            Footers = <>
            Title.Caption = #24037#21934
            Width = 79
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = #26448#26009#21152#24037#21934#22577#34920
      ImageIndex = 3
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 0
        Width = 1289
        Height = 569
        Align = alClient
        DataSource = DataSource4
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
        ParentFont = False
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
            FieldName = 'CFMDate1'
            Footers = <>
            Title.Caption = #21152#24037#26085'|Processing Date'
          end
          item
            EditButtons = <>
            FieldName = 'JGNO'
            Footers = <>
            Title.Caption = #21152#24037#21934#34399'|Processing NO'
            Width = 96
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = #26448#26009#32232#34399'|Material NO'
          end
          item
            EditButtons = <>
            FieldName = 'ywpm'
            Footers = <>
            Title.Caption = #26448#26009#25551#36848'|Describe'
            Width = 202
          end
          item
            EditButtons = <>
            FieldName = 'dwbh'
            Footers = <>
            Title.Caption = #26448#26009#21934#20301'|Material Unit'
            Width = 81
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <>
            Title.Caption = #25976#37327'|QTY'
          end
          item
            EditButtons = <>
            FieldName = 'USPrice'
            Footers = <>
            Title.Caption = #32654#37329#21934#20729'|USPrice'
          end
          item
            EditButtons = <>
            FieldName = 'USAmount'
            Footers = <>
            Title.Caption = #32654#37329#32317#20729'|USAmount'
          end
          item
            EditButtons = <>
            FieldName = 'VNPrice'
            Footers = <>
            Title.Caption = #36234#24163#21934#20729'|VNPrice'
          end
          item
            EditButtons = <>
            FieldName = 'VNAmount'
            Footers = <>
            Title.Caption = #36234#24163#32317#20729'|VNAmount'
          end
          item
            EditButtons = <>
            FieldName = 'ZSBH'
            Footers = <>
            Title.Caption = #24288#21830#32232#34399'|Vendor NO'
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'zsjc'
            Footers = <>
            Title.Caption = #24288#21830#21517#31281'|Vendor Name'
          end>
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1297
    Height = 59
    Align = alTop
    TabOrder = 1
    object Label2: TLabel
      Left = 16
      Top = 10
      Width = 137
      Height = 16
      Caption = 'Date:                                ~'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 34
      Width = 31
      Height = 13
      Caption = 'Brand:'
    end
    object Button1: TButton
      Left = 331
      Top = 26
      Width = 66
      Height = 27
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 409
      Top = 26
      Width = 61
      Height = 27
      Caption = 'EXCEL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object DTP1: TDateTimePicker
      Left = 56
      Top = 8
      Width = 89
      Height = 21
      Date = 44688.561773761580000000
      Format = 'yyyy/MM/dd'
      Time = 44688.561773761580000000
      TabOrder = 2
    end
    object DTP2: TDateTimePicker
      Left = 160
      Top = 8
      Width = 89
      Height = 21
      Date = 44688.561773761580000000
      Format = 'yyyy/MM/dd'
      Time = 44688.561773761580000000
      TabOrder = 3
    end
    object ComboBox2: TComboBox
      Left = 56
      Top = 32
      Width = 81
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 4
      Text = 'CDC'
      Items.Strings = (
        'CDC'
        'SKX'
        'VA12')
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'select KCLL.CFMDATE,KCLLS.LLNO,KCLLS.CLBH,clzl.ywpm,clzl.dwbh,KC' +
        'LLS.Qty, '
      
        'isnull(KCLLS.USPrice,0) as USPrice,isnull(KCLLS.USPrice,0) * KCL' +
        'LS.Qty as USAmount,'
      
        'isnull(KCLLS.VNPrice,0) as VNPrice,isnull(KCLLS.VNPrice,0) * KCL' +
        'LS.Qty as VNAmount,'
      'KCLL.MEMO from KCLLS'
      'left join KCLL on KCLL.LLNO = KCLLS.LLNO'
      'left join CLZL on CLZL.cldh = KCLLS.CLBH'
      'where KCLL.GSBH = '#39'CDC'#39
      
        '      and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111' +
        ')) between '
      '          '#39'2021/07/01'#39' and '#39'2021/07/31'#39
      'order by KCLL.CFMDATE ')
    Left = 56
    Top = 136
    object Query1CFMDATE: TDateTimeField
      FieldName = 'CFMDATE'
    end
    object Query1LLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1ywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object Query1dwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
    end
    object Query1USPrice: TCurrencyField
      FieldName = 'USPrice'
    end
    object Query1USAmount: TCurrencyField
      FieldName = 'USAmount'
    end
    object Query1VNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object Query1VNAmount: TCurrencyField
      FieldName = 'VNAmount'
    end
    object Query1MEMO: TStringField
      FieldName = 'MEMO'
      FixedChar = True
      Size = 15
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 96
    Top = 136
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'select KCRK.CFMDATE,KCRKS.RKNO,KCRK.ZSBH,zszl.zsjc,KCRK.ZSNO,KCR' +
        'KS.CLBH,clzl.ywpm,clzl.dwbh,KCRKS.Qty, '
      
        'isnull(KCRKS.USPrice,0) as USPrice,isnull(KCRKS.USPrice,0) * KCR' +
        'KS.Qty as USAmount,'
      
        'isnull(KCRKS.VNPrice,0) as VNPrice,isnull(KCRKS.VNPrice,0) * KCR' +
        'KS.Qty as VNAmount from KCRKS'
      'left join KCRK on KCRK.RKNO = KCRKS.RKNO'
      'left join CLZL on CLZL.cldh = KCRKS.CLBH'
      'left join zszl on zszl.zsdh = KCRK.ZSBH'
      'where KCRK.GSBH = '#39'SKX'#39
      
        '      and convert(smalldatetime,convert(varchar,KCRK.CFMDATE,111' +
        ')) between '
      '          '#39'2021/07/01'#39' and '#39'2021/07/31'#39
      'order by KCRK.CFMDATE ')
    Left = 56
    Top = 200
    object Query2CFMDATE: TDateTimeField
      FieldName = 'CFMDATE'
    end
    object Query2RKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object Query2ZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object Query2zsjc: TStringField
      FieldName = 'zsjc'
      FixedChar = True
    end
    object Query2ZSNO: TStringField
      FieldName = 'ZSNO'
      FixedChar = True
    end
    object Query2CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query2ywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object Query2dwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object Query2Qty: TCurrencyField
      FieldName = 'Qty'
    end
    object Query2USPrice: TFloatField
      FieldName = 'USPrice'
    end
    object Query2USAmount: TFloatField
      FieldName = 'USAmount'
    end
    object Query2VNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object Query2VNAmount: TCurrencyField
      FieldName = 'VNAmount'
    end
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 96
    Top = 200
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select KCLL.CFMDATE,KCLLS.LLNO,KCLLS.CLBH,clzl.ywpm,clzl.dwbh,KC' +
        'LLS.Qty, '
      
        'isnull(KCLLS.USPrice,0) as USPrice,isnull(KCLLS.USPrice,0) * KCL' +
        'LS.Qty as USAmount,'
      
        'isnull(KCLLS.VNPrice,0) as VNPrice,isnull(KCLLS.VNPrice,0) * KCL' +
        'LS.Qty as VNAmount,'
      'SCBLYY.ZWSM,KCLLS.MEMO,'
      'KCLL.MEMO from KCLLS'
      'left join KCLL on KCLL.LLNO = KCLLS.LLNO'
      'left join CLZL on CLZL.cldh = KCLLS.CLBH'
      'left join SCBLYY on KCLLS.YYBH = SCBLYY.YYBH'
      'where KCLL.GSBH = '#39'SKX'#39
      
        '      and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111' +
        ')) between '
      '          '#39'2021/07/01'#39' and '#39'2021/07/31'#39
      
        'and KCLLS.YYBH in (select YYBH from SCBLYY where ZWSM like '#39'%'#35036#26009'%' +
        #39')'
      'order by KCLL.CFMDATE ')
    Left = 56
    Top = 272
    object Query3CFMDATE: TDateTimeField
      FieldName = 'CFMDATE'
    end
    object Query3LLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object Query3CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query3ywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object Query3dwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object Query3Qty: TCurrencyField
      FieldName = 'Qty'
    end
    object Query3USPrice: TCurrencyField
      FieldName = 'USPrice'
    end
    object Query3USAmount: TCurrencyField
      FieldName = 'USAmount'
    end
    object Query3VNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object Query3VNAmount: TCurrencyField
      FieldName = 'VNAmount'
    end
    object Query3ZWSM: TStringField
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 50
    end
    object Query3MEMO: TStringField
      FieldName = 'MEMO'
      FixedChar = True
      Size = 250
    end
    object Query3MEMO_1: TStringField
      FieldName = 'MEMO_1'
      FixedChar = True
      Size = 15
    end
  end
  object DataSource3: TDataSource
    DataSet = Query3
    Left = 96
    Top = 272
  end
  object Query4: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select JGZL.CFMDate1,JGZLS.JGNO,JGZLS.CLBH,clzl.ywpm,clzl.dwbh,J' +
        'GZLS.Qty, '
      
        'isnull(JGZLS.USPrice,0) as USPrice,isnull(JGZLS.USPrice,0) * JGZ' +
        'LS.Qty as USAmount,'
      
        'isnull(JGZLS.VNPrice,0) as VNPrice,isnull(JGZLS.VNPrice,0) * JGZ' +
        'LS.Qty as VNAmount,'
      'JGZL.ZSBH,zszl.zsjc from JGZLS'
      'left join JGZL on JGZL.JGNO = JGZLS.JGNO'
      'left join CLZL on CLZL.cldh = JGZLS.CLBH'
      'left join zszl on zszl.zsdh = JGZL.ZSBH'
      'where JGZL.GSBH = '#39'SKX'#39
      
        '      and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,11' +
        '1)) between '
      '          '#39'2021/07/01'#39' and '#39'2021/07/31'#39
      'order by JGZL.CFMDate1 ')
    Left = 56
    Top = 352
    object Query4CFMDate1: TDateTimeField
      FieldName = 'CFMDate1'
    end
    object Query4JGNO: TStringField
      FieldName = 'JGNO'
      FixedChar = True
      Size = 11
    end
    object Query4CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query4ywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object Query4dwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object Query4Qty: TCurrencyField
      FieldName = 'Qty'
    end
    object Query4USPrice: TCurrencyField
      FieldName = 'USPrice'
    end
    object Query4USAmount: TCurrencyField
      FieldName = 'USAmount'
    end
    object Query4VNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object Query4VNAmount: TCurrencyField
      FieldName = 'VNAmount'
    end
    object Query4ZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object Query4zsjc: TStringField
      FieldName = 'zsjc'
      FixedChar = True
    end
  end
  object DataSource4: TDataSource
    DataSet = Query4
    Left = 96
    Top = 352
  end
end
