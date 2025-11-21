object OneDayPlan: TOneDayPlan
  Left = 655
  Top = 427
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'OneDayPlan'
  ClientHeight = 367
  ClientWidth = 717
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 717
    Height = 41
    Align = alTop
    TabOrder = 0
    object DTP1: TDateTimePicker
      Left = 310
      Top = 9
      Width = 97
      Height = 24
      Date = 45728.404238807870000000
      Format = 'yyyy/MM/dd'
      Time = 45728.404238807870000000
      TabOrder = 0
      OnChange = DTP1Change
    end
    object Button1: TButton
      Left = 288
      Top = 9
      Width = 23
      Height = 23
      Caption = '<'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 406
      Top = 9
      Width = 23
      Height = 23
      Caption = '>'
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 717
    Height = 326
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
    ReadOnly = True
    SumList.Active = True
    SumList.VirtualRecords = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    VertScrollBar.Tracking = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DAOMH'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = 'Cutting Die'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        Title.Caption = 'SKU'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'RY'
        Footers = <>
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footers = <>
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'CycleStart'
        Footers = <>
        Title.Caption = 'Cycle|Start'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'CycleEnd'
        Footers = <>
        Title.Caption = 'Cycle|End'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'AssemblyTime'
        Footers = <>
        Title.Caption = 'Time'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'Remark'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'Reason'
        Footers = <>
        Width = 80
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 16
    Top = 152
    object Query1RY: TStringField
      FieldName = 'RY'
      Size = 15
    end
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
    end
    object Query1DAOMH: TStringField
      FieldName = 'DAOMH'
      Size = 30
    end
    object Query1Pairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Query1CycleStart: TIntegerField
      FieldName = 'CycleStart'
    end
    object Query1CycleEnd: TIntegerField
      FieldName = 'CycleEnd'
    end
    object Query1AssemblyTime: TStringField
      FieldName = 'AssemblyTime'
      Size = 15
    end
    object Query1Remark: TStringField
      FieldName = 'Remark'
      Size = 100
    end
    object Query1Reason: TStringField
      FieldName = 'Reason'
      Size = 30
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 120
  end
end
