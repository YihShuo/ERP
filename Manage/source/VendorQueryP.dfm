object VendorQuery: TVendorQuery
  Left = 585
  Top = 160
  Width = 697
  Height = 480
  Caption = 'Vendor Query'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 681
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 79
      Height = 20
      Caption = 'Vendor NO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 208
      Top = 16
      Width = 98
      Height = 20
      Caption = 'Vendor Name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 448
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 96
      Top = 16
      Width = 97
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 312
      Top = 16
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 65
    Width = 681
    Height = 377
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'zsdh'
        Footers = <>
        Title.Caption = 'Vendor NO|'#24288#21830#32232#34399
        Width = 57
      end
      item
        EditButtons = <>
        FieldName = 'zsywjc'
        Footers = <>
        Title.Caption = 'Vendor Name|'#24288#21830#21517#31281
      end
      item
        EditButtons = <>
        FieldName = 'tybh'
        Footers = <>
        Title.Caption = 'TEL|'#38651#35441
      end
      item
        EditButtons = <>
        FieldName = 'yjdz'
        Footers = <>
        Title.Caption = 'Address|'#22320#22336
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Title.Caption = 'USERID|'#20351#29992#32773
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Title.Caption = 'USERDATE|'#20462#25913#26085#26399
      end
      item
        EditButtons = <>
        FieldName = 'TYJH'
        Footers = <>
        Title.Caption = 'TYJH|MARK'
        Width = 39
      end>
  end
  object Edit3: TEdit
    Left = 584
    Top = 16
    Width = 65
    Height = 21
    TabOrder = 2
    Text = 'Edit3'
    Visible = False
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 224
    Top = 128
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * '
      'from zszl'
      'where zsdh not in (select csbh from b2buser)'
      'and zsdh like'#39'%%'#39' and zsywjc like'#39'%%'#39' and zsywjc <> '#39'X'#39' and YN=3')
    Left = 224
    Top = 160
    object Query1zsdh: TStringField
      FieldName = 'zsdh'
      Origin = 'DB.zszl.zsdh'
      FixedChar = True
      Size = 6
    end
    object Query1zsqm: TStringField
      FieldName = 'zsqm'
      Origin = 'DB.zszl.zsqm'
      FixedChar = True
      Size = 50
    end
    object Query1zsjc: TStringField
      FieldName = 'zsjc'
      Origin = 'DB.zszl.zsjc'
      FixedChar = True
    end
    object Query1zsywjc: TStringField
      FieldName = 'zsywjc'
      Origin = 'DB.zszl.zsywjc'
      FixedChar = True
    end
    object Query1tybh: TStringField
      FieldName = 'tybh'
      Origin = 'DB.zszl.tybh'
      FixedChar = True
      Size = 15
    end
    object Query1fpdz: TStringField
      FieldName = 'fpdz'
      Origin = 'DB.zszl.fpdz'
      FixedChar = True
      Size = 120
    end
    object Query1yjdz: TStringField
      FieldName = 'yjdz'
      Origin = 'DB.zszl.yjdz'
      FixedChar = True
      Size = 120
    end
    object Query1dh: TStringField
      FieldName = 'dh'
      Origin = 'DB.zszl.dh'
      FixedChar = True
    end
    object Query1cz: TStringField
      FieldName = 'cz'
      Origin = 'DB.zszl.cz'
      FixedChar = True
    end
    object Query1fzr: TStringField
      FieldName = 'fzr'
      Origin = 'DB.zszl.fzr'
      FixedChar = True
    end
    object Query1bb: TStringField
      FieldName = 'bb'
      Origin = 'DB.zszl.bb'
      FixedChar = True
      Size = 4
    end
    object Query1llr2: TStringField
      FieldName = 'llr2'
      Origin = 'DB.zszl.llr2'
      FixedChar = True
    end
    object Query1llr: TStringField
      FieldName = 'llr'
      Origin = 'DB.zszl.llr'
      FixedChar = True
    end
    object Query1dybh: TStringField
      FieldName = 'dybh'
      Origin = 'DB.zszl.dybh'
      FixedChar = True
      Size = 6
    end
    object Query1mark: TStringField
      FieldName = 'mark'
      Origin = 'DB.zszl.mark'
      FixedChar = True
      Size = 5
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.zszl.USERID'
      FixedChar = True
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.zszl.USERDATE'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.zszl.YN'
      FixedChar = True
      Size = 1
    end
    object Query1TYJH: TStringField
      FieldName = 'TYJH'
      Origin = 'DB.zszl.TYJH'
      FixedChar = True
      Size = 1
    end
  end
end
