object RSLSupplier: TRSLSupplier
  Left = 520
  Top = 179
  Width = 483
  Height = 336
  Caption = 'RSLSupplier'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 467
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 4
      Top = 12
      Width = 53
      Height = 16
      Caption = 'Supplier:'
    end
    object Label2: TLabel
      Left = 180
      Top = 12
      Width = 71
      Height = 16
      Caption = 'Description:'
    end
    object Button1: TButton
      Left = 376
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object SupplierEdit: TEdit
      Left = 65
      Top = 9
      Width = 104
      Height = 24
      TabOrder = 1
    end
    object DescEdit: TEdit
      Left = 257
      Top = 9
      Width = 104
      Height = 24
      TabOrder = 2
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 41
    Width = 467
    Height = 257
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
    FrozenCols = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ZSDH'
        Footers = <
          item
            FieldName = 'ZSDH'
            ValueType = fvtCount
          end>
        Title.Caption = 'ID'
      end
      item
        EditButtons = <>
        FieldName = 'ZSJC'
        Footers = <>
        Title.Caption = 'Supplier'
        Width = 136
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        Title.Caption = 'Description'
        Width = 228
      end>
  end
  object DS1: TDataSource
    DataSet = ZSZLQry
    Left = 172
    Top = 88
  end
  object ZSZLQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select ZSDH,ZSJC,ZSYWJC  from ZSZL where YN=1')
    Left = 172
    Top = 120
    object ZSZLQryZSDH: TStringField
      FieldName = 'ZSDH'
      FixedChar = True
      Size = 6
    end
    object ZSZLQryZSJC: TStringField
      FieldName = 'ZSJC'
      FixedChar = True
    end
    object ZSZLQryZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
  end
end
