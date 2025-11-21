object DeliverTraceO: TDeliverTraceO
  Left = 391
  Top = 243
  Width = 1138
  Height = 480
  Caption = 'DeliverTrace-Other'
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
    Width = 1130
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
      Left = 152
      Top = 20
      Width = 46
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
      Left = 448
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
      Left = 312
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
      Left = 0
      Top = 20
      Width = 25
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'NO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 328
      Top = 20
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Warehouse'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 900
      Top = 52
      Width = 81
      Height = 33
      Caption = 'Query'
      TabOrder = 4
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 520
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
      Left = 200
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
      Left = 610
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
      Left = 695
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
      Left = 899
      Top = 14
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
      Left = 392
      Top = 56
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 9
    end
    object CheckMine: TCheckBox
      Left = 985
      Top = 61
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
    object DDBHEdit: TEdit
      Left = 32
      Top = 16
      Width = 113
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 12
    end
    object TWCKBox: TCheckBox
      Left = 788
      Top = 21
      Width = 49
      Height = 17
      Caption = 'TW'
      Color = 10395294
      ParentColor = False
      TabOrder = 13
    end
    object VNCKBox: TCheckBox
      Left = 846
      Top = 21
      Width = 49
      Height = 17
      Caption = 'VN'
      Color = 10395294
      ParentColor = False
      TabOrder = 14
    end
    object GroupBox1: TGroupBox
      Left = 685
      Top = 42
      Width = 212
      Height = 41
      TabOrder = 15
      object RB1: TRadioButton
        Left = 8
        Top = 16
        Width = 60
        Height = 17
        Caption = 'All'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object RB2: TRadioButton
        Left = 72
        Top = 16
        Width = 63
        Height = 17
        Caption = 'BU'
        TabOrder = 1
      end
      object RB3: TRadioButton
        Left = 136
        Top = 16
        Width = 69
        Height = 17
        Caption = 'MUA'
        TabOrder = 2
      end
    end
    object Edit5: TEdit
      Left = 400
      Top = 16
      Width = 41
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 89
    Width = 1130
    Height = 360
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
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = #26448#26009#32232#34399'|CLBH'
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = #26448#26009#21517#31281'|YWPM'
        Width = 206
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = #37096#20301#32232#34399'|DWBH'
        Width = 57
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
        EditButtons = <>
        FieldName = 'HGLB'
        Footers = <>
        Title.Caption = #20489#24235'|WareHouse'
        Width = 83
      end
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'EnQty'
        Footer.FieldName = 'EnQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #20837#24235#25976#37327'|RKQty'
        Width = 66
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
        Width = 55
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
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Footers = <>
        Title.Caption = #32232#34399'|NO'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'DType'
        Footers = <>
        Title.Caption = #39006#21029'|Type'
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'MEMO'
        Footers = <>
        Title.Caption = #20633#35387'|MEMO'
        Width = 90
      end>
  end
  object PopupMenu1: TPopupMenu
    Left = 392
    Top = 160
    object Detail1: TMenuItem
      Caption = 'Detail'
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from ( '
      
        'select CGZLS.CGNO,CGZLS.CLBH,IsNull(CGZLSS.ZLBH,'#39#39') as ZLBH,CLZL' +
        '.YWPM,CLZL.DWBH,IsNull(CGZLSS.Qty,CGZLS.Qty) as Qty,RK.EnQty ,Is' +
        'null(RK.USAcc,CGZLS.Qty*CGZLS.USPrice) as USACC, '
      
        'isnull(RK.VNACC,CGZLS.Qty*CGZLS.VNPrice) as VNAcc,CGZL.CGDate,Is' +
        'Null(CGZLSS.YQDate,CGZLS.YQDate) as YQDate,IsNull(CGZLSS.CFMDate' +
        ',CGZLS.CFMDate) as CFMDate, '
      
        'RK.RKNO,CLZL.ZWPM,CGZLS.USERID,CGZLS.USERDate,IsNull(CGZLSS.Stag' +
        'e,'#39#39') as DType,CGZL.CGLX,CLZL.CQDH ,CGZL.MEMO,RK.HGLB'
      'from CGZLS'
      
        'left join CGZLSS on CGZLS.CLBH=CGZLSS.CLBH and CGZLS.CGNO=CGZLSS' +
        '.CGNO'
      'left join CGZL on CGZL.CGNO=CGZLS.CGNO'
      'left join CLZL on CLZl.CLDH=CGZLS.CLBH'
      
        'left join (select max(KCRKS.RKNO) as RKNO,CGBH,CLBH,KCRKS.DOCNO,' +
        'sum(Qty) as EnQty,Sum(KCRKS.USAcc)as USAcc,Sum(KCRKS.VNAcc) as V' +
        'NAcc,HGLB'
      'from KCRKS'
      'left join KCRK on KCRK.RKNO=KCRKS.RKNO'
      'where KCRK.GSBH='#39'VA12'#39
      'group by CGBH,CLBH,KCRKS.DOCNO,HGLB'
      
        ') RK on RK.CLBH=CGZLS.CLBH and RK.CGBH=IsNull(CGZLSS.ZLBH,CGZLS.' +
        'CGNO) and RK.DOCNO = CGZLS.CGNO'
      'where CGZL.GSBH='#39'VA12'#39
      ') CGZLS '
      'where CGZLS.Qty>0'
      
        ' and CONVERT(smalldatetime,CONVERT(varchar,CGZLS.CGDate,111)) be' +
        'tween '#39'2021/11/01'#39
      ' and '#39'2021/11/26'#39
      ' and CGZLS.USERID='#39'21191'#39
      'and CGZLS.ZLBH like '#39'202%'#39' '
      'and CGZLS.CGLX='#39'3'#39' '
      'and CGZLS.CLBH like '#39'%'#39' '
      'order by CGZLS.CGNO,CGZLS.CLBH'
      '')
    Left = 424
    Top = 160
    object Query1CGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
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
    object Query1USACC: TFloatField
      FieldName = 'USACC'
      DisplayFormat = '##,#0.0'
    end
    object Query1VNAcc: TFloatField
      FieldName = 'VNAcc'
      DisplayFormat = '##,#0.0'
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
    object Query1CQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
    end
    object Query1DType: TStringField
      FieldName = 'DType'
      FixedChar = True
      Size = 2
    end
    object Query1MEMO: TStringField
      FieldName = 'MEMO'
      FixedChar = True
      Size = 50
    end
    object Query1HGLB: TStringField
      FieldName = 'HGLB'
      FixedChar = True
      Size = 5
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 128
  end
end
