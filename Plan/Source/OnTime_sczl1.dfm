object OnTime_sczl: TOnTime_sczl
  Left = 373
  Top = 187
  Width = 573
  Height = 451
  Caption = 'OnTime_sczl'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 565
    Height = 89
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 56
      Width = 61
      Height = 20
      Caption = 'SpecNo:'
    end
    object Edit1: TEdit
      Left = 80
      Top = 48
      Width = 145
      Height = 26
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object Button1: TButton
      Left = 264
      Top = 48
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object RadioGroup1: TRadioGroup
      Left = 8
      Top = 8
      Width = 393
      Height = 33
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Production Order  ('#29983#29986#35330#21934#65289
        'Ga Gong Order  ('#24037#27573#21152#24037')')
      ParentFont = False
      TabOrder = 2
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 89
    Width = 565
    Height = 328
    Align = alClient
    DataSource = DS1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'SCBH'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ZLBH'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Article'
        Width = 129
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'XieMing'
        Width = 199
        Visible = True
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select SCZL.SCBH,SCZL.ZLBH,XXZl.XieXing,XXZl.Shehao,XXZl.XieMing' +
        ',XXZl.Article'
      'from ( select distinct SCZL.SCBH,SCZL.ZLBH from SCZL ) SCZL'
      'left join ZLZL on ZLZL.ZLBH=SCZl.ZLBH'
      'left join DDZL on DDZl.ZLBh=ZLZL.ZLBH'
      
        'left join XXZL on XXZL.XieXing=DDZl.XieXing and XXZl.SheHao=DDZl' +
        '.Shehao'
      'order by SCZl.SCBH')
    Left = 424
    Top = 160
    object Query1SCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1XieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object Query1Shehao: TStringField
      FieldName = 'Shehao'
      FixedChar = True
      Size = 5
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 128
  end
end
