object VD3SpecialBOM: TVD3SpecialBOM
  Left = 247
  Top = 360
  Width = 1091
  Height = 449
  Caption = 'VD3SpecialBOM'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1075
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 18
      Top = 22
      Width = 44
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Article:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 197
      Top = 21
      Width = 55
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Dest ID:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 380
      Top = 21
      Width = 81
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Destination:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 460
      Top = 51
      Width = 55
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Season:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 18
      Top = 54
      Width = 44
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 176
      Top = 53
      Width = 76
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Mat Name:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object ArticleEdit: TEdit
      Left = 69
      Top = 17
      Width = 113
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DestIDEdit: TEdit
      Left = 259
      Top = 17
      Width = 107
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DestiEdit: TEdit
      Left = 471
      Top = 15
      Width = 107
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object SeaEdit: TEdit
      Left = 521
      Top = 47
      Width = 56
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Button1: TButton
      Left = 602
      Top = 41
      Width = 74
      Height = 33
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 602
      Top = 5
      Width = 74
      Height = 33
      Caption = 'EXCEL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = Button2Click
    end
    object MatNOEdit: TEdit
      Left = 69
      Top = 49
      Width = 113
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object MatNEdit: TEdit
      Left = 259
      Top = 49
      Width = 190
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 81
    Width = 1075
    Height = 329
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Article'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'XieXing'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'SheHao'
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'cond'
        Footers = <>
        Title.Caption = 'Dest ID'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'Destination'
        Footers = <>
        Width = 119
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'CSBH'
        Footers = <>
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'LOSS'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'JiJie'
        Footers = <>
        Title.Caption = 'Season'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'KHDH'
        Footers = <>
        Title.Caption = 'Brand'
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'BWBH'
        Footers = <>
        Title.Caption = 'PartID'
        Width = 48
      end
      item
        EditButtons = <>
        FieldName = 'ZWSM'
        Footers = <>
        Title.Caption = 'PartName'
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Title.Caption = 'PartEnglish'
        Width = 103
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = 'MatName'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Width = 46
      end
      item
        EditButtons = <>
        FieldName = 'CQDH'
        Footers = <>
        Width = 46
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select XXZLSS.*,LBZLS.YWSM as Destination,XXZL.Article,XXZL.JiJi' +
        'e,XXZL.KHDH,BWZL.ZWSM,BWZL.YWSM,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH'
      'from XXZLSS'
      
        'left join XXZL on XXZL.XieXing=XXZLSS.XieXing and XXZL.SheHao=XX' +
        'ZLSS.SHeHao'
      'left join LBZLS on LBZLS.LBDH=XXZLSS.COND and LBZLS.LB='#39'13'#39
      'left join BWZL on BWZL.BWDH=XXZLSS.BWBH'
      'left join CLZL on CLZL.CLDH=XXZLSS.CLBH'
      'where XXZL.KHDH='#39'036'#39
      'and ARTICLE = '#39'A01068C'#39)
    Left = 24
    Top = 184
    object Query1XieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object Query1SheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object Query1cond: TStringField
      FieldName = 'cond'
      FixedChar = True
      Size = 4
    end
    object Query1BWBH: TStringField
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1CSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object Query1LOSS: TFloatField
      FieldName = 'LOSS'
      DisplayFormat = '#,##0.00'
    end
    object Query1CLSL: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '#,##0.0000'
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object Query1Destination: TStringField
      FieldName = 'Destination'
      FixedChar = True
      Size = 50
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1JiJie: TStringField
      FieldName = 'JiJie'
      FixedChar = True
    end
    object Query1KHDH: TStringField
      FieldName = 'KHDH'
      FixedChar = True
      Size = 4
    end
    object Query1ZWSM: TStringField
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 40
    end
    object Query1YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 40
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1CQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 24
    Top = 152
  end
end
