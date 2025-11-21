object SpecPrint_VNBOM: TSpecPrint_VNBOM
  Left = 228
  Top = 212
  Width = 913
  Height = 383
  BorderIcons = [biSystemMenu]
  Caption = 'SpecPrint_VNBOM'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 905
    Height = 352
    Align = alClient
    DataSource = DS3
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
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
        FieldName = 'BWBH'
        Footers = <>
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Width = 94
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 177
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'DFL'
        Footers = <>
        Width = 34
      end
      item
        EditButtons = <>
        FieldName = 'XFL'
        Footers = <>
        Width = 36
      end
      item
        EditButtons = <>
        FieldName = 'CSBH'
        Footers = <>
        Width = 71
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        Width = 130
      end>
  end
  object XXZLSVN: TQuery
    DatabaseName = 'DB'
    DataSource = SpecPrint.DS1
    SQL.Strings = (
      
        'select  XXZLSVN.*,BWZL.YWSM,ZSZL.ZSYWJC,CLZL.YWPM,CLZL.DWBH,XXBW' +
        'FLS.DFL,XXBWFLS.XFL'
      'from XXZLSVN'
      'left join BWZL on BWZL.BWDH= XXZLSVN.BWBH'
      'left join ZSZL on ZSZL.ZSDH= XXZLSVN.CSBH'
      'left join CLZL on XXZLSVN.CLBH=CLZL.CLDH'
      'left join XXBWFLS on XXBWFLS.FLBH=XXZLSVN.FLBH'
      'where  XXZLSVN.XieXing=:XieXing and  XXZLSVN.SheHao=:SheHao')
    Left = 316
    Top = 64
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'XieXing'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'SheHao'
        ParamType = ptUnknown
        Size = 6
      end>
    object XXZLSVNXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object XXZLSVNSheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object XXZLSVNBWBH: TStringField
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object XXZLSVNYWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 30
    end
    object XXZLSVNCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object XXZLSVNYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object XXZLSVNDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object XXZLSVNCLSL: TCurrencyField
      FieldName = 'CLSL'
      DisplayFormat = '#,##0.0000'
    end
    object XXZLSVNCSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 50
    end
    object XXZLSVNFLBH: TStringField
      FieldName = 'FLBH'
      FixedChar = True
      Size = 2
    end
    object XXZLSVNDFL: TStringField
      FieldName = 'DFL'
      FixedChar = True
      Size = 1
    end
    object XXZLSVNXFL: TStringField
      FieldName = 'XFL'
      FixedChar = True
      Size = 10
    end
    object XXZLSVNZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object XXZLSVNUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object XXZLSVNUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object XXZLSVNYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS3: TDataSource
    DataSet = XXZLSVN
    Left = 340
    Top = 64
  end
end
