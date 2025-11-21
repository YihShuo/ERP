object EntryList_Declaration: TEntryList_Declaration
  Left = 616
  Top = 254
  Width = 807
  Height = 675
  Caption = 'EntryList_Declaration'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 791
    Height = 41
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 167
      Top = 13
      Width = 72
      Height = 16
      Caption = 'Declaration:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 356
      Top = 13
      Width = 104
      Height = 16
      Caption = 'Declaration Date:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 555
      Top = 14
      Width = 9
      Height = 16
      Caption = '~'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 13
      Width = 43
      Height = 16
      Caption = 'Docno:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 675
      Top = 5
      Width = 89
      Height = 33
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object EDIT1: TEdit
      Left = 240
      Top = 9
      Width = 100
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DTP1: TDateTimePicker
      Left = 462
      Top = 8
      Width = 89
      Height = 24
      Date = 39255.041666666660000000
      Format = 'yyyy/MM/dd'
      Time = 39255.041666666660000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImeName = '?? (??) - ???'
      ParentFont = False
      TabOrder = 2
    end
    object DTP2: TDateTimePicker
      Left = 571
      Top = 8
      Width = 89
      Height = 24
      Date = 39255.958333333340000000
      Format = 'yyyy/MM/dd'
      Time = 39255.958333333340000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImeName = '?? (??) - ???'
      ParentFont = False
      TabOrder = 3
    end
    object Edit2: TEdit
      Left = 53
      Top = 9
      Width = 100
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 791
    Height = 595
    Align = alClient
    DataSource = DataSource1
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
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Docno'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'Declaration'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'DeclarationDate'
        Footers = <>
        Width = 120
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select distinct Declaration,DeclarationDate,Docno '
      'from CGZL_Declaration')
    Left = 232
    Top = 136
    object Query1Declaration: TStringField
      FieldName = 'Declaration'
      Origin = 'DB.CGZL_Declaration.Declaration'
      FixedChar = True
      Size = 50
    end
    object Query1DeclarationDate: TDateTimeField
      FieldName = 'DeclarationDate'
      Origin = 'DB.CGZL_Declaration.DeclarationDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1Docno: TStringField
      FieldName = 'Docno'
      Origin = 'DB.CGZL_Declaration.Docno'
      FixedChar = True
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 272
    Top = 136
  end
end
