object CostOrderList_DD: TCostOrderList_DD
  Left = 294
  Top = 253
  Width = 830
  Height = 402
  BorderIcons = [biSystemMenu]
  Caption = 'CostOrderList_DD'
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
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 57
    Width = 822
    Height = 311
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    PopupMenu = PopupMenu1
    ReadOnly = True
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnGetCellParams = DBGrid1GetCellParams
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        Title.TitleButton = True
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <
          item
            FieldName = 'DDBH'
            ValueType = fvtCount
          end>
        Title.TitleButton = True
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Title.TitleButton = True
        Width = 103
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.TitleButton = True
        Width = 166
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'okQty'
        Footers = <
          item
            FieldName = 'okQty'
            ValueType = fvtSum
          end>
        Title.TitleButton = True
        Width = 51
      end
      item
        EditButtons = <>
        FieldName = 'IPrice'
        Footers = <
          item
            FieldName = 'IPrice'
            ValueType = fvtAvg
          end>
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'USACC'
        Footers = <
          item
            FieldName = 'USACC'
            ValueType = fvtSum
          end>
        Title.TitleButton = True
      end
      item
        EditButtons = <>
        FieldName = 'okACC'
        Footers = <
          item
            FieldName = 'okQty'
            ValueType = fvtSum
          end>
        Title.TitleButton = True
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
        Width = 33
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 822
    Height = 57
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 42
      Height = 16
      Caption = 'DDBH:'
    end
    object Label4: TLabel
      Left = 176
      Top = 25
      Width = 63
      Height = 16
      Caption = 'ETD Year:'
    end
    object Label6: TLabel
      Left = 344
      Top = 25
      Width = 39
      Height = 16
      Caption = 'Month:'
    end
    object Label3: TLabel
      Left = 480
      Top = 24
      Width = 41
      Height = 16
      Caption = 'GSBH:'
    end
    object Edit1: TEdit
      Left = 56
      Top = 16
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Button1: TButton
      Left = 624
      Top = 16
      Width = 73
      Height = 33
      Caption = 'QUERY'
      TabOrder = 1
      OnClick = Button1Click
    end
    object CBX2: TComboBox
      Left = 248
      Top = 17
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      TabOrder = 2
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
      Left = 392
      Top = 17
      Width = 73
      Height = 24
      CharCase = ecUpperCase
      DropDownCount = 12
      ItemHeight = 16
      TabOrder = 3
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
    object CB1: TComboBox
      Left = 528
      Top = 16
      Width = 73
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      TabOrder = 4
      Text = 'ALL'
      Items.Strings = (
        'ALL')
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 128
  end
  object Query1: TQuery
    CachedUpdates = True
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select  DDZL.GSBH,DDZLS.DDBH,sum(DDZLS.quantity) as Qty,'
      'Sum(DDZLS.IPrice*DDZLS.quantity) as USACC,'
      'CWDD.okQty, CWDD.okACC,XXZl.XieMing,XXZL.Article,DDZL.YN'
      'from DDZLS'
      
        'left join (select DDBH,sum(Qty) as okQty,sum(USACC) as okACC fro' +
        'm CWDD '
      '           where DDBH like '#39'Y0806%'#39
      '           group by DDBH) CWDD on CWDD.DDBH=DDZLS.DDBH '
      'left join DDZL on DDZL.DDBH=DDZLS.DDBH'
      
        'left join XXZL on XXZl.XieXIng=DDZl.XieXing and DDZl.SheHao=XXZl' +
        '.SheHao'
      'where DDZLS.DDBH like '#39'Y0806%'#39
      'and XXZL.XieMing like '#39'%%'#39
      
        'group by DDZL.GSBH,DDZLS.DDBH,CWDD.okQty,XXZl.XieMing,XXZL.Artic' +
        'le, CWDD.okACC,DDZL.YN'
      'order by DDZLS.DDBH')
    UpdateObject = UpdateSQL1
    Left = 424
    Top = 160
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1IPrice: TFloatField
      FieldKind = fkCalculated
      FieldName = 'IPrice'
      DisplayFormat = '##,#0.0000'
      Calculated = True
    end
    object Query1Qty: TIntegerField
      FieldName = 'Qty'
      DisplayFormat = '##,#0'
    end
    object Query1USACC: TFloatField
      FieldName = 'USACC'
      DisplayFormat = '##,#0.00'
    end
    object Query1okQty: TCurrencyField
      FieldName = 'okQty'
      DisplayFormat = '##,#0'
    end
    object Query1okACC: TCurrencyField
      FieldName = 'okACC'
      DisplayFormat = '##,#0.00'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object UpdateSQL1: TUpdateSQL
    Left = 424
    Top = 184
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 376
    Top = 193
  end
  object PopupMenu1: TPopupMenu
    Left = 176
    Top = 192
    object Print1: TMenuItem
      Caption = 'Print'
      OnClick = Print1Click
    end
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGrid1
    Options = []
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'MS Sans Serif'
    PageHeader.Font.Style = []
    Units = MM
    Left = 216
    Top = 192
  end
end
