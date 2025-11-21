object EquipmentPurchasePutrace: TEquipmentPurchasePutrace
  Left = 0
  Top = 0
  Caption = 'Equipment Purchase Putrace'
  ClientHeight = 690
  ClientWidth = 1301
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1301
    Height = 72
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitTop = -6
    ExplicitWidth = 1103
    object Label1: TLabel
      Left = 393
      Top = 42
      Width = 43
      Height = 17
      Caption = 'ZWPM:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 40
      Top = 11
      Width = 48
      Height = 17
      Caption = 'CGDate:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 219
      Top = 11
      Width = 7
      Height = 17
      Caption = '~'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
    end
    object VWPM: TLabel
      Left = 390
      Top = 13
      Width = 44
      Height = 17
      Caption = 'VWPM:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 48
      Top = 41
      Width = 40
      Height = 17
      Caption = 'CGNO:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 203
      Top = 44
      Width = 38
      Height = 17
      Caption = 'SBBH:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 583
      Top = 10
      Width = 45
      Height = 17
      Caption = 'SuppID:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 566
      Top = 40
      Width = 64
      Height = 17
      Caption = 'SuppName:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
    end
    object ZWPMEdit: TEdit
      Left = 438
      Top = 39
      Width = 118
      Height = 25
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object btnQuery: TButton
      Left = 776
      Top = 3
      Width = 75
      Height = 30
      Caption = 'QUERY'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnQueryClick
    end
    object DTP1: TDateTimePicker
      Left = 92
      Top = 8
      Width = 105
      Height = 25
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object VWPMEdit: TEdit
      Left = 437
      Top = 7
      Width = 119
      Height = 25
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object CGNOEdit: TEdit
      Left = 92
      Top = 39
      Width = 105
      Height = 25
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DTP2: TDateTimePicker
      Left = 244
      Top = 8
      Width = 104
      Height = 25
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object SBBHEdit: TEdit
      Left = 244
      Top = 40
      Width = 104
      Height = 25
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object Button1: TButton
      Left = 776
      Top = 35
      Width = 75
      Height = 31
      Caption = 'Excel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = Button1Click
    end
    object SuppIDEdit: TEdit
      Left = 635
      Top = 5
      Width = 119
      Height = 25
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object SuppNameEdit: TEdit
      Left = 636
      Top = 37
      Width = 119
      Height = 25
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 72
    Width = 1301
    Height = 618
    Align = alClient
    DataSource = DS1
    DynProps = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    FooterRowCount = 1
    FooterParams.Color = clWindow
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleParams.Font.Charset = DEFAULT_CHARSET
    TitleParams.Font.Color = clWindowText
    TitleParams.Font.Height = -13
    TitleParams.Font.Name = 'Tahoma'
    TitleParams.Font.Style = []
    TitleParams.MultiTitle = True
    TitleParams.ParentFont = False
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        Width = 40
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CGNO'
        Footer.ValueType = fvtCount
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SBBH'
        Footers = <>
        Width = 101
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'VWPM'
        Footers = <>
        Width = 195
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Width = 186
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CGQty'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'RKQty'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'USACC'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'VNACC'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CG_ZSBH'
        Footers = <>
        Width = 60
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'RK_ZSBH'
        Footers = <>
        Width = 60
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SupName'
        Footers = <>
        Width = 150
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CGDate'
        Footers = <>
        Width = 70
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'YQDate'
        Footers = <>
        Width = 70
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'RKDate'
        Footers = <>
        Width = 70
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'RKNO'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Memo'
        Footers = <>
        Title.Caption = 'CG_Memo'
        Width = 120
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select  CGZLS.GSBH, CGZLS.CGNO, CGZLS.SBBH, TSCD_SB.VWPM ,TSCD_S' +
        'B.ZWPM,TSCD_SB.DWBH'
      
        '        , isnull(CGZLS.Qty, 0.0) as CGQty,  KCRKS.RKQty, KCRKS.V' +
        'NPrice,KCRKS.VNACC,KCRKS.USPrice,KCRKS.USACC, CGZLS.ZSBH as CG_Z' +
        'SBH, KCRK.ZSBH as RK_ZSBH, zszl.zsqm_yw as SupName'
      
        '        , convert(smalldatetime,convert(varchar, CGZLS.CGDate,11' +
        '1)) as CGDate, CGZLS.YQDate'
      '        , KCRK.USERDate as RKDate, KCRKS.RKNO,CGZLS.Memo'
      'from ('
      '      select CGZLS.CGNO, CGZLS.SBBH, CGZLS.Qty, CGZL.CGDate'
      '             , CGZLS.YQDate, CGZL.GSBH, CGZL.ZSBH, CGZLs.Memo'
      '      from TSCD_CGZLS CGZLS'
      '      left join TSCD_CGZL CGZL on CGZl.CGNO=CGZLS.CGNO'
      #9#9#9'Where CGZLS.SBBH like '#39'%'#39
      '               and CGZL.GSBH = '#39'VTX'#39
      
        '                 and convert(smalldatetime,convert(varchar,CGZL.' +
        'CGDate,111)) between'
      '                     '#39'2024/03/09'#39'and '#39'2024/03/09'#39
      ''
      '      )  CGZLS'
      'left join ('
      
        '            select KCRKS.SBBH, sum(KCRKS.Qty) as RKQty,KCRKS.VNP' +
        'rice'
      
        '                   , sum(KCRKS.VNACC) as VNACC ,KCRKS.USPrice, S' +
        'um(KCRKS.USACC) as USACC, MAX(KCRKS.RKNO) as RKNO, KCRK.ZSNO'
      '            from  TSCD_KCRKS KCRKS'
      '            left join  TSCD_KCRK KCRK on KCRK.RKNO=KCRKS.RKNO'
      '            where KCRKS.SBBH like '#39'%'#39
      
        '            group by KCRKS.SBBH, KCRKS.VNPrice,KCRK.ZSNO,KCRKS.U' +
        'SPrice'
      
        '           ) KCRKS on KCRKS.ZSNO = CGZLS.CGNO and KCRKS.SBBH = C' +
        'GZLS.SBBH'
      'left join TSCD_KCRK KCRK on KCRK.RKNO = KCRKS.RKNO'
      'left join TSCD_zszl ZSZL on cgzls.zsbh=zszl.zsdh'
      'left join TSCD_SB on CGZLS.SBBH = TSCD_SB.SBBH'
      'where  1=1')
    Left = 212
    Top = 340
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object Query1CGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object Query1SBBH: TStringField
      FieldName = 'SBBH'
      FixedChar = True
      Size = 15
    end
    object Query1VWPM: TStringField
      FieldName = 'VWPM'
      FixedChar = True
      Size = 255
    end
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 10
    end
    object Query1CGQty: TFloatField
      FieldName = 'CGQty'
    end
    object Query1RKQty: TFloatField
      FieldName = 'RKQty'
    end
    object Query1USPrice: TFloatField
      FieldName = 'USPrice'
    end
    object Query1USACC: TFloatField
      FieldName = 'USACC'
    end
    object Query1VNPrice: TCurrencyField
      FieldName = 'VNPrice'
      DisplayFormat = '#,##0'
    end
    object Query1VNACC: TCurrencyField
      FieldName = 'VNACC'
      DisplayFormat = '#,##0'
    end
    object Query1CG_ZSBH: TStringField
      FieldName = 'CG_ZSBH'
      FixedChar = True
      Size = 6
    end
    object Query1RK_ZSBH: TStringField
      FieldName = 'RK_ZSBH'
      FixedChar = True
      Size = 6
    end
    object Query1SupName: TStringField
      FieldName = 'SupName'
      FixedChar = True
      Size = 50
    end
    object Query1CGDate: TDateTimeField
      FieldName = 'CGDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query1YQDate: TDateTimeField
      FieldName = 'YQDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query1RKDate: TDateTimeField
      FieldName = 'RKDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query1RKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object Query1Memo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 255
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 260
    Top = 341
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 432
    Top = 341
  end
end
