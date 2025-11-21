object DeliverTraceS: TDeliverTraceS
  Left = 166
  Top = 207
  Width = 1084
  Height = 275
  Caption = 'DeliverTraceS'
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
    Width = 1076
    Height = 89
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 328
      Top = 20
      Width = 70
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
      Left = 520
      Top = 19
      Width = 83
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
    object Label3: TLabel
      Left = 24
      Top = 60
      Width = 34
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'From:'
    end
    object Label4: TLabel
      Left = 184
      Top = 60
      Width = 20
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'To:'
    end
    object Label7: TLabel
      Left = 10
      Top = 20
      Width = 51
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'BUYNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 160
      Top = 20
      Width = 75
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DDBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 520
      Top = 58
      Width = 83
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Mode'
    end
    object Label5: TLabel
      Left = 328
      Top = 60
      Width = 71
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CGNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 802
      Top = 48
      Width = 81
      Height = 33
      Caption = 'Query'
      TabOrder = 4
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 605
      Top = 15
      Width = 89
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
      Left = 400
      Top = 16
      Width = 121
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
    object Edit3: TEdit
      Left = 697
      Top = 15
      Width = 81
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
    object Edit4: TEdit
      Left = 784
      Top = 15
      Width = 81
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
    object Button2: TButton
      Left = 898
      Top = 48
      Width = 81
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 5
      OnClick = Button2Click
    end
    object DTP1: TDateTimePicker
      Left = 64
      Top = 56
      Width = 97
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 6
    end
    object DTP2: TDateTimePicker
      Left = 216
      Top = 56
      Width = 97
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 7
    end
    object DDBHEdit: TEdit
      Left = 240
      Top = 16
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 8
    end
    object BuyNoEdit: TEdit
      Left = 64
      Top = 16
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 9
    end
    object RKCombo: TComboBox
      Left = 606
      Top = 54
      Width = 122
      Height = 24
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 10
      Text = 'All'
      Items.Strings = (
        'All'
        'EnQty<CGQty'
        'EnQty>=CGQty'
        'EnQty=0')
    end
    object CheckMine: TCheckBox
      Left = 729
      Top = 59
      Width = 53
      Height = 17
      Caption = 'Mine'
      Checked = True
      State = cbChecked
      TabOrder = 11
    end
    object CheckCacnel: TCheckBox
      Left = 871
      Top = 28
      Width = 97
      Height = 17
      Caption = 'Order not cancel'
      TabOrder = 12
    end
    object TWCKBox: TCheckBox
      Left = 871
      Top = 12
      Width = 49
      Height = 17
      Caption = 'TW'
      Color = 10395294
      ParentColor = False
      TabOrder = 13
    end
    object VNCKBox: TCheckBox
      Left = 927
      Top = 12
      Width = 49
      Height = 17
      Caption = 'VN'
      Color = 10395294
      ParentColor = False
      TabOrder = 14
    end
    object CheckBox1: TCheckBox
      Left = 8
      Top = 60
      Width = 17
      Height = 17
      Checked = True
      State = cbChecked
      TabOrder = 15
    end
    object Edit6: TEdit
      Left = 400
      Top = 56
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 16
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 89
    Width = 1076
    Height = 155
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
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
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
        FieldName = 'BUYNO'
        Footers = <>
        Title.Caption = 'BUYNO|BUYNO'
      end
      item
        EditButtons = <>
        FieldName = 'CGNO'
        Footers = <>
        Title.Caption = #25505#36092#21934#34399'|CGNO'
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = #26448#26009#32232#34399'|CLBH'
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Footers = <
          item
            DisplayFormat = 'Count=0'
            FieldName = 'ZLBH'
            ValueType = fvtCount
          end>
        Title.Caption = #35330#21934#32232#34399'|DDBBH'
        Width = 92
      end
      item
        EditButtons = <>
        FieldName = 'DType'
        Footers = <>
        Title.Caption = #39006#21029'|Type'
        Width = 33
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        Title.Caption = 'SKU#|ARTICLE'
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = #26448#26009#21517#31281'|YWPM'
        Width = 192
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = #37096#20301#32232#34399'|DWBH'
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'CQDH'
        Footers = <>
        Title.Caption = #25505#21312'|CQDH'
        Width = 44
      end
      item
        DisplayFormat = '0.00'
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.Caption = #25505#36092#25976#37327'|Qty'
      end
      item
        EditButtons = <>
        FieldName = 'EnQty'
        Footers = <>
        Title.Caption = #20837#24235#25976#37327'|EnQty'
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'USACC'
        Footers = <
          item
            FieldName = 'USACC'
            ValueType = fvtSum
          end>
        Title.Caption = #25505#36092#32317#37329#38989'|USACC'
      end
      item
        EditButtons = <>
        FieldName = 'VNAcc'
        Footers = <
          item
            FieldName = 'VNAcc'
            ValueType = fvtSum
          end>
        Title.Caption = #25505#36092#32317#37329#38989'|VNAcc'
      end
      item
        EditButtons = <>
        FieldName = 'ADate'
        Footers = <>
        Title.Caption = #25104#22411#26085'|Plandate'
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'CGDate'
        Footers = <>
        Title.Caption = #25505#36092#26085#26399'|CGDate'
      end
      item
        EditButtons = <>
        FieldName = 'YQDate'
        Footers = <>
        Title.Caption = #35201#27714#26085#26399'|YQDate'
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Title.Caption = #22238#35206#20132#26399'|CFMDate'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'RKNO'
        Footers = <>
        Title.Caption = #20837#24235#21934#34399'|RKNO'
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Title.Caption = #26448#26009#20013#25991'|ZWPM'
        Width = 202
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 128
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select CGZLSS.*,DDZL.BUYNO,DDZL.ARTICLE,DDZL.ShipDate,SCZLDATE.A' +
        'Date,DDZL.DDZT as DType from ( '
      'select CGZLSS.ZLBH,CGZLSS.CGNO,sum(CGZLSS.Qty) as Qty,'
      'CGZLSS.YQDate,CGZLSS.CFMDate,CGZLSS.CLBH,CGZL.CGDate,'
      'CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,RK.RKNO,RK.EnQty,'
      
        'Isnull(RK.USAcc,Max(CGZLS.USPrice)*sum(CGZLSS.Qty)) as USACC,isn' +
        'ull(RK.VNACC,Max(CGZLS.VNPrice)*sum(CGZLSS.Qty)) as VNAcc,CLZL.C' +
        'QDH  '
      'from CGZLSS '
      'left join CGZL on CGZl.CGNO=CGZLSS.CGNO '
      'left join CLZL on CLZl.CLDH=CGZLSS.CLBH'
      
        'left join CGZLS on CGZLS.CGNO=CGZLSS.CGNO and CLZL.CLDH=CGZLS.CL' +
        'BH'
      
        'left join (select max(KCRKS.RKNO) as RKNO,CGBH,CLBH,sum(Qty) as ' +
        'EnQty,Sum(KCRKS.USAcc)as USAcc,Sum(KCRKS.VNAcc) as VNAcc '
      
        '           from KCRKS group by CGBH,CLBH) RK on RK.CGBH=CGZLSS.Z' +
        'LBH and RK.CLBH=CGZLSS.CLBH'
      'where CGZLS.Qty>0 '
      ' and convert(varchar,CGZL.CGDate,111) between '#39'2020/08/01'#39' '
      ' and '#39'2020/08/04'#39
      'and CGZL.CGLX='#39'2'#39' '
      'and CGZLSS.CLBH like '#39'%'#39' '
      'and CLZL.YWPM like '#39'%%'#39' '
      'and CLZL.YWPM like '#39'%%'#39' '
      'and CLZL.YWPM like '#39'%%'#39' '
      'and CGZLSS.ZLBH like '#39'%'#39' '
      'and CGZL.GSBH='#39'TBA'#39
      
        'group by CGZLSS.ZLBH,CGZLSS.CGNO,CGZLSS.YQDate,CGZLSS.CFMDate,CG' +
        'ZLSS.CLBH,'
      
        'CGZL.CGDate,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,RK.RKNO,RK.EnQty,RK.US' +
        'Acc,RK.VNAcc,CLZL.CQDH  ) CGZLSS'
      'left join DDZL on DDZL.DDBH=CGZLSS.ZLBH '
      'left join SCZLDATE on DDZL.DDBH=SCZLDATE.ZLBH '
      'where 1=1 '
      'order by CGZLSS.CGNO,CGZLSS.ZLBH,CGZLSS.CLBH')
    Left = 424
    Top = 160
    object Query1BUYNO: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
    object Query1CGNO: TStringField
      DisplayWidth = 11
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object Query1CLBH: TStringField
      DisplayWidth = 15
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1ZLBH: TStringField
      DisplayWidth = 15
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object Query1YWPM: TStringField
      DisplayWidth = 200
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      DisplayWidth = 4
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1Qty: TCurrencyField
      DisplayWidth = 10
      FieldName = 'Qty'
      DisplayFormat = '0.00'
    end
    object Query1EnQty: TCurrencyField
      DisplayWidth = 10
      FieldName = 'EnQty'
      DisplayFormat = '0.00'
    end
    object Query1USACC: TFloatField
      DisplayWidth = 10
      FieldName = 'USACC'
      DisplayFormat = '#.##0.00'
    end
    object Query1VNAcc: TFloatField
      DisplayWidth = 10
      FieldName = 'VNAcc'
      DisplayFormat = '##,#0.0'
    end
    object Query1ADate: TDateTimeField
      FieldName = 'ADate'
    end
    object Query1CGDate: TDateTimeField
      DisplayWidth = 10
      FieldName = 'CGDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query1YQDate: TDateTimeField
      DisplayWidth = 18
      FieldName = 'YQDate'
    end
    object Query1CFMDate: TDateTimeField
      DisplayWidth = 18
      FieldName = 'CFMDate'
    end
    object Query1ShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object Query1RKNO: TStringField
      DisplayWidth = 11
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object Query1CQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object Query1DType: TStringField
      FieldName = 'DType'
      FixedChar = True
      Size = 1
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 392
    Top = 160
    object Detail1: TMenuItem
      Caption = 'Detail'
    end
  end
end
