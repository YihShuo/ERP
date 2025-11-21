object CostOrderList_Scan: TCostOrderList_Scan
  Left = 313
  Top = 192
  Width = 889
  Height = 423
  BorderIcons = [biSystemMenu]
  Caption = 'CostOrderList_Scan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 57
    Width = 881
    Height = 332
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
    FooterFont.Height = -13
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
        Width = 51
      end
      item
        EditButtons = <>
        FieldName = 'Factory'
        Footers = <>
        Width = 33
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <
          item
            FieldName = 'DDBH'
            ValueType = fvtCount
          end>
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Width = 102
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Width = 151
      end
      item
        EditButtons = <>
        FieldName = 'DZQty'
        Footers = <>
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'USACC'
        Footers = <
          item
            FieldName = 'USACC'
            ValueType = fvtSum
          end>
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'InQty'
        Footers = <
          item
            FieldName = 'InQty'
            ValueType = fvtSum
          end>
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'InACC'
        Footers = <
          item
            FieldName = 'InACC'
            ValueType = fvtSum
          end>
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'okQty'
        Footers = <
          item
            FieldName = 'okQty'
            ValueType = fvtSum
          end>
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'okACC'
        Footers = <
          item
            FieldName = 'okACC'
            ValueType = fvtSum
          end>
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
        Width = 34
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 881
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
    object Label3: TLabel
      Left = 408
      Top = 24
      Width = 41
      Height = 16
      Caption = 'GSBH:'
    end
    object Label2: TLabel
      Left = 192
      Top = 24
      Width = 60
      Height = 16
      Caption = 'Customer:'
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
      Left = 552
      Top = 16
      Width = 73
      Height = 33
      Caption = 'QUERY'
      TabOrder = 1
      OnClick = Button1Click
    end
    object CB1: TComboBox
      Left = 456
      Top = 16
      Width = 73
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      TabOrder = 2
      Text = 'ALL'
      Items.Strings = (
        'ALL')
    end
    object Edit2: TEdit
      Left = 264
      Top = 16
      Width = 121
      Height = 24
      TabOrder = 3
    end
  end
  object Query1: TQuery
    CachedUpdates = True
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'select YWCP.YSBH as DDBH,sum(YWCP.okQty)  as InQty,sum(YWCP.okQt' +
        'y*YWCP.IPrice) as InACC,DDZL.Article'
      
        '       ,XXZL.XieMing,DDZL.GSBH ,sum(YWCP.IPrice*YWCP.Quantity) a' +
        's USACC,sum(YWCP.Quantity) as Qty'
      '       ,isnull(sum(YWCP.DZQty),0) as DZQty,DDZL.YN'
      
        '       , YWCP.Factory ,isnull(CWDD.okQty,0) as okQty,isnull(CWDD' +
        '.okACC,0) as okACC '
      
        'from (select YWCP.DDBH,YWDD.YSBH,YWBZPOS.DDCC,sum(YWBZPOS.Qty-is' +
        'null(YWDDSDZ.Qty,0)) as okQty,'
      
        '             sum(isnull(YWDDSDZ.Qty,0)) as DZQty,DDZLS.IPrice,DD' +
        'ZLS.Quantity-sum(isnull(YWDDSDZ.Qty,0)) as Quantity '
      
        '             ,substring(BDepartment.DepName,1,case when charinde' +
        'x('#39'_'#39',BDepartment.DepName)=0 '
      
        '                          then 4 else  charindex('#39'_'#39',BDepartment' +
        '.DepName)-1 end) as Factory'
      '      from YWCP '
      
        '      left join YWBZPOS on YWCP.DDBH=YWBZPOS.DDBH  and YWCP.XH=Y' +
        'WBZPOS.XH '
      
        '      left join YWDDSDZ on YWDDSDZ.CARTONBAR=YWCP.CARTONBAR and ' +
        'YWDDSDZ.DDCC=YWBZPOS.DDCC '
      '      left join YWDD on YWDD.DDBH=YWBZPOS.DDBH  '
      
        '      left join DDZLS on DDZLS.DDBH=YWDD.YSBH and DDZLS.CC=YWBZP' +
        'OS.DDCC  '
      '      left join BDepartment on BDepartment.ID=YWCP.DepNO '
      
        '      where convert(smalldatetime,convert(varchar,YWCP.INDate,11' +
        '1)) between '
      '            '#39'2009/10/01'#39' and '#39'2009/10/31'#39
      '            and YWDD.YSBH like '#39'%'#39
      
        '      group by YWCP.DDBH,YWBZPOS.DDCC,YWDD.YSBH,DDZLS.IPrice,DDZ' +
        'LS.Quantity '
      
        '               ,substring(BDepartment.DepName,1,case when charin' +
        'dex('#39'_'#39',BDepartment.DepName)=0 '
      
        '                      then 4 else  charindex('#39'_'#39',BDepartment.Dep' +
        'Name)-1 end) '
      '      ) YWCP  '
      'left join DDZL on DDZL.DDBH=YWCP.YSBH'
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao'
      'left join KFZL on KFZl.KFDH=DDZL.KHBH '
      
        'left join (select YSBH as DDBH,sum(Qty) as okQty,sum(USACC) as o' +
        'kACC from CWDD '
      '           where YSBH like '#39'%'#39
      '                 and CWDD.CWYEAR='#39'2009'#39
      '                 and CWDD.CWMONTH='#39'10'#39
      '           group by YSBH) CWDD on CWDD.DDBH=DDZL.DDBH '
      'where KFZL.KFJC like '#39'%%'#39
      
        'group by YWCP.YSBH,YWCP.Factory,DDZL.Article,XXZL.XieMing,DDZL.G' +
        'SBH, YWCP.Factory,CWDD.okQty,CWDD.okACC,DDZL.YN'
      'order by DDZL.GSBH,YWCP.YSBH , YWCP.Factory')
    UpdateObject = UpdateSQL1
    Left = 264
    Top = 88
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object Query1Factory: TStringField
      FieldName = 'Factory'
      FixedChar = True
      Size = 50
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
    object Query1InQty: TIntegerField
      FieldName = 'InQty'
      DisplayFormat = '##,#0'
    end
    object Query1InACC: TFloatField
      FieldName = 'InACC'
      DisplayFormat = '##,#0.00'
    end
    object Query1okQty: TCurrencyField
      FieldName = 'okQty'
      DisplayFormat = '##,#0'
    end
    object Query1okACC: TCurrencyField
      FieldName = 'okACC'
      DisplayFormat = '##,#0.0'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object Query1DZQty: TIntegerField
      FieldName = 'DZQty'
      DisplayFormat = '##,#0'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 264
    Top = 120
  end
  object UpdateSQL1: TUpdateSQL
    Left = 264
    Top = 152
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
