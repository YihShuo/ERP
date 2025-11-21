object TrackingPO_KCLL: TTrackingPO_KCLL
  Left = -179
  Top = 303
  Width = 1300
  Height = 740
  Caption = 'TrackingPO_KCLL'
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1284
    Height = 702
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1276
        Height = 308
        Align = alTop
        Caption = 'Panel2'
        TabOrder = 0
        object DBGridEh1: TDBGridEh
          Left = 1
          Top = 90
          Width = 1274
          Height = 217
          Align = alClient
          DataSource = DS1
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -12
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          ParentFont = False
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          Columns = <
            item
              EditButtons = <>
              FieldName = 'Season'
              Footers = <>
              Width = 60
            end
            item
              EditButtons = <>
              FieldName = 'Stage'
              Footers = <>
              Width = 46
            end
            item
              EditButtons = <>
              FieldName = 'dropped'
              Footers = <>
              Title.Caption = 'Dropped'
              Width = 55
            end
            item
              EditButtons = <>
              FieldName = 'transfer'
              Footers = <>
              Title.Caption = 'Transfer'
              Width = 56
            end
            item
              EditButtons = <>
              FieldName = 'SampleOrder'
              Footer.ValueType = fvtCount
              Footers = <>
              Width = 104
            end
            item
              EditButtons = <>
              FieldName = 'MaterialNO'
              Footers = <>
              Width = 90
            end
            item
              EditButtons = <>
              FieldName = 'YWPM'
              Footers = <>
              Width = 200
            end
            item
              EditButtons = <>
              FieldName = 'ZWPM'
              Footers = <>
              Width = 201
            end
            item
              EditButtons = <>
              FieldName = 'SR'
              Footers = <>
              Width = 148
            end
            item
              EditButtons = <>
              FieldName = 'Unit'
              Footers = <>
              Width = 31
            end
            item
              EditButtons = <>
              FieldName = 'PurQty'
              Footers = <>
              Width = 53
            end
            item
              DisplayFormat = '0.##'
              EditButtons = <>
              FieldName = 'PurUsage'
              Footers = <>
              Width = 76
            end
            item
              EditButtons = <>
              FieldName = 'KCLL_QTy'
              Footers = <>
              Width = 83
            end
            item
              EditButtons = <>
              FieldName = 'KCRK_QTy'
              Footers = <>
              Width = 82
            end
            item
              EditButtons = <>
              FieldName = 'Pairs'
              Footers = <>
              Width = 39
            end
            item
              EditButtons = <>
              FieldName = 'Sampleprice'
              Footers = <>
              Width = 77
            end
            item
              EditButtons = <>
              FieldName = 'SamplepriceVN'
              Footers = <>
              Width = 76
            end
            item
              EditButtons = <>
              FieldName = 'responsibility'
              Footers = <>
              Title.Caption = 'Reason'
              Width = 223
            end
            item
              EditButtons = <>
              FieldName = 'Usage'
              Footers = <>
              Width = 76
            end
            item
              EditButtons = <>
              FieldName = 'hglb'
              Footers = <>
              Width = 33
            end>
        end
        object Panel1: TPanel
          Left = 1
          Top = 1
          Width = 1274
          Height = 89
          Align = alTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object Label1: TLabel
            Left = 24
            Top = 56
            Width = 36
            Height = 13
            Caption = 'Season'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 296
            Top = 56
            Width = 28
            Height = 13
            Caption = 'Stage'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 8
            Top = 16
            Width = 61
            Height = 13
            Caption = 'SampleOrder'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 269
            Top = 16
            Width = 53
            Height = 13
            Caption = 'MaterialNO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object btnQuery: TButton
            Left = 496
            Top = 24
            Width = 81
            Height = 33
            Caption = 'Query'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = btnQueryClick
          end
          object edtSeason: TEdit
            Left = 104
            Top = 48
            Width = 121
            Height = 28
            CharCase = ecUpperCase
            Color = 11927551
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object edtStage: TEdit
            Left = 344
            Top = 48
            Width = 121
            Height = 28
            CharCase = ecUpperCase
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object edtMaterialNO: TEdit
            Left = 344
            Top = 8
            Width = 121
            Height = 28
            CharCase = ecUpperCase
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object edtSampleOrder: TEdit
            Left = 104
            Top = 8
            Width = 121
            Height = 28
            CharCase = ecUpperCase
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object btnExcel: TButton
            Left = 592
            Top = 24
            Width = 81
            Height = 33
            Caption = 'Excel'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnClick = btnExcelClick
          end
          object CheckBox1: TCheckBox
            Left = 501
            Top = 65
            Width = 176
            Height = 14
            Caption = 'Detail'
            TabOrder = 6
            OnClick = CheckBox1Click
          end
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 308
        Width = 1276
        Height = 366
        Align = alClient
        Caption = 'Panel3'
        TabOrder = 1
        object DBGridEh2: TDBGridEh
          Left = 1
          Top = 1
          Width = 1274
          Height = 364
          Align = alClient
          DataSource = DS2
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -12
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'cgno'
              Footers = <>
              Title.Caption = 'PurchaseNO'
              Width = 140
            end
            item
              DisplayFormat = '0.##'
              EditButtons = <>
              FieldName = 'Qty'
              Footers = <>
              Width = 76
            end
            item
              EditButtons = <>
              FieldName = 'CFMDate'
              Footers = <>
              Width = 135
            end>
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1142
        Height = 293
        Align = alTop
        TabOrder = 0
        object Panel5: TPanel
          Left = 1
          Top = 1
          Width = 1141
          Height = 45
          Align = alTop
          TabOrder = 0
          object Edit1: TEdit
            Left = 20
            Top = 13
            Width = 98
            Height = 24
            TabOrder = 0
            Text = 'SampleOrder'
          end
          object Button1: TButton
            Left = 130
            Top = 13
            Width = 61
            Height = 20
            Caption = 'Query'
            TabOrder = 1
            OnClick = Button1Click
          end
        end
        object DBGridEh3: TDBGridEh
          Left = 1
          Top = 46
          Width = 1141
          Height = 247
          Align = alClient
          DataSource = DataSource1
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 293
        Width = 1142
        Height = 372
        Align = alClient
        Caption = 'Panel6'
        TabOrder = 1
        object Panel7: TPanel
          Left = 1
          Top = 1
          Width = 1141
          Height = 45
          Align = alTop
          TabOrder = 0
          object Edit2: TEdit
            Left = 20
            Top = 13
            Width = 98
            Height = 24
            TabOrder = 0
            Text = 'TestNO'
          end
          object Button2: TButton
            Left = 130
            Top = 13
            Width = 61
            Height = 20
            Caption = 'Query'
            TabOrder = 1
            OnClick = Button2Click
          end
        end
        object DBGridEh4: TDBGridEh
          Left = 1
          Top = 46
          Width = 1141
          Height = 325
          Align = alClient
          DataSource = DataSource2
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select cgzl.hglb,cgzl.Season,cgzl.purpose as Stage,cgzlss.zlbh a' +
        's SampleOrder,cgzlss.clsl as PurUsage,cgzlss.clbh as MaterialNO,' +
        'clzl.YWPM,clzl.ZWPM,kfxxzl.devcode as SR'
      
        ',clzl.DWBH as Unit,sum(cgzlss.qty) as PurQty,isnull(kclls.KCLL_Q' +
        'Ty,0) KCLL_QTy ,isnull(kcrks.KCRK_QTy,0) KCRK_QTy,ypzl.quantity ' +
        'as Pairs,isnull(materialMOQ.sampleprice,0) as Sampleprice'
      
        ',isnull(materialMOQ.samplepriceVN,0) as SamplepriceVN,materialch' +
        'angememo.responsibility,ypzls.clsl as Usage,xxzlkf.dropped,xxzlk' +
        'f.transfer'
      'from cgzlss'
      'left join cgzl on cgzl.cgno=cgzlss.cgno'
      
        'left join materialchangememo on materialchangememo.clbh=cgzlss.c' +
        'lbh and materialchangememo.ypdh=cgzlss.zlbh'
      'left join clzl on clzl.cldh = cgzlss.clbh'
      'left join ypzl on ypzl.YPDH = cgzlss.zlbh'
      
        'left join kfxxzl on ypzl.xiexing = kfxxzl.xiexing and ypzl.sheha' +
        'o = kfxxzl.shehao'
      
        'left join xxzlkf on ypzl.xiexing = xxzlkf.xiexing and ypzl.sheha' +
        'o = xxzlkf.shehao'
      
        'left join (select * from materialMOQ where season='#39'20S'#39')material' +
        'MOQ on materialMOQ.clbh= cgzlss.clbh'
      'left join (select CLBH,sum(qty) KCLL_Qty,scbh from('
      
        '           select kclls.LLNO,kclls.CLBH,Qty,kclls.scbh from kcll' +
        's '
      '           left join kcll on kclls.llno=kcll.llno'
      '           where kcll.gsbh='#39'CDC'#39
      '           )kclls group by CLBH,scbh'
      
        '           ) kclls on kclls.clbh=cgzlss.clbh and kclls.scbh=cgzl' +
        'ss.zlbh'
      'left join (select kcrks.CLBH,sum(Qty) KCRK_QTy,kcrks.CGBH from ('
      
        '           select kcrks.RKNO,kcrks.CLBH,Qty,kcrks.CGBH from kcrk' +
        's'
      '           left join kcrk on kcrks.rkno=kcrk.rkno'
      '           where kcrk.gsbh='#39'CDC'#39
      '           )kcrks  group by kcrks.CLBH,kcrks.CGBH'
      
        '           )kcrks on kcrks.clbh=cgzlss.clbh and kcrks.cgbh=cgzls' +
        's.zlbh'
      'left join (select ypdh,clbh,sum(clsl) as clsl from ('
      
        '           select ypzls.ypdh,ypzls.bwbh,ypzls.clbh,clsl from ypz' +
        'ls'
      '           left join ypzl on ypzl.ypdh=ypzls.ypdh'
      
        '           left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and k' +
        'fxxzl.shehao=ypzl.shehao'
      '           where kfxxzl.khdh='#39'036'#39'  and kfxxzl.jijie like '#39'20S%'#39
      '           union'
      
        '           select ypzls.ypdh,ypzls.bwbh,clzhzl.cldh1 as clbh,clz' +
        'hzl.syl*clsl as clsl from ypzls'
      '           inner join clzhzl on clzhzl.cldh=ypzls.clbh'
      '           left join ypzl on ypzl.ypdh=ypzls.ypdh'
      
        '           left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and k' +
        'fxxzl.shehao=ypzl.shehao'
      '           where kfxxzl.khdh='#39'036'#39'  and kfxxzl.jijie like '#39'20S%'#39
      '           union'
      
        '           select ypdh,bwbh,clzhzl.cldh1 as clbh,clzhzl.syl*clsl' +
        ' as clsl from ('
      
        '           select ypzls.ypdh,ypzls.bwbh,clzhzl.cldh1 as clbh,clz' +
        'hzl.syl*clsl as clsl from ypzls'
      '           inner join clzhzl on clzhzl.cldh=ypzls.clbh'
      '           left join ypzl on ypzl.ypdh=ypzls.ypdh'
      
        '           left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and k' +
        'fxxzl.shehao=ypzl.shehao'
      '           where kfxxzl.khdh='#39'036'#39'  and kfxxzl.jijie like '#39'20S%'#39
      '           )clzhzl2'
      '           inner join clzhzl on clzhzl.cldh=clzhzl2.clbh'
      '           )ypzls group by ypdh,clbh'
      
        '           )ypzls on ypzls.clbh=cgzlss.clbh and ypzls.ypdh=cgzls' +
        's.zlbh'
      'where cgzl.Season like '#39'20S%'#39'and cgzl.gsbh='#39'CDC'#39
      
        'group by cgzlss.CLBH,ZLBH,cgzlss.Stage,cgzl.Season,cgzl.purpose,' +
        'clzl.YWPM,clzl.ZWPM,clzl.DWBh,KCLL_Qty,KCRK_QTy,kfxxzl.devcode,y' +
        'pzl.quantity,cgzlss.clsl,SamplePrice,SamplePriceVN,materialchang' +
        'ememo.responsibility,ypzls.clsl'
      ',xxzlkf.dropped,xxzlkf.transfer,cgzl.hglb'
      '')
    Left = 248
    Top = 168
    object Query1Season: TStringField
      FieldName = 'Season'
      FixedChar = True
    end
    object Query1Stage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 15
    end
    object Query1SampleOrder: TStringField
      FieldName = 'SampleOrder'
      FixedChar = True
    end
    object Query1MaterialNO: TStringField
      FieldName = 'MaterialNO'
      FixedChar = True
      Size = 15
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object Query1SR: TStringField
      FieldName = 'SR'
      FixedChar = True
    end
    object Query1Unit: TStringField
      FieldName = 'Unit'
      FixedChar = True
      Size = 4
    end
    object Query1PurQty: TCurrencyField
      FieldName = 'PurQty'
      DisplayFormat = '#,##0.00'
    end
    object Query1KCLL_QTy: TCurrencyField
      FieldName = 'KCLL_QTy'
      DisplayFormat = '#,##0.00'
    end
    object Query1KCRK_QTy: TCurrencyField
      FieldName = 'KCRK_QTy'
      DisplayFormat = '#,##0.00'
    end
    object Query1Pairs: TFloatField
      FieldName = 'Pairs'
    end
    object Query1PurUsage: TCurrencyField
      FieldName = 'PurUsage'
    end
    object Query1Sampleprice: TCurrencyField
      FieldName = 'Sampleprice'
    end
    object Query1SamplepriceVN: TCurrencyField
      FieldName = 'SamplepriceVN'
    end
    object Query1responsibility: TStringField
      FieldName = 'responsibility'
      FixedChar = True
      Size = 30
    end
    object Query1Usage: TFloatField
      FieldName = 'Usage'
    end
    object Query1dropped: TBooleanField
      FieldName = 'dropped'
    end
    object Query1transfer: TBooleanField
      FieldName = 'transfer'
    end
    object Query1hglb: TStringField
      FieldName = 'hglb'
      FixedChar = True
      Size = 4
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 296
    Top = 168
  end
  object Query2: TQuery
    DatabaseName = 'dB'
    DataSource = DS1
    SQL.Strings = (
      'select cgno,Qty,CFMDate from cgzlss where 1=2')
    Left = 184
    Top = 545
    object Query2cgno: TStringField
      FieldName = 'cgno'
      FixedChar = True
      Size = 11
    end
    object Query2Qty: TCurrencyField
      FieldName = 'Qty'
    end
    object Query2CFMDate: TDateTimeField
      FieldName = 'CFMDate'
    end
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 232
    Top = 545
  end
  object Query3: TQuery
    DatabaseName = 'dB'
    Left = 564
    Top = 163
  end
  object DataSource1: TDataSource
    DataSet = Query3
    Left = 612
    Top = 163
  end
  object DataSource2: TDataSource
    DataSet = Query4
    Left = 596
    Top = 523
  end
  object Query4: TQuery
    DatabaseName = 'dB'
    Left = 548
    Top = 523
  end
end
