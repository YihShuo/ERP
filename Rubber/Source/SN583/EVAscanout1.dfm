object EVAscanout: TEVAscanout
  Left = 193
  Top = 182
  Width = 1610
  Height = 675
  Caption = 'EVA Scan Out'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
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
  TextHeight = 24
  object DBGrid1: TDBGrid
    Left = 0
    Top = 81
    Width = 1594
    Height = 555
    Align = alClient
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_code'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DDMH'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sku'
        Title.Caption = 'ARTICLE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'size'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Order_Qty'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Scan_In'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Scan_Out'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTY'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'OUT_QTY'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1594
    Height = 81
    Align = alTop
    TabOrder = 1
    object Label2: TLabel
      Left = 384
      Top = 24
      Width = 74
      Height = 24
      Caption = 'QRCode'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 280
      Top = 25
      Width = 28
      Height = 24
      Caption = 'Qty'
    end
    object Edit1: TEdit
      Left = 478
      Top = 16
      Width = 353
      Height = 45
      Color = 10223615
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object Button1: TButton
      Left = 897
      Top = 16
      Width = 81
      Height = 41
      Caption = 'Upload'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 0
      Width = 65
      Height = 73
      TabOrder = 2
      object Label19: TLabel
        Left = 8
        Top = 24
        Width = 46
        Height = 29
        Caption = 'EVA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
    object EDqty: TEdit
      Left = 320
      Top = 21
      Width = 49
      Height = 32
      TabOrder = 3
      Text = '10'
    end
    object totaltxt: TStaticText
      Left = 856
      Top = 22
      Width = 15
      Height = 29
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object GroupBox2: TGroupBox
      Left = 112
      Top = 2
      Width = 153
      Height = 77
      Caption = '000000000000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenuHighlight
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      object Label3: TLabel
        Left = 88
        Top = 20
        Width = 10
        Height = 24
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 88
        Top = 44
        Width = 10
        Height = 24
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 16
        Top = 25
        Width = 54
        Height = 16
        Caption = 'All QTY'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 16
        Top = 49
        Width = 56
        Height = 16
        Caption = 'OK QTY'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = CDSOut
    Left = 256
    Top = 352
  end
  object Query1: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    Left = 96
    Top = 216
  end
  object QueryOut: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    UpdateObject = UpdateSQL1
    Left = 208
    Top = 352
    object QueryOutid: TStringField
      FieldName = 'id'
    end
    object QueryOutid_code: TStringField
      FieldName = 'id_code'
    end
    object QueryOutsku: TStringField
      FieldName = 'sku'
    end
    object QueryOutsize: TStringField
      FieldName = 'size'
    end
    object QueryOutOrder_Qty: TIntegerField
      FieldName = 'Order_Qty'
    end
    object QueryOutScan_In: TIntegerField
      FieldName = 'Scan_In'
    end
    object QueryOutScan_Out: TIntegerField
      FieldName = 'Scan_Out'
    end
    object QueryOutQTY: TIntegerField
      FieldName = 'QTY'
    end
    object QueryOutOUT_QTY: TIntegerField
      FieldName = 'OUT_QTY'
    end
    object QueryOutDDMH: TStringField
      FieldName = 'DDMH'
    end
  end
  object UpdateSQL1: TUpdateSQL
    Left = 96
    Top = 416
  end
  object CDSOut: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 448
    Top = 272
  end
end
