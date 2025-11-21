object UseStockList: TUseStockList
  Left = 185
  Top = 245
  Width = 1178
  Height = 558
  Caption = 'UseStockList'
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1170
    Height = 527
    ActivePage = TabSheet4
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet4: TTabSheet
      Caption = 'AvailStock'#21487#20351#29992#24235#23384
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1162
        Height = 65
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label4: TLabel
          Left = 2
          Top = 9
          Width = 64
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'RY'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 155
          Top = 12
          Width = 9
          Height = 16
          Caption = '~'
        end
        object Label8: TLabel
          Left = 357
          Top = 37
          Width = 41
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'BuyNo'
        end
        object Label11: TLabel
          Left = 0
          Top = 37
          Width = 71
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Mat ID'
        end
        object Label9: TLabel
          Left = 656
          Top = 13
          Width = 9
          Height = 16
          Caption = '~'
        end
        object Label10: TLabel
          Left = 634
          Top = 37
          Width = 37
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Article'
        end
        object Label12: TLabel
          Left = 472
          Top = 39
          Width = 63
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Stock:'
        end
        object ExchangLabel: TLabel
          Left = 1090
          Top = 8
          Width = 45
          Height = 20
          Caption = '21036'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Button4: TButton
          Left = 989
          Top = 28
          Width = 81
          Height = 33
          Caption = 'Query'
          TabOrder = 0
          OnClick = Button4Click
        end
        object Button5: TButton
          Left = 989
          Top = -3
          Width = 81
          Height = 33
          Caption = 'EXCEL'
          TabOrder = 1
          OnClick = Button5Click
        end
        object EditRY1: TEdit
          Left = 68
          Top = 4
          Width = 84
          Height = 24
          AutoSelect = False
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
          ParentFont = False
          TabOrder = 2
        end
        object EditRY2: TEdit
          Left = 167
          Top = 3
          Width = 89
          Height = 24
          CharCase = ecUpperCase
          ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
          TabOrder = 3
        end
        object Chk_B: TCheckBox
          Left = 262
          Top = 8
          Width = 115
          Height = 17
          Caption = 'Hide B Order'
          Checked = True
          State = cbChecked
          TabOrder = 4
        end
        object chk_shp: TCheckBox
          Left = 467
          Top = 5
          Width = 86
          Height = 25
          Caption = 'RYDate'
          TabOrder = 5
        end
        object dtp3: TDateTimePicker
          Left = 557
          Top = 4
          Width = 92
          Height = 24
          Date = 39846.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 39846.000000000000000000
          ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
          TabOrder = 6
        end
        object dtp4: TDateTimePicker
          Left = 672
          Top = 4
          Width = 89
          Height = 24
          Date = 39846.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 39846.000000000000000000
          ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
          TabOrder = 7
        end
        object BuyNoEdit: TEdit
          Left = 401
          Top = 34
          Width = 72
          Height = 24
          ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
          TabOrder = 8
        end
        object CheckBoxTW: TCheckBox
          Left = 185
          Top = 37
          Width = 44
          Height = 17
          Caption = 'TW'
          Checked = True
          Color = 10395294
          ParentColor = False
          State = cbChecked
          TabOrder = 9
        end
        object CheckBoxVN: TCheckBox
          Left = 237
          Top = 37
          Width = 44
          Height = 17
          Caption = 'VN'
          Checked = True
          Color = 10395294
          ParentColor = False
          State = cbChecked
          TabOrder = 10
        end
        object Edit_MatNo: TEdit
          Left = 73
          Top = 34
          Width = 110
          Height = 24
          ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
          TabOrder = 11
        end
        object EditArticle: TEdit
          Left = 675
          Top = 33
          Width = 88
          Height = 24
          ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
          TabOrder = 12
        end
        object BaseDate: TDateTimePicker
          Left = 538
          Top = 35
          Width = 92
          Height = 24
          Date = 40020.406377673610000000
          Format = 'yyyy/MM/dd'
          Time = 40020.406377673610000000
          Color = clMoneyGreen
          TabOrder = 13
        end
        object CB1: TCheckBox
          Left = 771
          Top = 44
          Width = 102
          Height = 17
          Caption = 'Rem>0'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 14
        end
        object Chk_Det: TCheckBox
          Left = 879
          Top = 23
          Width = 106
          Height = 17
          Caption = 'Detail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 15
          OnClick = Chk_DetClick
        end
        object CB2: TCheckBox
          Left = 771
          Top = 23
          Width = 102
          Height = 17
          Caption = 'Stock>0'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 16
        end
        object CB3: TCheckBox
          Left = 770
          Top = 2
          Width = 103
          Height = 17
          Caption = '+UseStock>0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 17
        end
        object CK_J: TCheckBox
          Left = 381
          Top = 8
          Width = 84
          Height = 17
          Caption = 'Hide J'
          Checked = True
          State = cbChecked
          TabOrder = 18
        end
        object CB4: TCheckBox
          Left = 878
          Top = 2
          Width = 107
          Height = 17
          Caption = 'UseStock>0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 19
        end
        object CB7: TCheckBox
          Left = 878
          Top = 44
          Width = 107
          Height = 17
          Caption = 'Remain at Kho'
          TabOrder = 20
        end
        object STLCombo: TComboBox
          Left = 292
          Top = 34
          Width = 61
          Height = 24
          Style = csDropDownList
          ItemHeight = 16
          ItemIndex = 1
          TabOrder = 21
          Text = 'No STL'
          Items.Strings = (
            ''
            'No STL'
            'STL')
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 65
        Width = 1162
        Height = 431
        Align = alClient
        Caption = 'Panel3'
        TabOrder = 1
        object Splitter3: TSplitter
          Left = 856
          Top = 1
          Width = 8
          Height = 429
          Align = alRight
          Color = clSkyBlue
          ParentColor = False
        end
        object DBGridEh3: TDBGridEh
          Left = 1
          Top = 1
          Width = 855
          Height = 429
          Align = alClient
          DataSource = DS3
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          FrozenCols = 2
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          ParentFont = False
          PopupMenu = PopupMenu3
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          OnGetCellParams = DBGridEh3GetCellParams
          Columns = <
            item
              EditButtons = <>
              FieldName = 'CLBH'
              Footers = <
                item
                  FieldName = 'CLBH'
                  ValueType = fvtCount
                end>
              Title.Caption = #26448#26009#32232#34399'|MatNo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 80
            end
            item
              EditButtons = <>
              FieldName = 'ZWPM'
              Footers = <>
              Title.Caption = #26448#26009#20013#25991'|ZWPM'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 245
            end
            item
              EditButtons = <>
              FieldName = 'YWPM'
              Footers = <>
              Title.Caption = #26448#26009#21517#31281'|YWPM'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 280
            end
            item
              EditButtons = <>
              FieldName = 'CLSL'
              Footers = <>
              Title.Caption = #32317#29992#37327'|Usage'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 67
            end
            item
              EditButtons = <>
              FieldName = 'OnCGQty'
              Footers = <>
              Title.Caption = #25505#36092#22312#36884'|OnCGQty'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'LackCLSL'
              Footers = <>
              Title.Caption = #27424#29992#37327'|LackUsage'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Visible = False
            end
            item
              Color = 12582911
              EditButtons = <>
              FieldName = 'Qty'
              Footers = <>
              Title.Caption = #29694#26377#24235#23384'|Qty'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
            end
            item
              Color = clSkyBlue
              EditButtons = <>
              FieldName = 'UnRKQty'
              Footers = <>
              Title.Caption = '+'#22312#36884#37327'|UnRKQty'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Visible = False
            end
            item
              Color = clSkyBlue
              EditButtons = <>
              FieldName = 'UnRKJG'
              Footers = <>
              Title.Caption = '+'#21152#24037#20837#24235'|UnRKJG'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Visible = False
            end
            item
              Color = clSkyBlue
              EditButtons = <>
              FieldName = 'UnJG'
              Footers = <>
              Title.Caption = '-'#21152#24037#28136#38656#27714'|UnJG'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Visible = False
            end
            item
              Color = clSkyBlue
              EditButtons = <>
              FieldName = 'UnLL'
              Footers = <>
              Title.Caption = '-'#38936#26009#28136#38656#27714'|UnLL'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'Remain'
              Footers = <>
              Title.Caption = #21487#21033#24235'|=Remain'
              Title.Color = clAqua
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
            end
            item
              EditButtons = <>
              FieldName = 'UseStock'
              Footers = <>
              Title.Caption = #20351#29992#24235#23384'|UseStock'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
            end
            item
              EditButtons = <>
              FieldName = 'ERP_UseStock'
              Footers = <>
              Title.Caption = 'ERP|+UseStock'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 71
            end
            item
              EditButtons = <>
              FieldName = 'USPrice'
              Footers = <>
              Title.Caption = #32654#37329#21934#20729'|USPrice'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
            end
            item
              EditButtons = <>
              FieldName = 'VNPrice'
              Footers = <>
              Title.Caption = #36234#30462#21934#20729'|VNPrice'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
            end>
        end
        object DBGridEh4: TDBGridEh
          Left = 864
          Top = 1
          Width = 297
          Height = 429
          Align = alRight
          DataSource = DS4
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          FrozenCols = 2
          ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          ParentFont = False
          PopupMenu = PopupMenu4
          SumList.Active = True
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
              FieldName = 'BuyNo'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Buy'#21029'|BuyNo'
              Width = 72
            end
            item
              EditButtons = <>
              FieldName = 'ZLBH'
              Footer.ValueType = fvtCount
              Footers = <>
              ReadOnly = True
              Title.Caption = #35330#21934'|RY'
              Title.TitleButton = True
              Width = 85
            end
            item
              EditButtons = <>
              FieldName = 'CGQty'
              Footer.ValueType = fvtSum
              Footers = <>
              ReadOnly = True
              Title.Caption = #25505#36092#37327'|Pur Qty'
              Title.TitleButton = True
              Width = 54
            end
            item
              EditButtons = <>
              FieldName = 'RKQty'
              Footer.ValueType = fvtSum
              Footers = <>
              ReadOnly = True
              Title.Caption = #20837#24235'|RKQty'
            end
            item
              Color = clYellow
              EditButtons = <>
              FieldName = 'UseStock'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = #20351#29992#24235#23384'|Use Stock'
              Title.TitleButton = True
              Width = 66
            end
            item
              EditButtons = <>
              FieldName = 'Diff'
              Footer.Font.Charset = DEFAULT_CHARSET
              Footer.Font.Color = clRed
              Footer.Font.Height = -13
              Footer.Font.Name = 'MS Sans Serif'
              Footer.Font.Style = []
              Footer.ValueType = fvtSum
              Footers = <>
              ReadOnly = True
              Title.Caption = #24046#30064'|Diff'
              Width = 50
            end
            item
              EditButtons = <>
              FieldName = 'CLSL'
              Footer.ValueType = fvtSum
              Footers = <>
              ReadOnly = True
              Title.Caption = #29992#37327'|Usage'
              Title.TitleButton = True
              Width = 44
            end
            item
              EditButtons = <>
              FieldName = 'ShipDate'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'RY Shipping'
              Title.TitleButton = True
              Width = 59
            end
            item
              EditButtons = <>
              FieldName = 'DDRQ'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'RY Date'
              Title.TitleButton = True
              Width = 72
            end
            item
              EditButtons = <>
              FieldName = 'Article'
              Footers = <>
              ReadOnly = True
              Title.TitleButton = True
              Width = 89
            end
            item
              EditButtons = <>
              FieldName = 'Pairs'
              Footers = <>
              ReadOnly = True
              Title.TitleButton = True
              Width = 39
            end
            item
              EditButtons = <>
              FieldName = 'DDZT'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Status'
              Width = 50
            end
            item
              EditButtons = <>
              FieldName = 'Size'
              Footers = <>
              ReadOnly = True
              Width = 73
            end
            item
              EditButtons = <>
              FieldName = 'CGNO'
              Footers = <>
              ReadOnly = True
            end
            item
              EditButtons = <>
              FieldName = 'RKNO'
              Footers = <>
              ReadOnly = True
            end>
        end
      end
    end
  end
  object RemQuery: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'if object_id('#39'tempdb..#RemainKC'#39') is not null  '
      'begin   drop table #RemainKC end   '
      'select CLZL.CLDH,'
      '       CLZL.CLLB,'
      '       CLZL.DWBH,'
      '       LastKC.LastRem,'
      '       RK.RKQty,'
      '       QC.QCQty,'
      '       LL.LLQty,'
      '       JGRK.JGRK,'
      '       JGCK.JGCK,'
      '       JGCKTemp.JGCK as JGCKTemp,'
      '       JGCKTemp1.JGCK as JGCKTempM'
      'into #RemainKC from CLZL  '
      'left join (select KCCLMONTH.CLBH,KCCLMONTH.Qty as LastRem '
      '           from KCCLMONTH  where KCCLMONTH.KCYEAR='#39'2015'#39
      '           and KCMONTH='#39'12'#39
      '           and KCCLMONTH.CLBH like '#39'%'#39
      '           and KCCLMONTH.CKBH='#39'VA12'#39
      '           ) LastKC on LastKC.CLBH=CLZL.CLDH '
      'left join (select KCRKS.CLBH,sum(KCRKS.Qty) as RKQty '
      '           from KCRKS'
      '           left join KCRK on KCRK.RKNO=KCRKS.RKNO '
      
        '           where convert(smalldatetime,convert(varchar,KCRK.USER' +
        'DATE,111))>='
      '                 '#39'2016/01/01'#39
      '                 and '
      
        '                 convert(smalldatetime,convert(varchar,KCRK.USER' +
        'DATE,111))<='
      '                 '#39'2016/01/19'#39
      '                 and KCRKS.CLBH like '#39'%'#39
      '                 and KCRK.CKBH='#39'VA12'#39
      '           group by KCRKS.CLBH) RK on RK.CLBH=CLZL.CLDH '
      'left join (select KCRKS.CLBH,sum(KCRKS.Qty) as QCQty '
      '           from KCRKS'
      
        '           left join KCRK on KCRK.RKNO=KCRKS.RKNO and KCRK.QCID=' +
        #39'NO'#39' '
      
        '           where convert(smalldatetime,convert(varchar,KCRK.USER' +
        'DATE,111))>='
      '                '#39'2016/01/01'#39
      
        '                and convert(smalldatetime,convert(varchar,KCRK.U' +
        'SERDATE,111))<='
      '                '#39'2016/01/19'#39
      '                and KCRKS.CLBH like '#39'%'#39
      '                and KCRK.CKBH='#39'VA12'#39
      '           group by KCRKS.CLBH) QC on QC.CLBH=CLZL.CLDH '
      'left join (select KCLLS.CLBH,sum(KCLLS.Qty) as LLQty '
      '           from KCLLS '
      '           left join KCLL on KCLL.LLNO=KCLLS.LLNO '
      
        '           where convert(smalldatetime,convert(varchar,KCLL.CFMD' +
        'ATE,111))>='
      '                 '#39'2016/01/01'#39
      
        '                 and convert(smalldatetime,convert(varchar,KCLL.' +
        'CFMDATE,111))<='
      '                 '#39'2016/01/19'#39
      '                 and KCLLS.CLBH like '#39'%'#39
      '                 and KCLL.CFMID<>'#39'NO'#39
      '                 and KCLL.CKBH='#39'VA12'#39
      '           group by KCLLS.CLBH) LL on LL.CLBH=CLZL.CLDH'
      'left join (select JGZLS.CLBH,sum(JGZLS.Qty) as JGRK '
      '           from JGZLS'
      '           left join JGZL on JGZL.JGNO=JGZLS.JGNO '
      
        '           where convert(smalldatetime,convert(varchar,JGZL.CFMD' +
        'ate1,111))>='
      '                 '#39'2016/01/01'#39
      
        '                 and convert(smalldatetime,convert(varchar,JGZL.' +
        'CFMDate1,111))<='
      '                 '#39'2016/01/19'#39
      '                 and JGZLS.CLBH like '#39'%'#39
      '                 and JGZL.CFMID1 <>'#39'NO'#39
      '                 and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      '                 and JGZL.CKBH='#39'VA12'#39
      
        '                 group by JGZLS.CLBH ) JGRK on JGRK.CLBH=CLZL.CL' +
        'DH'
      
        'left join (select JGZLS.ZMLB,sum(round(JGZLS.Qty*JGZLM.Qty,2)) a' +
        's JGCK '
      '           from JGZLS'
      '           left join JGZL on JGZL.JGNO=JGZLS.JGNO  '
      '           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty '
      '                      from JGZLS '
      '                      left join JGZL on JGZL.JGNO=JGZLS.JGNO '
      
        '                      where convert(smalldatetime,convert(varcha' +
        'r,JGZL.CFMDate1,111))>='
      '                      '#39'2016/01/01'#39
      
        '                      and convert(smalldatetime,convert(varchar,' +
        'JGZL.CFMDate1,111))<='
      '                      '#39'2016/01/19'#39
      '                      and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      '                      and JGZL.CKBH='#39'VA12'#39
      
        '                      ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM' +
        '.CLBH=JGZLS.CLBH'
      
        '           where convert(smalldatetime,convert(varchar,JGZL.CFMD' +
        'ate1,111))>='
      '                 '#39'2016/01/01'#39
      
        '                 and convert(smalldatetime,convert(varchar,JGZL.' +
        'CFMDate1,111))<='
      '                 '#39'2016/01/19'#39
      '                 and JGZLS.ZMLB like '#39'%'#39
      '                 and JGZL.CFMID1 <>'#39'NO'#39
      '                 and JGZLS.ZMLB<>'#39'ZZZZZZZZZZ'#39
      '                 and JGZL.CKBH='#39'VA12'#39
      
        '                 group by JGZLS.ZMLB ) JGCK on JGCK.ZMLB=CLZL.CL' +
        'DH'
      
        'left join (select JGZLS.ZMLB,sum(round(JGZLS.Qty*JGZLM.Qty,2)) a' +
        's JGCK '
      '           from JGZLS'
      '           left join JGZL on JGZL.JGNO=JGZLS.JGNO  '
      
        '           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty fro' +
        'm JGZLS '
      '                      left join JGZL on JGZL.JGNO=JGZLS.JGNO '
      '                      where  JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      '                      and JGZL.CKBH='#39'VA12'#39
      
        '                      ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM' +
        '.CLBH=JGZLS.CLBH'
      '           where  JGZLS.ZMLB like '#39'%'#39
      '           and JGZL.CFMID1 ='#39'NO'#39
      
        '           and convert(smalldatetime,convert(varchar,JGZL.JGDATE' +
        ',111))<='
      '           '#39'2016/01/19'#39
      '           and JGZLS.ZMLB<>'#39'ZZZZZZZZZZ'#39
      '           and JGZL.CKBH='#39'VA12'#39
      
        '           group by JGZLS.ZMLB ) JGCKTemp on JGCKTemp.ZMLB=CLZL.' +
        'CLDH'
      ' left join (select JGZLS.CLBH,sum(round(JGZLS.Qty,2)) as JGCK '
      '           from JGZLS'
      '           left join JGZL on JGZL.JGNO=JGZLS.JGNO  '
      '           where  JGZLS.CLBH like '#39'%'#39
      '           and JGZL.CFMID1 ='#39'NO'#39
      
        '           and convert(smalldatetime,convert(varchar,JGZL.JGDATE' +
        ',111))<='
      '           '#39'2016/01/19'#39
      '           and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      '           and JGZL.CKBH='#39'VA12'#39
      
        '           group by JGZLS.CLBH ) JGCKTemp1 on JGCKTemp1.CLBH=CLZ' +
        'L.CLDH'
      
        '  where not (LastKC.LastRem is null  and RK.RKQty is null and LL' +
        '.LLQty is null '
      
        '               and JGRK.JGRK is null and JGCK.JGCK is null and J' +
        'GCKTemp.JGCK is null and JGCKTemp1.JGCK is null)'
      'and CLZL.CLDH in (select  ZLZLS2.CLBH from ZLZLS2'
      '            left join DDZl on DDZl.DDBH=ZLZLS2.ZLBH '
      '            where DDZL.GSBH='#39'VA12'#39
      '            and ZLZLS2.ZMLB='#39'N'#39
      '            and ZLZLS2.CLSL<>0'
      
        'and convert(smalldatetime,convert(varchar,DDZL.DDRQ,111)) betwee' +
        'n '
      #39'2016/01/01'#39' and '#39'2016/01/31'#39
      '            Group by  ZLZLS2.CLBH)'
      'and LEFT(CLZL.CLDH,1)<>'#39'X'#39'  '
      'and LEFT(CLZL.CLDH,1)<>'#39'Z'#39'  '
      'and LEFT(CLZL.CLDH,2)<>'#39'U1'#39'  '
      'and LEFT(CLZL.CLDH,1)<>'#39'V'#39'  '
      'DECLARE @Ldate as datetime'
      'set @Ldate = DATEADD(month, -6, GETDATE())'
      'select * from ('
      'select  *,'
      '   case when Remain>=0 then'
      '     case when LackCLSL <= (Remain-OnCGQty) then'
      '       LackCLSL'
      '     else'
      
        '       case when (Remain-OnCGQty)>0 then LackCLSL else Remain en' +
        'd '
      '      end '
      '   else'
      '     case when (LackCLSL+Remain-OnCGQty)>0  then'
      '       (LackCLSL+Remain-OnCGQty)'
      '     else'
      '       0'
      '     end'
      '   end    as ERP_UseStock  from ('
      
        'select ZLZLS2.*,Remain.Qty,Remain.UnRKQty,Remain.UnRKJG,Remain.U' +
        'nJG,Remain.UnLL,Remain.Remain,CGBJ.USPrice,CGBJ.VNPrice from ( '
      'select  S2.CLBH'
      '        ,S2.YWPM'
      '        ,S2.ZWPM'
      '        ,S2.DWBH'
      '        ,S2.ZSYWJC '
      '        ,S2.CQDH '
      '        ,S2.CLSL '
      '        ,S2.CSBH '
      
        '        ,Case when (CG.CGQTY-IsNull(RKZL.RKQty,0))>0 then (CG.CG' +
        'QTY-IsNull(RKZL.RKQty,0)) else 0 end   as OnCGQty   '
      
        '        ,S2.CLSL- IsNull(RKZL.RKQty,0)-IsNull(Stock.UseStock,0) ' +
        'as LackCLSL  '
      '        ,IsNull(Stock.UseStock,0) as UseStock '
      'FROM (select  ZLZLS2.CLBH'
      '        ,CLZL.YWPM'
      '        ,CLZL.ZWPM'
      '        ,CLZL.DWBH'
      '        ,CLZL.CQDH'
      '        ,Max(ZSZL.ZSYWJC) as ZSYWJC '
      '        ,isnull(sum(ZLZLS2.CLSL),0) as CLSL '
      '        ,Max(ZLZLS2.CSBH) as CSBH '
      '      from ZLZLS2 '
      '      left join CLZL on CLZL.CLDH=ZLZLs2.CLBH'
      '      left join DDZl on DDZl.DDBH=ZLZLS2.ZLBH'
      '      left join DDZlTW on DDZlTW.DDBH=DDZl.DDBH'
      '      left join SCZL on SCZL.SCBH=ZLZLS2.ZLBH '
      
        '      left join XXZL on XXZl.XieXing=DDZl.XieXing and XXZL.SheHa' +
        'o=DDZl.SheHao'
      
        '      left join XXBWFL on XXBWFL.XieXing=XXZL.XieXing and XXBWFL' +
        '.BWBH=ZLZLS2.BWBH '
      '      left join XXBWFLS on XXBWFLS.FLBH=XXBWFL.FLBH '
      '      LEFT JOIN ZSZL on ZLZLS2.CSBH=ZSZL.ZSDH'
      '      where 1=1 '
      '            and left(ZLZLS2.CLBH,1)<>'#39'W'#39
      '            and DDZL.GSBH='#39'VA12'#39
      '            and ZLZLS2.ZMLB='#39'N'#39
      '            and SCZL.SCBH=SCZl.ZLBH '
      '            and SCZL.SCBH is not null '
      '            and ZLZLS2.CLSL<>0'
      '            and DDZlTW.DDZT<>'#39'C'#39' '
      '            and CLZL.CQDH='#39'VN'#39' '
      '            and isnull(XXBWFLS.DFL,'#39#39')<>'#39'G'#39'  '
      
        'and convert(smalldatetime,convert(varchar,DDZL.DDRQ,111)) betwee' +
        'n '
      #39'2016/01/01'#39' and '#39'2016/01/31'#39
      '         and DDZL.DDLB<>'#39'B'#39'  '
      
        '      group by ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,CLZL.CQ' +
        'DH'
      '     ) S2 '
      
        'Left join (select CGZLSS.CLBH,ISNULL(SUM(CGZLSS.Qty),0) as CGQty' +
        ' '
      '           FROM CGZLSS  '
      '           LEFT JOIN CGZL ON  CGZL.CGNO=CGZLSS.CGNO  '
      '           left join DDZl on DDZl.DDBH=CGZLSS.ZLBH'
      
        '           left join XXZL on XXZl.XieXing=DDZl.XieXing and XXZL.' +
        'SheHao=DDZl.SheHao'
      '           WHERE CGZL.CGLX<>'#39'6'#39' '
      '                 and DDZL.GSBH='#39'VA12'#39
      
        'and convert(smalldatetime,convert(varchar,DDZL.DDRQ,111)) betwee' +
        'n '
      #39'2016/01/01'#39' and '#39'2016/01/31'#39
      '           GROUP BY CGZLSS.CLBH  '
      '           ) CG ON CG.CLBH=S2.CLBH  '
      
        'Left Join (select CGKCUSE.CLBH,case when CGKCUSE.CLBHYS<>'#39#39' and ' +
        'CGKCUSE.CLBHYS is not null then CGKCUSE.CLBHYS else CGKCUSE.CLBH' +
        ' end as UseCLBH,ISNULL(SUM(CGKCUSE.Qty),0) as UseStock '
      '                   FROM CGKCUSE  '
      '                   left join DDZl on DDZl.DDBH=CGKCUSE.ZLBH'
      
        '                   left join XXZL on XXZl.XieXing=DDZl.XieXing a' +
        'nd XXZL.SheHao=DDZl.SheHao'
      '                   WHERE 1=1  '
      '                         and DDZL.GSBH='#39'VA12'#39
      
        'and convert(smalldatetime,convert(varchar,DDZL.DDRQ,111)) betwee' +
        'n '
      #39'2016/01/01'#39' and '#39'2016/01/31'#39
      '           GROUP BY CGKCUSE.CLBH,CGKCUSE.CLBHYS  '
      '           ) Stock ON Stock.CLBH=S2.CLBH  '
      'left join (select KCRKS.CLBH,sum(KCRKS.Qty ) as RKQty '
      '           from  KCRKS with (nolock) '
      
        '           inner join DDZL on DDZL.DDBH=KCRKS.CGBH and DDZL.GSBH' +
        '='#39'VA12'#39' '
      
        '           left join KCRK with (nolock)  on KCRK.RKNO=KCRKS.RKNO' +
        '  '
      '           where DDZL.GSBH='#39'VA12'#39' '
      
        'and convert(smalldatetime,convert(varchar,DDZL.DDRQ,111)) betwee' +
        'n '
      #39'2016/01/01'#39' and '#39'2016/01/31'#39
      '           group by KCRKS.CLBH ) RKZL ON RKZL.CLBH=S2.CLBH   '
      'where 1=1 '
      'and S2.CLBH in (select CLDH from #RemainKC) '
      ') ZLZLS2'
      ' left join (select CGBJ.CLBH,CGBJ.USPrice,CGBJ.VNPrice from ('
      
        'select CGBJS.CLBH,CGBJS.USPrice,CGBJS.VNPrice, ROW_NUMBER() over' +
        ' (PARTITION BY CGBJS.CLBH ORDER BY CGBJS.BJNO DESC) as  rn from ' +
        'CGBJS,CGBJ where CGBJS.BJNO=CGBJ.BJNO and CGBJ.GSBH='#39'VA12'#39'  and ' +
        'CGBJS.CLBH not like '#39'V%'#39' '
      ') CGBJ where rn=1 ) CGBJ on CGBJ.CLBH=ZLZLS2.CLBH '
      ' left join ( '
      'select #RemainKC.CLDH,'
      '       #RemainKC.CLLB,'
      '       #RemainKC.DWBH,'
      '       isnull(#RemainKC.LastRem,0) as LastRem,'
      '       isnull(#RemainKC.RKQty,0) as RKQty,'
      '       isnull(#RemainKC.QCQty,0) as QCQty,'
      '       isnull(#RemainKC.LLQty,0) as LLQty,'
      '       isnull(round(#RemainKC.JGRK,2),0) as JGRK,'
      '       isnull(round(#RemainKC.JGCK,2),0) as JGCK,'
      '       isnull(round(#RemainKC.JGCKTemp,2),0) as JGCKTemp,'
      '       KCZLS.KCBH,'
      '       KCZLS.CKBH,'
      
        '       isnull(#RemainKC.LastRem,0)+isnull(#RemainKC.RKQty,0)-isn' +
        'ull(#RemainKC.LLQty,0)+isnull(#RemainKC.JGRK,0)-isnull(#RemainKC' +
        '.JGCK,0) as Qty,'
      
        '       isnull(#RemainKC.LastRem,0)+isnull(#RemainKC.RKQty,0)-isn' +
        'ull(#RemainKC.LLQty,0)+isnull(#RemainKC.JGRK,0)-isnull(#RemainKC' +
        '.JGCK,0)-isnull(#RemainKC.JGCKTemp,0) as STOCKQty,'
      
        '       case when isnull(ZLZLS2.CLSL,0)-ISNULL(ZLZLS2LL.QTY,0)<0 ' +
        'then 0 else isnull(ZLZLS2.CLSL,0)-ISNULL(ZLZLS2LL.QTY,0) end as ' +
        'UnLL,'
      '       isnull(Round(JGZLZLS2.CLSL,2),0) as UnJG ,'
      '       isnull(#RemainKC.JGCKTempM,0) as UnRkJG, '
      '       isnull(UnRk.UnRkQty,0) as UnRkQty, '
      
        '    case when isnull(ZLZLS2.CLSL,0)-ISNULL(ZLZLS2LL.QTY,0)>=0 th' +
        'en'
      
        '      isnull(#RemainKC.LastRem,0)+isnull(#RemainKC.RKQty,0)-isnu' +
        'll(#RemainKC.LLQty,0)+isnull(#RemainKC.JGRK,0)-isnull(#RemainKC.' +
        'JGCK,0)'
      
        '      +isnull(#RemainKC.JGCKTempM,0)+isnull(UnRk.UnRkQty,0)-isnu' +
        'll(ZLZLS2.CLSL,0)+ISNULL(ZLZLS2LL.QTY,0)-isnull(JGZLZLS2.CLSL,0)'
      '    else '
      
        '      isnull(#RemainKC.LastRem,0)+isnull(#RemainKC.RKQty,0)-isnu' +
        'll(#RemainKC.LLQty,0)+isnull(#RemainKC.JGRK,0)-isnull(#RemainKC.' +
        'JGCK,0)'
      
        '      +isnull(#RemainKC.JGCKTempM,0)+isnull(UnRk.UnRkQty,0)-isnu' +
        'll(JGZLZLS2.CLSL,0) end as Remain'
      'from #RemainKC '
      'left join (select * '
      '           from KCZLS '
      '           where CKBH='#39'VA12'#39' and CLBH like '#39'%'#39' '
      '           ) KCZLS on KCZLS.CLBH=#RemainKC.CLDH'
      'left join (select ZLZLS2.CLBH '
      '                   ,sum(ZLZLS2.CLSL) AS CLSL '
      '             from  ZLZLS2  '
      '             left join ddzl on ddzl.ddbh=ZLZLS2.zlbh'
      
        '             where ZLZLS2.MJBH='#39'ZZZZZZZZZZ'#39' and ddzl.GSBH='#39'VA12'#39 +
        ' and convert(varchar,DDZL.DDRQ,111)<='#39'2016/01/19'#39' '
      '                   and ZLZLS2.CLBH like '#39'%'#39
      
        '                   and ddzl.YN='#39'1'#39' and ddzl.DDLB='#39'N'#39' and ddzl.sh' +
        'ipdate > @Ldate'
      
        '             group by ZLZLS2.CLBH ) ZLZLS2 ON ZLZLS2.CLBH=#Remai' +
        'nKC.CLDH '
      
        'left join (select  KCLLS.CLBH, sum(CASE  WHEN (KCLLS.CLSL > KCLL' +
        'S.Qty) THEN KCLLS.Qty ELSE KCLLS.CLSL END) as Qty '
      '           from  KCLLS,KCLL '
      '           left join ddzl on ddzl.ddbh=KCLL.SCBH'
      
        '           where KCLL.CFMID<>'#39'NO'#39' AND KCLLS.LLNO=KCLL.LLNO AND K' +
        'CLL.SCBH<>'#39'ZZZZZZZZZZ'#39'  and ddzl.GSBH='#39'VA12'#39'  and convert(varcha' +
        'r,KCLL.USERDATE,111)<='#39'2016/01/19'#39' '
      
        '                 and ddzl.YN='#39'1'#39' and ddzl.DDLB='#39'N'#39'  and ddzl.shi' +
        'pdate > @Ldate and convert(varchar,DDZL.DDRQ,111)<='#39'2016/01/19'#39' '
      '                 and KCLLS.CLBH like '#39'%'#39' '
      
        '           group by KCLLS.CLBH ) ZLZLS2LL on ZLZLS2LL.CLBH=#Rema' +
        'inKC.CLDH '
      
        'left join( select za.clbh,sum(CLSLS) as clsl from (select ZLZLS2' +
        '.ZLBH,ZLZLS2.CLBH ,sum(ZLZLS2.CLSL) - isnull(JGZLBK.okQty,0) AS ' +
        'CLSLS'
      '             from  ZLZLS2  '
      '             left join ddzl on ddzl.ddbh=ZLZLS2.zlbh'
      
        '             left join (select JGZLSS.ZLBH,JGZLS.ZMLB,sum(JGZLSS' +
        '.Qty*JGZLS.QTY) as okQty from JGZLSS'
      #9#9#9#9#9#9'   left join JGZL on JGZL.JGNO=JGZLSS.JGNO '
      
        #9#9#9#9#9#9'   left join JGZLS on JGZLS.JGNO=JGZLSS.JGNO AND JGZLS.CLB' +
        'H=JGZLSS.CLBH'
      '              left join ddzl on ddzl.ddbh=JGZLSS.ZLBH  '
      #9#9#9#9#9#9'   where JGZL.CFMID1 <>'#39'NO'#39' and JGZLS.ZMLB like '#39'%'#39' '
      #9#9#9#9#9#9#9#9' and JGZLS.ZMLB<>'#39'ZZZZZZZZZZ'#39'  and ddzl.GSBH='#39'VA12'#39' '
      
        '                and ddzl.YN='#39'1'#39' and ddzl.DDLB='#39'N'#39' and ddzl.shipd' +
        'ate > @Ldate and convert(varchar,DDZL.DDRQ,111)<='#39'2016/01/19'#39' '
      
        #9#9#9#9#9#9#9#9' and EXISTS (SELECT CLBH FROM ZLZLS2,DDZL WHERE DDZL.DDB' +
        'H=ZLZLS2.ZLBH and DDZL.YN=1  and ddzl.DDLB='#39'N'#39'and ZLZLS2.CLSL>0 ' +
        'AND ZLZLS2.MJBH=JGZLS.CLBH AND ZLZLS2.CLBH=JGZLS.ZMLB AND ZLZLS2' +
        '.ZLBH=JGZLSS.ZLBH  )  '
      #9#9#9#9#9#9#9'group by  JGZLSS.ZLBH,JGZLS.ZMLB '
      
        #9#9#9#9#9#9'  ) JGZLBK on JGZLBK.ZMLB=ZLZLS2.CLBH and JGZLBK.ZLBH=ZLZL' +
        'S2.ZLBH'
      
        '             where ZLZLS2.MJBH<>'#39'ZZZZZZZZZZ'#39'  and ddzl.GSBH='#39'VA1' +
        '2'#39' '
      '                   and ZLZLS2.CLBH like '#39'%'#39' '
      
        '                   and ddzl.YN='#39'1'#39' and ddzl.DDLB='#39'N'#39' and ddzl.sh' +
        'ipdate > @Ldate and convert(varchar,DDZL.DDRQ,111)<='#39'2016/01/19'#39 +
        ' '
      '             group by ZLZLS2.ZLBH,ZLZLS2.CLBH,JGZLBK.okQty'
      
        '                   having sum(ZLZLS2.CLSL) > isnull(JGZLBK.okQty' +
        ',0)'
      
        '            ) za group by za.CLBH) JGZLZLS2 ON JGZLZLS2.CLBH=#Re' +
        'mainKC.CLDH '
      
        'left join (select CGZLS.CLBH, sum(isnull(CGZLS.qty,0)-isnull(CGR' +
        'K.okQty,0)) as UnRkQty  '
      '           from CGZLS'
      '           left join CGZL on CGZL.CGNO=CGZLS.CGNO'
      
        '           left join (select KCRK.ZSNO,KCRKS.CLBH,sum(KCRKS.Qty)' +
        ' as okQty from KCRKS'
      '                      left join KCRK on KCRK.RKNO=KCRKS.RKNO '
      
        '                      where  IsNull(KCRKS.Charge,0)<>1  and ISNU' +
        'LL(KCRKS.RKSB,'#39#39')<>'#39'NG'#39' and ISNULL(KCRKS.RKSB,'#39#39')<>'#39'DL'#39' and KCRK' +
        '.GSBH='#39'VA12'#39' '
      
        '                            and ZSNO in (select CGNO from CGZL w' +
        'here CGZL.GSBH='#39'VA12'#39'  '
      
        '                                                                ' +
        '      and (CGZL.CGLX='#39'2'#39' '
      
        '                                                                ' +
        '      or CGZL.CGLX='#39'5'#39' '
      
        '                                                                ' +
        '      or CGZL.CGLX='#39'3'#39' '
      
        '                                                                ' +
        '      or CGZL.CGLX='#39'1'#39')'
      
        '                                                                ' +
        '    and CGZL.CGDate > DATEADD(month, -6, GETDATE()) ) '
      
        '                      group by KCRK.ZSNO,KCRKS.CLBH ) CGRK on CG' +
        'RK.ZSNO=CGZLS.CGNO AND CGRK.CLBH=CGZLS.CLBH '
      
        '           where  CGZLS.YN<>'#39'5'#39' and CGZLS.YN<>'#39'0'#39' and IsNull(CGZ' +
        'L.DevType,'#39#39')<>'#39'Z07'#39' '
      '                  and CGZLS.CLBH like '#39'%'#39
      '                  and CGZL.GSBH='#39'VA12'#39
      
        '                  and CGZL.CGDate > @LDate  and convert(varchar,' +
        'CGZL.USERDATE,111)<='#39'2016/01/19'#39'  '
      '                  and isnull(CGZLS.qty,0)>isnull(CGRK.okQty,0) '
      '                  and (CGZL.CGLX='#39'2'#39
      '                  or CGZL.CGLX='#39'5'#39
      '                  or CGZL.CGLX='#39'3'#39
      '                  or CGZL.CGLX='#39'1'#39')'
      
        '           group by CGZLS.CLBH ) UnRk on UnRk.CLBH=#RemainKC.CLD' +
        'H '
      'where 1=1 '
      ') Remain on ZLZLS2.CLBH=Remain.CLDH '
      ') as SetUseStock ) as SetUseStock'
      'where ERP_UseStock>0'
      '')
    Left = 376
    Top = 216
    object RemQueryCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object RemQueryYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object RemQueryZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object RemQueryDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object RemQueryCQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object RemQueryCLSL: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.00'
    end
    object RemQueryOnCGQty: TCurrencyField
      FieldName = 'OnCGQty'
      DisplayFormat = '##,#0.00'
    end
    object RemQueryUseStock: TCurrencyField
      FieldName = 'UseStock'
      DisplayFormat = '##,#0.00'
    end
    object RemQueryQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object RemQueryUnRKQty: TCurrencyField
      FieldName = 'UnRKQty'
      DisplayFormat = '##,#0.00'
    end
    object RemQueryUnRKJG: TCurrencyField
      FieldName = 'UnRKJG'
      DisplayFormat = '##,#0.00'
    end
    object RemQueryUnJG: TFloatField
      DefaultExpression = '##,#0.00'
      FieldName = 'UnJG'
    end
    object RemQueryUnLL: TFloatField
      FieldName = 'UnLL'
      DisplayFormat = '##,#0.00'
    end
    object RemQueryRemain: TFloatField
      FieldName = 'Remain'
      DisplayFormat = '##,#0.00'
    end
    object RemQueryERP_UseStock: TFloatField
      FieldName = 'ERP_UseStock'
      DisplayFormat = '##,#0.0'
    end
    object RemQueryLackCLSL: TFloatField
      FieldName = 'LackCLSL'
    end
    object RemQueryUSPrice: TFloatField
      FieldName = 'USPrice'
    end
    object RemQueryVNPrice: TFloatField
      FieldName = 'VNPrice'
    end
  end
  object DS3: TDataSource
    DataSet = RemQuery
    Left = 376
    Top = 248
  end
  object PopupMenu3: TPopupMenu
    Left = 376
    Top = 280
    object Remain1: TMenuItem
      Caption = 'Remain'
      OnClick = Remain1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
  end
  object UpSql3: TUpdateSQL
    ModifySQL.Strings = (
      'update DDZL set'
      '  BUYNO=:BUYNO'
      'where 1=2')
    Left = 408
    Top = 280
  end
  object DS4: TDataSource
    DataSet = DetailQry
    Left = 408
    Top = 248
  end
  object DetailQry: TQuery
    DatabaseName = 'DB'
    DataSource = DS3
    SQL.Strings = (
      'select  S2.ZLBH'
      '        ,S2.CLBH '
      '        ,S2.Article '
      '        ,S2.Pairs '
      '        ,S2.CLSL '
      '        ,S2.Size '
      '        ,S2.ShipDate '
      '        ,S2.DDRQ '
      '        ,s2.BuyNo '
      '        ,S2.DDZT '
      '        ,CG.CGQTY '
      '        ,Stock.UseStock '
      
        '        ,isnull(Stock.UseStock,0)+isnull(CG.CGQTY,0)-S2.CLSL as ' +
        'Diff '
      '        ,CG.CGNO  '
      '        ,RKZL.RKQty '
      '        ,RKZL.RKNO'
      '        ,DDZL.DDBH'
      'FROM (select  ZLZLS2.ZLBH'
      '        ,ZLZLS2.CLBH '
      '        ,XXZL.Article '
      '        ,DDZL.Pairs '
      
        '        ,case when DDZLTW.DDZT<>'#39'C'#39' then isnull(sum(ZLZLS2.CLSL)' +
        ',0) else 0 end as CLSL '
      '        ,ZLZLS2.SIZE '
      '        ,DDZL.ShipDate '
      '        ,DDZL.DDRQ '
      '        ,DDZL.BuyNo '
      '        ,DDZLTW.DDZT '
      '      from ZLZLS2 '
      '      left join CLZL on CLZL.CLDH=ZLZLS2.CLBH '
      '      left join DDZl on DDZl.DDBH=ZLZLS2.ZLBH '
      '      left join DDZlTW on DDZlTW.DDBH=DDZl.DDBH '
      '      left join SCZL on SCZL.ZLBH=ZLZLS2.ZLBH '
      
        '      left join XXZL on XXZl.XieXing=DDZl.XieXing and XXZL.SheHa' +
        'o=DDZl.SheHao '
      
        '      left join XXBWFL on XXBWFL.XieXing=XXZL.XieXing and XXBWFL' +
        '.BWBH=ZLZLS2.BWBH '
      '      left join XXBWFLS on XXBWFLS.FLBH=XXBWFL.FLBH '
      '      where 1=1 '
      '             and left(ZLZLS2.CLBH,1)<>'#39'W'#39
      '             and DDZL.GSBH='#39'VA12'#39
      '             and ZLZLS2.CLBH=:CLBH '
      '             and ZLZLS2.ZMLB='#39'N'#39'       '
      '             and SCZL.SCBH=SCZl.ZLBH '
      '             and SCZL.SCBH is not null '
      '             and ZLZLS2.CLSL<>0 '
      '            and CLZL.CQDH='#39'VN'#39' '
      '             and isnull(XXBWFLS.DFL,'#39#39')<>'#39'G'#39'  '
      '       and DDZL.BuyNO like '#39'201512%'#39
      '          and DDZL.DDLB<>'#39'B'#39'  '
      
        '       group by ZLZLS2.ZLBH,ZLZLS2.CLBH,ZLZLS2.SIZE,XXZL.Article' +
        ',DDZL.Pairs,DDZL.ShipDate,DDZL.DDRQ,DDZL.BuyNo,DDZLTW.DDZT '
      '      ) S2  '
      
        'LEFT JOIN (select CGZLSS.ZLBH,CGZLSS.CLBH,CGZLSS.XXCC,ISNULL(SUM' +
        '(CGZLSS.Qty),0) as CGQty,Max(CGZLSS.CGNO) as CGNO  '
      '           FROM CGZLSS  '
      '           LEFT JOIN CGZL ON  CGZL.CGNO=CGZLSS.CGNO  '
      '           left join DDZl on DDZl.DDBH=CGZLSS.ZLBH'
      
        '           left join XXZL on XXZl.XieXing=DDZl.XieXing and XXZL.' +
        'SheHao=DDZl.SheHao'
      '           WHERE CGZL.CGLX<>'#39'6'#39'  '
      '               and CGZLSS.CLBH=:CLBH  '
      '               and DDZL.GSBH='#39'VA12'#39
      '       and DDZL.BuyNO like '#39'201512%'#39
      '           group by CGZLSS.ZLBH,CGZLSS.CLBH,CGZLSS.XXCC '
      
        '          ) CG ON CG.CLBH=S2.CLBH and CG.ZLBH=S2.ZLBH  and CG.XX' +
        'CC=S2.SIZE '
      
        ' LEFT JOIN ( select CGKCUSE.ZLBH,CGKCUSE.CLBH,ISNULL(SUM(CGKCUSE' +
        '.Qty),0) as UseStock '
      '                   FROM CGKCUSE  '
      '                   left join DDZl on DDZl.DDBH=CGKCUSE.ZLBH'
      
        '                   left join XXZL on XXZl.XieXing=DDZl.XieXing a' +
        'nd XXZL.SheHao=DDZl.SheHao'
      '                   WHERE CGKCUSE.CLBH=:CLBH  '
      '                         and DDZL.GSBH='#39'VA12'#39
      '       and DDZL.BuyNO like '#39'201512%'#39
      '                   group by CGKCUSE.CLBH,CGKCUSE.ZLBH '
      
        '            ) Stock on Stock.ZLBH=S2.ZLBH and Stock.CLBH=S2.CLBH' +
        '  '
      
        'left join (select KCRKS.CGBH as ZLBH ,KCRKS.CLBH,sum(KCRKS.Qty )' +
        ' as RKQty, '
      '                  max(KCRKS.RKNO) as RKNO '
      '           from  KCRKS with (nolock) '
      
        '           inner join DDZL on DDZL.DDBH=KCRKS.CGBH and DDZL.GSBH' +
        '='#39'VA12'#39' '
      
        '           left join KCRK with (nolock)  on KCRK.RKNO=KCRKS.RKNO' +
        '  '
      '           where DDZL.GSBH='#39'VA12'#39' '
      '                 and KCRKS.CLBH=:CLBH '
      '       and DDZL.BuyNO like '#39'201512%'#39
      
        '           group by KCRKS.CGBH,KCRKS.CLBH ) RKZL ON RKZL.CLBH=S2' +
        '.CLBH and RKZL.ZLBH=S2.ZLBH'
      'left join DDZL on DDZL.DDBH=S2.ZLBH'
      ' ')
    UpdateObject = UpSql3
    Left = 408
    Top = 216
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 11
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
      end>
    object StringField1: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object StringField2: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object IntegerField1: TIntegerField
      FieldName = 'Pairs'
      DisplayFormat = '##,#0'
    end
    object FloatField1: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0'
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'CGQty'
      DisplayFormat = '##,#0.0'
    end
    object CurrencyField2: TCurrencyField
      FieldName = 'UseStock'
      DisplayFormat = '##,#0.0'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'ShipDate'
      DisplayFormat = 'yy/MM/dd'
    end
    object Query1DDRQ: TDateTimeField
      FieldName = 'DDRQ'
    end
    object DetailQryDiff: TCurrencyField
      FieldName = 'Diff'
      DisplayFormat = '##,#0.0'
      currency = False
    end
    object DetailQryDDZT: TStringField
      FieldName = 'DDZT'
    end
    object DetailQrySize: TStringField
      FieldName = 'Size'
    end
    object DetailQryBuyNo: TStringField
      FieldName = 'BuyNo'
    end
    object DetailQryCGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object DetailQryRKQty: TCurrencyField
      FieldName = 'RKQty'
      DisplayFormat = '##,#0.0'
    end
    object DetailQryRKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object DetailQryCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
  end
  object PopupMenu4: TPopupMenu
    Left = 409
    Top = 314
    object Modify1: TMenuItem
      Caption = 'Modify'
      OnClick = Modify1Click
    end
    object UseStock1: TMenuItem
      Caption = 'Use Stock'
      Enabled = False
      OnClick = UseStock1Click
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
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
  object qrUsestock: TQuery
    DatabaseName = 'DB'
    Left = 376
    Top = 315
  end
  object TempQry: TQuery
    DatabaseName = 'DB'
    Left = 483
    Top = 216
  end
end
