object RubberReport: TRubberReport
  Left = 192
  Top = 117
  Width = 1305
  Height = 675
  Caption = 'Rubber Report'
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 73
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label13: TLabel
      Left = 216
      Top = 28
      Width = 19
      Height = 16
      Caption = 'RY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 560
      Top = 28
      Width = 24
      Height = 16
      Caption = 'End'
    end
    object Button1: TButton
      Left = 704
      Top = 21
      Width = 81
      Height = 31
      Caption = 'QUERY'
      TabOrder = 0
      OnClick = Button1Click
    end
    object TextRY: TEdit
      Left = 240
      Top = 24
      Width = 177
      Height = 24
      TabOrder = 1
    end
    object DP1: TDateTimePicker
      Left = 448
      Top = 24
      Width = 97
      Height = 24
      Date = 45402.366854131940000000
      Time = 45402.366854131940000000
      TabOrder = 2
    end
    object DP2: TDateTimePicker
      Left = 600
      Top = 24
      Width = 97
      Height = 24
      Date = 45402.366854131940000000
      Time = 45402.366854131940000000
      TabOrder = 3
    end
    object RadioGroup1: TRadioGroup
      Left = 8
      Top = 8
      Width = 185
      Height = 49
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Scan In'
        'Scan Out')
      TabOrder = 4
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 73
    Width = 1289
    Height = 563
    Align = alClient
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DDBH'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'XXCC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Qty'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CTS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'okCTS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'outCTS'
        Visible = True
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 80
    Top = 192
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
    end
    object Query1XXCC: TStringField
      FieldName = 'XXCC'
    end
    object Query1Qty: TIntegerField
      FieldName = 'Qty'
    end
    object Query1CTS: TIntegerField
      FieldName = 'CTS'
    end
    object Query1okCTS: TIntegerField
      FieldName = 'okCTS'
    end
    object Query1outCTS: TIntegerField
      FieldName = 'outCTS'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 152
    Top = 184
  end
end
