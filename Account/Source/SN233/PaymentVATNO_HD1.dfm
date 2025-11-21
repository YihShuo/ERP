object PaymentVATNO_HD: TPaymentVATNO_HD
  Left = 286
  Top = 204
  Width = 1316
  Height = 467
  Caption = 'PaymentVATNO_HD'
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
  object Panel28: TPanel
    Left = 0
    Top = 0
    Width = 1300
    Height = 59
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label65: TLabel
      Left = 198
      Top = 9
      Width = 109
      Height = 16
      Caption = 'Choose HOADON'
      Color = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label68: TLabel
      Left = 16
      Top = 12
      Width = 47
      Height = 16
      Caption = 'VATNO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label69: TLabel
      Left = 16
      Top = 38
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
    object Label60: TLabel
      Left = 332
      Top = 40
      Width = 7
      Height = 13
      Caption = '~'
    end
    object Label61: TLabel
      Left = 200
      Top = 38
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
    object btn_QryPMHD: TButton
      Left = 448
      Top = 21
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
      OnClick = btn_QryPMHDClick
    end
    object edt_code4: TEdit
      Left = 96
      Top = 8
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
    object btn_CpPMHD: TButton
      Left = 528
      Top = 21
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
      OnClick = btn_CpPMHDClick
    end
    object edt_supp4: TEdit
      Left = 96
      Top = 33
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
    object DTP8: TDateTimePicker
      Left = 343
      Top = 33
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
      TabOrder = 4
    end
    object DTP7: TDateTimePicker
      Left = 242
      Top = 33
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
  end
  object DB_PMHDD: TDBGridEh
    Left = 0
    Top = 59
    Width = 1300
    Height = 369
    Align = alClient
    DataSource = DS_PMHD
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
    OnDblClick = DB_PMHDDDblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'VATNO'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 125
      end
      item
        EditButtons = <>
        FieldName = 'KYHIEU'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 89
      end
      item
        EditButtons = <>
        FieldName = 'KYHIEU_HOADON'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'VATDATE'
        Footers = <>
        Title.Caption = 'NGAY_HD'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 97
      end
      item
        EditButtons = <>
        FieldName = 'TEN_NGUOIBAN'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 232
      end
      item
        EditButtons = <>
        FieldName = 'ZSBH_MST'
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
        FieldName = 'TONGTIEN_CHUATHUE'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 159
      end
      item
        EditButtons = <>
        FieldName = 'TONGTIEN_THUE'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 123
      end
      item
        EditButtons = <>
        FieldName = 'TONGTIEN_THANHTOAN'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 170
      end
      item
        EditButtons = <>
        FieldName = 'DONVI_TIENTE'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 103
      end
      item
        EditButtons = <>
        FieldName = 'TRANGTHAI_HD'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 113
      end
      item
        EditButtons = <>
        FieldName = 'KETQUA_KIEMTRA'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 130
      end>
  end
  object DS_PMHD: TDataSource
    DataSet = qry_PMHD
    Left = 658
    Top = 143
  end
  object qry_PMHD: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        '  SELECT top 100 KYHIEU_HOADON ,VATNO, VATDATE,TONGTIEN_CHUATHUE' +
        ', TONGTIEN_THUE,  '
      
        '         TONGTIEN_THANHTOAN, DONVI_TIENTE, TRANGTHAI_HD, KETQUA_' +
        'KIEMTRA,  '
      '         TEN_NGUOIBAN,CGZL_VATNO.ZSBH_MST,'#39'1'#39' YN  '
      '  FROM CGZL_VATNO  '
      '  WHERE 1=2')
    Left = 658
    Top = 175
    object qry_PMHDKYHIEU: TStringField
      FieldName = 'KYHIEU'
      Size = 10
    end
    object qry_PMHDVATNO: TStringField
      FieldName = 'VATNO'
      FixedChar = True
      Size = 50
    end
    object qry_PMHDVATDATE: TDateTimeField
      FieldName = 'VATDATE'
    end
    object qry_PMHDTONGTIEN_CHUATHUE: TCurrencyField
      FieldName = 'TONGTIEN_CHUATHUE'
      DisplayFormat = '#,##0.00'
    end
    object qry_PMHDTONGTIEN_THUE: TCurrencyField
      FieldName = 'TONGTIEN_THUE'
      DisplayFormat = '#,##0.00'
    end
    object qry_PMHDTONGTIEN_THANHTOAN: TCurrencyField
      FieldName = 'TONGTIEN_THANHTOAN'
      DisplayFormat = '#,##0.00'
    end
    object qry_PMHDDONVI_TIENTE: TStringField
      FieldName = 'DONVI_TIENTE'
      FixedChar = True
      Size = 5
    end
    object qry_PMHDTRANGTHAI_HD: TStringField
      FieldName = 'TRANGTHAI_HD'
      FixedChar = True
      Size = 100
    end
    object qry_PMHDKETQUA_KIEMTRA: TStringField
      FieldName = 'KETQUA_KIEMTRA'
      FixedChar = True
      Size = 100
    end
    object qry_PMHDTEN_NGUOIBAN: TStringField
      FieldName = 'TEN_NGUOIBAN'
      FixedChar = True
      Size = 200
    end
    object qry_PMHDZSBH_MST: TStringField
      FieldName = 'ZSBH_MST'
      FixedChar = True
      Size = 50
    end
    object qry_PMHDYN: TStringField
      FieldName = 'YN'
    end
    object qry_PMHDKYHIEU_HOADON: TStringField
      FieldName = 'KYHIEU_HOADON'
      FixedChar = True
      Size = 10
    end
  end
end
