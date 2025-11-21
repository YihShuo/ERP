object ExtraBW: TExtraBW
  Left = 324
  Top = 246
  Width = 769
  Height = 316
  Caption = 'ExtraBW'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 753
    Height = 278
    Align = alClient
    DataSource = DS1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'VNI-Times'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'BWDH'
        Title.Caption = 'PartID'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ZWSM'
        Title.Caption = 'Part Chinese'
        Width = 144
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'YWSM'
        Title.Caption = 'Part English'
        Width = 159
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLZL_ZWPM'
        Title.Caption = 'Extra Chinese'
        Width = 157
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLZL_YWPM'
        Title.Caption = 'Extra English'
        Width = 163
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BWDH'
        Title.Caption = 'Unit'
        Width = 43
        Visible = True
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
