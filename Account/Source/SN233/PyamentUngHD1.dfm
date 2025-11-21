object PaymentUngHD: TPaymentUngHD
  Left = 403
  Top = 306
  Width = 1256
  Height = 476
  Caption = 'PaymentUngHD'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel25: TPanel
    Left = 0
    Top = 0
    Width = 1240
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label66: TLabel
      Left = 16
      Top = 20
      Width = 68
      Height = 16
      Caption = 'SupplierNo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label67: TLabel
      Left = 251
      Top = 20
      Width = 35
      Height = 16
      Caption = 'FKBH'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btn_QryPMTK: TButton
      Left = 410
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
    object edt_Supplier: TEdit
      Left = 93
      Top = 14
      Width = 97
      Height = 24
      Color = clSilver
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object edt_FKBH: TEdit
      Left = 289
      Top = 14
      Width = 106
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object DB_PMTK: TDBGridEh
    Left = 0
    Top = 57
    Width = 1240
    Height = 380
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
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DB_PMTKDblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'FKBH'
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clWindowText
        Footer.Font.Height = -13
        Footer.Font.Name = 'MS Sans Serif'
        Footer.Font.Style = []
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'ZSBH_MST'
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clWindowText
        Footer.Font.Height = -13
        Footer.Font.Name = 'MS Sans Serif'
        Footer.Font.Style = []
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'KYHIEU_HOADON'
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clWindowText
        Footer.Font.Height = -13
        Footer.Font.Name = 'MS Sans Serif'
        Footer.Font.Style = []
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'VATNO'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'VATDATE'
        Footers = <>
        Width = 80
      end
      item
        DisplayFormat = '##,#0.0000'
        EditButtons = <>
        FieldName = 'TONGTIEN_CHUATHUE'
        Footers = <>
        Width = 150
      end
      item
        DisplayFormat = '##,#0.0000'
        EditButtons = <>
        FieldName = 'TONGTIEN_THUE'
        Footers = <>
        Width = 150
      end
      item
        DisplayFormat = '##,#0.0000'
        EditButtons = <>
        FieldName = 'TONGTIEN_THANHTOAN'
        Footers = <>
        Width = 200
      end>
  end
  object qry_PMTK: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT *'
      'FROM CGZL_PAYMENTSS'
      'where 1=2')
    Left = 409
    Top = 151
    object qry_PMTKFKBH: TStringField
      FieldName = 'FKBH'
      Origin = 'DB.CGZL_PaymentSS.FKBH'
      FixedChar = True
      Size = 15
    end
    object qry_PMTKVATNO: TStringField
      FieldName = 'VATNO'
      Origin = 'DB.CGZL_PaymentSS.VATNO'
      FixedChar = True
      Size = 50
    end
    object qry_PMTKZSBH_MST: TStringField
      FieldName = 'ZSBH_MST'
      Origin = 'DB.CGZL_PaymentSS.ZSBH_MST'
      FixedChar = True
      Size = 50
    end
    object qry_PMTKUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.CGZL_PaymentSS.USERID'
      FixedChar = True
    end
    object qry_PMTKUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.CGZL_PaymentSS.USERDATE'
    end
    object qry_PMTKYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.CGZL_PaymentSS.YN'
      FixedChar = True
      Size = 1
    end
    object qry_PMTKSTT: TStringField
      FieldName = 'STT'
      Origin = 'DB.CGZL_PaymentSS.STT'
      FixedChar = True
      Size = 10
    end
    object qry_PMTKKYHIEU_HOADON: TStringField
      FieldName = 'KYHIEU_HOADON'
      Origin = 'DB.CGZL_PaymentSS.KYHIEU_HOADON'
      FixedChar = True
      Size = 200
    end
    object qry_PMTKVATDATE: TDateTimeField
      FieldName = 'VATDATE'
      Origin = 'DB.CGZL_PaymentSS.VATDATE'
    end
    object qry_PMTKTONGTIEN_CHUATHUE: TCurrencyField
      FieldName = 'TONGTIEN_CHUATHUE'
      Origin = 'DB.CGZL_PaymentSS.TONGTIEN_CHUATHUE'
    end
    object qry_PMTKTONGTIEN_THUE: TCurrencyField
      FieldName = 'TONGTIEN_THUE'
      Origin = 'DB.CGZL_PaymentSS.TONGTIEN_THUE'
    end
    object qry_PMTKTONGTIEN_THANHTOAN: TCurrencyField
      FieldName = 'TONGTIEN_THANHTOAN'
      Origin = 'DB.CGZL_PaymentSS.TONGTIEN_THANHTOAN'
    end
  end
  object DS_PMTK: TDataSource
    DataSet = qry_PMTK
    Left = 409
    Top = 119
  end
end
