object UseCLZL_LS: TUseCLZL_LS
  Left = 549
  Top = 469
  BorderStyle = bsDialog
  Caption = 'UseCLZL_LS'
  ClientHeight = 377
  ClientWidth = 676
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 676
    Height = 377
    Align = alClient
    DataSource = DS_CLZL
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Type'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'No'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Mother'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = 'Mat No'
      end
      item
        EditButtons = <>
        FieldName = 'Season'
        Footers = <>
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'Stage'
        Footers = <>
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'Supplier'
        Footers = <>
      end>
  end
  object CLZL_SL: TQuery
    DatabaseName = 'DB'
    DataSource = SampleMaterial.DS1
    SQL.Strings = (
      
        'select '#39'Spec'#39' as Type,YPZL.YPDH as No,Null as Mother,CLBH,YPZL.K' +
        'FJD as Stage,KFXXZL.JiJie as Season,zszl.zsywjc as Supplier  fro' +
        'm YPZLS,YPZL,KFXXZL,zszl where YPZL.YPDH=YPZLS.YPDH and  YPZL.Sh' +
        'eHao=KFXXZL.SheHao and KFXXZL.XieXing=YPZL.XieXing and zszl.zsdh' +
        '=YPZLS.CSBH and YPZL.UserDate>='#39'20130403'#39
      
        'and KFXXZL.KHDH='#39'036'#39' and YPZLS.CLBH like '#39'V90%'#39'   and   YPZLS.C' +
        'LBH=:CLDH'
      'union all '
      
        'select '#39'Child'#39' as Type,YPZL.YPDH as No,YPZLS.CLBH as Mother,Clzh' +
        'zl.CLDH1 as CLBH,YPZL.KFJD as Stage,KFXXZL.JiJie as Season,ZSZL.' +
        'ZSYWJC as Supplier from YPZLS'
      'inner join YPZL on YPZL.YPDH=YPZLS.YPDH'
      
        'inner join KFXXZL on YPZL.SheHao=KFXXZL.SheHao and KFXXZL.XieXin' +
        'g=YPZL.XieXing '
      'inner join Clzhzl on YPZLS.CLBH=Clzhzl.CLDH'
      'inner join zszl on zszl.zsdh=YPZLS.CSBH'
      
        'where YPZL.UserDate>='#39'20130403'#39' and Clzhzl.CLDH1 like '#39'V90%'#39' and' +
        '   Clzhzl.CLDH1=:CLDH'
      'and KFXXZL.KHDH='#39'036'#39
      'union all '
      
        'select '#39'Purchase'#39' as Type,CGZL.CGNO as No,Null as Mother,CLBH,CG' +
        'ZL.PurPose as Stage,CGZL.Season,ZSZL.ZSYWJC as Supplier from CGZ' +
        'LS'
      'inner join CGZL on CGZL.CGNO=CGZLS.CGNO'
      'inner join zszl on zszl.zsdh=CGZL.ZSBH'
      
        'where CGZL.GSBH='#39'CDC'#39' and CGZLS.UserDate>='#39'20130403'#39' and CGZLS.C' +
        'LBH like '#39'V90%'#39'  and   CGZLS.CLBH=:CLDH')
    Left = 184
    Top = 96
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLDH'
        ParamType = ptUnknown
        Size = 11
      end
      item
        DataType = ftFixedChar
        Name = 'CLDH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'CLDH'
        ParamType = ptUnknown
      end>
    object CLZL_SLType: TStringField
      FieldName = 'Type'
      FixedChar = True
      Size = 8
    end
    object CLZL_SLNo: TStringField
      FieldName = 'No'
      FixedChar = True
      Size = 15
    end
    object CLZL_SLMother: TStringField
      FieldName = 'Mother'
      FixedChar = True
      Size = 15
    end
    object CLZL_SLCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object CLZL_SLStage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 15
    end
    object CLZL_SLSeason: TStringField
      FieldName = 'Season'
      FixedChar = True
    end
    object CLZL_SLSupplier: TStringField
      FieldName = 'Supplier'
      FixedChar = True
    end
  end
  object DS_CLZL: TDataSource
    DataSet = CLZL_SL
    Left = 224
    Top = 96
  end
end
