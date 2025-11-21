object AnyStockF: TAnyStockF
  Left = 216
  Top = 167
  Width = 1341
  Height = 514
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
    Width = 1325
    Height = 124
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label3: TLabel
      Left = 366
      Top = 9
      Width = 69
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Mat ID'
    end
    object Label5: TLabel
      Left = 537
      Top = 9
      Width = 69
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatName'
    end
    object Label2: TLabel
      Left = 600
      Top = 41
      Width = 57
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'W.H'
    end
    object Label4: TLabel
      Left = 427
      Top = 60
      Width = 74
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'StockDate'
    end
    object Label7: TLabel
      Left = 740
      Top = 41
      Width = 60
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'KCBH'
    end
    object Label9: TLabel
      Left = 218
      Top = 9
      Width = 17
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = '~'
    end
    object Label1: TLabel
      Left = 2
      Top = 57
      Width = 69
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 171
      Top = 61
      Width = 12
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = '~'
    end
    object Label8: TLabel
      Left = 285
      Top = 57
      Width = 67
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'BuyNo'
    end
    object Label6: TLabel
      Left = 605
      Top = 68
      Width = 57
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Loc'
    end
    object Edit2: TEdit
      Left = 612
      Top = 5
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyPress = Edit2KeyPress
    end
    object Edit1: TEdit
      Left = 439
      Top = 5
      Width = 93
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object Button1: TButton
      Left = 11
      Top = 93
      Width = 62
      Height = 26
      Caption = 'Query'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Edit3: TEdit
      Left = 735
      Top = 5
      Width = 113
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
      OnKeyPress = Edit3KeyPress
    end
    object Button2: TButton
      Left = 83
      Top = 94
      Width = 62
      Height = 25
      Caption = 'Excel'
      TabOrder = 4
      OnClick = Button2Click
    end
    object BaseDate: TDateTimePicker
      Left = 506
      Top = 57
      Width = 93
      Height = 24
      Date = 40020.406377673610000000
      Format = 'yyyy/MM/dd'
      Time = 40020.406377673610000000
      Color = clMoneyGreen
      TabOrder = 5
      OnChange = BaseDateChange
    end
    object CBX1: TComboBox
      Left = 664
      Top = 37
      Width = 73
      Height = 24
      Style = csDropDownList
      Color = clMoneyGreen
      ItemHeight = 16
      TabOrder = 6
      Items.Strings = (
        'All')
    end
    object Edit4: TEdit
      Left = 805
      Top = 37
      Width = 53
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 7
      OnKeyPress = Edit1KeyPress
    end
    object Button5: TButton
      Left = 155
      Top = 94
      Width = 70
      Height = 25
      Caption = 'Print'
      TabOrder = 8
      OnClick = Button5Click
    end
    object CB1: TCheckBox
      Left = 1010
      Top = 28
      Width = 90
      Height = 17
      Caption = '>0'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 9
    end
    object CB3: TCheckBox
      Left = 1010
      Top = 49
      Width = 90
      Height = 17
      Caption = 'Hide X'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 10
    end
    object CB4: TCheckBox
      Left = 1010
      Top = 70
      Width = 90
      Height = 20
      Caption = 'Hide Z'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 11
    end
    object Chk_Stock: TCheckBox
      Left = 232
      Top = 98
      Width = 130
      Height = 17
      Caption = 'Show Detail'
      TabOrder = 12
      OnClick = Chk_StockClick
    end
    object CB5: TCheckBox
      Left = 870
      Top = 28
      Width = 107
      Height = 17
      Caption = 'Hide U'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 13
    end
    object CB7: TCheckBox
      Left = 870
      Top = 6
      Width = 251
      Height = 17
      Caption = 'Remain at warehosue'
      TabOrder = 14
    end
    object CB6: TCheckBox
      Left = 870
      Top = 48
      Width = 107
      Height = 17
      Caption = 'Hide V'
      Checked = True
      State = cbChecked
      TabOrder = 15
    end
    object chk_shp: TCheckBox
      Left = 4
      Top = 5
      Width = 90
      Height = 25
      Caption = 'RYDate'
      TabOrder = 16
    end
    object dtp3: TDateTimePicker
      Left = 99
      Top = 4
      Width = 116
      Height = 24
      Date = 39846.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39846.000000000000000000
      ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
      TabOrder = 17
    end
    object dtp4: TDateTimePicker
      Left = 245
      Top = 4
      Width = 113
      Height = 24
      Date = 39846.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39846.000000000000000000
      ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
      TabOrder = 18
    end
    object EditRY1: TEdit
      Left = 77
      Top = 54
      Width = 84
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
      ParentFont = False
      TabOrder = 19
    end
    object EditRY2: TEdit
      Left = 190
      Top = 54
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
      TabOrder = 20
    end
    object BuyNoEdit: TEdit
      Left = 354
      Top = 54
      Width = 67
      Height = 24
      ImeName = #20013#25991' ('#32321#39636') - '#27880#38899
      TabOrder = 21
    end
    object CB8: TCheckBox
      Left = 1010
      Top = 93
      Width = 90
      Height = 17
      Caption = 'Hide J'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 22
    end
    object CB9: TCheckBox
      Left = 870
      Top = 69
      Width = 131
      Height = 17
      Caption = 'Mat Class'
      Color = clYellow
      ParentColor = False
      TabOrder = 23
      OnClick = CB9Click
    end
    object LocCombo: TComboBox
      Left = 664
      Top = 62
      Width = 73
      Height = 24
      Style = csDropDownList
      Color = clMoneyGreen
      ItemHeight = 16
      TabOrder = 24
      Items.Strings = (
        ''
        'TW'
        'VN')
    end
    object CheckBox1: TCheckBox
      Left = 1112
      Top = 24
      Width = 129
      Height = 17
      Caption = 'change N37 LBBH'
      TabOrder = 25
      Visible = False
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 124
    Width = 1325
    Height = 351
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnEditButtonClick = DBGrid1EditButtonClick
    OnGetCellParams = DBGrid1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLDH'
        Footers = <>
        ReadOnly = True
        Title.Caption = #26448#26009'No|Mat ID'
        Title.TitleButton = True
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <
          item
            FieldName = 'YWPM'
            ValueType = fvtCount
          end>
        ReadOnly = True
        Title.Caption = #26448#26009'|Material Name'
        Title.TitleButton = True
        Width = 207
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        ReadOnly = True
        Title.Caption = #26448#26009'|Material Chinese'
        Width = 217
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = #26448#26009'|Unit'
        Title.TitleButton = True
        Width = 34
      end
      item
        EditButtons = <>
        FieldName = 'CQDH'
        Footers = <>
        Title.Caption = #25505#21312'|Loc'
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
        ReadOnly = True
        Title.Caption = #29694#26377#24235#23384'|Qty'
        Title.TitleButton = True
        Width = 72
      end
      item
        Color = clSkyBlue
        EditButtons = <>
        FieldName = 'UnRkQty'
        Footers = <>
        ReadOnly = True
        Title.Caption = '+'#22312#36884#37327'|+OnWay'
        Width = 71
      end
      item
        Color = clSkyBlue
        EditButtons = <>
        FieldName = 'UnRkJG'
        Footers = <>
        ReadOnly = True
        Title.Caption = '+'#21152#24037#20837#24235'|+JG In'
        Width = 66
      end
      item
        Color = clSkyBlue
        EditButtons = <>
        FieldName = 'UnJG'
        Footers = <>
        ReadOnly = True
        Title.Caption = '-'#21152#24037#28136#38656#27714'|-JG Out'
        Width = 80
      end
      item
        Color = clSkyBlue
        EditButtons = <>
        FieldName = 'UnLL'
        Footers = <>
        ReadOnly = True
        Title.Caption = '-'#38936#26009#28136#38656#27714'|-Delivery '
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'Remain'
        Footers = <>
        ReadOnly = True
        Title.Caption = '='#21487#21033#24235'|=Remain'
        Title.Color = clAqua
        Width = 73
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'UnBURkQty'
        Footers = <>
        ReadOnly = True
        Title.Caption = #22312#36884#35036#37327'|OnBUWay'
      end
      item
        Color = 12582911
        EditButtons = <>
        FieldName = 'STOCKQty'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Qty(Stock)'
        Visible = False
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'LastRem'
        Footers = <
          item
            FieldName = 'LastRem'
            ValueType = fvtSum
          end>
        ReadOnly = True
        Title.Caption = 'last month'
        Title.TitleButton = True
        Visible = False
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'RKQty'
        Footers = <
          item
            FieldName = 'RKQty'
            ValueType = fvtSum
          end>
        ReadOnly = True
        Title.Caption = 'RKQty+'
        Title.TitleButton = True
        Visible = False
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'LLQty'
        Footers = <
          item
            FieldName = 'LLQty'
            ValueType = fvtSum
          end>
        ReadOnly = True
        Title.Caption = 'LLQty-'
        Title.TitleButton = True
        Visible = False
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'JGRK'
        Footers = <
          item
            FieldName = 'JGRK'
            ValueType = fvtSum
          end>
        ReadOnly = True
        Title.Caption = 'JGRK+'
        Title.TitleButton = True
        Visible = False
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'JGCK'
        Footers = <
          item
            FieldName = 'JGCK'
            ValueType = fvtSum
          end>
        ReadOnly = True
        Title.Caption = 'JGCK-'
        Title.TitleButton = True
        Visible = False
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'JGCKTemp'
        Footers = <
          item
            FieldName = 'JGCKTemp'
            ValueType = fvtSum
          end>
        ReadOnly = True
        Title.Caption = 'JGTmp#'
        Title.TitleButton = True
        Visible = False
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'KCBH'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Visible = False
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Visible = False
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'QCQty'
        Footers = <>
        ReadOnly = True
        Visible = False
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'ERPClass'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'ERP|Class'
        Visible = False
        Width = 36
      end
      item
        Color = 12582911
        EditButtons = <>
        FieldName = 'LBBH'
        Footers = <>
        Title.Caption = #20998#39006'|Class'
        Visible = False
        Width = 37
      end
      item
        EditButtons = <>
        FieldName = 'SupplierID'
        Footers = <>
        Title.Caption = #24288#21830'|SupplierID'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'SupplierName'
        Footers = <>
        Title.Caption = #24288#21830'|SupplierName'
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'if object_id('#39'tempdb..#RemainKC'#39') is not null  '
      'begin   drop table #RemainKC end   '
      'select CLZL.CLDH,'
      '       CLZL.CLLB,'
      '       CLZL.YWPM,'
      '       CLZL.ZWPM,'
      '       CLZL.DWBH,'
      '       CLZL.CQDH,'
      '       LastKC.LastRem,'
      '       RK.RKQty,'
      '       QC.QCQty,'
      '       LL.LLQty,'
      '       JGRK.JGRK,'
      '       JGCK.JGCK,'
      '       JGCKTemp.JGCK as JGCKTemp,'
      '       JGCKTemp1.JGCK as JGCKTempM'
      
        '       ,Un90LL.CLBH as Un90LLCLBH,CLLBFLS.LBBH,CLZL.ZSDH as Supp' +
        'lierID, ZSZL.ZSYWJC as SupplierName'
      'into #RemainKC from CLZL  '
      'left join (select KCCLMONTH.CLBH,KCCLMONTH.Qty as LastRem '
      '           from KCCLMONTH  where KCCLMONTH.KCYEAR='#39'2016'#39
      '           and KCMONTH='#39'01'#39
      '           and KCCLMONTH.CLBH like '#39'%'#39
      '           and KCCLMONTH.CKBH='#39'VA12'#39
      '           ) LastKC on LastKC.CLBH=CLZL.CLDH '
      'left join (select KCRKS.CLBH,sum(KCRKS.Qty) as RKQty '
      '           from KCRKS'
      '           left join KCRK on KCRK.RKNO=KCRKS.RKNO '
      
        '           where convert(smalldatetime,convert(varchar,KCRK.USER' +
        'DATE,111))>='
      '                 '#39'2016/02/01'#39
      '                 and '
      
        '                 convert(smalldatetime,convert(varchar,KCRK.USER' +
        'DATE,111))<='
      '                 '#39'2016/02/15'#39
      '                 and KCRKS.CLBH like '#39'%'#39
      '                 and KCRK.CKBH='#39'VA12'#39
      '           group by KCRKS.CLBH) RK on RK.CLBH=CLZL.CLDH '
      'left join (select KCRKS.CLBH,sum(KCRKS.Qty) as QCQty '
      '           from KCRKS'
      
        '           left join KCRK on KCRK.RKNO=KCRKS.RKNO and KCRK.QCID=' +
        #39'NO'#39' '
      
        '           where convert(smalldatetime,convert(varchar,KCRK.USER' +
        'DATE,111))>='
      '                '#39'2016/02/01'#39
      
        '                and convert(smalldatetime,convert(varchar,KCRK.U' +
        'SERDATE,111))<='
      '                '#39'2016/02/15'#39
      '                and KCRKS.CLBH like '#39'%'#39
      '                and KCRK.CKBH='#39'VA12'#39
      '           group by KCRKS.CLBH) QC on QC.CLBH=CLZL.CLDH '
      'left join (select KCLLS.CLBH,sum(KCLLS.Qty) as LLQty '
      '           from KCLLS '
      '           left join KCLL on KCLL.LLNO=KCLLS.LLNO '
      
        '           where convert(smalldatetime,convert(varchar,KCLL.CFMD' +
        'ATE,111))>='
      '                 '#39'2016/02/01'#39
      
        '                 and convert(smalldatetime,convert(varchar,KCLL.' +
        'CFMDATE,111))<='
      '                 '#39'2016/02/15'#39
      '                 and KCLLS.CLBH like '#39'%'#39
      '                 and KCLL.CFMID<>'#39'NO'#39
      '                 and KCLL.CKBH='#39'VA12'#39
      '           group by KCLLS.CLBH) LL on LL.CLBH=CLZL.CLDH'
      'left join (select JGZLS.CLBH,sum(JGZLS.Qty) as JGRK '
      '           from JGZLS'
      '           left join JGZL on JGZL.JGNO=JGZLS.JGNO '
      
        '           where convert(smalldatetime,convert(varchar,JGZL.CFMD' +
        'ate1,111))>='
      '                 '#39'2016/02/01'#39
      
        '                 and convert(smalldatetime,convert(varchar,JGZL.' +
        'CFMDate1,111))<='
      '                 '#39'2016/02/15'#39
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
      '                      '#39'2016/02/01'#39
      
        '                      and convert(smalldatetime,convert(varchar,' +
        'JGZL.CFMDate1,111))<='
      '                      '#39'2016/02/15'#39
      '                      and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      '                      and JGZL.CKBH='#39'VA12'#39
      
        '                      ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM' +
        '.CLBH=JGZLS.CLBH'
      
        '           where convert(smalldatetime,convert(varchar,JGZL.CFMD' +
        'ate1,111))>='
      '                 '#39'2016/02/01'#39
      
        '                 and convert(smalldatetime,convert(varchar,JGZL.' +
        'CFMDate1,111))<='
      '                 '#39'2016/02/15'#39
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
      '           '#39'2016/02/15'#39
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
      '           '#39'2016/02/15'#39
      '           and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      '           and JGZL.CKBH='#39'VA12'#39
      
        '           group by JGZLS.CLBH ) JGCKTemp1 on JGCKTemp1.CLBH=CLZ' +
        'L.CLDH'
      'left join (select CLBH from ( '
      #9#9#9'select KCLLS.CLBH from KCLLS,KCLL '
      
        '            where KCLL.LLNO=KCLLS.LLNO and KCLL.GSBH='#39'VA12'#39' and ' +
        'KCLL.CFMID<>'#39'NO'#39' and KCLL.CFMDate>GetDate()-90 and KCLLS.Qty>0 '
      '         and 1=2 '
      '         and LEFT(KCLLS.CLBH,1)<>'#39'X'#39'  '
      '         and LEFT(KCLLS.CLBH,1)<>'#39'Z'#39'  '
      '         and LEFT(KCLLS.CLBH,2)<>'#39'U1'#39'  '
      '         and LEFT(KCLLS.CLBH,1)<>'#39'V'#39'  '
      '         and LEFT(KCLLS.CLBH,1)<>'#39'J'#39'  '
      '     Group by KCLLS.CLBH '
      '     Union all  '
      '     select JGZLS.ZMLB from JGZL,JGZLS '
      
        '            where JGZL.JGNO=JGZLS.JGNO and JGZL.GSBH='#39'VA12'#39' and ' +
        'JGZLS.ZMLB<>'#39'ZZZZZZZZZZ'#39'  and JGZL.CFMID1<>'#39'NO'#39' and  JGZL.CFMDat' +
        'e1>GetDate()-90 '
      '         and 1=2 '
      '         and LEFT(JGZLS.ZMLB,1)<>'#39'X'#39'  '
      '         and LEFT(JGZLS.ZMLB,1)<>'#39'Z'#39'  '
      '         and LEFT(JGZLS.ZMLB,2)<>'#39'U1'#39'  '
      '         and LEFT(JGZLS.ZMLB,1)<>'#39'V'#39'  '
      '         and LEFT(JGZLS.ZMLB,1)<>'#39'J'#39'  '
      '            Group by JGZLS.ZMLB   ) Un90LL Group by CLBH  '
      ') Un90LL  on Un90LL.CLBH=CLZL.CLDH  '
      'left join (select CLBH,LBBH from CLLBFLS '
      '            where GSBH='#39'VA12'#39' '
      '         and 1=2 '
      '         and LEFT(CLLBFLS.CLBH,1)<>'#39'X'#39'  '
      '         and LEFT(CLLBFLS.CLBH,1)<>'#39'Z'#39'  '
      '         and LEFT(CLLBFLS.CLBH,2)<>'#39'U1'#39'  '
      '         and LEFT(CLLBFLS.CLBH,1)<>'#39'V'#39'  '
      '         and LEFT(CLLBFLS.CLBH,1)<>'#39'J'#39'  '
      '           ) CLLBFLS on CLLBFLS.CLBH=CLZL.CLDH'
      'left join ZSZL on CLZL.ZSDH=ZSZL.ZSDH'
      
        '  where not (LastKC.LastRem is null  and RK.RKQty is null and LL' +
        '.LLQty is null '
      
        '               and JGRK.JGRK is null and JGCK.JGCK is null and J' +
        'GCKTemp.JGCK is null and JGCKTemp1.JGCK is null)'
      'and LEFT(CLZL.CLDH,1)<>'#39'X'#39'  '
      'and LEFT(CLZL.CLDH,1)<>'#39'Z'#39'  '
      'and LEFT(CLZL.CLDH,2)<>'#39'U1'#39'  '
      'and LEFT(CLZL.CLDH,1)<>'#39'V'#39'  '
      'and LEFT(CLZL.CLDH,1)<>'#39'J'#39'  '
      ''
      'DECLARE @Ldate as datetime'
      'set @Ldate = DATEADD(month, -6, GETDATE())'
      'select #RemainKC.CLDH,'
      '       #RemainKC.CLLB,'
      '       #RemainKC.CQDH,'
      '       #RemainKC.YWPM  as YWPM,'
      '       #RemainKC.ZWPM  as ZWPM,'
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
      '       isnull(UnBURk.UnBURkQty,0) as UnBURkQty, '
      
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
      
        '       ,'#39#39' as ERPClass,'#39#39' as LBBH,#RemainKC.SupplierID,#RemainKC' +
        '.SupplierName   '
      'from #RemainKC '
      'left join (select * '
      '           from KCZLS '
      '           where CKBH='#39'VA12'#39
      '           ) KCZLS on KCZLS.CLBH=#RemainKC.CLDH'
      'left join (select ZLZLS2.CLBH '
      '                   ,sum(ZLZLS2.CLSL) AS CLSL '
      '             from  ZLZLS2  '
      '             left join ddzl on ddzl.ddbh=ZLZLS2.zlbh'
      
        '             where ZLZLS2.MJBH='#39'ZZZZZZZZZZ'#39' and ddzl.GSBH='#39'VA12'#39 +
        ' and DDZL.DDRQ<=convert(smalldatetime,'#39'2016/02/15'#39') '
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
        'CLL.SCBH<>'#39'ZZZZZZZZZZ'#39'  and ddzl.GSBH='#39'VA12'#39'  and KCLL.USERDATE<' +
        '=convert(smalldatetime,'#39'2016/02/16'#39') '
      
        '                 and ddzl.YN='#39'1'#39' and ddzl.DDLB='#39'N'#39'  and ddzl.shi' +
        'pdate > @Ldate and DDZL.DDRQ<=convert(smalldatetime,'#39'2016/02/15'#39 +
        ') '
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
        'ate > @Ldate and DDZL.DDRQ<=convert(smalldatetime,'#39'2016/02/15'#39') '
      
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
        'ipdate > @Ldate and DDZL.DDRQ<=convert(smalldatetime,'#39'2016/02/15' +
        #39') '
      '             group by ZLZLS2.ZLBH,ZLZLS2.CLBH,JGZLBK.okQty'
      
        '                   having sum(ZLZLS2.CLSL) > isnull(JGZLBK.okQty' +
        ',0)'
      
        '            ) za group by za.CLBH) JGZLZLS2 ON JGZLZLS2.CLBH=#Re' +
        'mainKC.CLDH '
      
        'left join (select CGZLS.CLBH, sum(isnull(CGZLS.qty,0)-isnull(CGR' +
        'K.okQty,0)) as UnRkQty  '
      '           from CGZLS'
      '           left join CGZL on CGZL.CGNO=CGZLS.CGNO'
      
        '           left join (select KCRK.ZSNO,KCRKS.CLBH,sum(IsNull(KCR' +
        'KS.Qty,0)) as okQty from KCRKS'
      '                      left join KCRK on KCRK.RKNO=KCRKS.RKNO '
      
        '                      where IsNull(KCRKS.Charge,0)<>1  and ISNUL' +
        'L(KCRKS.RKSB,'#39#39')<>'#39'NG'#39' and ISNULL(KCRKS.RKSB,'#39#39')<>'#39'DL'#39' and KCRK.' +
        'GSBH='#39'VA12'#39' '
      
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
      
        '                  and CGZL.CGDate > @LDate  and CGZL.USERDATE<=C' +
        'onvert(smalldatetime,'#39'2016/02/16'#39')  '
      '                  and isnull(CGZLS.qty,0)>isnull(CGRK.okQty,0) '
      '                  and (CGZL.CGLX='#39'2'#39
      '                  or CGZL.CGLX='#39'5'#39
      '                  or CGZL.CGLX='#39'3'#39
      '                  or CGZL.CGLX='#39'1'#39')'
      
        '           group by CGZLS.CLBH ) UnRk on UnRk.CLBH=#RemainKC.CLD' +
        'H '
      
        'left join (select CGZLS.CLBH, sum(isnull(CGZLS.qty,0)-isnull(CGR' +
        'K.okQty,0)) as UnBURkQty  '
      '           from CGZLS'
      '           left join CGZL on CGZL.CGNO=CGZLS.CGNO'
      
        '           left join (select KCRK.ZSNO,KCRKS.CLBH,sum(IsNull(KCR' +
        'KS.Qty,0)) as okQty from KCRKS'
      '                      left join KCRK on KCRK.RKNO=KCRKS.RKNO '
      
        '                      where IsNull(KCRKS.Charge,0)<>1  and ISNUL' +
        'L(KCRKS.RKSB,'#39#39')<>'#39'NG'#39' and ISNULL(KCRKS.RKSB,'#39#39')<>'#39'DL'#39' and KCRK.' +
        'GSBH='#39'VA12'#39' '
      
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
      
        '           where  CGZLS.YN<>'#39'5'#39'  and CGZLS.YN<>'#39'0'#39'   and CGZL.De' +
        'vType='#39'Z07'#39' '
      '                  and CGZLS.CLBH like '#39'%'#39
      '                  and CGZL.GSBH='#39'VA12'#39
      
        '                  and CGZL.CGDate > @LDate and CGZL.USERDATE<=Co' +
        'nvert(smalldatetime,'#39'2016/02/16'#39')  '
      '                  and isnull(CGZLS.qty,0)>isnull(CGRK.okQty,0) '
      '                  and (CGZL.CGLX='#39'2'#39
      '                  or CGZL.CGLX='#39'5'#39
      '                  or CGZL.CGLX='#39'3'#39
      '                  or CGZL.CGLX='#39'1'#39')'
      
        '           group by CGZLS.CLBH ) UnBURk on UnBURk.CLBH=#RemainKC' +
        '.CLDH '
      'where 1=1 '
      'and  ('
      
        '     case when isnull(ZLZLS2.CLSL,0)-ISNULL(ZLZLS2LL.QTY,0)>=0 t' +
        'hen '
      
        '       (isnull(#RemainKC.LastRem,0)+isnull(#RemainKC.RKQty,0)-is' +
        'null(#RemainKC.LLQty,0)+isnull(#RemainKC.JGRK,0)-isnull(#RemainK' +
        'C.JGCK,0)'
      
        '        +isnull(#RemainKC.JGCKTempM,0)+isnull(UnRk.UnRkQty,0)-is' +
        'null(ZLZLS2.CLSL,0)+ISNULL(ZLZLS2LL.QTY,0)-isnull(JGZLZLS2.CLSL,' +
        '0) )'
      '     else '
      
        '       (isnull(#RemainKC.LastRem,0)+isnull(#RemainKC.RKQty,0)-is' +
        'null(#RemainKC.LLQty,0)+isnull(#RemainKC.JGRK,0)-isnull(#RemainK' +
        'C.JGCK,0)'
      
        '        +isnull(#RemainKC.JGCKTempM,0)+isnull(UnRk.UnRkQty,0)-is' +
        'null(JGZLZLS2.CLSL,0) )'
      '     end ) >0.05 '
      'order by #RemainKC.CLDH'
      '')
    UpdateObject = UpdateSQL1
    Left = 504
    Top = 160
    object Query1CLLB: TStringField
      FieldName = 'CLLB'
      FixedChar = True
      Size = 3
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
    object Query1STOCKQty: TCurrencyField
      FieldName = 'STOCKQty'
      DisplayFormat = '##,#0.00'
    end
    object Query1QCQty: TCurrencyField
      FieldName = 'QCQty'
      DisplayFormat = '##,#0.00'
    end
    object Query1UnLL: TCurrencyField
      FieldName = 'UnLL'
      DisplayFormat = '##,#0.00'
      currency = False
    end
    object Query1UnRkQty: TCurrencyField
      FieldName = 'UnRkQty'
      DisplayFormat = '##,#0.00'
      currency = False
    end
    object Query1UnJG: TCurrencyField
      FieldName = 'UnJG'
      DisplayFormat = '##,#0.00'
      currency = False
    end
    object Query1Remain: TCurrencyField
      FieldName = 'Remain'
      DisplayFormat = '##,#0.00'
      currency = False
    end
    object Query1UnRkJG: TCurrencyField
      FieldName = 'UnRkJG'
      DisplayFormat = '##,#0.00'
      currency = False
    end
    object Query1UnBURkQty: TCurrencyField
      FieldName = 'UnBURkQty'
      DisplayFormat = '##,#0.00'
    end
    object Query1ERPClass: TStringField
      FieldName = 'ERPClass'
      FixedChar = True
      Size = 1
    end
    object Query1LBBH: TStringField
      FieldName = 'LBBH'
      FixedChar = True
      Size = 4
    end
    object Query1CQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object Query1SupplierID: TStringField
      FieldName = 'SupplierID'
      FixedChar = True
      Size = 6
    end
    object Query1SupplierName: TStringField
      FieldName = 'SupplierName'
      FixedChar = True
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 536
    Top = 160
  end
  object TmpQuery: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '')
    Left = 473
    Top = 160
  end
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    Left = 504
    Top = 192
    object NN1: TMenuItem
      Caption = 'Material Trace'
      OnClick = NN1Click
    end
    object Remain1: TMenuItem
      Caption = 'Remain'
      OnClick = Button6Click
    end
    object LockQtyMaterial1: TMenuItem
      Caption = 'Lock Qty Material'
      OnClick = LockQtyMaterial1Click
    end
    object N1: TMenuItem
      Caption = '-'
      Visible = False
    end
    object Modify1: TMenuItem
      Caption = 'Modify'
      Visible = False
      OnClick = Modify1Click
    end
    object UseClass1: TMenuItem
      Caption = 'Use ERP Class'
      Enabled = False
      Visible = False
      OnClick = UseClass1Click
    end
    object Save1: TMenuItem
      Caption = 'Save'
      Enabled = False
      Visible = False
      OnClick = Save1Click
    end
    object Cancel1: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      Visible = False
      OnClick = Cancel1Click
    end
  end
  object UpdateSQL1: TUpdateSQL
    Left = 504
    Top = 224
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Excel File(*.xls)|*.xls|CSV(comma split)(*.csv)|*.csv|Web Page(*' +
      '.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 473
    Top = 191
  end
end
