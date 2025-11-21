object Pursample_S: TPursample_S
  Left = 356
  Top = 203
  Width = 729
  Height = 369
  BorderIcons = [biSystemMenu]
  Caption = 'Pursample_S'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 721
    Height = 49
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
      Top = 16
      Width = 60
      Height = 20
      Caption = 'Spp NO:'
    end
    object Label2: TLabel
      Left = 210
      Top = 17
      Width = 62
      Height = 20
      Caption = 'Supplier:'
    end
    object Edit1: TEdit
      Left = 80
      Top = 14
      Width = 113
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
      Left = 490
      Top = 8
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 281
      Top = 11
      Width = 193
      Height = 28
      TabOrder = 2
      OnKeyPress = Edit2KeyPress
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 49
    Width = 721
    Height = 289
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
        FieldName = 'zsdh'
        Title.Caption = 'SuppNO'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'zsjc'
        Title.Caption = 'Supplier Name'
        Width = 260
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'zsywjc'
        Title.Caption = 'Supplier'
        Width = 241
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
    DataSource = PurSample_IM.DS1
    SQL.Strings = (
      'select * from ZSZL'
      'where ZSDH =: CSBH')
    Left = 424
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        ParamType = ptUnknown
      end>
    object Query1zsdh: TStringField
      FieldName = 'zsdh'
      Origin = 'DB.ZSZL.zsdh'
      FixedChar = True
      Size = 6
    end
    object Query1zsjc: TStringField
      FieldName = 'zsjc'
      Origin = 'DB.ZSZL.zsjc'
      FixedChar = True
    end
    object Query1zsywjc: TStringField
      FieldName = 'zsywjc'
      Origin = 'DB.ZSZL.zsywjc'
      FixedChar = True
    end
  end
end
