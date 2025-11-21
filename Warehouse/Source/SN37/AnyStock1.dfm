object AnyStock: TAnyStock
  Left = 341
  Top = 312
  Width = 1525
  Height = 655
  Caption = 'AnyStock'
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
    Width = 1509
    Height = 129
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 165
      Height = 24
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Any Material Stock:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 6
      Top = 42
      Width = 69
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 231
      Top = 42
      Width = 69
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 195
      Top = 98
      Width = 69
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CKBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 14
      Top = 99
      Width = 69
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
    object Label7: TLabel
      Left = 724
      Top = 71
      Width = 82
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'days no use'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 5
      Top = 71
      Width = 69
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SupNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 142
      Top = 70
      Width = 69
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Supplier:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 345
      Top = 72
      Width = 69
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CustomNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label28: TLabel
      Left = 536
      Top = 101
      Width = 73
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Shelves:'
    end
    object Label10: TLabel
      Left = 384
      Top = 101
      Width = 90
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Not CKBH:'
    end
    object Label11: TLabel
      Left = 552
      Top = 45
      Width = 57
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SIZE:'
    end
    object Label12: TLabel
      Left = 1224
      Top = 32
      Width = 41
      Height = 16
      Caption = 'Don vi:'
    end
    object Label13: TLabel
      Left = 1224
      Top = 64
      Width = 41
      Height = 16
      Caption = 'Xuong:'
    end
    object Edit2: TEdit
      Left = 301
      Top = 40
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyPress = Edit2KeyPress
    end
    object Edit1: TEdit
      Left = 77
      Top = 40
      Width = 153
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object Button1: TButton
      Left = 815
      Top = 92
      Width = 105
      Height = 33
      Caption = 'Query'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Edit3: TEdit
      Left = 429
      Top = 40
      Width = 113
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
      OnKeyPress = Edit3KeyPress
    end
    object Button2: TButton
      Left = 936
      Top = 58
      Width = 89
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 4
      OnClick = Button2Click
    end
    object DTP1: TDateTimePicker
      Left = 86
      Top = 96
      Width = 106
      Height = 24
      Date = 39289.406377673610000000
      Format = 'yyyy/MM/dd'
      Time = 39289.406377673610000000
      TabOrder = 5
    end
    object CB1: TCheckBox
      Left = 795
      Top = 43
      Width = 78
      Height = 17
      Caption = 'Qty<0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object Button3: TButton
      Left = 1031
      Top = 57
      Width = 89
      Height = 33
      Caption = 'PrintList'
      TabOrder = 7
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 1127
      Top = 91
      Width = 89
      Height = 33
      Caption = 'Database'
      TabOrder = 8
      Visible = False
      OnClick = Button4Click
    end
    object CBX1: TComboBox
      Left = 266
      Top = 94
      Width = 121
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 9
      Items.Strings = (
        'All')
    end
    object Edit4: TEdit
      Left = 665
      Top = 68
      Width = 57
      Height = 24
      TabOrder = 10
      Text = '90'
    end
    object CB2: TCheckBox
      Left = 546
      Top = 73
      Width = 119
      Height = 17
      Caption = 'In Warehouse >'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object CB3: TCheckBox
      Left = 880
      Top = 42
      Width = 137
      Height = 17
      Caption = '>2014'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object Edit5: TEdit
      Left = 78
      Top = 67
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 13
      OnKeyPress = Edit1KeyPress
    end
    object Edit6: TEdit
      Left = 213
      Top = 66
      Width = 122
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 14
      OnKeyPress = Edit1KeyPress
    end
    object CNOEdit: TEdit
      Left = 416
      Top = 66
      Width = 126
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 15
      OnKeyPress = Edit1KeyPress
    end
    object Button5: TButton
      Left = 934
      Top = 92
      Width = 91
      Height = 33
      Caption = 'PrintCard'
      TabOrder = 16
      OnClick = Button5Click
    end
    object KCBHEdit: TEdit
      Left = 612
      Top = 99
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 17
    end
    object Button6: TButton
      Left = 1031
      Top = 91
      Width = 89
      Height = 33
      Caption = 'DetailPrt'
      TabOrder = 18
      OnClick = Button6Click
    end
    object NotInCKBHEdit: TEdit
      Left = 480
      Top = 97
      Width = 56
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 19
    end
    object SIZEEdit: TEdit
      Left = 612
      Top = 41
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 20
    end
    object SizeCK: TCheckBox
      Left = 699
      Top = 43
      Width = 94
      Height = 17
      Caption = 'Have Size'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 21
    end
    object Button7: TButton
      Left = 1032
      Top = 16
      Width = 89
      Height = 33
      Caption = 'Print Monthly'
      TabOrder = 22
      OnClick = Button7Click
    end
    object Button8: TButton
      Left = 1128
      Top = 16
      Width = 89
      Height = 33
      Caption = 'Print Yearly'
      TabOrder = 23
      OnClick = Button8Click
    end
    object KCBHEdit1: TEdit
      Left = 701
      Top = 98
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 24
    end
    object Edit7: TEdit
      Left = 1272
      Top = 24
      Width = 121
      Height = 24
      TabOrder = 25
    end
    object CheckBox1: TCheckBox
      Left = 880
      Top = 16
      Width = 97
      Height = 17
      Caption = 'Qty>0'
      TabOrder = 26
    end
    object Edit8: TEdit
      Left = 1272
      Top = 56
      Width = 121
      Height = 24
      TabOrder = 27
    end
    object Button9: TButton
      Left = 1229
      Top = 92
      Width = 89
      Height = 33
      Caption = 'STT'
      TabOrder = 28
      OnClick = Button9Click
    end
  end
  object PC1: TPageControl
    Left = 0
    Top = 129
    Width = 1509
    Height = 487
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
      Caption = 'QTY'
      object DBGrid1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1501
        Height = 456
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
        PopupMenu = PopupMenu1
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
            FieldName = 'YWPM'
            Footers = <
              item
                FieldName = 'YWPM'
                ValueType = fvtCount
              end>
            Title.Caption = #26448#26009#33521#25991#21517#31281'|YWPM'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 379
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
            Footers = <
              item
                FieldName = 'LastRem'
                ValueType = fvtSum
              end>
            Title.Caption = #26376#21021#24235#23384'|LastRem'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 78
          end
          item
            EditButtons = <>
            FieldName = 'RKQty'
            Footers = <
              item
                FieldName = 'RKQty'
                ValueType = fvtSum
              end>
            Title.Caption = #20837#24235'|RKQty'
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
            Title.Caption = #30332#26009'|LLQty'
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
            FieldName = 'JGRK'
            Footers = <
              item
                FieldName = 'JGRK'
                ValueType = fvtSum
              end>
            Title.Caption = #21152#24037#36914'|JGRK'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 72
          end
          item
            EditButtons = <>
            FieldName = 'JGCK'
            Footers = <
              item
                FieldName = 'JGCK'
                ValueType = fvtSum
              end>
            Title.Caption = #21152#24037#20986'|JGCK'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 77
          end
          item
            EditButtons = <>
            FieldName = 'JGCKTemp'
            Footers = <
              item
                FieldName = 'JGCKTemp'
                ValueType = fvtSum
              end>
            Title.Caption = #21152#24037#26410#22238'|JGCKTemp'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
            Title.Caption = #20489#24235'|CKBH'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 46
          end
          item
            EditButtons = <>
            FieldName = 'KCBH'
            Footers = <>
            Title.Caption = #36008#26550#34399'|KCBH'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'LBBH'
            Footers = <>
            Title.Caption = #20998#39006'|LBBH'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 49
          end
          item
            EditButtons = <>
            FieldName = 'zsdh'
            Footers = <>
            Title.Caption = #24288#21830'|ZSDH'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 53
          end
          item
            EditButtons = <>
            FieldName = 'zsqm'
            Footers = <>
            Title.Caption = #24288#21830'|Name'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 95
          end>
      end
    end
    object TS2: TTabSheet
      Caption = 'SIZE'
      ImageIndex = 1
      object DBGrid2: TDBGridEh
        Left = 0
        Top = 0
        Width = 1501
        Height = 456
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
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnEditButtonClick = DBGrid2EditButtonClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = #26009#34399'|CLBH'
            Width = 83
          end
          item
            EditButtons = <>
            FieldName = 'zwpm'
            Footers = <>
            Title.Caption = #26448#26009#25551#36848'|Mat Name'
            Width = 252
          end
          item
            EditButtons = <>
            FieldName = 'dwbh'
            Footers = <>
            Title.Caption = #21934#20301'|Unit'
            Width = 41
          end
          item
            EditButtons = <>
            FieldName = 'HGLB'
            Footers = <>
            Title.Caption = #39006#21029'|Class'
          end
          item
            EditButtons = <>
            FieldName = 'SIZE'
            Footers = <>
            Title.Caption = #23610#30908'|SIZE'
            Width = 50
          end
          item
            Color = 12582911
            EditButtons = <>
            FieldName = 'Qty'
            Footer.FieldName = 'Qty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #25976#37327'|Qty'
            Width = 93
          end
          item
            EditButtons = <>
            FieldName = 'LastRem'
            Footer.FieldName = 'LastRem'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #26399#21021'|LastRem'
            Width = 57
          end
          item
            ButtonStyle = cbsEllipsis
            EditButtons = <>
            FieldName = 'RKQty'
            Footer.FieldName = 'RKQty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #20837#24235'|RKQty'
            Width = 69
          end
          item
            ButtonStyle = cbsEllipsis
            EditButtons = <>
            FieldName = 'LLQty'
            Footer.FieldName = 'LLQty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #38936#26009'|LLQty'
            Width = 70
          end
          item
            ButtonStyle = cbsEllipsis
            EditButtons = <>
            FieldName = 'JGRK'
            Footer.FieldName = 'JGRK'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #21152#24037#20837#24235'|JGRK'
            Width = 63
          end
          item
            ButtonStyle = cbsEllipsis
            EditButtons = <>
            FieldName = 'JGCK'
            Footer.FieldName = 'JGCK'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #21152#24037#20986#24235'|CKQty'
          end
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
            Title.Caption = #20489#24235'|CKBH'
          end>
      end
    end
  end
  object Query1: TQuery
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'if object_id('#39'tempdb..#CLZLKC'#39') is not null  '
      'begin   drop table #CLZLKC end   '
      
        'select clzl.zsdh,CLZL.CLDH,LastKC.LBBH,CLZL.DWBH,LastKC.LastRem,' +
        'RK.RKQty,LL.LLQty,JGRK.JGRK,JGCK.JGCK,JGCKTemp.JGCK as JGCKTemp'
      'into #CLZLKC from CLZL with (nolock) '
      
        'left join (select KCCLMONTH.CLBH,KCCLMONTH.LBBH,KCCLMONTH.Qty as' +
        ' LastRem '
      
        '           from KCCLMONTH   with (nolock) where KCCLMONTH.KCYEAR' +
        '='#39'2015'#39
      '           and KCMONTH='#39'12'#39
      '           and KCCLMONTH.CLBH like '#39'%'#39
      '           and KCCLMONTH.CKBH='#39'VTXW'#39
      '           ) LastKC on LastKC.CLBH=CLZL.CLDH '
      
        'left join (select KCRKS.CLBH,sum(KCRKS.Qty) as RKQty from KCRKS ' +
        'with (nolock)  '
      
        '           left join KCRK with (nolock)   on KCRK.RKNO=KCRKS.RKN' +
        'O where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)' +
        ')>='
      '           '#39'2016/01/01'#39
      
        '           and convert(smalldatetime,convert(varchar,KCRK.USERDA' +
        'TE,111))<='
      '           '#39'2016/01/04'#39
      '           and KCRKS.CLBH like '#39'%'#39
      '           and KCRK.CKBH='#39'VTXW'#39
      '           group by KCRKS.CLBH) RK on RK.CLBH=CLZL.CLDH '
      
        'left join (select KCLLS.CLBH,sum(KCLLS.Qty) as LLQty from KCLLS ' +
        'with (nolock)   '
      
        '           left join KCLL with (nolock)    on KCLL.LLNO=KCLLS.LL' +
        'NO where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)' +
        ')>='
      '           '#39'2016/01/01'#39
      
        '           and convert(smalldatetime,convert(varchar,KCLL.CFMDAT' +
        'E,111))<='
      '           '#39'2016/01/04'#39
      '           and KCLLS.CLBH like '#39'%'#39
      '           and KCLL.CFMID<>'#39'NO'#39
      '           and KCLL.CKBH='#39'VTXW'#39
      '           group by KCLLS.CLBH) LL on LL.CLBH=CLZL.CLDH'
      
        'left join (select JGZLS.CLBH,sum(JGZLS.Qty) as JGRK from JGZLS w' +
        'ith (nolock) '
      
        '           left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO' +
        ' where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))' +
        '>='
      '           '#39'2016/01/01'#39
      
        '           and convert(smalldatetime,convert(varchar,JGZL.CFMDat' +
        'e1,111))<='
      '           '#39'2016/01/04'#39
      '           and JGZLS.CLBH like '#39'%'#39
      '           and JGZL.CFMID1 <>'#39'NO'#39
      '           and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      '           and JGZL.CKBH='#39'VTXW'#39
      '           group by JGZLS.CLBH ) JGRK on JGRK.CLBH=CLZL.CLDH'
      
        'left join (select JGZLS.ZMLB,sum(round(convert(float,JGZLS.Qty)*' +
        'convert(float,JGZLM.Qty),2)) as JGCK from JGZLS with (nolock) '
      
        '           left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO' +
        '  '
      
        '           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty fro' +
        'm JGZLS  with (nolock) '
      
        '                      left join JGZL  with (nolock) on JGZL.JGNO' +
        '=JGZLS.JGNO '
      
        '                      where convert(smalldatetime,convert(varcha' +
        'r,JGZL.CFMDate1,111))>='
      '                      '#39'2016/01/01'#39
      
        '                      and convert(smalldatetime,convert(varchar,' +
        'JGZL.CFMDate1,111))<='
      '                      '#39'2016/01/04'#39
      '                      and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      '                      and JGZL.CKBH='#39'VTXW'#39
      
        '                      ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM' +
        '.CLBH=JGZLS.CLBH'
      
        '           where convert(smalldatetime,convert(varchar,JGZL.CFMD' +
        'ate1,111))>='
      '           '#39'2016/01/01'#39
      
        '           and convert(smalldatetime,convert(varchar,JGZL.CFMDat' +
        'e1,111))<='
      '           '#39'2016/01/04'#39
      '           and JGZLS.ZMLB like '#39'%'#39
      '           and JGZL.CFMID1 <>'#39'NO'#39
      '           and JGZLS.ZMLB<>'#39'ZZZZZZZZZZ'#39
      '           and JGZL.CKBH='#39'VTXW'#39
      '           group by JGZLS.ZMLB ) JGCK on JGCK.ZMLB=CLZL.CLDH'
      
        'left join (select JGZLS.ZMLB,sum(round(convert(float,JGZLS.Qty)*' +
        'convert(float,JGZLM.Qty),2)) as JGCK from JGZLS with (nolock) '
      
        '           left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO' +
        '  '
      
        '           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty fro' +
        'm JGZLS  with (nolock) '
      
        '                      left join JGZL  with (nolock) on JGZL.JGNO' +
        '=JGZLS.JGNO '
      '                      where  JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      '                      and JGZL.CKBH='#39'VTXW'#39
      
        '                      ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM' +
        '.CLBH=JGZLS.CLBH'
      '           where  JGZLS.ZMLB like '#39'%'#39
      '           and JGZL.CFMID1 ='#39'NO'#39
      '           and JGZLS.ZMLB<>'#39'ZZZZZZZZZZ'#39
      '           and JGZL.CKBH='#39'VTXW'#39
      
        '           group by JGZLS.ZMLB ) JGCKTemp on JGCKTemp.ZMLB=CLZL.' +
        'CLDH'
      
        'select clzl.zsdh,zszl.zsqm,#CLZLKC.CLDH,IsNull(#CLZLKC.LBBH,CLLB' +
        'FLS.LBBH) as LBBH,CLZL.YWPM,CLZL.ZWPM,#CLZLKC.DWBH,isnull(#CLZLK' +
        'C.LastRem,0) as LastRem,'
      
        '       isnull(#CLZLKC.RKQty,0) as RKQty,isnull(#CLZLKC.LLQty,0) ' +
        'as LLQty,'
      
        '       isnull(round(#CLZLKC.JGRK,2),0) as JGRK,isnull(round(#CLZ' +
        'LKC.JGCK,2),0) as JGCK,'
      
        '       isnull(round(#CLZLKC.JGCKTemp,2),0) as JGCKTemp,ISnull(KC' +
        'ZLS.DFL,KCZLS.KCBH) as DFL,KCZLS.CKBH,KCZLS.KCBH,'
      
        '       isnull(Round(#CLZLKC.LastRem,2),0)+isnull(Round(#CLZLKC.R' +
        'KQty,2),0)-isnull(Round(#CLZLKC.LLQty,2),0)+isnull(Round(#CLZLKC' +
        '.JGRK,2),0)-isnull(Round(#CLZLKC.JGCK,2),0) as Qty'
      'from #CLZLKC '
      'left join CLZL on CLZL.CLDH=#CLZLKC.CLDH '
      'left join zszl on zszl.zsdh=clzl.zsdh '
      'left join (select * from KCZLS   where CKBH='#39'VTXW'#39
      '                            ) KCZLS on KCZLS.CLBH=#CLZLKC.CLDH'
      
        'left join CLLBFLS on CLLBFLS.CLBH=CLZL.CLDH and CLLBFLS.GSBH='#39'VT' +
        'X'#39
      
        '  where not (#CLZLKC.LastRem is null  and #CLZLKC.RKQty is null ' +
        'and #CLZLKC.LLQty is null '
      
        '               and #CLZLKC.JGRK is null and #CLZLKC.JGCK is null' +
        ' and #CLZLKC.JGCKTemp is null)'
      'and KCZLS.CKBH like '#39'VTXW%'#39
      'and #CLZLKC.CLDH like '#39'%'#39
      'and CLZL.YWPM like '#39'%%'#39
      'and CLZL.YWPM like '#39'%%'#39
      'order by #CLZLKC.CLDH'
      '  ')
    Left = 504
    Top = 160
    object Query1zsqm: TStringField
      FieldName = 'zsqm'
      FixedChar = True
      Size = 50
    end
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
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1LastRem: TFloatField
      FieldName = 'LastRem'
      DisplayFormat = '##,#0.00'
    end
    object Query1RKQty: TFloatField
      FieldName = 'RKQty'
      DisplayFormat = '##,#0.00'
    end
    object Query1LLQty: TFloatField
      FieldName = 'LLQty'
      DisplayFormat = '##,#0.00'
    end
    object Query1JGRK: TFloatField
      FieldName = 'JGRK'
      DisplayFormat = '##,#0.00'
    end
    object Query1JGCK: TFloatField
      FieldName = 'JGCK'
      DisplayFormat = '##,#0.00'
    end
    object Query1JGCKTemp: TCurrencyField
      FieldName = 'JGCKTemp'
      DisplayFormat = '##,#0.00'
    end
    object Query1Qty: TFloatField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query1KCBH: TStringField
      FieldName = 'KCBH'
      FixedChar = True
      Size = 6
    end
    object Query1LBBH: TStringField
      FieldName = 'LBBH'
      FixedChar = True
      Size = 2
    end
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object Query1zsdh: TStringField
      FieldName = 'zsdh'
      FixedChar = True
      Size = 6
    end
    object Query1CNO: TStringField
      FieldName = 'HGBH'
      FixedChar = True
      Size = 40
    end
    object Query1DFL: TStringField
      FieldName = 'DFL'
      FixedChar = True
      Size = 50
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 504
    Top = 192
  end
  object PopupMenu1: TPopupMenu
    Left = 504
    Top = 228
    object NN1: TMenuItem
      Caption = 'Detail'
      OnClick = NN1Click
    end
    object NN2: TMenuItem
      Caption = 'Excel'
      OnClick = NN2Click
    end
    object NN3: TMenuItem
      Caption = 'Print'
    end
  end
  object temp: TQuery
    DatabaseName = 'dB'
    Left = 472
    Top = 160
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'Select top 100 SIZE_KCZL.*,SIZE_KCCLMonth.LastRem,SIZE_KCRK.RKQt' +
        'y,SIZE_KCLL.LLQty,SIZE_JGZL.JGRK,SIZE_JGCK.CKQty,CLZL.zwpm,CLZL.' +
        'dwbh from ('
      'Select CKBH,CLBH,HGLB,SIZE,SUM(LastRem) as Qty '
      'from ('
      
        'Select KCCLMONTH.CKBH,KCCLMONTH.CLBH,KCCLMONTH.HGLB,KCCLMONTH.SI' +
        'ZE,KCCLMONTH.Qty as LastRem,'#39'1'#39' as SB '
      'From KCCLMONTH_HG_SIZE KCCLMONTH  '
      'where KCCLMONTH.KCYEAR='#39'2022'#39'  '
      '     --and CLBH='#39'C030007507'#39'-- and HGLB='#39'NK'#39
      
        #9' and KCCLMONTH.KCMONTH='#39'05'#39' --and KCCLMONTH.CKBH in (select CKB' +
        'H from KCCK where GSBH='#39'B07U'#39')'
      'union all '
      
        'Select KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB,IsNull(KCRKSS.SIZE,'#39'ZZZZZZ' +
        #39') as SIZE,sum(IsNull(KCRKSS.Qty,KCRKS.Qty)) as RKQty,'#39'2'#39' as SB ' +
        ' '
      'from KCRKS'
      
        'left join KCRKSS on KCRKS.RKNO=KCRKSS.RKNO and KCRKS.CLBH=KCRKSS' +
        '.CLBH and KCRKS.CGBH=KCRKSS.CGBH and KCRKS.RKSB=KCRKSS.RKSB '
      'left join KCRK on KCRK.RKNO=KCRKS.RKNO '
      
        'where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) ' +
        'between '
      #9#9#9#9#9' '#39'2022/06/01'#39' and '#39'2022/06/30'#39' '
      #9'  --and CKBH in (select CKBH from KCCK where GSBH='#39'B07U'#39') '
      #9'  --and KCRKS.CLBH='#39'C030007507'#39' --and KCRK.HGLB='#39'NK'#39
      
        'Group by KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB,IsNull(KCRKSS.SIZE,'#39'ZZZZ' +
        'ZZ'#39') '#9#9'   '
      'union all   '
      
        'Select KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,Case when CLZL.lycc='#39'N'#39' t' +
        'hen '#39'ZZZZZZ'#39' else IsNull(KCLLSS.SIZE,'#39'ZZZZZZ'#39') end as SIZE'#9' ,-1*' +
        'sum(IsNull(KCLLSS.Qty,KCLLS.Qty))  as LLQty,'#39'3'#39' as SB  '
      'from KCLLS '
      
        'Left join KCLLSS on KCLLSS.LLNO=KCLLS.LLNO and KCLLSS.CLBH=KCLLS' +
        '.CLBH and KCLLSS.SCBH=KCLLS.SCBH and KCLLSS.DFL=KCLLS.DFL '
      'Left join KCLL on KCLL.LLNO=KCLLS.LLNO '
      'left join CLZL on CLZL.cldh=KCLLS.CLBH'
      
        'where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) b' +
        'etween '
      #9#9#9#9#9' '#39'2022/06/01'#39' and '#39'2022/06/30'#39' '
      
        #9' and KCLL.SCBH<>'#39'JJJJJJJJJJ'#39' and KCLL.CFMID<>'#39'NO'#39'  --and CKBH i' +
        'n (select CKBH from KCCK where GSBH='#39'B07U'#39')'
      #9' --and KCLLS.CLBH='#39'C030007507'#39' --and KCLLS.HGLB='#39'NK'#39
      
        'Group by KCLL.CKBH,KCLLS.CLBH,CLZL.lycc,KCLLS.HGLB,IsNull(KCLLSS' +
        '.SIZE,'#39'ZZZZZZ'#39')'
      'union all '
      
        'Select JGZL.CKBH,JGZLS.CLBH,'#39'GC'#39' as HGLB,IsNull(JGZLSS.SIZE,'#39'ZZZ' +
        'ZZZ'#39') as SIZE,sum(IsNull(JGZLSS.Qty,JGZLS.Qty))as JGRK,'#39'4'#39' as SB' +
        '  '
      'from JGZLS'
      
        'left join JGZLSS on JGZLSS.JGNO=JGZLS.JGNO and JGZLSS.CLBH=JGZLS' +
        '.CLBH'
      'left join JGZL on JGZL.JGNO=JGZLS.JGNO '
      
        'where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) ' +
        'between '
      #9#9#9#9#9' '#39'2022/06/01'#39' and '#39'2022/06/30'#39' '
      #9'  and JGZL.CFMID1<>'#39'NO'#39
      #9'  --and JGZLS.CLBH='#39'C030007507'#39' '
      
        #9'  and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39'  --and CKBH in (select CKBH from ' +
        'KCCK where GSBH='#39'B07U'#39') '
      'Group by JGZL.CKBH,JGZLS.CLBH,IsNull(JGZLSS.SIZE,'#39'ZZZZZZ'#39') '
      'union all '
      
        'Select KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,Case when CLZL.lycc='#39'N'#39' t' +
        'hen '#39'ZZZZZZ'#39' else IsNull(KCLLSS.SIZE,'#39'ZZZZZZ'#39') end as SIZE,-1*su' +
        'm(IsNull(KCLLSS.Qty,KCLLS.Qty))  as CKQty,'#39'5'#39' as SB '
      'from KCLLS '
      
        'Left join KCLLSS on KCLLSS.LLNO=KCLLS.LLNO and KCLLSS.CLBH=KCLLS' +
        '.CLBH and KCLLSS.SCBH=KCLLS.SCBH and KCLLSS.DFL=KCLLS.DFL '
      'Left join KCLL on KCLL.LLNO=KCLLS.LLNO '
      'left join CLZL on CLZL.cldh=KCLLS.CLBH'
      
        'where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) b' +
        'etween '
      #9#9#9#9#9' '#39'2022/06/01'#39' and '#39'2022/06/30'#39' '
      #9' --and KCLLS.CLBH='#39'C030007507'#39' --and KCLLS.HGLB='#39'NK'#39
      
        #9' and KCLL.SCBH='#39'JJJJJJJJJJ'#39' and KCLL.CFMID<>'#39'NO'#39'  --and CKBH in' +
        ' (select CKBH from KCCK where GSBH='#39'B07U'#39')'
      
        'Group by KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,CLZL.lycc,IsNull(KCLLSS' +
        '.SIZE,'#39'ZZZZZZ'#39')'
      ') KCLLMonth '
      'Group by CKBH,CLBH,HGLB,SIZE ) SIZE_KCZL'
      'left join ('
      
        #9'Select KCCLMONTH.CKBH,KCCLMONTH.CLBH,KCCLMONTH.HGLB,KCCLMONTH.S' +
        'IZE,KCCLMONTH.Qty as LastRem,'#39'1'#39' as SB '
      #9'From KCCLMONTH_HG_SIZE KCCLMONTH  '
      #9'where KCCLMONTH.KCYEAR='#39'2022'#39'  '
      '     --and CLBH='#39'C030007507'#39'-- and HGLB='#39'NK'#39
      
        #9' and KCCLMONTH.KCMONTH='#39'05'#39' --and KCCLMONTH.CKBH in (select CKB' +
        'H from KCCK where GSBH='#39'B07U'#39')'
      
        ') SIZE_KCCLMonth on SIZE_KCCLMonth.CKBH=SIZE_KCZL.CKBH and SIZE_' +
        'KCCLMonth.CLBH=SIZE_KCZL.CLBH and SIZE_KCCLMonth.HGLB=SIZE_KCZL.' +
        'HGLB and SIZE_KCCLMonth.SIZE=SIZE_KCZL.SIZE'
      'left join ('
      
        'Select KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB,IsNull(KCRKSS.SIZE,'#39'ZZZZZZ' +
        #39') as SIZE,sum(IsNull(KCRKSS.Qty,KCRKS.Qty)) as RKQty,'#39'2'#39' as SB ' +
        ' '
      'from KCRKS'
      
        #9'left join KCRKSS on KCRKS.RKNO=KCRKSS.RKNO and KCRKS.CLBH=KCRKS' +
        'S.CLBH and KCRKS.CGBH=KCRKSS.CGBH and KCRKS.RKSB=KCRKSS.RKSB '
      #9'left join KCRK on KCRK.RKNO=KCRKS.RKNO '
      
        #9'where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111))' +
        ' between '
      #9#9#9#9#9#9' '#39'2022/06/01'#39' and '#39'2022/06/30'#39' '
      #9#9'  --and CKBH in (select CKBH from KCCK where GSBH='#39'B07U'#39') '
      #9#9'  --and KCRKS.CLBH='#39'C030007507'#39' --and KCRK.HGLB='#39'NK'#39
      
        #9'Group by KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB,IsNull(KCRKSS.SIZE,'#39'ZZZ' +
        'ZZZ'#39') '#9
      
        ') SIZE_KCRK on SIZE_KCRK.CKBH=SIZE_KCZL.CKBH and SIZE_KCRK.CLBH=' +
        'SIZE_KCZL.CLBH and SIZE_KCRK.HGLB=SIZE_KCZL.HGLB and SIZE_KCRK.S' +
        'IZE=SIZE_KCZL.SIZE'
      'left join ('
      
        #9'Select KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,Case when CLZL.lycc='#39'N'#39' ' +
        'then '#39'ZZZZZZ'#39' else IsNull(KCLLSS.SIZE,'#39'ZZZZZZ'#39') end as SIZE'#9' ,su' +
        'm(IsNull(KCLLSS.Qty,KCLLS.Qty))  as LLQty,'#39'3'#39' as SB  '
      #9'from KCLLS '
      
        #9'Left join KCLLSS on KCLLSS.LLNO=KCLLS.LLNO and KCLLSS.CLBH=KCLL' +
        'S.CLBH and KCLLSS.SCBH=KCLLS.SCBH and KCLLSS.DFL=KCLLS.DFL '
      #9'Left join KCLL on KCLL.LLNO=KCLLS.LLNO '
      #9'left join CLZL on CLZL.cldh=KCLLS.CLBH'
      
        #9'where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) ' +
        'between '
      #9#9#9#9#9#9' '#39'2022/06/01'#39' and '#39'2022/06/30'#39' '
      
        #9#9' and KCLL.SCBH<>'#39'JJJJJJJJJJ'#39' and KCLL.CFMID<>'#39'NO'#39'  --and CKBH ' +
        'in (select CKBH from KCCK where GSBH='#39'B07U'#39')'
      #9#9' --and KCLLS.CLBH='#39'C030007507'#39' --and KCLLS.HGLB='#39'NK'#39
      
        #9'Group by KCLL.CKBH,KCLLS.CLBH,CLZL.lycc,KCLLS.HGLB,IsNull(KCLLS' +
        'S.SIZE,'#39'ZZZZZZ'#39')'
      
        ') SIZE_KCLL on SIZE_KCLL.CKBH=SIZE_KCZL.CKBH and SIZE_KCLL.CLBH=' +
        'SIZE_KCZL.CLBH and SIZE_KCLL.HGLB=SIZE_KCZL.HGLB and SIZE_KCLL.S' +
        'IZE=SIZE_KCZL.SIZE'
      'left join ('
      
        #9'Select JGZL.CKBH,JGZLS.CLBH,'#39'GC'#39' as HGLB,IsNull(JGZLSS.SIZE,'#39'ZZ' +
        'ZZZZ'#39') as SIZE,sum(IsNull(JGZLSS.Qty,JGZLS.Qty))as JGRK,'#39'4'#39' as S' +
        'B  '
      #9'from JGZLS'
      
        #9'left join JGZLSS on JGZLSS.JGNO=JGZLS.JGNO and JGZLSS.CLBH=JGZL' +
        'S.CLBH'
      #9'left join JGZL on JGZL.JGNO=JGZLS.JGNO '
      
        #9'where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))' +
        ' between '
      #9#9#9#9#9#9' '#39'2022/06/01'#39' and '#39'2022/06/30'#39' '
      #9#9'  and JGZL.CFMID1<>'#39'NO'#39
      #9#9'  --and JGZLS.CLBH='#39'C030007507'#39' '
      
        #9#9'  and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39'  --and CKBH in (select CKBH from' +
        ' KCCK where GSBH='#39'B07U'#39') '
      #9'Group by JGZL.CKBH,JGZLS.CLBH,IsNull(JGZLSS.SIZE,'#39'ZZZZZZ'#39') '
      
        ') SIZE_JGZL on SIZE_JGZL.CKBH=SIZE_KCZL.CKBH and SIZE_JGZL.CLBH=' +
        'SIZE_KCZL.CLBH and SIZE_JGZL.HGLB=SIZE_KCZL.HGLB and SIZE_JGZL.S' +
        'IZE=SIZE_KCZL.SIZE'
      'left join ('
      
        #9'Select KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,Case when CLZL.lycc='#39'N'#39' ' +
        'then '#39'ZZZZZZ'#39' else IsNull(KCLLSS.SIZE,'#39'ZZZZZZ'#39') end as SIZE,sum(' +
        'IsNull(KCLLSS.Qty,KCLLS.Qty))  as CKQty,'#39'5'#39' as SB '
      #9'from KCLLS '
      
        #9'Left join KCLLSS on KCLLSS.LLNO=KCLLS.LLNO and KCLLSS.CLBH=KCLL' +
        'S.CLBH and KCLLSS.SCBH=KCLLS.SCBH and KCLLSS.DFL=KCLLS.DFL '
      #9'Left join KCLL on KCLL.LLNO=KCLLS.LLNO '
      #9'left join CLZL on CLZL.cldh=KCLLS.CLBH'
      
        #9'where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) ' +
        'between '
      #9#9#9#9#9#9' '#39'2022/06/01'#39' and '#39'2022/06/30'#39' '
      #9#9' --and KCLLS.CLBH='#39'C030007507'#39' --and KCLLS.HGLB='#39'NK'#39
      
        #9#9' and KCLL.SCBH='#39'JJJJJJJJJJ'#39' and KCLL.CFMID<>'#39'NO'#39'  --and CKBH i' +
        'n (select CKBH from KCCK where GSBH='#39'B07U'#39')'
      
        #9'Group by KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,CLZL.lycc,IsNull(KCLLS' +
        'S.SIZE,'#39'ZZZZZZ'#39')'
      
        ') SIZE_JGCK on SIZE_JGCK.CKBH=SIZE_KCZL.CKBH and SIZE_JGCK.CLBH=' +
        'SIZE_KCZL.CLBH and SIZE_JGCK.HGLB=SIZE_KCZL.HGLB and SIZE_JGCK.S' +
        'IZE=SIZE_KCZL.SIZE'
      'Left join CLZL on CLZL.CLDH=SIZE_KCZL.CLBH')
    Left = 544
    Top = 160
    object Query2CKBH: TStringField
      DisplayWidth = 6
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query2CLBH: TStringField
      DisplayWidth = 15
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query2HGLB: TStringField
      DisplayWidth = 5
      FieldName = 'HGLB'
      FixedChar = True
      Size = 5
    end
    object Query2SIZE: TStringField
      DisplayWidth = 6
      FieldName = 'SIZE'
      FixedChar = True
      Size = 6
    end
    object Query2Qty: TCurrencyField
      DisplayWidth = 10
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object Query2LastRem: TCurrencyField
      DisplayWidth = 10
      FieldName = 'LastRem'
      DisplayFormat = '##,#0.00'
    end
    object Query2RKQty: TCurrencyField
      DisplayWidth = 10
      FieldName = 'RKQty'
      DisplayFormat = '##,#0.00'
    end
    object Query2LLQty: TCurrencyField
      DisplayWidth = 10
      FieldName = 'LLQty'
      DisplayFormat = '##,#0.00'
    end
    object Query2JGRK: TCurrencyField
      DisplayWidth = 10
      FieldName = 'JGRK'
      DisplayFormat = '##,#0.00'
    end
    object Query2JGCK: TCurrencyField
      DisplayWidth = 10
      FieldName = 'JGCK'
      DisplayFormat = '##,#0.00'
    end
    object Query2zwpm: TStringField
      DisplayWidth = 200
      FieldName = 'zwpm'
      FixedChar = True
      Size = 200
    end
    object Query2dwbh: TStringField
      DisplayWidth = 4
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 544
    Top = 192
  end
end
