object EmbroiderTrace: TEmbroiderTrace
  Left = 287
  Top = 201
  Width = 870
  Height = 500
  Caption = 'EmbroiderTrace'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 105
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label3: TLabel
      Left = 8
      Top = 24
      Width = 53
      Height = 16
      Caption = 'SpecNo:'
    end
    object Label6: TLabel
      Left = 208
      Top = 24
      Width = 56
      Height = 16
      Caption = 'ArtName:'
    end
    object Label7: TLabel
      Left = 656
      Top = 32
      Width = 51
      Height = 16
      Caption = 'Finished'
    end
    object Label9: TLabel
      Left = 656
      Top = 8
      Width = 56
      Height = 16
      Caption = 'No Finish'
    end
    object Label10: TLabel
      Left = 656
      Top = 56
      Width = 51
      Height = 16
      Caption = 'Not Start'
    end
    object Label2: TLabel
      Left = 8
      Top = 72
      Width = 63
      Height = 16
      Caption = 'ETD Year:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 160
      Top = 72
      Width = 39
      Height = 16
      Caption = 'Month:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 272
      Top = 69
      Width = 70
      Height = 16
      Caption = 'Query Way:'
    end
    object Edit2: TEdit
      Left = 64
      Top = 16
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit4: TEdit
      Left = 280
      Top = 16
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Button1: TButton
      Left = 456
      Top = 64
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 456
      Top = 8
      Width = 89
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 3
    end
    object Edit5: TEdit
      Left = 624
      Top = 8
      Width = 25
      Height = 21
      Color = clRed
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object CBX2: TComboBox
      Left = 72
      Top = 64
      Width = 81
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 5
      Text = '2006'
      Items.Strings = (
        '2006'
        '2007'
        '2008'
        '2009'
        '2010'
        '2011'
        '2012'
        '2013'
        '2014'
        '2015'
        '2016'
        '2017'
        '2018'
        '2019'
        '2020')
    end
    object CBX3: TComboBox
      Left = 208
      Top = 64
      Width = 57
      Height = 24
      DropDownCount = 12
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 6
      Text = '1'
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11'
        '12')
    end
    object CBX1: TComboBox
      Left = 352
      Top = 65
      Width = 73
      Height = 24
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 7
      Text = 'Order'
      Items.Strings = (
        'Order'
        'Article'
        'Color'
        'ETD')
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 105
    Width = 862
    Height = 361
    Align = alClient
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Edit6: TEdit
    Left = 624
    Top = 32
    Width = 25
    Height = 21
    Color = clLime
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object Edit7: TEdit
    Left = 624
    Top = 56
    Width = 25
    Height = 21
    Color = clWhite
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object RG1: TRadioGroup
    Left = 720
    Top = 8
    Width = 113
    Height = 89
    Caption = 'Special'
    ItemIndex = 0
    Items.Strings = (
      'All'
      'Not Finish'
      'Started Order')
    TabOrder = 4
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from SCZKZL3')
    Left = 496
    Top = 160
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 536
    Top = 160
  end
end
