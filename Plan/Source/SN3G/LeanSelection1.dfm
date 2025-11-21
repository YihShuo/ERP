object LeanSelection: TLeanSelection
  Left = 586
  Top = 391
  Width = 346
  Height = 276
  Caption = 'Lean Dialog'
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
    Width = 330
    Height = 237
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
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    HorzScrollBar.Tracking = True
    ParentFont = False
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
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'building_no'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = 'Building'
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'lean_no'
        Footers = <>
        Title.Caption = 'Lean'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'Month'
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        Title.Caption = 'RY'
        Width = 100
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 56
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 16
    Top = 88
  end
end
