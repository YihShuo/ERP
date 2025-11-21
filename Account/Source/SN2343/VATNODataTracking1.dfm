object VATNODataTracking: TVATNODataTracking
  Left = 307
  Top = 254
  Width = 1109
  Height = 583
  Caption = 'VATNODataTracking'
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
  object Panel6: TPanel
    Left = 0
    Top = 0
    Width = 1101
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label7: TLabel
      Left = 224
      Top = 9
      Width = 29
      Height = 18
      Caption = 'MST'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 13
      Top = 9
      Width = 45
      Height = 18
      Caption = 'VATNO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 195
      Top = 42
      Width = 7
      Height = 13
      Caption = '~'
    end
    object Label1: TLabel
      Left = 307
      Top = 40
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
    object ZS_VATNO: TEdit
      Left = 264
      Top = 6
      Width = 113
      Height = 26
      CharCase = ecUpperCase
      Color = 8454143
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object query_VATNO: TButton
      Left = 389
      Top = 4
      Width = 90
      Height = 30
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Candara'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = query_VATNOClick
    end
    object ex_VATNO: TButton
      Left = 479
      Top = 4
      Width = 90
      Height = 30
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Candara'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = ex_VATNOClick
    end
    object edt_VATNO: TEdit
      Left = 65
      Top = 6
      Width = 144
      Height = 26
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Chk_StartDate: TCheckBox
      Left = 15
      Top = 39
      Width = 74
      Height = 17
      Caption = 'VAT Date'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object DT1_VATNO: TDateTimePicker
      Left = 104
      Top = 37
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
      TabOrder = 5
    end
    object DT2_VATNO: TDateTimePicker
      Left = 211
      Top = 36
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
      TabOrder = 6
    end
    object GroupBox1: TGroupBox
      Left = 600
      Top = 8
      Width = 209
      Height = 54
      TabOrder = 7
      object rd2: TRadioButton
        Left = 16
        Top = 10
        Width = 101
        Height = 17
        Caption = 'Da_KeoTT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = rd2Click
      end
      object rd1: TRadioButton
        Left = 16
        Top = 32
        Width = 111
        Height = 14
        Caption = 'Chua_KeoTT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = rd1Click
      end
      object rd5: TRadioButton
        Left = 128
        Top = 11
        Width = 72
        Height = 14
        Caption = 'Tat_Ca'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        TabStop = True
        OnClick = rd1Click
      end
    end
    object edt_FKBH: TEdit
      Left = 348
      Top = 36
      Width = 111
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
  end
  object DB_VATNO: TDBGridEh
    Left = 0
    Top = 65
    Width = 1101
    Height = 192
    Align = alTop
    DataSource = DS_VATNO
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'Calibri'
    FooterFont.Style = [fsBold]
    FooterRowCount = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind]
    ParentFont = False
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
        FieldName = 'KYHIEU_MAUSO'
        Footers = <>
        Title.Caption = 'KH_MAUSO'
        Width = 136
      end
      item
        EditButtons = <>
        FieldName = 'KYHIEU_HOADON'
        Footers = <>
        Title.Caption = 'KH_HOADON'
        Width = 138
      end
      item
        EditButtons = <>
        FieldName = 'VATNO'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = 'SOHOADON'
        Width = 130
      end
      item
        EditButtons = <>
        FieldName = 'Da_Keo_Thanh_Toan'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'Phieu_Thanh_Toan'
        Footers = <>
        Width = 130
      end
      item
        EditButtons = <>
        FieldName = 'Nguoi_De_Nghi'
        Footers = <>
        Width = 110
      end
      item
        EditButtons = <>
        FieldName = 'Khu'
        Footers = <>
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'VATDATE'
        Footers = <>
        Title.Caption = 'NGAYLAP'
        Width = 91
      end
      item
        EditButtons = <>
        FieldName = 'ZSBH_MST'
        Footers = <>
        Title.Caption = 'MST'
        Width = 132
      end
      item
        EditButtons = <>
        FieldName = 'TEN_NGUOIBAN'
        Footers = <>
        Width = 129
      end
      item
        EditButtons = <>
        FieldName = 'TONGTIEN_CHUATHUE'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 160
      end
      item
        EditButtons = <>
        FieldName = 'TONGTIEN_THUE'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 140
      end
      item
        EditButtons = <>
        FieldName = 'TONGTIEN_CHIETKHAU'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 172
      end
      item
        EditButtons = <>
        FieldName = 'TONGTIEN_PHI'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 135
      end
      item
        EditButtons = <>
        FieldName = 'TONGTIEN_THANHTOAN'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 197
      end
      item
        EditButtons = <>
        FieldName = 'DONVI_TIENTE'
        Footers = <>
        Width = 127
      end
      item
        EditButtons = <>
        FieldName = 'TRANGTHAI_HD'
        Footers = <>
        Width = 114
      end
      item
        EditButtons = <>
        FieldName = 'KETQUA_KIEMTRA'
        Footers = <>
        Width = 137
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
      end
      item
        DisplayFormat = 'yyyy/mm/dd'
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'MST_TOCHUCGIAIPHAP'
        Footers = <>
        Width = 160
      end
      item
        EditButtons = <>
        FieldName = 'MST_TOCHUCTRUYENNHAN'
        Footers = <>
        Width = 199
      end
      item
        Checkboxes = True
        EditButtons = <>
        FieldName = 'PLX'
        Footers = <>
        Title.Caption = 'PHU LUC X'
      end>
  end
  object Panel4: TPanel
    Left = 0
    Top = 257
    Width = 1101
    Height = 72
    Align = alTop
    TabOrder = 2
    object Label3: TLabel
      Left = 195
      Top = 17
      Width = 83
      Height = 18
      Caption = 'SO HOA DON'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 14
      Top = 18
      Width = 64
      Height = 18
      Caption = 'So To Khai'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Candara'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 206
      Top = 51
      Width = 7
      Height = 13
      Caption = '~'
    end
    object Label4: TLabel
      Left = 312
      Top = 48
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
    object DT1_TK: TDateTimePicker
      Left = 115
      Top = 46
      Width = 89
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
      TabOrder = 5
    end
    object CL_TK: TEdit
      Left = 284
      Top = 14
      Width = 100
      Height = 26
      CharCase = ecUpperCase
      Color = 8454143
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edt_TK: TEdit
      Left = 89
      Top = 14
      Width = 100
      Height = 26
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object query_TK: TButton
      Left = 393
      Top = 12
      Width = 90
      Height = 30
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Candara'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = query_TKClick
    end
    object excel_TK: TButton
      Left = 485
      Top = 12
      Width = 90
      Height = 30
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Candara'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = excel_TKClick
    end
    object Chk_TKDate: TCheckBox
      Left = 12
      Top = 50
      Width = 103
      Height = 17
      Caption = 'Ngay Dang Ky'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object DT2_TK: TDateTimePicker
      Left = 220
      Top = 45
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
      TabOrder = 6
    end
    object GroupBox2: TGroupBox
      Left = 600
      Top = 8
      Width = 209
      Height = 54
      TabOrder = 7
      object rd4: TRadioButton
        Left = 16
        Top = 10
        Width = 101
        Height = 17
        Caption = 'Da_KeoTT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = rd4Click
      end
      object rd3: TRadioButton
        Left = 16
        Top = 32
        Width = 111
        Height = 14
        Caption = 'Chua_KeoTT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = rd3Click
      end
      object rd6: TRadioButton
        Left = 128
        Top = 11
        Width = 72
        Height = 14
        Caption = 'Tat_Ca'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        TabStop = True
        OnClick = rd1Click
      end
    end
    object edt_FKBH2: TEdit
      Left = 353
      Top = 44
      Width = 111
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 329
    Width = 1101
    Height = 223
    Align = alClient
    DataSource = DS_TKTong
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
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DECLARATION'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Alignment = taCenter
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'Da_Keo_Thanh_Toan'
        Footers = <>
        Title.Alignment = taCenter
        Width = 149
      end
      item
        EditButtons = <>
        FieldName = 'Phieu_Thanh_Toan'
        Footers = <>
        Title.Alignment = taCenter
        Width = 135
      end
      item
        EditButtons = <>
        FieldName = 'Nguoi_De_Nghi'
        Footers = <>
        Title.Alignment = taCenter
        Width = 106
      end
      item
        EditButtons = <>
        FieldName = 'Khu'
        Footers = <>
        Title.Alignment = taCenter
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'NGAYDANGKY'
        Footers = <>
        Title.Alignment = taCenter
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'MALOAIHINH'
        Footers = <>
        Title.Alignment = taCenter
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'TENDOITAC'
        Footers = <>
        Title.Alignment = taCenter
        Width = 250
      end
      item
        EditButtons = <>
        FieldName = 'NGAYDEN'
        Footers = <>
        Title.Alignment = taCenter
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'TONGTRIGIA_HOADON'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Alignment = taCenter
        Width = 160
      end
      item
        EditButtons = <>
        FieldName = 'DOCNO'
        Footers = <>
        Title.Alignment = taCenter
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Title.Alignment = taCenter
        Width = 75
      end
      item
        DisplayFormat = 'yyyy/mm/dd'
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Title.Alignment = taCenter
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
        Visible = False
        Width = 25
      end
      item
        DisplayFormat = 'yyyy/mm/dd'
        EditButtons = <>
        FieldName = 'NGAYTHONGQUAN'
        Footers = <>
      end
      item
        Checkboxes = True
        EditButtons = <>
        FieldName = 'PLX'
        Footers = <>
        Title.Caption = 'PHU LUC X'
      end>
  end
  object qry_VATNO: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'SELECT CGZL_VATNO.*,CASE WHEN (PayB.VATNO IS NOT NULL) OR (PayA.' +
        'VATNO IS NOT NULL) THEN '#39'Y'#39' ELSE '#39'N'#39' END AS Da_Keo_Thanh_Toan'
      
        ',CASE WHEN  (PayB.VATNO IS NOT NULL)  then PayB.FKBH WHEN  (PayA' +
        '.VATNO IS NOT NULL)  then PayA.FKBH ELSE NULL end  Phieu_Thanh_T' +
        'oan'
      
        ',CASE WHEN  (PayB.VATNO IS NOT NULL)  then PayB.USERID WHEN  (Pa' +
        'yA.VATNO IS NOT NULL)  then PayA.USERID ELSE NULL end  Nguoi_De_' +
        'Nghi'
      
        ',CASE WHEN  (PayB.VATNO IS NOT NULL)  then '#39'Khu B'#39' WHEN  (PayA.V' +
        'ATNO IS NOT NULL)  then '#39'Khu A'#39' ELSE NULL end  Khu'
      '  FROM CGZL_VATNO'
      'LEFT JOIN ('
      
        'SELECT VATNO, ZSBH_MST, FKBH,USERID FROM CGZL_PaymentSS) PayB ON' +
        ' PayB.VATNO = CGZL_VATNO.VATNO AND  PayB.ZSBH_MST = CGZL_VATNO.Z' +
        'SBH_MST'
      'LEFT JOIN ('
      
        'SELECT VATNO, ZSBH_MST, FKBH,USERID FROM CGZL_PaymentSS) PayA ON' +
        ' PayA.VATNO = CGZL_VATNO.VATNO AND  PayA.ZSBH_MST = CGZL_VATNO.Z' +
        'SBH_MST'
      ''
      'WHERE   1=2')
    Left = 739
    Top = 125
    object qry_VATNOVATNO: TStringField
      FieldName = 'VATNO'
      FixedChar = True
      Size = 50
    end
    object qry_VATNODa_Keo_Thanh_Toan: TStringField
      FieldName = 'Da_Keo_Thanh_Toan'
      FixedChar = True
      Size = 1
    end
    object qry_VATNOPhieu_Thanh_Toan: TStringField
      FieldName = 'Phieu_Thanh_Toan'
      FixedChar = True
      Size = 15
    end
    object qry_VATNONguoi_De_Nghi: TStringField
      FieldName = 'Nguoi_De_Nghi'
      FixedChar = True
    end
    object qry_VATNOKhu: TStringField
      FieldName = 'Khu'
      FixedChar = True
      Size = 5
    end
    object qry_VATNOVATDATE: TDateTimeField
      FieldName = 'VATDATE'
    end
    object qry_VATNOZSBH_MST: TStringField
      FieldName = 'ZSBH_MST'
      FixedChar = True
      Size = 50
    end
    object qry_VATNOUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 10
    end
    object qry_VATNOUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object qry_VATNOYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object qry_VATNOKYHIEU_MAUSO: TStringField
      FieldName = 'KYHIEU_MAUSO'
      FixedChar = True
      Size = 10
    end
    object qry_VATNOKYHIEU_HOADON: TStringField
      FieldName = 'KYHIEU_HOADON'
      FixedChar = True
      Size = 10
    end
    object qry_VATNOTEN_NGUOIBAN: TStringField
      FieldName = 'TEN_NGUOIBAN'
      FixedChar = True
      Size = 200
    end
    object qry_VATNOTONGTIEN_CHUATHUE: TCurrencyField
      FieldName = 'TONGTIEN_CHUATHUE'
      DisplayFormat = '##,#0.0000'
    end
    object qry_VATNOTONGTIEN_THUE: TCurrencyField
      FieldName = 'TONGTIEN_THUE'
      DisplayFormat = '##,#0.0000'
    end
    object qry_VATNOTONGTIEN_CHIETKHAU: TCurrencyField
      FieldName = 'TONGTIEN_CHIETKHAU'
      DisplayFormat = '##,#0.0000'
    end
    object qry_VATNOTONGTIEN_PHI: TCurrencyField
      FieldName = 'TONGTIEN_PHI'
      DisplayFormat = '##,#0.0000'
    end
    object qry_VATNOTONGTIEN_THANHTOAN: TCurrencyField
      FieldName = 'TONGTIEN_THANHTOAN'
      DisplayFormat = '##,#0.0000'
    end
    object qry_VATNODONVI_TIENTE: TStringField
      FieldName = 'DONVI_TIENTE'
      FixedChar = True
      Size = 5
    end
    object qry_VATNOTRANGTHAI_HD: TStringField
      FieldName = 'TRANGTHAI_HD'
      FixedChar = True
      Size = 100
    end
    object qry_VATNOKETQUA_KIEMTRA: TStringField
      FieldName = 'KETQUA_KIEMTRA'
      FixedChar = True
      Size = 100
    end
    object qry_VATNOMST_TOCHUCGIAIPHAP: TStringField
      FieldName = 'MST_TOCHUCGIAIPHAP'
      FixedChar = True
      Size = 50
    end
    object qry_VATNOMST_TOCHUCTRUYENNHAN: TStringField
      FieldName = 'MST_TOCHUCTRUYENNHAN'
      FixedChar = True
      Size = 50
    end
    object qry_VATNOPLX: TIntegerField
      FieldName = 'PLX'
    end
  end
  object qry_TKTong: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        '  SELECT CGZL_Declaration.DECLARATION, NGAYDANGKY, MALOAIHINH, T' +
        'ENDOITAC, NGAYDEN, TONGTRIGIA_HOADON, DOCNO, CGZL_Declaration.US' +
        'ERID, CGZL_Declaration.USERDATE, CGZL_Declaration.YN,NGAYTHONGQU' +
        'AN   '
      
        '  ,CASE WHEN (PayB.DECLARATION IS NOT NULL) OR (PayA.DECLARATION' +
        ' IS NOT NULL) THEN '#39'Y'#39' ELSE '#39'N'#39' END AS Da_Keo_Thanh_Toan  '
      
        '  ,CASE WHEN  (PayB.DECLARATION IS NOT NULL)  then PayB.FKBH WHE' +
        'N  (PayA.DECLARATION IS NOT NULL)  then PayA.FKBH ELSE NULL end ' +
        ' Phieu_Thanh_Toan  '
      
        '  ,CASE WHEN  (PayB.DECLARATION IS NOT NULL)  then PayB.USERID W' +
        'HEN  (PayA.DECLARATION IS NOT NULL)  then PayA.USERID ELSE NULL ' +
        'end  Nguoi_De_Nghi  '
      
        '  ,CASE WHEN  (PayB.DECLARATION IS NOT NULL)  then '#39'Khu B'#39' WHEN ' +
        ' (PayA.DECLARATION IS NOT NULL)  then '#39'Khu A'#39' ELSE NULL end  Khu' +
        '  '
      '  FROM CGZL_Declaration   '
      '  LEFT JOIN (  '
      '  SELECT DECLARATION, FKBH,USERID  '
      
        '  FROM CGZL_PaymentS) PayB ON PayB.DECLARATION = CGZL_Declaratio' +
        'n.DECLARATION      '
      '  LEFT JOIN (  '
      '  SELECT DECLARATION, FKBH,USERID   '
      
        '  FROM CGZL_PaymentS) PayA ON PayA.DECLARATION = CGZL_Declaratio' +
        'n.DECLARATION    '
      '  where  1=2  ')
    Left = 769
    Top = 125
    object qry_TKTongDECLARATION: TStringField
      FieldName = 'DECLARATION'
      FixedChar = True
      Size = 50
    end
    object qry_TKTongDa_Keo_Thanh_Toan: TStringField
      FieldName = 'Da_Keo_Thanh_Toan'
      FixedChar = True
      Size = 1
    end
    object qry_TKTongPhieu_Thanh_Toan: TStringField
      FieldName = 'Phieu_Thanh_Toan'
      FixedChar = True
      Size = 15
    end
    object qry_TKTongNguoi_De_Nghi: TStringField
      FieldName = 'Nguoi_De_Nghi'
      FixedChar = True
    end
    object qry_TKTongKhu: TStringField
      FieldName = 'Khu'
      FixedChar = True
      Size = 5
    end
    object qry_TKTongNGAYDANGKY: TDateTimeField
      FieldName = 'NGAYDANGKY'
    end
    object qry_TKTongMALOAIHINH: TStringField
      FieldName = 'MALOAIHINH'
      FixedChar = True
      Size = 5
    end
    object qry_TKTongTENDOITAC: TStringField
      FieldName = 'TENDOITAC'
      FixedChar = True
      Size = 255
    end
    object qry_TKTongNGAYDEN: TDateTimeField
      FieldName = 'NGAYDEN'
    end
    object qry_TKTongTONGTRIGIA_HOADON: TCurrencyField
      FieldName = 'TONGTRIGIA_HOADON'
      DisplayFormat = '##,#0.0000'
    end
    object qry_TKTongDOCNO: TStringField
      FieldName = 'DOCNO'
      FixedChar = True
      Size = 50
    end
    object qry_TKTongUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object qry_TKTongUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object qry_TKTongYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object qry_TKTongNGAYTHONGQUAN: TDateTimeField
      FieldName = 'NGAYTHONGQUAN'
      Origin = 'DB.CGZL_Declaration.NGAYTHONGQUAN'
    end
    object qry_TKTongPLX: TIntegerField
      FieldName = 'PLX'
    end
  end
  object DS_TKTong: TDataSource
    DataSet = qry_TKTong
    Left = 771
    Top = 159
  end
  object DS_VATNO: TDataSource
    DataSet = qry_VATNO
    Left = 741
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
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 1008
    Top = 248
  end
end
