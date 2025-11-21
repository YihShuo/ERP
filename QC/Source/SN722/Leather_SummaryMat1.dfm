object Leather_SummaryMat: TLeather_SummaryMat
  Left = 281
  Top = 190
  Width = 941
  Height = 429
  BorderIcons = [biSystemMenu]
  Caption = 'Leather_SummaryMat'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 925
    Height = 85
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 10
      Top = 33
      Width = 88
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Material Name'
    end
    object Label3: TLabel
      Left = 370
      Top = 33
      Width = 64
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Material ID'
    end
    object Label4: TLabel
      Left = 344
      Top = 7
      Width = 90
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Supplier Name'
    end
    object Label6: TLabel
      Left = 400
      Top = 59
      Width = 34
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RY'
    end
    object Label8: TLabel
      Left = 221
      Top = 59
      Width = 37
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Article'
    end
    object Label14: TLabel
      Left = 16
      Top = 59
      Width = 82
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Shipment'
    end
    object Label5: TLabel
      Left = 222
      Top = 9
      Width = 7
      Height = 25
      Caption = '~'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edtMatID: TEdit
      Left = 436
      Top = 30
      Width = 125
      Height = 24
      Color = cl3DLight
      TabOrder = 0
    end
    object edtMatName: TEdit
      Left = 100
      Top = 30
      Width = 109
      Height = 24
      Color = cl3DLight
      TabOrder = 1
    end
    object edtSupp: TEdit
      Left = 436
      Top = 4
      Width = 125
      Height = 24
      TabOrder = 2
    end
    object edtRY: TEdit
      Left = 436
      Top = 56
      Width = 123
      Height = 24
      TabOrder = 3
    end
    object edtArticle: TEdit
      Left = 260
      Top = 56
      Width = 141
      Height = 24
      TabOrder = 4
    end
    object btnQ: TBitBtn
      Left = 596
      Top = 6
      Width = 49
      Height = 49
      Caption = 'Query'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = btnQClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333FF3FF3333333333CC30003333333333773777333333333C33
        3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
        33003377333337F33377333333333C333300333F333337F33377339333333C33
        3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
        330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
        330077F377F337F33377993399333C33330077FF773337F33377399993333C33
        33333777733337F333FF333333333C33300033333333373FF7773333333333CC
        3000333333333377377733333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object Edit3: TEdit
      Left = 209
      Top = 30
      Width = 125
      Height = 24
      Color = cl3DLight
      TabOrder = 6
    end
    object Edit4: TEdit
      Left = 100
      Top = 56
      Width = 109
      Height = 24
      TabOrder = 7
    end
    object chkStore: TCheckBox
      Left = 8
      Top = 8
      Width = 113
      Height = 17
      Caption = 'Received Date'
      Checked = True
      State = cbChecked
      TabOrder = 8
    end
    object DTP3: TDateTimePicker
      Left = 124
      Top = 4
      Width = 97
      Height = 24
      Date = 39284.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677295636570000000
      TabOrder = 9
    end
    object DTP4: TDateTimePicker
      Left = 233
      Top = 4
      Width = 102
      Height = 24
      Date = 39284.677664201390000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677664201390000000
      TabOrder = 10
    end
  end
  object DBGrid_detail: TDBGridEh
    Left = 0
    Top = 85
    Width = 925
    Height = 305
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
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
    VTitleMargin = 0
    OnDblClick = DBGrid_detailDblClick
    Columns = <
      item
        ButtonStyle = cbsNone
        EditButtons = <>
        FieldName = 'DateInput'
        Footer.FieldName = 'DateInput'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = 'Received Date'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'Hours'
        Footers = <>
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'CGNO'
        Footers = <>
        Title.Caption = 'Shipment'
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'RY'
        Footers = <>
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'CustPO'
        Footers = <>
        Title.Caption = 'Cust PO#'
        Width = 80
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = 'Material ID'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'MaterialName'
        Footers = <>
        Title.Caption = 'Material Name'
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'SupplierName'
        Footers = <>
        Title.Caption = 'Supplier Name'
        Width = 100
      end
      item
        DisplayFormat = '#,##0.00'
        EditButtons = <>
        FieldName = 'Qty'
        Footer.DisplayFormat = '#,##0.00'
        Footer.FieldName = 'QTY'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'Remark'
        Footers = <>
        Width = 70
      end>
  end
  object Query1: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'select m1.*,clzl.YWPM as MaterialName,ZSZL.ZSYWJC as SupplierNam' +
        'e'
      'from MaterialQCcheck m1 left join clzl on clzl.CLDH = m1.CLBH'
      'left Join ZSZL on ZSZL.ZSDH =m1.ZSBH'
      'LEFT JOIN Leather_QCLinkM ON Leather_QCLinkM.No_ID=m1.No_ID'
      'where left(m1.CLBH,1)='#39'F'#39
      
        #9#9'AND NOT EXISTS (SELECT * FROM Leather_QC WHERE Leather_QC.Repo' +
        'rtID=Leather_QCLinkM.ReportID)')
    UpdateObject = UpdateSQL1
    Left = 240
    Top = 208
    object Query1No_ID: TAutoIncField
      FieldName = 'No_ID'
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1CGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object Query1DateInput: TDateTimeField
      FieldName = 'DateInput'
    end
    object Query1ZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object Query1RY: TMemoField
      FieldName = 'RY'
      OnGetText = Query1RYGetText
      BlobType = ftMemo
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
      Size = 255
    end
    object Query1CustPO: TStringField
      FieldName = 'CustPO'
      FixedChar = True
      Size = 255
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
    end
    object Query1Remark: TStringField
      FieldName = 'Remark'
      FixedChar = True
      Size = 100
    end
    object Query1MaterialName: TStringField
      FieldName = 'MaterialName'
      FixedChar = True
      Size = 200
    end
    object Query1SupplierName: TStringField
      FieldName = 'SupplierName'
      FixedChar = True
      Size = 200
    end
    object Query1RKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object Query1Hours: TStringField
      FieldName = 'Hours'
      FixedChar = True
      Size = 8
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 280
    Top = 208
  end
  object UpdateSQL1: TUpdateSQL
    Left = 240
    Top = 248
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 320
    Top = 208
  end
end
