object VATNOData: TVATNOData
  Left = 380
  Top = 146
  Width = 1386
  Height = 559
  Caption = 'VATNOData'
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
    Width = 1370
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label7: TLabel
      Left = 192
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
      Left = 167
      Top = 41
      Width = 7
      Height = 13
      Caption = '~'
    end
    object Label16: TLabel
      Left = 450
      Top = 40
      Width = 7
      Height = 13
      Caption = '~'
    end
    object ZS_VATNO: TEdit
      Left = 225
      Top = 6
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
    object query_VATNO: TButton
      Left = 359
      Top = 1
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
    object import_VATNO: TButton
      Left = 550
      Top = 1
      Width = 108
      Height = 30
      Caption = 'Import VATNO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Candara'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = import_VATNOClick
    end
    object ex_VATNO: TButton
      Left = 455
      Top = 1
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
      OnClick = ex_VATNOClick
    end
    object edt_VATNO: TEdit
      Left = 65
      Top = 6
      Width = 100
      Height = 26
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object Chk_StartDate: TCheckBox
      Left = 5
      Top = 39
      Width = 69
      Height = 17
      Caption = 'VAT Date'
      TabOrder = 5
    end
    object DT1_VATNO: TDateTimePicker
      Left = 75
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
    object DT2_VATNO: TDateTimePicker
      Left = 183
      Top = 35
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
      TabOrder = 7
    end
    object chk_UserDate_VATNO: TCheckBox
      Left = 286
      Top = 39
      Width = 68
      Height = 17
      Caption = 'UserDate'
      Checked = True
      State = cbChecked
      TabOrder = 8
    end
    object DT3_VATNO: TDateTimePicker
      Left = 360
      Top = 33
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
      TabOrder = 9
    end
    object DT4_VATNO: TDateTimePicker
      Left = 460
      Top = 34
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
      TabOrder = 10
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 65
    Width = 1370
    Height = 192
    Align = alTop
    DataSource = DS_VATNO
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
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
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'KYHIEU_MAUSO'
        Footers = <>
        Title.Caption = 'KH_MAUSO'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'KYHIEU_HOADON'
        Footers = <>
        Title.Caption = 'KH_HOADON'
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'VATNO'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = 'SOHOADON'
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'VATDATE'
        Footers = <>
        Title.Caption = 'NGAYLAP'
        Width = 124
      end
      item
        EditButtons = <>
        FieldName = 'ZSBH_MST'
        Footers = <>
        Title.Caption = 'MST'
        Width = 122
      end
      item
        EditButtons = <>
        FieldName = 'TEN_NGUOIBAN'
        Footers = <>
        Width = 250
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
        Width = 195
      end
      item
        EditButtons = <>
        FieldName = 'TONGTIEN_CHUATHUE'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 155
      end
      item
        EditButtons = <>
        FieldName = 'TONGTIEN_THUE'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'TONGTIEN_CHIETKHAU'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 155
      end
      item
        EditButtons = <>
        FieldName = 'TONGTIEN_PHI'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 110
      end
      item
        EditButtons = <>
        FieldName = 'TONGTIEN_THANHTOAN'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 170
      end
      item
        EditButtons = <>
        FieldName = 'DONVI_TIENTE'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'TRANGTHAI_HD'
        Footers = <>
        PickList.Strings = (
          ''
          'Hoa don da bi dieu chinh'
          'Hoa don da bi thay the'
          'Hoa don da bi xoa bo/huy bo'
          'Hoa don dieu chinh'
          'Hoa don thay the')
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'KETQUA_KIEMTRA'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Width = 91
      end
      item
        DisplayFormat = 'yyyy/mm/dd'
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
        Visible = False
        Width = 25
      end>
  end
  object Panel4: TPanel
    Left = 0
    Top = 257
    Width = 1370
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
    object Label17: TLabel
      Left = 482
      Top = 51
      Width = 7
      Height = 13
      Caption = '~'
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
      TabOrder = 6
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
      Left = 488
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
    object import_TK: TButton
      Left = 586
      Top = 12
      Width = 124
      Height = 30
      Caption = 'Import Declaration'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Candara'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = import_TKClick
    end
    object Chk_TKDate: TCheckBox
      Left = 12
      Top = 50
      Width = 103
      Height = 17
      Caption = 'Ngay Dang Ky'
      TabOrder = 5
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
      TabOrder = 7
    end
    object chk_UserDate_TK: TCheckBox
      Left = 322
      Top = 50
      Width = 68
      Height = 17
      Caption = 'UserDate'
      Checked = True
      State = cbChecked
      TabOrder = 8
    end
    object DT3_TK: TDateTimePicker
      Left = 395
      Top = 44
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
      TabOrder = 9
    end
    object DT4_TK: TDateTimePicker
      Left = 492
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
      TabOrder = 10
    end
  end
  object PC1: TPageControl
    Left = 0
    Top = 329
    Width = 1370
    Height = 191
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object TabSheet1: TTabSheet
      Caption = 'TO KHAI TONG'
      object DBGrid1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1362
        Height = 160
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
        PopupMenu = PopupMenu2
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnGetCellParams = DBGrid1GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DECLARATION'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'SOTOKHAI'
            Width = 120
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
            Title.Caption = 'SOHOADON'
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
            EditButtons = <>
            FieldName = 'NGAYTHONGQUAN'
            Footers = <>
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TO KHAI CHI TIET'
      ImageIndex = 1
      object DBGrid2: TDBGridEh
        Left = 0
        Top = 0
        Width = 1362
        Height = 160
        Align = alClient
        DataSource = DS_TKChiTiet
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
        OddRowColor = clWindow
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = PopupMenu3
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnGetCellParams = DBGrid2GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DECLARATION'
            Footer.Alignment = taCenter
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'SOTOKHAI'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'SOTT'
            Footers = <>
            Title.Alignment = taCenter
            Width = 50
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
            FieldName = 'MANPL_SP'
            Footers = <>
            Title.Alignment = taCenter
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'TONGSOLUONG'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Alignment = taCenter
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'DONVITINH'
            Footers = <>
            Title.Alignment = taCenter
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'TRIGIANT'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Alignment = taCenter
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'TENDOITAC'
            Footers = <>
            Title.Alignment = taCenter
            Width = 200
          end
          item
            EditButtons = <>
            FieldName = 'DOCNO'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'SOHOADON'
            Width = 120
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
          end>
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 453
    Top = 414
  end
  object Qry_Import: TQuery
    DatabaseName = 'DB'
    Left = 485
    Top = 414
  end
  object qry_VATNO: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM CGZL_VATNO where  1=2')
    UpdateObject = Up_VATNO
    Left = 739
    Top = 125
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
    object qry_VATNOVATNO: TStringField
      FieldName = 'VATNO'
      FixedChar = True
      Size = 50
    end
    object qry_VATNOVATDATE: TDateTimeField
      FieldName = 'VATDATE'
    end
    object qry_VATNOZSBH_MST: TStringField
      FieldName = 'ZSBH_MST'
      FixedChar = True
      Size = 50
    end
    object qry_VATNOTEN_NGUOIBAN: TStringField
      FieldName = 'TEN_NGUOIBAN'
      FixedChar = True
      Size = 200
    end
    object qry_VATNOMST_TOCHUCGIAIPHAP: TStringField
      FieldName = 'MST_TOCHUCGIAIPHAP'
    end
    object qry_VATNOMST_TOCHUCTRUYENNHAN: TStringField
      FieldName = 'MST_TOCHUCTRUYENNHAN'
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
  end
  object qry_TKTong: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM CGZL_Declaration  where 1=2')
    UpdateObject = Up_TKTong
    Left = 769
    Top = 125
    object qry_TKTongDECLARATION: TStringField
      FieldName = 'DECLARATION'
      FixedChar = True
      Size = 50
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
    end
  end
  object DS_VATNO: TDataSource
    DataSet = qry_VATNO
    Left = 741
    Top = 159
  end
  object DS_TKTong: TDataSource
    DataSet = qry_TKTong
    Left = 771
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
  object qry_TKChiTiet: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM CGZL_DeclarationS  where 1=2')
    UpdateObject = Up_TKChiTiet
    Left = 801
    Top = 125
    object qry_TKChiTietDECLARATION: TStringField
      FieldName = 'DECLARATION'
      FixedChar = True
      Size = 50
    end
    object qry_TKChiTietSOTT: TIntegerField
      FieldName = 'SOTT'
    end
    object qry_TKChiTietNGAYDANGKY: TDateTimeField
      FieldName = 'NGAYDANGKY'
    end
    object qry_TKChiTietMALOAIHINH: TStringField
      FieldName = 'MALOAIHINH'
      FixedChar = True
      Size = 5
    end
    object qry_TKChiTietMANPL_SP: TStringField
      FieldName = 'MANPL_SP'
      FixedChar = True
      Size = 50
    end
    object qry_TKChiTietTONGSOLUONG: TCurrencyField
      FieldName = 'TONGSOLUONG'
      DisplayFormat = '##,#0.0000'
    end
    object qry_TKChiTietDONVITINH: TStringField
      FieldName = 'DONVITINH'
      FixedChar = True
      Size = 200
    end
    object qry_TKChiTietTRIGIANT: TCurrencyField
      FieldName = 'TRIGIANT'
      DisplayFormat = '##,#0.0000'
    end
    object qry_TKChiTietTENDOITAC: TStringField
      FieldName = 'TENDOITAC'
      FixedChar = True
      Size = 255
    end
    object qry_TKChiTietDOCNO: TStringField
      FieldName = 'DOCNO'
      FixedChar = True
      Size = 50
    end
    object qry_TKChiTietUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object qry_TKChiTietUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object qry_TKChiTietYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS_TKChiTiet: TDataSource
    DataSet = qry_TKChiTiet
    Left = 803
    Top = 159
  end
  object PopupMenu1: TPopupMenu
    Left = 736
    Top = 86
    object N1: TMenuItem
      Caption = 'Delete'
      Enabled = False
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = 'Del-All'
      Enabled = False
      OnClick = N2Click
    end
    object N5: TMenuItem
      Caption = 'Modify'
      Enabled = False
      OnClick = N5Click
    end
    object N3: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = N3Click
    end
    object N4: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = N4Click
    end
  end
  object BDelRec: TQuery
    DatabaseName = 'DB'
    Left = 576
    Top = 136
  end
  object Up_VATNO: TUpdateSQL
    ModifySQL.Strings = (
      'update CGZL_VATNO'
      'set'
      '  USERID = :USERID,'
      '  USERDATE = GETDATE(),'
      '  TRANGTHAI_HD = :TRANGTHAI_HD'
      'where'
      '  VATNO = :OLD_VATNO and'
      '  ZSBH_MST = :OLD_ZSBH_MST and'
      '  KYHIEU_HOADON = :OLD_KYHIEU_HOADON')
    DeleteSQL.Strings = (
      'delete from CGZL_VATNO'
      'where'
      '         VATNO = :OLD_VATNO and'
      '         ZSBH_MST = :OLD_ZSBH_MST and'
      '         KYHIEU_HOADON = :OLD_KYHIEU_HOADON')
    Left = 740
    Top = 188
  end
  object Up_TKTong: TUpdateSQL
    DeleteSQL.Strings = (
      'delete from CGZL_Declaration'
      'where'
      '  DECLARATION = :OLD_DECLARATION')
    Left = 772
    Top = 188
  end
  object Up_TKChiTiet: TUpdateSQL
    DeleteSQL.Strings = (
      'delete from CGZL_DeclarationS'
      'where'
      '        DECLARATION = :OLD_DECLARATION'
      'and  SOTT = :OLD_SOTT')
    Left = 804
    Top = 188
  end
  object PopupMenu2: TPopupMenu
    Left = 768
    Top = 86
    object N21: TMenuItem
      Caption = 'Delete'
      Enabled = False
      OnClick = N21Click
    end
    object N22: TMenuItem
      Caption = 'Del-All'
      Enabled = False
      OnClick = N22Click
    end
    object N23: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = N23Click
    end
    object N24: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = N24Click
    end
  end
  object PopupMenu3: TPopupMenu
    Left = 800
    Top = 86
    object N31: TMenuItem
      Caption = 'Delete'
      Enabled = False
      OnClick = N31Click
    end
    object N32: TMenuItem
      Caption = 'Del-All'
      Enabled = False
      OnClick = N32Click
    end
    object N33: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = N33Click
    end
    object N34: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = N34Click
    end
  end
end
