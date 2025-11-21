object DeliveryRubberRY: TDeliveryRubberRY
  Left = 327
  Top = 224
  Width = 821
  Height = 430
  Caption = 'DeliveryRubberRY'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 805
    Height = 73
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 59
      Top = 45
      Width = 27
      Height = 20
      Caption = 'RY:'
    end
    object Label2: TLabel
      Left = 13
      Top = 13
      Width = 72
      Height = 20
      Caption = 'ProdDate:'
    end
    object Label3: TLabel
      Left = 237
      Top = 13
      Width = 31
      Height = 20
      Caption = 'Mat:'
    end
    object Label4: TLabel
      Left = 237
      Top = 45
      Width = 65
      Height = 20
      Caption = 'Rotation:'
    end
    object Label5: TLabel
      Left = 391
      Top = 51
      Width = 9
      Height = 20
      Caption = '~'
    end
    object Label6: TLabel
      Left = 488
      Top = 45
      Width = 121
      Height = 20
      Caption = '(Hoan thanh RY)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 498
      Top = 3
      Width = 75
      Height = 36
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object RYEdit: TEdit
      Left = 87
      Top = 40
      Width = 138
      Height = 28
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object bnCopy: TButton
      Left = 585
      Top = 3
      Width = 75
      Height = 33
      Caption = 'Copy'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = bnCopyClick
    end
    object PEdit: TEdit
      Left = 87
      Top = 8
      Width = 138
      Height = 28
      TabOrder = 3
    end
    object CheckBox1: TCheckBox
      Left = 624
      Top = 48
      Width = 121
      Height = 17
      Caption = 'KGS_UnLL>0'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object MatEdit: TEdit
      Left = 272
      Top = 9
      Width = 217
      Height = 28
      TabOrder = 5
    end
    object Rot1: TEdit
      Left = 304
      Top = 40
      Width = 81
      Height = 28
      MaxLength = 3
      TabOrder = 6
    end
    object Rot2: TEdit
      Left = 406
      Top = 40
      Width = 81
      Height = 28
      MaxLength = 3
      TabOrder = 7
    end
  end
  object gdMain: TDBGridEh
    Left = 0
    Top = 73
    Width = 805
    Height = 319
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    FooterColor = clGradientActiveCaption
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FrozenCols = 1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = gdMainDblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CQDH'
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'cldh'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'KGS'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'KGS_LL'
        Footers = <>
        Title.Caption = 'KGS|LL'
      end
      item
        Color = clGradientInactiveCaption
        EditButtons = <>
        FieldName = 'TQty'
        Footers = <>
        Title.Caption = 'KGS|+LL'
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'SCRQ'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'XieXing'
        Footers = <>
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT DDZLS2.*,DDZL.XieXing,DDZL.SheHao,DDZL.ARTICLE,DDZL.SCRQ,' +
        'DDZL.DDJQ,DDZL.KHPO,XXZL.YSSM,SPACE(1) SW,SMDD.TQty'
      'FROM LIY_DD.dbo.DDZLS2 DDZLS2   '
      
        'LEFT JOIN LIY_DD.dbo.DDZL DDZL ON DDZLS2.DDBH=DDZL.DDBH AND DDZL' +
        'S2.CQDH=DDZL.CQDH    '
      
        'LEFT JOIN LIY_DD.dbo.XXZL XXZL ON DDZL.XieXing=XXZL.XieXing AND ' +
        'DDZL.SheHao=XXZL.SheHao AND DDZLS2.CQDH=XXZL.CQDH '
      ''
      ''
      'Left join '
      '('
      #9'select CQDH,cldh,Round(SUM(Qty),2) as TQty from ('
      
        #9'Select DDZLS2.CQDH,DDZLS2.CLDH,SMDD.DDBH,Round(DDZLS2.KGS* SMDD' +
        '.Qty/SMDDT.TQty,2) as Qty,DDZLS2.KGS from LIY_DD.dbo.DDZLS2 DDZL' +
        'S2'
      #9'Left join SMDD  on SMDD.YSBH=DDZLS2.DDBH and SMDD.GXLB='#39'A'#39' '
      #9'Left join '
      #9'('
      
        #9'  Select YSBH,Sum(Qty) as TQty from SMDD where SMDD.DDBH like '#39 +
        'Y1601-0006%'#39' and SMDD.GXLB='#39'A'#39' Group by YSBH  '
      #9') as SMDDT on SMDDT.YSBH=DDZLS2.DDBH '
      #9'where DDZLS2.DDBH like '#39'Y1601-0006%'#39' and DDZLS2.CQDH='#39'VR2'#39' '
      
        #9') SMDD where DDBH>='#39'Y1601-0006-001'#39' and DDBH<='#39'Y1601-0006-002'#39' ' +
        ' Group by CQDH,cldh'
      ') SMDD on SMDD.CQDH=DDZL.CQDH and SMDD.cldh=DDZLS2.cldh'
      ' '
      'WHERE DDZLS2.CQDH='#39'VR2'#39' AND DDZL.CQDH1='#39'VR2'#39'  '
      '  AND DDZL.SCRQ LIKE '#39'2015%'#39' '
      ' and DDZLS2.DDBH like '#39'Y1601-0006%'#39' '
      'ORDER BY DDZLS2.DDBH,DDZLS2.CLDH')
    Left = 288
    Top = 160
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 18
    end
    object Query1CQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 3
    end
    object Query1cldh: TStringField
      FieldName = 'cldh'
      FixedChar = True
      Size = 16
    end
    object Query1KGS: TFloatField
      FieldName = 'KGS'
    end
    object Query1KGS_LL: TFloatField
      FieldName = 'KGS_LL'
    end
    object Query1PG_LOSS: TFloatField
      FieldName = 'PG_LOSS'
    end
    object Query1PGSS: TFloatField
      FieldName = 'PGSS'
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object Query1USERDATE: TStringField
      FieldName = 'USERDATE'
      FixedChar = True
      Size = 8
    end
    object Query1LB: TStringField
      FieldName = 'LB'
      FixedChar = True
      Size = 10
    end
    object Query1XieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 18
    end
    object Query1SheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object Query1SCRQ: TStringField
      FieldName = 'SCRQ'
      FixedChar = True
      Size = 8
    end
    object Query1DDJQ: TStringField
      FieldName = 'DDJQ'
      FixedChar = True
      Size = 8
    end
    object Query1KHPO: TStringField
      FieldName = 'KHPO'
      FixedChar = True
      Size = 50
    end
    object Query1YSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 200
    end
    object Query1SW: TStringField
      FieldName = 'SW'
      FixedChar = True
      Size = 1
    end
    object Query1TQty: TFloatField
      FieldName = 'TQty'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 320
    Top = 160
  end
end
