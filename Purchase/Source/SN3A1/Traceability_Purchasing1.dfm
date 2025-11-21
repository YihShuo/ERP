object Traceability_Purchasing: TTraceability_Purchasing
  Left = 189
  Top = 150
  Width = 1767
  Height = 675
  Caption = 'Traceability_Purchasing'
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
  object Splitter1: TSplitter
    Left = 1269
    Top = 81
    Height = 555
    Align = alRight
    Color = clSkyBlue
    ParentColor = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1751
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 230
      Top = 15
      Width = 43
      Height = 16
      Caption = 'MatNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 210
      Top = 47
      Width = 62
      Height = 16
      Caption = 'MatName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 12
      Top = 47
      Width = 58
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'BuyNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 24
      Top = 15
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
    object MatNoEdit: TEdit
      Left = 278
      Top = 11
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Button1: TButton
      Left = 441
      Top = 22
      Width = 75
      Height = 35
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Button1Click
    end
    object MatNameEdit: TEdit
      Left = 278
      Top = 43
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Button3: TButton
      Left = 529
      Top = 22
      Width = 75
      Height = 35
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = Button3Click
    end
    object BuyNoEdit: TEdit
      Left = 72
      Top = 43
      Width = 121
      Height = 24
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object RYEdit: TEdit
      Left = 72
      Top = 11
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
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 81
    Width = 1269
    Height = 555
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'BUYNO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footer.FieldName = 'PMRNo'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = 'BUY ORDER'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'FlexID'
        Footers = <>
        Title.Caption = 'FLEX ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'KHPO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        PickList.Strings = (
          ''
          'Hien truong'
          'Phong rap'
          'Khai thac'
          'Khach hang'
          'Ky thuat'
          'Nha cung ung'
          'Khac')
        Title.Caption = 'CUSTOMER PO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'RY#'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'SKU'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'SR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'SR#'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 125
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'PO# Qty'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'CGNO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'MatPO#'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'MATERIAL CODE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'MATERIAL DESCRIPTION'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = 'UNIT'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'CQDH'
        Footers = <>
        Title.Caption = 'LOCATION'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'QTY USAGE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'CGQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'QTY ORDERED'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'RKQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'QTY INPUT W/H'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'UseStock'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'USE STOCK'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'zsywjc'
        Footers = <>
        Title.Caption = 'VENDOR NAME'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'Address_Of_Buy_Com'
        Footers = <>
        Title.Caption = 'ADDRESS OF BUYING COMPANY'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'Address_Of_Sell_Com'
        Footers = <>
        Title.Caption = 'ADDRESS OF SELL COMPANY'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'usprice'
        Footers = <>
        Title.Caption = 'PRICE USD'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'vnprice'
        Footers = <>
        Title.Caption = 'PRICE VND'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'DOCNO'
        Footers = <>
        Title.Caption = 'INVOICE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'Declaretion'
        Footers = <>
        Title.Caption = 'NUMBER OF INFORMATION DECLARATION/INVOICE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'BillNo'
        Footers = <>
        Title.Caption = 'BILL/NO DELIVERY NOTE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'CountryOrigin'
        Footers = <>
        Title.Caption = 'COUNTRY OF ORIGIN'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'MaterialOrigin'
        Footers = <>
        Title.Caption = 'Origin of material'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'CertificateOrigin'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        Footers = <>
        Title.Caption = 'Certificate of origin'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'LotFile'
        Footers = <>
        Title.Caption = 'Count_LotFile'
      end
      item
        EditButtons = <>
        FieldName = 'NewFile'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        Footers = <>
        Title.Caption = 'LotFile'
        Width = 71
      end
      item
        EditButtons = <>
        FieldName = 'FKBH'
        Footers = <>
        Title.Caption = 'Paid No'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 80
      end
      item
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'PaymentDate'
        Footers = <>
        Title.Caption = 'Paid date'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'USERNAME'
        Footers = <>
        Title.Caption = 'Name of payer'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Title.Caption = 'Department'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'Amount_USD'
        Footers = <>
        Title.Caption = 'Amount USD'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'Amount_VND'
        Footers = <>
        Title.Caption = 'Amount VND'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 70
      end
      item
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'RKDate'
        Footers = <>
        Title.Caption = 'INPUT W/H DATE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'RKNO'
        Footers = <>
        Title.Caption = 'INPUT W/H NO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'CGDate'
        Footers = <>
        Title.Caption = 'PO DATE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'PlaceDelivery'
        Footers = <>
        Title.Caption = 'Place of delivery'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'Carrier'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'Packinglocation'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'Packdate'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 60
      end>
  end
  object Panel17: TPanel
    Left = 1272
    Top = 81
    Width = 479
    Height = 555
    Align = alRight
    TabOrder = 2
    object Panel22: TPanel
      Left = 1
      Top = 1
      Width = 477
      Height = 553
      Align = alClient
      TabOrder = 0
      object Panel23: TPanel
        Left = 1
        Top = 1
        Width = 475
        Height = 48
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Button2: TButton
          Left = 7
          Top = 5
          Width = 75
          Height = 35
          Caption = 'Excel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Button2Click
        end
      end
      object DBGridEh2: TDBGridEh
        Left = 1
        Top = 49
        Width = 475
        Height = 503
        Align = alClient
        DataSource = DS2
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDblClick = DBGridEh2DblClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            PickList.Strings = (
              ''
              'Hien truong'
              'Phong rap'
              'Khai thac'
              'Khach hang'
              'Ky thuat'
              'Nha cung ung'
              'Khac')
            Title.Caption = 'MATERIAL CODE'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'ZLBH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Caption = 'RY#'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'LotNO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
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
            FieldName = 'LotFile'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            Footers = <>
            ReadOnly = True
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 120
          end>
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select  isnull(DDZLTW.BUYNO,0) as BUYNO,DDZL.KHPO ,ZLZLS2.ZLBH,X' +
        'XZL.Article,kfxxzl.DEVCODE as SR,DDZL.Pairs'
      
        #9#9',ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH ,case when (DDZLTW.' +
        'DDZT<>'#39'C'#39' and isnull(SCZL.IsCGZLS,'#39#39')<>'#39'N'#39') then isnull(sum(ZLZL' +
        'S2.CLSL),0) else 0 end as CLSL'
      
        #9#9',isnull(CGZL.CGQty,0) as CGQty, RKZL.RKQty as RKQty,isnull(CGK' +
        'CUSE.Qty,0) as UseStock,Max(zszl.zsywjc) as zsywjc,'#39#39' as '#39'Addres' +
        's_Of_Buy_Com'#39',RKZL.yjdz as '#39'Address_Of_Sell_Com'#39
      
        #9#9',isnull(rkzl.usprice,CGZL.USPrice) as usprice,isnull(rkzl.vnpr' +
        'ice,CGZL.VNPrice) as vnprice'
      
        '        ,RKZL.DOCNO,RKZL.Declaretion,RKZL.FKBH,RKZL.PaymentDate,' +
        'RKZL.USERNAME,RKZL.DepName,RKZL.RKDate,RKZl.RKNO,zszl_lot.LotFil' +
        'e,max (lot.LotFile) as NewFile'
      'from ZLZLS2 with (nolock)  '
      
        'inner join DDZl  with (nolock) on DDZl.DDBH=ZLZLS2.ZLBH and DDZL' +
        '.GSBH='#39'VA12'#39' and DDZL.DDBH  like '#39'Y2307-0007%'#39' '
      'left join DDZLTW with (nolock) on DDZLTW.DDBH=ZLZLS2.ZLBH'
      'left join SCZL with (nolock) on ZLZLS2.ZLBH = SCZL.SCBH'
      'left join CLZL  with (nolock) on CLZL.CLDH=ZLZLs2.CLBH '
      'left join KFZL  with (nolock) on KFZl.KFDH=DDZLTW.KHBH '
      'left join ZLZL  with (nolock) on ZLZL.ZLBH=ZLZLS2.ZLBH'
      'left join ( '
      
        '           Select CGKCUSES.GSBH,CGKCUSES.ZLBH,CGKCUSES.CLBH,Sum(' +
        'CGKCUSES.Qty) as Qty  from CGKCUSES with (nolock)'
      '           where CGKCUSES.GSBH='#39'VA12'#39
      
        '           Group by CGKCUSES.GSBH,CGKCUSES.ZLBH,CGKCUSES.CLBH) C' +
        'GKCUSE  on CGKCUSE.ZLBH=ZLZLS2.ZLBH and CGKCUSE.CLBH=ZLZLS2.CLBH' +
        ' and CGKCUSE.GSBH='#39'VA12'#39
      'left join ( '
      
        '           Select CGYGUSES.GSBH,CGYGUSES.ZLBH,CGYGUSES.CLBH,Sum(' +
        'CGYGUSES.Qty) as Qty  from CGYGUSES with (nolock)'
      '           where CGYGUSES.GSBH='#39'VA12'#39
      
        '           Group by CGYGUSES.GSBH,CGYGUSES.ZLBH,CGYGUSES.CLBH) C' +
        'GYGUSE  on CGYGUSE.ZLBH=ZLZLS2.ZLBH and CGYGUSE.CLBH=ZLZLS2.CLBH' +
        ' and CGYGUSE.GSBH='#39'VA12'#39
      
        'left join XXZL  with (nolock) on XXZl.XieXing=DDZLTW.XieXing and' +
        ' XXZL.SheHao=DDZLTW.SheHao'
      
        'left join KFXXZL  with (nolock) on KFXXZL.XieXing=DDZLTW.XieXing' +
        ' and KFXXZL.SheHao=DDZLTW.SheHao'
      
        'left join XXBWFL  with (nolock) on XXBWFL.XieXing=XXZL.XieXing a' +
        'nd XXBWFL.BWBH=ZLZLS2.BWBH '
      'left join XXBWFLS  with (nolock) on XXBWFLS.FLBH=XXBWFL.FLBH '
      'left join lbzls on lbzls.lbdh=ddzl.ddgb and lbzls.lb='#39'06'#39' '
      
        'left join lbzls lbzls_vul on lbzls_vul.lbdh=XXZL.XieGN and lbzls' +
        '_vul.lb='#39'03'#39' '
      'left join bwzl on zlzls2.bwbh=bwzl.bwdh'
      
        ' left join (select ZLBH,CLBH,count (LotFile) as LotFile,zszl_lot' +
        '.USERID,zszl_lot.LotNO  from (select KCRKScan_RFSSS.CLBH, KCRKSC' +
        'an_RFSSS.ZLBH,zszl_lot.LotFile,KCRKSCan_RFSS.USERID,KCRKSCan_RFS' +
        'S.LotNO '
      
        ' from KCRKSCan_RFSS left join KCRKSCan_RFSSS on KCRKScan_RFSS.SC' +
        'NO = KCRKScan_RFSSS.SCNO and KCRKScan_RFSS.CLBH = KCRKScan_RFSSS' +
        '.CLBH and KCRKScan_RFSS.Pack = KCRKScan_RFSSS.Pack  '
      
        '                    left join zszl_lot on zszl_lot.LotNO=KCRKSCa' +
        'n_RFSS.LotNO and zszl_lot.zsdh=KCRKSCan_RFSS.USERID '
      #9#9#9#9#9'where   zszl_lot.LotFile IS NOT NULL'
      
        '                    group by KCRKScan_RFSSS.CLBH, KCRKSCan_RFSSS' +
        '.ZLBH,zszl_lot.LotFile,KCRKSCan_RFSS.USERID,KCRKSCan_RFSS.LotNO ' +
        ') zszl_lot  group by ZLBH,CLBH,USERID,LotNO ) zszl_lot on zszl_l' +
        'ot.ZLBH=ZLZLS2.ZLBH and zszl_lot.CLBH=ZLZLS2.CLBH'
      ''
      
        ' left join zszl_lot lot on lot.LotNO=zszl_lot.LotNO and lot.zsdh' +
        '=zszl_lot.USERID'
      
        'left join (select CGZLSS.ZLBH,CGZLSS.CLBH,sum(CGZLSS.Qty) as CGQ' +
        'ty,'
      
        '                  max(CGZLSS.CFMDate) as CFMDate,max(CGZL.CGDate' +
        ') as CGDate,'
      
        '                  max(CGZL.CGNO) as CGNO,max(CGZLSS.YQDate) as Y' +
        'QDate,max(CGZLS.QUSPrice) as USPrice,max(CGZLS.QVNPrice) as VNPr' +
        'ice,max(CGZLSS.MaterialETC) as MaterialETC '
      '           from CGZLSS with (nolock) '
      
        '           inner join DDZL on DDZL.DDBH = CGZLSS.ZLBH and DDZL.G' +
        'SBH='#39'VA12'#39' and DDZL.DDBH  like '#39'Y2307-0007%'#39' '
      
        '           left join CGZLS with (nolock)  on CGZLS.CGNO=CGZLSS.C' +
        'GNO and CGZLS.CLBH=CGZLSS.CLBH '
      
        '           left join  CGZL with (nolock)  on CGZl.CGNO=CGZLSS.CG' +
        'NO'
      
        '           where CGZL.CGLX in ('#39'1'#39','#39'2'#39','#39'5'#39') and  DDZL.GSBH='#39'VA12' +
        #39'  '
      '                 and CGZLSS.ZLBH  like '#39'Y2307-0007%'#39' '
      '           group by CGZLSS.ZLBH,CGZLSS.CLBH ) CGZL'
      
        '                 on CGZL.ZLBH=ZLZLS2.ZLBH and CGZL.CLBH=ZLZLS2.C' +
        'LBH'
      
        'left join (select KCRKS.CGBH as ZLBH ,KCRKS.CLBH,sum(KCRKS.Qty )' +
        ' as RKQty, '
      
        '                  max(KCRKS.RKNO) as RKNO,max(KCRK.USERDate) as ' +
        'RKDate, '
      
        '                  max(kcrks.usprice) as usprice,max(kcrks.vnpric' +
        'e) as vnprice ,Declaretion,KCRK.DOCNO,KCRK.ZSBH,zszl.yjdz'
      
        #9#9#9#9'  ,CGZL_Payment.FKBH,CGZL_Payment.USERDATE as PaymentDate,Bu' +
        'sers.USERNAME,DepName'
      '           from  KCRKS with (nolock)  '
      
        '           inner join DDZL on DDZL.DDBH=KCRKS.CGBH and DDZL.GSBH' +
        '='#39'VA12'#39' and DDZL.DDBH  like '#39'Y2307-0007%'#39' '
      
        '           left join KCRK with (nolock)  on KCRK.RKNO=KCRKS.RKNO' +
        ' '
      #9#9'   left join KCPK on kcrk.RKNO=kcpk.PKNO'
      #9#9'   left join zszl on kcrk.ZSBH=zszl.zsdh'
      
        #9#9'   left join CGZL_PaymentS on kcpk.Declaretion=CGZL_PaymentS.D' +
        'ECLARATION and kcrk.DOCNO=CGZL_PaymentS.DOCNO'
      
        #9#9'   left join CGZL_PaymentSS on CGZL_PaymentSS.VATNO=KCRK.DOCNO' +
        ' and CGZL_PaymentSS.ZSBH_MST=zszl.tybh'
      
        #9#9'   left join CGZL_Payment on isnull(CGZL_PaymentS.FKBH,CGZL_Pa' +
        'ymentSS.FKBH)=CGZL_Payment.FKBH'
      #9#9'   left join BDepartment on CGZL_Payment.DEPID=BDepartment.ID'
      #9#9'   left join Busers on CGZL_Payment.USERID=Busers.USERID '
      '           where DDZL.GSBH='#39'VA12'#39
      '           and KCRK.SFL<>'#39'THU HOI'#39
      '                 and KCRKS.CGBH  like '#39'Y2307-0007%'#39' '
      
        '           group by KCRKS.CGBH,KCRKS.CLBH,Declaretion,KCRK.DOCNO' +
        ',KCRK.ZSBH,zszl.yjdz,CGZL_Payment.FKBH,CGZL_Payment.USERDATE,Bus' +
        'ers.USERNAME,DepName ) RKZL'
      
        '                 on RKZL.ZLBH=ZLZLS2.ZLBH and RKZL.CLBH=ZLZLS2.C' +
        'LBH '
      
        'left join (select zsdh,zsywjc from zszl) zszl on ZLZLS2.CSBH=zsz' +
        'l.zsdh'
      'where DDZL.GSBH='#39'VA12'#39
      '       and ZLZLS2.CLBH not like '#39'W%'#39
      
        '       and not exists(select CLBH from KCSAFE where KCSAFE.CLBH=' +
        'ZLZLS2.CLBH )'
      '       and ZLZLS2.ZLBH  like '#39'Y2307-0007%'#39' '
      '       and ZLZLS2.ZMLB='#39'N'#39
      '       and ZLZLS2.CLSL<>0'
      '       and (XXBWFLS.DFL<>'#39'G'#39' or XXBWFLS.DFL is null)  '
      
        'group by DDZlTW.BUYNO,DDZL.KHPO,ZLZLS2.ZLBH,XXZL.Article,kfxxzl.' +
        'DEVCODE,DDZL.Pairs,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,zsz' +
        'l_lot.LotFile'
      
        #9#9',CGZl.CGQty,RKZL.RKQty,CGKCUSE.Qty,rkzl.USPrice,rkzl.VNPrice,C' +
        'GZL.USPrice,CGZL.VNPrice,RKZL.DOCNO'
      
        #9#9',RKZL.RKNO,RKZL.RKDate,SCZL.IsCGZLS,DDZLTW.DDZT,RKZL.yjdz,RKZL' +
        '.Declaretion,RKZL.FKBH,RKZL.PaymentDate,RKZL.USERNAME,RKZL.DepNa' +
        'me,RKZL.RKDate,RKZl.RKNO'
      ''
      ''
      '')
    Left = 530
    Top = 324
    object Query1BUYNO: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 15
    end
    object Query1FlexID: TStringField
      FieldName = 'FlexID'
      Size = 15
    end
    object Query1KHPO: TStringField
      FieldName = 'KHPO'
      FixedChar = True
      Size = 30
    end
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1SR: TStringField
      FieldName = 'SR'
      FixedChar = True
    end
    object Query1Pairs: TIntegerField
      FieldName = 'Pairs'
      DisplayFormat = '##,#0'
    end
    object Query1CGNO: TStringField
      FieldName = 'CGNO'
      Size = 11
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1CQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object Query1CLSL: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0'
    end
    object Query1CGQty: TCurrencyField
      FieldName = 'CGQty'
      DisplayFormat = '##,#0.0'
    end
    object Query1RKQty: TCurrencyField
      FieldName = 'RKQty'
      DisplayFormat = '##,#0.0'
    end
    object Query1UseStock: TCurrencyField
      FieldName = 'UseStock'
      DisplayFormat = '##,#0.0'
    end
    object Query1zsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object Query1Address_Of_Buy_Com: TStringField
      FieldName = 'Address_Of_Buy_Com'
      FixedChar = True
      Size = 1
    end
    object Query1Address_Of_Sell_Com: TStringField
      FieldName = 'Address_Of_Sell_Com'
      FixedChar = True
      Size = 150
    end
    object Query1usprice: TFloatField
      FieldName = 'usprice'
      DisplayFormat = '##,#0.00000'
    end
    object Query1vnprice: TCurrencyField
      FieldName = 'vnprice'
      DisplayFormat = '##,#0'
    end
    object Query1DOCNO: TStringField
      FieldName = 'DOCNO'
      FixedChar = True
      Size = 40
    end
    object Query1Declaretion: TStringField
      FieldName = 'Declaretion'
      FixedChar = True
      Size = 50
    end
    object Query1BillNo: TStringField
      FieldName = 'BillNo'
      Size = 50
    end
    object Query1CountryOrigin: TStringField
      FieldName = 'CountryOrigin'
      Size = 50
    end
    object Query1MaterialOrigin: TStringField
      FieldName = 'MaterialOrigin'
      Size = 50
    end
    object Query1CertificateOrigin: TStringField
      FieldName = 'CertificateOrigin'
      Size = 100
    end
    object Query1FKBH: TStringField
      FieldName = 'FKBH'
      FixedChar = True
      Size = 15
    end
    object Query1PaymentDate: TDateTimeField
      FieldName = 'PaymentDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1USERNAME: TStringField
      FieldName = 'USERNAME'
      FixedChar = True
      Size = 30
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object Query1Amount_USD: TCurrencyField
      FieldName = 'Amount_USD'
      DisplayFormat = '##,#0.00000'
    end
    object Query1Amount_VND: TCurrencyField
      FieldName = 'Amount_VND'
      DisplayFormat = '##,#0'
    end
    object Query1RKDate: TDateTimeField
      FieldName = 'RKDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1RKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object Query1CGDate: TDateTimeField
      FieldName = 'CGDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1PlaceDelivery: TStringField
      FieldName = 'PlaceDelivery'
      Size = 150
    end
    object Query1Carrier: TStringField
      FieldName = 'Carrier'
      Size = 100
    end
    object Query1Packinglocation: TStringField
      FieldName = 'Packinglocation'
      Size = 150
    end
    object Query1Packdate: TStringField
      FieldName = 'Packdate'
      Size = 30
    end
    object Query1LotFile: TIntegerField
      FieldName = 'LotFile'
    end
    object Query1NewFile: TStringField
      FieldName = 'NewFile'
      FixedChar = True
      Size = 50
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 530
    Top = 292
  end
  object DS2: TDataSource
    DataSet = QFile
    Left = 1234
    Top = 284
  end
  object QFile: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'select KCRKSCan_RFSSS.CLBH, KCRKSCan_RFSSS.ZLBH,KCRKSCan_RFSS.Lo' +
        'tNO, zszl_lot.LotFile from KCRKSCan_RFSS'
      
        'left join KCRKSCan_RFSSS on KCRKScan_RFSS.SCNO = KCRKScan_RFSSS.' +
        'SCNO and KCRKScan_RFSS.CLBH = KCRKScan_RFSSS.CLBH and KCRKScan_R' +
        'FSS.Pack = KCRKScan_RFSSS.Pack'
      
        'left join zszl_lot on zszl_lot.LotNO=KCRKSCan_RFSS.LotNO and zsz' +
        'l_lot.zsdh=KCRKSCan_RFSS.USERID'
      
        'WHERE KCRKScan_RFSSS.ZLBH =:ZLBH and  KCRKScan_RFSSS.CLBH =:CLBH' +
        ' '
      '      AND LotFile IS NOT NULL'
      
        'Group by KCRKSCan_RFSSS.CLBH, KCRKSCan_RFSSS.ZLBH,KCRKSCan_RFSS.' +
        'LotNO, zszl_lot.LotFile')
    Left = 1234
    Top = 324
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ZLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLBH'
        ParamType = ptUnknown
      end>
    object QFileCLBH: TStringField
      FieldName = 'CLBH'
      Origin = 'DB.KCRKSCan_RFS.CLBH'
      FixedChar = True
      Size = 15
    end
    object QFileZLBH: TStringField
      FieldName = 'ZLBH'
    end
    object QFileLotNO: TStringField
      FieldName = 'LotNO'
      Origin = 'DB.KCRKScan_RFSS.LotNO'
      FixedChar = True
      Size = 50
    end
    object QFileLotFile: TStringField
      FieldName = 'LotFile'
      Size = 50
    end
  end
end
