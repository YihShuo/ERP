object barcodepring: Tbarcodepring
  Left = 771
  Top = 262
  Width = 551
  Height = 409
  Caption = 'BarCode Print'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 535
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 32
      Width = 37
      Height = 20
      Caption = 'SIZE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 144
      Top = 32
      Width = 18
      Height = 20
      Caption = 'To'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 256
      Top = 32
      Width = 39
      Height = 20
      Caption = 'Piece'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object ComboBox1: TComboBox
      Left = 72
      Top = 32
      Width = 65
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      Text = 'ComboBox1'
      OnChange = ComboBox1Change
    end
    object ComboBox2: TComboBox
      Left = 168
      Top = 32
      Width = 65
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      Text = 'ComboBox1'
    end
    object Edit1: TEdit
      Left = 304
      Top = 32
      Width = 57
      Height = 21
      TabOrder = 2
    end
    object Button1: TButton
      Left = 386
      Top = 28
      Width = 75
      Height = 25
      Caption = 'Start Print'
      TabOrder = 3
      OnClick = Button1Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 81
    Width = 535
    Height = 290
    Align = alClient
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    Left = 400
    Top = 120
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 448
    Top = 120
  end
  object ProBARPrint: TTable
    TableName = 'R3BarPrint.dbf'
    Left = 556
    Top = 241
    object ProBARPrintWORKID: TStringField
      FieldName = 'WORKID'
      Size = 12
    end
    object ProBARPrintCOLOR: TStringField
      FieldName = 'COLOR'
      Size = 15
    end
    object ProBARPrintMG: TStringField
      FieldName = 'MG'
      Size = 15
    end
    object ProBARPrintSIZE: TStringField
      FieldName = 'SIZE'
      Size = 6
    end
    object ProBARPrintSNO: TStringField
      FieldName = 'SNO'
      Size = 1
    end
    object ProBARPrintCODEBAR: TStringField
      FieldName = 'CODEBAR'
    end
    object ProBARPrintQTY: TSmallintField
      FieldName = 'QTY'
    end
    object ProBARPrintCTS: TSmallintField
      FieldName = 'CTS'
    end
  end
end
