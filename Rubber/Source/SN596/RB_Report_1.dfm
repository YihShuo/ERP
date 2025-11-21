object RBReport_1: TRBReport_1
  Left = 351
  Top = 253
  Width = 1305
  Height = 675
  Caption = 'RBReport_1'
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
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 104
      Top = 40
      Width = 76
      Height = 20
      Caption = 'ARTICLE: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 344
      Top = 40
      Width = 64
      Height = 20
      Caption = 'COLOR: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 584
      Top = 40
      Width = 65
      Height = 20
      Caption = 'BUYNO: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 192
      Top = 40
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 416
      Top = 40
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 656
      Top = 39
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Button1: TButton
      Left = 816
      Top = 35
      Width = 75
      Height = 30
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button1Click
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 65
      Height = 73
      TabOrder = 4
      object Label19: TLabel
        Left = 16
        Top = 24
        Width = 33
        Height = 29
        Caption = 'RB'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 89
    Width = 1289
    Height = 547
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
    Columns = <
      item
        EditButtons = <>
        FieldName = 'BUYNO'
        Footers = <>
        Width = 86
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footers = <>
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'COLOR'
        Footers = <>
        Width = 93
      end
      item
        EditButtons = <>
        FieldName = '02'
        Footers = <>
        Width = 36
      end
      item
        EditButtons = <>
        FieldName = '02.5'
        Footers = <>
        Width = 36
      end
      item
        EditButtons = <>
        FieldName = '03'
        Footers = <>
        Width = 33
      end
      item
        EditButtons = <>
        FieldName = '03.5'
        Footers = <>
        Width = 32
      end
      item
        EditButtons = <>
        FieldName = '04'
        Footers = <>
        Width = 33
      end
      item
        EditButtons = <>
        FieldName = '04.5'
        Footers = <>
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = '05'
        Footers = <>
        Width = 33
      end
      item
        EditButtons = <>
        FieldName = '05.5'
        Footers = <>
        Width = 37
      end
      item
        EditButtons = <>
        FieldName = '06'
        Footers = <>
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = '06.5'
        Footers = <>
        Width = 36
      end
      item
        EditButtons = <>
        FieldName = '07'
        Footers = <>
        Width = 31
      end
      item
        EditButtons = <>
        FieldName = '07.5'
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = '08'
        Footers = <>
        Width = 33
      end
      item
        EditButtons = <>
        FieldName = '08.5'
        Footers = <>
        Width = 34
      end
      item
        EditButtons = <>
        FieldName = '09'
        Footers = <>
        Width = 33
      end
      item
        EditButtons = <>
        FieldName = '09.5'
        Footers = <>
        Width = 36
      end
      item
        EditButtons = <>
        FieldName = '10'
        Footers = <>
        Width = 33
      end
      item
        EditButtons = <>
        FieldName = '10.5'
        Footers = <>
        Width = 37
      end
      item
        EditButtons = <>
        FieldName = '11'
        Footers = <>
        Width = 32
      end
      item
        EditButtons = <>
        FieldName = '11.5'
        Footers = <>
        Width = 34
      end
      item
        EditButtons = <>
        FieldName = '12'
        Footers = <>
        Width = 32
      end
      item
        EditButtons = <>
        FieldName = '12.5'
        Footers = <>
        Width = 34
      end
      item
        EditButtons = <>
        FieldName = '13'
        Footers = <>
        Width = 33
      end
      item
        EditButtons = <>
        FieldName = '13.5'
        Footers = <>
        Width = 36
      end
      item
        EditButtons = <>
        FieldName = '14'
        Footers = <>
        Width = 31
      end
      item
        EditButtons = <>
        FieldName = '14.5'
        Footers = <>
        Width = 36
      end
      item
        EditButtons = <>
        FieldName = '15'
        Footers = <>
        Width = 33
      end
      item
        EditButtons = <>
        FieldName = '15.5'
        Footers = <>
        Width = 37
      end
      item
        EditButtons = <>
        FieldName = '16'
        Footers = <>
        Width = 32
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 528
    Top = 248
    object Query1BUYNO: TStringField
      FieldName = 'BUYNO'
    end
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
    end
    object Query1Article: TStringField
      FieldName = 'Article'
    end
    object Query1Pairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Query1COLOR: TStringField
      FieldName = 'COLOR'
    end
    object Query1Field02: TIntegerField
      FieldName = '02'
    end
    object Query1Field025: TIntegerField
      FieldName = '02.5'
    end
    object Query1Field03: TIntegerField
      FieldName = '03'
    end
    object Query1Field035: TIntegerField
      FieldName = '03.5'
    end
    object Query1Field04: TIntegerField
      FieldName = '04'
    end
    object Query1Field045: TIntegerField
      FieldName = '04.5'
    end
    object Query1Field05: TIntegerField
      FieldName = '05'
    end
    object Query1Field055: TIntegerField
      FieldName = '05.5'
    end
    object Query1Field06: TIntegerField
      FieldName = '06'
    end
    object Query1Field065: TIntegerField
      FieldName = '06.5'
    end
    object Query1Field07: TIntegerField
      FieldName = '07'
    end
    object Query1Field075: TIntegerField
      FieldName = '07.5'
    end
    object Query1Field08: TIntegerField
      FieldName = '08'
    end
    object Query1Field085: TIntegerField
      FieldName = '08.5'
    end
    object Query1Field09: TIntegerField
      FieldName = '09'
    end
    object Query1Field095: TIntegerField
      FieldName = '09.5'
    end
    object Query1Field10: TIntegerField
      FieldName = '10'
    end
    object Query1Field105: TIntegerField
      FieldName = '10.5'
    end
    object Query1Field11: TIntegerField
      FieldName = '11'
    end
    object Query1Field115: TIntegerField
      FieldName = '11.5'
    end
    object Query1Field12: TIntegerField
      FieldName = '12'
    end
    object Query1Field125: TIntegerField
      FieldName = '12.5'
    end
    object Query1Field13: TIntegerField
      FieldName = '13'
    end
    object Query1Field135: TIntegerField
      FieldName = '13.5'
    end
    object Query1Field14: TIntegerField
      FieldName = '14'
    end
    object Query1Field145: TIntegerField
      FieldName = '14.5'
    end
    object Query1Field15: TIntegerField
      FieldName = '15'
    end
    object Query1Field155: TIntegerField
      FieldName = '15.5'
    end
    object Query1Field16: TIntegerField
      FieldName = '16'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 360
    Top = 176
  end
end
