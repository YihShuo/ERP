object ProductionOrder: TProductionOrder
  Left = 268
  Top = 177
  Width = 870
  Height = 500
  Caption = 'ProductionOrder'
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
    Height = 97
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
      Top = 16
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
      Left = 176
      Top = 16
      Width = 55
      Height = 16
      Caption = 'ArtName:'
    end
    object Label3: TLabel
      Left = 8
      Top = 48
      Width = 60
      Height = 16
      Caption = 'Customer:'
    end
    object Label4: TLabel
      Left = 180
      Top = 44
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
      Left = 354
      Top = 44
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
    object Label5: TLabel
      Left = 376
      Top = 16
      Width = 41
      Height = 16
      Caption = 'Article:'
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
      Top = 8
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
      OnKeyPress = Edit1KeyPress
    end
    object Edit2: TEdit
      Left = 232
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
      OnKeyPress = Edit2KeyPress
    end
    object CBX2: TComboBox
      Left = 248
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
        '2020')
    end
    object CBX3: TComboBox
      Left = 400
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
      Left = 523
      Top = 48
      Width = 94
      Height = 41
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = Button1Click
    end
    object Edit3: TEdit
      Left = 424
      Top = 8
      Width = 89
      Height = 24
      TabOrder = 6
      OnKeyPress = Edit3KeyPress
    end
    object Edit4: TEdit
      Left = 72
      Top = 40
      Width = 89
      Height = 24
      TabOrder = 7
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 97
    Width = 727
    Height = 372
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'VNI-Times'
    Font.Style = []
    FooterColor = 16764622
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    OnGetCellParams = DBGrid1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'SCBH'
        Footers = <
          item
            FieldName = 'SCBH'
            ValueType = fvtCount
          end>
        Title.Alignment = taCenter
        Title.TitleButton = True
        Width = 101
      end
      item
        EditButtons = <>
        FieldName = 'XieXing'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'ArtNO'
        Title.TitleButton = True
        Width = 104
      end
      item
        EditButtons = <>
        FieldName = 'SheHao'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Color'
        Title.TitleButton = True
        Width = 46
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Title.Alignment = taCenter
        Title.TitleButton = True
        Width = 130
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Article Name'
        Title.TitleButton = True
        Width = 173
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        Title.Alignment = taCenter
        Title.TitleButton = True
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'XXCC'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'XX'
        Title.TitleButton = True
        Width = 33
      end
      item
        EditButtons = <>
        FieldName = 'DDCC'
        Footers = <>
        Title.Caption = 'DD'
        Title.TitleButton = True
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'ShipDate'
        Footers = <>
        Title.Alignment = taCenter
        Title.TitleButton = True
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Country'
        Title.TitleButton = True
        Width = 116
      end
      item
        EditButtons = <>
        FieldName = 'KFJC'
        Footers = <>
        Title.TitleButton = True
        Width = 88
      end>
  end
  object DBGrid2: TDBGridEh
    Left = 727
    Top = 97
    Width = 135
    Height = 372
    Align = alRight
    DataSource = DS2
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = 16758197
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'XXCC'
        Footers = <>
        Title.Caption = 'CC'
        Width = 32
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        Width = 54
      end>
  end
  object OrdDet: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'select *'
      'from SCZLS'
      'where SCBH=:SCBH')
    Left = 760
    Top = 200
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'SCBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object OrdDetSCBH: TStringField
      FieldName = 'SCBH'
      Origin = 'DB.SCZLS.SCBH'
      FixedChar = True
      Size = 15
    end
    object OrdDetXXCC: TStringField
      FieldName = 'XXCC'
      Origin = 'DB.SCZLS.XXCC'
      FixedChar = True
      Size = 5
    end
    object OrdDetQty: TFloatField
      FieldName = 'Qty'
      Origin = 'DB.SCZLS.Qty'
      DisplayFormat = '##,#0.0'
    end
  end
  object DS2: TDataSource
    DataSet = OrdDet
    Left = 728
    Top = 200
  end
  object OrdMas: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select distinct SCZL.SCBH, SCZL.ZLBH,DDZL.XieXing,DDZL.SheHao,DD' +
        'ZL.Dest,KFZL.KFJC,'
      
        'LBZLS.YWSM,DDZL.CCGB as DDCC ,DDZL.DDZT,SCZL.Qty as Qty,DDZL.Art' +
        'icle,'
      'DDZL.ShipDate,XXZL.CCGB as XXCC,XXZL.XieMing'
      'from SCZL'
      'left join ZLZL on ZLZL.ZLBH=SCZL.ZLBH '
      'left join DDZL  on ZLZL.DDBH=DDZL.DDBH'
      'left join KFZL on KFZl.KFDH=DDZl.KHBH'
      
        'left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZ' +
        'L.SheHao'
      'left join LBZLS on LBZLS.LB='#39'06'#39' and LBZLS.LBDH=DDZL.Dest'
      'order by SCZL.SCBH')
    Left = 208
    Top = 344
    object OrdMasSCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object OrdMasZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object OrdMasXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object OrdMasSheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object OrdMasArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object OrdMasXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object OrdMasQty: TFloatField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.0'
    end
    object OrdMasDDCC: TStringField
      FieldName = 'DDCC'
      FixedChar = True
      Size = 1
    end
    object OrdMasXXCC: TStringField
      FieldName = 'XXCC'
      FixedChar = True
      Size = 1
    end
    object OrdMasDest: TStringField
      FieldName = 'Dest'
      FixedChar = True
      Size = 4
    end
    object OrdMasShipDate: TDateTimeField
      FieldName = 'ShipDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object OrdMasDDZT: TStringField
      FieldName = 'DDZT'
      FixedChar = True
      Size = 1
    end
    object OrdMasYWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 50
    end
    object OrdMasKFJC: TStringField
      FieldName = 'KFJC'
      FixedChar = True
    end
  end
  object DS1: TDataSource
    DataSet = OrdMas
    Left = 168
    Top = 344
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 136
    Top = 344
  end
end
