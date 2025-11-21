object UpperCycleDialog: TUpperCycleDialog
  Left = 677
  Top = 231
  Width = 311
  Height = 453
  BorderIcons = [biSystemMenu]
  Caption = 'Cycle'
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
    Top = 0
    Width = 295
    Height = 373
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleImages = ShoeUpperInventory.ImageList1
    UseMultiTitle = True
    OnGetCellParams = DBGridEh1GetCellParams
    OnTitleBtnClick = DBGridEh1TitleBtnClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CheckStatus'
        Footers = <>
        Title.Caption = ' '
        Title.ImageIndex = 0
        Title.TitleButton = True
        Width = 20
      end
      item
        EditButtons = <>
        FieldName = 'Cycle'
        Footers = <>
        ReadOnly = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'CyclePairs'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Total'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'SelectedPairs'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Selected'
        Width = 60
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'Pairs'
        Footers = <>
        Width = 60
        OnUpdateData = DBGridEh1Columns4UpdateData
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 373
    Width = 295
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      Left = 110
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Update'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    UpdateObject = UpdateSQL1
    Left = 16
    Top = 88
    object Query1CheckStatus: TBooleanField
      FieldName = 'CheckStatus'
    end
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      Size = 15
    end
    object Query1Cycle: TStringField
      FieldName = 'Cycle'
      Size = 5
    end
    object Query1CyclePairs: TIntegerField
      FieldName = 'CyclePairs'
    end
    object Query1SelectedPairs: TIntegerField
      FieldName = 'SelectedPairs'
    end
    object Query1Pairs: TIntegerField
      FieldName = 'Pairs'
      OnChange = Query1PairsChange
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 56
  end
  object UpdateSQL1: TUpdateSQL
    Left = 16
    Top = 120
  end
  object QUpdate: TQuery
    DatabaseName = 'DB'
    Left = 48
    Top = 88
  end
  object QSearch: TQuery
    DatabaseName = 'DB'
    Left = 48
    Top = 120
  end
end
