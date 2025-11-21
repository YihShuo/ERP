object QC_ShoeTestTB: TQC_ShoeTestTB
  Left = 489
  Top = 218
  Width = 1000
  Height = 740
  Align = alClient
  Caption = 'QC_ShoeTestTB'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 984
    Height = 701
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Pa1: TPanel
      Left = 1
      Top = 1
      Width = 982
      Height = 45
      Align = alTop
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 7
        Top = 10
        Width = 55
        Height = 23
        Caption = 'Season'
      end
      object Label2: TLabel
        Left = 253
        Top = 10
        Width = 52
        Height = 23
        Caption = 'TestNo'
      end
      object Label3: TLabel
        Left = 430
        Top = 10
        Width = 19
        Height = 23
        Caption = 'SR'
      end
      object Label4: TLabel
        Left = 137
        Top = 10
        Width = 42
        Height = 23
        Caption = 'Stage'
      end
      object Button2: TButton
        Left = 576
        Top = 6
        Width = 80
        Height = 33
        Caption = 'Query'
        TabOrder = 0
        OnClick = Button2Click
      end
      object Edit3: TEdit
        Left = 312
        Top = 6
        Width = 98
        Height = 31
        TabOrder = 1
      end
      object Edit2: TEdit
        Left = 65
        Top = 7
        Width = 59
        Height = 31
        TabOrder = 2
      end
      object Edit4: TEdit
        Left = 459
        Top = 7
        Width = 98
        Height = 31
        TabOrder = 3
      end
      object Edit5: TEdit
        Left = 182
        Top = 7
        Width = 59
        Height = 31
        TabOrder = 4
      end
      object Button3: TButton
        Left = 680
        Top = 4
        Width = 80
        Height = 33
        Caption = 'OK'
        TabOrder = 5
        OnClick = Button3Click
      end
    end
    object Pa2: TPanel
      Left = 1
      Top = 46
      Width = 982
      Height = 45
      Align = alTop
      TabOrder = 1
      Visible = False
      object Label7: TLabel
        Left = 8
        Top = 10
        Width = 46
        Height = 23
        Caption = 'DDBH'
      end
      object Label8: TLabel
        Left = 258
        Top = 10
        Width = 50
        Height = 23
        Caption = 'Article'
      end
      object Label9: TLabel
        Left = 393
        Top = 10
        Width = 56
        Height = 23
        Caption = 'XieXing'
      end
      object Button1: TButton
        Left = 576
        Top = 6
        Width = 80
        Height = 33
        Caption = 'Query'
        TabOrder = 0
        OnClick = Button1Click
      end
      object Ed1: TEdit
        Left = 65
        Top = 7
        Width = 168
        Height = 31
        TabOrder = 1
      end
      object Ed2: TEdit
        Left = 310
        Top = 7
        Width = 59
        Height = 31
        TabOrder = 2
      end
      object Ed3: TEdit
        Left = 456
        Top = 7
        Width = 98
        Height = 31
        TabOrder = 3
      end
    end
    object PC1: TPageControl
      Left = 1
      Top = 136
      Width = 982
      Height = 564
      ActivePage = TS1
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnChange = PC1Change
      object TS1: TTabSheet
        Caption = 'Develop'
        object DBGridEh2: TDBGridEh
          Left = 0
          Top = 0
          Width = 974
          Height = 526
          Align = alClient
          DataSource = DataSource2
          Flat = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -16
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnCellClick = DBGridEh2CellClick
          Columns = <
            item
              EditButtons = <>
              FieldName = 'Season'
              Footers = <>
              ReadOnly = True
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Calibri'
              Title.Font.Style = []
              Width = 59
            end
            item
              EditButtons = <>
              FieldName = 'Stage'
              Footers = <>
              ReadOnly = True
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Calibri'
              Title.Font.Style = []
              Width = 61
            end
            item
              EditButtons = <>
              FieldName = 'TestNo'
              Footers = <>
              ReadOnly = True
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Calibri'
              Title.Font.Style = []
              Width = 78
            end
            item
              EditButtons = <>
              FieldName = 'SR'
              Footers = <>
              ReadOnly = True
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Calibri'
              Title.Font.Style = []
              Width = 181
            end
            item
              EditButtons = <>
              FieldName = 'SampleOrder'
              Footers = <>
              ReadOnly = True
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Calibri'
              Title.Font.Style = []
              Width = 199
            end
            item
              EditButtons = <>
              FieldName = 'qty'
              Footers = <>
              ReadOnly = True
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Calibri'
              Title.Font.Style = []
              Width = 51
            end
            item
              EditButtons = <>
              FieldName = 'depname'
              Footers = <>
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Calibri'
              Title.Font.Style = []
              Width = 68
            end
            item
              EditButtons = <>
              FieldName = 'ywsm'
              Footers = <>
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Calibri'
              Title.Font.Style = []
              Width = 180
            end
            item
              EditButtons = <>
              FieldName = 'parts'
              Footers = <>
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Calibri'
              Title.Font.Style = []
              Width = 52
            end
            item
              EditButtons = <>
              FieldName = 'ywsm1'
              Footers = <>
              Title.Caption = 'ywsm'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Calibri'
              Title.Font.Style = []
              Width = 185
            end>
        end
      end
      object TS2: TTabSheet
        Caption = 'Production'
        ImageIndex = 1
        object DBGridEh3: TDBGridEh
          Left = 0
          Top = 0
          Width = 974
          Height = 526
          Align = alClient
          DataSource = DataSource3
          Flat = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = ANSI_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -19
          FooterFont.Name = 'Calibri'
          FooterFont.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'Calibri'
          TitleFont.Style = []
          OnCellClick = DBGridEh3CellClick
          Columns = <
            item
              EditButtons = <>
              FieldName = 'DDBH'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'Article'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'XieXing'
              Footers = <>
            end>
        end
      end
      object TS3: TTabSheet
        Caption = 'CBY'
        ImageIndex = 2
        object DBGridEh1: TDBGridEh
          Left = 0
          Top = 0
          Width = 974
          Height = 526
          Align = alClient
          DataSource = DataSource4
          Flat = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = ANSI_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -19
          FooterFont.Name = 'Calibri'
          FooterFont.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'Calibri'
          TitleFont.Style = []
          OnCellClick = DBGridEh1CellClick
          Columns = <
            item
              EditButtons = <>
              FieldName = 'workOrderId'
              Footers = <>
              Width = 90
            end
            item
              EditButtons = <>
              FieldName = 'Article'
              Footers = <>
            end>
        end
      end
    end
    object Pa3: TPanel
      Left = 1
      Top = 91
      Width = 982
      Height = 45
      Align = alTop
      TabOrder = 3
      Visible = False
      object Label5: TLabel
        Left = 8
        Top = 10
        Width = 102
        Height = 23
        Caption = 'workOrderId'
      end
      object Label6: TLabel
        Left = 314
        Top = 10
        Width = 50
        Height = 23
        Caption = 'Article'
      end
      object Button4: TButton
        Left = 472
        Top = 6
        Width = 80
        Height = 33
        Caption = 'Query'
        TabOrder = 0
        OnClick = Button4Click
      end
      object Edit1: TEdit
        Left = 121
        Top = 7
        Width = 168
        Height = 31
        TabOrder = 1
      end
      object Edit6: TEdit
        Left = 366
        Top = 7
        Width = 83
        Height = 31
        TabOrder = 2
      end
    end
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 161
    Top = 169
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select shoetest.Season,shoetest.TestNo,shoetest.Article as SR,sh' +
        'oetest.ypdh as SampleOrder,shoetest.Stage,'
      
        'shoetest2.qty,shoetest2.depname,(select ywsm from shoetestdetail' +
        ' where yybh = shoetest2.depname) as ywsm,'
      
        'shoetest2.parts,(select ywsm from shoetestdetail where yybh = sh' +
        'oetest2.parts) as ywsm1 '
      'from shoetest '
      'left join shoetest2 on shoetest.TestNo = shoetest2.TestNo'
      ' where 1=2')
    Left = 161
    Top = 201
    object Query2Season: TStringField
      FieldName = 'Season'
      FixedChar = True
      Size = 4
    end
    object Query2TestNo: TStringField
      FieldName = 'TestNo'
      FixedChar = True
      Size = 10
    end
    object Query2SR: TStringField
      FieldName = 'SR'
      FixedChar = True
    end
    object Query2SampleOrder: TStringField
      FieldName = 'SampleOrder'
      FixedChar = True
      Size = 15
    end
    object Query2Stage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 15
    end
    object Query2qty: TFloatField
      FieldName = 'qty'
    end
    object Query2depname: TStringField
      FieldName = 'depname'
      FixedChar = True
    end
    object Query2ywsm: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 50
    end
    object Query2parts: TStringField
      FieldName = 'parts'
      FixedChar = True
      Size = 4
    end
    object Query2ywsm1: TStringField
      FieldName = 'ywsm1'
      FixedChar = True
      Size = 50
    end
  end
  object DataSource3: TDataSource
    DataSet = Query3
    Left = 213
    Top = 173
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT DDBH,Article,XieXing  from ddzl')
    Left = 213
    Top = 205
    object Query3DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Query3Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query3XieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT workOrderId, style Article from CBY_Orders')
    Left = 253
    Top = 205
    object Query1workOrderId: TStringField
      FieldName = 'workOrderId'
    end
    object StringField2: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
  end
  object DataSource4: TDataSource
    DataSet = Query1
    Left = 253
    Top = 173
  end
end
