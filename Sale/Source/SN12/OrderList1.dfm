object OrderList: TOrderList
  Left = 195
  Top = 147
  Width = 1122
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
    Width = 1106
    Height = 81
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
      Top = 18
      Width = 81
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
      Left = 198
      Top = 17
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
    object Label4: TLabel
      Left = 553
      Top = 15
      Width = 17
      Height = 16
      Caption = 'To'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 32
      Top = 50
      Width = 56
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
    object Label5: TLabel
      Left = 195
      Top = 51
      Width = 56
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Country:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 91
      Top = 15
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
      TabOrder = 0
      OnKeyUp = Edit1KeyUp
    end
    object Edit2: TEdit
      Left = 256
      Top = 15
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Button1: TButton
      Left = 675
      Top = 6
      Width = 70
      Height = 33
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
    object DTP1: TDateTimePicker
      Left = 462
      Top = 12
      Width = 89
      Height = 24
      Date = 43101.568310717590000000
      Format = 'yyyy/MM/dd'
      Time = 43101.568310717590000000
      TabOrder = 3
    end
    object DTP2: TDateTimePicker
      Left = 574
      Top = 12
      Width = 89
      Height = 24
      Date = 43435.569282222220000000
      Format = 'yyyy/MM/dd'
      Time = 43435.569282222220000000
      TabOrder = 4
    end
    object Button3: TButton
      Left = 675
      Top = 42
      Width = 70
      Height = 28
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = Button3Click
    end
    object RB1: TRadioButton
      Left = 391
      Top = 14
      Width = 71
      Height = 17
      Caption = 'XF From'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      TabStop = True
    end
    object RB2: TRadioButton
      Left = 391
      Top = 49
      Width = 65
      Height = 17
      Caption = 'BuyNO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object BuyNOEdit: TEdit
      Left = 461
      Top = 46
      Width = 153
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 8
    end
    object Edit3: TEdit
      Left = 90
      Top = 48
      Width = 98
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object CountryEdit: TEdit
      Left = 256
      Top = 47
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 81
    Width = 832
    Height = 381
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = 16762052
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    PopupMenu = Pop1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnGetCellParams = DBGrid1GetCellParams
    Columns = <
      item
        DropDownBox.ListSource = DS2
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        LookupDisplayFields = 'OedDet.DDCC'
        Title.Caption = #26989#21209#35330#21934'|DDBH'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'YSBH'
        Footers = <>
        Title.Caption = #35330#21934#32232#34399'|YSBH'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
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
        Title.Caption = 'SKU#|Article'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
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
        Title.Caption = #38795#21517'|Article Name'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
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
        Title.Caption = #25976#37327'|Qty'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'ETD'
        Footers = <>
        Title.Caption = #20132#26399'|ETD'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 71
      end
      item
        EditButtons = <>
        FieldName = 'XXCC'
        Footers = <>
        Title.Caption = #38795#22411#23610#30908'|XXCC'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 71
      end
      item
        EditButtons = <>
        FieldName = 'DDCC'
        Footers = <>
        Title.Caption = #35330#21934#23610#30908'|DDCC'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 81
      end
      item
        EditButtons = <>
        FieldName = 'DDZT'
        Footers = <>
        Title.Caption = #35330#21934#29376#24907'|DDZT'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'KFJC'
        Footers = <>
        Title.Caption = #23458#25142'|KFJC'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 104
      end
      item
        EditButtons = <>
        FieldName = 'KHDDBH1'
        Footers = <>
        Title.Caption = 'PO#|CUST.O/N'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 111
      end
      item
        EditButtons = <>
        FieldName = 'KHPO'
        Footers = <>
        Title.Caption = #35330#21934'PO#|KHPO'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 86
      end
      item
        EditButtons = <>
        FieldName = 'Country'
        Footers = <>
        Title.Caption = #22283#23478'|Country'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 91
      end
      item
        EditButtons = <>
        FieldName = 'Packing'
        Footers = <>
        Title.Caption = #21253#35037'|Packing'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 77
      end
      item
        EditButtons = <>
        FieldName = 'DDMT'
        Footers = <>
        Title.Caption = #40613#38957'|DDMT'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 107
      end
      item
        EditButtons = <>
        FieldName = 'DDBZ'
        Footers = <>
        Title.Caption = #20633#35387'|DDBZ'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 91
      end
      item
        EditButtons = <>
        FieldName = 'BZDate'
        Footers = <>
        Title.Caption = #23436#25104#30906#35469'|BZDate'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'BUYNO'
        Footers = <>
        Title.Caption = 'Buy'#21029'|BuyNo'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Title.TitleButton = True
      end>
  end
  object Panel1: TPanel
    Left = 832
    Top = 81
    Width = 274
    Height = 381
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 2
    object DBGrid3: TDBGridEh
      Left = 0
      Top = 0
      Width = 274
      Height = 381
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
      UseMultiTitle = True
      Columns = <
        item
          EditButtons = <>
          FieldName = 'DDCC'
          Footers = <>
          Title.Caption = #35330#21934#23610#30908'|DDCC'
          Width = 63
        end
        item
          EditButtons = <>
          FieldName = 'XXCC'
          Footers = <>
          Title.Caption = #38795#22411#23610#30908'|XXCC'
          Width = 55
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
          Title.Caption = #38617#25976'|Qty'
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
          Title.Caption = #21934#20729'|IPrice'
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
      '       ,xxzl.yssm,DDZL.BUYNO'
      'from YWDD'
      'left join DDZL on YWDD.YSBH=DDZl.DDBH '
      
        'left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZ' +
        'L.SheHao'
      'left join LBZLS on LBZLS.LB='#39'06'#39' and LBZLS.LBDH=DDZL.DDGB'
      'left join KFZL on KFZL.KFDH=DDZL.KHBH '
      'where DDZL.DDBH like '#39'%'#39
      '      and XXZL.XieMing like '#39'%%'#39
      
        '      and convert(smalldatetime,convert(varchar,YWDD.ETD,111)) b' +
        'etween '
      '      '#39'2019/09/06'#39'and '#39'2019/11/05'#39
      '      and YWDD.GSBH='#39'VDT'#39
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
    object SpecMasBUYNO: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
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
    AutoHotkeys = maManual
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
    object N7: TMenuItem
      Caption = 'N7 Print Carton label'
      OnClick = N7Click
    end
    object N8PackingMemo1: TMenuItem
      Caption = 'N8 Select All RY#'
      OnClick = N8PackingMemo1Click
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
