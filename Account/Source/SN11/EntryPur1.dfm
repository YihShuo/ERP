object EntryPur: TEntryPur
  Left = 273
  Top = 198
  Width = 1537
  Height = 630
  Caption = 'EntryPur'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid_RK: TDBGridEh
    Left = 0
    Top = 0
    Width = 1521
    Height = 193
    Align = alTop
    DataSource = DS3
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
    ParentFont = False
    PopupMenu = PopupMenu1
    ReadOnly = True
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
        FieldName = 'RKNO'
        Footers = <>
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'ZSBH'
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        Width = 110
      end
      item
        EditButtons = <>
        FieldName = 'ZSNO'
        Footers = <>
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'DOCNO'
        Footers = <>
        Title.Caption = 'INVOICE'
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'MEMO'
        Footers = <>
        Title.Caption = 'PARPER NO'
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'HGLB'
        Footers = <>
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Width = 81
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'CFMDATE'
        Footers = <>
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'CFMID'
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
        Width = 45
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 193
    Width = 1521
    Height = 48
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 131
      Top = 20
      Width = 19
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'TO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 360
      Top = 20
      Width = 57
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RKNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 579
      Top = 17
      Width = 57
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Supplier:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 811
      Top = 8
      Width = 97
      Height = 33
      Caption = 'Search '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object ConfirmBtn: TButton
      Left = 915
      Top = 8
      Width = 97
      Height = 33
      Caption = 'Confirm'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = ConfirmBtnClick
    end
    object Button3: TButton
      Left = 1019
      Top = 8
      Width = 97
      Height = 33
      Caption = 'Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button3Click
    end
    object DTP1: TDateTimePicker
      Left = 16
      Top = 16
      Width = 105
      Height = 24
      Date = 39284.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677295636570000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DTP2: TDateTimePicker
      Left = 160
      Top = 16
      Width = 105
      Height = 24
      Date = 39284.677664201390000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677664201390000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object Edit1: TEdit
      Left = 422
      Top = 16
      Width = 137
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnKeyPress = Edit1KeyPress
    end
    object RadixCK: TCheckBox
      Left = 1119
      Top = 20
      Width = 16
      Height = 17
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Visible = False
    end
    object RadioGroup1: TRadioGroup
      Left = 1136
      Top = 8
      Width = 134
      Height = 32
      Columns = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        '1'
        '2'
        '3'
        '4')
      ParentFont = False
      TabOrder = 7
      Visible = False
    end
    object Edit_Password: TEdit
      Left = 1282
      Top = 16
      Width = 74
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 8
      Visible = False
    end
    object Chk_Copy: TCheckBox
      Left = 1358
      Top = 20
      Width = 141
      Height = 17
      Caption = 'Copy ERP Price'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      Visible = False
    end
    object CheckBox1: TCheckBox
      Left = 271
      Top = 20
      Width = 15
      Height = 17
      Caption = 'CheckBox1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object CB1: TComboBox
      Left = 287
      Top = 16
      Width = 66
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 11
    end
    object ITBtn: TBitBtn
      Left = 0
      Top = 0
      Width = 9
      Height = 17
      TabOrder = 12
      OnClick = ITBtnClick
    end
    object Edit2: TEdit
      Left = 640
      Top = 14
      Width = 146
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
    end
  end
  object DBGrid_Prod: TDBGridEh
    Left = 0
    Top = 241
    Width = 1521
    Height = 141
    Align = alClient
    DataSource = DS4
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = 16371647
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    PopupMenu = PopupMenu2
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnColExit = DBGrid_ProdColExit
    OnEditButtonClick = DBGrid_ProdEditButtonClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <
          item
            FieldName = 'CLBH'
            ValueType = fvtCount
          end>
        ReadOnly = True
        Title.Caption = 'MatNo'
        Title.TitleButton = True
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'PaQty'
        Footers = <
          item
            FieldName = 'PaQty'
            ValueType = fvtSum
          end>
        ReadOnly = True
        Title.TitleButton = True
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        ReadOnly = True
        Title.TitleButton = True
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'CWHL'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Rate'
        Title.TitleButton = True
        Width = 49
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <
          item
            FieldName = 'USPrice'
            ValueType = fvtAvg
          end>
        ReadOnly = True
        Title.Caption = 'USD|Price'
        Title.TitleButton = True
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'USACC'
        Footers = <
          item
            FieldName = 'USACC'
            ValueType = fvtSum
          end>
        Title.Caption = 'USD|Amount'
        Title.TitleButton = True
        Width = 55
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <
          item
            FieldName = 'VNPrice'
            ValueType = fvtAvg
          end>
        ReadOnly = True
        Title.Caption = 'VND|Price'
        Title.TitleButton = True
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'VNACC'
        Footers = <
          item
            FieldName = 'VNACC'
            ValueType = fvtSum
          end>
        Title.Caption = 'VND|Amount'
        Title.TitleButton = True
        Width = 73
      end
      item
        Color = clMoneyGreen
        EditButtons = <>
        FieldName = 'QuoteUS'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Quotation|USD'
        Title.TitleButton = True
        Width = 51
      end
      item
        Color = clMoneyGreen
        EditButtons = <>
        FieldName = 'QuoteVN'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Quotation|VND'
        Title.TitleButton = True
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        ReadOnly = True
        Width = 314
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        ReadOnly = True
        Width = 46
      end
      item
        EditButtons = <>
        FieldName = 'RKSB'
        Footers = <>
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'CGBH'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'Charge'
        Footers = <>
        Title.Caption = 'Charge|USD'
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'Charge_VN'
        Footers = <>
        Title.Caption = 'Charge|VND'
        Width = 48
      end
      item
        EditButtons = <>
        FieldName = 'Charge_Reason'
        Footers = <>
        Title.Caption = 'Charge|Reason'
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        ReadOnly = True
        Width = 81
      end
      item
        EditButtons = <>
        FieldName = 'samplePrice'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Costing|USD'
        Visible = False
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'samplePriceVN'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Costing|VND'
        Visible = False
        Width = 55
      end>
  end
  object DBGridEh_RD: TDBGridEh
    Left = 0
    Top = 382
    Width = 1521
    Height = 209
    Align = alBottom
    DataSource = DS4
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = 16371647
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
    ParentFont = False
    SumList.Active = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    VTitleMargin = 0
    OnColExit = DBGridEh_RDColExit
    OnEditButtonClick = DBGridEh_RDEditButtonClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <
          item
            FieldName = 'CLBH'
            ValueType = fvtCount
          end>
        ReadOnly = True
        Title.Caption = 'Mat ID'
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'PaQty'
        Footers = <
          item
            FieldName = 'PaQty'
            ValueType = fvtSum
          end>
        ReadOnly = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            DisplayFormat = '#,##0.00'
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        ReadOnly = True
        Width = 50
      end
      item
        DisplayFormat = '#,##0'
        EditButtons = <>
        FieldName = 'CWHL'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Rate'
        Width = 49
      end
      item
        ButtonStyle = cbsEllipsis
        DisplayFormat = '#,##0.0000'
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <
          item
            DisplayFormat = '#,##0.0000'
            FieldName = 'USPrice'
            ValueType = fvtAvg
          end>
        Title.Caption = 'USD|Price'
        Width = 58
      end
      item
        Color = clSilver
        DisplayFormat = '#,##0.00'
        EditButtons = <>
        FieldName = 'ERP_USPrice_'
        Footers = <>
        Title.Caption = 'USD|ERP'
        Width = 58
      end
      item
        DisplayFormat = '#,##0.00'
        EditButtons = <>
        FieldName = 'USACC'
        Footers = <
          item
            DisplayFormat = '#,##0.00'
            FieldName = 'USACC'
            ValueType = fvtSum
          end>
        Title.Caption = 'USD|Amount'
        Width = 55
      end
      item
        ButtonStyle = cbsEllipsis
        DisplayFormat = '#,##0'
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <
          item
            DisplayFormat = '#,##0'
            FieldName = 'VNPrice'
            ValueType = fvtAvg
          end>
        Title.Caption = 'VND|Price'
        Width = 60
      end
      item
        Color = clSilver
        DisplayFormat = '#,##0.00'
        EditButtons = <>
        FieldName = 'ERP_VNPrice_'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'VND|ERP'
        Width = 56
      end
      item
        DisplayFormat = '#,##0'
        EditButtons = <>
        FieldName = 'VNACC'
        Footers = <
          item
            DisplayFormat = '#,##0'
            FieldName = 'VNACC'
            ValueType = fvtSum
          end>
        Title.Caption = 'VND|Amount'
      end
      item
        EditButtons = <>
        FieldName = 'HandCarry_USPrice'
        Footers = <>
        Title.Caption = 'Hand Carry|USPrice'
      end
      item
        EditButtons = <>
        FieldName = 'HandCarry_USACC'
        Footers = <>
        Title.Caption = 'Hand Carry|USACC'
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Material Name'
        Title.TitleButton = True
        Width = 297
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Unit'
        Width = 27
      end
      item
        EditButtons = <>
        FieldName = 'RKSB'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'TP'
        Width = 22
      end
      item
        EditButtons = <>
        FieldName = 'CGBH'
        Footers = <>
        ReadOnly = True
        Width = 72
      end
      item
        Color = clMoneyGreen
        EditButtons = <>
        FieldName = 'Season'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Sea.'
        Width = 33
      end
      item
        Color = clMoneyGreen
        EditButtons = <>
        FieldName = 'Purpose'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Pur.'
        Width = 30
      end
      item
        Color = clMoneyGreen
        EditButtons = <>
        FieldName = 'FreeQty_'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Free Qty'
        Width = 36
      end
      item
        Color = clMoneyGreen
        EditButtons = <>
        FieldName = 'Charge_'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Charge % '
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'MEMO'
        Footers = <>
        ReadOnly = True
        Width = 243
      end
      item
        EditButtons = <>
        FieldName = 'DOCNO'
        Footers = <>
        ReadOnly = True
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'CGDATE'
        Footers = <>
        ReadOnly = True
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'Charge'
        Footers = <>
        Title.Caption = 'Charge|USD'
      end
      item
        EditButtons = <>
        FieldName = 'Charge_VN'
        Footers = <>
        Title.Caption = 'Charge|VN'
      end
      item
        EditButtons = <>
        FieldName = 'Charge_Reason'
        Footers = <>
        Title.Caption = 'Charge|Charge_Reason'
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'samplePrice'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Costing|USD'
        Visible = False
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'samplePriceVN'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Costing|VND'
        Visible = False
        Width = 54
      end>
  end
  object EnMas: TQuery
    CachedUpdates = True
    AfterOpen = EnMasAfterOpen
    OnNewRecord = EnMasNewRecord
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select KCRK.*,ZSZL.ZSYWJC,CGZL.ZSBH as PurZSBH'
      'from KCRK'
      'left join ZSZL on KCRK.ZSBH=ZSZL.ZSDH'
      'Left join CGZL on CGZL.CGNO=KCRK.ZSNO '
      'where KCRK.YN<>'#39'5'#39
      'order by KCRK.RKNO')
    UpdateObject = UpMas
    Left = 324
    Top = 132
    object EnMasRKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object EnMasZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object EnMasZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object EnMasZSNO: TStringField
      FieldName = 'ZSNO'
      FixedChar = True
    end
    object EnMasUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object EnMasUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object EnMasCFMID: TStringField
      FieldName = 'CFMID'
      FixedChar = True
      Size = 15
    end
    object EnMasCFMDATE: TDateTimeField
      FieldName = 'CFMDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object EnMasYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object EnMasGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object EnMasCKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object EnMastest: TFloatField
      FieldKind = fkCalculated
      FieldName = 'test'
      Calculated = True
    end
    object EnMasPurZSBH: TStringField
      FieldName = 'PurZSBH'
      FixedChar = True
      Size = 6
    end
    object EnMasDOCNO: TStringField
      FieldName = 'DOCNO'
      FixedChar = True
      Size = 30
    end
    object EnMasMEMO: TStringField
      FieldName = 'MEMO'
      FixedChar = True
      Size = 50
    end
    object EnMasHGLB: TStringField
      FieldName = 'HGLB'
      FixedChar = True
      Size = 5
    end
  end
  object UpMas: TUpdateSQL
    ModifySQL.Strings = (
      'update KCRK'
      'set'
      '  CFMID = :CFMID,'
      '  CFMDATE = :CFMDATE'
      'where'
      '  RKNO = :OLD_RKNO')
    InsertSQL.Strings = (
      'insert into KCRK'
      '  (CFMID, CFMDATE)'
      'values'
      '  (:CFMID, :CFMDATE)')
    DeleteSQL.Strings = (
      'delete from KCRK'
      'where'
      '  RKNO = :OLD_RKNO')
    Left = 324
    Top = 164
  end
  object DS3: TDataSource
    DataSet = EnMas
    Left = 364
    Top = 132
  end
  object EnDet: TQuery
    CachedUpdates = True
    OnNewRecord = EnDetNewRecord
    DatabaseName = 'DB'
    DataSource = DS3
    RequestLive = True
    SQL.Strings = (
      ''
      'select * from (  '
      'select  '
      'KCRKS.RKNO '
      ',KCRKS.CLBH  '
      ',KCRKS.CGBH'
      ',KCRKS.RKSB  '
      ',KCRKS.Qty    '
      ',KCRKS.PaQty   '
      ',convert(float,KCRKS.USPrice) as USPrice   '
      ',KCRKS.USACC as USACC   '
      ',KCRKS.HandCarry_USPrice   '
      ',KCRKS.HandCarry_USACC    '
      ',KCRKS.VNPrice   '
      ',KCRKS.VNACC     '
      ',KCRKS.CWHL     '
      ',KCRKS.CostID    '
      ',KCRKS.USERID     '
      ',KCRKS.USERDATE   '
      ',KCRKS.YN        '
      ',KCRKS.FKZT      '
      ',KCRKS.DOCNO      '
      ',KCRKS.VNPriceCT   '
      ',KCRKS.RKMEMO     '
      ',KCRKS.CNO        '
      ',KCRKS.MEMO       '
      
        ',case when left(KCRKS.CLBH,2)='#39'U1'#39' and right(CLZL.YWPM,3)<>right' +
        '(HEIGHT,2)+'#39')'#39'    '
      
        '      then rtrim(CLZL.ywpm)+ '#39'('#39'+CONVERT(varchar,YWWX2.Length)+'#39 +
        '*'#39'+CONVERT(varchar,YWWX2.Width)+'#39'*'#39'+CONVERT(varchar,YWWX2.Height' +
        ')+'#39')'#39'    '
      
        '      else CLZL.YWPM end  as  YWPM,#LastCGBJ.USPrice as QuoteUS,' +
        '#LastCGBJ.VNPrice as QuoteVN,MaterialCBD.samplePrice,Round(Mater' +
        'ialCBD.samplePrice*22717,0) as samplePriceVN ,Convert(float,2271' +
        '7) as sampleEx '
      
        ',CLZL.DWBH,LENGTH,WIDTH,HEIGHT,CGZL.Season,CGZL.Purpose ,CGZL.CG' +
        'DATE,KCRKS.Charge,KCRKS.Charge_VN,KCRKS.Charge_Reason    '
      
        ',USPrice_2,USACC_2,VNPrice_2,VNACC_2,KCRKS.SurCharge,KCRKS.SurCh' +
        'arge_VN,DDZL.Article,MaterialCBDFilter.YN as MUnkLock,CLZL.YN as' +
        ' CLZL_YN,CLZL.CQDH,CLZL.CLZMLB '
      'from KCRKS       '
      'left join kcrk on kcrk.rkno = kcrks.rkno'
      'left join CLZL on CLZL.CLDH=KCRKS.CLBH    '
      'left join YWWX2 on YWWX2.CLBH=KCRKS.CLBH      '
      'left join CGZL on CGZL.CGNO=KCRK.ZSNO      '
      'left join #LastCGBJ on #LastCGBJ.CLBH=KCRKS.CLBH '
      'left join MaterialCBD on MaterialCBD.CLBH=KCRKS.CLBH '
      
        'left join MaterialCBDFilter on MaterialCBDFilter.CLBH=KCRKS.CLBH' +
        '  and MaterialCBDFilter.GSBH='#39'VA12'#39' '
      'left join DDZL on DDZL.DDBH=KCRKS.CGBH'
      'where KCRKS.RKNO='#39'20180805371'#39' ) main             '
      
        'left join (select clbh,season,sampleprice as ERP_USPrice_,sample' +
        'pricevn as ERP_VNPrice_ from materialmoq)materialmoq on material' +
        'moq.CLBH=main.CLBH and materialmoq.season=main.season '
      'order by CGBH,main.CLBH')
    UpdateObject = UPDet
    Left = 468
    Top = 132
    object EnDetRKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object EnDetCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object EnDetYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object EnDetDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object EnDetCGBH: TStringField
      FieldName = 'CGBH'
      FixedChar = True
      Size = 15
    end
    object EnDetRKSB: TStringField
      FieldName = 'RKSB'
      FixedChar = True
      Size = 15
    end
    object EnDetPaQty: TCurrencyField
      FieldName = 'PaQty'
      DisplayFormat = '#,##0.00'
    end
    object EnDetQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object EnDetUSPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.00000'
    end
    object EnDetUSACC: TCurrencyField
      FieldName = 'USACC'
      DisplayFormat = '##,#0.00'
    end
    object EnDetVNPrice: TCurrencyField
      FieldName = 'VNPrice'
      DisplayFormat = '#,##0.00'
    end
    object EnDetVNACC: TCurrencyField
      FieldName = 'VNACC'
      DisplayFormat = '#,##0.00'
    end
    object EnDetCostID: TStringField
      FieldName = 'CostID'
      FixedChar = True
      Size = 10
    end
    object EnDetUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object EnDetUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object EnDetYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object EnDetUSPrice_2: TFloatField
      FieldName = 'USPrice_2'
    end
    object EnDetUSACC_2: TFloatField
      FieldName = 'USACC_2'
    end
    object EnDetVNPrice_2: TCurrencyField
      FieldName = 'VNPrice_2'
    end
    object EnDetVNACC_2: TCurrencyField
      FieldName = 'VNACC_2'
    end
    object EnDetHandCarry_USPrice: TCurrencyField
      FieldName = 'HandCarry_USPrice'
      currency = False
    end
    object EnDetHandCarry_USACC: TCurrencyField
      FieldName = 'HandCarry_USACC'
      currency = False
    end
    object EnDetDOCNO: TStringField
      FieldName = 'DOCNO'
      FixedChar = True
    end
    object EnDetVNPriceCT: TFloatField
      FieldName = 'VNPriceCT'
    end
    object EnDetLENGTH: TFloatField
      FieldName = 'LENGTH'
    end
    object EnDetWIDTH: TFloatField
      FieldName = 'WIDTH'
    end
    object EnDetHEIGHT: TFloatField
      FieldName = 'HEIGHT'
    end
    object EnDetVNACC12: TFloatField
      FieldKind = fkCalculated
      FieldName = 'VNACC1'
      Calculated = True
    end
    object EnDetMEMO: TStringField
      FieldName = 'MEMO'
      FixedChar = True
      Size = 200
    end
    object EnDetSeason: TStringField
      FieldName = 'Season'
      FixedChar = True
    end
    object EnDetPurpose: TStringField
      FieldName = 'Purpose'
      FixedChar = True
      Size = 15
    end
    object EnDetCharge_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Charge_'
      DisplayFormat = '##%'
      currency = False
      Calculated = True
    end
    object EnDetCGDATE: TDateTimeField
      FieldName = 'CGDATE'
    end
    object EnDetCharge: TCurrencyField
      FieldName = 'Charge'
      DisplayFormat = '##,#0.00000'
    end
    object EnDetCharge_VN: TCurrencyField
      FieldName = 'Charge_VN'
      DisplayFormat = '##,#0.00'
    end
    object EnDetCharge_Reason: TStringField
      FieldName = 'Charge_Reason'
      FixedChar = True
      Size = 200
    end
    object EnDetFreeQty_22: TFloatField
      FieldKind = fkCalculated
      FieldName = 'FreeQty_2'
      Calculated = True
    end
    object EnDetCharge_22: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Charge_2'
      DisplayFormat = '##%'
      Calculated = True
    end
    object EnDetFreeQty12: TFloatField
      FieldKind = fkCalculated
      FieldName = 'FreeQty1'
      Calculated = True
    end
    object EnDetCharge12: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Charge1'
      DisplayFormat = '##%'
      Calculated = True
    end
    object EnDetCARTON_: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CARTON_'
      Calculated = True
    end
    object EnDetFreeQty_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'FreeQty_'
      currency = False
      Calculated = True
    end
    object EnDetQ_VNPrice_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Q_VNPrice_'
      currency = False
      Calculated = True
    end
    object EnDetQ_USPrice_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Q_USPrice_'
      currency = False
      Calculated = True
    end
    object EnDetSurCharge: TCurrencyField
      FieldName = 'SurCharge'
    end
    object EnDetSurCharge_VN: TCurrencyField
      FieldName = 'SurCharge_VN'
    end
    object EnDetArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object EnDetsamplePrice: TFloatField
      FieldName = 'samplePrice'
    end
    object EnDetsamplePriceVN: TFloatField
      FieldName = 'samplePriceVN'
    end
    object EnDetsampleEx: TFloatField
      FieldName = 'sampleEx'
    end
    object EnDetMUnkLock: TStringField
      FieldName = 'MUnkLock'
      FixedChar = True
      Size = 1
    end
    object EnDetCLZL_YN: TStringField
      FieldName = 'CLZL_YN'
      FixedChar = True
      Size = 1
    end
    object EnDetCQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object EnDetCLZMLB: TStringField
      FieldName = 'CLZMLB'
      FixedChar = True
      Size = 1
    end
    object EnDetERP_VNPrice_: TCurrencyField
      FieldName = 'ERP_VNPrice_'
    end
    object EnDetERP_USPrice_: TCurrencyField
      FieldName = 'ERP_USPrice_'
    end
    object EnDetQuoteUS: TFloatField
      FieldName = 'QuoteUS'
    end
    object EnDetQuoteVN: TFloatField
      FieldName = 'QuoteVN'
    end
    object EnDetCWHL: TCurrencyField
      FieldName = 'CWHL'
    end
  end
  object UPDet: TUpdateSQL
    ModifySQL.Strings = (
      'update KCRKS'
      'set'
      '  USPrice = :USPrice,'
      '  USACC = :USACC,'
      '  VNPrice = :VNPrice,'
      '  VNACC = :VNACC,'
      '  USPrice_2 = :USPrice_2,'
      '  USACC_2 = :USACC_2,'
      '  VNPrice_2 = :VNPrice_2,'
      '  VNACC_2 = :VNACC_2,'
      '  Charge = :Charge,'
      '  Charge_VN = :Charge_VN,'
      '  Charge_Reason = :Charge_Reason,'
      '  SurCharge = :SurCharge,'
      '  SurCharge_VN = :SurCharge_VN'
      'where'
      '  RKNO = :OLD_RKNO and'
      '  CLBH = :OLD_CLBH and'
      '  CGBH = :OLD_CGBH and'
      '  RKSB = :OLD_RKSB')
    InsertSQL.Strings = (
      'insert into KCRKS'
      
        '  (USPrice, USACC, VNPrice, VNACC, USPrice_2, USACC_2, VNPrice_2' +
        ', VNACC_2)'
      'values'
      
        '  (:USPrice, :USACC, :VNPrice, :VNACC, :USPrice_2, :USACC_2, :VN' +
        'Price_2, '
      '   :VNACC_2)')
    DeleteSQL.Strings = (
      'delete from KCRKS'
      'where'
      '  RKNO = :OLD_RKNO and'
      '  CLBH = :OLD_CLBH and'
      '  CGBH = :OLD_CGBH and'
      '  RKSB = :OLD_RKSB')
    Left = 468
    Top = 165
  end
  object DS4: TDataSource
    DataSet = EnDet
    Left = 508
    Top = 132
  end
  object PopupMenu1: TPopupMenu
    Left = 200
    Top = 134
    object EXCEL1: TMenuItem
      Caption = 'EXCEL'
      OnClick = EXCEL1Click
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'if object_id('#39'tempdb..#LastCGBJ'#39') is not null  '
      'begin   drop table #LastCGBJ end   '
      
        'select * into #LastCGBJ from (select CLBH,USPRICE,VNPRICE from (' +
        ' select CGBJS.BJNO,CLBH,USPRICE,VNPRICE,ROW_NUMBER() over (PARTI' +
        'TION BY CLBH ORDER BY CGBJS.BJNO DESC) as  rn from CGBJS,CGBJ wh' +
        'ere CGBJS.BJNO=CGBJ.BJNO and CGBJ.GSBH='#39'VA12'#39'  '
      ') A where A.rn=1 ) CGBJS')
    Left = 232
    Top = 134
  end
  object Qry_SamplePayment_Unit: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select  CR1_FreeQty as FreeQty, CR1_FreeQty as Charge'
      'from zszlSamplePayment'
      'where 1=2'
      '')
    Left = 744
    Top = 136
    object CurrencyField5: TCurrencyField
      FieldName = 'FreeQty'
      Origin = 'DB.zszlSamplePayment.CR1_FreeQty'
    end
    object CurrencyField6: TCurrencyField
      FieldName = 'Charge'
      Origin = 'DB.zszlSamplePayment.CR1_FreeQty'
    end
  end
  object Qry_MaterialPrice: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select  top 1 '
      'SamplePrice'
      
        ',case MaterialPrice.SamplePrice when null then MaterialPrice.Sam' +
        'plePriceVN'
      'else MaterialPrice.SamplePrice * kjhl.ex_rate'
      'end as SamplePriceVN'
      ''
      ',KJHL.ZSBH'
      ',KJHL.YMONTH'
      ',KJHL.EX_rate'
      ' '
      'from  MaterialPrice '
      'left join KJHL on KJHL.ZSBH = MaterialPrice.ZSBH '
      'and convert(char(7),kjhl.YMONTH,120)= '#39'2012-04'#39
      'where Season='#39'SS13'#39
      '      and MaterialPrice.ZSBH='#39'VC04'#39
      '      and MaterialPrice.CLBH='#39'J030001924'#39
      '      and MaterialPrice.EffectiveDate<='#39'2012/03/06'#39
      '    order by EffectiveDate '
      '')
    Left = 704
    Top = 136
    object Qry_MaterialPriceSamplePrice: TCurrencyField
      FieldName = 'SamplePrice'
      Origin = 'DB.MaterialMOQ.SamplePrice'
    end
    object Qry_MaterialPriceSamplePriceVN: TCurrencyField
      FieldName = 'SamplePriceVN'
      Origin = 'DB.MaterialMOQ.SamplePriceVN'
    end
  end
  object Qry_zszlSamplePayment: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select  CR1_FreeQty as FreeQty, CR1_FreeQty as Charge'
      'from zszlSamplePayment'
      'where 1=2'
      '')
    Left = 664
    Top = 136
    object Qry_zszlSamplePaymentFreeQty: TCurrencyField
      FieldName = 'FreeQty'
      Origin = 'DB.zszlSamplePayment.CR1_FreeQty'
    end
    object Qry_zszlSamplePaymentCharge: TCurrencyField
      FieldName = 'Charge'
      Origin = 'DB.zszlSamplePayment.CR1_FreeQty'
    end
    object Qry_zszlSamplePaymentFreeQty2: TCurrencyField
      FieldName = 'FreeQty2'
      Origin = 'DB.zszlSamplePayment.CR1_FreeQty2'
    end
    object Qry_zszlSamplePaymentCharge2: TCurrencyField
      FieldName = 'Charge2'
      Origin = 'DB.zszlSamplePayment.CR1_Charge2'
    end
    object Qry_zszlSamplePaymentFreeQty1: TCurrencyField
      FieldName = 'FreeQty1'
    end
    object Qry_zszlSamplePaymentCharge1: TCurrencyField
      FieldName = 'Charge1'
    end
    object Qry_zszlSamplePaymentCharge_: TCurrencyField
      FieldName = 'Charge_'
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 200
    Top = 166
    object MenuItem1: TMenuItem
      Caption = 'EXCEL'
      OnClick = MenuItem1Click
    end
    object Price01: TMenuItem
      Caption = 'Price=0'
      object VNPrice1: TMenuItem
        Caption = 'VNPrice'
        OnClick = VNPrice1Click
      end
      object USPrice1: TMenuItem
        Caption = 'USPrice'
        OnClick = USPrice1Click
      end
    end
    object CAL1: TMenuItem
      Caption = 'Cal AvgCost'
      OnClick = CAL1Click
    end
  end
end
