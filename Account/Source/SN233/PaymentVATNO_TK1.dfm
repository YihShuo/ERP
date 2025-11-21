object PaymentVATNO_TK: TPaymentVATNO_TK
  Left = 462
  Top = 381
  Width = 868
  Height = 401
  Caption = 'PaymentVATNO_TK'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel25: TPanel
    Left = 0
    Top = 0
    Width = 852
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label64: TLabel
      Left = 194
      Top = 8
      Width = 99
      Height = 16
      Caption = 'Choose TOKHAI'
      Color = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label66: TLabel
      Left = 16
      Top = 8
      Width = 75
      Height = 16
      Caption = 'SO_TOKHAI'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label67: TLabel
      Left = 303
      Top = 8
      Width = 72
      Height = 16
      Caption = 'Supp.Name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 449
      Top = 30
      Width = 12
      Height = 16
      Caption = '%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 303
      Top = 32
      Width = 92
      Height = 16
      Caption = 'THANH TOAN:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label60: TLabel
      Left = 188
      Top = 34
      Width = 7
      Height = 13
      Caption = '~'
    end
    object Label61: TLabel
      Left = 16
      Top = 32
      Width = 31
      Height = 16
      Caption = 'From'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btn_QryPMTK: TButton
      Left = 490
      Top = 13
      Width = 73
      Height = 25
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btn_QryPMTKClick
    end
    object edt_code3: TEdit
      Left = 93
      Top = 2
      Width = 97
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object btn_CpPMTK: TButton
      Left = 570
      Top = 13
      Width = 73
      Height = 25
      Caption = 'COPY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btn_CpPMTKClick
    end
    object edt_supp3: TEdit
      Left = 381
      Top = 2
      Width = 97
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object pt: TComboBox
      Left = 400
      Top = 26
      Width = 49
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 4
      Text = 'pt'
      Items.Strings = (
        '100'
        '99')
    end
    object DTP8: TDateTimePicker
      Left = 199
      Top = 28
      Width = 90
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DTP7: TDateTimePicker
      Left = 93
      Top = 28
      Width = 90
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
  end
  object DB_PMTK: TDBGridEh
    Left = 0
    Top = 57
    Width = 852
    Height = 305
    Align = alClient
    DataSource = DS_PMTK
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
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DB_PMTKDblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'STT'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'DECLARATION'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 152
      end
      item
        EditButtons = <>
        FieldName = 'MALOAIHINH'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 93
      end
      item
        EditButtons = <>
        FieldName = 'NGAYDANGKY'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'TONGTRIGIA_HOADON'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 158
      end
      item
        EditButtons = <>
        FieldName = 'CWHL'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'TENDOITAC'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end>
  end
  object qry_PMTK: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT SOTT,DECLARATION,DOCNO,MALOAIHINH,NGAYDANGKY,TRIGIANT,TEN' +
        'DOITAC,'#39'1'#39' YN'
      '  FROM CGZL_DeclarationS'
      'where 1=2')
    Left = 409
    Top = 151
    object qry_PMTKSTT: TFloatField
      FieldName = 'STT'
    end
    object qry_PMTKDECLARATION: TStringField
      FieldName = 'DECLARATION'
      FixedChar = True
      Size = 50
    end
    object qry_PMTKMALOAIHINH: TStringField
      FieldName = 'MALOAIHINH'
      FixedChar = True
      Size = 5
    end
    object qry_PMTKNGAYDANGKY: TDateTimeField
      FieldName = 'NGAYDANGKY'
    end
    object qry_PMTKTONGTRIGIA_HOADON: TCurrencyField
      FieldName = 'TONGTRIGIA_HOADON'
      DisplayFormat = '#,##0.00'
    end
    object qry_PMTKCWHL: TCurrencyField
      FieldName = 'CWHL'
      DisplayFormat = '#,##0.00'
    end
    object qry_PMTKTENDOITAC: TStringField
      FieldName = 'TENDOITAC'
      FixedChar = True
      Size = 255
    end
    object qry_PMTKYN: TStringField
      FieldName = 'YN'
    end
    object qry_PMTKDOCNO: TStringField
      FieldName = 'DOCNO'
      Size = 50
    end
  end
  object DS_PMTK: TDataSource
    DataSet = qry_PMTK
    Left = 409
    Top = 119
  end
end
