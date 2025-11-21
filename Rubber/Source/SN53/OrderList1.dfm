object OrderList: TOrderList
  Left = 293
  Top = 228
  Width = 1026
  Height = 444
  Caption = 'Order List'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object panel1: TPanel
    Left = 0
    Top = 0
    Width = 1010
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 12
      Width = 55
      Height = 20
      Caption = 'XieXing'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 202
      Top = 12
      Width = 64
      Height = 20
      Caption = 'Order No'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 26
      Top = 44
      Width = 44
      Height = 20
      Caption = 'Article'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 210
      Top = 44
      Width = 51
      Height = 20
      Caption = 'Buy No'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 74
      Top = 12
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 274
      Top = 12
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Button1: TButton
      Left = 408
      Top = 24
      Width = 75
      Height = 31
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
    object CKWork: TCheckBox
      Left = 602
      Top = 16
      Width = 97
      Height = 17
      Caption = 'No WorkID'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 3
    end
    object Button2: TButton
      Left = 500
      Top = 24
      Width = 75
      Height = 31
      Caption = 'Copy'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Button2Click
    end
    object Edit3: TEdit
      Left = 74
      Top = 44
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Edit4: TEdit
      Left = 274
      Top = 44
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object CheckBox1: TCheckBox
      Left = 602
      Top = 40
      Width = 97
      Height = 17
      Caption = 'Tythac Order'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      Visible = False
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 89
    Width = 1010
    Height = 316
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
        FieldName = 'ddbh'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 86
      end
      item
        EditButtons = <>
        FieldName = 'cqdh'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'xiexing'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'article'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 114
      end
      item
        EditButtons = <>
        FieldName = 'khdh'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'khpo'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'ddjq'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'pairs'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'workID'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end>
  end
  object QOrder: TQuery
    DatabaseName = 'DB'
    DataSource = ProductionPlan.WPS
    SQL.Strings = (
      'SElect ddbh,cqdh,xiexing,article,khdh,khpo,ddjq,pairs,shipdate'
      
        '      (select Max(WorkID) as WorkID from LIY_DD.dbo.workplanss w' +
        'orkplanss where workplanss.ddbh=DDZL.DDBH ) as workID   from LIY' +
        '_DD.dbo.ddzl ddzl'
      'where CQDH='#39'VR3'#39
      ' and DDRQ >= '#39'20120301'#39#9
      ' and ddbh like '#39'Y1802-0804%'#39)
    Left = 344
    Top = 128
    object QOrderddbh: TStringField
      FieldName = 'ddbh'
      FixedChar = True
      Size = 18
    end
    object QOrdercqdh: TStringField
      FieldName = 'cqdh'
      FixedChar = True
      Size = 3
    end
    object QOrderxiexing: TStringField
      FieldName = 'xiexing'
      FixedChar = True
      Size = 18
    end
    object QOrderarticle: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object QOrderkhdh: TStringField
      FieldName = 'khdh'
      FixedChar = True
      Size = 4
    end
    object QOrderkhpo: TStringField
      FieldName = 'khpo'
      FixedChar = True
      Size = 50
    end
    object QOrderddjq: TStringField
      FieldName = 'ddjq'
      FixedChar = True
      Size = 8
    end
    object QOrderpairs: TFloatField
      FieldName = 'pairs'
    end
    object QOrderworkID: TStringField
      FieldName = 'workID'
      FixedChar = True
      Size = 12
    end
    object QOrdershipdate: TDateTimeField
      FieldName = 'shipdate'
    end
  end
  object DataSource1: TDataSource
    DataSet = QOrder
    Left = 376
    Top = 128
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '')
    Left = 344
    Top = 160
  end
  object ExeQuery: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'set ansi_nulls on '
      'set ansi_warnings on '
      
        'if  not exists(select *  from   master..sysservers  where  srvna' +
        'me= '#39'HumanDB'#39')'
      'Exec sp_addlinkedserver'
      '   @server='#39'HumanDB'#39', --//linkserver name.'
      '   @srvproduct='#39#39', --//'#19968#33324#25551#36848
      
        '   @provider='#39'SQLOLEDB'#39', --//OLEDB Provider name, check BOL for ' +
        'more providers'
      
        '   @datasrc='#39' 192.168.23.12'#39', --//'#36960#31471'Server Name  192.168.11.100\' +
        'sql2k8'
      '   @catalog='#39'P0104-TYXUAN'#39' --//default database for linkserver'
      ''
      '--//[2]Add linked server login'
      'Exec sp_addlinkedsrvlogin'
      '@useself='#39'false'#39', --//false='#20351#29992#36960#31471#20351#29992#32773'/'#23494#30908#30331#20837
      ' --//true='#20351#29992#26412#22320#31471#20351#29992#32773'/'#23494#30908#36899#32218#36960#31471'SERVER'
      '@rmtsrvname='#39'HumanDB'#39', --//Linked server name'
      '@rmtuser='#39'hrms'#39' , --//'#36960#31471#30331#20837#20351#29992#32773
      '@rmtpassword='#39'123456'#39' --//'#36960#31471#30331#20837#20351#29992#32773#23494#30908)
    Left = 192
    Top = 136
  end
end
