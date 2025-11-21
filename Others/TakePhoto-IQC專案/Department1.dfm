object DepartForm: TDepartForm
  Left = 346
  Top = 34
  Width = 674
  Height = 693
  Caption = 'Department'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 24
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 658
    Height = 177
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object StageGroup: TRadioGroup
      Left = 16
      Top = 114
      Width = 553
      Height = 57
      Caption = 'Stage'
      Columns = 3
      ItemIndex = 2
      Items.Strings = (
        'Cutting'
        'Stenching'
        'Assembly')
      TabOrder = 0
      OnClick = StageGroupClick
    end
    object BB7: TBitBtn
      Left = 584
      Top = 64
      Width = 65
      Height = 57
      Hint = 'Exit Current Form'
      Caption = 'Exit'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BB7Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033BBBBBBBBBB
        BB33337777777777777F33BB00BBBBBBBB33337F77333333F37F33BB0BBBBBB0
        BB33337F73F33337FF7F33BBB0BBBB000B33337F37FF3377737F33BBB00BB00B
        BB33337F377F3773337F33BBBB0B00BBBB33337F337F7733337F33BBBB000BBB
        BB33337F33777F33337F33EEEE000EEEEE33337F3F777FFF337F33EE0E80000E
        EE33337F73F77773337F33EEE0800EEEEE33337F37377F33337F33EEEE000EEE
        EE33337F33777F33337F33EEEEE00EEEEE33337F33377FF3337F33EEEEEE00EE
        EE33337F333377F3337F33EEEEEE00EEEE33337F33337733337F33EEEEEEEEEE
        EE33337FFFFFFFFFFF7F33EEEEEEEEEEEE333377777777777773}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object FactoryGroup: TRadioGroup
      Left = 16
      Top = 2
      Width = 553
      Height = 57
      Caption = 'Factory'
      Columns = 3
      ItemIndex = 1
      Items.Strings = (
        'A1 A2'
        'A1'
        'A2')
      TabOrder = 2
      OnClick = StageGroupClick
    end
    object ProductionGroup: TRadioGroup
      Left = 16
      Top = 58
      Width = 553
      Height = 57
      Caption = 'Production Line'
      Columns = 5
      ItemIndex = 1
      Items.Strings = (
        'ALL'
        'LEAN1'
        'LEAN2'
        'LEAN3'
        'LEAN4')
      TabOrder = 3
      OnClick = StageGroupClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 177
    Width = 658
    Height = 478
    Align = alClient
    DataSource = DS1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = '@'#32048#26126#39636
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
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -27
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
        Title.Font.Height = -27
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 168
        Visible = True
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
        Title.Font.Height = -27
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 351
        Visible = True
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from BDepartment'
      'order by ID')
    Left = 536
    Top = 224
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
    Left = 536
    Top = 192
  end
end
