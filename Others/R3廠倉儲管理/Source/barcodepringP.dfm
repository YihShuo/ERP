object barcodepring: Tbarcodepring
  Left = 338
  Top = 204
  AutoScroll = False
  Caption = 'BarCode Print'
  ClientHeight = 371
  ClientWidth = 568
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
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 568
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 9
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
      Left = 136
      Top = 9
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
      Left = 240
      Top = 9
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
    object cb1: TComboBox
      Left = 64
      Top = 9
      Width = 65
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      OnChange = cb1Change
    end
    object cb2: TComboBox
      Left = 160
      Top = 9
      Width = 65
      Height = 21
      ItemHeight = 13
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 288
      Top = 9
      Width = 57
      Height = 21
      TabOrder = 2
      Text = '1'
    end
    object Button1: TButton
      Left = 442
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Start Print'
      TabOrder = 3
      OnClick = Button1Click
    end
    object CKB1: TCheckBox
      Left = 352
      Top = 8
      Width = 73
      Height = 17
      Caption = 'Residue'
      TabOrder = 4
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 49
    Width = 568
    Height = 322
    Align = alClient
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'SIZE'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SNO'
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COLOR'
        Width = 335
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MG'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODEBAR'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTY'
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = ProBARPrint
    Left = 96
    Top = 144
  end
  object qp: TQuery
    Active = True
    DatabaseName = 'dB'
    DataSource = ProductionPlan.WP
    SQL.Strings = (
      'select * from workplans '
      'left join colorclass on workplans.colorno=colorclass.colorno '
      ' where workid='#39'201410001'#39
      ' and sno=1 '
      ' and workplans.size >='#39'03.5'#39
      ' and workplans.size <='#39'03.5'#39)
    Left = 56
    Top = 144
    object qpWorkID: TStringField
      FieldName = 'WorkID'
      FixedChar = True
      Size = 12
    end
    object qpSno: TIntegerField
      FieldName = 'Sno'
    end
    object qpMjbh: TStringField
      FieldName = 'Mjbh'
      FixedChar = True
    end
    object qpColorNo: TStringField
      FieldName = 'ColorNo'
      FixedChar = True
      Size = 4
    end
    object qpSize: TStringField
      FieldName = 'Size'
      FixedChar = True
      Size = 6
    end
    object qpQty: TIntegerField
      FieldName = 'Qty'
    end
    object qpNBarCode: TIntegerField
      FieldName = 'NBarCode'
    end
    object qpPbarcode: TIntegerField
      FieldName = 'Pbarcode'
    end
    object qpEnglishName: TStringField
      FieldName = 'EnglishName'
      FixedChar = True
      Size = 100
    end
    object qpChinaNmae: TStringField
      FieldName = 'ChinaNmae'
      FixedChar = True
      Size = 50
    end
    object qpcodebar: TStringField
      FieldName = 'codebar'
      FixedChar = True
      Size = 22
    end
  end
  object ProBARPrint: TTable
    TableName = 'R3BarPrint.dbf'
    Left = 56
    Top = 200
    object ProBARPrintWORKID: TStringField
      FieldName = 'WORKID'
      Size = 12
    end
    object ProBARPrintCOLOR: TStringField
      FieldName = 'COLOR'
      Size = 100
    end
    object ProBARPrintMG: TStringField
      FieldName = 'MG'
      Size = 50
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
  object cbq: TQuery
    DatabaseName = 'dB'
    DataSource = ProductionPlan.WP
    Left = 520
    Top = 8
  end
end
