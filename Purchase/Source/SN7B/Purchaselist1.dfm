object Purchaselist: TPurchaselist
  Left = 193
  Top = 104
  Width = 1124
  Height = 480
  Caption = 'Purchase list'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
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
  PixelsPerInch = 106
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1108
    Height = 121
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 4
      Top = 20
      Width = 72
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
    object Label2: TLabel
      Left = 187
      Top = 20
      Width = 75
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
    object Label5: TLabel
      Left = 193
      Top = 51
      Width = 67
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'YPDH:'
    end
    object Label7: TLabel
      Left = 424
      Top = 84
      Width = 33
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'FD:'
    end
    object Label3: TLabel
      Left = 0
      Top = 53
      Width = 75
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SR#:'
    end
    object Label10: TLabel
      Left = 395
      Top = 52
      Width = 54
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SeaSon:'
    end
    object Label22: TLabel
      Left = 396
      Top = 19
      Width = 53
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Supplier:'
    end
    object Label45: TLabel
      Left = 319
      Top = 84
      Width = 39
      Height = 16
      Caption = 'Stage:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label40: TLabel
      Left = 198
      Top = 86
      Width = 20
      Height = 16
      Caption = 'To:'
    end
    object Label39: TLabel
      Left = 22
      Top = 86
      Width = 77
      Height = 16
      Caption = 'ShipingDate:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 542
      Top = 12
      Width = 81
      Height = 33
      Caption = 'Query'
      TabOrder = 5
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 263
      Top = 16
      Width = 105
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
    object EDIT1: TEdit
      Left = 77
      Top = 16
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edit4: TEdit
      Left = 458
      Top = 80
      Width = 72
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object YPDHEdit: TEdit
      Left = 263
      Top = 48
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      Color = clYellow
      TabOrder = 4
    end
    object CheckBox1: TCheckBox
      Left = 541
      Top = 60
      Width = 49
      Height = 17
      Caption = 'TW'
      Color = 10395294
      ParentColor = False
      TabOrder = 6
    end
    object Button2: TButton
      Left = 643
      Top = 12
      Width = 81
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 7
      OnClick = Button2Click
    end
    object Edit3: TEdit
      Left = 77
      Top = 48
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object CheckBox2: TCheckBox
      Left = 542
      Top = 83
      Width = 49
      Height = 17
      Caption = 'VN'
      Checked = True
      Color = 10395294
      ParentColor = False
      State = cbChecked
      TabOrder = 8
    end
    object CheckBox3: TCheckBox
      Left = 608
      Top = 59
      Width = 65
      Height = 17
      Caption = 'CG ok'
      Checked = True
      Color = 10395294
      ParentColor = False
      State = cbChecked
      TabOrder = 9
    end
    object CheckBox4: TCheckBox
      Left = 608
      Top = 83
      Width = 76
      Height = 17
      Caption = 'CG no ok'
      Checked = True
      Color = 10395294
      ParentColor = False
      State = cbChecked
      TabOrder = 10
    end
    object Edit8: TEdit
      Left = 451
      Top = 48
      Width = 79
      Height = 24
      CharCase = ecUpperCase
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object SupplierEdit: TEdit
      Left = 450
      Top = 16
      Width = 80
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object CheckBox6: TCheckBox
      Left = 690
      Top = 59
      Width = 88
      Height = 16
      Caption = 'R+U ok'
      Color = 10395294
      ParentColor = False
      TabOrder = 13
    end
    object CheckBox7: TCheckBox
      Left = 690
      Top = 83
      Width = 88
      Height = 16
      Caption = 'R+U not ok'
      Color = 10395294
      ParentColor = False
      TabOrder = 14
    end
    object KFJDEdit: TComboBox
      Left = 360
      Top = 81
      Width = 60
      Height = 24
      ItemHeight = 16
      TabOrder = 15
      Items.Strings = (
        ''
        'PRO'
        'SM2'
        'SM3'
        'SM4'
        'PDT'
        'CFM'
        'ADD'
        'AD1'
        'PUL'
        'AD2'
        'AD3'
        'AD4'
        'AD5'
        'AD6')
    end
    object DTP1: TDateTimePicker
      Left = 101
      Top = 82
      Width = 97
      Height = 25
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 16
    end
    object DTP2: TDateTimePicker
      Left = 220
      Top = 82
      Width = 97
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 17
    end
    object DateCK: TCheckBox
      Left = 4
      Top = 87
      Width = 17
      Height = 17
      Checked = True
      State = cbChecked
      TabOrder = 18
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 121
    Width = 1108
    Height = 319
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
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 2
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    ReadOnly = True
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnEditButtonClick = DBGridEh1EditButtonClick
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'JiJie'
        Footers = <>
        Title.Caption = #23395#21029'|Sea'
        Width = 57
      end
      item
        EditButtons = <>
        FieldName = 'KFJD'
        Footers = <>
        Title.Caption = #38542#27573'|Stage'
        Width = 51
      end
      item
        EditButtons = <>
        FieldName = 'DEVCODE'
        Footers = <>
        Title.Caption = 'SR#|DevCode'
        Width = 108
      end
      item
        EditButtons = <>
        FieldName = 'YPDH'
        Footers = <
          item
            FieldName = 'ZLBH'
            ValueType = fvtCount
          end>
        Title.Caption = #21046#20196#34399'|ZLBH'
        Title.TitleButton = True
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = #26448#26009#32232#34399'|CLBH'
        Title.TitleButton = True
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Title.Caption = #26448#26009#33521#25991#21517#31281'|YWPM'
        Title.TitleButton = True
        Width = 350
      end
      item
        EditButtons = <>
        FieldName = 'dwbh'
        Footers = <>
        Title.Caption = #21934#20301'|DWBH'
        Title.TitleButton = True
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'cqdh'
        Footers = <>
        Title.Caption = #37319#21312'|CQDH'
        Title.TitleButton = True
        Width = 43
      end
      item
        DisplayFormat = '##,#0.0'
        EditButtons = <>
        FieldName = 'CLSL'
        Footer.DisplayFormat = '##,#0.0'
        Footers = <
          item
            FieldName = 'CLSL'
            ValueType = fvtSum
          end>
        Title.Caption = #21046#20196#25976#37327'|CLSL'
        Title.TitleButton = True
        Width = 76
      end
      item
        DisplayFormat = '##,#0.0'
        EditButtons = <>
        FieldName = 'CGQty'
        Footer.DisplayFormat = '##,#0.0'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #37319#36092#25976#37327'|CGQty'
      end
      item
        DisplayFormat = '##,#0.0'
        EditButtons = <>
        FieldName = 'RKQty'
        Footer.DisplayFormat = '##,#0.0'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #20132#36008#25976#37327'|RKQty'
      end
      item
        DisplayFormat = '##,#0.0'
        EditButtons = <>
        FieldName = 'UseQty'
        Footer.DisplayFormat = '##,#0.0'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #20351#29992#24235#23384#37327'|UseStock'
      end
      item
        EditButtons = <>
        FieldName = 'SDRQ'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CGDate'
        Footers = <>
        Title.Caption = #37319#36092#26085#26399'|CGDate'
        Width = 94
      end
      item
        EditButtons = <>
        FieldName = 'YQDate'
        Footers = <>
        Title.Caption = #35201#27714#20132#26399'|YQDate'
        Width = 91
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Title.Caption = #22238#24489#20132#26399'|CFMDate'
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'RKDate'
        Footers = <>
        Title.Caption = #20132#36008#26085#26399'|RKDate'
        Width = 89
      end
      item
        EditButtons = <>
        FieldName = 'FINDATE'
        Footers = <>
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = 'JHRQ'
        Footers = <>
        Title.Caption = #20132#26399'|ETA'
      end
      item
        EditButtons = <>
        FieldName = 'Quantity'
        Footers = <>
        Title.Caption = #25976#37327'|PairQty'
      end
      item
        EditButtons = <>
        FieldName = 'TestShoeQty'
        Footers = <>
        Width = 84
      end
      item
        DisplayFormat = '##,#0.0'
        EditButtons = <>
        FieldName = 'CGNO'
        Footers = <>
        Title.Caption = #37319#36092#21934#34399'|CGNO'
        Title.TitleButton = True
        Width = 96
      end
      item
        DisplayFormat = '##,#0.0'
        EditButtons = <>
        FieldName = 'RKNO'
        Footers = <>
        Title.Caption = #20837#24235#21934#34399'|RKNO'
        Title.TitleButton = True
        Width = 93
      end
      item
        EditButtons = <>
        FieldName = 'TestNo'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        Title.Caption = 'SKU#|Article'
        Title.TitleButton = True
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'zwpm'
        Footers = <>
        Title.Caption = #26448#26009#20013#25991#21517#31281'|ZWPM'
        Title.TitleButton = True
        Width = 175
      end
      item
        DisplayFormat = '##,#0.0'
        EditButtons = <>
        FieldName = 'USPrice'
        Footer.DisplayFormat = '##,#0.0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            FieldName = 'USPrice'
            ValueType = fvtAvg
          end>
        Title.Caption = #32654#37329#21934#20729'|USPrice'
        Width = 68
      end
      item
        DisplayFormat = '##,#0.0'
        EditButtons = <>
        FieldName = 'VNPrice'
        Footer.DisplayFormat = '##,#0.0'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #36234#24163#21934#20729'|VNPrice'
      end
      item
        DisplayFormat = '##,#0.0'
        EditButtons = <>
        FieldName = 'USACC'
        Footer.DisplayFormat = '##,#0.0'
        Footer.ValueType = fvtSum
        Footers = <
          item
            FieldName = 'USACC'
            ValueType = fvtSum
          end>
        Title.Caption = #32654#37329#37329#38989'|USACC'
        Width = 84
      end
      item
        DisplayFormat = '##,#0.0'
        EditButtons = <>
        FieldName = 'VNACC'
        Footer.DisplayFormat = '##,#0.0'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #36234#24163#37329#38989'|VNACC'
      end
      item
        EditButtons = <>
        FieldName = 'FD'
        Footers = <>
        Title.Caption = #38283#30332#21729'|FD'
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'CSBH'
        Footers = <>
        Title.Caption = #24288#21830'|CSBH'
        Width = 57
      end
      item
        EditButtons = <>
        FieldName = 'zsywjc'
        Footers = <>
        Title.Caption = #24288#21830#21517#31281'|Supplier'
        Width = 115
      end>
  end
  object Query1: TQuery
    AfterOpen = Query1AfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'Select KFXXZL.JiJie,YPZL.KFJD,KFXXZL.DEVCODE,YPZL_ZLZLS2.YPDH,YP' +
        'ZL_ZLZLS2.CLBH,CLZL.ywpm,CLZL.dwbh,CLZL.cqdh,YPZL_ZLZLS2.CLSL,CG' +
        'ZLS.CGQty,KCRKS.RKQty,CGKCUSE.UseQty,YPZL.SDRQ,CGZLS.CGDate,CGZL' +
        'S.YQDate,CGZLS.CFMDate,KCRKS.RKDate'
      
        '      ,YPZL.FINDATE,YPZL.JHRQ,YPZL.Quantity,shoetest.TestShoeQty' +
        ',CGZLS.CGNO,KCRKS.RKNO,shoetest.TestNo,KFXXZL.ARTICLE,CLZL.zwpm,' +
        'KCRKS.USPrice,KCRKS.VNPrice,KCRKS.USACC,KCRKS.VNACC,KFXXZL.FD,YP' +
        'ZL_ZLZLS2.CSBH,ZSZL.zsywjc'
      'from ('
      
        'Select YPZL_ZLZLS2.YPDH,YPZL_ZLZLS2.CLBH,SUM(CLSL) as CLSL,MAX(Y' +
        'PZL_ZLZLS2.CSBH) as CSBH from ('
      'Select YPZL_ZLZLS2.*'
      'from YPZL_ZLZLS2'
      'left join YPZL on YPZL.YPDH=YPZL_ZLZLS2.YPDH'
      
        'left join kfxxzl on kfxxzl.XieXing=YPZL.XieXing and kfxxzl.SheHa' +
        'o=YPZL.SheHao'
      'left join CLZL on CLZL.cldh=YPZL_ZLZLS2.CLBH'
      'where 1=1   and ZMLB='#39'N'#39' and CLSL>0 and CLBH not like '#39'W%'#39
      '       and YPZL_ZLZLS2.YPDH like '#39'ALTV200700002%'#39'  '
      
        ') YPZL_ZLZLS2 Group by YPZL_ZLZLS2.YPDH,YPZL_ZLZLS2.CLBH ) YPZL_' +
        'ZLZLS2'
      'Left join ('
      
        '    Select CGZLSS.ZLBH,CGZLSS.CLBH,Sum(CGZLSS.Qty) as CGQty,MIN(' +
        'CGZL.CGDate) as CGDate,MIN(CGZL.CGNO) as CGNO,MAX(CGZLS.YQDate) ' +
        'as YQDate,MAX(CGZLS.CFMDate) as CFMDate'
      '    from CGZLSS'
      
        '    left join CGZLS on CGZLSS.CGNO=CGZLS.CGNO and CGZLS.CLBH=CGZ' +
        'LSS.CLBH'
      '    left join CGZL on CGZL.CGNO=CGZLSS.CGNO'
      '    left join YPZL on YPZL.YPDH=CGZLSS.ZLBH'
      
        '    left join kfxxzl on kfxxzl.XieXing=YPZL.XieXing and kfxxzl.S' +
        'heHao=YPZL.SheHao'
      '    where 1=1 '
      '       and CGZLSS.ZLBH like '#39'ALTV200700002%'#39'  '
      '    Group by CGZLSS.ZLBH,CGZLSS.CLBH'
      
        ') CGZLS on CGZLS.ZLBH=YPZL_ZLZLS2.YPDH and CGZLS.CLBH=YPZL_ZLZLS' +
        '2.CLBH'
      'Left join ('
      
        '    Select KCRKS.CGBH,KCRKS.CLBH,Sum(KCRKS.Qty) as RKQty,MIN(KCR' +
        'K.USERDATE) as RKDate,MIN(KCRK.RKNO) as RKNO,MAX(KCRKS.VNPrice) ' +
        'as VNPrice,MAX(KCRKS.USPrice) as USPrice,Sum(KCRKS.USACC) as USA' +
        'CC,SUM(KCRKS.VNACC) as VNACC'
      '    from KCRKS'
      '    left join KCRK on KCRKS.RKNO=KCRK.RKNO'
      '    left join YPZL on YPZL.YPDH=KCRKS.CGBH'
      
        '    left join kfxxzl on kfxxzl.XieXing=YPZL.XieXing and kfxxzl.S' +
        'heHao=YPZL.SheHao'
      '    where 1=1 '
      '       and KCRKS.CGBH like '#39'ALTV200700002%'#39'  '
      '    Group by KCRKS.CGBH,KCRKS.CLBH'
      
        ') KCRKS on KCRKS.CGBH=YPZL_ZLZLS2.YPDH and KCRKS.CLBH=YPZL_ZLZLS' +
        '2.CLBH'
      'left join ('
      '    Select CGKCUSE.ZLBH,CGKCUSE.CLBH,SUM(CGKCUSE.Qty) as UseQty'
      '    from  CGKCUSE'
      '    left join YPZL on YPZL.YPDH=CGKCUSE.ZLBH'
      
        '    left join kfxxzl on kfxxzl.XieXing=YPZL.XieXing and kfxxzl.S' +
        'heHao=YPZL.SheHao'
      '    where 1=1 '
      '       and CGKCUSE.ZLBH like '#39'ALTV200700002%'#39'  '
      '    Group by CGKCUSE.ZLBH,CGKCUSE.CLBH  '
      
        ') CGKCUSE on CGKCUSE.ZLBH=YPZL_ZLZLS2.YPDH and CGKCUSE.CLBH=YPZL' +
        '_ZLZLS2.CLBH'
      'left join ('
      
        '  select shoetest.YPDH,SUM(ShoeTest2.Qty) as TestShoeQty,MAX(sho' +
        'etest.TestNo) as TestNo'
      '  from shoetest'
      '  left join ShoeTest2 on ShoeTest2.TestNo=shoetest.TestNo'
      '  left join YPZL on YPZL.YPDH=shoetest.YPDH'
      
        '  left join kfxxzl on kfxxzl.XieXing=YPZL.XieXing and kfxxzl.She' +
        'Hao=YPZL.SheHao '
      '  where 1=1 '
      '  Group by shoetest.YPDH '
      ') shoetest on shoetest.YPDH=YPZL_ZLZLS2.YPDH'
      'left join YPZL on YPZL.YPDH=YPZL_ZLZLS2.YPDH'
      
        'left join kfxxzl on kfxxzl.XieXing=YPZL.XieXing and kfxxzl.SheHa' +
        'o=YPZL.SheHao'
      'left join CLZL on CLZL.cldh=YPZL_ZLZLS2.CLBH'
      'left join ZSZL on YPZL_ZLZLS2.CSBH=ZSZL.ZSDH '
      'where 1=1'
      
        'group by KFXXZL.JiJie,YPZL.KFJD,KFXXZL.DEVCODE,YPZL_ZLZLS2.YPDH,' +
        'YPZL_ZLZLS2.CLBH,CLZL.ywpm,CLZL.dwbh,CLZL.cqdh,YPZL_ZLZLS2.CLSL,' +
        'CGZLS.CGQty,KCRKS.RKQty,CGKCUSE.UseQty,YPZL.SDRQ,CGZLS.CGDate,CG' +
        'ZLS.YQDate,CGZLS.CFMDate,KCRKS.RKDate'
      
        '      ,YPZL.FINDATE,YPZL.JHRQ,YPZL.Quantity,shoetest.TestShoeQty' +
        ',CGZLS.CGNO,KCRKS.RKNO,shoetest.TestNo,KFXXZL.ARTICLE,CLZL.zwpm,' +
        'KCRKS.USPrice,KCRKS.VNPrice,KCRKS.USACC,KCRKS.VNACC,KFXXZL.FD,YP' +
        'ZL_ZLZLS2.CSBH,ZSZL.zsywjc')
    Left = 344
    Top = 256
    object Query1JiJie: TStringField
      FieldName = 'JiJie'
      FixedChar = True
    end
    object Query1KFJD: TStringField
      FieldName = 'KFJD'
      FixedChar = True
      Size = 3
    end
    object Query1DEVCODE: TStringField
      FieldName = 'DEVCODE'
      FixedChar = True
    end
    object Query1YPDH: TStringField
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
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
    object Query1cqdh: TStringField
      FieldName = 'cqdh'
      FixedChar = True
      Size = 4
    end
    object Query1CLSL: TFloatField
      FieldName = 'CLSL'
    end
    object Query1CGQty: TCurrencyField
      FieldName = 'CGQty'
    end
    object Query1RKQty: TCurrencyField
      FieldName = 'RKQty'
    end
    object Query1UseQty: TCurrencyField
      FieldName = 'UseQty'
    end
    object Query1SDRQ: TStringField
      FieldName = 'SDRQ'
      FixedChar = True
      Size = 8
    end
    object Query1CGDate: TDateTimeField
      FieldName = 'CGDate'
    end
    object Query1YQDate: TDateTimeField
      FieldName = 'YQDate'
    end
    object Query1CFMDate: TDateTimeField
      FieldName = 'CFMDate'
    end
    object Query1RKDate: TDateTimeField
      FieldName = 'RKDate'
    end
    object Query1FINDATE: TStringField
      FieldName = 'FINDATE'
      FixedChar = True
      Size = 8
    end
    object Query1JHRQ: TStringField
      FieldName = 'JHRQ'
      FixedChar = True
      Size = 8
    end
    object Query1Quantity: TFloatField
      FieldName = 'Quantity'
    end
    object Query1TestShoeQty: TFloatField
      FieldName = 'TestShoeQty'
    end
    object Query1CGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object Query1RKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object Query1TestNo: TStringField
      FieldName = 'TestNo'
      FixedChar = True
      Size = 10
    end
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object Query1zwpm: TStringField
      FieldName = 'zwpm'
      FixedChar = True
      Size = 200
    end
    object Query1USPrice: TFloatField
      FieldName = 'USPrice'
    end
    object Query1VNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object Query1USACC: TFloatField
      FieldName = 'USACC'
    end
    object Query1VNACC: TCurrencyField
      FieldName = 'VNACC'
    end
    object Query1FD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object Query1CSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object Query1zsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 384
    Top = 256
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 344
    Top = 288
  end
end
