object ShippingDestroy: TShippingDestroy
  Left = 429
  Top = 175
  Width = 1101
  Height = 511
  Caption = 'Shipping Destroy'
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
    Width = 1085
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 4
      Top = 16
      Width = 80
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Order:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 89
      Top = 12
      Width = 121
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 230
      Top = 8
      Width = 75
      Height = 33
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
    object Button2: TButton
      Left = 318
      Top = 8
      Width = 75
      Height = 33
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 1085
    Height = 423
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
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
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ypdh'
        Footer.FieldName = 'ypdh'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = 'Laiv#|SR'
        Width = 129
      end
      item
        EditButtons = <>
        FieldName = 'kfjd'
        Footers = <>
        Title.Caption = #38542#27573'|Stage'
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'xieming'
        Footers = <>
        Title.Caption = #38795#21517'|Model Name'
        Width = 113
      end
      item
        EditButtons = <>
        FieldName = 'article'
        Footers = <>
        Title.Caption = 'SKU|Article'
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'ywsm'
        Footers = <>
        Title.Caption = #37096#20301#21517#31281'|Partname'
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'clbh'
        Footers = <>
        Title.Caption = #26448#26009#32232#34399'|MatNO'
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Title.Caption = #26448#26009#21517#31281'|YWPM'
        Width = 173
      end
      item
        EditButtons = <>
        FieldName = 'qtyin'
        Footers = <>
        Title.Caption = #32317#20986#36008'|TB_Qty'
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'clsl'
        Footers = <>
        Title.Caption = #21934#20301#29992#37327'|Usage'
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'totalusage'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Usage*Qty|Totalusage'
        Width = 101
      end
      item
        EditButtons = <>
        FieldName = 'dwbh'
        Footers = <>
        Title.Caption = #21934#20301'|Unit'
        Width = 63
      end
      item
        EditButtons = <>
        FieldName = 'hglb'
        Footers = <>
        Title.Caption = #39006#21029'|HGLB (Nguon Nhap'#65289
        Width = 134
      end
      item
        EditButtons = <>
        FieldName = 'docno'
        Footers = <>
        Title.Caption = #30332#31080'|Invoice#'
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'zsdh'
        Footers = <>
        Title.Caption = #24288#21830'No|Sup No'
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = 'cno'
        Footers = <>
        Title.Caption = #28023#38364#20195#30908'|NewHaiQuan (Ma Hang)'
        Width = 115
      end
      item
        EditButtons = <>
        FieldName = 'sampleprice'
        Footers = <>
        Title.Caption = #27171#21697#21934#34399'|Price'
        Width = 96
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      'select ypdh,kfjd,article,qtyin,xieming,clsl,ywpm,dwbh'
      ',sampleprice,zsdh,zsywjc,bwdh,ywsm,totalusage,ypzl.clbh'
      ',hglb,cno,kcrk.docno'
      
        'from (select ypzl.ypdh,ypzl.kfjd,ypzl.article,shoein.qtyin,kfxxz' +
        'l.xieming,ypzls.clsl,ypzls.clbh,clzl.ywpm,clzl.dwbh'
      
        ',materialmoq.sampleprice,zszl.zsdh,zszl.zsywjc,bwzl.bwdh,bwzl.yw' +
        'sm,round(ypzls.clsl*shoein.qtyin,3) as totalusage'
      ',kclls.hglb,kclls.cno'
      'from ypzl '
      'left join ypzls on ypzl.ypdh=ypzls.ypdh'
      'left join bwzl bwzl ON ypzls.BWBH = bwzl.bwdh'
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao'
      'left join clzl on ypzls.clbh=clzl.cldh'
      'left join shoetest on shoetest.ypdh=ypzl.ypdh'
      
        'left join (select testno,isnull(sum(qty),0) qtyin  from shoetest' +
        '2 group by testno)shoein on shoein.testno=shoetest.testno'
      
        'left join materialmoq on materialmoq.clbh=ypzls.clbh and ypzls.c' +
        'sbh=materialmoq.zsbh and kfxxzl.jijie = materialmoq.season'
      'left join zszl on zszl.zsdh = materialmoq.zsbh'
      ''
      
        'left join kclls on kclls.scbh =ypzls.ypdh and kclls.clbh =ypzls.' +
        'clbh '
      'where ypzl.ypdh='#39'LAIV180200151'#39
      'and bwzl.bwdh <>'#39'E106'#39
      
        'and left(ypzls.clbh,3) not in('#39'A31'#39','#39'C03'#39','#39'E01'#39','#39'H10'#39','#39'H13'#39','#39'H14' +
        #39','#39'I01'#39','#39'J01'#39','#39'J03'#39','#39'L09'#39','#39'N03'#39','#39'P06'#39','#39'P71'#39')'
      
        'group by ypzl.ypdh,ypzl.kfjd,ypzl.article,shoein.qtyin,kfxxzl.xi' +
        'eming,ypzls.clsl,ypzls.clbh,clzl.ywpm,clzl.dwbh'
      
        ',materialmoq.sampleprice,zszl.zsdh,zszl.zsywjc,bwzl.bwdh,bwzl.yw' +
        'sm,kclls.hglb,kclls.cno ) ypzl'
      
        'left join ('#9'select  clbh,cgbh,max(kcrk.docno) as docno,max(kcrk.' +
        'userdate) as userdate'
      #9#9#9'from kcrks left join kcrk on kcrk.rkno = kcrks.rkno'
      #9#9#9'where kcrk.HGLB in ('#39'NK'#39','#39'GC'#39') and kcrk.Docno is not null'
      #9#9'    group by  clbh,cgbh'
      #9#9#9') kcrk on kcrk.clbh = ypzl.clbh and kcrk.cgbh=ypzl.ypdh ')
    Left = 224
    Top = 184
    object Query1ypdh: TStringField
      FieldName = 'ypdh'
      FixedChar = True
      Size = 15
    end
    object Query1kfjd: TStringField
      FieldName = 'kfjd'
      FixedChar = True
      Size = 3
    end
    object Query1article: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object Query1xieming: TStringField
      FieldName = 'xieming'
      FixedChar = True
      Size = 50
    end
    object Query1ywsm: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 40
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
    object Query1qtyin: TFloatField
      FieldName = 'qtyin'
    end
    object Query1clsl: TFloatField
      FieldName = 'clsl'
    end
    object Query1totalusage: TFloatField
      FieldName = 'totalusage'
    end
    object Query1dwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object Query1hglb: TStringField
      FieldName = 'hglb'
      FixedChar = True
      Size = 4
    end
    object Query1docno: TStringField
      FieldName = 'docno'
      FixedChar = True
      Size = 30
    end
    object Query1zsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object Query1cno: TStringField
      FieldName = 'cno'
      FixedChar = True
      Size = 15
    end
    object Query1sampleprice: TCurrencyField
      FieldName = 'sampleprice'
      DisplayFormat = '##,#0.00'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 272
    Top = 184
  end
end
