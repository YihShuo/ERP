object Traceability_Shipping_FG: TTraceability_Shipping_FG
  Left = 190
  Top = 227
  Width = 1650
  Height = 675
  Caption = 'Traceability_Shipping_FG'
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
    Width = 1634
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label3: TLabel
      Left = 24
      Top = 23
      Width = 45
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RY#:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 265
      Top = 14
      Width = 75
      Height = 35
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 353
      Top = 14
      Width = 75
      Height = 35
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button3Click
    end
    object RYEdit: TEdit
      Left = 72
      Top = 19
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object PC1: TPageControl
    Left = 0
    Top = 81
    Width = 1634
    Height = 555
    ActivePage = TS4
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TS1: TTabSheet
      Caption = 'Bill of Lading-Bill'
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1626
        Height = 524
        Align = alClient
        DataSource = DS1
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
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
            FieldName = 'BillNo'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Bill of Lading #'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'INV_NO'
            Footers = <>
            Title.Caption = 'Invoice #'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'Shipper'
            Footers = <>
            Title.Caption = 'Shipper / prducer/Exporter'
          end
          item
            EditButtons = <>
            FieldName = 'Consignee'
            Footers = <>
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'Notify'
            Footers = <>
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'CO_Vessel'
            Footers = <>
            Title.Caption = 'Vessel/voyage'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'Forwarder'
            Footers = <>
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'Carrier'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'LoadingDate'
            Footers = <>
            Title.Caption = 'Loading Date'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'ShippingDate'
            Footers = <>
            Title.Caption = 'Shipping Date (ETD)'
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'ArrivalDate'
            Footers = <>
            Title.Caption = 'Arrival Date'
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'DeliveryDate'
            Footers = <>
            Title.Caption = 'Delivery Date'
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'DateofReceipt'
            Footers = <>
            Title.Caption = 'Date of receipt (=exf.date)'
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'Placeofreceipt'
            Footers = <>
            Title.Caption = 'Place of receipt'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'Portofloading'
            Footers = <>
            Title.Caption = 'Port of loading'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'PortofDischarge'
            Footers = <>
            Title.Caption = 'Port of Discharge'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'PlaceofDelivery'
            Footers = <>
            Title.Caption = 'Place of Delivery'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'CON_NO'
            Footers = <>
            Title.Caption = 'Container #'
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'Quantity_per_container'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Quantity per container'
          end
          item
            EditButtons = <>
            FieldName = 'Total_quantity'
            Footers = <>
            Title.Caption = 'Total quantity'
          end
          item
            EditButtons = <>
            FieldName = 'Descriptionofitems'
            Footers = <>
            Title.Caption = 'Description of items'
          end
          item
            EditButtons = <>
            FieldName = 'RYNO'
            Footers = <>
            Title.Caption = 'RY#'
            Width = 90
          end>
      end
    end
    object TS2: TTabSheet
      Caption = 'Packing Slip'
      ImageIndex = 1
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 1626
        Height = 524
        Align = alClient
        DataSource = DS2
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
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
            FieldName = 'PACKINGSLIP#'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'PACKING SLIP#'
          end
          item
            EditButtons = <>
            FieldName = 'INVOICE#'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'PACKING_LOCATION'
            Footers = <>
            Title.Caption = 'PACKING LOCATION'
          end
          item
            EditButtons = <>
            FieldName = 'INV_DATE'
            Footers = <>
            Title.Caption = 'PACKING DATE'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'SHIPPING_LOCATION'
            Footers = <>
            Title.Caption = 'SHIPPING LOCATION'
          end
          item
            EditButtons = <>
            FieldName = 'ShippingDate_Gac'
            Footers = <>
            Title.Caption = 'SHIPPING DATE (GAC)'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'Shipper'
            Footers = <>
            Title.Caption = 'SHIPPER'
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            Title.Caption = 'ITEM# (SKU#)'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'STYLE_NAME'
            Footers = <>
            Title.Caption = 'DESCRIPTION'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'CONVEYANCE'
            Footers = <>
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'CONTAINER#'
            Footers = <>
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'Quantity_per_container'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'QUANTITY PER CONTAINER'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'Total_quantity'
            Footers = <>
            Title.Caption = 'TOTAL QUANTITY'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'RYNO'
            Footers = <>
            Title.Caption = 'RY#'
            Width = 90
          end>
      end
    end
    object TS3: TTabSheet
      Caption = 'Certificate of Origin-CO'
      ImageIndex = 2
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 0
        Width = 1626
        Height = 524
        Align = alClient
        DataSource = DS3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
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
            FieldName = 'CO_No'
            Footers = <>
            Title.Caption = 'Certificate#'
            Width = 95
          end
          item
            EditButtons = <>
            FieldName = 'INV_NO'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Invoice#'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'CO_Date'
            Footers = <>
            Title.Caption = 'Certification Date'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'Exporter'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Producer'
            Footers = <>
            Title.Caption = 'Producer if different than Exporter'
          end
          item
            EditButtons = <>
            FieldName = 'Certificate_Issuer'
            Footers = <>
            Title.Caption = 'Certificate Issuer'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'Address_Certificate_Issuer'
            Footers = <>
            Title.Caption = 'Address Certificate Issuer'
            Width = 250
          end
          item
            EditButtons = <>
            FieldName = 'Seller_Name'
            Footers = <>
            Title.Caption = 'Seller Name'
          end
          item
            EditButtons = <>
            FieldName = 'Address_Seller_name'
            Footers = <>
            Title.Caption = 'Address Seller Name'
            Width = 250
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            Title.Caption = 'Item (SKU)'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'Description'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'PAIRS'
            Footers = <>
            Title.Caption = 'Quantity'
          end
          item
            EditButtons = <>
            FieldName = 'ValueInvoice'
            Footers = <>
            Title.Caption = 'Value if available'
          end
          item
            EditButtons = <>
            FieldName = 'RYNO'
            Footers = <>
            Title.Caption = 'RY#'
            Width = 90
          end>
      end
    end
    object TS4: TTabSheet
      Caption = 'Commercial invoice-FOB'
      ImageIndex = 3
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 0
        Width = 1626
        Height = 524
        Align = alClient
        DataSource = DS4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
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
            FieldName = 'Invoice'
            Footer.ValueType = fvtCount
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'INV_DATE'
            Footers = <>
            Title.Caption = 'Date INV'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'KHPO'
            Footers = <>
            Title.Caption = 'Fulfilled PO number(s)'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'NameBuyer'
            Footers = <>
            Title.Caption = 'Name of buyer'
            Width = 200
          end
          item
            EditButtons = <>
            FieldName = 'AddressBuyer'
            Footer.FieldName = 'AddressBuyer'
            Footers = <>
            Title.Caption = 'Address of buyer'
            Width = 250
          end
          item
            EditButtons = <>
            FieldName = 'NameSeller'
            Footer.FieldName = 'NameSeller'
            Footers = <>
            Title.Caption = 'Name of Seller'
            Width = 200
          end
          item
            EditButtons = <>
            FieldName = 'AddressSeller'
            Footers = <>
            Title.Caption = 'Address of Seller'
            Width = 250
          end
          item
            EditButtons = <>
            FieldName = 'CountryOrigin'
            Footers = <>
            Title.Caption = 'Country of origin'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            Title.Caption = 'Item# (SKU#)'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'STYLE_NAME'
            Footers = <>
            Title.Caption = 'Description'
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'PAIRS'
            Footers = <>
            Title.Caption = 'Quantity'
          end
          item
            EditButtons = <>
            FieldName = 'Value'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RYNO'
            Footers = <>
            Title.Caption = 'RY#'
            Width = 90
          end>
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select Ship_Booking.Bill_FCR_No as BillNo,Ship_Booking.INV_NO,'#39'V' +
        'INH LONG FOOTWEAR CO.,LTD'#39' as Shipper,Bill_Shipping.Consignee,Bi' +
        'll_Shipping.Notify'
      
        #9'   ,Ship_Booking.CO_Vessel,Ship_Booking.Forwarder,Bill_Shipping' +
        '.Carrier,Bill_Shipping.LoadingDate,Bill_Shipping.ShippingDate,Bi' +
        'll_Shipping.ArrivalDate'
      
        #9'   ,Bill_Shipping.DeliveryDate,Bill_Shipping.DateofReceipt,'#39'HOC' +
        'HIMINH'#39' as Placeofreceipt,'#39'HOCHIMINH'#39' as Portofloading,Bill_Ship' +
        'ping.PortofDischarge'
      
        #9'   ,Bill_Shipping.PlaceofDelivery,YWCP.CON_NO,YWCP_Con.Qty as Q' +
        'uantity_per_container ,INVOICE_M.TOTAL_PAIRS as Total_quantity,'#39 +
        'CONVERSE FOOTWEAR'#39' as Descriptionofitems'
      'from Ship_Booking'
      'left join INVOICE_M on Ship_Booking.INV_NO=Ship_Booking.INV_NO'
      
        'left join INVOICE_D on INVOICE_M.INV_NO=INVOICE_D.INV_NO and Shi' +
        'p_Booking.INV_NO = INVOICE_D.INV_NO'
      
        'left join Bill_Shipping on Ship_Booking.INV_NO=Bill_Shipping.INV' +
        '_NO and Ship_Booking.Bill_FCR_No=Bill_Shipping.BillNo'
      
        'left join (select DDBH,max(CON_NO) as CON_NO from ( select * fro' +
        'm YWCP  union all select * from YWCPOld ) YWCP where SB='#39'3'#39' grou' +
        'p by DDBH ) YWCP on YWCP.DDBH=INVOICE_D.RYNO'
      
        'left join (select max(CON_NO) as CON_NO,sum(qty) as Qty from (se' +
        'lect * from YWCP union all select * from YWCPOld) YWCP  where SB' +
        '='#39'3'#39' and CON_NO='#39'CSNU1408379'#39') YWCP_Con  on  YWCP_Con.CON_NO=YWC' +
        'P.CON_NO'
      'where INVOICE_D.RYNO='#39'Y2307-0007'#39
      '')
    Left = 194
    Top = 276
    object Query1BillNo: TStringField
      FieldName = 'BillNo'
      FixedChar = True
    end
    object Query1INV_NO: TStringField
      FieldName = 'INV_NO'
      FixedChar = True
      Size = 30
    end
    object Query1Shipper: TStringField
      FieldName = 'Shipper'
      FixedChar = True
      Size = 26
    end
    object Query1Consignee: TStringField
      FieldName = 'Consignee'
      FixedChar = True
      Size = 150
    end
    object Query1Notify: TStringField
      FieldName = 'Notify'
      FixedChar = True
      Size = 150
    end
    object Query1CO_Vessel: TStringField
      FieldName = 'CO_Vessel'
      FixedChar = True
      Size = 150
    end
    object Query1Forwarder: TStringField
      FieldName = 'Forwarder'
      FixedChar = True
      Size = 50
    end
    object Query1Carrier: TStringField
      FieldName = 'Carrier'
      FixedChar = True
      Size = 50
    end
    object Query1LoadingDate: TDateTimeField
      FieldName = 'LoadingDate'
    end
    object Query1ShippingDate: TDateTimeField
      FieldName = 'ShippingDate'
    end
    object Query1ArrivalDate: TDateTimeField
      FieldName = 'ArrivalDate'
    end
    object Query1DeliveryDate: TDateTimeField
      FieldName = 'DeliveryDate'
    end
    object Query1DateofReceipt: TDateTimeField
      FieldName = 'DateofReceipt'
    end
    object Query1Placeofreceipt: TStringField
      FieldName = 'Placeofreceipt'
      FixedChar = True
      Size = 9
    end
    object Query1Portofloading: TStringField
      FieldName = 'Portofloading'
      FixedChar = True
      Size = 9
    end
    object Query1PortofDischarge: TStringField
      FieldName = 'PortofDischarge'
      FixedChar = True
      Size = 150
    end
    object Query1PlaceofDelivery: TStringField
      FieldName = 'PlaceofDelivery'
      FixedChar = True
      Size = 150
    end
    object Query1CON_NO: TStringField
      FieldName = 'CON_NO'
      FixedChar = True
    end
    object Query1Quantity_per_container: TIntegerField
      FieldName = 'Quantity_per_container'
    end
    object Query1Total_quantity: TIntegerField
      FieldName = 'Total_quantity'
    end
    object Query1Descriptionofitems: TStringField
      FieldName = 'Descriptionofitems'
      FixedChar = True
      Size = 17
    end
    object Query1RYNO: TStringField
      FieldName = 'RYNO'
      Size = 50
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 194
    Top = 244
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 234
    Top = 244
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select INVOICE_D.INV_NO as PACKINGSLIP#,INVOICE_D.INV_NO as INVO' +
        'ICE#,'#39'VINH LONG FOOTWEAR CO.,LTD'#39' as PACKING_LOCATION,INVOICE_M.' +
        'INV_DATE,'#39'VINH LONG FOOTWEAR CO.,LTD'#39' as SHIPPING_LOCATION'
      
        #9'   ,Ship_Booking.ExFty_Date as ShippingDate_Gac,'#39'VINH LONG FOOT' +
        'WEAR CO.,LTD'#39' as Shipper,INVOICE_D.ARTICLE,INVOICE_D.STYLE_NAME'
      
        #9'   ,case when Ship_Booking.Kind_Loading='#39'CY'#39' then '#39'CONTAINER'#39' w' +
        'hen Ship_Booking.Kind_Loading='#39'CFS'#39' then '#39'Truck'#39' else Ship_Booki' +
        'ng.Kind_Loading end as CONVEYANCE'
      
        #9'   ,YWCP.CON_NO as CONTAINER#,YWCP_Con.Qty as Quantity_per_cont' +
        'ainer ,INVOICE_M.TOTAL_PAIRS as Total_quantity'
      'from INVOICE_D left join INVOICE_M'
      'on INVOICE_D.INV_NO=INVOICE_M.INV_NO'
      'left join Bill_Shipping on INVOICE_D.INV_NO=Bill_Shipping.INV_NO'
      'left join Ship_Booking on INVOICE_D.INV_NO=Ship_Booking.INV_NO'
      
        'left join (select DDBH,max(CON_NO) as CON_NO from ( select * fro' +
        'm YWCP  union all select * from YWCPOld ) YWCP where SB='#39'3'#39' grou' +
        'p by DDBH ) YWCP on YWCP.DDBH=INVOICE_D.RYNO'
      
        'left join (select max(CON_NO) as CON_NO,sum(qty) as Qty from (se' +
        'lect * from YWCP union all select * from YWCPOld) YWCP  where SB' +
        '='#39'3'#39' and CON_NO='#39'CSNU1408379'#39') YWCP_Con  on  YWCP_Con.CON_NO=YWC' +
        'P.CON_NO'
      'where INVOICE_D.INV_NO='#39'Y-0497/TX/23'#39
      '')
    Left = 234
    Top = 276
    object Query2PACKINGSLIP: TStringField
      FieldName = 'PACKINGSLIP#'
      FixedChar = True
      Size = 15
    end
    object Query2INVOICE: TStringField
      FieldName = 'INVOICE#'
      FixedChar = True
      Size = 15
    end
    object Query2PACKING_LOCATION: TStringField
      FieldName = 'PACKING_LOCATION'
      FixedChar = True
      Size = 26
    end
    object Query2INV_DATE: TDateTimeField
      FieldName = 'INV_DATE'
    end
    object Query2SHIPPING_LOCATION: TStringField
      FieldName = 'SHIPPING_LOCATION'
      FixedChar = True
      Size = 26
    end
    object Query2ShippingDate_Gac: TDateTimeField
      FieldName = 'ShippingDate_Gac'
    end
    object Query2Shipper: TStringField
      FieldName = 'Shipper'
      FixedChar = True
      Size = 26
    end
    object Query2ARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
      Size = 50
    end
    object Query2STYLE_NAME: TStringField
      FieldName = 'STYLE_NAME'
      FixedChar = True
      Size = 50
    end
    object Query2CONVEYANCE: TStringField
      FieldName = 'CONVEYANCE'
      FixedChar = True
      Size = 50
    end
    object Query2CONTAINER: TStringField
      FieldName = 'CONTAINER#'
      FixedChar = True
    end
    object Query2Quantity_per_container: TIntegerField
      FieldName = 'Quantity_per_container'
    end
    object Query2Total_quantity: TIntegerField
      FieldName = 'Total_quantity'
    end
    object Query2RYNO: TStringField
      FieldName = 'RYNO'
      Size = 50
    end
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select Ship_Booking.CO_No,Ship_Booking.INV_NO,Ship_Booking.CO_Da' +
        'te,'#39'VINH LONG FOOTWEAR CO.,LTD'#39' as Exporter,'#39'VINH LONG FOOTWEAR ' +
        'CO.,LTD'#39' as Producer,'#39'MOIT'#39' as Certificate_Issuer'
      
        #9'   ,'#39'SO 12  NGUYEN THI MINH KHAI, Q.1, TP. HO CHI MINH'#39' as Addr' +
        'ess_Certificate_Issuer,'#39'VINH LONG FOOTWEAR CO.,LTD'#39' as Seller_Na' +
        'me'
      
        #9'   ,'#39'HOA PHU INDUSTRIAL ZONE,THANH HUNG HAMLET,HOA PHU VILLAGE,' +
        'LONG HO DISTRICT,VINH LONG PROVINCE,VIETNAM'#39' as Address_Seller_n' +
        'ame'#9
      
        #9'   ,INVOICE_D.ARTICLE,'#39'CONVERSE FOOTWEAR'#39' as Description,INVOIC' +
        'E_D.PAIRS,Bill_Shipping.ValueInvoice'
      'from Ship_Booking'
      'left join INVOICE_D on Ship_Booking.INV_NO=INVOICE_D.INV_NO'
      
        'left join Bill_Shipping on Ship_Booking.INV_NO=Bill_Shipping.INV' +
        '_NO '
      'where INVOICE_D.RYNO='#39'Y2307-0007'#39
      '')
    Left = 282
    Top = 276
    object Query3CO_No: TStringField
      FieldName = 'CO_No'
      FixedChar = True
      Size = 50
    end
    object Query3INV_NO: TStringField
      FieldName = 'INV_NO'
      FixedChar = True
      Size = 30
    end
    object Query3CO_Date: TDateTimeField
      FieldName = 'CO_Date'
    end
    object Query3Exporter: TStringField
      FieldName = 'Exporter'
      FixedChar = True
      Size = 26
    end
    object Query3Producer: TStringField
      FieldName = 'Producer'
      FixedChar = True
      Size = 26
    end
    object Query3Certificate_Issuer: TStringField
      FieldName = 'Certificate_Issuer'
      FixedChar = True
      Size = 4
    end
    object Query3Address_Certificate_Issuer: TStringField
      FieldName = 'Address_Certificate_Issuer'
      FixedChar = True
      Size = 49
    end
    object Query3Seller_Name: TStringField
      FieldName = 'Seller_Name'
      FixedChar = True
      Size = 26
    end
    object Query3Address_Seller_name: TStringField
      FieldName = 'Address_Seller_name'
      FixedChar = True
      Size = 101
    end
    object Query3ARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
      Size = 50
    end
    object Query3Description: TStringField
      FieldName = 'Description'
      FixedChar = True
      Size = 17
    end
    object Query3PAIRS: TIntegerField
      FieldName = 'PAIRS'
    end
    object Query3ValueInvoice: TCurrencyField
      FieldName = 'ValueInvoice'
      DisplayFormat = '##,#0.00'
    end
    object Query3RYNO: TStringField
      FieldName = 'RYNO'
      Size = 50
    end
  end
  object Query4: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select INVOICE_D.INV_NO as Invoice,INVOICE_M.INV_DATE,DDZL.KHPO,' +
        'Bill_Shipping.NameBuyer,Bill_Shipping.AddressBuyer,'#39'Flourish Thr' +
        'ive development Limited Taiwan Branch'#39' as NameSeller'
      
        #9'   ,'#39'5F., No13, Lane 370, Sec 4, Ya Tan Road, Da Ya District, T' +
        'aichung city, Taiwan, R.O.C.'#39' as AddressSeller,'#39'VIETNAM'#39' as Coun' +
        'tryOrigin'
      
        #9'   ,INVOICE_D.ARTICLE,INVOICE_D.STYLE_NAME,INVOICE_D.PAIRS,'#9'INV' +
        'OICE_D.PAIRS * DDZL_Price_BUY.Price as Value'
      'from INVOICE_D left join INVOICE_M '
      'on INVOICE_D.INV_NO=INVOICE_M.INV_NO'
      'left join DDZL on INVOICE_D.RYNO=DDZL.DDBH'
      
        'left join Bill_Shipping on INVOICE_D.INV_NO=Bill_Shipping.INV_NO' +
        ' '
      
        'left join DDZL_Price_BUY on DDZL_Price_BUY.ARTICLE=DDZL.ARTICLE ' +
        'and DDZL_Price_BUY.BUYNO=DDZL.BUYNO'
      'where INVOICE_D.INV_NO='#39'Y-0497/TX/23'#39)
    Left = 322
    Top = 276
    object Query4Invoice: TStringField
      FieldName = 'Invoice'
      FixedChar = True
      Size = 15
    end
    object Query4INV_DATE: TDateTimeField
      FieldName = 'INV_DATE'
    end
    object Query4KHPO: TStringField
      FieldName = 'KHPO'
      FixedChar = True
      Size = 30
    end
    object Query4NameBuyer: TStringField
      FieldName = 'NameBuyer'
      FixedChar = True
      Size = 150
    end
    object Query4AddressBuyer: TStringField
      FieldName = 'AddressBuyer'
      FixedChar = True
      Size = 200
    end
    object Query4NameSeller: TStringField
      FieldName = 'NameSeller'
      FixedChar = True
      Size = 49
    end
    object Query4AddressSeller: TStringField
      FieldName = 'AddressSeller'
      FixedChar = True
      Size = 86
    end
    object Query4CountryOrigin: TStringField
      FieldName = 'CountryOrigin'
      FixedChar = True
      Size = 7
    end
    object Query4ARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
      Size = 50
    end
    object Query4STYLE_NAME: TStringField
      FieldName = 'STYLE_NAME'
      FixedChar = True
      Size = 50
    end
    object Query4PAIRS: TIntegerField
      FieldName = 'PAIRS'
    end
    object Query4Value: TCurrencyField
      FieldName = 'Value'
      DisplayFormat = '##,#0.00'
    end
    object Query4RYNO: TStringField
      FieldName = 'RYNO'
      Size = 50
    end
  end
  object DS3: TDataSource
    DataSet = Query3
    Left = 282
    Top = 244
  end
  object DS4: TDataSource
    DataSet = Query4
    Left = 322
    Top = 244
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 88
    Top = 272
  end
end
