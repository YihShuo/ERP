object OrderPrice: TOrderPrice
  Left = 289
  Top = 204
  Width = 870
  Height = 500
  Caption = 'OrderPrice'
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
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 89
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
      Top = 32
      Width = 53
      Height = 16
      Caption = 'SpecNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 168
      Top = 32
      Width = 55
      Height = 16
      Caption = 'ArtName:'
    end
    object Label4: TLabel
      Left = 360
      Top = 32
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
    object Label7: TLabel
      Left = 512
      Top = 32
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
    object DBNavigator1: TDBNavigator
      Left = 8
      Top = 64
      Width = 320
      Height = 25
      DataSource = DS1
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 64
      Top = 24
      Width = 97
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
      Left = 224
      Top = 24
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
      Left = 432
      Top = 24
      Width = 65
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
        '2020')
    end
    object CBX3: TComboBox
      Left = 560
      Top = 24
      Width = 49
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
    object Button1: TButton
      Left = 635
      Top = 16
      Width = 70
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
  end
  object Panel1: TPanel
    Left = 608
    Top = 89
    Width = 254
    Height = 377
    Align = alRight
    TabOrder = 1
    object DBGrid3: TDBGridEh
      Left = 1
      Top = 1
      Width = 252
      Height = 375
      Align = alClient
      DataSource = DS2
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = 16762052
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      ParentFont = False
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'ZLCC'
          Footers = <>
          Width = 44
        end
        item
          EditButtons = <>
          FieldName = 'XXCC'
          Footers = <>
          Width = 41
        end
        item
          EditButtons = <>
          FieldName = 'Quantity'
          Footers = <
            item
              DisplayFormat = '##,#0'
              FieldName = 'Quantity'
              ValueType = fvtSum
            end>
          Title.Alignment = taCenter
          Width = 48
        end
        item
          EditButtons = <>
          FieldName = 'IPrice'
          Footers = <
            item
              DisplayFormat = '##,#0.000'
              FieldName = 'IPrice'
              ValueType = fvtAvg
            end>
          Width = 61
        end>
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 89
    Width = 608
    Height = 377
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    FooterColor = 16762052
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    OnGetCellParams = DBGrid1GetCellParams
    Columns = <
      item
        DropDownBox.ListSource = DS2
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        LookupDisplayFields = 'OedDet.DDCC'
        Title.Alignment = taCenter
        Title.TitleButton = True
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'XieXing'
        Footers = <>
        Title.Alignment = taCenter
        Title.TitleButton = True
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'SheHao'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Color'
        Title.TitleButton = True
        Width = 41
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <
          item
            FieldName = 'Article'
            Value = 'Total'
            ValueType = fvtStaticText
          end>
        Title.Alignment = taCenter
        Title.TitleButton = True
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <
          item
            FieldName = 'XieMing'
            ValueType = fvtCount
          end>
        Title.Alignment = taCenter
        Title.Caption = 'Article Name'
        Title.TitleButton = True
        Width = 193
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footers = <
          item
            DisplayFormat = '##,#0'
            FieldName = 'Pairs'
            ValueType = fvtSum
          end>
        Title.Alignment = taCenter
        Title.TitleButton = True
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'ShipDate'
        Footers = <>
        Title.Alignment = taCenter
        Title.TitleButton = True
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'XXCC'
        Footers = <>
        Title.Alignment = taCenter
        Title.TitleButton = True
        Width = 39
      end
      item
        EditButtons = <>
        FieldName = 'DDCC'
        Footers = <>
        Title.TitleButton = True
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'DDZT'
        Footers = <>
        Title.TitleButton = True
        Width = 37
      end
      item
        EditButtons = <>
        FieldName = 'ACCUS'
        Footers = <
          item
            FieldName = 'ACCUS'
            ValueType = fvtSum
          end>
        Width = 81
      end>
  end
  object SpecMas: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select DDZL.DDBH,DDZL.XieXing,DDZL.SheHao, XXZL.XieMing,DDZL.DDZ' +
        'T, '
      
        'DDZL.Article,DDZL.ShipDate,XXZL.CCGB as XXCC,DDZL.CCGB as DDCC,D' +
        'DZL.Pairs,sum(DDZLS.Quantity*DDZLS.IPrice) as ACCUS'
      'from DDZL'
      'left join ZLZL  on ZLZL.DDBH=DDZL.DDBH'
      
        'left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZ' +
        'L.SheHao'
      'left join DDZLS on DDZL.DDBH=DDZLS.DDBH  '
      'where DDZL.DDBH like '#39'%'#39
      'and XXZL.XieMing like '#39'%%'#39
      
        'and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) be' +
        'tween '
      #39'2008/11/01'#39' and '#39'2008/11/30'#39
      
        'group by DDZL.DDBH,DDZL.XieXing,DDZL.SheHao, XXZL.XieMing,DDZL.D' +
        'DZT, '
      'DDZL.Article,DDZL.ShipDate,XXZL.CCGB,DDZL.CCGB,DDZL.Pairs '
      'order by DDZL.DDBH')
    Left = 208
    Top = 344
    object SpecMasDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object SpecMasXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object SpecMasSheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object SpecMasArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object SpecMasXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object SpecMasPairs: TIntegerField
      FieldName = 'Pairs'
    end
    object SpecMasXXCC: TStringField
      FieldName = 'XXCC'
      FixedChar = True
      Size = 1
    end
    object SpecMasDDCC: TStringField
      FieldName = 'DDCC'
      FixedChar = True
      Size = 1
    end
    object SpecMasShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object SpecMasDDZT: TStringField
      FieldName = 'DDZT'
      FixedChar = True
      Size = 1
    end
    object SpecMasACCUS: TFloatField
      FieldName = 'ACCUS'
      DisplayFormat = '##,#0.000'
    end
  end
  object DS1: TDataSource
    DataSet = SpecMas
    Left = 168
    Top = 344
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 88
    Top = 312
  end
  object OrdDet: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'select ZLZLS.ZLCC,ZLZLS.XXCC,DDZLS.Quantity,DDZLS.IPrice'
      'from ZLZLS'
      'left join DDZL on DDZl.ZLBH=ZLZLS.ZLBH'
      'left join DDZLS on DDZLS.DDBH=DDZl.DDBH and DDZLS.CC=ZLZLS.ZLCC'
      'where DDZL.DDBH=:DDBH'
      'and DDZLS.Quantity<>0')
    Left = 672
    Top = 217
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'DDBH'
        ParamType = ptUnknown
        Size = 16
      end>
  end
  object DS2: TDataSource
    DataSet = OrdDet
    Left = 704
    Top = 217
  end
  object PopupMenu1: TPopupMenu
    Left = 304
    Top = 192
    object N1: TMenuItem
      Caption = 'Excel'
      OnClick = N1Click
    end
  end
end
