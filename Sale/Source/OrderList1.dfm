object OrderList: TOrderList
  Left = 203
  Top = 132
  Width = 1109
  Height = 501
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
    Width = 1093
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
      Top = 27
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
    object Label3: TLabel
      Left = 352
      Top = 32
      Width = 57
      Height = 16
      Caption = 'X/F From:'
    end
    object Label4: TLabel
      Left = 512
      Top = 32
      Width = 13
      Height = 16
      Caption = 'To'
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
      Text = 'Y1804-0173'
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
    object Button1: TButton
      Left = 643
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
      TabOrder = 3
      OnClick = Button1Click
    end
    object DTP1: TDateTimePicker
      Left = 416
      Top = 24
      Width = 89
      Height = 24
      Date = 43101.568310717590000000
      Format = 'yyyy/MM/dd'
      Time = 43101.568310717590000000
      TabOrder = 4
    end
    object DTP2: TDateTimePicker
      Left = 536
      Top = 24
      Width = 89
      Height = 24
      Date = 43435.569282222220000000
      Format = 'yyyy/MM/dd'
      Time = 43435.569282222220000000
      TabOrder = 5
    end
    object Button2: TButton
      Left = 728
      Top = 16
      Width = 105
      Height = 33
      Caption = 'Check innerBox'
      TabOrder = 6
      Visible = False
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 643
      Top = 49
      Width = 70
      Height = 33
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = Button3Click
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 89
    Width = 839
    Height = 374
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
    PopupMenu = Pop1
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
        DropDownBox.ListSource = DS2
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        LookupDisplayFields = 'OedDet.DDCC'
        Title.Alignment = taCenter
        Title.TitleButton = True
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'YSBH'
        Footers = <>
        Title.TitleButton = True
        Width = 86
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
        Width = 136
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
        Width = 173
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            DisplayFormat = '##,#0'
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        Title.Alignment = taCenter
        Title.TitleButton = True
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'ETD'
        Footers = <>
        Title.Alignment = taCenter
        Title.TitleButton = True
        Width = 71
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
        FieldName = 'KFJC'
        Footers = <>
        Width = 104
      end
      item
        EditButtons = <>
        FieldName = 'KHDDBH1'
        Footers = <>
        Title.Caption = 'CUST.O/N'
        Width = 111
      end
      item
        EditButtons = <>
        FieldName = 'KHPO'
        Footers = <>
        Width = 86
      end
      item
        EditButtons = <>
        FieldName = 'Country'
        Footers = <>
        Width = 91
      end
      item
        EditButtons = <>
        FieldName = 'Packing'
        Footers = <>
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'DDMT'
        Footers = <>
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'DDBZ'
        Footers = <>
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'BZDate'
        Footers = <>
        Width = 88
      end>
  end
  object Panel1: TPanel
    Left = 839
    Top = 89
    Width = 254
    Height = 374
    Align = alRight
    TabOrder = 2
    object DBGrid3: TDBGridEh
      Left = 1
      Top = 1
      Width = 252
      Height = 372
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
          FieldName = 'DDCC'
          Footers = <>
          Width = 44
        end
        item
          EditButtons = <>
          FieldName = 'XXCC'
          Footers = <>
          Width = 38
        end
        item
          EditButtons = <>
          FieldName = 'Qty'
          Footers = <
            item
              DisplayFormat = '##,#0'
              FieldName = 'Qty'
              ValueType = fvtSum
            end>
          Title.Alignment = taCenter
          Width = 53
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
          Width = 63
        end>
    end
  end
  object SpecMas: TQuery
    AfterOpen = SpecMasAfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select YWDD.DDBH, YWDD.YSBH,DDZL.XieXing,DDZL.SheHao, XXZL.XieMi' +
        'ng,DDZL.DDZT,DDZL.KHPO,LBZLS.YWSM as Country,YWDD.KHDDBH1,'
      
        '       YWDD.Qty,DDZL.Article,YWDD.ETD,XXZL.CCGB as XXCC,DDZL.CCG' +
        'B as DDCC, DDZL.KHBH, KFZL.KFJC,XXZL.IMGName, YWDD.BZDate, '
      
        '       (select Top 1 DDBH from YWBZPOS where YWBZPOS.DDBH=YWDD.D' +
        'DBH ) as Packing,'
      
        '       (select top 1 DDBH from YWDDMT where YWDDMT.DDBH=YWDD.DDB' +
        'H ) as DDMT,'
      
        '       (select top 1 DDBH from YWDDBZ where YWDDBZ.DDBH=YWDD.DDB' +
        'H and YWDDBZ.YN= 1 )  as DDBZ'
      '       ,xxzl.yssm'
      'from YWDD'
      'left join DDZL on YWDD.YSBH=DDZl.DDBH '
      
        'left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZ' +
        'L.SheHao'
      'left join LBZLS on LBZLS.LB='#39'06'#39' and LBZLS.LBDH=DDZL.DDGB'
      'left join KFZL on KFZL.KFDH=DDZL.KHBH '
      'where DDZL.DDBH like '#39'Y1807-0362%'#39
      '      and XXZL.XieMing like '#39'%%'#39
      
        '      and convert(smalldatetime,convert(varchar,YWDD.ETD,111)) b' +
        'etween '
      '      '#39'2018/01/06'#39'and '#39'2018/10/05'#39
      '      and YWDD.GSBH='#39'VA12'#39
      'order by YWDD.DDBH')
    Left = 472
    Top = 200
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
    object SpecMasBZDate: TDateTimeField
      FieldName = 'BZDate'
    end
    object SpecMasKHBH: TStringField
      FieldName = 'KHBH'
    end
    object SpecMasYSSM: TStringField
      FieldName = 'YSSM'
    end
    object SpecMasIMGName: TStringField
      FieldName = 'IMGName'
      FixedChar = True
      Size = 60
    end
  end
  object DS1: TDataSource
    DataSet = SpecMas
    Left = 392
    Top = 240
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 432
    Top = 200
  end
  object OrdDet: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'select *'
      'from YWDDS'
      'where DDBH=:DDBH'
      'order by XXCC')
    Left = 472
    Top = 169
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'DDBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object OrdDetXXCC: TStringField
      FieldName = 'XXCC'
      Origin = 'DB.YWDDS.XXCC'
      FixedChar = True
      Size = 6
    end
    object OrdDetDDCC: TStringField
      FieldName = 'DDCC'
      Origin = 'DB.YWDDS.DDCC'
      FixedChar = True
      Size = 6
    end
    object OrdDetQty: TIntegerField
      FieldName = 'Qty'
      Origin = 'DB.YWDDS.Qty'
      DisplayFormat = '##,#0'
    end
    object OrdDetIPrice: TCurrencyField
      FieldName = 'IPrice'
      Origin = 'DB.YWDDS.IPrice'
      DisplayFormat = '##,#0.000'
    end
  end
  object DS2: TDataSource
    DataSet = OrdDet
    Left = 392
    Top = 201
  end
  object Pop1: TPopupMenu
    Left = 392
    Top = 168
    object N1: TMenuItem
      Caption = 'N1 Packing'
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = 'N2 SideMark'
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = 'N3 Packing Memo'
      OnClick = N3Click
    end
    object N4: TMenuItem
      Caption = 'N4 Packing Picture'
      OnClick = N4Click
    end
    object N5: TMenuItem
      Caption = 'N5 Label Material'
      OnClick = N5Click
    end
    object N6: TMenuItem
      Caption = 'N6 Print Preview'
      OnClick = N6Click
    end
    object N7PrintCarton1: TMenuItem
      Caption = 'N7 Print Carton label'
      OnClick = N7PrintCarton1Click
    end
  end
  object YWDDTP: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'select  * '
      'from YWDDTP '
      'where DDBH=:DDBH'
      'order by XH')
    Left = 435
    Top = 167
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DDBH'
        ParamType = ptUnknown
      end>
  end
end
