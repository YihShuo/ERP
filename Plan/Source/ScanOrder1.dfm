object ScanOrder: TScanOrder
  Left = 267
  Top = 228
  Width = 870
  Height = 500
  Caption = 'ScanOrder'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 129
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 169
      Height = 24
      Caption = 'Production situation:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 56
      Width = 50
      Height = 16
      Caption = 'SpecNo:'
    end
    object Label6: TLabel
      Left = 176
      Top = 96
      Width = 55
      Height = 16
      Caption = 'ArtName:'
    end
    object Label5: TLabel
      Left = 8
      Top = 96
      Width = 57
      Height = 16
      Caption = 'ArticleNo:'
    end
    object Label7: TLabel
      Left = 560
      Top = 64
      Width = 52
      Height = 16
      Caption = 'Chat Out'
      Color = 16772846
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label9: TLabel
      Left = 560
      Top = 32
      Width = 32
      Height = 16
      Caption = 'Order'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label10: TLabel
      Left = 560
      Top = 96
      Width = 39
      Height = 16
      Caption = 'May In'
      Color = 16768991
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label8: TLabel
      Left = 176
      Top = 56
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
    object Label11: TLabel
      Left = 320
      Top = 56
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
    object Label2: TLabel
      Left = 384
      Top = 16
      Width = 32
      Height = 16
      Caption = 'Type:'
      Visible = False
    end
    object Label4: TLabel
      Left = 648
      Top = 32
      Width = 50
      Height = 16
      Caption = 'May Out'
      Color = 16765650
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label12: TLabel
      Left = 648
      Top = 64
      Width = 31
      Height = 16
      Caption = 'Go In'
      Color = 16758197
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label13: TLabel
      Left = 648
      Top = 96
      Width = 41
      Height = 16
      Caption = 'De Out'
      Color = 16752029
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label14: TLabel
      Left = 736
      Top = 32
      Width = 41
      Height = 16
      Caption = 'Go Set'
      Color = 16743805
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label15: TLabel
      Left = 736
      Top = 96
      Width = 42
      Height = 16
      Caption = 'Go Out'
      Color = 15728640
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Edit2: TEdit
      Left = 72
      Top = 48
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit4: TEdit
      Left = 248
      Top = 88
      Width = 145
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object Button1: TButton
      Left = 440
      Top = 88
      Width = 73
      Height = 33
      Caption = 'Query'
      TabOrder = 5
      OnClick = Button1Click
    end
    object Edit3: TEdit
      Left = 72
      Top = 88
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object Button2: TButton
      Left = 440
      Top = 48
      Width = 73
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 6
      OnClick = Button2Click
    end
    object Edit5: TEdit
      Left = 528
      Top = 32
      Width = 25
      Height = 21
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object Edit6: TEdit
      Left = 528
      Top = 64
      Width = 25
      Height = 21
      BiDiMode = bdLeftToRight
      Color = 16772846
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
      Text = '0'
    end
    object Edit7: TEdit
      Left = 528
      Top = 96
      Width = 25
      Height = 21
      Color = 16768991
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
      Text = '1'
    end
    object CBX2: TComboBox
      Left = 248
      Top = 48
      Width = 65
      Height = 28
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 20
      ItemIndex = 0
      ParentFont = False
      TabOrder = 1
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
      Left = 368
      Top = 48
      Width = 49
      Height = 28
      DropDownCount = 12
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 20
      ItemIndex = 0
      ParentFont = False
      TabOrder = 2
      Text = '01'
      Items.Strings = (
        '01'
        '02'
        '03'
        '04'
        '05'
        '06'
        '07'
        '08'
        '09'
        '10'
        '11'
        '12')
    end
    object ComboBox1: TComboBox
      Left = 424
      Top = 8
      Width = 89
      Height = 28
      DropDownCount = 12
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 20
      ItemIndex = 0
      ParentFont = False
      TabOrder = 10
      Text = 'All'
      Visible = False
      Items.Strings = (
        'All'
        'CHat Out'
        'May In'
        'May Out'
        'Go In'
        'De Out'
        'Go Out')
    end
    object Edit1: TEdit
      Left = 616
      Top = 32
      Width = 25
      Height = 21
      Color = 16765650
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
      Text = '2'
    end
    object Edit8: TEdit
      Left = 616
      Top = 64
      Width = 25
      Height = 21
      Color = 16758197
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 12
      Text = '3'
    end
    object Edit9: TEdit
      Left = 616
      Top = 96
      Width = 25
      Height = 21
      Color = 16752029
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 13
      Text = '4'
    end
    object Edit10: TEdit
      Left = 704
      Top = 32
      Width = 25
      Height = 21
      Color = 16743805
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 14
      Text = '5'
    end
    object Edit11: TEdit
      Left = 704
      Top = 96
      Width = 25
      Height = 21
      Color = 15728640
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 15
      Text = '7'
    end
    object Edit12: TEdit
      Left = 704
      Top = 64
      Width = 25
      Height = 21
      Color = 16736866
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 16
      Text = '6'
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 129
    Width = 862
    Height = 337
    Align = alClient
    DataSource = DataSource1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    OnDrawDataCell = DBGrid1DrawDataCell
    OnDrawColumnCell = DBGrid1DrawColumnCell
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from aaaa')
    Left = 496
    Top = 160
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 536
    Top = 160
  end
  object PopupMenu1: TPopupMenu
    Left = 224
    Top = 200
    object NN1: TMenuItem
      Caption = 'Detail'
    end
    object NN2: TMenuItem
      Caption = 'Excel'
    end
    object NN3: TMenuItem
      Caption = 'Print'
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 320
    Top = 272
  end
end
