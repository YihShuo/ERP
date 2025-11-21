object SampleRYDetail: TSampleRYDetail
  Left = 265
  Top = 220
  Width = 871
  Height = 510
  Caption = 'Sample RYDetail'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 855
    Height = 471
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
      Caption = 'Purchase'
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 49
        Width = 847
        Height = 391
        Align = alClient
        DataSource = DataSource1
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDblClick = DBGridEh1DblClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'JiJie'
            Footers = <>
            Title.Caption = 'Season'
            Width = 49
          end
          item
            EditButtons = <>
            FieldName = 'KFJD'
            Footers = <>
            Title.Caption = 'Stage'
            Width = 48
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = 'Material ID'
            Width = 119
          end
          item
            EditButtons = <>
            FieldName = 'ZWPM'
            Footers = <>
            Width = 161
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Width = 126
          end
          item
            EditButtons = <>
            FieldName = 'cldhflex'
            Footers = <>
            Title.Caption = 'FlexID'
          end
          item
            EditButtons = <>
            FieldName = 'CSBH'
            Footers = <>
            Title.Caption = 'Supplier ID'
            Width = 119
          end
          item
            EditButtons = <>
            FieldName = 'ZSJC'
            Footers = <>
            Title.Caption = 'Supplier Name'
            Width = 177
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 847
        Height = 49
        Align = alTop
        TabOrder = 1
        object Label4: TLabel
          Left = 226
          Top = 16
          Width = 67
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Material ID:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label81: TLabel
          Left = 6
          Top = 16
          Width = 50
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Season:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label45: TLabel
          Left = 116
          Top = 16
          Width = 39
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Stage:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 400
          Top = 16
          Width = 94
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'FlexID:'
        end
        object Label2: TLabel
          Left = 576
          Top = 16
          Width = 66
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'MaterNM:'
        end
        object Button1: TButton
          Left = 773
          Top = 8
          Width = 65
          Height = 32
          Caption = 'Query'
          TabOrder = 1
          OnClick = Button1Click
        end
        object MatNOEdit: TEdit
          Left = 295
          Top = 12
          Width = 99
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object SEASON: TEdit
          Left = 57
          Top = 12
          Width = 50
          Height = 24
          CharCase = ecUpperCase
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object KFJD: TEdit
          Left = 157
          Top = 12
          Width = 58
          Height = 24
          CharCase = ecUpperCase
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object FlexID: TEdit
          Left = 496
          Top = 12
          Width = 81
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 4
        end
        object MaterNM: TEdit
          Left = 644
          Top = 12
          Width = 121
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 5
        end
      end
    end
  end
  object SampleDetail: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'select '#39'19S'#39' as JiJie,'#39'SMS'#39' as KFJD,CLBH,ZWPM,YWPM,cldhflex,CSBH' +
        ',ZSYWJC as ZSJC from ( '
      
        'SELECT ypzls.YPDH,ypzls.CLBH ,clzl.zwpm ,clzl.Ywpm,clzl_flex.cld' +
        'hflex,clzl.dwbh,ypzls.CSBH ,zszl.ZSYWJC  ,clzl.clzmlb,clzl.CQDH'
      'FROM ypzls ypzls '
      'LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh '
      'LEFT JOIN zszl zszl ON ypzls.CSBH = zszl.zsdh '
      'LEFT JOIN clzl_flex on  clzl_flex.cldh =clzl.cldh '
      
        'WHERE YPDH in (select YPDH from YPZL,KFXXZL where YPZL.XieXing=K' +
        'FXXZL.XieXing and YPZL.SheHao=KFXXZL.SheHao and YPZL.KFJD='#39'SMS'#39' ' +
        'and KFXXZL.JiJie='#39'19S'#39' )'
      'union all '
      'SELECT ypzls.YPDH,clzhzl.CLDH1 as CLBH '
      ',clzl.zwpm,clzl.Ywpm,clzl_flex.cldhflex,clzl.dwbh '
      
        ',case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<' +
        '>'#39#39')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH'
      
        ',case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<' +
        '>'#39#39')) then zszl_dev.ZSYWJC else  zszl.ZSYWJC  end as ZSYWJC '
      ',clzl.clzmlb,clzl.CQDH   '
      'FROM ypzls ypzls '
      'Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh '
      
        'left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.c' +
        'ldh1=clzhzl_dev.cldh1 '
      'LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh '
      'LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh '
      'LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh '
      'LEFT JOIN clzl_flex on  clzl_flex.cldh =clzl.cldh '
      
        'WHERE  CLZHZL.SYL>0 and YPDH in (select YPDH from YPZL,KFXXZL wh' +
        'ere YPZL.XieXing=KFXXZL.XieXing and YPZL.SheHao=KFXXZL.SheHao an' +
        'd YPZL.KFJD='#39'SMS'#39' and KFXXZL.JiJie='#39'19S'#39' )'
      'union all '
      'Select clzhzl2.YPDH,clzhzl.CLDH1 as CLBH'
      ',clzl.zwpm ,clzl.Ywpm,clzl_flex.cldhflex ,clzl.dwbh '
      
        ',case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<' +
        '>'#39#39')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH '
      
        ',case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<' +
        '>'#39#39')) then zszl_dev.ZSYWJC else  zszl.ZSYWJC  end as ZSYWJC '
      ',clzl.clzmlb,clzl.CQDH  '
      ' from ('
      #9'SELECT ypzls.YPDH,clzhzl.CLDH1 as CLBH '
      #9'FROM ypzls ypzls '
      #9'Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh '
      #9'LEFT JOIN clzl  ON CLZHZL.cldh1 = clzl.cldh '
      
        #9'WHERE  CLZHZL.SYL>0 and clzl.clzmlb='#39'Y'#39'    and YPDH in (select ' +
        'YPDH from YPZL,KFXXZL where YPZL.XieXing=KFXXZL.XieXing and YPZL' +
        '.SheHao=KFXXZL.SheHao and YPZL.KFJD='#39'SMS'#39' and KFXXZL.JiJie='#39'19S'#39 +
        ' )  '
      ') clzhzl2'
      'inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh '
      
        'left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.c' +
        'ldh1=clzhzl_dev.cldh1  '
      'left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh '
      'LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh '
      'LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh '
      'LEFT JOIN clzl_flex on  clzl_flex.cldh =clzl.cldh '
      'where 1=1 '
      ')  YPZLS '
      'Group by CLBH,ZWPM,YWPM,CSBH,ZSYWJC,cldhflex'
      '')
    Left = 308
    Top = 224
    object SampleDetailJiJie: TStringField
      FieldName = 'JiJie'
      FixedChar = True
      Size = 3
    end
    object SampleDetailKFJD: TStringField
      FieldName = 'KFJD'
      FixedChar = True
      Size = 3
    end
    object SampleDetailCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object SampleDetailZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object SampleDetailYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object SampleDetailCSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object SampleDetailZSJC: TStringField
      FieldName = 'ZSJC'
      FixedChar = True
    end
    object SampleDetailcldhflex: TStringField
      FieldName = 'cldhflex'
      FixedChar = True
      Size = 15
    end
  end
  object DataSource1: TDataSource
    DataSet = SampleDetail
    Left = 348
    Top = 224
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 308
    Top = 264
  end
end
