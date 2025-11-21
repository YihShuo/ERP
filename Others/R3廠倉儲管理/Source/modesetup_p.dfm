object moldsetup: Tmoldsetup
  Left = 184
  Top = 207
  Width = 1086
  Height = 456
  Caption = 'Mold Setup'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1070
    Height = 25
    Align = alTop
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 0
      Top = 0
      Width = 560
      Height = 25
      DataSource = DataSource1
      TabOrder = 0
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 25
    Width = 1070
    Height = 393
    Align = alClient
    DataSource = DataSource1
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
        FieldName = 'mjbh'
        Footers = <>
        Title.Caption = 'Ten Khuon|mjbh'
      end
      item
        EditButtons = <>
        FieldName = 'lbdh'
        Footers = <>
        Title.Caption = 'Mau|lbdh'
      end
      item
        EditButtons = <>
        FieldName = 'pmw'
        Footers = <>
        Title.Caption = 'So Khuon|pmw'
      end
      item
        EditButtons = <>
        FieldName = 'bz1'
        Footers = <>
        Title.Caption = 'Ten Khuon-V|bz1'
      end
      item
        EditButtons = <>
        FieldName = 'bz2'
        Footers = <>
        Title.Caption = 'Ten Khuon-C|bz2'
      end
      item
        EditButtons = <>
        FieldName = 'trm'
        Footers = <>
        Title.Caption = 'san luong ueu chuan|trm'
      end
      item
        EditButtons = <>
        FieldName = 'Yields'
        Footers = <>
        Title.Caption = 'So doi|Yields'
      end
      item
        EditButtons = <>
        FieldName = 'cost'
        Footers = <>
        Title.Caption = '(VND)|Cost'
      end>
  end
  object Table1: TTable
    DatabaseName = 'db'
    TableName = 'dbo.MJZL'
    Left = 424
    Top = 104
    object Table1mjbh: TStringField
      FieldName = 'mjbh'
      Required = True
    end
    object Table1lbdh: TStringField
      FieldName = 'lbdh'
      FixedChar = True
      Size = 4
    end
    object Table1pmw: TIntegerField
      FieldName = 'pmw'
    end
    object Table1bz1: TStringField
      FieldName = 'bz1'
      Size = 50
    end
    object Table1bz2: TStringField
      FieldName = 'bz2'
      Size = 50
    end
    object Table1trm: TIntegerField
      FieldName = 'trm'
    end
    object Table1Yields: TFloatField
      FieldName = 'Yields'
    end
    object Table1cost: TFloatField
      FieldName = 'cost'
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 464
    Top = 104
  end
end
