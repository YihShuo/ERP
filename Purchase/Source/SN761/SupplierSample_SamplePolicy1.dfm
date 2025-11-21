object SupplierSample_SamplePolicy: TSupplierSample_SamplePolicy
  Left = 252
  Top = 223
  Width = 1028
  Height = 771
  BorderIcons = [biSystemMenu]
  Caption = 'SupplierSample_SamplePolicy'
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1020
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
      Left = 7
      Top = 10
      Width = 59
      Height = 20
      Caption = 'Season:'
    end
    object Label2: TLabel
      Left = 354
      Top = 10
      Width = 76
      Height = 20
      Caption = 'Purchaser:'
    end
    object Label3: TLabel
      Left = 151
      Top = 10
      Width = 39
      Height = 20
      Caption = 'Style:'
    end
    object Button1: TButton
      Left = 608
      Top = 5
      Width = 89
      Height = 28
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object EDIT1: TEdit
      Left = 71
      Top = 6
      Width = 57
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = EDIT1KeyPress
    end
    object Edit2: TEdit
      Left = 435
      Top = 6
      Width = 145
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 2
      OnKeyPress = Edit2KeyPress
    end
    object Edit3: TEdit
      Left = 192
      Top = 6
      Width = 122
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 3
      OnKeyPress = Edit2KeyPress
    end
    object Button2: TButton
      Left = 704
      Top = 5
      Width = 89
      Height = 28
      Caption = 'Excel'
      TabOrder = 4
      OnClick = Button2Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 1020
    Height = 696
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
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        Color = clSkyBlue
        EditButtons = <>
        FieldName = 'Country'
        Footers = <>
        Title.TitleButton = True
      end
      item
        Color = clSkyBlue
        EditButtons = <>
        FieldName = 'zsdh'
        Footers = <>
        Title.Caption = 'Supplier|ID'
        Title.TitleButton = True
        Width = 40
      end
      item
        Color = clSkyBlue
        EditButtons = <>
        FieldName = 'style'
        Footers = <>
        Title.Caption = 'Supplier|Style'
        Title.TitleButton = True
        Width = 110
      end
      item
        Color = clSkyBlue
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        Title.Caption = 'Supplier|Name'
        Title.TitleButton = True
      end
      item
        EditButtons = <>
        FieldName = 'Season'
        Footers = <>
        Title.Caption = 'Sample Policy|Season'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'CR1'
        Footers = <>
        Title.Caption = 'Sample Policy|CR1'
        Title.TitleButton = True
        Width = 233
      end
      item
        EditButtons = <>
        FieldName = 'CR2'
        Footers = <>
        Title.Caption = 'Sample Policy|CR2'
        Title.TitleButton = True
        Width = 186
      end
      item
        EditButtons = <>
        FieldName = 'Presell'
        Footers = <>
        Title.Caption = 'Sample Policy|Presell'
        Title.TitleButton = True
        Width = 199
      end
      item
        EditButtons = <>
        FieldName = 'SMS'
        Footers = <>
        Title.Caption = 'Sample Policy|SMS'
        Title.TitleButton = True
        Width = 179
      end
      item
        EditButtons = <>
        FieldName = 'PT'
        Footers = <>
        Title.Caption = 'Sample Policy|PT'
        Title.TitleButton = True
        Width = 193
      end
      item
        EditButtons = <>
        FieldName = 'SamplePurchaser_Name'
        Footers = <>
        Title.TitleButton = True
        Width = 92
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
      
        'select zszlSamplePayment.*,ZSZL.ZSYWJC,ZSZL.style,BUSERS.USERNAM' +
        'E as SamplePurchaser_Name,ZSZL.Country from zszlSamplePayment'
      'left join ZSZL on ZSZL.zsdh=zszlSamplePayment.zsdh'
      'left join BUSERS  on BUSERS.USERID=ZSZL.SamplePurchaser')
    Left = 424
    Top = 160
    object Query1zsdh: TStringField
      DisplayLabel = 'ID'
      FieldName = 'zsdh'
      FixedChar = True
      Size = 6
    end
    object Query1style: TStringField
      DisplayLabel = 'Style'
      FieldName = 'style'
      FixedChar = True
    end
    object Query1ZSYWJC: TStringField
      DisplayLabel = 'Supplier Name'
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Query1Season: TStringField
      FieldName = 'Season'
      FixedChar = True
    end
    object Query1CR1: TStringField
      FieldName = 'CR1'
      FixedChar = True
      Size = 50
    end
    object Query1CR2: TStringField
      FieldName = 'CR2'
      FixedChar = True
      Size = 50
    end
    object Query1Presell: TStringField
      FieldName = 'Presell'
      FixedChar = True
      Size = 50
    end
    object Query1SMS: TStringField
      FieldName = 'SMS'
      FixedChar = True
      Size = 50
    end
    object Query1PT: TStringField
      FieldName = 'PT'
      FixedChar = True
      Size = 50
    end
    object Query1SamplePurchaser_Name: TStringField
      DisplayLabel = 'Sample Purchaser'
      FieldName = 'SamplePurchaser_Name'
      FixedChar = True
      Size = 30
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object Query1Country: TStringField
      FieldName = 'Country'
      FixedChar = True
      Size = 10
    end
  end
end
