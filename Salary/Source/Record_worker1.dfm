object Record_worker: TRecord_worker
  Left = 345
  Top = 224
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Record_worker'
  ClientHeight = 466
  ClientWidth = 695
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
    Width = 695
    Height = 73
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 16
      Height = 16
      Caption = 'ID:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 184
      Top = 32
      Width = 72
      Height = 16
      Caption = 'WorkName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 48
      Top = 24
      Width = 113
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object Button1: TButton
      Left = 512
      Top = 24
      Width = 89
      Height = 33
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 280
      Top = 24
      Width = 193
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyPress = Edit2KeyPress
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 73
    Width = 695
    Height = 393
    Align = alClient
    DataSource = DS1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
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
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 111
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'WorkName'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 271
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DepID'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 156
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
      'select *'
      'from BWorker'
      'order by ID')
    Left = 424
    Top = 160
    object Query1ID: TStringField
      FieldName = 'ID'
      Origin = 'DB.BWorker.ID'
      FixedChar = True
      Size = 10
    end
    object Query1DepID: TStringField
      FieldName = 'DepID'
      Origin = 'DB.BWorker.DepID'
      FixedChar = True
      Size = 10
    end
    object Query1WorkName: TStringField
      FieldName = 'WorkName'
      Origin = 'DB.BWorker.WorkName'
      FixedChar = True
    end
    object Query1UserID: TStringField
      FieldName = 'UserID'
      Origin = 'DB.BWorker.UserID'
      FixedChar = True
      Size = 10
    end
    object Query1UserDate: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'DB.BWorker.UserDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.BWorker.YN'
      FixedChar = True
      Size = 1
    end
  end
end
