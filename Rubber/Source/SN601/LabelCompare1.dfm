object LabelCompare: TLabelCompare
  Left = 196
  Top = 214
  Width = 1531
  Height = 675
  Caption = 'Label Compare'
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
    Width = 1515
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 32
      Top = 24
      Width = 25
      Height = 24
      Caption = 'RY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 580
      Top = 24
      Width = 41
      Height = 24
      Caption = 'SIZE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 703
      Top = 24
      Width = 23
      Height = 24
      Caption = 'To'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 308
      Top = 24
      Width = 78
      Height = 24
      Caption = 'ARTICLE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button2: TButton
      Left = 841
      Top = 16
      Width = 81
      Height = 41
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button2Click
    end
    object EDqty: TEdit
      Left = 64
      Top = 20
      Width = 209
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnExit = EDqtyExit
    end
    object CBsku: TComboBox
      Left = 392
      Top = 20
      Width = 172
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 24
      ParentFont = False
      TabOrder = 2
    end
    object CBsize1: TComboBox
      Left = 632
      Top = 20
      Width = 65
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 24
      ParentFont = False
      TabOrder = 3
    end
    object CBsize2: TComboBox
      Left = 736
      Top = 20
      Width = 65
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 24
      ParentFont = False
      TabOrder = 4
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 80
    Width = 1473
    Height = 257
    Align = alCustom
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
    Visible = False
    Columns = <
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
        FieldName = 'color'
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
        FieldName = 'ScanIn_EVA'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ScanOut_EVA'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ScanIn_RB'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ScanOut_RB'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end
      item
        Color = cl3DLight
        Expanded = False
        FieldName = 'QTY_EVA'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end
      item
        Color = clMenu
        Expanded = False
        FieldName = 'QTY_RB'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end
      item
        Color = cl3DLight
        Expanded = False
        FieldName = 'Pairs'
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
  object StringGrid1: TStringGrid
    Left = 0
    Top = 73
    Width = 1515
    Height = 563
    Align = alClient
    RowCount = 1
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnDrawCell = StringGrid1DrawCell
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 72
    Top = 241
  end
  object DataSource1: TDataSource
    DataSet = QueryOut
    Left = 144
    Top = 225
  end
  object QueryOut: TQuery
    DatabaseName = 'DB'
    Left = 144
    Top = 193
    object QueryOutsku: TStringField
      FieldName = 'sku'
    end
    object QueryOutcolor: TStringField
      FieldName = 'color'
    end
    object QueryOutsize: TStringField
      FieldName = 'size'
    end
    object QueryOutScanIn_EVA: TIntegerField
      FieldName = 'ScanIn_EVA'
    end
    object QueryOutOrder_Qty: TIntegerField
      FieldName = 'Order_Qty'
    end
    object QueryOutScanIn_RB: TIntegerField
      FieldName = 'ScanIn_RB'
    end
    object QueryOutScanOut_EVA: TIntegerField
      FieldName = 'ScanOut_EVA'
    end
    object QueryOutScanOut_RB: TIntegerField
      FieldName = 'ScanOut_RB'
    end
    object QueryOutQTY_EVA: TIntegerField
      FieldName = 'QTY_EVA'
    end
    object QueryOutQTY_RB: TIntegerField
      FieldName = 'QTY_RB'
    end
    object QueryOutPairs: TIntegerField
      FieldName = 'Pairs'
    end
    object QueryOutOUTSOLE: TStringField
      FieldName = 'OUTSOLE'
    end
  end
end
