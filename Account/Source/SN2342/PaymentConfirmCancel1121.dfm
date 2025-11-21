object PaymentConfirmCancel112: TPaymentConfirmCancel112
  Left = 485
  Top = 2
  Width = 1569
  Height = 874
  Caption = 'PaymentConfirmCancel112'
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
    Top = 192
    Width = 1553
    Height = 96
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 128
      Top = 32
      Width = 22
      Height = 16
      Caption = 'TO'
    end
    object Label2: TLabel
      Left = 272
      Top = 32
      Width = 40
      Height = 16
      Caption = 'FKBH'
    end
    object Label3: TLabel
      Left = 272
      Top = 64
      Width = 45
      Height = 16
      Caption = 'HDNO'
    end
    object Label4: TLabel
      Left = 14
      Top = 63
      Width = 104
      Height = 16
      Caption = 'Supplier Name'
    end
    object Label5: TLabel
      Left = 432
      Top = 64
      Width = 34
      Height = 16
      Caption = 'LOAI'
    end
    object lblName: TLabel
      Left = 552
      Top = 64
      Width = 5
      Height = 16
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button1: TButton
      Left = 480
      Top = 16
      Width = 81
      Height = 33
      Caption = 'Search '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 738
      Top = 16
      Width = 86
      Height = 33
      Caption = 'Confirm 112'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 568
      Top = 16
      Width = 81
      Height = 33
      Caption = 'Excel'
      TabOrder = 2
      OnClick = Button3Click
    end
    object DTP1: TDateTimePicker
      Left = 16
      Top = 24
      Width = 105
      Height = 24
      Date = 39284.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677295636570000000
      TabOrder = 3
    end
    object DTP2: TDateTimePicker
      Left = 160
      Top = 24
      Width = 105
      Height = 24
      Date = 39284.677664201390000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677664201390000000
      TabOrder = 4
    end
    object edt_FKBH: TEdit
      Left = 320
      Top = 24
      Width = 137
      Height = 24
      TabOrder = 5
    end
    object Button4: TButton
      Left = 826
      Top = 16
      Width = 81
      Height = 33
      Caption = 'Reset 112'
      TabOrder = 6
      OnClick = Button4Click
    end
    object edt_HDNO: TEdit
      Left = 320
      Top = 58
      Width = 81
      Height = 24
      TabOrder = 7
    end
    object edt_Supplier: TEdit
      Left = 124
      Top = 60
      Width = 137
      Height = 24
      TabOrder = 8
    end
    object GroupBox1: TGroupBox
      Left = 915
      Top = 16
      Width = 161
      Height = 65
      TabOrder = 9
      object rd2: TRadioButton
        Left = 16
        Top = 14
        Width = 113
        Height = 17
        Caption = 'Confirmed'
        TabOrder = 0
      end
      object rd1: TRadioButton
        Left = 16
        Top = 39
        Width = 137
        Height = 17
        Caption = 'Not yet confirm'
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object cbx1: TComboBox
      Left = 472
      Top = 60
      Width = 65
      Height = 24
      ItemHeight = 16
      TabOrder = 10
      OnChange = cbx1Change
    end
    object Button5: TButton
      Left = 654
      Top = 16
      Width = 81
      Height = 33
      Caption = 'Ex Total'
      TabOrder = 11
      OnClick = Button5Click
    end
  end
  object DBGridEh8: TDBGridEh
    Left = 0
    Top = 0
    Width = 1553
    Height = 192
    Align = alTop
    DataSource = DS_CGPayment
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
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    VTitleMargin = 3
    OnDrawColumnCell = DBGridEh8DrawColumnCell
    Columns = <
      item
        EditButtons = <>
        FieldName = 'FKBH'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 110
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'HDNO'
        Footers = <>
        Title.Caption = 'Contract|HDNO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'HD_LOAI'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Contract|LOAI'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 40
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'ZSBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Supplier|ZSBH'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'zsywjc'
        Footers = <>
        Title.Caption = 'Supplier|Name'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'zsqm'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Supplier|NameTW'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 45
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'DEPID'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Department|DEPID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Department|Name'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 150
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'HD_NOIDUNG'
        Footers = <>
        Title.Caption = 'Content|HD_NOIDUNG'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 200
      end
      item
        EditButtons = <>
        FieldName = 'HD_NOIDUNG_TW'
        Footers = <>
        Title.Caption = 'Content|HD_NOIDUNG_TW'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 200
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'CFMID'
        Footers = <>
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CFMID1'
        Footers = <>
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate1'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Is_Notice'
        Footers = <>
        Title.Caption = 'Yeu Cau Tra No'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'FKBH_S'
        Footers = <>
        Title.Caption = 'Da Tra No'
        Width = 50
      end>
  end
  object Memo1: TMemo
    Left = 296
    Top = 80
    Width = 81
    Height = 65
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
    Visible = False
  end
  object Panel3: TPanel
    Left = 0
    Top = 592
    Width = 1553
    Height = 243
    Align = alBottom
    Caption = 'Panel3'
    TabOrder = 3
    object DBGridEh3: TDBGridEh
      Left = 1
      Top = 1
      Width = 1551
      Height = 123
      Align = alClient
      DataSource = DS4
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = 16757683
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      ParentFont = False
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      OnDrawColumnCell = DBGridEh3DrawColumnCell
      Columns = <
        item
          EditButtons = <>
          FieldName = 'FKBH'
          Footers = <>
        end
        item
          DisplayFormat = '#,##0'
          EditButtons = <>
          FieldName = 'SOTIEN_TAMUNG'
          Footers = <>
          Title.Caption = 'SO TIEN TAM UNG'
          Width = 90
        end
        item
          EditButtons = <>
          FieldName = 'NGAY_TAMUNG'
          Footers = <>
          Title.Caption = 'NGAY TAM UNG'
          Width = 90
        end
        item
          EditButtons = <>
          FieldName = 'LOAI_CHUNGTU'
          Footers = <>
          Title.Caption = 'LOAI CHUNG TU'
          Width = 90
        end
        item
          EditButtons = <>
          FieldName = 'SOPHIEU'
          Footers = <>
          Title.Caption = 'SO PHIEU'
          Width = 90
        end
        item
          EditButtons = <>
          FieldName = 'ZSBH_MST'
          Footers = <>
          Title.Caption = 'ZSBH MST'
          Width = 90
        end
        item
          EditButtons = <>
          FieldName = 'NGAY_HOADON'
          Footers = <>
          Title.Caption = 'NGAY HOA DON'
          Width = 90
        end
        item
          DisplayFormat = '#,##0'
          EditButtons = <>
          FieldName = 'SOTIEN_CHUATHUE'
          Footers = <>
          Title.Caption = 'SO TIEN CHUA THUE'
          Width = 120
        end
        item
          DisplayFormat = '#,##0'
          EditButtons = <>
          FieldName = 'SOTIEN_THUE'
          Footers = <>
          Title.Caption = 'SO TIEN THUE'
          Width = 90
        end
        item
          DisplayFormat = '#,##0'
          EditButtons = <>
          FieldName = 'SOTIEN_TT'
          Footers = <>
          Title.Caption = 'SO TIEN TT'
          Width = 109
        end
        item
          DisplayFormat = '#,##0'
          EditButtons = <>
          FieldName = 'SOTIEN_HOANLAI'
          Footer.DisplayFormat = '#,##0'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'SO TIEN HOAN LAI'
          Width = 90
        end
        item
          DisplayFormat = '#,##0'
          EditButtons = <>
          FieldName = 'SOTIEN_CHITHEM'
          Footer.DisplayFormat = '#,##0'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'SO TIEN CHI THEM'
          Width = 90
        end
        item
          EditButtons = <>
          FieldName = 'FKBH_TTT'
          Footers = <>
          Title.Caption = 'FKBH TTT'
        end
        item
          EditButtons = <>
          FieldName = 'TIENTE'
          Footers = <>
          Title.Caption = 'TIEN TE'
          Width = 50
        end>
    end
    object DBGridEh6: TDBGridEh
      Left = 1
      Top = 124
      Width = 1551
      Height = 118
      Align = alBottom
      DataSource = DS5
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = 16757683
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
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
          FieldName = 'FKBH'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'STT'
          Footers = <>
          Width = 50
        end
        item
          EditButtons = <>
          FieldName = 'LYDO'
          Footers = <>
          Title.Caption = 'LY DO'
        end
        item
          DisplayFormat = '#,##0'
          EditButtons = <>
          FieldName = 'SOTIEN_TT'
          Footer.DisplayFormat = '#,##0'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'SO TIEN TT'
          Width = 133
        end
        item
          EditButtons = <>
          FieldName = 'TIENTE'
          Footers = <>
          Title.Caption = 'TIEN TE'
          Width = 50
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 288
    Width = 1553
    Height = 304
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 4
    object DBGrid2: TDBGridEh
      Left = 1
      Top = 1
      Width = 1551
      Height = 167
      Align = alClient
      DataSource = DS1
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = 16757683
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      ParentFont = False
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      Columns = <
        item
          EditButtons = <>
          FieldName = 'FKBH'
          Footers = <>
          Visible = False
          Width = 41
        end
        item
          EditButtons = <>
          FieldName = 'DECLARATION'
          Footers = <>
          Width = 120
        end
        item
          EditButtons = <>
          FieldName = 'LOAIHINH'
          Footers = <>
          Title.Caption = 'LOAI HINH'
          Width = 50
        end
        item
          EditButtons = <>
          FieldName = 'NGAY_THUCLANH'
          Footers = <>
          Title.Caption = 'NGAY THUC LANH'
          Width = 75
        end
        item
          DisplayFormat = '#,##0.00'
          EditButtons = <>
          FieldName = 'USACC_CHUATHUE'
          Footer.DisplayFormat = '#,##0.00'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'USACC CHUA THUE'
          Width = 100
        end
        item
          DisplayFormat = '#,##0'
          EditButtons = <>
          FieldName = 'CWHL'
          Footers = <>
          Width = 49
        end
        item
          DisplayFormat = '#,##0'
          EditButtons = <>
          FieldName = 'VNACC_CHUATHUE'
          Footer.DisplayFormat = '#,##0'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'VNACC CHUA THUE'
          Width = 90
        end
        item
          EditButtons = <>
          FieldName = 'Percent_TT'
          Footer.DisplayFormat = '#,##0'
          Footers = <>
          Title.Caption = 'Percent TT'
          Width = 70
        end
        item
          DisplayFormat = '#,##0.00'
          EditButtons = <>
          FieldName = 'USACC_NHATHAU'
          Footer.DisplayFormat = '#,##0.00'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'NHA THAU|USACC'
          Width = 90
        end
        item
          DisplayFormat = '#,##0'
          EditButtons = <>
          FieldName = 'VNACC_NHATHAU'
          Footer.DisplayFormat = '#,##0'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'NHA THAU|VNACC'
          Width = 90
        end
        item
          DisplayFormat = '#,##0.00'
          EditButtons = <>
          FieldName = 'USACC_THANHTOAN'
          Footer.DisplayFormat = '#,##0.00'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'THANH TOAN|USACC'
          Width = 90
        end
        item
          DisplayFormat = '#,##0'
          EditButtons = <>
          FieldName = 'VNACC_THANHTOAN'
          Footer.DisplayFormat = '#,##0'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'THANH TOAN|VNACC'
          Width = 110
        end
        item
          EditButtons = <>
          FieldName = 'USERID'
          Footers = <>
          Width = 57
        end
        item
          EditButtons = <>
          FieldName = 'USERDATE'
          Footers = <>
          Width = 83
        end
        item
          Checkboxes = True
          EditButtons = <>
          FieldName = 'PLX'
          Footers = <>
          Title.Caption = 'PHU LUC X'
        end>
    end
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 168
      Width = 1551
      Height = 135
      Align = alBottom
      DataSource = DS2
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = 16757683
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
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
          FieldName = 'FKBH'
          Footers = <>
          Visible = False
          Width = 46
        end
        item
          EditButtons = <>
          FieldName = 'ZSBH_MST'
          Footers = <>
          Title.Caption = 'ZSBH MST'
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = 'VATNO'
          Footers = <>
          Width = 66
        end
        item
          EditButtons = <>
          FieldName = 'KYHIEU_HOADON'
          Footers = <>
          Title.Caption = 'KY HIEU HOA DON'
          Width = 90
        end
        item
          EditButtons = <>
          FieldName = 'VATDATE'
          Footers = <>
          Width = 74
        end
        item
          DisplayFormat = '#,##0'
          EditButtons = <>
          FieldName = 'TONGTIEN_CHUATHUE'
          Footer.DisplayFormat = '#,##0'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'TONG TIEN|CHUA THUE'
          Width = 90
        end
        item
          DisplayFormat = '#,##0'
          EditButtons = <>
          FieldName = 'TONGTIEN_THUE'
          Footer.DisplayFormat = '#,##0'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'TONG TIEN|THUE'
          Width = 75
        end
        item
          DisplayFormat = '#,##0'
          EditButtons = <>
          FieldName = 'TONGTIEN_THANHTOAN'
          Footer.DisplayFormat = '#,##0'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'TONG TIEN|THANH TOAN'
          Width = 120
        end
        item
          EditButtons = <>
          FieldName = 'USERID'
          Footers = <>
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = 'USERDATE'
          Footers = <>
          Width = 84
        end
        item
          Checkboxes = True
          EditButtons = <>
          FieldName = 'PLX'
          Footers = <>
          Title.Caption = 'PHU LUC X'
        end>
    end
  end
  object qryTemp: TQuery
    DatabaseName = 'DB'
    Left = 288
    Top = 128
  end
  object qry_CGPayment: TQuery
    AfterOpen = qry_CGPaymentAfterOpen
    BeforeClose = qry_CGPaymentBeforeClose
    AfterScroll = qry_CGPaymentAfterScroll
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT FKBH,HDNO, ZSBH, ZSZL.zsywjc, CGZL_Payment.DEPID,BDepartm' +
        'ent.DepName,'
      
        ' HD_NOIDUNG,HD_NOIDUNG_TW, HD_LOAI, CGZL_Payment.USERID, CGZL_Pa' +
        'yment.USERDATE,'
      
        '  CGZL_Payment.YN, CGZL_Payment.CFMID,CGZL_Payment.CFMDate,  CGZ' +
        'L_Payment.CFMID2,CGZL_Payment.CFMDate2'
      ', isnull(Is_Notice,'#39'0'#39') Is_Notice ,0 ManyDay,'#39'N'#39' FKBH_S'
      '  FROM CGZL_Payment '
      '  LEFT JOIN ZSZL ON CGZL_Payment.ZSBH=ZSDH'
      
        '  LEFT JOIN BDepartment ON BDepartment.ID = CGZL_Payment.DEPID  ' +
        'WHERE 1=2')
    Left = 412
    Top = 155
    object qry_CGPaymentFKBH: TStringField
      FieldName = 'FKBH'
    end
    object qry_CGPaymentHDNO: TStringField
      FieldName = 'HDNO'
      Origin = 'DB.CGZL_Payment.HDNO'
      FixedChar = True
      Size = 15
    end
    object qry_CGPaymentZSBH: TStringField
      FieldName = 'ZSBH'
      Origin = 'DB.CGZL_Payment.ZSBH'
      FixedChar = True
      Size = 10
    end
    object qry_CGPaymentzsqm: TStringField
      FieldName = 'zsqm'
    end
    object qry_CGPaymentzsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
      Size = 200
    end
    object qry_CGPaymentDEPID: TStringField
      FieldName = 'DEPID'
      Origin = 'DB.CGZL_Payment.DEPID'
      FixedChar = True
    end
    object qry_CGPaymentDepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object qry_CGPaymentHD_LOAI: TStringField
      FieldName = 'HD_LOAI'
      Origin = 'DB.CGZL_Payment.HD_LOAI'
      FixedChar = True
    end
    object qry_CGPaymentUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.CGZL_Payment.USERID'
      FixedChar = True
    end
    object qry_CGPaymentUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.CGZL_Payment.USERDATE'
    end
    object qry_CGPaymentYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.CGZL_Payment.YN'
      FixedChar = True
      Size = 1
    end
    object qry_CGPaymentDepMemo: TStringField
      FieldName = 'DepMemo'
    end
    object qry_CGPaymentGSBH: TStringField
      FieldName = 'GSBH'
    end
    object qry_CGPaymentHD_NOIDUNG: TStringField
      FieldName = 'HD_NOIDUNG'
      FixedChar = True
      Size = 255
    end
    object qry_CGPaymentHD_NOIDUNG_TW: TStringField
      FieldName = 'HD_NOIDUNG_TW'
      FixedChar = True
      Size = 255
    end
    object qry_CGPaymentCFMID: TStringField
      FieldName = 'CFMID'
      FixedChar = True
    end
    object qry_CGPaymentCFMDate: TDateTimeField
      FieldName = 'CFMDate'
    end
    object qry_CGPaymentIs_Notice: TBooleanField
      FieldName = 'Is_Notice'
    end
    object qry_CGPaymentManyDay: TIntegerField
      FieldName = 'ManyDay'
    end
    object qry_CGPaymentCFMID1: TStringField
      FieldName = 'CFMID1'
    end
    object qry_CGPaymentCFMDate1: TDateTimeField
      FieldName = 'CFMDate1'
    end
    object qry_CGPaymentFKBH_S: TStringField
      FieldName = 'FKBH_S'
      FixedChar = True
      Size = 1
    end
  end
  object DS_CGPayment: TDataSource
    DataSet = qry_CGPayment
    Left = 412
    Top = 187
  end
  object Up_CGPay: TUpdateSQL
    ModifySQL.Strings = (
      'update CGZL_Payment'
      'set'
      '  CGZL_Payment.HDNO = :HDNO,'
      '  CGZL_Payment.ZSBH = :ZSBH,'
      '  CGZL_Payment.DEPID = :DEPID,'
      '  CGZL_Payment.GSBH = :GSBH,'
      '  CGZL_Payment.HD_NOIDUNG = :HD_NOIDUNG,'
      '  CGZL_Payment.HD_NOIDUNG_TW = :HD_NOIDUNG_TW,'
      '  CGZL_Payment.USERID = :USERID,'
      '  CGZL_Payment.USERDATE = GETDATE(),'
      '  CGZL_Payment.YN = 1'
      'where'
      '  CGZL_Payment.FKBH = :OLD_FKBH')
    InsertSQL.Strings = (
      'insert into CGZL_Payment'
      
        '  (FKBH,HDNO, HD_LOAI, ZSBH, GSBH, DEPID, HD_NOIDUNG, HD_NOIDUNG' +
        '_TW, CFMID,'
      '   USERID, USERDATE, YN)'
      'values'
      
        '  (:FKBH,:HDNO,:HD_LOAI,:ZSBH,:GSBH, :DEPID, :HD_NOIDUNG, :HD_NO' +
        'IDUNG_TW, '#39'NO'#39','
      '  :USERID, GETDATE(), 1)')
    DeleteSQL.Strings = (
      'delete from CGZL_Payment'
      'where'
      '  CGZL_Payment.FKBH = :OLD_FKBH')
    Left = 416
    Top = 219
  end
  object DS1: TDataSource
    DataSet = qry1
    Left = 452
    Top = 187
  end
  object DS2: TDataSource
    DataSet = qry2
    Left = 484
    Top = 187
  end
  object DS3: TDataSource
    DataSet = qry3
    Left = 516
    Top = 187
  end
  object qry1: TQuery
    DatabaseName = 'DB'
    DataSource = DS_CGPayment
    SQL.Strings = (
      
        ' SELECT ROW_NUMBER() OVER(ORDER BY a.DECLARATION DESC) AS STT, a' +
        '.FKBH, a.DECLARATION, b.MALOAIHINH LOAIHINH'
      
        #9#9',isnull(b.NGAYTHONGQUAN,b.NGAYDANGKY) NGAY_THUCLANH,b.TONGTRIG' +
        'IA_HOADON USACC_CHUATHUE, a.CWHL CWHL'
      #9#9',(a.CWHL*b.TONGTRIGIA_HOADON) VNACC_CHUATHUE, a.Percent_TT,'
      #9#9'(b.TONGTRIGIA_HOADON*(100-a.Percent_TT)/100) USACC_NHATHAU,'
      
        #9#9'(a.CWHL*round(b.TONGTRIGIA_HOADON*(100-a.Percent_TT)/100,2)) V' +
        'NACC_NHATHAU '
      #9#9',(b.TONGTRIGIA_HOADON*a.Percent_TT/100) USACC_THANHTOAN, '
      
        #9#9'(a.CWHL*round(b.TONGTRIGIA_HOADON*a.Percent_TT/100,2)) VNACC_T' +
        'HANHTOAN'
      #9#9',a.USERID, a.USERDATE, a.YN'
      
        '    ,case when (isnull(DOCNO_File.VATFile,'#39#39') <> '#39#39') or (isnull(' +
        'DOCNO_File.VATFile1,'#39#39')<>'#39#39') then 1 else 0 end as PLX '
      '  FROM CGZL_PaymentS a'
      '  LEFT JOIN CGZL_Declaration b ON a.DECLARATION  =b.DECLARATION'
      '  LEFT JOIN CGZL_Payment on a.FKBH=CGZL_Payment.FKBH '
      
        '  LEFT JOIN DOCNO_File on a.DOCNO=DOCNO_File.DOCNO and CGZL_Paym' +
        'ent.GSBH=DOCNO_File.GSBH and CGZL_Payment.ZSBH=DOCNO_File.ZSBH'
      '   WHERE a.FKBH=:FKBH')
    Left = 452
    Top = 155
    ParamData = <
      item
        DataType = ftString
        Name = 'FKBH'
        ParamType = ptUnknown
        Size = 21
      end>
    object qry1FKBH: TStringField
      FieldName = 'FKBH'
      FixedChar = True
      Size = 15
    end
    object qry1DECLARATION: TStringField
      FieldName = 'DECLARATION'
      FixedChar = True
      Size = 50
    end
    object qry1LOAIHINH: TStringField
      FieldName = 'LOAIHINH'
      FixedChar = True
      Size = 15
    end
    object qry1NGAY_THUCLANH: TDateTimeField
      FieldName = 'NGAY_THUCLANH'
    end
    object qry1USACC_CHUATHUE: TCurrencyField
      FieldName = 'USACC_CHUATHUE'
    end
    object qry1CWHL: TCurrencyField
      FieldName = 'CWHL'
    end
    object qry1VNACC_CHUATHUE: TCurrencyField
      FieldName = 'VNACC_CHUATHUE'
    end
    object qry1Percent_TT: TIntegerField
      FieldName = 'Percent_TT'
    end
    object qry1USACC_NHATHAU: TCurrencyField
      FieldName = 'USACC_NHATHAU'
    end
    object qry1VNACC_NHATHAU: TCurrencyField
      FieldName = 'VNACC_NHATHAU'
    end
    object qry1USACC_THANHTOAN: TCurrencyField
      FieldName = 'USACC_THANHTOAN'
    end
    object qry1VNACC_THANHTOAN: TCurrencyField
      FieldName = 'VNACC_THANHTOAN'
    end
    object qry1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object qry1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object qry1YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object qry1PLX: TIntegerField
      FieldName = 'PLX'
    end
  end
  object qry2: TQuery
    DatabaseName = 'DB'
    DataSource = DS_CGPayment
    SQL.Strings = (
      
        'SELECT ROW_NUMBER() OVER(ORDER BY a.VATNO DESC) AS STT,a. FKBH, ' +
        'a.ZSBH_MST, a.VATNO'
      
        #9#9',b.KYHIEU_MAUSO+ b.KYHIEU_HOADON KYHIEU_HOADON,b.VATDATE,(b.TO' +
        'NGTIEN_CHUATHUE -isnull(b.TONGTIEN_CHIETKHAU,0))TONGTIEN_CHUATHU' +
        'E'
      
        #9#9',b.TONGTIEN_THUE, b.TONGTIEN_THANHTOAN ,a.USERID, a.USERDATE, ' +
        'a.YN'
      
        '    ,case when (isnull(DOCNO_File.VATFile,'#39#39') <> '#39#39') or (isnull(' +
        'DOCNO_File.VATFile1,'#39#39')<>'#39#39') then 1 else 0 end as PLX'
      '  FROM CGZL_PaymentSS a'
      
        '  LEFT JOIN CGZL_VATNO b ON a.VATNO=b.VATNO  AND a.ZSBH_MST=b.ZS' +
        'BH_MST'
      '  LEFT JOIN CGZL_Payment on a.FKBH=CGZL_Payment.FKBH'
      
        '  LEFT JOIN DOCNO_File on a.VATNO=DOCNO_File.DOCNO and CGZL_Paym' +
        'ent.GSBH=DOCNO_File.GSBH and CGZL_Payment.ZSBH=DOCNO_File.ZSBH'
      '   WHERE a.FKBH=:FKBH  ')
    Left = 484
    Top = 155
    ParamData = <
      item
        DataType = ftString
        Name = 'FKBH'
        ParamType = ptUnknown
        Size = 21
      end>
    object qry2FKBH: TStringField
      FieldName = 'FKBH'
      FixedChar = True
      Size = 15
    end
    object qry2ZSBH_MST: TStringField
      FieldName = 'ZSBH_MST'
      FixedChar = True
      Size = 50
    end
    object qry2VATNO: TStringField
      FieldName = 'VATNO'
      FixedChar = True
      Size = 50
    end
    object qry2KYHIEU_HOADON: TStringField
      FieldName = 'KYHIEU_HOADON'
      FixedChar = True
    end
    object qry2VATDATE: TDateTimeField
      FieldName = 'VATDATE'
    end
    object qry2TONGTIEN_CHUATHUE: TCurrencyField
      FieldName = 'TONGTIEN_CHUATHUE'
    end
    object qry2TONGTIEN_THUE: TCurrencyField
      FieldName = 'TONGTIEN_THUE'
    end
    object qry2TONGTIEN_THANHTOAN: TCurrencyField
      FieldName = 'TONGTIEN_THANHTOAN'
    end
    object qry2USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object qry2USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object qry2YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object qry2PLX: TIntegerField
      FieldName = 'PLX'
    end
  end
  object qry3: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ' SELECT * FROM  dbo.vwCGZL_Payment where 1=2 ORDER BY LOAI, FKBH')
    UpdateObject = Up_CGPay
    Left = 516
    Top = 155
  end
  object qry4: TQuery
    AfterOpen = qry4AfterOpen
    AfterScroll = qry4AfterScroll
    DatabaseName = 'DB'
    DataSource = DS_CGPayment
    SQL.Strings = (
      ''
      
        'SELECT a.FKBH, 0 SOTIEN_TAMUNG, null NGAY_TAMUNG, CASE WHEN d.VA' +
        'TNO IS NOT NULL THEN '#39'HD'#39' ELSE a.LOAI_CHUNGTU END AS LOAI_CHUNGT' +
        'U, isnull(a.SOPHIEU,d.VATNO) SOPHIEU, isnull(a.NGAY_HOADON,d.VAT' +
        'DATE) NGAY_HOADON, '
      
        '  '#9#9'  CASE WHEN d.VATNO IS NOT NULL AND isnull(TRU_CHIETKHAU,0)=' +
        '1 THEN d.TONGTIEN_CHUATHUE+ isnull(d.TONGTIEN_PHI,0) WHEN d.VATN' +
        'O IS NOT NULL AND isnull(TRU_CHIETKHAU,0)=0 '
      
        '       THEN (d.TONGTIEN_CHUATHUE-isnull(d.TONGTIEN_CHIETKHAU,0))' +
        '+isnull(d.TONGTIEN_PHI,0) ELSE a.SOTIEN_CHUATHUE END AS SOTIEN_C' +
        'HUATHUE, isnull(a.SOTIEN_THUE,d.TONGTIEN_THUE) SOTIEN_THUE, '
      
        '  '#9#9'  isnull(a.SOTIEN_TT,d.TONGTIEN_THANHTOAN) SOTIEN_TT, 0 SOTI' +
        'EN_HOANLAI, 0 SOTIEN_CHITHEM, a.USERID, a.USERDATE, a.YN, c.FKBH' +
        ' FKBH_TTT, a.ZSBH_MST, a.TIENTE'
      'FROM cgzl_payments_advance a '
      'LEFT JOIN cgzl_payment_map b ON b.FKBH = a.FKBH '
      
        'LEFT JOIN (SELECT cgzl_advances.FKBH, cgzl_payment.NGAY_TAMUNG, ' +
        'Sum(cgzl_advances.SOTIEN_TT) THANHTOAN '
      
        '           FROM cgzl_advances LEFT JOIN cgzl_payment ON cgzl_pay' +
        'ment.FKBH = cgzl_advances.FKBH '
      
        '           GROUP BY cgzl_advances.FKBH, cgzl_payment.NGAY_TAMUNG' +
        ') c ON b.FKBH_TTT = c.FKBH '
      
        'LEFT JOIN LacTyDB.LIY_ERP.dbo.CGZL_VATNO d ON a.VATNO=d.VATNO  A' +
        'ND a.ZSBH_MST=d.ZSBH_MST and a.KYHIEU_HOADON=d.KYHIEU_HOADON  '
      'WHERE a.FKBH=:FKBH'
      'UNION ALL '
      
        'SELECT a.FKBH, Isnull(max(c.THANHTOAN), isnull(max(a.SOTIEN_TAMU' +
        'NG),0)) SOTIEN_TAMUNG, Isnull(max(c.NGAY_TAMUNG), isnull(max(a.N' +
        'GAY_TAMUNG),'#39'1900/01/01'#39')) NGAY_TAMUNG, '
      '  '#9#9'  '#39'zTot'#39' LOAI_CHUNGTU, '#39'zTot'#39' SOPHIEU, null NGAY_HOADON, '
      
        '  '#9#9'  CASE WHEN isnull(TRU_CHIETKHAU,0)=1 THEN  sum(isnull(a.SOT' +
        'IEN_CHUATHUE,d.TONGTIEN_CHUATHUE+ isnull(d.TONGTIEN_PHI,0))) '
      
        '  '#9#9'  ELSE sum(isnull(a.SOTIEN_CHUATHUE,(d.TONGTIEN_CHUATHUE-isn' +
        'ull(d.TONGTIEN_CHIETKHAU,0))+isnull(d.TONGTIEN_PHI,0))) END AS S' +
        'OTIEN_CHUATHUE,'
      
        #9#9'  sum(isnull(a.SOTIEN_THUE,d.TONGTIEN_THUE)) SOTIEN_THUE, sum(' +
        'isnull(a.SOTIEN_TT,d.TONGTIEN_THANHTOAN)) SOTIEN_TT,  '
      
        '  '#9#9'  CASE WHEN (Isnull(max(c.THANHTOAN), isnull(max(a.SOTIEN_TA' +
        'MUNG),0))-sum(isnull(a.SOTIEN_TT,d.TONGTIEN_THANHTOAN))) >0 '
      
        '  '#9#9'  THEN (Isnull(max(c.THANHTOAN), isnull(max(a.SOTIEN_TAMUNG)' +
        ',0))-sum(isnull(a.SOTIEN_TT,d.TONGTIEN_THANHTOAN))) else 0  end ' +
        'SOTIEN_HOANLAI, '
      
        '  '#9#9'  CASE WHEN (Isnull(max(c.THANHTOAN), isnull(max(a.SOTIEN_TA' +
        'MUNG),0))-sum(isnull(a.SOTIEN_TT,d.TONGTIEN_THANHTOAN))) <0 '
      
        '  '#9#9'  THEN (sum(isnull(a.SOTIEN_TT,d.TONGTIEN_THANHTOAN)) -Isnul' +
        'l(max(c.THANHTOAN), isnull(max(a.SOTIEN_TAMUNG),0))) else 0 end ' +
        'SOTIEN_CHITHEM, '
      
        '  '#9#9'  a.USERID, null USERDATE, a.YN, null FKBH_TTT, null ZSBH_MS' +
        'T, null TIENTE '
      'FROM cgzl_payments_advance a '
      'LEFT JOIN cgzl_payment_map b ON b.FKBH = a.FKBH '
      
        'LEFT JOIN (SELECT cgzl_advances.FKBH, cgzl_payment.NGAY_TAMUNG, ' +
        'Sum(cgzl_advances.SOTIEN_TT) THANHTOAN '
      
        '           FROM cgzl_advances LEFT JOIN cgzl_payment ON cgzl_pay' +
        'ment.FKBH = cgzl_advances.FKBH '
      
        '           GROUP BY cgzl_advances.FKBH, cgzl_payment.NGAY_TAMUNG' +
        ') c ON b.FKBH_TTT = c.FKBH '
      
        'LEFT JOIN LacTyDB.LIY_ERP.dbo.CGZL_VATNO d ON a.VATNO=d.VATNO  A' +
        'ND a.ZSBH_MST=d.ZSBH_MST and a.KYHIEU_HOADON=d.KYHIEU_HOADON  '
      'WHERE a.FKBH=:FKBH'
      'group by a.FKBH,a.USERID,a.YN,TRU_CHIETKHAU '
      'order by SOPHIEU'
      '')
    Left = 548
    Top = 155
    ParamData = <
      item
        DataType = ftString
        Name = 'FKBH'
        ParamType = ptUnknown
        Size = 21
      end
      item
        DataType = ftString
        Name = 'FKBH'
        ParamType = ptUnknown
      end>
    object qry4FKBH: TStringField
      FieldName = 'FKBH'
      FixedChar = True
      Size = 15
    end
    object qry4SOTIEN_TAMUNG: TCurrencyField
      FieldName = 'SOTIEN_TAMUNG'
    end
    object qry4NGAY_TAMUNG: TDateTimeField
      FieldName = 'NGAY_TAMUNG'
    end
    object qry4LOAI_CHUNGTU: TStringField
      FieldName = 'LOAI_CHUNGTU'
      FixedChar = True
      Size = 15
    end
    object qry4SOPHIEU: TStringField
      FieldName = 'SOPHIEU'
      FixedChar = True
      Size = 15
    end
    object qry4NGAY_HOADON: TDateTimeField
      FieldName = 'NGAY_HOADON'
    end
    object qry4SOTIEN_CHUATHUE: TCurrencyField
      FieldName = 'SOTIEN_CHUATHUE'
    end
    object qry4SOTIEN_THUE: TCurrencyField
      FieldName = 'SOTIEN_THUE'
    end
    object qry4SOTIEN_TT: TCurrencyField
      FieldName = 'SOTIEN_TT'
    end
    object qry4SOTIEN_HOANLAI: TCurrencyField
      FieldName = 'SOTIEN_HOANLAI'
    end
    object qry4SOTIEN_CHITHEM: TCurrencyField
      FieldName = 'SOTIEN_CHITHEM'
    end
    object qry4USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object qry4USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object qry4YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object qry4FKBH_TTT: TStringField
      FieldName = 'FKBH_TTT'
      FixedChar = True
      Size = 15
    end
    object qry4ZSBH_MST: TStringField
      FieldName = 'ZSBH_MST'
      Size = 50
    end
    object qry4TIENTE: TStringField
      FieldName = 'TIENTE'
      Size = 5
    end
  end
  object qry5: TQuery
    DatabaseName = 'DB'
    DataSource = DS_CGPayment
    SQL.Strings = (
      
        'SELECT a.FKBH,a.STT,a.LYDO, a.SOTIEN_TT, a.USERID, a.USERDATE, a' +
        '.YN , a.TIENTE'
      '  FROM CGZL_AdvanceS a'
      '   WHERE FKBH=:FKBH '
      ''
      '')
    Left = 580
    Top = 155
    ParamData = <
      item
        DataType = ftString
        Name = 'FKBH'
        ParamType = ptUnknown
        Size = 21
      end>
    object qry5FKBH: TStringField
      FieldName = 'FKBH'
      Origin = 'DB.CGZL_AdvanceS.FKBH'
      FixedChar = True
      Size = 15
    end
    object qry5STT: TStringField
      FieldName = 'STT'
      Origin = 'DB.CGZL_AdvanceS.STT'
      FixedChar = True
      Size = 3
    end
    object qry5LYDO: TStringField
      FieldName = 'LYDO'
      Origin = 'DB.CGZL_AdvanceS.LYDO'
      FixedChar = True
      Size = 80
    end
    object qry5SOTIEN_TT: TCurrencyField
      FieldName = 'SOTIEN_TT'
      Origin = 'DB.CGZL_AdvanceS.SOTIEN_TT'
    end
    object qry5USERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.CGZL_AdvanceS.USERID'
      FixedChar = True
    end
    object qry5USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.CGZL_AdvanceS.USERDATE'
    end
    object qry5YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.CGZL_AdvanceS.YN'
      FixedChar = True
      Size = 1
    end
    object qry5TIENTE: TStringField
      FieldName = 'TIENTE'
      Size = 5
    end
  end
  object DS5: TDataSource
    DataSet = qry5
    Left = 580
    Top = 187
  end
  object DS4: TDataSource
    DataSet = qry4
    Left = 548
    Top = 187
  end
end
