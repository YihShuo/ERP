object RY_BOM: TRY_BOM
  Left = 453
  Top = 205
  Width = 951
  Height = 614
  BorderIcons = [biSystemMenu]
  Caption = 'RY_BOM'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 25
    Width = 935
    Height = 550
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    SumList.Active = True
    SumList.VirtualRecords = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    VertScrollBar.Tracking = True
    OnGetCellParams = DBGridEh1GetCellParams
    OnTitleBtnClick = DBGridEh1TitleBtnClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'BWBH'
        Footer.DisplayFormat = '###,###,##0'
        Footer.ValueType = fvtCount
        Footers = <>
        HideDuplicates = True
        Title.Caption = 'Part|ID'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        HideDuplicates = True
        Title.Caption = 'Part|Name'
        Title.TitleButton = True
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'ZWSM'
        Footers = <>
        HideDuplicates = True
        Title.Caption = 'Part|Name'
        Title.TitleButton = True
        Visible = False
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'Type'
        Footers = <>
        Title.Caption = 'Part|Type'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = 'Material|ID'
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = 'Material|Name'
        Width = 220
      end
      item
        EditButtons = <>
        FieldName = 'SIZE'
        Footers = <>
        Title.Caption = 'Material|Size'
        Width = 60
      end
      item
        DisplayFormat = '###,###,##0.00'
        EditButtons = <>
        FieldName = 'CLSL'
        Footers = <>
        Title.Caption = 'Material|Usage'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = 'Material|Unit'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'CSBH'
        Footers = <>
        Title.Caption = 'Supplier|ID'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        Title.Caption = 'Supplier|Name'
        Title.TitleButton = True
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'ZSJC'
        Footers = <>
        Title.Caption = 'Supplier|Name'
        Title.TitleButton = True
        Visible = False
        Width = 150
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 935
    Height = 25
    Align = alTop
    TabOrder = 1
    object CB1: TCheckBox
      Left = 16
      Top = 5
      Width = 145
      Height = 17
      Caption = 'Show Sub-Materials'
      TabOrder = 0
      OnClick = CB1Click
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 16
    Top = 136
    object Query1BWBH: TStringField
      FieldName = 'BWBH'
      Size = 4
    end
    object Query1YWSM: TStringField
      FieldName = 'YWSM'
      Size = 40
    end
    object Query1Type: TStringField
      FieldName = 'Type'
      Size = 10
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      Size = 10
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      Size = 200
    end
    object Query1SIZE: TStringField
      FieldName = 'SIZE'
      Size = 10
    end
    object Query1CLSL: TFloatField
      FieldName = 'CLSL'
    end
    object Query1CSBH: TStringField
      FieldName = 'CSBH'
      Size = 6
    end
    object Query1ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      Size = 4
    end
    object Query1ZWSM: TStringField
      FieldName = 'ZWSM'
      Size = 40
    end
    object Query1ZSJC: TStringField
      FieldName = 'ZSJC'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 104
  end
end
