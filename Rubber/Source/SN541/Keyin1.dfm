object keyin: Tkeyin
  Left = 282
  Top = 88
  Width = 1037
  Height = 480
  Caption = 'Key In'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1021
    Height = 97
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 26
      Top = 12
      Width = 103
      Height = 20
      Caption = 'Select WorkID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 90
      Top = 61
      Width = 39
      Height = 20
      Caption = 'Class'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 94
      Top = 37
      Width = 35
      Height = 20
      Caption = 'Date'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object workidcb: TComboBox
      Left = 135
      Top = 10
      Width = 145
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 0
    end
    object Query: TButton
      Left = 312
      Top = 32
      Width = 73
      Height = 49
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = QueryClick
    end
    object UpdateBtn: TButton
      Left = 400
      Top = 32
      Width = 75
      Height = 49
      Caption = 'Update'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Visible = False
      OnClick = UpdateBtnClick
    end
    object CLassCB: TComboBox
      Left = 135
      Top = 61
      Width = 145
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 3
      Text = 'Ca 1 - Morning'
      OnChange = CLassCBChange
      Items.Strings = (
        'Ca 1 - Morning'
        'Ca 2- Noon'
        'Ca 3 - Night')
    end
    object CheckBox1: TCheckBox
      Left = 488
      Top = 48
      Width = 121
      Height = 17
      Caption = 'Qty>OKQty'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 4
    end
    object WorkDTP: TDateTimePicker
      Left = 135
      Top = 36
      Width = 144
      Height = 24
      Date = 44026.314610104160000000
      Time = 44026.314610104160000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnChange = WorkDTPChange
      OnExit = WorkDTPExit
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 97
    Width = 1021
    Height = 345
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
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'WorkID'
        Footer.ValueType = fvtCount
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Workid'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'SNO'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 37
      end
      item
        EditButtons = <>
        FieldName = 'Size'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'SIZE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'MJBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Model ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 86
      end
      item
        EditButtons = <>
        FieldName = 'englishname'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'English Name'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 162
      end
      item
        Color = clMenu
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 52
      end
      item
        Color = clMenu
        EditButtons = <>
        FieldName = 'OKQTY'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'OKQty'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 69
      end
      item
        Color = clMenu
        EditButtons = <>
        FieldName = 'Package'
        Footers = <>
        ReadOnly = True
      end
      item
        Color = 10223615
        EditButtons = <>
        FieldName = 'OKCTS'
        Footers = <>
      end>
  end
  object tempQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select top 1000 workid from LIY_DD.dbo.workplans'
      'where qty > okqty'
      'group by workid'
      'order by workid desc')
    Left = 288
    Top = 24
  end
  object UpdataQuery: TQuery
    DatabaseName = 'DB'
    Left = 408
    Top = 264
  end
  object DS1: TDataSource
    DataSet = workplansedit
    Left = 440
    Top = 296
  end
  object workplansedit: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'select workplans.*,workplan.ColorNo,workplan.MJBH,colorclass.eng' +
        'lishname,colorclass.ChinaNmae,0 as OKCTS '
      ' from LIY_DD.dbo.workplans workplans  '
      
        ' left join LIY_DD.dbo.workplan  workplan on workplan.WorkID=work' +
        'plans.WorkID'
      
        ' left join LIY_DD.dbo.colorclass colorclass on workplan.ColorNo=' +
        'colorclass.ColorNo '
      ' where  workplans.creatdate>GetDate()-360 '
      ' and workplans.Qty>workplans.OKQty '
      'and workplans.workid='#39'202007001'#39)
    UpdateObject = wpsu
    Left = 440
    Top = 264
    object workplanseditWorkID: TStringField
      FieldName = 'WorkID'
      FixedChar = True
      Size = 12
    end
    object workplanseditDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 18
    end
    object workplanseditSNO: TIntegerField
      FieldName = 'SNO'
    end
    object workplanseditSize: TStringField
      FieldName = 'Size'
      FixedChar = True
      Size = 6
    end
    object workplanseditPackage: TIntegerField
      FieldName = 'Package'
    end
    object workplanseditQty: TIntegerField
      FieldName = 'Qty'
    end
    object workplanseditOKQTY: TIntegerField
      FieldName = 'OKQTY'
    end
    object workplanseditOutQTY: TIntegerField
      FieldName = 'OutQTY'
    end
    object workplanseditNBarCode: TIntegerField
      FieldName = 'NBarCode'
    end
    object workplanseditPbarcode: TIntegerField
      FieldName = 'Pbarcode'
    end
    object workplanseditUserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
    end
    object workplanseditCreatDate: TDateTimeField
      FieldName = 'CreatDate'
    end
    object workplanseditUpdateDate: TDateTimeField
      FieldName = 'UpdateDate'
    end
    object workplanseditLastUser: TStringField
      FieldName = 'LastUser'
      FixedChar = True
    end
    object workplanseditcodebar: TStringField
      FieldName = 'codebar'
      FixedChar = True
      Size = 22
    end
    object workplanseditYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object workplanseditColorNo: TStringField
      FieldName = 'ColorNo'
      FixedChar = True
      Size = 4
    end
    object workplanseditMJBH: TStringField
      FieldName = 'MJBH'
      FixedChar = True
    end
    object workplanseditenglishname: TStringField
      FieldName = 'englishname'
      FixedChar = True
      Size = 100
    end
    object workplanseditChinaNmae: TStringField
      FieldName = 'ChinaNmae'
      FixedChar = True
      Size = 100
    end
    object workplanseditOKCTS: TIntegerField
      FieldName = 'OKCTS'
      OnSetText = workplanseditOKCTSSetText
    end
  end
  object wpsu: TUpdateSQL
    ModifySQL.Strings = (
      'update LIY_DD.dbo.workplans'
      'set'
      '  okqty = :oldqty'
      'where'
      '  workid = :OLD_workid and'
      '  sno = :OLD_sno and'
      '  size = :OLD_size ')
    Left = 440
    Top = 320
  end
end
