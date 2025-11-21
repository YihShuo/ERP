object CheckMaterial: TCheckMaterial
  Left = 295
  Top = 295
  Width = 1305
  Height = 675
  Caption = 'Check Chemical Material'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 256
      Top = 13
      Width = 75
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Material ID:'
    end
    object Label2: TLabel
      Left = 2
      Top = 13
      Width = 110
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'English Name:'
    end
    object Label3: TLabel
      Left = 10
      Top = 43
      Width = 102
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Chinese Name:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 336
      Top = 10
      Width = 105
      Height = 24
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 114
      Top = 10
      Width = 129
      Height = 24
      TabOrder = 1
    end
    object Edit5: TEdit
      Left = 114
      Top = 40
      Width = 129
      Height = 24
      TabOrder = 2
    end
    object Button1: TButton
      Left = 459
      Top = 10
      Width = 74
      Height = 28
      Caption = 'QUERY'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 459
      Top = 42
      Width = 74
      Height = 28
      Caption = 'EXCEL'
      TabOrder = 4
      OnClick = Button2Click
    end
    object ChekMat: TCheckBox
      Left = 264
      Top = 43
      Width = 185
      Height = 17
      Caption = 'Material name not the same'
      TabOrder = 5
      OnClick = ChekMatClick
    end
    object BitBtn2: TBitBtn
      Left = 598
      Top = 16
      Width = 59
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Syn'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = BitBtn2Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF55C068FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3EDA5AFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF3FB24C60FA7B3C8E454A8B53458C4E538A5AFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A8B5344E15C4BE26560FA7B60
        FA7B58ED713DD6572F943BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF3CCB514ACF6044D35A4BE2654EDD6548D65E48D65E44DE5F2AB43CFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A8B5335BC4850D5664EDD655C
        8D63FFFFFFFFFFFF5B956335BC482F943BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF57955D3CC35057755CFFFFFFFFFFFFFFFFFFFFFFFF3C8E
        45FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F8F71FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF2F943B3C8E45FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF4AB55653A55CFFFFFFFFFFFFFFFFFF4A8B533DD65722AB333C8E45FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF57955D58ED714AB5563C8E4544
        9F4B46995147D95D39C84D24BF3917A327FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF57955D58ED716BF78478FD9060FA7B58ED714EDD6544D35A4A8B
        53FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF59AA6253A55C5C
        CF6966D26F60DC7472F18A52BA5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF59AA626BF784FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF57A85FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 89
    Width = 1289
    Height = 547
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 4
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'cldh'
        Footer.FieldName = 'cldh'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = 'ERP|Material ID'
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Title.Caption = 'ERP|English Name'
        Width = 250
      end
      item
        EditButtons = <>
        FieldName = 'zwpm'
        Footers = <>
        Title.Caption = 'ERP|Chinese Name'
        Width = 250
      end
      item
        EditButtons = <>
        FieldName = 'dwbh'
        Footers = <>
        Title.Caption = 'ERP|Unit'
        Width = 39
      end
      item
        EditButtons = <>
        FieldName = 'cldh_dd'
        Footers = <>
        Title.Caption = 'DD|Material ID'
      end
      item
        EditButtons = <>
        FieldName = 'ywpm_dd'
        Footers = <>
        Title.Caption = 'DD|English Name'
        Width = 250
      end
      item
        EditButtons = <>
        FieldName = 'zwpm_dd'
        Footers = <>
        Title.Caption = 'DD|Chinese Name'
        Width = 250
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from CLZl')
    Left = 144
    Top = 184
    object Query1cldh: TStringField
      FieldName = 'cldh'
      Origin = 'DB.CLZl.cldh'
      FixedChar = True
      Size = 10
    end
    object Query1ywpm: TStringField
      FieldName = 'ywpm'
      Origin = 'DB.CLZl.ywpm'
      FixedChar = True
      Size = 200
    end
    object Query1zwpm: TStringField
      FieldName = 'zwpm'
      Origin = 'DB.CLZl.zwpm'
      FixedChar = True
      Size = 200
    end
    object Query1dwbh: TStringField
      FieldName = 'dwbh'
      Origin = 'DB.CLZl.dwbh'
      FixedChar = True
      Size = 4
    end
    object Query1cldh_dd: TStringField
      FieldName = 'cldh_dd'
      Size = 16
    end
    object Query1ywpm_dd: TStringField
      FieldName = 'ywpm_dd'
      Size = 200
    end
    object Query1zwpm_dd: TStringField
      FieldName = 'zwpm_dd'
      Size = 200
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 144
    Top = 152
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 184
    Top = 184
  end
end
