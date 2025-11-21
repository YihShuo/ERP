object TraceApply: TTraceApply
  Left = 229
  Top = 168
  Width = 1386
  Height = 675
  Caption = 'TraceApplyTotal '
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
    Width = 1370
    Height = 73
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 220
      Top = 12
      Width = 50
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
      Left = 12
      Top = 12
      Width = 65
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SGNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 229
      Top = 43
      Width = 20
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'To:'
    end
    object Label6: TLabel
      Left = 34
      Top = 43
      Width = 85
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SGDate From:'
    end
    object Label7: TLabel
      Left = 860
      Top = 11
      Width = 52
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
    object Label10: TLabel
      Left = 391
      Top = 12
      Width = 63
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SupID:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 375
      Top = 42
      Width = 76
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SupName:'
    end
    object Label3: TLabel
      Left = 598
      Top = 11
      Width = 42
      Height = 16
      Caption = 'DepID:'
    end
    object Label4: TLabel
      Left = 575
      Top = 42
      Width = 66
      Height = 16
      Caption = 'DepName:'
    end
    object Label8: TLabel
      Left = 760
      Top = 11
      Width = 39
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'LB:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LBName: TLabel
      Left = 780
      Top = 40
      Width = 171
      Height = 20
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object Edit2: TEdit
      Left = 82
      Top = 8
      Width = 102
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
    object Edit1: TEdit
      Left = 276
      Top = 8
      Width = 109
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
    object cb2: TComboBox
      Left = 915
      Top = 7
      Width = 59
      Height = 24
      ItemHeight = 16
      TabOrder = 2
      Text = 'ALL'
    end
    object Edit4: TEdit
      Left = 462
      Top = 7
      Width = 95
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Edit6: TEdit
      Left = 462
      Top = 38
      Width = 94
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object DTP1: TDateTimePicker
      Left = 121
      Top = 40
      Width = 98
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 5
    end
    object DTP2: TDateTimePicker
      Left = 250
      Top = 39
      Width = 97
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 6
    end
    object Button1: TButton
      Left = 994
      Top = 36
      Width = 76
      Height = 29
      Caption = 'Query'
      TabOrder = 7
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 993
      Top = 4
      Width = 76
      Height = 27
      Caption = 'Excel'
      TabOrder = 8
      OnClick = Button2Click
    end
    object Edit3: TEdit
      Left = 643
      Top = 8
      Width = 121
      Height = 24
      TabOrder = 9
    end
    object Edit5: TEdit
      Left = 644
      Top = 38
      Width = 121
      Height = 24
      TabOrder = 10
    end
    object LBCombo: TComboBox
      Left = 803
      Top = 8
      Width = 55
      Height = 24
      ItemHeight = 16
      TabOrder = 11
      OnChange = LBComboChange
      Items.Strings = (
        ''
        '01'
        '02'
        '03'
        '04'
        '09')
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 1370
    Height = 563
    Align = alClient
    Color = clMenu
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
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 2
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    ReadOnly = True
    RowHeight = 22
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
        FieldName = 'GSBH'
        Footers = <>
        Title.Caption = #24288#21312'|GSBH'
        Width = 46
      end
      item
        EditButtons = <>
        FieldName = 'SGNO'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = #30003#36092#21934#34399'|SGNO'
        Title.TitleButton = True
        Width = 96
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
        FieldName = 'LB'
        Footers = <>
        Title.Caption = #39006#22411'|LB'
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = #26448#26009#33521#25991#21517#31281'|YWPM'
        Title.TitleButton = True
        Width = 250
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Title.Caption = #26448#26009#20013#25991#21517#31281'|ZWPM'
        Title.TitleButton = True
        Width = 250
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = #21934#20301'|DWBH'
        Title.TitleButton = True
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.Caption = #30003#35531#25976#37327'|SGQty'
      end
      item
        EditButtons = <>
        FieldName = 'CGQty'
        Footers = <>
        Title.Caption = #37319#36092#25976#37327'|CGQty'
        Title.TitleButton = True
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'RKQty'
        Footers = <>
        Title.Caption = #20132#36008#25976#37327'|RKQty'
        Title.TitleButton = True
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <>
        Title.Caption = #21934#20729'|VNPrice'
      end
      item
        EditButtons = <>
        FieldName = 'VNACC'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #32317#20729'|VNACC'
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'CG_ZSBH'
        Footers = <>
        Title.Caption = #25505#36092#24288#21830'|CG_ZSBH'
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'RK_ZSBH'
        Footers = <>
        Title.Caption = #20837#24235#24288#21830'|RK_ZSBH'
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'SupName'
        Footers = <>
        Title.Caption = #24288#21830'|SupName'
      end
      item
        EditButtons = <>
        FieldName = 'CGDate'
        Footers = <>
        Title.Caption = #37319#36092#26085#26399'|CGDate'
        Title.TitleButton = True
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'YQDate'
        Footers = <>
        Title.Caption = #35201#27714#20132#26399'|YQDate'
        Title.TitleButton = True
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Title.Caption = #22238#24489#20132#26399'|CFMDate'
        Title.TitleButton = True
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'RKDate'
        Footers = <>
        Title.Caption = #20132#36008#26085#26399'|RKDate'
        Title.TitleButton = True
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'RKNO'
        Footers = <>
        Title.Caption = #20837#24235#21934#34399'|RKNO'
        Title.TitleButton = True
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'Depname'
        Footers = <>
        Title.Caption = 'Lean'#21934#20301'|DepName'
        Width = 112
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'select  SGDHS.SGNO,SGDH.GSBH,SGDHS.CLBH,  CLZL.YWPM,CLZL.ZWPM , ' +
        'CLZL.DWBH'
      
        '        ,SGDHS.Qty, isnull(CGZLS.Qty, 0.0) as CGQty,  KCRKS.RKQt' +
        'y, KCRKS.VNPrice,KCRKS.VNACC, CGZLS.ZSBH as CG_ZSBH, KCRK.ZSBH a' +
        's RK_ZSBH, zszl.zsywjc as SupName'
      
        '        , convert(smalldatetime,convert(varchar, CGZLS.CGDate,11' +
        '1)) as CGDate, CGZLS.YQDate, CGZLS.CFMDate'
      
        '        , KCRK.USERDate as RKDate, KCRKS.RKNO,BDepartment.Depnam' +
        'e'
      ''
      'from SGDHS left join SGDH on SGDH.SGNO=SGDHS.SGNO'
      
        'left join( select CGZLS.CGNO, CGZLS.CLBH, CGZLSS.ZLBH,CGZLS.Qty,' +
        ' CGZL.CGDate,CGZLS.YQDate, CGZLS.CFMDate, CGZL.GSBH, CGZL.ZSBH'
      #9#9'   from CGZLS left join CGZL on CGZl.CGNO=CGZLS.CGNO'
      #9#9#9#9#9'  left join CGZLSS on CGZLSS.CGNO=CGZLS.CGNO'
      '           where  CGZLS.CLBH like '#39'Z207000015%'#39
      
        '           and CGZL.GSBH = '#39'VTX'#39' ) CGZLS on  CGZLS.CLBH=SGDHS.CL' +
        'BH and CGZLS.ZLBH=SGDHS.SGNO                                    ' +
        '                                                                ' +
        '                                                           '
      
        'left join( select KCRKS.CGBH ,KCRKS.CLBH, sum(KCRKS.Qty) as RKQt' +
        'y,KCRKS.VNPrice, sum(KCRKS.VNACC) as VNACC , MAX(KCRKS.RKNO) as ' +
        'RKNO'
      '           from  KCRKS left join KCRK on KCRK.RKNO=KCRKS.RKNO'
      '           where KCRKS.CLBH like '#39'Z207000015%'#39
      
        '           group by KCRKS.CGBH , KCRKS.CLBH,KCRKS.VNPrice) KCRKS' +
        ' on KCRKS.CGBH = CGZLS.CGNO and KCRKS.CLBH = CGZLS.CLBH'
      'left join BDepartment on BDepartment.ID=SGDH.DepID'
      'left join KCRK on KCRK.RKNO = KCRKS.RKNO '
      'left join zszl on CGZLS.zsbh=zszl.zsdh'
      'left join CLZL on SGDHS.CLBH = CLZL.CLDH'
      'where  SGDHS.CLBH like '#39'Z207000015%'#39
      'order by SGDHS.SGNO DESC')
    Left = 600
    Top = 264
    object Query1SGNO: TStringField
      FieldName = 'SGNO'
      FixedChar = True
      Size = 11
    end
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1LB: TStringField
      FieldName = 'LB'
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
    object Query1Qty: TFloatField
      FieldName = 'Qty'
      DisplayFormat = '#,##0.0'
    end
    object Query1CGQty: TCurrencyField
      FieldName = 'CGQty'
      DisplayFormat = '#,##0.0'
    end
    object Query1RKQty: TCurrencyField
      FieldName = 'RKQty'
      DisplayFormat = '#,##0.0'
    end
    object Query1VNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object Query1VNACC: TCurrencyField
      FieldName = 'VNACC'
    end
    object Query1CG_ZSBH: TStringField
      FieldName = 'CG_ZSBH'
      FixedChar = True
      Size = 6
    end
    object Query1RK_ZSBH: TStringField
      FieldName = 'RK_ZSBH'
      FixedChar = True
      Size = 6
    end
    object Query1SupName: TStringField
      FieldName = 'SupName'
      FixedChar = True
    end
    object Query1CGDate: TDateTimeField
      FieldName = 'CGDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query1YQDate: TDateTimeField
      FieldName = 'YQDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query1CFMDate: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query1RKDate: TDateTimeField
      FieldName = 'RKDate'
    end
    object Query1RKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object Query1Depname: TStringField
      FieldName = 'Depname'
      FixedChar = True
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 600
    Top = 304
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 560
    Top = 264
  end
end
