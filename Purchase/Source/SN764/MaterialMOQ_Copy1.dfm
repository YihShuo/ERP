object MaterialMOQ_Copy: TMaterialMOQ_Copy
  Left = 319
  Top = 200
  Width = 797
  Height = 581
  BorderIcons = [biSystemMenu]
  Caption = 'MaterialMOQ_Copy'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 789
    Height = 57
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 83
      Height = 20
      Caption = 'Old Season'
    end
    object Button1: TButton
      Left = 232
      Top = 14
      Width = 78
      Height = 26
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 400
      Top = 14
      Width = 78
      Height = 26
      Caption = 'Copy'
      TabOrder = 1
      OnClick = Button3Click
    end
    object Edit1: TEdit
      Left = 94
      Top = 13
      Width = 91
      Height = 28
      TabOrder = 2
    end
  end
  object DBGridEh3: TDBGridEh
    Left = 0
    Top = 57
    Width = 789
    Height = 493
    Align = alClient
    DataSource = DS_Copy
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
    FrozenCols = 2
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
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
        Color = clScrollBar
        EditButtons = <>
        FieldName = 'zsdh'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Supplier|ID'
        Title.TitleButton = True
        Width = 40
      end
      item
        Color = clScrollBar
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Supplier|Name'
        Title.TitleButton = True
        Width = 106
      end
      item
        Color = clMoneyGreen
        EditButtons = <>
        FieldName = 'CR1_FreeQty'
        Footers = <>
        Title.Caption = 'CR1|FreeQty'
        Width = 58
      end
      item
        Color = clTeal
        DisplayFormat = '##%'
        EditButtons = <>
        FieldName = 'CR1_Charge'
        Footers = <>
        Title.Caption = 'CR1|Charge'
        Width = 58
      end
      item
        Color = clMoneyGreen
        EditButtons = <>
        FieldName = 'CR2_FreeQty'
        Footers = <>
        Title.Caption = 'CR2|FreeQty'
        Width = 58
      end
      item
        Color = clTeal
        DisplayFormat = '##%'
        EditButtons = <>
        FieldName = 'CR2_charge'
        Footers = <>
        Title.Caption = 'CR2|Charge'
        Width = 58
      end
      item
        Color = clMoneyGreen
        EditButtons = <>
        FieldName = 'Presell_FreeQty'
        Footers = <>
        Title.Caption = 'Presell|FreeQty'
        Width = 58
      end
      item
        Color = clTeal
        DisplayFormat = '##%'
        EditButtons = <>
        FieldName = 'Presell_Charge'
        Footers = <>
        Title.Caption = 'Presell|Charge'
        Width = 58
      end
      item
        Color = clMoneyGreen
        EditButtons = <>
        FieldName = 'SMS_FreeQty'
        Footers = <>
        Title.Caption = 'SMS|FreeQty'
        Width = 58
      end
      item
        Color = clTeal
        DisplayFormat = '##%'
        EditButtons = <>
        FieldName = 'SMS_Charge'
        Footers = <>
        Title.Caption = 'SMS|Charge'
        Width = 58
      end
      item
        Color = clMoneyGreen
        EditButtons = <>
        FieldName = 'PT_FreeQty'
        Footers = <>
        Title.Caption = 'PT|FreeQty'
        Width = 58
      end
      item
        Color = clTeal
        DisplayFormat = '##%'
        EditButtons = <>
        FieldName = 'PT_Charge'
        Footers = <>
        Title.Caption = 'PT|Charge'
        Width = 58
      end
      item
        Color = clSkyBlue
        EditButtons = <>
        FieldName = 'EffectiveDate'
        Footers = <>
        Title.Caption = 'Effective Date'
        Width = 69
      end
      item
        Color = clScrollBar
        EditButtons = <>
        FieldName = 'SamplePurchaser_Name'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 77
      end
      item
        Color = clScrollBar
        EditButtons = <>
        FieldName = 'Country'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
      end
      item
        Color = clScrollBar
        EditButtons = <>
        FieldName = 'style'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Supplier|Style'
        Title.TitleButton = True
        Width = 110
      end>
  end
  object Qry_Copy: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select zszlSamplePayment.*,zszlSamplePayment.EffectiveDate as Ef' +
        'fectiveDate_old'
      
        '       ,ZSZL.ZSYWJC,ZSZL.style,BUSERS.USERNAME as SamplePurchase' +
        'r_Name,ZSZL.Country'
      'from zszlSamplePayment'
      'left join ZSZL on ZSZL.zsdh=zszlSamplePayment.zsdh'
      'left join BUSERS  on BUSERS.USERID=ZSZL.SamplePurchaser'
      'WHERE 1=2')
    Left = 120
    Top = 208
    object Query1zsdh: TStringField
      FieldName = 'zsdh'
      FixedChar = True
      Size = 6
    end
    object StringField1: TStringField
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
    object StringField2: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'USERDATE'
    end
    object StringField3: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Query1style: TStringField
      FieldName = 'style'
      FixedChar = True
    end
    object StringField4: TStringField
      DisplayLabel = 'Sample Purchaser'
      FieldName = 'SamplePurchaser_Name'
      FixedChar = True
      Size = 30
    end
    object Query1Country: TStringField
      FieldName = 'Country'
      FixedChar = True
      Size = 10
    end
    object Query1CR1_FreeQty: TCurrencyField
      FieldName = 'CR1_FreeQty'
      currency = False
    end
    object Query1CR1_Charge: TCurrencyField
      FieldName = 'CR1_Charge'
      currency = False
    end
    object Query1CR2_FreeQty: TCurrencyField
      FieldName = 'CR2_FreeQty'
      currency = False
    end
    object Query1CR2_charge: TCurrencyField
      FieldName = 'CR2_charge'
      currency = False
    end
    object Query1Presell_FreeQty: TCurrencyField
      FieldName = 'Presell_FreeQty'
      currency = False
    end
    object Query1Presell_Charge: TCurrencyField
      FieldName = 'Presell_Charge'
      currency = False
    end
    object Query1SMS_FreeQty: TCurrencyField
      FieldName = 'SMS_FreeQty'
      currency = False
    end
    object Query1SMS_Charge: TCurrencyField
      FieldName = 'SMS_Charge'
      currency = False
    end
    object Query1PT_FreeQty: TCurrencyField
      FieldName = 'PT_FreeQty'
      currency = False
    end
    object Query1PT_Charge: TCurrencyField
      FieldName = 'PT_Charge'
      currency = False
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'EffectiveDate'
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'EffectiveDate_old'
    end
  end
  object DS_Copy: TDataSource
    DataSet = Qry_Copy
    Left = 152
    Top = 208
  end
end
