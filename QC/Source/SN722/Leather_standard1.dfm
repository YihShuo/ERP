object Leather_standard: TLeather_standard
  Left = 425
  Top = 241
  Width = 699
  Height = 330
  BorderIcons = [biSystemMenu]
  Caption = 'Leather_standard'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel6: TPanel
    Left = 0
    Top = 0
    Width = 683
    Height = 47
    Align = alTop
    TabOrder = 0
    object Label18: TLabel
      Left = 8
      Top = 11
      Width = 88
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Material Name'
    end
    object Label19: TLabel
      Left = 248
      Top = 11
      Width = 90
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Supplier Name'
    end
    object Edit5: TEdit
      Left = 98
      Top = 8
      Width = 145
      Height = 24
      TabOrder = 0
    end
    object Edit6: TEdit
      Left = 340
      Top = 8
      Width = 113
      Height = 24
      TabOrder = 1
    end
    object Button2: TButton
      Left = 528
      Top = 8
      Width = 65
      Height = 25
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object DBGrid_SD: TDBGridEh
    Left = 0
    Top = 47
    Width = 683
    Height = 244
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGrid_SDDblClick
    Columns = <
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'SDID'
        Footer.FieldName = 'SDID'
        Footer.ValueType = fvtCount
        Footers = <>
        ReadOnly = True
        Visible = False
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'Season'
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'Material'
        Footers = <>
        Width = 150
      end
      item
        ButtonStyle = cbsNone
        EditButtons = <>
        FieldName = 'zsywjc'
        Footers = <>
        Title.Caption = 'Supplier'
        Width = 120
      end
      item
        Color = 5898073
        EditButtons = <>
        FieldName = 'Country'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Location'
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'Types'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'Softness'
        Footers = <>
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'Dimention'
        Footers = <>
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'Grade'
        Footers = <>
        Width = 50
      end>
  end
  object qry1: TQuery
    AfterOpen = qry1AfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'select Leather_Standard.*,zsywjc,Country  '
      'from ('
      'SELECT max(SDID)SDID'
      'FROM Leather_Standard '
      'group by Material'
      ')aa inner join Leather_Standard on Leather_Standard.SDID=aa.SDID'
      #9'left join zszl on zszl.ZSDH=Leather_Standard.ZSDH')
    Left = 200
    Top = 120
    object qry1Material: TStringField
      FieldName = 'Material'
      Origin = 'DB.Leather_Standard.Material'
      FixedChar = True
      Size = 100
    end
    object qry1ZSDH: TStringField
      FieldName = 'ZSDH'
      Origin = 'DB.Leather_Standard.ZSDH'
      FixedChar = True
      Size = 10
    end
    object qry1Types: TStringField
      FieldName = 'Types'
      Origin = 'DB.Leather_Standard.Types'
      FixedChar = True
      Size = 100
    end
    object qry1Softness: TStringField
      FieldName = 'Softness'
      Origin = 'DB.Leather_Standard.Softness'
      FixedChar = True
      Size = 50
    end
    object qry1Grade: TStringField
      FieldName = 'Grade'
      Origin = 'DB.Leather_Standard.Grade'
      FixedChar = True
      Size = 10
    end
    object qry1zsywjc: TStringField
      FieldName = 'zsywjc'
      Origin = 'DB.zszl.zsywjc'
      FixedChar = True
      Size = 200
    end
    object qry1Country: TStringField
      FieldName = 'Country'
      Origin = 'DB.zszl.Country'
      FixedChar = True
      Size = 10
    end
    object qry1SDID: TStringField
      FieldName = 'SDID'
      Origin = 'DB.Leather_Standard.SDID'
      FixedChar = True
      Size = 4
    end
    object qry1Dimention: TStringField
      FieldName = 'Dimention'
      Origin = 'DB.Leather_Standard.Dimention'
      FixedChar = True
      Size = 50
    end
    object qry1Season: TStringField
      FieldName = 'Season'
      Origin = 'DB.Leather_Standard.Season'
      FixedChar = True
      Size = 10
    end
  end
  object DS1: TDataSource
    DataSet = qry1
    Left = 200
    Top = 151
  end
end
