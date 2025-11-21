object Purtrace_LT: TPurtrace_LT
  Left = 413
  Top = 390
  Width = 649
  Height = 339
  Caption = 'Purtrace_LT'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 641
    Height = 308
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Detail'
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 633
        Height = 277
        Align = alClient
        DataSource = DS1
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
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Developing  Data'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 633
        Height = 65
        Align = alTop
        TabOrder = 0
        object Label2: TLabel
          Left = 7
          Top = 39
          Width = 61
          Height = 16
          Caption = 'PartName'
        end
        object Label3: TLabel
          Left = 200
          Top = 36
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
        object Label1: TLabel
          Left = 24
          Top = 12
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
        object CLBHEdit: TEdit
          Left = 72
          Top = 8
          Width = 121
          Height = 24
          TabOrder = 0
        end
        object YWSMEdit: TEdit
          Left = 72
          Top = 35
          Width = 121
          Height = 24
          TabOrder = 1
        end
        object Button1: TButton
          Left = 466
          Top = 30
          Width = 75
          Height = 25
          Caption = 'Query'
          TabOrder = 2
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 550
          Top = 31
          Width = 75
          Height = 25
          Caption = 'Excel'
          TabOrder = 3
          OnClick = Button2Click
        end
        object YWPMEdit: TEdit
          Left = 264
          Top = 32
          Width = 193
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
      end
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 65
        Width = 633
        Height = 212
        Align = alClient
        DataSource = DS2
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
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnGetCellParams = DBGridEh2GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = 'MatNo'
            Width = 77
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'TCLBH'
            Footers = <>
            Title.Caption = 'V-MatNo'
            Width = 79
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'ProdLeadTime'
            Footers = <>
            Title.Caption = 'ProdLT'
            Width = 39
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'Forecast_LeadTime'
            Footers = <>
            Title.Caption = 'FC LT'
            Width = 43
          end
          item
            EditButtons = <>
            FieldName = 'BWBH'
            Footers = <>
            Title.Caption = 'PartID'
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'YWSM'
            Footers = <>
            Title.Caption = 'PartName'
            Width = 146
          end
          item
            EditButtons = <>
            FieldName = 'ZWSM'
            Footers = <>
            Title.Caption = 'PartCName'
            Width = 74
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Title.Caption = 'Mat Name'
            Width = 381
          end
          item
            EditButtons = <>
            FieldName = 'CLZMLB'
            Footers = <>
            Width = 22
          end
          item
            EditButtons = <>
            FieldName = 'CQDH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            Width = 38
          end
          item
            EditButtons = <>
            FieldName = 'DEVCODE'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'XieXing'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SheHao'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'ZWPM'
            Footers = <>
            Width = 335
          end>
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = Purtrace.DS1
    Left = 72
    Top = 112
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 72
    Top = 144
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from ('
      
        'select DEVCODE,Article,XieXing,SheHao,BWBH,YWSM,ZWSM,case when l' +
        'eft(CLBH,1)='#39'V'#39' then CLBH else null end as TCLBH,IsNull(JHDH,CLB' +
        'H) as CLBH,YWPM,ZWPM,CLZMLB,CQDH,DWBH,ProdLeadTime,Forecast_Lead' +
        'Time from ('
      
        'select YPZLS.*,MaterialMOQ.Season,MaterialMOQ.ProdMOQ,MaterialMO' +
        'Q.ProdLeadTime,MaterialMOQ.Forecast_LeadTime,MaterialMOQ.Locatio' +
        'n from ('
      
        'select YPZL.YPDH,KFXXZL.DEVCODE,DDZL.Article,YPZL.XieXing,YPZL.S' +
        'heHao,YPZLS.BWBH,case when clzhzl.cldh1 is not null then clzhzl.' +
        'cldh1 else YPZLS.CLBH end as CLBH,CLZL_LS.JHDH,BWZL.YWSM,BWZL.ZW' +
        'SM,CLZL.YWPM,CLZL.ZWPM,CLZL.CLZMLB,CLZL.DWBH,CLZL.CQDH from YPZL' +
        'S'
      'left join YPZL on YPZL.YPDH=YPZLS.YPDH '
      'left join clzhzl on YPZLS.CLBH=clzhzl.cldh'
      'left join BWZL on BWZL.bwdh=YPZLS.BWBH'
      
        'left join DDZL on DDZL.XieXing=YPZL.XieXing and DDZL.SheHao=YPZL' +
        '.SheHao'
      
        'left join CLZL on CLZL.CLDH=case when clzhzl.cldh1 is not null t' +
        'hen clzhzl.cldh1 else YPZLS.CLBH end'
      
        'left join CLZL_LS on CLZL_LS.CLDH=case when clzhzl.cldh1 is not ' +
        'null then clzhzl.cldh1 else YPZLS.CLBH end'
      
        'left join KFXXZL on DDZL.XieXing=KFXXZL.XieXing and DDZL.SheHao=' +
        'KFXXZL.SheHao'
      'where DDZL.DDBH='#39'Y2006-0418'#39' --and YPZL.KFJD='#39'CFM'#39'   '
      '      and BWZL.YWSM like '#39'%TONGUE%'#39
      
        '      --and CLZL.YWPM like '#39'%44" 15-1116TPG-SAFARI TS180122 HEAT' +
        'HER%'#39
      
        '      and BWBH in (select BWBH from ZLZLS2 where ZLBH='#39'Y2006-041' +
        '8'#39' Group by BWBH)  '
      '       ) YPZLS --and CLBH='#39'A520000729'#39
      'left join ('
      '  select * from ('
      
        '  select Season,CLBH,ProdMOQ,ProdLeadTime,Forecast_Leadtime,Loca' +
        'tion,ROW_NUMBER() over (PARTITION BY CLBH ORDER BY Substring(Sea' +
        'son,1,2) DESC,USERDATE desc) '
      
        '  as  rn from MaterialMOQ ) A where rn=1 ) MaterialMOQ on Materi' +
        'alMOQ.CLBH=YPZLS.CLBH ) YPZLS '
      'Group by '
      
        'DEVCODE,Article,XieXing,SheHao,BWBH,YWSM,ZWSM,case when left(CLB' +
        'H,1)='#39'V'#39' then CLBH else null end,IsNull(JHDH,CLBH),YWPM,ZWPM,CLZ' +
        'MLB,CQDH,DWBH,ProdLeadTime,Forecast_LeadTime'
      ') YPZLS   ')
    Left = 104
    Top = 112
    object Query2DEVCODE: TStringField
      DisplayWidth = 20
      FieldName = 'DEVCODE'
      FixedChar = True
    end
    object Query2Article: TStringField
      DisplayWidth = 9
      FieldName = 'Article'
      FixedChar = True
    end
    object Query2XieXing: TStringField
      DisplayWidth = 15
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object Query2SheHao: TStringField
      DisplayWidth = 5
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object Query2BWBH: TStringField
      DisplayWidth = 4
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object Query2YWSM: TStringField
      DisplayWidth = 40
      FieldName = 'YWSM'
      FixedChar = True
      Size = 40
    end
    object Query2ZWSM: TStringField
      DisplayWidth = 40
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 40
    end
    object Query2TCLBH: TStringField
      DisplayWidth = 15
      FieldName = 'TCLBH'
      FixedChar = True
      Size = 15
    end
    object Query2CLBH: TStringField
      DisplayWidth = 10
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object Query2YWPM: TStringField
      DisplayWidth = 200
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query2ZWPM: TStringField
      DisplayWidth = 200
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object Query2CLZMLB: TStringField
      DisplayWidth = 1
      FieldName = 'CLZMLB'
      FixedChar = True
      Size = 1
    end
    object Query2CQDH: TStringField
      DisplayWidth = 4
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object Query2DWBH: TStringField
      DisplayWidth = 4
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query2ProdLeadTime: TIntegerField
      DisplayWidth = 10
      FieldName = 'ProdLeadTime'
    end
    object Query2Forecast_LeadTime: TIntegerField
      DisplayWidth = 10
      FieldName = 'Forecast_LeadTime'
    end
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 104
    Top = 144
  end
  object tmpQry: TQuery
    DatabaseName = 'DB'
    Left = 40
    Top = 112
  end
end
