object MaterialCheng: TMaterialCheng
  Left = 225
  Top = 157
  Width = 928
  Height = 567
  Caption = 'Material Cheng'
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
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 233
    Align = alTop
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 910
      Height = 231
      Align = alClient
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'tempddbh'
          Title.Caption = 'TempClbh'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cllb'
          Title.Caption = 'CLASS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ddbh'
          Title.Caption = 'CLBH'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ywpm'
          Title.Caption = 'Material English'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'zwpm'
          Title.Caption = 'Material Chine'
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 233
    Width = 912
    Height = 120
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 32
      Top = 32
      Width = 53
      Height = 20
      Caption = 'CLASS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 32
      Top = 64
      Width = 66
      Height = 20
      Caption = 'TEMPNO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 256
      Top = 64
      Width = 72
      Height = 20
      Caption = 'Cheng TO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 328
      Top = 28
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 464
      Top = 62
      Width = 75
      Height = 25
      Caption = 'Assign'
      TabOrder = 1
      OnClick = Button2Click
    end
    object DBEdit1: TDBEdit
      Left = 112
      Top = 64
      Width = 134
      Height = 21
      DataField = 'tempddbh'
      DataSource = DataSource1
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 336
      Top = 64
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object cb1: TComboBox
      Left = 112
      Top = 32
      Width = 105
      Height = 21
      ItemHeight = 13
      TabOrder = 4
    end
    object ckb1: TCheckBox
      Left = 227
      Top = 30
      Width = 94
      Height = 25
      Caption = 'No Assign'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 5
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 353
    Width = 912
    Height = 176
    Align = alClient
    TabOrder = 2
    object DBGrid2: TDBGrid
      Left = 1
      Top = 1
      Width = 910
      Height = 174
      Align = alClient
      DataSource = DataSource2
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid2DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'cldh'
          Title.Caption = 'CLBH'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cllb'
          Title.Caption = 'CLASS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ywpm'
          Title.Caption = 'Material English'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'zwpm'
          Title.Caption = 'Material Chine'
          Visible = True
        end>
    end
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'select * from clzltemp')
    UpdateObject = UpdateSQL1
    Left = 80
    Top = 48
    object Query1tempddbh: TStringField
      FieldName = 'tempddbh'
      Origin = 'DB.clzltemp.tempddbh'
      FixedChar = True
      Size = 10
    end
    object Query1cllb: TStringField
      FieldName = 'cllb'
      Origin = 'DB.clzltemp.cllb'
      FixedChar = True
      Size = 4
    end
    object Query1ddbh: TStringField
      FieldName = 'ddbh'
      Origin = 'DB.clzltemp.ddbh'
      FixedChar = True
      Size = 10
    end
    object Query1ywpm: TStringField
      FieldName = 'ywpm'
      Origin = 'DB.clzltemp.ywpm'
      FixedChar = True
      Size = 200
    end
    object Query1zwpm: TStringField
      FieldName = 'zwpm'
      Origin = 'DB.clzltemp.zwpm'
      FixedChar = True
      Size = 200
    end
  end
  object Query2: TQuery
    DatabaseName = 'dB'
    DataSource = DataSource1
    SQL.Strings = (
      'select * from clzl '
      'where cllb=:cllb'
      '         and userdate>=getdate()-60')
    Left = 104
    Top = 385
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'cllb'
        ParamType = ptUnknown
        Size = 5
      end>
    object Query2cldh: TStringField
      FieldName = 'cldh'
      FixedChar = True
      Size = 10
    end
    object Query2cllb: TStringField
      FieldName = 'cllb'
      FixedChar = True
      Size = 4
    end
    object Query2ywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object Query2zwpm: TStringField
      FieldName = 'zwpm'
      FixedChar = True
      Size = 200
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 120
    Top = 48
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 144
    Top = 385
  end
  object UpdateSQL1: TUpdateSQL
    Left = 80
    Top = 88
  end
  object classq: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select cllb from clzltemp'
      'group by cllb')
    Left = 8
    Top = 257
  end
end
