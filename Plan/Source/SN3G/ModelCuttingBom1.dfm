object ModelCuttingBom: TModelCuttingBom
  Left = 551
  Top = 332
  Width = 840
  Height = 479
  Caption = 'ModelCuttingBom'
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
    Width = 824
    Height = 399
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'BWBH'
        Footers = <>
        Title.Caption = 'Component|ID'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Title.Caption = 'Component|Name'
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = 'Material|ID'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = 'Material|Name'
        Width = 300
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = 'Material|Unit'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'Type'
        Footers = <>
        PickList.Strings = (
          'Manual'
          'AutoCutting')
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'piece'
        Footers = <>
        PickList.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10')
        Title.Caption = 'Piece'
        Width = 70
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 399
    Width = 824
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      Left = 296
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Save'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    UpdateObject = UpdateSQL1
    Left = 16
    Top = 112
    object Query1BWBH: TStringField
      FieldName = 'BWBH'
      Size = 4
    end
    object Query1YWSM: TStringField
      FieldName = 'YWSM'
      Size = 40
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      Size = 10
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      Size = 4
    end
    object Query1Type: TStringField
      FieldName = 'Type'
    end
    object Query1piece: TIntegerField
      FieldName = 'piece'
      OnChange = Query1pieceChange
    end
    object Query1XieXing: TStringField
      FieldName = 'XieXing'
      Size = 15
    end
    object Query1SheHao: TStringField
      FieldName = 'SheHao'
      Size = 5
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Size = 1
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 80
  end
  object UpdateSQL1: TUpdateSQL
    Left = 16
    Top = 144
  end
  object QUpdate: TQuery
    DatabaseName = 'DB'
    Left = 48
    Top = 112
  end
end
