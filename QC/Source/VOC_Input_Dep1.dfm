object VOC_Input_Dep: TVOC_Input_Dep
  Left = 427
  Top = 155
  Width = 476
  Height = 556
  Caption = 'VOC_Input_Dep'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 460
    Height = 52
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
      Top = 19
      Width = 54
      Height = 20
      Caption = 'DepNo:'
    end
    object Label2: TLabel
      Left = 152
      Top = 19
      Width = 76
      Height = 20
      Caption = 'DepName:'
    end
    object Label3: TLabel
      Left = 459
      Top = 16
      Width = 48
      Height = 20
      Caption = 'Label3'
      Visible = False
    end
    object Edit1: TEdit
      Left = 72
      Top = 11
      Width = 73
      Height = 26
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
      Left = 389
      Top = 11
      Width = 65
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 232
      Top = 11
      Width = 105
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 2
      OnKeyPress = Edit2KeyPress
    end
    object CheckBox1: TCheckBox
      Left = 346
      Top = 15
      Width = 42
      Height = 17
      Caption = 'All'
      TabOrder = 3
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 52
    Width = 460
    Height = 466
    Align = alClient
    DataSource = DS1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'VNI-Times'
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
        FieldName = 'ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'VNI-Times'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'DepNo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DepName'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'VNI-Times'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 138
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UserID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'VNI-Times'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'UserDate'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'VNI-Times'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'DepMemo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'VNI-Times'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 217
        Visible = True
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from BDepartment'
      'order by ID')
    Left = 424
    Top = 160
    object Query1ID: TStringField
      DisplayWidth = 12
      FieldName = 'ID'
      Origin = 'DB.BDepartment.ID'
      FixedChar = True
      Size = 10
    end
    object Query1DepName: TStringField
      DisplayWidth = 27
      FieldName = 'DepName'
      Origin = 'DB.BDepartment.DepName'
      FixedChar = True
      Size = 50
    end
    object Query1DepMemo: TStringField
      DisplayWidth = 57
      FieldName = 'DepMemo'
      Origin = 'DB.BDepartment.DepMemo'
      FixedChar = True
      Size = 50
    end
    object Query1UserID: TStringField
      DisplayWidth = 12
      FieldName = 'UserID'
      Origin = 'DB.BDepartment.UserID'
      FixedChar = True
      Size = 10
    end
    object Query1UserDate: TDateTimeField
      DisplayWidth = 21
      FieldName = 'UserDate'
      Origin = 'DB.BDepartment.UserDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1YN: TStringField
      DisplayWidth = 3
      FieldName = 'YN'
      Origin = 'DB.BDepartment.YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 128
  end
end
