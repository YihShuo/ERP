object SOPDocuCopy: TSOPDocuCopy
  Left = 545
  Top = 253
  Width = 683
  Height = 341
  Caption = 'SOPDocuCopy'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 667
    Height = 70
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label6: TLabel
      Left = 19
      Top = 10
      Width = 40
      Height = 16
      Caption = 'Article:'
    end
    object Label3: TLabel
      Left = 204
      Top = 10
      Width = 37
      Height = 16
      Caption = 'ArtNo:'
    end
    object Label4: TLabel
      Left = 205
      Top = 42
      Width = 35
      Height = 16
      Caption = 'Color:'
    end
    object Label5: TLabel
      Left = 11
      Top = 40
      Width = 50
      Height = 16
      Caption = 'Season:'
    end
    object ArticleEdit: TEdit
      Left = 67
      Top = 7
      Width = 126
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object XieXingEdit: TEdit
      Left = 246
      Top = 7
      Width = 126
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object SheHaoEdit: TEdit
      Left = 246
      Top = 39
      Width = 62
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object JiJieEdit: TEdit
      Left = 67
      Top = 38
      Width = 62
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object Button3: TButton
      Left = 409
      Top = 32
      Width = 74
      Height = 33
      Caption = 'QUERY'
      TabOrder = 4
      OnClick = Button3Click
    end
    object Button1: TButton
      Left = 503
      Top = 30
      Width = 74
      Height = 33
      Caption = 'Copy'
      TabOrder = 5
      OnClick = Button1Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 70
    Width = 667
    Height = 232
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
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = #22411#39636'|Article'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'XieXing'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <
          item
            FieldName = 'XieXing'
            ValueType = fvtCount
          end>
        Title.Caption = #38795#22411'|ArtNo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'SheHao'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = #33394#34399'|Color'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 92
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.Caption = #38795#21517'|XieMing'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 187
      end
      item
        EditButtons = <>
        FieldName = 'JiJie'
        Footers = <>
        Title.Caption = #23395#21029'|JiJie'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end>
  end
  object XXZL: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'select XXZL.XieXing,XXZL.SheHao,XXZL.Article,XXZL.XieMing,XXZL.J' +
        'iJie from XXZL '
      'where  XXZL.ARTICLE like '#39'%163758C%'#39' '
      'order by XXZL.XieXing,XXZL.SheHao')
    Left = 292
    Top = 169
    object XXZLXieXing: TStringField
      DisplayWidth = 10
      FieldName = 'XieXing'
      Origin = 'DB.XXZL.XieXing'
      FixedChar = True
      Size = 15
    end
    object XXZLSheHao: TStringField
      DisplayWidth = 6
      FieldName = 'SheHao'
      Origin = 'DB.XXZL.SheHao'
      FixedChar = True
      Size = 5
    end
    object XXZLARTICLE: TStringField
      DisplayWidth = 10
      FieldName = 'ARTICLE'
      Origin = 'DB.XXZL.ARTICLE'
      FixedChar = True
    end
    object XXZLXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object XXZLJiJie: TStringField
      FieldName = 'JiJie'
      FixedChar = True
    end
  end
  object DS1: TDataSource
    DataSet = XXZL
    Left = 292
    Top = 199
  end
  object ExeQuery: TQuery
    DatabaseName = 'SOPDB'
    SQL.Strings = (
      'select *'
      'from BLimits'
      'where USERID=:userid'
      'and MKID=:mkid'
      'and GSBH=:GSBH')
    Left = 326
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'userid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mkid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'GSBH'
        ParamType = ptUnknown
      end>
  end
end
