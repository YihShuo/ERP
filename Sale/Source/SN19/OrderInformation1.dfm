object OrderInformation: TOrderInformation
  Left = 300
  Top = 123
  Width = 1305
  Height = 675
  Caption = 'Order Information'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
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
  PixelsPerInch = 106
  TextHeight = 13
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 71
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 12
      Width = 72
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SpecNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 180
      Top = 12
      Width = 56
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'ArtName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 27
      Top = 44
      Width = 48
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'PO#:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 677
      Top = 44
      Width = 39
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Month:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 370
      Top = 12
      Width = 40
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Article:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 183
      Top = 44
      Width = 53
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Cutting:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 370
      Top = 44
      Width = 41
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Last#:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 8
      Top = 96
      Width = 320
      Height = 25
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 82
      Top = 8
      Width = 89
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 238
      Top = 8
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object CBX2: TComboBox
      Left = 600
      Top = 40
      Width = 73
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 3
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
        '2020'
        '2021'
        '2022'
        '2023'
        '2024'
        '2025'
        '2026'
        '2027'
        '2028'
        '2029'
        '2030')
    end
    object CBX3: TComboBox
      Left = 718
      Top = 40
      Width = 57
      Height = 24
      DropDownCount = 12
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 4
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
    object Button1: TButton
      Left = 795
      Top = 29
      Width = 94
      Height = 33
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = Button1Click
    end
    object Edit3: TEdit
      Left = 412
      Top = 8
      Width = 89
      Height = 25
      CharCase = ecUpperCase
      TabOrder = 6
    end
    object Button2: TButton
      Left = 899
      Top = 28
      Width = 94
      Height = 33
      Caption = 'EXCEL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = Button2Click
    end
    object Edit4: TEdit
      Left = 83
      Top = 40
      Width = 89
      Height = 25
      CharCase = ecUpperCase
      TabOrder = 8
    end
    object Edit5: TEdit
      Left = 238
      Top = 40
      Width = 122
      Height = 25
      TabOrder = 9
    end
    object RadioButton1: TRadioButton
      Left = 516
      Top = 12
      Width = 63
      Height = 17
      Caption = 'BuyNo:'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      TabStop = True
    end
    object BuyNoEdit: TEdit
      Left = 600
      Top = 8
      Width = 109
      Height = 25
      TabOrder = 11
    end
    object RB1: TRadioButton
      Left = 516
      Top = 44
      Width = 82
      Height = 17
      Caption = 'ETD Year:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object Edit6: TEdit
      Left = 413
      Top = 40
      Width = 91
      Height = 25
      TabOrder = 13
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 71
    Width = 1289
    Height = 564
    Align = alClient
    ColumnDefValues.AutoDropDown = True
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
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FrozenCols = 6
    ImeName = 'Chinese (Traditional) - New Phonetic'
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
  end
  object DDZL: TQuery
    DatabaseName = 'DB'
    UpdateObject = UpdateSQL1
    Left = 424
    Top = 328
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 248
    Top = 352
  end
  object DDZLCC: TQuery
    DatabaseName = 'DB'
    Left = 248
    Top = 312
  end
  object DataSource1: TDataSource
    DataSet = DDZL
    Left = 424
    Top = 288
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update DDZL_INFO'
      'set'
      '   Buycycle =:Buycycle,'
      '   POCreateDate =:POCreateDate,'
      '   Beneficiary =:Beneficiary,'
      '   Invoice =:Invoice,'
      '   Shoename =:Shoename,'
      '   Colorcode =:Colorcode,'
      '   RGACDate =:RGACDate,'
      '   GACDate =:GACDate,'
      '   Cost =:Cost,'
      '   GPMUpcharge =:GPMUpcharge,'
      '   LOPUpcharge =:LOPUpcharge,'
      '   Commercialization =:Commercialization,'
      '   VASUpcharge =:VASUpcharge'
      '   TransportationUpcharge =:TransportationUpcharge,'
      '   InvoicePrice =:InvoicePrice,'
      '   FOB =:FOB,'
      '   ShipTo =:ShipTo,'
      '   SpecialInstructions =:SpecialInstructions,'
      '   Shipping =:Shipping,'
      '   Port =:Port,'
      '   userID =:userID,'
      '   userdate =:userdate'
      'where'
      '  DDBH =:OLD_DDBH')
    Left = 424
    Top = 368
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 248
    Top = 392
  end
  object PopupMenu1: TPopupMenu
    Left = 424
    Top = 416
    object Modify1: TMenuItem
      Caption = 'Modify'
      OnClick = Modify1Click
    end
    object Save1: TMenuItem
      Caption = 'Save'
      OnClick = Save1Click
    end
    object Cance1: TMenuItem
      Caption = 'Cance'
      OnClick = Cance1Click
    end
  end
end
