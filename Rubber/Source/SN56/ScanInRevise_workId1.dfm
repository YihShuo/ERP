object ScanInRevise_workId: TScanInRevise_workId
  Left = 435
  Top = 157
  Width = 790
  Height = 499
  Caption = 'ScanInRevise_workId'
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
    Width = 774
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 39
      Top = 14
      Width = 45
      Height = 16
      Caption = 'WorkID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 26
      Top = 47
      Width = 58
      Height = 16
      Caption = 'Mode NO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 221
      Top = 48
      Width = 32
      Height = 16
      Caption = 'Color'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 214
      Top = 16
      Width = 39
      Height = 16
      Caption = 'DDBH'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Query: TButton
      Left = 461
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = QueryClick
    end
    object WorkIDEdit: TEdit
      Left = 88
      Top = 12
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object CKBox: TCheckBox
      Left = 552
      Top = 46
      Width = 97
      Height = 17
      Caption = 'Qty>Ok Qty'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 2
    end
    object Button1: TButton
      Left = 461
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Copy'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button1Click
    end
    object MJCB: TComboBox
      Left = 89
      Top = 43
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 4
      Text = 'ALL'
      Items.Strings = (
        'ALL')
    end
    object CLCB: TComboBox
      Left = 256
      Top = 43
      Width = 193
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 5
      Text = 'ALL'
      OnChange = CLCBChange
      Items.Strings = (
        'ALL')
    end
    object DDBHEdit: TEdit
      Left = 256
      Top = 12
      Width = 185
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 774
    Height = 388
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
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGridEh1DblClick
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'workid'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = 'Workid'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'SNO'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'SIZE'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'MJBH'
        Footers = <>
        Title.Caption = 'Model ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'englishname'
        Footers = <>
        Title.Caption = 'English Name'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 141
      end
      item
        Color = clMenu
        EditButtons = <>
        FieldName = 'qty'
        Footers = <>
        Title.Caption = 'Qty'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'okqty'
        Footers = <>
        Title.Caption = 'OKQty'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'codebar'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 110
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 89
      end>
  end
  object Query1: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'select workplans.workid,workplans.SNO,workplans.SIZE,workplan.MJ' +
        'BH,workplan.colorno,colorclass.englishname,workplans.qty,workpla' +
        'ns.okqty ,(codebar+'#39'-'#39') as codebar,DDBH'
      'from LIY_DD.dbo.workplans workplans'
      
        'left join LIY_DD.dbo.workplan workplan on workplan.workID=workpl' +
        'ans.workID '
      
        'left join LIY_DD.dbo.colorclass colorclass on colorclass.colorno' +
        '=workplan.colorno '
      'where 1=1 and qty > okqty '
      'and workplans.workid='#39'202006005'#39)
    UpdateObject = updSQL
    Left = 336
    Top = 104
    object Query1workid: TStringField
      FieldName = 'workid'
      FixedChar = True
      Size = 12
    end
    object Query1SNO: TIntegerField
      FieldName = 'SNO'
    end
    object Query1SIZE: TStringField
      FieldName = 'SIZE'
      FixedChar = True
      Size = 6
    end
    object Query1MJBH: TStringField
      FieldName = 'MJBH'
      FixedChar = True
    end
    object Query1colorno: TStringField
      FieldName = 'colorno'
      FixedChar = True
      Size = 4
    end
    object Query1englishname: TStringField
      FieldName = 'englishname'
      FixedChar = True
      Size = 100
    end
    object Query1qty: TIntegerField
      FieldName = 'qty'
    end
    object Query1okqty: TIntegerField
      FieldName = 'okqty'
    end
    object Query1codebar: TStringField
      FieldName = 'codebar'
      FixedChar = True
      Size = 23
    end
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 18
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 336
    Top = 168
  end
  object TmpQuery: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select bz2 as mjdh from LIY_DD.dbo.mjzl group by bz2')
    Left = 300
    Top = 105
  end
  object colorclassQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from LIY_DD.dbo.colorclass')
    Left = 428
    Top = 105
    object colorclassQryColorNo: TStringField
      FieldName = 'ColorNo'
      Origin = 'DB.colorclass.ColorNo'
      FixedChar = True
      Size = 4
    end
    object colorclassQryEnglishName: TStringField
      FieldName = 'EnglishName'
      Origin = 'DB.colorclass.EnglishName'
      FixedChar = True
      Size = 50
    end
  end
  object updSQL: TUpdateSQL
    Left = 336
    Top = 136
  end
end
