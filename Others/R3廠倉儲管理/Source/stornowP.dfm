object stornow: Tstornow
  Left = 252
  Top = 178
  Width = 928
  Height = 480
  Caption = 'Stor Now'
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
    Width = 912
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label3: TLabel
      Left = 16
      Top = 21
      Width = 67
      Height = 20
      Caption = 'Mode NO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 216
      Top = 21
      Width = 37
      Height = 20
      Caption = 'Color'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object MJCB: TComboBox
      Left = 88
      Top = 20
      Width = 121
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'ALL'
      Items.Strings = (
        'ALL')
    end
    object CLCB: TComboBox
      Left = 264
      Top = 20
      Width = 193
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      Text = 'ALL'
      OnChange = CLCBChange
      Items.Strings = (
        'ALL')
    end
    object Edit1: TEdit
      Left = 687
      Top = 16
      Width = 57
      Height = 21
      TabOrder = 2
      Visible = False
    end
    object Button1: TButton
      Left = 472
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 3
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 640
    Top = 65
    Width = 272
    Height = 377
    Align = alRight
    TabOrder = 1
    object DBGrid2: TDBGrid
      Left = 1
      Top = 1
      Width = 270
      Height = 375
      Align = alClient
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 65
    Width = 640
    Height = 377
    Align = alClient
    TabOrder = 2
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 638
      Height = 375
      Align = alClient
      DataSource = wsm
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      ParentFont = False
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      UseMultiTitle = True
    end
  end
  object Query1: TQuery
    DatabaseName = 'db'
    SQL.Strings = (
      'select bz2 as mjbh '
      'from mjzl'
      'group by bz2'
      'order by bz2')
    Left = 588
    Top = 17
    object Query1mjbh: TStringField
      FieldName = 'mjbh'
      Origin = 'DB.mjzl.mjbh'
      FixedChar = True
    end
  end
  object Query2: TQuery
    DatabaseName = 'db'
    SQL.Strings = (
      'select * from colorclass')
    Left = 628
    Top = 17
    object Query2ColorNo: TStringField
      FieldName = 'ColorNo'
      Origin = 'DB.colorclass.ColorNo'
      FixedChar = True
      Size = 4
    end
    object Query2EnglishName: TStringField
      FieldName = 'EnglishName'
      Origin = 'DB.colorclass.EnglishName'
      FixedChar = True
      Size = 50
    end
  end
  object WSMQ: TQuery
    DatabaseName = 'dB'
    Left = 288
    Top = 137
  end
  object WSDQ: TQuery
    DatabaseName = 'dB'
    DataSource = wsm
    SQL.Strings = (
      'select scandate,size,inout,qty  from workwhsds'
      'where workid=:workid'
      'order by scandate')
    Left = 736
    Top = 137
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'workid'
        ParamType = ptUnknown
      end>
  end
  object sizeq: TQuery
    DatabaseName = 'dB'
    Left = 288
    Top = 177
  end
  object DataSource1: TDataSource
    DataSet = WSDQ
    Left = 784
    Top = 137
  end
  object wsm: TDataSource
    DataSet = WSMQ
    Left = 328
    Top = 137
  end
end
