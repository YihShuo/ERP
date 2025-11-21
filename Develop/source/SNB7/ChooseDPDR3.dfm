object ChooseDPDR2: TChooseDPDR2
  Left = 527
  Top = 167
  Width = 1305
  Height = 675
  Caption = 'NB7ChooseDPDR'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1287
    Height = 89
    Align = alTop
    TabOrder = 0
    object Button1: TButton
      Left = 320
      Top = 32
      Width = 75
      Height = 25
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 424
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 89
    Width = 497
    Height = 541
    Align = alLeft
    Caption = 'Panel2'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 495
      Height = 539
      Align = alClient
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -20
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'YYBH'
          Title.Caption = 'X'
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'YWSM'
          Title.Caption = 'Department'
          Width = 323
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 497
    Top = 89
    Width = 790
    Height = 541
    Align = alClient
    Caption = 'Panel3'
    TabOrder = 2
    object DBGrid2: TDBGrid
      Left = 1
      Top = 1
      Width = 788
      Height = 539
      Align = alClient
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -20
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid2DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'YYBH'
          Title.Caption = 'X'
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VWSM'
          Title.Caption = 'Ly do'
          Width = 419
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'YWSM'
          Title.Caption = 'Reason'
          Width = 436
          Visible = True
        end>
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select YYBH,YWSM from shoetestdetail where LEFT(YYBH,2)='#39'DP'#39)
    Left = 137
    Top = 57
    object Query1YYBH: TStringField
      FieldName = 'YYBH'
      FixedChar = True
      Size = 4
    end
    object Query1YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 137
    Top = 105
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    DataSource = DataSource1
    SQL.Strings = (
      'select YYBH,YWSM,VWSM from shoetestdetail where class=:yybh')
    Left = 769
    Top = 169
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'YYBH'
        ParamType = ptUnknown
        Size = 5
      end>
    object Query2YYBH: TStringField
      FieldName = 'YYBH'
      Origin = 'DB.shoetestdetail.YYBH'
      FixedChar = True
      Size = 4
    end
    object Query2YWSM: TStringField
      FieldName = 'YWSM'
      Origin = 'DB.shoetestdetail.YWSM'
      FixedChar = True
      Size = 50
    end
    object Query2VWSM: TStringField
      FieldName = 'VWSM'
      Origin = 'DB.shoetestdetail.VWSM'
      FixedChar = True
      Size = 50
    end
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 769
    Top = 217
  end
end
