object EquipmentSupplier_Sup: TEquipmentSupplier_Sup
  Left = 483
  Top = 349
  Width = 532
  Height = 297
  Caption = 'NewEquipment Classification_Sup'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 524
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
      Left = 6
      Top = 14
      Width = 24
      Height = 20
      Caption = 'No:'
    end
    object Label2: TLabel
      Left = 102
      Top = 14
      Width = 46
      Height = 20
      Caption = 'Name:'
    end
    object Button1: TButton
      Left = 312
      Top = 8
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object EDIT1: TEdit
      Left = 34
      Top = 11
      Width = 57
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 151
      Top = 11
      Width = 145
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Button2: TButton
      Left = 480
      Top = 24
      Width = 113
      Height = 33
      Caption = 'New'
      TabOrder = 3
      Visible = False
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 49
    Width = 524
    Height = 217
    Align = alClient
    DataSource = DS1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
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
        Title.Caption = 'No.'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'zsywjc'
        Width = 165
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'zsqm'
        Width = 173
        Visible = True
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 192
    Top = 104
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select zszl.zsdh,zszl.zsywjc,zszl.zsjc,zszl.zsqm,zszl.tybh,zszl.' +
        'fpdz,zszl.yjdz,zszl.dh,'
      
        '       zszl.cz,zszl.fzr,zszl.bb,zszl.llr2,zszl.llr,zszl.dybh,zsz' +
        'l.mark,zszl.TYJH,zszl.yn'
      ''
      'from ZSZL'
      'where ZSZL.YN<>1')
    Left = 192
    Top = 138
    object Query1zsdh: TStringField
      FieldName = 'zsdh'
      FixedChar = True
      Size = 6
    end
    object Query1zsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object Query1zsjc: TStringField
      FieldName = 'zsjc'
      FixedChar = True
    end
    object Query1zsqm: TStringField
      FieldName = 'zsqm'
      FixedChar = True
      Size = 50
    end
    object Query1tybh: TStringField
      FieldName = 'tybh'
      FixedChar = True
      Size = 15
    end
    object Query1fpdz: TStringField
      FieldName = 'fpdz'
      FixedChar = True
      Size = 120
    end
    object Query1yjdz: TStringField
      FieldName = 'yjdz'
      FixedChar = True
      Size = 120
    end
    object Query1dh: TStringField
      FieldName = 'dh'
      FixedChar = True
    end
    object Query1cz: TStringField
      FieldName = 'cz'
      FixedChar = True
    end
    object Query1fzr: TStringField
      FieldName = 'fzr'
      FixedChar = True
    end
    object Query1bb: TStringField
      FieldName = 'bb'
      FixedChar = True
      Size = 4
    end
    object Query1llr2: TStringField
      FieldName = 'llr2'
      FixedChar = True
    end
    object Query1llr: TStringField
      FieldName = 'llr'
      FixedChar = True
    end
    object Query1dybh: TStringField
      FieldName = 'dybh'
      FixedChar = True
      Size = 6
    end
    object Query1mark: TStringField
      FieldName = 'mark'
      FixedChar = True
      Size = 5
    end
    object Query1TYJH: TStringField
      FieldName = 'TYJH'
      FixedChar = True
      Size = 1
    end
    object Query1yn: TStringField
      FieldName = 'yn'
      FixedChar = True
      Size = 1
    end
  end
end
