object ExtraPairs_Mat_ZL: TExtraPairs_Mat_ZL
  Left = 350
  Top = 240
  Width = 777
  Height = 285
  BorderIcons = [biSystemMenu]
  Caption = 'ExtraPairs_Mat_ZL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 106
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 761
    Height = 245
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
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'BWDH'
        Footers = <>
        Title.Caption = 'PartID'
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'ZWSM'
        Footers = <>
        Title.Caption = 'Part Chinese'
        Width = 142
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Title.Caption = 'Part English'
        Width = 141
      end
      item
        EditButtons = <>
        FieldName = 'CLZL_ZWPM'
        Footers = <>
        Title.Caption = 'Extra Chinese'
        Width = 163
      end
      item
        EditButtons = <>
        FieldName = 'CLZL_YWPM'
        Footers = <>
        Title.Caption = 'Extra English'
        Width = 171
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = 'Unit'
        Width = 37
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 128
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select BWZL.BWDH,BWZL.ZWSM,BWZL.YWSM,CLZL.CLDH,CLZL.YWPM as CLZL' +
        '_YWPM,CLZL.ZWPM  as CLZL_ZWPM,CLZL.DWBH'
      'from BWZL'
      
        'left join CLZL on BWZL.BWDH=Substring(CLZL.CLDH,1,4) and CLDH li' +
        'ke '#39'VJ%'#39
      'where BWZL.BWDH like '#39'VJ%'#39)
    Left = 424
    Top = 160
    object Query1BWDH: TStringField
      FieldName = 'BWDH'
      FixedChar = True
      Size = 4
    end
    object Query1ZWSM: TStringField
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 40
    end
    object Query1YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 40
    end
    object Query1CLDH: TStringField
      FieldName = 'CLDH'
      FixedChar = True
      Size = 10
    end
    object Query1CLZL_YWPM: TStringField
      FieldName = 'CLZL_YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1CLZL_ZWPM: TStringField
      FieldName = 'CLZL_ZWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
  end
end
