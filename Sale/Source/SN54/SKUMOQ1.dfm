object SKUMOQ: TSKUMOQ
  Left = 298
  Top = 397
  Width = 1474
  Height = 675
  Caption = 'SKUMOQ'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 24
    Top = 16
    Width = 34
    Height = 20
    Caption = 'SKU'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1458
    Height = 637
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 1456
      Height = 64
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 24
        Top = 12
        Width = 34
        Height = 20
        Caption = 'SKU'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 208
        Top = 13
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
      object Button1: TButton
        Left = 384
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
        TabOrder = 0
        OnClick = Button1Click
      end
      object Edit1: TEdit
        Left = 64
        Top = 8
        Width = 121
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object Button2: TButton
        Left = 472
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
        TabOrder = 2
        OnClick = Button2Click
      end
      object Edit2: TEdit
        Left = 248
        Top = 8
        Width = 121
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
    end
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 65
      Width = 1456
      Height = 571
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
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      Columns = <
        item
          EditButtons = <>
          FieldName = 'jijie'
          Footers = <>
          Title.Caption = 'Season'
          Width = 54
        end
        item
          EditButtons = <>
          FieldName = 'devcode'
          Footers = <>
          Title.Caption = 'SR#'
        end
        item
          EditButtons = <>
          FieldName = 'article'
          Footers = <>
          Title.Caption = 'SKU'
          Width = 87
        end
        item
          EditButtons = <>
          FieldName = 'clbh'
          Footers = <>
          Title.Caption = 'Mat|NO'
        end
        item
          EditButtons = <>
          FieldName = 'ywpm'
          Footers = <>
          Title.Caption = 'Mat|Des'
          Width = 335
        end
        item
          EditButtons = <>
          FieldName = 'zsdh'
          Footers = <>
          Title.Caption = 'Supplier|NO'
          Width = 47
        end
        item
          EditButtons = <>
          FieldName = 'zsywjc'
          Footers = <>
          Title.Caption = 'Supplier|Name'
          Width = 133
        end
        item
          EditButtons = <>
          FieldName = 'SampleLeadTime'
          Footers = <>
          Title.Caption = 'LeadTime|Sample'
        end
        item
          EditButtons = <>
          FieldName = 'ProdLeadTime'
          Footers = <>
          Title.Caption = 'LeadTime|Prod'
        end
        item
          EditButtons = <>
          FieldName = 'Forecast_Leadtime'
          Footers = <>
          Title.Caption = 'LeadTime|Forecast'
        end
        item
          DisplayFormat = '0.00'
          EditButtons = <>
          FieldName = 'SampleMOQ'
          Footers = <>
          Title.Caption = 'MOQ|Sample'
        end
        item
          DisplayFormat = '0.00'
          EditButtons = <>
          FieldName = 'ProdMOQ'
          Footers = <>
          Title.Caption = 'MOQ|Prod'
        end
        item
          DisplayFormat = '$'
          EditButtons = <>
          FieldName = 'ExtraPrice'
          Footers = <>
          Title.Caption = 'MOQ|ExtraPrice'
        end
        item
          DisplayFormat = '$'
          EditButtons = <>
          FieldName = 'SamplePrice'
          Footers = <>
          Title.Caption = 'SamplePrice|USD'
        end
        item
          DisplayFormat = '$'
          EditButtons = <>
          FieldName = 'SamplePriceVN'
          Footers = <>
          Title.Caption = 'SamplePrice|VND'
          Width = 79
        end>
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 120
    Top = 224
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select a.devcode,a.article,a.clbh,a.jijie,a.zsdh,zszl.zsywjc, Ma' +
        'terialMOQ.SampleLeadTime,MaterialMOQ.ProdLeadTime,MaterialMOQ.Fo' +
        'recast_Leadtime,'
      
        'MaterialMOQ.SampleMOQ,MaterialMOQ.ProdMOQ,MaterialMOQ.ExtraPrice' +
        ','
      
        'MaterialMOQ.SamplePrice,MaterialMOQ.SamplePriceVN,clzl.ywpm from' +
        ' ('
      
        'select kfxxzl.devcode,xxzl.article,xxzl.xieming,xxzls.clbh,kfxxz' +
        'l.jijie,xxzls.csbh as zsdh from xxzls'
      
        'left join xxzl on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxz' +
        'ls.shehao'
      
        'left join kfxxzl on kfxxzl.xiexing=xxzls.xiexing and kfxxzl.sheh' +
        'ao=xxzls.shehao'
      'where xxzl.khdh='#39'036'#39' and kfxxzl.jijie='#39'18S'#39
      'union'
      
        'select kfxxzl.devcode,xxzl.article,xxzl.xieming,clzhzl.cldh1 as ' +
        'clbh,kfxxzl.jijie,clzhzl.zsdh from xxzls'
      'inner join clzhzl on clzhzl.cldh=xxzls.clbh'
      
        'left join xxzl on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxz' +
        'ls.shehao'
      
        'left join kfxxzl on kfxxzl.xiexing=xxzls.xiexing and kfxxzl.sheh' +
        'ao=xxzls.shehao'
      'where xxzl.khdh='#39'036'#39' and kfxxzl.jijie='#39'18S'#39
      'union'
      
        'select devcode,article,xieming,clzhzl.cldh1 as clbh,jijie,clzhzl' +
        '.zsdh from ('
      
        'select kfxxzl.devcode,xxzl.article,xxzl.xieming,clzl.cldh,kfxxzl' +
        '.jijie from xxzls'
      'inner join clzhzl on clzhzl.cldh=xxzls.clbh'
      
        'left join xxzl on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxz' +
        'ls.shehao'
      
        'left join kfxxzl on kfxxzl.xiexing=xxzls.xiexing and kfxxzl.sheh' +
        'ao=xxzls.shehao'
      'left join clzl on clzhzl.cldh1=clzl.cldh'
      'where xxzl.khdh='#39'036'#39' and kfxxzl.jijie='#39'18S'#39' )clzhzl2'
      'inner join clzhzl on clzhzl.cldh=clzhzl2.cldh'
      ''
      ')a'
      
        'left join materialMOQ on materialMOQ.clbh=a.clbh and  materialMO' +
        'Q.season=a.jijie'
      'left join clzl on a.clbh=clzl.cldh'
      'left join zszl on zszl.zsdh=a.zsdh'
      
        'group by devcode,article,xieming,a.clbh,a.jijie,a.zsdh,zszl.zsyw' +
        'jc, MaterialMOQ.SampleLeadTime,MaterialMOQ.ProdLeadTime,Material' +
        'MOQ.Forecast_Leadtime,MaterialMOQ.SampleMOQ,MaterialMOQ.ProdMOQ,' +
        'MaterialMOQ.ExtraPrice,MaterialMOQ.SamplePrice,MaterialMOQ.Sampl' +
        'ePriceVN,clzl.ywpm')
    Left = 120
    Top = 280
    object Query1jijie: TStringField
      FieldName = 'jijie'
      FixedChar = True
    end
    object Query1devcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
    object Query1article: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object Query1clbh: TStringField
      FieldName = 'clbh'
      FixedChar = True
      Size = 15
    end
    object Query1ywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object Query1zsdh: TStringField
      FieldName = 'zsdh'
      FixedChar = True
      Size = 6
    end
    object Query1zsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object Query1SampleLeadTime: TIntegerField
      FieldName = 'SampleLeadTime'
    end
    object Query1ProdLeadTime: TIntegerField
      FieldName = 'ProdLeadTime'
    end
    object Query1Forecast_Leadtime: TIntegerField
      FieldName = 'Forecast_Leadtime'
    end
    object Query1SampleMOQ: TCurrencyField
      FieldName = 'SampleMOQ'
    end
    object Query1ProdMOQ: TCurrencyField
      FieldName = 'ProdMOQ'
    end
    object Query1ExtraPrice: TCurrencyField
      FieldName = 'ExtraPrice'
    end
    object Query1SamplePrice: TCurrencyField
      FieldName = 'SamplePrice'
    end
    object Query1SamplePriceVN: TCurrencyField
      FieldName = 'SamplePriceVN'
    end
  end
end
