object BuyNoPPH: TBuyNoPPH
  Left = 364
  Top = 498
  Width = 1486
  Height = 480
  Caption = 'BuyNoPPH '
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
    Width = 1470
    Height = 73
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label5: TLabel
      Left = 2
      Top = 37
      Width = 83
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'BuyNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 8
      Top = 8
      Width = 161
      Height = 25
      AutoSize = False
      Caption = 'Buy'#21029'POH'#22577#34920
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button1: TButton
      Left = 277
      Top = 29
      Width = 73
      Height = 33
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 87
      Top = 35
      Width = 122
      Height = 26
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Button2: TButton
      Left = 357
      Top = 29
      Width = 73
      Height = 33
      Caption = 'Excel'
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 1470
    Height = 368
    Align = alClient
    DataSource = DataSource1
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
        FieldName = 'BuyNo'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = 'Buy'#21029'|BuyNo'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'DEVCODE'
        Footers = <>
        Title.Caption = '#SR|DEVCODE'
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.Caption = #38795#21517'|XieMing'
        Width = 170
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #38617#25976'|Qty'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'IEQty'
        Footers = <>
        Title.Caption = #29986#33021'|IEQty'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'IEPeo'
        Footers = <>
        Title.Caption = #20154#25976'|IEPeo'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'POH'
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'T1'
        Footers = <>
        Title.Caption = '4'#32026'|Tier'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'T2'
        Footers = <>
        Title.Caption = '8'#32026'|Tier'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'DAOMH'
        Footers = <>
        Title.Caption = #26028#20992'|DAOMH'
        Width = 170
      end
      item
        EditButtons = <>
        FieldName = 'BZRS_C'
        Footers = <>
        Title.Caption = #27161#28310#30452#24037'|BZRS_C'
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'BZRS_S'
        Footers = <>
        Title.Caption = #27161#28310#30452#24037'|BZRS_S'
        Width = 64
      end
      item
        EditButtons = <>
        FieldName = 'BZRS_P'
        Footers = <>
        Title.Caption = #27161#28310#30452#24037'|BZRS_P'
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'BZRS_A'
        Footers = <>
        Title.Caption = #27161#28310#30452#24037'|BZRS_A'
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'BZJS'
        Footers = <>
        Title.Caption = #27161#28310#38291#24037'|BZJS'
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'select ddzl.BuyNo,ddzl.Article,kfxxzl.DEVCODE, xxzl.XieMing, sum' +
        '(pairs)as Qty,IEQty,IEPeo,POH,'
      '       case when POH >=1.25 then 1'
      '            when POH >=1.0 and POH< 1.25 then 2'
      '            when POH >= 0.75 and POH<1.0 then 3'
      '            when POH<0.75 then 4 end as T1,'
      '       case when POH>=1.5 then 1'
      '            when POH>=1.25 and POH<1.5 then 2'
      '            when POH>=1.13 and POH<1.25 then 3'
      '            when POH>=1.0 and POH<1.13 then 4'
      '            when POH>=0.86 and POH<1.0 then 5'
      '            when POH>=0.75 and POH<0.86 then 6'
      '            when POH>=0.61 and POH<0.75 then 7'
      '            when POH<0.61 then 8 end T2, xxzl.DAOMH'
      
        '       ,SCXXCL_GXLB.BZRS_C,SCXXCL_GXLB.BZRS_S,SCXXCL_GXLB.BZRS_P' +
        ',SCXXCL_GXLB.BZRS_A,BZJS'
      
        'from ddzl left join xxzl on ddzl.xiexing=xxzl.xiexing and ddzl.s' +
        'hehao=xxzl.shehao'
      
        'left join kfxxzl on ddzl.xiexing=kfxxzl.xiexing and ddzl.shehao=' +
        'kfxxzl.shehao'
      
        'left join (select SCXXCL.xiexing,SCXXCL.shehao,max(SCXXCL.BZCL)a' +
        's IEQty, Sum(SCXXCL.BZRS+SCXXCL.BZJS) as IEPeo,(Round(Max(Conver' +
        't(float,SCXXCL.BZCL))/Sum(SCXXCL.BZRS+SCXXCL.BZJS),2)) as POH'
      
        '            from SCXXCL where BZLB='#39'3'#39' group by xiexing,shehao)S' +
        'CXXCL on SCXXCL.xiexing=ddzl.xiexing and SCXXCL.shehao=ddzl.sheh' +
        'ao'
      
        'left join ('#9'select  xiexing,shehao, max(BZRS_C) as BZRS_C,max(BZ' +
        'RS_S) as BZRS_S,max(BZRS_P) as BZRS_P,max(BZRS_A) as BZRS_A, sum' +
        ' (BZJS) as BZJS'
      #9#9#9'      from (  select SCXXCL.xiexing,SCXXCL.shehao'
      
        '            '#9#9#9#9#9#9#9', case when GXLB='#39'C'#39' then  Sum(SCXXCL.BZRS)  ' +
        'end as BZRS_C'
      
        '            '#9#9#9#9#9#9#9', case when GXLB='#39'S'#39' then  Sum(SCXXCL.BZRS)  ' +
        'end as BZRS_S'
      
        '            '#9#9#9#9#9#9#9', case when GXLB='#39'P'#39' then  Sum(SCXXCL.BZRS)  ' +
        'end as BZRS_P'
      
        '            '#9#9#9#9#9#9#9', case when GXLB='#39'A'#39' then  Sum(SCXXCL.BZRS)  ' +
        'end as BZRS_A'
      #9#9#9#9#9#9#9#9#9#9', sum (SCXXCL.BZJS) as BZJS '
      '          '#9#9#9#9#9'from SCXXCL '
      '  '#9#9#9#9#9'where BZLB='#39'3'#39' group by xiexing,shehao,GXLB ) SCXXCL'
      
        '      '#9#9#9'group by xiexing,shehao ) SCXXCL_GXLB on SCXXCL_GXLB.Xi' +
        'eXing=DDZL.XieXing and SCXXCL_GXLB.SheHao=DDZL.SheHao'
      'where buyno like '#39'202301 23F%'#39
      'and  DDZL.GSBH='#39'VA12'#39' '
      'and ddzl.Article ='#39'151202C'#39
      
        'group by ddzl.BuyNo,ddzl.article,kfxxzl.DEVCODE, xxzl.Xieming,xx' +
        'zl.DAOMH,IEQty,IEPeo,POH,SCXXCL_GXLB.BZRS_C,SCXXCL_GXLB.BZRS_S,S' +
        'CXXCL_GXLB.BZRS_P,SCXXCL_GXLB.BZRS_A,BZJS'
      'order by ddzl.article'
      '')
    Left = 128
    Top = 128
    object Query1BuyNo: TStringField
      FieldName = 'BuyNo'
      FixedChar = True
      Size = 10
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1DEVCODE: TStringField
      FieldName = 'DEVCODE'
      FixedChar = True
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1Qty: TIntegerField
      FieldName = 'Qty'
    end
    object Query1IEQty: TIntegerField
      FieldName = 'IEQty'
    end
    object Query1IEPeo: TIntegerField
      FieldName = 'IEPeo'
    end
    object Query1POH: TFloatField
      FieldName = 'POH'
    end
    object Query1T1: TIntegerField
      FieldName = 'T1'
    end
    object Query1T2: TIntegerField
      FieldName = 'T2'
    end
    object Query1DAOMH: TStringField
      FieldName = 'DAOMH'
      FixedChar = True
      Size = 30
    end
    object Query1BZRS_C: TIntegerField
      FieldName = 'BZRS_C'
    end
    object Query1BZRS_S: TIntegerField
      FieldName = 'BZRS_S'
    end
    object Query1BZRS_P: TIntegerField
      FieldName = 'BZRS_P'
    end
    object Query1BZRS_A: TIntegerField
      FieldName = 'BZRS_A'
    end
    object Query1BZJS: TIntegerField
      FieldName = 'BZJS'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 168
    Top = 129
  end
end
