object RBscanout: TRBscanout
  Left = 299
  Top = 210
  Width = 1793
  Height = 675
  Caption = 'RB Scan Out'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1777
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label5: TLabel
      Left = 367
      Top = 27
      Width = 74
      Height = 24
      Caption = 'QRCode'
    end
    object Label1: TLabel
      Left = 251
      Top = 27
      Width = 28
      Height = 24
      Caption = 'Qty'
    end
    object Button1: TButton
      Left = 900
      Top = 20
      Width = 81
      Height = 41
      Caption = 'Upload'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 0
      Width = 65
      Height = 73
      TabOrder = 1
      object Label19: TLabel
        Left = 16
        Top = 24
        Width = 33
        Height = 29
        Caption = 'RB'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
    object Edit1: TEdit
      Left = 453
      Top = 16
      Width = 353
      Height = 45
      Color = 10223615
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -33
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyPress = Edit1KeyPress
    end
    object EDqty: TEdit
      Left = 296
      Top = 24
      Width = 50
      Height = 32
      TabOrder = 3
      Text = '5'
    end
    object GroupBox2: TGroupBox
      Left = 90
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
      TabOrder = 4
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
      object Label2: TLabel
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 81
    Width = 1777
    Height = 555
    Align = alClient
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_code'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 111
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DDMH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 126
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sku'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Caption = 'ARTICLE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 137
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'color'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 123
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'size'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Order_Qty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Scan_In'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Scan_Out'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTY'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'OUT_QTY'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 89
        Visible = True
      end>
  end
  object totaltxt: TStaticText
    Left = 848
    Top = 24
    Width = 14
    Height = 28
    Caption = '0'
    TabOrder = 2
  end
  object DataSource1: TDataSource
    DataSet = CDSOut
    Left = 192
    Top = 248
  end
  object QueryOut: TQuery
    DatabaseName = 'DB'
    UpdateObject = UpdateSQL1
    Left = 192
    Top = 208
    object QueryOutid: TStringField
      FieldName = 'id'
    end
    object QueryOutid_code: TStringField
      FieldName = 'id_code'
    end
    object QueryOutsku: TStringField
      FieldName = 'sku'
    end
    object QueryOutcolor: TStringField
      FieldName = 'color'
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
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 288
    Top = 224
  end
  object UpdateSQL1: TUpdateSQL
    Left = 200
    Top = 304
  end
  object CDSOut: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 456
    Top = 272
  end
end
