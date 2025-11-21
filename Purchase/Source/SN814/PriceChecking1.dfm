object PriceChecking: TPriceChecking
  Left = 604
  Top = 308
  Width = 1305
  Height = 675
  Caption = 'ActuallyPrice && ERP_Price'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 637
    Align = alClient
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 1287
      Height = 635
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'PriceChecking'
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 1279
          Height = 57
          Align = alTop
          TabOrder = 0
          object Label1: TLabel
            Left = 280
            Top = 10
            Width = 56
            Height = 20
            Caption = 'Season'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 408
            Top = 9
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
          object Label3: TLabel
            Left = 136
            Top = 10
            Width = 23
            Height = 20
            Caption = 'TO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Edit2: TEdit
            Left = 344
            Top = 8
            Width = 57
            Height = 28
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object Edit3: TEdit
            Left = 456
            Top = 8
            Width = 57
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
            Left = 520
            Top = 8
            Width = 75
            Height = 25
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
            Left = 600
            Top = 8
            Width = 75
            Height = 25
            Caption = 'Excel'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = Button2Click
          end
          object DTP1: TDateTimePicker
            Left = 32
            Top = 8
            Width = 97
            Height = 21
            Date = 43318.602914895830000000
            Format = 'yyyy/MM/dd'
            Time = 43318.602914895830000000
            TabOrder = 4
          end
          object DTP2: TDateTimePicker
            Left = 168
            Top = 8
            Width = 97
            Height = 21
            Date = 43318.602914895830000000
            Format = 'yyyy/MM/dd'
            Time = 43318.602914895830000000
            TabOrder = 5
          end
          object CheckBox1: TCheckBox
            Left = 16
            Top = 8
            Width = 17
            Height = 17
            Checked = True
            State = cbChecked
            TabOrder = 6
          end
        end
        object Panel3: TPanel
          Left = 0
          Top = 57
          Width = 1279
          Height = 550
          Align = alClient
          Caption = 'Panel3'
          TabOrder = 1
          object DBGridEh1: TDBGridEh
            Left = 1
            Top = 1
            Width = 1277
            Height = 548
            Align = alClient
            DataSource = DataSource1
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -11
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                EditButtons = <>
                FieldName = 'CFMID'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'Season'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'Stage'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'MaterialID'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'YWPM'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'dwbh'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'VendorCODE'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'Vendor'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'PaQty'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'Qty'
                Footers = <>
              end
              item
                DisplayFormat = '0.####'
                EditButtons = <>
                FieldName = 'USD_Act_Price'
                Footers = <>
              end
              item
                DisplayFormat = '0.####'
                EditButtons = <>
                FieldName = 'USD_Act_amount'
                Footers = <>
              end
              item
                DisplayFormat = '0.####'
                EditButtons = <>
                FieldName = 'VND_Act_Price'
                Footers = <>
              end
              item
                DisplayFormat = '0.####'
                EditButtons = <>
                FieldName = 'VND_Act_amount'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'CGBH'
                Footers = <>
              end
              item
                DisplayFormat = '0.####'
                EditButtons = <>
                FieldName = 'ERP_USDPrice'
                Footers = <>
              end
              item
                DisplayFormat = '0.####'
                EditButtons = <>
                FieldName = 'ERP_VNDPrice'
                Footers = <>
              end
              item
                DisplayFormat = '0.####'
                EditButtons = <>
                FieldName = 'USD_ERP_amount'
                Footers = <>
              end
              item
                DisplayFormat = '0.####'
                EditButtons = <>
                FieldName = 'VND_ERP_amount'
                Footers = <>
              end>
          end
        end
      end
    end
  end
  object CDCExcel: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select main.*,ERP_USDPrice,ERP_VNDPrice,ERP_USDPrice*main.qty as' +
        ' USD_ERP_amount,ERP_VNDPrice*main.qty as VND_ERP_amount from ('
      
        'select KCRK.CFMID,CGZL.Season,Cgzl.purpose as Stage,kcrks.clbh a' +
        's MaterialID,CLZL.YWPM,CLZL.dwbh,zszl.zsdh as VendorCODE,ZSZL.ZS' +
        'YWJC as Vendor,KCRKS.PaQty,KCRKS.Qty'
      
        ',convert(float,KCRKS.USPrice) as USD_Act_Price,KCRKS.USACC as US' +
        'D_Act_amount,'
      
        'KCRKS.VNPrice  as VND_Act_Price,KCRKS.VNACC as VND_Act_amount,KC' +
        'RKS.CGBH'
      'from KCRK'
      'left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH'
      'left join KCCK on KCCK.CKBH=KCRK.CKBH'
      'Left join CGZL on CGZL.CGNO=KCRK.ZSNO '
      'left join kcrks on kcrks.rkno = kcrk.rkno '
      'left join CLZL on CLZL.CLDH=KCRKS.CLBH '
      'where KCCK.GSBH='#39'CDC'#39' '
      'and cgzl.season ='#39'19S'#39' '
      ')main'
      
        'left join (select clbh,season,sampleprice as ERP_USDPrice,sample' +
        'pricevn as ERP_VNDPrice from materialmoq)materialmoq on material' +
        'moq.CLBH=main.MaterialID and materialmoq.season=main.season'
      'order by main.Season,main.stage')
    Left = 325
    Top = 218
    object CDCExcelCFMID: TStringField
      FieldName = 'CFMID'
      FixedChar = True
      Size = 15
    end
    object CDCExcelSeason: TStringField
      FieldName = 'Season'
      FixedChar = True
    end
    object CDCExcelStage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 15
    end
    object CDCExcelMaterialID: TStringField
      FieldName = 'MaterialID'
      FixedChar = True
      Size = 15
    end
    object CDCExcelYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object CDCExceldwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object CDCExcelVendorCODE: TStringField
      FieldName = 'VendorCODE'
      FixedChar = True
      Size = 6
    end
    object CDCExcelVendor: TStringField
      FieldName = 'Vendor'
      FixedChar = True
    end
    object CDCExcelPaQty: TFloatField
      FieldName = 'PaQty'
    end
    object CDCExcelQty: TCurrencyField
      FieldName = 'Qty'
    end
    object CDCExcelUSD_Act_Price: TFloatField
      FieldName = 'USD_Act_Price'
    end
    object CDCExcelUSD_Act_amount: TFloatField
      FieldName = 'USD_Act_amount'
    end
    object CDCExcelVND_Act_Price: TFloatField
      FieldName = 'VND_Act_Price'
    end
    object CDCExcelVND_Act_amount: TFloatField
      FieldName = 'VND_Act_amount'
    end
    object CDCExcelCGBH: TStringField
      FieldName = 'CGBH'
      FixedChar = True
      Size = 15
    end
    object CDCExcelERP_USDPrice: TCurrencyField
      FieldName = 'ERP_USDPrice'
    end
    object CDCExcelERP_VNDPrice: TCurrencyField
      FieldName = 'ERP_VNDPrice'
    end
    object CDCExcelUSD_ERP_amount: TCurrencyField
      FieldName = 'USD_ERP_amount'
    end
    object CDCExcelVND_ERP_amount: TCurrencyField
      FieldName = 'VND_ERP_amount'
    end
  end
  object DataSource1: TDataSource
    DataSet = CDCExcel
    Left = 325
    Top = 170
  end
end
