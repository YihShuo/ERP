object ExtraMat_ZS: TExtraMat_ZS
  Left = 455
  Top = 181
  Width = 594
  Height = 411
  BorderIcons = [biSystemMenu]
  Caption = 'ExtraMat_ZS'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 578
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = -16
      Top = 15
      Width = 59
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'No:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 75
      Top = 14
      Width = 71
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Name:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 297
      Top = 6
      Width = 89
      Height = 27
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object EDIT1: TEdit
      Left = 44
      Top = 10
      Width = 57
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = EDIT1KeyPress
    end
    object Edit2: TEdit
      Left = 147
      Top = 10
      Width = 145
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyPress = Edit2KeyPress
    end
    object Button2: TButton
      Left = 394
      Top = 7
      Width = 81
      Height = 27
      Caption = 'New'
      TabOrder = 3
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 578
    Height = 323
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
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ZSDH'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 188
      end
      item
        EditButtons = <>
        FieldName = 'BOM_Supplier'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ZSDH_JG'
        Footers = <>
        Width = 81
      end
      item
        EditButtons = <>
        FieldName = 'JG_Supplier'
        Footers = <>
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 128
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select distinct CSBH as ZSDH,ZSZL.ZSYWJC,zsqm,ZSZL.ZSYWJC as BOM' +
        '_Supplier,ZSZL_DEV.ZSDH_JG,ZSZL_DEV.ZSYWJC as JG_Supplier '
      'from YPZLS'
      'left join zszl on zszl.zsdh = YPZLS.CSBH'
      'left join shoetest on shoetest.YPDH = YPZLS.YPDH'
      
        'Left JOIN ( SELECT ZSZL_DEV.ZSDH,ZSZL_DEV.ZSDH_JG,ZSZL.ZSYWJC as' +
        ' ZSYWJC'
      
        #9#9'        FROM ZSZL LEFT JOIN ZSZL_DEV ON ZSZL.ZSDH=ZSZL_DEV.ZSD' +
        'H_JG and ZSZL_DEV.GSBH='#39'CDC'#39') ZSZL_DEV'
      #9#9'        on ZSZL.ZSDH=ZSZL_DEV.ZSDH'
      'where  shoetest.TestNo = '#39'23U0183'#39)
    Left = 424
    Top = 160
    object Query1ZSDH: TStringField
      FieldName = 'ZSDH'
      FixedChar = True
      Size = 6
    end
    object Query1ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Query1ZSQM: TStringField
      FieldName = 'ZSQM'
      FixedChar = True
      Size = 50
    end
    object Query1BOM_Supplier: TStringField
      FieldName = 'BOM_Supplier'
      FixedChar = True
    end
    object Query1ZSDH_JG: TStringField
      FieldName = 'ZSDH_JG'
      FixedChar = True
      Size = 6
    end
    object Query1JG_Supplier: TStringField
      FieldName = 'JG_Supplier'
      FixedChar = True
    end
  end
end
