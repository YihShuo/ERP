object LLMaterial_Detail: TLLMaterial_Detail
  Left = 355
  Top = 402
  Width = 1055
  Height = 344
  Caption = 'LLMaterial_Detail'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 1047
    Height = 313
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'YPDH'
        Footers = <>
        Width = 101
      end
      item
        EditButtons = <>
        FieldName = 'BWBH'
        Footers = <>
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Width = 188
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 81
      end
      item
        EditButtons = <>
        FieldName = 'Usage'
        Footer.FieldName = 'Usage'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Footer.FieldName = 'CLSL'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'CQDH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CLMC'
        Footers = <>
        Width = 199
      end
      item
        EditButtons = <>
        FieldName = 'CLYWMC'
        Footers = <>
        Width = 220
      end
      item
        EditButtons = <>
        FieldName = 'dwbh'
        Footers = <>
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'clzmlb'
        Footers = <>
        Width = 56
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 208
    Top = 153
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = LLMaterialSR.DSLLMaterial
    SQL.Strings = (
      
        'SELECT ypzls.YPDH ,YPZLS.BWBH,BWZL.YWSM,ypzls.CLBH ,ypzls.CLSL a' +
        's Usage,CEILING(ypzls.CLSL*YPZL.Quantity*100)/100 as CLSL ,clzl.' +
        'CQDH,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,clzl.clzm' +
        'lb '
      '      FROM ypzls ypzls'
      '      Left join ypzl on ypzl.YPDH=ypzls.YPDH'
      '      left join BWZL on BWZL.BWDH=YPZLS.BWBH'
      '      Left join clzl clzl ON ypzls.CLBH = clzl.cldh'
      '      WHERE YPZLS.YPDH =:YPDH  and ypzls.clbh = :CLBH'
      '')
    Left = 176
    Top = 153
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'YPDH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLBH'
        ParamType = ptUnknown
      end>
    object Query1YPDH: TStringField
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
    object Query1BWBH: TStringField
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object Query1YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 40
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1Usage: TFloatField
      FieldName = 'Usage'
    end
    object Query1CLSL: TFloatField
      FieldName = 'CLSL'
    end
    object Query1CQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object Query1CLMC: TStringField
      FieldName = 'CLMC'
      FixedChar = True
      Size = 200
    end
    object Query1CLYWMC: TStringField
      FieldName = 'CLYWMC'
      FixedChar = True
      Size = 200
    end
    object Query1dwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object Query1clzmlb: TStringField
      FieldName = 'clzmlb'
      FixedChar = True
      Size = 1
    end
  end
end
