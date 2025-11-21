object chooseDPDR1: TchooseDPDR1
  Left = 198
  Top = 120
  Width = 1386
  Height = 788
  Caption = 'chooseDPDR'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1370
    Height = 72
    Align = alTop
    TabOrder = 0
    object Button1: TButton
      Left = 260
      Top = 26
      Width = 61
      Height = 20
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 345
      Top = 26
      Width = 60
      Height = 20
      Caption = 'Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 72
    Width = 1370
    Height = 677
    Align = alClient
    TabOrder = 1
    object Panel3: TPanel
      Left = 332
      Top = 1
      Width = 1037
      Height = 675
      Align = alClient
      Caption = 'Panel3'
      TabOrder = 0
      object DBGrid2: TDBGrid
        Left = 1
        Top = 1
        Width = 1035
        Height = 673
        Align = alClient
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = pm1
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
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 331
      Height = 675
      Align = alLeft
      Caption = 'Panel2'
      TabOrder = 1
      object DBGrid1: TDBGrid
        Left = 1
        Top = 1
        Width = 329
        Height = 673
        Align = alClient
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
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
      
        'select YYBH,YWSM,VWSM,class,'#39'1'#39' as YN from shoetestdetail where ' +
        'class=:yybh')
    UpdateObject = UpdateSQL2
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
    object Query2class: TStringField
      FieldName = 'class'
      FixedChar = True
      Size = 104
    end
    object Query2YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 769
    Top = 217
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 701
    Top = 169
  end
  object BDelRec: TQuery
    DatabaseName = 'DB'
    Left = 700
    Top = 212
  end
  object pm1: TPopupMenu
    Left = 768
    Top = 264
    object Modify1: TMenuItem
      Caption = 'Modify'
      Enabled = False
      OnClick = Modify1Click
    end
    object Delete1: TMenuItem
      Caption = 'Delete'
      Enabled = False
      OnClick = Delete1Click
    end
    object Insert1: TMenuItem
      Caption = 'Insert'
      Enabled = False
      OnClick = Insert1Click
    end
    object Save1: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = Save1Click
    end
    object Cancel1: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = Cancel1Click
    end
  end
  object UpdateSQL2: TUpdateSQL
    ModifySQL.Strings = (
      'update shoetestdetail'
      'set'
      '  yybh = :yybh,'
      '  ywsm = :ywsm,'
      '  vwsm = :vwsm,'
      '  class = :class'
      'where'
      '  yybh = :old_yybh ')
    InsertSQL.Strings = (
      'insert into shoetestdetail'
      '  (yybh, ywsm, vwsm, class)'
      'values'
      '  (:yybh, :ywsm, :vwsm, :class)')
    DeleteSQL.Strings = (
      'delete from shoetestdetail'
      'where'
      '  yybh = :old_yybh ')
    Left = 804
    Top = 169
  end
end
