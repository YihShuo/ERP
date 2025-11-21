object ScanQR: TScanQR
  Left = 365
  Top = 204
  Width = 1414
  Height = 860
  Caption = 'ScanInQR '
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1398
    Height = 145
    Align = alTop
    TabOrder = 0
    OnDblClick = BBTT1Click
    object LB2: TLabel
      Left = 38
      Top = 18
      Width = 59
      Height = 25
      Caption = 'DEPID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LB3: TLabel
      Left = 368
      Top = 16
      Width = 57
      Height = 25
      Caption = 'SCAN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TEdit
      Left = 152
      Top = 16
      Width = 185
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      OnClick = BBTT1Click
      OnDblClick = FormShow
    end
    object DBEdit2: TEdit
      Left = 444
      Top = 15
      Width = 406
      Height = 54
      Color = 10223615
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -40
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = DBEdit2KeyPress
    end
    object BBTT1: TBitBtn
      Left = 317
      Top = 15
      Width = 19
      Height = 27
      Caption = '...'
      TabOrder = 2
      OnClick = BBTT1Click
    end
    object BitBtn1: TBitBtn
      Left = 933
      Top = 15
      Width = 95
      Height = 45
      Caption = 'UPLOAD '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn1Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 145
    Width = 1398
    Height = 676
    Align = alClient
    DataSource = DS2
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -17
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 1
    OptionsEh = [dghFixed3D, dghFooter3D, dghHighlightFocus, dghClearSelection, dghDialogFind]
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
    Columns = <
      item
        EditButtons = <>
        FieldName = 'BUYNO'
        Footer.FieldName = 'BUYNO'
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clWindowText
        Footer.Font.Height = -12
        Footer.Font.Name = 'MS Sans Serif'
        Footer.Font.Style = []
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = 'BUYNO|BUYNO'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        Title.Caption = #21046#20196#32232#34399'||DDBH'
        Width = 123
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        Title.Caption = #24418#39636#32232#34399'|ARTICLE'
        Width = 128
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.Caption = #24418#39636#21517#31281'|XieMing'
        Width = 144
      end
      item
        EditButtons = <>
        FieldName = 'MDMH'
        Footers = <>
        Title.Caption = #27169#20855#32232#34399'|MDMH'
        Width = 129
      end
      item
        EditButtons = <>
        FieldName = 'SheHao'
        Footers = <>
        Title.Caption = #35373#22909'|SheHao'
        Width = 124
      end
      item
        EditButtons = <>
        FieldName = 'CC'
        Footers = <>
        Title.Caption = #38795#22411#34399#30908'|CC'
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footer.FieldName = 'Qty'
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clWindowText
        Footer.Font.Height = -12
        Footer.Font.Name = 'MS Sans Serif'
        Footer.Font.Style = []
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #32317#25976#37327'|Qty'
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'QRCODE'
        Footers = <>
        Title.Caption = 'QRCODE|QRCODE'
        Width = 132
      end
      item
        EditButtons = <>
        FieldName = 'InDate'
        Footers = <>
        Title.Caption = #20837#24235#26085#26399'|InDate'
        Width = 147
      end>
  end
  object Query: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'select BUYNO,ddzl.DDBH,SMDDScanOut.Article, SMDDScanOut.XieMing,' +
        'MDMH,ddzl.SheHao,SCCX AS CC,Qty, QRCODE, InDate from TB_DD.dbo.S' +
        'MDDScanOut SMDDScanOut'
      'left join TB_ERP.dbo.ddzl ddzl on SMDDScanOut.YSBH=ddzl.DDBH'
      'WHERE WIn = 0'
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 320
    Top = 224
    object QueryBUYNO: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
    object QueryDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object QueryARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object QueryXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object QueryMDMH: TStringField
      FieldName = 'MDMH'
      FixedChar = True
      Size = 255
    end
    object QuerySheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object QueryCC: TStringField
      FieldName = 'CC'
      FixedChar = True
      Size = 6
    end
    object QueryQty: TIntegerField
      FieldName = 'Qty'
    end
    object QueryQRCODE: TStringField
      FieldName = 'QRCODE'
      FixedChar = True
      Size = 15
    end
    object QueryInDate: TDateTimeField
      FieldName = 'InDate'
    end
  end
  object DS2: TDataSource
    DataSet = Query
    Left = 424
    Top = 224
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 368
    Top = 224
  end
  object PopupMenu1: TPopupMenu
    Left = 272
    Top = 224
    object Delete1: TMenuItem
      Caption = 'Delete'
      OnClick = Delete1Click
    end
  end
end
