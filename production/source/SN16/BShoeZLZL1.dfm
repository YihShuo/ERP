object BShoeZLZL: TBShoeZLZL
  Left = 306
  Top = 216
  Width = 580
  Height = 329
  Caption = 'BShoeZLZL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 572
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 12
      Width = 85
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'B shoe Article:'
    end
    object Article: TEdit
      Left = 104
      Top = 9
      Width = 121
      Height = 24
      TabOrder = 0
    end
    object Button2: TButton
      Left = 232
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 320
      Top = 8
      Width = 75
      Height = 25
      Caption = 'XLS'
      TabOrder = 2
      OnClick = Button1Click
    end
    object CheckR2: TCheckBox
      Left = 409
      Top = 2
      Width = 144
      Height = 17
      Caption = 'R2 Chemical Usage'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    object CheckR3: TCheckBox
      Left = 409
      Top = 20
      Width = 141
      Height = 17
      Caption = 'R3 Chemical Usage'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 572
    Height = 257
    Align = alClient
    DataSource = XXZLDS
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'XieXing'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SheHao'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Article'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = True
      end>
  end
  object Titlememo: TQuery
    AfterOpen = TitlememoAfterOpen
    DatabaseName = 'DB'
    DataSource = SpecPrint.DS1
    SQL.Strings = (
      'select ZLZL.*,DDZL.*,XXZL.*,KFZL.KFJC,LBZLS.YWSM,'
      'DDZL.CCGB as DDCC ,XXZL.CCGB as BOMCC'
      'from ZLZL '
      'left join DDZL on DDZL.DDBH=ZLZL.DDBH'
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao'
      'left join KFZL on KFZL.KFDH=DDZL.KHBH'
      'left join LBZLS on LBZLS.LB='#39'06'#39' and LBZLS.LBDH=DDZL.DDGB'
      'where ZLZL.ZLBH=:ZLBH')
    Left = 324
    Top = 88
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'ZLBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object TitlememoZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object TitlememoDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object TitlememoXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object TitlememoSheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object TitlememoARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object TitlememoKHBH: TStringField
      FieldName = 'KHBH'
      FixedChar = True
      Size = 4
    end
    object TitlememoKHPO: TStringField
      FieldName = 'KHPO'
      FixedChar = True
      Size = 19
    end
    object TitlememoVersion: TSmallintField
      FieldName = 'Version'
    end
    object TitlememoTrader: TStringField
      FieldName = 'Trader'
      FixedChar = True
      Size = 4
    end
    object TitlememoTraderPO: TStringField
      FieldName = 'TraderPO'
      FixedChar = True
      Size = 19
    end
    object TitlememoDDLB: TStringField
      FieldName = 'DDLB'
      FixedChar = True
      Size = 1
    end
    object TitlememoDDCC: TStringField
      FieldName = 'DDCC'
      FixedChar = True
      Size = 1
    end
    object TitlememoBOMCC: TStringField
      FieldName = 'BOMCC'
      FixedChar = True
      Size = 1
    end
    object TitlememoDest: TStringField
      FieldName = 'Dest'
      FixedChar = True
      Size = 4
    end
    object TitlememoDDRQ: TDateTimeField
      FieldName = 'DDRQ'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object TitlememoShipDate: TDateTimeField
      FieldName = 'ShipDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object TitlememoPairs: TIntegerField
      FieldName = 'Pairs'
      DisplayFormat = '##,#0'
    end
    object TitlememoXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object TitlememoYSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 40
    end
    object TitlememoBZCC: TStringField
      FieldName = 'BZCC'
      FixedChar = True
      Size = 6
    end
    object TitlememoKHDH: TStringField
      FieldName = 'KHDH'
      FixedChar = True
      Size = 4
    end
    object TitlememoXTMH: TStringField
      FieldName = 'XTMH'
      FixedChar = True
      Size = 15
    end
    object TitlememoDMGJ: TStringField
      FieldName = 'DMGJ'
      FixedChar = True
      Size = 3
    end
    object TitlememoDDMH: TStringField
      FieldName = 'DDMH'
      FixedChar = True
      Size = 15
    end
    object TitlememoMSGJ: TStringField
      FieldName = 'MSGJ'
      FixedChar = True
      Size = 3
    end
    object TitlememoMDMH: TStringField
      FieldName = 'MDMH'
      FixedChar = True
      Size = 15
    end
    object TitlememoDAOGJ: TStringField
      FieldName = 'DAOGJ'
      FixedChar = True
      Size = 3
    end
    object TitlememoDAOMH: TStringField
      FieldName = 'DAOMH'
      FixedChar = True
      Size = 15
    end
    object TitlememoIMGName: TStringField
      FieldName = 'IMGName'
      FixedChar = True
      Size = 60
    end
    object TitlememoKFJC: TStringField
      FieldName = 'KFJC'
      FixedChar = True
    end
    object TitlememoYWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 50
    end
  end
  object TempSQL: TQuery
    DatabaseName = 'DB'
    Left = 362
    Top = 86
  end
  object Gjtable: TQuery
    DatabaseName = 'DB'
    Left = 292
    Top = 88
  end
  object XXZL: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select XieXing,SheHao,Article from  XXZL where Article like '#39'M91' +
        '60%'#39)
    Left = 288
    Top = 120
    object XXZLXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object XXZLSheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object XXZLArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
  end
  object XXZLDS: TDataSource
    DataSet = XXZL
    Left = 328
    Top = 120
  end
  object XXZLS: TQuery
    DatabaseName = 'DB'
    Left = 368
    Top = 120
  end
end
