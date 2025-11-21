object DeliverTrace: TDeliverTrace
  Left = 262
  Top = 146
  Width = 1069
  Height = 515
  Caption = 'DeliverTrace-No Size'
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
    Width = 1061
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
      Left = 304
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
      Left = 496
      Top = 20
      Width = 70
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
      Left = 28
      Top = 60
      Width = 34
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'From:'
    end
    object Label4: TLabel
      Left = 168
      Top = 60
      Width = 20
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'To:'
    end
    object Label6: TLabel
      Left = 296
      Top = 60
      Width = 78
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
    object Label5: TLabel
      Left = 496
      Top = 58
      Width = 59
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Mode'
    end
    object Label7: TLabel
      Left = 2
      Top = 20
      Width = 61
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
      Left = 152
      Top = 20
      Width = 67
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
    object Label9: TLabel
      Left = 736
      Top = 58
      Width = 59
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Function'
    end
    object Button1: TButton
      Left = 968
      Top = 8
      Width = 81
      Height = 33
      Caption = 'Query'
      TabOrder = 4
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 568
      Top = 16
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
      Left = 376
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
      Left = 658
      Top = 16
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
      Left = 743
      Top = 16
      Width = 89
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
      Left = 1064
      Top = 8
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
      Left = 192
      Top = 56
      Width = 97
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 7
    end
    object CheckBox1: TCheckBox
      Left = 8
      Top = 60
      Width = 17
      Height = 17
      Checked = True
      State = cbChecked
      TabOrder = 8
    end
    object Edit6: TEdit
      Left = 376
      Top = 56
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 9
    end
    object CheckMine: TCheckBox
      Left = 684
      Top = 60
      Width = 53
      Height = 17
      Caption = 'Mine'
      Checked = True
      State = cbChecked
      TabOrder = 10
    end
    object RKCombo: TComboBox
      Left = 559
      Top = 55
      Width = 122
      Height = 24
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 11
      Text = 'All'
      Items.Strings = (
        'All'
        'EnQty<CGQty'
        'EnQty>=CGQty'
        'EnQty=0')
    end
    object BuyNoEdit: TEdit
      Left = 64
      Top = 16
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 12
    end
    object DDBHEdit: TEdit
      Left = 224
      Top = 16
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 13
    end
    object CheckCacnel: TCheckBox
      Left = 846
      Top = 28
      Width = 97
      Height = 17
      Caption = 'Order not cancel'
      TabOrder = 14
    end
    object TWCKBox: TCheckBox
      Left = 845
      Top = 12
      Width = 49
      Height = 17
      Caption = 'TW'
      Color = 10395294
      ParentColor = False
      TabOrder = 15
    end
    object VNCKBox: TCheckBox
      Left = 904
      Top = 12
      Width = 49
      Height = 17
      Caption = 'VN'
      Color = 10395294
      ParentColor = False
      TabOrder = 16
    end
    object ComboBox1: TComboBox
      Left = 799
      Top = 55
      Width = 74
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 17
      Text = 'No Size'
      OnChange = ComboBox1Change
      Items.Strings = (
        'No Size'
        'Size'
        'Other')
    end
    object GroupBox1: TGroupBox
      Left = 885
      Top = 44
      Width = 212
      Height = 41
      TabOrder = 18
      object RB1: TRadioButton
        Left = 8
        Top = 16
        Width = 60
        Height = 17
        Caption = 'All'
        Checked = True
        Enabled = False
        TabOrder = 0
        TabStop = True
      end
      object RB2: TRadioButton
        Left = 64
        Top = 16
        Width = 63
        Height = 17
        Caption = 'BU'
        Enabled = False
        TabOrder = 1
      end
      object RB3: TRadioButton
        Left = 136
        Top = 16
        Width = 69
        Height = 17
        Caption = 'MUA'
        Enabled = False
        TabOrder = 2
      end
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 89
    Width = 1061
    Height = 395
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
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'buyno'
        Footers = <>
        Title.Caption = 'BUYNO|BUYNO'
        Width = 77
      end
      item
        EditButtons = <>
        FieldName = 'CGNO'
        Footers = <
          item
            DisplayFormat = 'count=0'
            FieldName = 'CGNO'
            ValueType = fvtCount
          end>
        Title.Caption = #25505#36092#21934#34399'|CGNO'
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'ZSBH'
        Footers = <>
        Title.Caption = #24288#21830#32232#34399'|ZSBH'
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'zsjc'
        Footers = <>
        Title.Caption = #24288#21830#21517#31281'|zsjc'
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = #26448#26009#32232#34399'|CLBH'
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Footers = <>
        Title.Caption = #35330#21934#32232#34399'|DDBH'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'KHPO'
        Footers = <>
        Title.Caption = #23458#25142'PO|KHPO'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'DType'
        Footers = <>
        Title.Caption = #39006#21029'|Type'
        Width = 29
      end
      item
        EditButtons = <>
        FieldName = 'article'
        Footers = <>
        Title.Caption = 'SKU#|ARTICLE'
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = #26448#26009#21517#31281'|YWPM'
        Width = 148
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = #37096#20301#32232#34399'|DWBH'
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'CQDH'
        Footers = <>
        Title.Caption = #25505#21312'|CQDH'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footer.FieldName = 'Qty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #25505#36092#25976#37327'|CGQty'
        Width = 57
      end
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'EnQty'
        Footer.FieldName = 'EnQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #20837#24235#25976#37327'|EnQty'
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <>
        Title.Caption = #36234#24163#21934#20729'|VNPrice'
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
            DisplayFormat = '0.00'
            FieldName = 'USAcc'
            ValueType = fvtSum
          end>
        Title.Caption = #25505#36092#32317#37329#38989'|USACC'
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'VNAcc'
        Footers = <
          item
            DisplayFormat = '0'
            FieldName = 'VNAcc'
            ValueType = fvtSum
          end>
        Title.Caption = #25505#36092#32317#37329#38989'|VNAcc'
        Width = 57
      end
      item
        EditButtons = <>
        FieldName = 'ADate'
        Footers = <>
        Title.Caption = #25104#22411#26085'|Plandate'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'CGDate'
        Footers = <>
        Title.Caption = #25505#36092#26085#26399'|CGDate'
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = 'YQDate'
        Footers = <>
        Title.Caption = #35201#27714#26085#26399'|YQDate'
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Title.Caption = #22238#35206#20132#26399'|CFMDate'
        Width = 81
      end
      item
        EditButtons = <>
        FieldName = 'SHIPDATE'
        Footers = <>
        Title.Caption = #35330#21934#20986#36008#26085'|ShipDate'
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'RKNO'
        Footers = <>
        Title.Caption = #20837#24235#21934#34399'|RKNO'
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Title.Caption = #26448#26009#20013#25991'|ZWPM'
        Width = 156
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Title.Caption = #20351#29992#32773'|USERID'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'USERDate'
        Footers = <>
        Title.Caption = #20351#29992#32773#26085#26399'|USERDate'
        Width = 98
      end>
  end
  object PopupMenu1: TPopupMenu
    Left = 392
    Top = 160
    object Detail1: TMenuItem
      Caption = 'Detail'
      OnClick = Detail1Click
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select CGZLSS.*,DDZL.BUYNO,DDZL.ARTICLE,DDZL.ShipDate,SCZLDATE.A' +
        'Date,DDZL.DDZT as DType,DDZL.KHPO from ( '
      'select CGZLSS.ZLBH,CGZLSS.CGNO,sum(CGZLSS.Qty) as Qty,'
      'CGZLSS.YQDate,CGZLSS.CFMDate,CGZLSS.CLBH,CGZL.CGDate,'
      'CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,RK.RKNO,RK.EnQty,'
      
        'Isnull(RK.USAcc,Max(CGZLS.USPrice)*sum(CGZLSS.Qty)) as USACC,isn' +
        'ull(RK.VNACC,Max(CGZLS.VNPrice)*sum(CGZLSS.Qty)) as VNAcc,CLZL.C' +
        'QDH'
      ',USPrice,VNPrice,CGZL.ZSBH,ZSZL.zsjc'
      'from CGZLSS '
      'left join CGZL on CGZl.CGNO=CGZLSS.CGNO '
      'left join CLZL on CLZl.CLDH=CGZLSS.CLBH'
      
        'left join CGZLS on CGZLS.CGNO=CGZLSS.CGNO and CLZL.CLDH=CGZLS.CL' +
        'BH'
      'left join ZSZL on ZSZL.zsdh = CGZL.ZSBH'
      
        'left join (select max(KCRKS.RKNO) as RKNO,CGBH,CLBH,sum(Qty) as ' +
        'EnQty,Sum(KCRKS.USAcc)as USAcc,Sum(KCRKS.VNAcc) as VNAcc'
      
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
        'Acc,RK.VNAcc,CLZL.CQDH,USPrice,VNPrice,CGZL.ZSBH,ZSZL.zsjc  ) CG' +
        'ZLSS'
      'left join DDZL on DDZL.DDBH=CGZLSS.ZLBH '
      'left join SCZLDATE on DDZL.DDBH=SCZLDATE.ZLBH '
      'where 1=1 '
      'order by CGZLSS.CGNO,CGZLSS.ZLBH,CGZLSS.CLBH')
    Left = 424
    Top = 160
    object Query1buyno: TStringField
      FieldName = 'buyno'
      FixedChar = True
      Size = 10
    end
    object Query1CGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object Query1ZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object Query1zsjc: TStringField
      FieldName = 'zsjc'
      FixedChar = True
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
    end
    object Query1KHPO: TStringField
      FieldName = 'KHPO'
      FixedChar = True
      Size = 30
    end
    object Query1article: TStringField
      FieldName = 'article'
      FixedChar = True
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
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '0.00'
    end
    object Query1EnQty: TCurrencyField
      FieldName = 'EnQty'
      DisplayFormat = '0.00'
    end
    object Query1USPrice: TFloatField
      FieldName = 'USPrice'
    end
    object Query1VNPrice: TCurrencyField
      FieldName = 'VNPrice'
      currency = False
    end
    object Query1USACC: TFloatField
      FieldName = 'USACC'
      DisplayFormat = '##,#0.0'
    end
    object Query1VNAcc: TFloatField
      FieldName = 'VNAcc'
      DisplayFormat = '##,#0.0'
    end
    object Query1ADate: TDateTimeField
      FieldName = 'ADate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1CGDate: TDateTimeField
      FieldName = 'CGDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1YQDate: TDateTimeField
      FieldName = 'YQDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1CFMDate: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1SHIPDATE: TDateTimeField
      FieldName = 'SHIPDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1RKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object Query1USERDate: TDateTimeField
      FieldName = 'USERDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1DType: TStringField
      FieldName = 'DType'
      FixedChar = True
      Size = 2
    end
    object Query1CQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 128
  end
end
