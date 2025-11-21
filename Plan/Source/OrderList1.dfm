object OrderList: TOrderList
  Left = 299
  Top = 294
  Width = 1142
  Height = 500
  Caption = 'OrderList'
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
    Width = 1126
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
      Top = 28
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
      Top = 28
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
      Left = 21
      Top = 68
      Width = 60
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Customer:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 677
      Top = 68
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
      Top = 28
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
      Top = 68
      Width = 53
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DAOMH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 370
      Top = 68
      Width = 41
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'XTMH:'
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
      Top = 24
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
      OnKeyPress = Edit1KeyPress
    end
    object Edit2: TEdit
      Left = 238
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
      OnKeyPress = Edit2KeyPress
    end
    object CBX2: TComboBox
      Left = 600
      Top = 64
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
      Top = 58
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
      Top = 24
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 6
      OnKeyPress = Edit3KeyPress
    end
    object Button2: TButton
      Left = 899
      Top = 59
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
      Top = 64
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 8
    end
    object Edit5: TEdit
      Left = 238
      Top = 64
      Width = 122
      Height = 24
      TabOrder = 9
    end
    object RadioButton1: TRadioButton
      Left = 516
      Top = 28
      Width = 63
      Height = 17
      Caption = 'BuyNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object BuyNoEdit: TEdit
      Left = 600
      Top = 24
      Width = 109
      Height = 24
      TabOrder = 11
    end
    object RB1: TRadioButton
      Left = 516
      Top = 68
      Width = 82
      Height = 17
      Caption = 'ETD Year:'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      TabStop = True
    end
    object Edit6: TEdit
      Left = 413
      Top = 64
      Width = 91
      Height = 24
      TabOrder = 13
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 97
    Width = 991
    Height = 364
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = 16761281
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
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnGetCellParams = DBGrid1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'BUYNO'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'SCBH'
        Footers = <
          item
            FieldName = 'SCBH'
            ValueType = fvtCount
          end>
        Title.Alignment = taCenter
        Width = 102
      end
      item
        EditButtons = <>
        FieldName = 'XieXing'
        Footers = <>
        Title.Alignment = taCenter
        Width = 121
      end
      item
        EditButtons = <>
        FieldName = 'SheHao'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Color'
        Width = 43
      end
      item
        EditButtons = <>
        FieldName = 'KHPO'
        Footers = <>
        Width = 109
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Title.Alignment = taCenter
        Width = 134
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Article Name'
        Width = 184
      end
      item
        DisplayFormat = '##,#0'
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        Title.Alignment = taCenter
      end
      item
        EditButtons = <>
        FieldName = 'XXCC'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'XX'
        Width = 28
      end
      item
        EditButtons = <>
        FieldName = 'DDCC'
        Footers = <>
        Title.Caption = 'DD'
        Width = 30
      end
      item
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'ShipDate'
        Footers = <>
        Title.Alignment = taCenter
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Country'
        Width = 113
      end
      item
        EditButtons = <>
        FieldName = 'KFJC'
        Footers = <>
        Width = 98
      end
      item
        EditButtons = <>
        FieldName = 'DAOMH'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'XTMH'
        Footers = <>
        Width = 130
      end
      item
        EditButtons = <>
        FieldName = 'Dest'
        Footers = <>
        Width = 73
      end>
  end
  object DBGrid2: TDBGridEh
    Left = 991
    Top = 97
    Width = 135
    Height = 364
    Align = alRight
    DataSource = DS2
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = 16755884
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
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
  object QueryExcel: TQuery
    DatabaseName = 'DB'
    Left = 760
    Top = 248
  end
  object DS1: TDataSource
    DataSet = OrdMas
    Left = 168
    Top = 344
  end
  object OrdMas: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select distinct SCZL.SCBH, SCZL.ZLBH,DDZL.XieXing,DDZL.SheHao,KF' +
        'ZL.KFJC,'
      
        'LBZLS.YWSM,DDZL.CCGB as DDCC ,DDZL.DDZT,SCZL.Qty as Qty,DDZL.Art' +
        'icle,'
      
        'DDZL.ShipDate,XXZL.CCGB as XXCC,XXZL.XieMing,XXZL.DAOMH,XXZL.XTM' +
        'H,DDZL.BUYNO,DDZL.KHPO,DDZL.Dest'
      'from SCZL'
      'left join ZLZL on ZLZL.ZLBH=SCZL.ZLBH '
      'left join DDZL  on ZLZL.DDBH=DDZL.DDBH'
      
        'left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZ' +
        'L.SheHao'
      'left join LBZLS on LBZLS.LB='#39'06'#39' and LBZLS.LBDH=DDZL.Dest'
      'left join KFZL on KFZl.KFDH=DDZl.KHBH'
      'order by SCZL.SCBH')
    Left = 168
    Top = 312
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
    object OrdMasKFJC: TStringField
      FieldName = 'KFJC'
      FixedChar = True
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
    object OrdMasDAOMH: TStringField
      FieldName = 'DAOMH'
      FixedChar = True
      Size = 30
    end
    object OrdMasXTMH: TStringField
      FieldName = 'XTMH'
      FixedChar = True
      Size = 30
    end
    object OrdMasBUYNO: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 15
    end
    object OrdMasKHPO: TStringField
      FieldName = 'KHPO'
      FixedChar = True
      Size = 30
    end
    object OrdMasDest: TStringField
      FieldName = 'Dest'
      FixedChar = True
      Size = 4
    end
  end
  object DS2: TDataSource
    DataSet = OrdDet
    Left = 728
    Top = 200
  end
  object OrdDet: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'select DDZLs.DDBH,XXZLS3.US_Size as DDCC,XXZLS3.US_Size as XXCC,'
      '         DDZLs.Quantity  as Qty'
      'from DDZLs '
      
        'left join XXZLS3  on  XXZLS3.XieXing='#39'103720(VN)'#39' and DDZLS.CC=X' +
        'XZLS3.US_Size'
      'where DDZLs.DDBH='#39'VN-292A'#39
      'and DDZLs.Quantity<>0  ')
    Left = 760
    Top = 200
    object OrdDetDDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.DDZLs.DDBH'
      FixedChar = True
      Size = 15
    end
    object OrdDetDDCC: TStringField
      FieldName = 'DDCC'
      Origin = 'DB.XXZLS3.US_Size'
      FixedChar = True
      Size = 6
    end
    object OrdDetXXCC: TStringField
      FieldName = 'XXCC'
      Origin = 'DB.XXZLS3.US_Size'
      FixedChar = True
      Size = 6
    end
    object OrdDetQty: TIntegerField
      FieldName = 'Qty'
      Origin = 'DB.DDZLs.Quantity'
    end
  end
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    Left = 200
    Top = 232
    object N1: TMenuItem
      Caption = 'N1 Preview Spec'
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = 'N2 Preview Packing List'
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = 'N3 Excel'
      OnClick = N3Click
    end
  end
  object YWDDTP: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'select  * '
      'from YWDDTP '
      'where DDBH=:SCBH'
      'order by XH')
    Left = 267
    Top = 231
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SCBH'
        ParamType = ptUnknown
      end>
  end
  object SpecMas: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'select YWDD.DDBH, YWDD.YSBH,DDZL.XieXing,DDZL.SheHao, XXZL.XieMi' +
        'ng,DDZL.DDZT,DDZL.KHPO,LBZLS.YWSM as Country,  YWDD.KHDDBH1,'
      
        '       YWDD.Qty,DDZL.Article,YWDD.ETD,XXZL.CCGB as XXCC,DDZL.CCG' +
        'B as DDCC,KFZL.KFJC,XXZL.IMGName,'
      
        '       (select Top 1 DDBH from YWBZPOS where YWBZPOS.DDBH=YWDD.D' +
        'DBH ) as Packing,'
      
        '       (select top 1 DDBH from YWDDMT where YWDDMT.DDBH=YWDD.DDB' +
        'H )  as DDMT,'
      
        '       (select top 1 DDBH from YWDDBZ where YWDDBZ.DDBH=YWDD.DDB' +
        'H )  as DDBZ, xxzl.YSSM'
      'from YWDD'
      'left join DDZL on YWDD.YSBH=DDZl.DDBH '
      'left join ZLZL  on ZLZL.DDBH=DDZL.DDBH'
      
        'left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZ' +
        'L.SheHao'
      'left join LBZLS on LBZLS.LB='#39'06'#39' and LBZLS.LBDH=DDZL.DDGB'
      'left join KFZL on KFZL.KFDH=DDZL.KHBH '
      'where DDZL.DDBH=:SCBH')
    Left = 232
    Top = 232
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'SCBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object SpecMasDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object SpecMasYSBH: TStringField
      FieldName = 'YSBH'
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
    object SpecMasQty: TFloatField
      FieldName = 'Qty'
      DisplayFormat = '##,#0'
    end
    object SpecMasETD: TDateTimeField
      FieldName = 'ETD'
      DisplayFormat = 'yyyy/MM/dd'
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
    object SpecMasDDZT: TStringField
      FieldName = 'DDZT'
      FixedChar = True
      Size = 1
    end
    object SpecMasKFJC: TStringField
      FieldName = 'KFJC'
      FixedChar = True
    end
    object SpecMasPacking: TStringField
      FieldName = 'Packing'
      FixedChar = True
      Size = 15
    end
    object SpecMasDDMT: TStringField
      FieldName = 'DDMT'
      FixedChar = True
      Size = 15
    end
    object SpecMasDDBZ: TStringField
      FieldName = 'DDBZ'
      FixedChar = True
      Size = 15
    end
    object SpecMasKHDDBH1: TStringField
      FieldName = 'KHDDBH1'
      FixedChar = True
      Size = 30
    end
    object SpecMasKHPO: TStringField
      FieldName = 'KHPO'
      FixedChar = True
      Size = 25
    end
    object SpecMasCountry: TStringField
      FieldName = 'Country'
      FixedChar = True
      Size = 50
    end
    object SpecMasYSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 40
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 728
    Top = 248
  end
end
