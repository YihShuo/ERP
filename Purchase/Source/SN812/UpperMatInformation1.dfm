object UpperMatInformation: TUpperMatInformation
  Left = 77
  Top = 148
  Width = 1275
  Height = 623
  Caption = 'UpperMatInformation'
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
        Left = 211
        Top = 17
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
        Left = 8
        Top = 50
        Width = 78
        Height = 20
        Caption = 'SampleNo.'
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
        Left = 260
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
        Left = 485
        Top = 47
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
        Left = 554
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
        OnClick = Button2Click
      end
      object YPDHEdit: TEdit
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
      object CKBox1: TCheckBox
        Left = 376
        Top = 16
        Width = 97
        Height = 17
        Caption = 'Upper Mat'
        Checked = True
        Color = clAppWorkSpace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        State = cbChecked
        TabOrder = 5
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
        TabOrder = 6
      end
      object CKBox2: TCheckBox
        Left = 488
        Top = 16
        Width = 97
        Height = 17
        Caption = 'Sub Mat'
        Checked = True
        Color = clAppWorkSpace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        State = cbChecked
        TabOrder = 7
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
            FieldName = 'DC'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SKU'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'ColorwayID'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'VendorName'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'MaterialType'
            Footers = <>
            Width = 110
          end
          item
            EditButtons = <>
            FieldName = 'MaterialID'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'MaterialName'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'ColorName'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'First_Pantone'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Second_Pantone'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Third_Pantone'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Balance_Pantone'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Thickness'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Width'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Post_Process'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'MOQ'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'LeadTime'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Consumption'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Round_2_Forecast'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Material_Forecast'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Season'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'ypdh'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'FD'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'MaterialNO'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CSBH'
            Footers = <>
          end>
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'Select '#39'LYN'#39' as DC,'
      'ypzl.article as SKU,'
      'ypzl.devcode as ColorwayID,'
      'zsywjc as VendorName,'
      #39#39' as MaterialType,'
      'ypzl.ywpm as MaterialName,'
      #39#39' as ColorName, '
      #39#39' as First_Pantone,'
      #39#39' as Second_Pantone,'
      #39#39' as Third_Pantone,'
      #39#39' as Balance_Pantone,'
      #39#39' as Thickness,'
      #39#39' as Width,'
      #39#39' as Post_Process,'
      'materialmoq.prodmoq as MOQ,'
      'materialmoq.prodleadtime as LeadTime,'
      'ypzl.clsl as Consumption,'
      #39#39' as Round_2_Forecast,'
      #39#39' as Material_Forecast,'
      'ypzl.jijie as Season,'
      'ypzl.ypdh,'
      'ypzl.FD,'
      'ypzl.clbh as MaterialNO,'
      'ypzl.CSBH'
      'from ('
      
        'select devcode,article,jijie,YPDH ,FD,CLBH,CLZL.YWPM,CSBH, CLSL ' +
        'from ('
      
        'select devcode,article,jijie,YPDH ,FD,CLBH,YWPM ,Max(csbh) as CS' +
        'BH,Sum(CLSL) as CLSL  from ( '
      
        'SELECT kfxxzl.devcode,kfxxzl.article,kfxxzl.jijie,ypzls.YPDH ,KF' +
        'XXZL.FD,ypzls.CLBH,CLZL.YWPM,ypzls.csbh,ypzls.CLSL'
      'FROM ypzls ypzls '
      'inner join CLZL on CLZL.CLDH=ypzls.CLBH '
      'INNER join ypzl on ypzl.YPDH=ypzls.YPDH '
      
        'inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.She' +
        'Hao=YPZL.SheHao '
      'left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH'
      
        'WHERE  clzl.clzmlb = '#39'N'#39' and YPZL.KFJD='#39'CR2'#39' and KFXXZL.JiJie='#39'1' +
        '7S'#39' and YPZL.GSDH='#39'CDC'#39' and kfxxzl.devtype='#39'inline'#39
      'union all '
      
        'SELECT kfxxzl.devcode,kfxxzl.article,kfxxzl.jijie,ypzls.YPDH,KFX' +
        'XZL.FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhzl.zsdh as CSBH,(ypzls' +
        '.CLSL*CLZHZL.SYL) as CLSL'
      'FROM ypzls ypzls '
      'INNER join ypzl on ypzl.YPDH=ypzls.YPDH '
      
        'inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.She' +
        'Hao=YPZL.SheHao '
      'Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh '
      'inner join CLZL on CLZL.CLDH=clzhzl.CLDH1'
      'left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH'
      
        'WHERE  clzl.clzmlb = '#39'N'#39' and  YPZL.KFJD='#39'CR2'#39' and KFXXZL.JiJie='#39 +
        '17S'#39' and YPZL.GSDH='#39'CDC'#39'   and CLZHZL.SYL>0  and kfxxzl.devtype=' +
        #39'inline'#39
      'union all '
      
        'Select devcode,article,jijie,YPDH,FD,clzhzl.CLDH1 as CLBH,CLZL.Y' +
        'WPM,clzhzl.zsdh as CSBH,(CLSL*CLZHZL.SYL) as CLSL   '
      ' from ('
      
        'SELECT kfxxzl.devcode,kfxxzl.article,kfxxzl.jijie,ypzls.YPDH ,KF' +
        'XXZL.FD,clzhzl.CLDH1 as CLBH,ypzls.CLSL  '
      'FROM ypzls ypzls '
      'inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh '
      'inner JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh '
      'INNER join ypzl on ypzl.YPDH=ypzls.YPDH '
      
        'inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.She' +
        'Hao=YPZL.SheHao '
      
        'WHERE YPZL.KFJD='#39'CR2'#39' and KFXXZL.JiJie='#39'17S'#39' and YPZL.GSDH='#39'CDC'#39 +
        '   and CLZHZL.SYL>0  and clzl.clzmlb = '#39'Y'#39'  and kfxxzl.devtype='#39 +
        'inline'#39
      ') clzhzl2'
      'inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh '
      'inner JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh '
      'left join clzlfilter_DFL on clzhzl.CLDH1=clzlfilter_DFL.CLDH '
      'where clzl.clzmlb = '#39'N'#39' and CLZHZL.SYL>0  '
      ')  YPZLS '
      'Group by devcode,article,jijie,YPDH ,FD,CLBH,YWPM '
      ') Temp_YPZL'
      'inner join CLZL on Temp_YPZL.CLBH=CLZL.CLDH '
      'left join clzlfilter_DFL on Temp_YPZL.CLBH=clzlfilter_DFL.CLDH'
      
        'left join zszlfilter on zszlfilter.zsdh=Temp_YPZL.csbh and zszlf' +
        'ilter.GSBH='#39'CDC'#39'  '
      
        'left join clzlfilter on clzlfilter.cldh=Temp_YPZL.clbh and clzlf' +
        'ilter.GSBH='#39'CDC'#39'  '
      
        'where ( ((LEFT( Temp_YPZL.CLBH,3)='#39'V90'#39') and (CLZL.cltd='#39'VT Mat'#39 +
        ')) or '
      
        '(LEFT(Temp_YPZL.CLBH,1) in ('#39'A'#39','#39'C'#39','#39'F'#39','#39'K'#39') and  LEFT(Temp_YPZL' +
        '.CLBH,3) not in ('#39'A02'#39','#39'A08'#39','#39'A13'#39','#39'A48'#39') and (clzlfilter_DFL.DF' +
        'L is null) ) or (clzlfilter_DFL.DFL='#39'1'#39') or (LEFT(Temp_YPZL.CLBH' +
        ',1)='#39'P'#39' and Temp_YPZL.CSBH='#39'M027'#39') )'
      ' and zszlfilter.zsdh is null  and clzlfilter.cldh is null  '
      ')  YPZL '
      
        'left join materialmoq on materialmoq.zsbh=ypzl.csbh and material' +
        'moq.clbh=ypzl.clbh and materialmoq.season=ypzl.jijie'
      'left join zszl on zszl.zsdh=ypzl.csbh  '
      'order by SKU'
      ''
      ''
      ''
      '')
    Left = 137
    Top = 249
    object Query1DC: TStringField
      FieldName = 'DC'
      FixedChar = True
      Size = 3
    end
    object Query1SKU: TStringField
      FieldName = 'SKU'
      FixedChar = True
    end
    object Query1ColorwayID: TStringField
      FieldName = 'ColorwayID'
      FixedChar = True
    end
    object Query1VendorName: TStringField
      FieldName = 'VendorName'
      FixedChar = True
    end
    object Query1MaterialType: TStringField
      FieldName = 'MaterialType'
      FixedChar = True
      Size = 1
    end
    object Query1MaterialID: TStringField
      FieldName = 'MaterialID'
    end
    object Query1MaterialName: TStringField
      FieldName = 'MaterialName'
      FixedChar = True
      Size = 200
    end
    object Query1ColorName: TStringField
      FieldName = 'ColorName'
      FixedChar = True
      Size = 1
    end
    object Query1First_Pantone: TStringField
      FieldName = 'First_Pantone'
      FixedChar = True
      Size = 1
    end
    object Query1Second_Pantone: TStringField
      FieldName = 'Second_Pantone'
      FixedChar = True
      Size = 1
    end
    object Query1Third_Pantone: TStringField
      FieldName = 'Third_Pantone'
      FixedChar = True
      Size = 1
    end
    object Query1Balance_Pantone: TStringField
      FieldName = 'Balance_Pantone'
      FixedChar = True
      Size = 1
    end
    object Query1Thickness: TStringField
      FieldName = 'Thickness'
      FixedChar = True
      Size = 1
    end
    object Query1Width: TStringField
      FieldName = 'Width'
      FixedChar = True
      Size = 1
    end
    object Query1Post_Process: TStringField
      FieldName = 'Post_Process'
      FixedChar = True
      Size = 1
    end
    object Query1MOQ: TCurrencyField
      FieldName = 'MOQ'
    end
    object Query1LeadTime: TIntegerField
      FieldName = 'LeadTime'
    end
    object Query1Consumption: TFloatField
      FieldName = 'Consumption'
    end
    object Query1Round_2_Forecast: TStringField
      FieldName = 'Round_2_Forecast'
      FixedChar = True
      Size = 1
    end
    object Query1Material_Forecast: TStringField
      FieldName = 'Material_Forecast'
      FixedChar = True
      Size = 1
    end
    object Query1Season: TStringField
      FieldName = 'Season'
      FixedChar = True
    end
    object Query1ypdh: TStringField
      FieldName = 'ypdh'
      FixedChar = True
      Size = 15
    end
    object Query1FD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object Query1MaterialNO: TStringField
      FieldName = 'MaterialNO'
      FixedChar = True
      Size = 15
    end
    object Query1CSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 137
    Top = 217
  end
end
