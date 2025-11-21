object CLLBZL: TCLLBZL
  Left = 492
  Top = 219
  Width = 451
  Height = 314
  Caption = 'CLLBZL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 435
    Height = 57
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 20
      Width = 44
      Height = 20
      Caption = 'CLLB:'
    end
    object Label2: TLabel
      Left = 138
      Top = 19
      Width = 53
      Height = 20
      Caption = 'YWPM:'
    end
    object Button1: TButton
      Left = 334
      Top = 11
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object EDIT1: TEdit
      Left = 66
      Top = 16
      Width = 65
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 196
      Top = 16
      Width = 129
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 2
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 57
    Width = 435
    Height = 219
    Align = alClient
    DataSource = DataSource1
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
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'cllb'
        Footers = <>
        Title.Caption = 'CLLB'
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'ZWSM'
        Footers = <>
        Width = 127
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Width = 184
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select CLLBZL.cllb,CLLBZL.ZWSM,CLLBZL.YWSM from ('
      'select XXZL.clid as lbdh from DDZl'
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao'
      
        'where DDZl.DDBH like '#39'Y%'#39' and DDZL.BUYNO like '#39'2017%'#39'  and XXZL.' +
        'clid<>'#39#39' and XXZL.KHDH='#39'036'#39
      'Group by CLID ) lastsizefox'
      'left join CLLBZL on CLLBZL.cllb=lastsizefox.lbdh'
      'order by lbdh')
    Left = 152
    Top = 108
    object Query1cllb: TStringField
      DisplayWidth = 5
      FieldName = 'cllb'
      FixedChar = True
      Size = 3
    end
    object Query1ZWSM: TStringField
      DisplayWidth = 20
      FieldName = 'ZWSM'
      FixedChar = True
    end
    object Query1YWSM: TStringField
      DisplayWidth = 20
      FieldName = 'YWSM'
      FixedChar = True
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 152
    Top = 142
  end
end
