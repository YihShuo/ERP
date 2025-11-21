object COSTData: TCOSTData
  Left = 192
  Top = 125
  Width = 1305
  Height = 675
  Caption = 'COSTData'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 73
    Align = alTop
    TabOrder = 0
    object lbl_Year: TLabel
      Left = 200
      Top = 15
      Width = 57
      Height = 16
      Caption = 'Ngay CT:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl_Month: TLabel
      Left = 10
      Top = 15
      Width = 74
      Height = 16
      Caption = 'TK Ke Toan:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 354
      Top = 21
      Width = 7
      Height = 13
      Caption = '~'
    end
    object Label1: TLabel
      Left = 10
      Top = 45
      Width = 76
      Height = 16
      Caption = 'Ma Bo Phan:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 200
      Top = 45
      Width = 81
      Height = 16
      Caption = 'Ten Bo Phan:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 489
      Top = 20
      Width = 90
      Height = 30
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Candara'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 581
      Top = 20
      Width = 90
      Height = 30
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Candara'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 675
      Top = 20
      Width = 124
      Height = 30
      Caption = 'Import GP Cost'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Candara'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button3Click
    end
    object DTP2: TDateTimePicker
      Left = 364
      Top = 10
      Width = 88
      Height = 24
      Date = 39214.580252268520000000
      Format = 'yyyy/MM/dd'
      Time = 39214.580252268520000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DTP1: TDateTimePicker
      Left = 264
      Top = 10
      Width = 88
      Height = 24
      Date = 39214.580252268520000000
      Format = 'yyyy/MM/dd'
      Time = 39214.580252268520000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object edt_TK_Ketoan: TEdit
      Left = 95
      Top = 10
      Width = 100
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object edt_MaBP: TEdit
      Left = 95
      Top = 40
      Width = 100
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object edt_TenBP: TEdit
      Left = 290
      Top = 40
      Width = 160
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 1289
    Height = 563
    Align = alClient
    DataSource = DS_Cost
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
    FooterFont.Style = [fsBold]
    FooterRowCount = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'TK_Ketoan'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = 'TK Ke Toan'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'Ten_TK'
        Footers = <>
        Title.Caption = 'Ten TK'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'Ten_tat_TK'
        Footers = <>
        Title.Caption = 'Ten Tat TK'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'Ngay_CT'
        Footers = <>
        Title.Caption = 'Ngay CT'
      end
      item
        EditButtons = <>
        FieldName = 'Ma_CT'
        Footers = <>
        Title.Caption = 'Ma CT'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'Maso_TK_doi_ung'
        Footers = <>
        Title.Caption = 'Ma So TK Doi Ung'
        Width = 115
      end
      item
        EditButtons = <>
        FieldName = 'Ten_TK_doi_ung'
        Footers = <>
        Title.Caption = 'Ten TK Doi Ung'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'Tenkhac_TK_doi_ung'
        Footers = <>
        Title.Caption = 'Ten Khac TK Doi Ung'
        Width = 135
      end
      item
        EditButtons = <>
        FieldName = 'Ma_bo_phan'
        Footers = <>
        Title.Caption = 'Ma Bo Phan'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'Ten_bo_phan'
        Footers = <>
        Title.Caption = 'Ten Bo Phan'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'Ma_theo_doi_no1'
        Footers = <>
        Title.Caption = 'Ma Theo Doi No1'
        Width = 110
      end
      item
        EditButtons = <>
        FieldName = 'Ten_theo_doi_no1'
        Footers = <>
        Title.Caption = 'Ten Theo Doi No1'
        Width = 115
      end
      item
        EditButtons = <>
        FieldName = 'Ma_theo_doi_no2'
        Footers = <>
        Title.Caption = 'Ma Theo Doi No2'
        Width = 110
      end
      item
        EditButtons = <>
        FieldName = 'Ten_theo_doi_no2'
        Footers = <>
        Title.Caption = 'Ten Theo Doi No2'
        Width = 115
      end
      item
        EditButtons = <>
        FieldName = 'MS_TK_theo_doi_no1'
        Footers = <>
        Title.Caption = 'MS TK Theo Doi No1'
        Width = 130
      end
      item
        EditButtons = <>
        FieldName = 'Ten_TK_theo_doi_no1'
        Footers = <>
        Title.Caption = 'Ten TK Theo Doi No1'
        Width = 135
      end
      item
        EditButtons = <>
        FieldName = 'MS_TK_theo_doi_no2'
        Footers = <>
        Title.Caption = 'MS TK Theo Doi No2'
        Width = 130
      end
      item
        EditButtons = <>
        FieldName = 'Ten_TK_theo_doi_no2'
        Footers = <>
        Title.Caption = 'Ten TK Theo Doi No2'
        Width = 135
      end
      item
        EditButtons = <>
        FieldName = 'Dien_giai'
        Footers = <>
        Title.Caption = 'Dien Giai'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'Dien_giai_TK_doi_ung'
        Footers = <>
        Title.Caption = 'Dien Giai TK Doi Ung'
        Width = 130
      end
      item
        EditButtons = <>
        FieldName = 'Ghi_chu'
        Footers = <>
        Title.Caption = 'Ghi Chu'
        Width = 100
      end
      item
        DisplayFormat = '##,#0.00'
        EditButtons = <>
        FieldName = 'Sotien_ben_no_Noi_te'
        Footer.DisplayFormat = '##,#0.00'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'So Tien Ben No Noi Te'
        Width = 145
      end
      item
        DisplayFormat = '##,#0.00'
        EditButtons = <>
        FieldName = 'Sotien_ben_co_Noi_te'
        Footer.DisplayFormat = '##,#0.00'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'So Tien Ben Co Noi Te'
        Width = 145
      end
      item
        DisplayFormat = '##,#0.00'
        EditButtons = <>
        FieldName = 'Sodu_Noi_te'
        Footer.DisplayFormat = '##,#0.00'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'So Du Noi Te'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'Sodu_no_OR_co'
        Footers = <>
        Title.Caption = 'So Du No OR Co'
        Width = 110
      end
      item
        DisplayFormat = '##,#0.00'
        EditButtons = <>
        FieldName = 'Sodu_Noi_te_No'
        Footer.DisplayFormat = '##,#0.00'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'So Du Noi Te No'
        Width = 110
      end
      item
        DisplayFormat = '##,#0.00'
        EditButtons = <>
        FieldName = 'Sodu_Noi_te_Co'
        Footer.DisplayFormat = '##,#0.00'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'So Du Noi Te Co'
        Width = 110
      end
      item
        EditButtons = <>
        FieldName = 'ImportUser'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ImportDate'
        Footers = <>
        Width = 100
      end>
  end
  object qry_Cost: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'SELECT * FROM GP_Import_Cost1 where  1=2')
    Left = 837
    Top = 125
    object qry_CostTK_Ketoan: TStringField
      FieldName = 'TK_Ketoan'
      Origin = 'DB.GP_Import_Cost1.TK_Ketoan'
      FixedChar = True
      Size = 10
    end
    object qry_CostTen_TK: TStringField
      FieldName = 'Ten_TK'
      Origin = 'DB.GP_Import_Cost1.Ten_TK'
      FixedChar = True
      Size = 255
    end
    object qry_CostTen_tat_TK: TStringField
      FieldName = 'Ten_tat_TK'
      Origin = 'DB.GP_Import_Cost1.Ten_tat_TK'
      FixedChar = True
      Size = 100
    end
    object qry_CostNgay_CT: TDateTimeField
      FieldName = 'Ngay_CT'
      Origin = 'DB.GP_Import_Cost1.Ngay_CT'
    end
    object qry_CostMa_CT: TStringField
      FieldName = 'Ma_CT'
      Origin = 'DB.GP_Import_Cost1.Ma_CT'
      FixedChar = True
      Size = 100
    end
    object qry_CostMaso_TK_doi_ung: TStringField
      FieldName = 'Maso_TK_doi_ung'
      Origin = 'DB.GP_Import_Cost1.Maso_TK_doi_ung'
      FixedChar = True
      Size = 10
    end
    object qry_CostTen_TK_doi_ung: TStringField
      FieldName = 'Ten_TK_doi_ung'
      Origin = 'DB.GP_Import_Cost1.Ten_TK_doi_ung'
      FixedChar = True
      Size = 255
    end
    object qry_CostTenkhac_TK_doi_ung: TStringField
      FieldName = 'Tenkhac_TK_doi_ung'
      Origin = 'DB.GP_Import_Cost1.Tenkhac_TK_doi_ung'
      FixedChar = True
      Size = 100
    end
    object qry_CostMa_bo_phan: TStringField
      FieldName = 'Ma_bo_phan'
      Origin = 'DB.GP_Import_Cost1.Ma_bo_phan'
      FixedChar = True
      Size = 10
    end
    object qry_CostTen_bo_phan: TStringField
      FieldName = 'Ten_bo_phan'
      Origin = 'DB.GP_Import_Cost1.Ten_bo_phan'
      FixedChar = True
      Size = 100
    end
    object qry_CostMa_theo_doi_no1: TStringField
      FieldName = 'Ma_theo_doi_no1'
      Origin = 'DB.GP_Import_Cost1.Ma_theo_doi_no1'
      FixedChar = True
      Size = 10
    end
    object qry_CostTen_theo_doi_no1: TStringField
      FieldName = 'Ten_theo_doi_no1'
      Origin = 'DB.GP_Import_Cost1.Ten_theo_doi_no1'
      FixedChar = True
      Size = 200
    end
    object qry_CostMa_theo_doi_no2: TStringField
      FieldName = 'Ma_theo_doi_no2'
      Origin = 'DB.GP_Import_Cost1.Ma_theo_doi_no2'
      FixedChar = True
      Size = 10
    end
    object qry_CostTen_theo_doi_no2: TStringField
      FieldName = 'Ten_theo_doi_no2'
      Origin = 'DB.GP_Import_Cost1.Ten_theo_doi_no2'
      FixedChar = True
      Size = 200
    end
    object qry_CostMS_TK_theo_doi_no1: TStringField
      FieldName = 'MS_TK_theo_doi_no1'
      Origin = 'DB.GP_Import_Cost1.MS_TK_theo_doi_no1'
      FixedChar = True
      Size = 10
    end
    object qry_CostTen_TK_theo_doi_no1: TStringField
      FieldName = 'Ten_TK_theo_doi_no1'
      Origin = 'DB.GP_Import_Cost1.Ten_TK_theo_doi_no1'
      FixedChar = True
      Size = 200
    end
    object qry_CostMS_TK_theo_doi_no2: TStringField
      FieldName = 'MS_TK_theo_doi_no2'
      Origin = 'DB.GP_Import_Cost1.MS_TK_theo_doi_no2'
      FixedChar = True
      Size = 10
    end
    object qry_CostTen_TK_theo_doi_no2: TStringField
      FieldName = 'Ten_TK_theo_doi_no2'
      Origin = 'DB.GP_Import_Cost1.Ten_TK_theo_doi_no2'
      FixedChar = True
      Size = 200
    end
    object qry_CostDien_giai: TStringField
      FieldName = 'Dien_giai'
      Origin = 'DB.GP_Import_Cost1.Dien_giai'
      FixedChar = True
      Size = 255
    end
    object qry_CostDien_giai_TK_doi_ung: TStringField
      FieldName = 'Dien_giai_TK_doi_ung'
      Origin = 'DB.GP_Import_Cost1.Dien_giai_TK_doi_ung'
      FixedChar = True
      Size = 255
    end
    object qry_CostGhi_chu: TStringField
      FieldName = 'Ghi_chu'
      Origin = 'DB.GP_Import_Cost1.Ghi_chu'
      FixedChar = True
      Size = 255
    end
    object qry_CostSotien_ben_no_Noi_te: TCurrencyField
      FieldName = 'Sotien_ben_no_Noi_te'
      Origin = 'DB.GP_Import_Cost1.Sotien_ben_no_Noi_te'
    end
    object qry_CostSotien_ben_co_Noi_te: TCurrencyField
      FieldName = 'Sotien_ben_co_Noi_te'
      Origin = 'DB.GP_Import_Cost1.Sotien_ben_co_Noi_te'
    end
    object qry_CostSodu_Noi_te: TCurrencyField
      FieldName = 'Sodu_Noi_te'
      Origin = 'DB.GP_Import_Cost1.Sodu_Noi_te'
    end
    object qry_CostSodu_no_OR_co: TStringField
      FieldName = 'Sodu_no_OR_co'
      Origin = 'DB.GP_Import_Cost1.Sodu_no_OR_co'
      FixedChar = True
      Size = 100
    end
    object qry_CostSodu_Noi_te_No: TCurrencyField
      FieldName = 'Sodu_Noi_te_No'
      Origin = 'DB.GP_Import_Cost1.Sodu_Noi_te_No'
    end
    object qry_CostSodu_Noi_te_Co: TCurrencyField
      FieldName = 'Sodu_Noi_te_Co'
      Origin = 'DB.GP_Import_Cost1.Sodu_Noi_te_Co'
    end
    object qry_CostImportUser: TStringField
      FieldName = 'ImportUser'
      Origin = 'DB.GP_Import_Cost1.ImportUser'
      FixedChar = True
      Size = 10
    end
    object qry_CostImportDate: TDateTimeField
      FieldName = 'ImportDate'
      Origin = 'DB.GP_Import_Cost1.ImportDate'
    end
    object qry_CostYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.GP_Import_Cost1.YN'
      FixedChar = True
      Size = 2
    end
  end
  object DS_Cost: TDataSource
    DataSet = qry_Cost
    Left = 839
    Top = 159
  end
  object qry_temp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 968
    Top = 248
  end
end
