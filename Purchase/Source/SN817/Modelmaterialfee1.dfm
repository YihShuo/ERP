object Modelmaterialfee: TModelmaterialfee
  Left = 252
  Top = 103
  Width = 1275
  Height = 623
  Caption = 'Model material fee'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
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
    Width = 1259
    Height = 584
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 1257
      Height = 84
      Align = alTop
      TabOrder = 0
      object Label3: TLabel
        Left = 30
        Top = 16
        Width = 55
        Height = 20
        Caption = 'Season'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 233
        Top = 13
        Width = 43
        Height = 20
        Caption = 'Stage'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 32
        Top = 50
        Width = 52
        Height = 20
        Caption = 'Vendor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 240
        Top = 51
        Width = 32
        Height = 20
        Caption = 'SR#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 427
        Top = 13
        Width = 130
        Height = 20
        Caption = 'Oversea/Domestic'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 687
        Top = 12
        Width = 43
        Height = 20
        Caption = 'Brand'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Edit1: TEdit
        Left = 89
        Top = 14
        Width = 98
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object Edit2: TEdit
        Left = 282
        Top = 12
        Width = 101
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object Button1: TButton
        Left = 807
        Top = 7
        Width = 61
        Height = 24
        Caption = 'Query'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 1050
        Top = 48
        Width = 61
        Height = 24
        Caption = 'Excel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Visible = False
        OnClick = Button2Click
      end
      object VendorEdit: TEdit
        Left = 89
        Top = 46
        Width = 144
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object SREdit: TEdit
        Left = 281
        Top = 45
        Width = 192
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object ComboBox1: TComboBox
        Left = 561
        Top = 12
        Width = 104
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 6
        Items.Strings = (
          ''
          'Oversea'
          'Domestic'
          '')
      end
      object CheckBox1: TCheckBox
        Left = 480
        Top = 48
        Width = 257
        Height = 17
        Caption = 'Place PO Date                        '#65374
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object DTP1: TDateTimePicker
        Left = 611
        Top = 44
        Width = 86
        Height = 21
        Date = 44602.424117118050000000
        Format = 'yyyy/MM/dd'
        Time = 44602.424117118050000000
        TabOrder = 8
      end
      object DTP2: TDateTimePicker
        Left = 723
        Top = 44
        Width = 86
        Height = 21
        Date = 44602.424117118050000000
        Format = 'yyyy/MM/dd'
        Time = 44602.424117118050000000
        TabOrder = 9
      end
      object Button3: TButton
        Left = 883
        Top = 7
        Width = 75
        Height = 25
        Caption = 'EXCEL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        OnClick = Button3Click
      end
      object ComboBox2: TComboBox
        Left = 738
        Top = 12
        Width = 57
        Height = 21
        Style = csDropDownList
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        ParentFont = False
        TabOrder = 11
        Visible = False
        Items.Strings = (
          ''
          'SKX'
          'SRL')
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 85
      Width = 1257
      Height = 498
      Align = alClient
      Caption = 'Panel3'
      TabOrder = 1
      object DBGridEh1: TDBGridEh
        Left = 1
        Top = 1
        Width = 1255
        Height = 496
        Align = alClient
        DataSource = DataSource1
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -10
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -10
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Season'
            Footer.ValueType = fvtCount
            Footers = <>
            Width = 43
          end
          item
            EditButtons = <>
            FieldName = 'Stage'
            Footers = <>
            Width = 33
          end
          item
            EditButtons = <>
            FieldName = 'SR'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Dormestic/Oversea'
            Footers = <>
            Width = 99
          end
          item
            EditButtons = <>
            FieldName = 'Vendor'
            Footers = <>
            Width = 88
          end
          item
            EditButtons = <>
            FieldName = 'Place PO Date'
            Footers = <>
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'In Storage Date'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Material Name'
            Footers = <>
            Width = 215
          end
          item
            EditButtons = <>
            FieldName = 'Material QTY'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'UNIT'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Unit Price VND'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Total Price VND'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Unit Price USD'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Total Price USD'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Quotation Price USD'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Quotation Total Price USD'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'VNDFreight'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'USDFreight'
            Footers = <>
          end>
      end
    end
  end
  object Query1: TQuery
    OnCalcFields = Query1CalcFields
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select kfxxzl.JiJie as Season,YPZL.KFJD as Stage,kfxxzl.DEVCODE ' +
        'as SR'
      
        ',case when ZSZL_DEV.Country = '#39'VN'#39' then '#39'VN'#39' when (ZSZL_DEV.Coun' +
        'try <> '#39#39') and (ZSZL_DEV.Country is not null) then '#39'Oversea'#39' els' +
        'e '#39#39' end as '#39'Dormestic/Oversea'#39
      
        ',zszl.zsjc as Vendor,cgzl.CGDate as '#39'Place PO Date'#39',CGZLSS.CLBH,' +
        'CLZL.ywpm as '#39'Material Name'#39',CGZLSS.Qty as '#39'Material QTY'#39
      
        ',case when MaterialMOQ.SamplePrice IS not null then MaterialMOQ.' +
        'SamplePrice else 0 end as '#39'Quotation Price USD'#39
      
        ',case when MaterialMOQ.SamplePrice IS not null then MaterialMOQ.' +
        'SamplePrice * isnull(CGZLSS.Qty,0) else 0 end as '#39'Quotation Tota' +
        'l Price USD'#39
      
        ',case when CGZLInvoiceS.Other_fee_VND IS not null then CGZLInvoi' +
        'ceS.Other_fee_VND else 0 end as VNDFreight'
      
        ',case when CGZLInvoiceS.Other_fee_USD IS not null then CGZLInvoi' +
        'ceS.Other_fee_USD else 0 end as USDFreight'
      ',CGZL.CGNO,CLZL.DWBH as '#39'UNIT'#39
      'from kfxxzl'
      
        'left join YPZL on YPZL.XieXing = kfxxzl.XieXing and YPZL.SheHao ' +
        '= kfxxzl.SheHao'
      'left join CGZLSS on CGZLSS.ZLBH = YPZL.YPDH'
      'left join CGZL on CGZLSS.CGNO = CGZL.CGNO'
      'left join ZSZL on CGZL.ZSBH = ZSZL.zsdh'
      'left join ZSZL_DEV on ZSZL_DEV.zsdh = ZSZL.zsdh'
      
        'left join MaterialMOQ on MaterialMOQ.CLBH = cgzlss.CLBH and Mate' +
        'rialMOQ.Season = kfxxzl.JiJie'
      
        'left join CGZLInvoiceS on CGZLInvoiceS.CGNO = CGZLSS.CGNO and CG' +
        'ZLInvoiceS.CLBH = CGZLSS.CLBH'
      'left join CGZLInvoice on CGZLInvoice.CINO = CGZLInvoiceS.CINO'
      'left join CLZL on CGZLSS.CLBH = CLZL.cldh'
      
        'where CGZLInvoice.invoice not like '#39'%IMPROVE'#39' and ZSZL_DEV.GSBH ' +
        '= '#39'CDC'#39
      'and kfxxzl.DEVCODE = '#39'G41808-CT002U-22F01'#39
      'order by CGZLSS.CLBH')
    Left = 137
    Top = 249
    object Query1Season: TStringField
      FieldName = 'Season'
      FixedChar = True
    end
    object Query1Stage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 3
    end
    object Query1SR: TStringField
      FieldName = 'SR'
      FixedChar = True
    end
    object Query1DormesticOversea: TStringField
      FieldName = 'Dormestic/Oversea'
      FixedChar = True
      Size = 7
    end
    object Query1Vendor: TStringField
      FieldName = 'Vendor'
      FixedChar = True
    end
    object Query1PlacePODate: TDateTimeField
      FieldName = 'Place PO Date'
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1MaterialName: TStringField
      FieldName = 'Material Name'
      FixedChar = True
      Size = 200
    end
    object Query1MaterialQTY: TCurrencyField
      FieldName = 'Material QTY'
      currency = False
    end
    object Query1QuotationPriceUSD: TCurrencyField
      FieldName = 'Quotation Price USD'
      currency = False
    end
    object Query1QuotationTotalPriceUSD: TCurrencyField
      FieldName = 'Quotation Total Price USD'
      currency = False
    end
    object Query1VNDFreight: TCurrencyField
      FieldName = 'VNDFreight'
      currency = False
    end
    object Query1USDFreight: TCurrencyField
      FieldName = 'USDFreight'
      currency = False
    end
    object Query1RKDate: TDateField
      FieldKind = fkCalculated
      FieldName = 'In Storage Date'
      Calculated = True
    end
    object Query1USDPrice: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Unit Price USD'
      Calculated = True
    end
    object Query1VNDPrice: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Unit Price VND'
      Calculated = True
    end
    object Query1USDAmount: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total Price USD'
      Calculated = True
    end
    object Query1VNDAmount: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total Price VND'
      Calculated = True
    end
    object Query1CGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object Query1UNIT: TStringField
      FieldName = 'UNIT'
      FixedChar = True
      Size = 4
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 137
    Top = 217
  end
  object Query2: TQuery
    DatabaseName = 'dB'
    Left = 137
    Top = 297
  end
  object SaveDialog1: TSaveDialog
    Left = 425
    Top = 261
  end
end
