object QRReport: TQRReport
  Left = 289
  Top = 181
  Width = 1297
  Height = 593
  Caption = 'QRReport'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1281
    Height = 97
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 35
      Width = 27
      Height = 20
      Caption = 'RY:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 732
      Top = 10
      Width = 39
      Height = 16
      Caption = 'CKBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 726
      Top = 41
      Width = 53
      Height = 16
      Caption = 'SO KHU:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 725
      Top = 69
      Width = 60
      Height = 16
      Caption = 'NGAY KK:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 49
      Top = 30
      Width = 148
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 1009
      Top = 11
      Width = 81
      Height = 33
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object CKBHEdit: TEdit
      Left = 791
      Top = 6
      Width = 135
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object KVBHEdit: TEdit
      Left = 792
      Top = 33
      Width = 134
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Button2: TButton
      Left = 1112
      Top = 11
      Width = 81
      Height = 33
      Caption = 'EXCEL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Button2Click
    end
    object DTPKK: TDateTimePicker
      Left = 792
      Top = 63
      Width = 137
      Height = 24
      Date = 45810.374951689820000000
      Format = 'yyyy/MM/dd'
      Time = 45810.374951689820000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Button3: TButton
      Left = 1010
      Top = 57
      Width = 81
      Height = 33
      Caption = 'Print'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 1113
      Top = 57
      Width = 81
      Height = 33
      Caption = 'Print_Card'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = Button4Click
    end
    object CheckBox1: TCheckBox
      Left = 944
      Top = 64
      Width = 57
      Height = 17
      Caption = 'XH OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 97
    Width = 1281
    Height = 457
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 1
    OptionsEh = [dghFixed3D, dghFooter3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    PopupMenu = PopupMenu1
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
        FieldName = 'BUYNO'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = 'BUYNO|BUYNO'
      end
      item
        EditButtons = <>
        FieldName = 'YSBH'
        Footers = <>
        Title.Caption = #21046#20196#32232#34399'|YSBH'
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Title.Caption = #24418#39636#32232#34399'|Article'
        Width = 106
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.Caption = #24418#39636#21517#31281'|XieMing'
        Width = 161
      end
      item
        EditButtons = <>
        FieldName = 'YSSM'
        Footers = <>
        Title.Caption = #38991#33394'|YSSM'
        Width = 165
      end
      item
        EditButtons = <>
        FieldName = 'MDMH'
        Footers = <>
        Title.Caption = #27169#20855#32232#34399'|MDMH'
        Width = 133
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #32317#25976#37327'|Qty'
      end
      item
        EditButtons = <>
        FieldName = 'Win'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #20837#24235#25976#37327'|Win'
      end
      item
        EditButtons = <>
        FieldName = 'LastInQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #20837#24235#27424#25976#37327'|LastInQty'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'OutQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #20986#24235#25976#37327'|OutQty'
        Width = 77
      end
      item
        EditButtons = <>
        FieldName = 'LastOutQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #20986#36008#27424#25976#37327'|LastOutQty'
        Width = 81
      end
      item
        EditButtons = <>
        FieldName = 'InQTy'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #20837#24235#24235#23384#25976#37327'|InQTy'
        Width = 93
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 328
    Top = 232
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select BUYNO, YSBH, SMDDScanOut.Article, XieMing, YSSM, MDMH, su' +
        'm(Qty) Qty,Sum (Win) as Win, (sum(WIn)-sum(ROut)) InQTy,(sum(Qty' +
        ')-(sum(WIn)-sum(ROut))-sum(ROut)) as LastInQty, sum(ROut) OutQty' +
        ', (sum(Qty)-sum(ROut)) as LastOutQty  from TB_DD.dbo.SMDDScanOut' +
        ' SMDDScanOut'
      'left join TB_ERP.dbo.DDZL DDZL on DDZL.ZLBH=SMDDScanOut.YSBH'
      'where YSBH like '#39'%'#39
      
        'group by BUYNO, YSBH, SMDDScanOut.Article, XieMing, YSSM, MDMH h' +
        'aving SUM(WIn)<>0 '
      '            '
      '')
    Left = 448
    Top = 184
    object Query1BUYNO: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
    object Query1YSBH: TStringField
      FieldName = 'YSBH'
      FixedChar = True
      Size = 15
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1YSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 50
    end
    object Query1MDMH: TStringField
      FieldName = 'MDMH'
      FixedChar = True
      Size = 50
    end
    object Query1Qty: TIntegerField
      FieldName = 'Qty'
    end
    object Query1Win: TIntegerField
      FieldName = 'Win'
    end
    object Query1LastInQty: TIntegerField
      FieldName = 'LastInQty'
    end
    object Query1OutQty: TIntegerField
      FieldName = 'OutQty'
    end
    object Query1LastOutQty: TIntegerField
      FieldName = 'LastOutQty'
    end
    object Query1InQTy: TIntegerField
      FieldName = 'InQTy'
    end
  end
  object PopupMenu1: TPopupMenu
    TrackButton = tbLeftButton
    Left = 160
    Top = 200
    object Detail1: TMenuItem
      Caption = 'Detail'
      OnClick = Detail1Click
    end
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      'SELECT '
      '   STT,'
      '    '#39'HOKA'#39' AS Customer,'
      '    YSBH,'
      '    Article,'
      '    '#39'De Lon ??'#39' AS ModelName,'
      '    SUM(Qty) AS Qty'
      'FROM '
      '    TB_DD.dbo.SMDDScanOut'
      'GROUP BY STT,YSBH, Article HAVING SUM(Win) <> 0'
      'order by STT')
    Left = 712
    Top = 248
    object Query2STT: TStringField
      FieldName = 'STT'
      FixedChar = True
      Size = 10
    end
    object Query2YSBH: TStringField
      FieldName = 'YSBH'
      FixedChar = True
      Size = 15
    end
    object Query2Article: TStringField
      FieldName = 'Article'
      FixedChar = True
      Size = 50
    end
    object Query2Qty: TIntegerField
      FieldName = 'Qty'
    end
    object Query2Customer: TStringField
      FieldName = 'Customer'
      FixedChar = True
      Size = 4
    end
    object Query2ModelName: TStringField
      FieldName = 'ModelName'
      FixedChar = True
      Size = 6
    end
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 456
    Top = 360
  end
end
