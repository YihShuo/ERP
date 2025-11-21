object RSLDDGB: TRSLDDGB
  Left = 845
  Top = 240
  Width = 370
  Height = 305
  Caption = 'RSLDDGB'
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
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 354
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 28
      Top = 12
      Width = 48
      Height = 16
      Caption = 'Country:'
    end
    object Button1: TButton
      Left = 216
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object ConEdit: TEdit
      Left = 81
      Top = 9
      Width = 121
      Height = 24
      TabOrder = 1
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 41
    Width = 354
    Height = 226
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
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'LBDH'
        Footers = <
          item
            FieldName = 'LBDH'
            ValueType = fvtCount
          end>
        Title.Caption = 'ID'
        Width = 43
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Title.Caption = 'Country'
        Width = 193
      end>
  end
  object DS1: TDataSource
    DataSet = DDGBQry
    Left = 172
    Top = 88
  end
  object DDGBQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select LBDH,YWSM from LBZLS where LB='#39'06'#39' and LBDH>'#39'A'#39)
    Left = 172
    Top = 120
    object DDGBQryLBDH: TStringField
      FieldName = 'LBDH'
      FixedChar = True
      Size = 4
    end
    object DDGBQryYWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 50
    end
  end
end
