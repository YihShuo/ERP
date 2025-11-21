object MonthMaterialEntry: TMonthMaterialEntry
  Left = 0
  Top = 0
  Caption = 'Month Material Entry'
  ClientHeight = 374
  ClientWidth = 1233
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1233
    Height = 89
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 10
      Width = 40
      Height = 16
      Caption = 'SBBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 442
      Top = 48
      Width = 41
      Height = 16
      Caption = 'RKNO:'
    end
    object Label3: TLabel
      Left = 149
      Top = 10
      Width = 45
      Height = 16
      Caption = 'YWPM:'
    end
    object Label5: TLabel
      Left = 394
      Top = 10
      Width = 58
      Height = 16
      Caption = 'ZSYWJC:'
    end
    object Label4: TLabel
      Left = 12
      Top = 48
      Width = 37
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Year:'
    end
    object Label6: TLabel
      Left = 118
      Top = 49
      Width = 46
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Month:'
    end
    object Label12: TLabel
      Left = 220
      Top = 52
      Width = 9
      Height = 16
      Caption = '~'
    end
    object Label11: TLabel
      Left = 234
      Top = 48
      Width = 35
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Year:'
    end
    object Label13: TLabel
      Left = 335
      Top = 48
      Width = 39
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Month:'
    end
    object SBBHEdit: TEdit
      Left = 52
      Top = 7
      Width = 83
      Height = 28
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 601
      Top = 3
      Width = 75
      Height = 31
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object RKNOEdit: TEdit
      Left = 485
      Top = 43
      Width = 105
      Height = 24
      TabOrder = 2
    end
    object YWPMEdit: TEdit
      Left = 193
      Top = 7
      Width = 157
      Height = 24
      TabOrder = 3
    end
    object ZSYWJCEdit: TEdit
      Left = 453
      Top = 7
      Width = 137
      Height = 24
      TabOrder = 4
    end
    object Button2: TButton
      Left = 601
      Top = 40
      Width = 75
      Height = 31
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = Button2Click
    end
    object CBX1: TComboBox
      Left = 52
      Top = 46
      Width = 61
      Height = 24
      CharCase = ecUpperCase
      ItemIndex = 14
      TabOrder = 6
      Text = '2020'
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
        '2029')
    end
    object CBX2: TComboBox
      Left = 169
      Top = 46
      Width = 46
      Height = 24
      CharCase = ecUpperCase
      DropDownCount = 12
      TabOrder = 7
      Text = '01'
      OnChange = CBX2Change
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
    object CBX4: TComboBox
      Left = 270
      Top = 45
      Width = 60
      Height = 24
      CharCase = ecUpperCase
      ItemIndex = 14
      TabOrder = 8
      Text = '2020'
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
        '2029')
    end
    object CBX5: TComboBox
      Left = 376
      Top = 45
      Width = 45
      Height = 24
      CharCase = ecUpperCase
      DropDownCount = 12
      TabOrder = 9
      Text = '01'
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
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 89
    Width = 1233
    Height = 285
    Align = alClient
    DataSource = DS1
    DynProps = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterRowCount = 1
    FooterParams.Color = clWindow
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleParams.MultiTitle = True
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        Title.Caption = #24288#21029'|GSBH'
        Width = 59
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'RKNO'
        Footers = <>
        Title.Caption = #20837#24235#32232#34399'|RKNO'
        Width = 97
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ZSJC_YW'
        Footers = <>
        Title.Caption = #35069#36896#24288#21830'|ZSYWJC'
        Width = 148
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SOHIEU'
        Footers = <>
        Title.Caption = #32232#34399'|SOHIEU'
        Width = 75
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DOCNO'
        Footers = <>
        Title.Caption = #30332#31080#32232#34399'|DOCNO'
        Width = 75
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DOCDate'
        Footers = <>
        Title.Caption = #30332#31080#26085#26399'|DOCDate'
        Width = 75
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'HDNO'
        Footers = <>
        Title.Caption = #21512#21516#32232#34399'|HDNO'
        Width = 75
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'HDDate'
        Footers = <>
        Title.Caption = #21512#21516#26085#26399'|HDDate'
        Width = 75
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TOKHAI'
        Footers = <>
        Title.Caption = #22577#38364#21934'|TOKHAI'
        Width = 75
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TKDate'
        Footers = <>
        Title.Caption = #22577#38364#26085#26399'|TKDate'
        Width = 75
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ZSNO'
        Footers = <>
        Title.Caption = #25505#36092#21934'|CGNO'
        Width = 75
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Title.Caption = #26085#26399'|USERDATE'
        Width = 106
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CFMDATE'
        Footers = <>
        Title.Caption = #30906#35469#26085#26399'|CFMDATE'
        Width = 98
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SBBH'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = #39006#21029'ID|SBBH'
        Width = 85
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Title.Caption = #26448#26009#20013#25991'|ZWPM'
        Width = 265
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'VWPM'
        Footers = <>
        Title.Caption = #35373#20633#21517#31281'|VWPM'
        Width = 253
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'HGPM'
        Footers = <>
        Title.Caption = #28023#38364#21517#31281'|HGPM'
        Width = 253
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = #21934#20301'|DWBH'
        Width = 44
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'QTY'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #25976#37327'|Qty'
        Width = 53
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'VNPrice'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'VND|Price'
        Width = 68
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'VNACC'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'VND|Amout'
        Width = 69
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CWHL'
        Footers = <>
        Title.Caption = #21295#29575'|CWHL'
        Width = 68
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'USPrice'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'USD|Price'
        Width = 69
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'USACC'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'USD|Amount'
        Width = 69
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CWHL_HG'
        Footers = <>
        Title.Caption = #21475#21295#29575'|CWHL'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'VNACC_HG'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #36914#21475'|VN ACC'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'VNPrice_HG'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #36914#21475'| Price'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'VNTax_HG'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #36914#21475'| Tax'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'MonthS'
        Footers = <>
        Title.Caption = #25892#25552#27425#25976'|Months'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CostID'
        Footers = <>
        Title.Caption = #26371#35336#31185#30446'|CostID'
        Width = 80
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TSBH'
        Footers = <>
        Title.Caption = #36001#29986#32232#34399'|TSBH'
        Width = 255
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'RKMemo'
        Footers = <>
        Title.Caption = #20633#35387'|RKMemo'
        Width = 255
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object KCRKS: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select TSCD_KCRK.GSBH,TSCD_KCRK.RKNO,TSCD_ZSZL.ZSJC_YW,TSCD_ZSZL' +
        '.ZSJC_ZW'
      
        ',TSCD_KCRK.SOHIEU,TSCD_KCRK.DOCNO,TSCD_KCRK.DOCDate,TSCD_KCRK.HD' +
        'NO,TSCD_KCRK.HDDate'
      ',TSCD_KCPK.Declaretion as TOKHAI,TSCD_KCPK.TKDate,TSCD_KCRK.ZSNO'
      
        ',TSCD_KCRK.USERDATE,TSCD_KCRK.CFMDATE,TSCD_KCRKS.SBBH,TSCD_SB.ZW' +
        'PM,TSCD_SB.VWPM,TSCD_SB.DWBH,TSCD_KCRKS.QTY'
      
        ',TSCD_KCRKS.VNPrice,TSCD_KCRKS.VNACC,TSCD_KCRKS.USPrice,TSCD_KCR' +
        'KS.USACC,TSCD_KCRKS.CWHL,TSCD_KCRKS.CWHL_HG'
      
        ',TSCD_KCRKS.VNACC_HG,TSCD_KCRKS.VNPrice_HG,TSCD_KCRKS.VNTax_HG,T' +
        'SCD_KCRKS.VNACC_Tax,TSCD_KCRKS.MonthS,TSCD_KCRKS.CostID,TSCD_KCR' +
        'KS.RKMemo'
      
        ',case when  TSCD_KCRKS.Memo is not null then TSCD_KCRKS.Memo els' +
        'e CAST(substring (( select '#39','#39' + TSCD.TSBH'
      
        #9#9#9#9#9'from TSCD where TSCD.SBBH=TSCD_SB.SBBH and TSCD.RKNO=TSCD_K' +
        'CRKS.RKNO and TSCD.SBBH=TSCD_KCRKS.SBBH'
      #9#9#9#9#9'for XML Path ('#39#39')),2,1000) as varchar(1000)) end as TSBH'
      'from TSCD_KCRK'
      'left join TSCD_KCRKS on TSCD_KCRK.RKNO=TSCD_KCRKS.RKNO '
      'left join TSCD_SB on TSCD_SB.SBBH = TSCD_KCRKS.SBBH'
      'left join TSCD_ZSZL on TSCD_SB.ZSDH=TSCD_ZSZL.ZSDH'
      'left join TSCD_KCPK on TSCD_KCRK.RKNO=TSCD_KCPK.PKNO'
      'where 1=2'
      '')
    Left = 348
    Top = 180
    object KCRKSGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object KCRKSRKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object KCRKSZSJC_YW: TStringField
      FieldName = 'ZSJC_YW'
      FixedChar = True
      Size = 50
    end
    object KCRKSZSJC_ZW: TStringField
      FieldName = 'ZSJC_ZW'
      FixedChar = True
      Size = 50
    end
    object KCRKSSOHIEU: TStringField
      FieldName = 'SOHIEU'
      FixedChar = True
    end
    object KCRKSDOCNO: TStringField
      FieldName = 'DOCNO'
      FixedChar = True
      Size = 50
    end
    object KCRKSDOCDate: TDateTimeField
      FieldName = 'DOCDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object KCRKSHDNO: TStringField
      FieldName = 'HDNO'
      FixedChar = True
      Size = 50
    end
    object KCRKSHDDate: TDateTimeField
      FieldName = 'HDDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object KCRKSTOKHAI: TStringField
      FieldName = 'TOKHAI'
      FixedChar = True
      Size = 50
    end
    object KCRKSTKDate: TDateTimeField
      FieldName = 'TKDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object KCRKSZSNO: TStringField
      FieldName = 'ZSNO'
      FixedChar = True
      Size = 11
    end
    object KCRKSUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object KCRKSCFMDATE: TDateTimeField
      FieldName = 'CFMDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object KCRKSSBBH: TStringField
      FieldName = 'SBBH'
      FixedChar = True
      Size = 15
    end
    object KCRKSDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object KCRKSQTY: TFloatField
      FieldName = 'QTY'
    end
    object KCRKSVNPrice: TCurrencyField
      FieldName = 'VNPrice'
      DisplayFormat = '##,#0'
    end
    object KCRKSVNACC: TCurrencyField
      FieldName = 'VNACC'
      DisplayFormat = '##,#0'
    end
    object KCRKSCWHL: TCurrencyField
      FieldName = 'CWHL'
    end
    object KCRKSUSPrice: TFloatField
      FieldName = 'USPrice'
      DisplayFormat = '#,##0.0000'
    end
    object KCRKSUSACC: TFloatField
      FieldName = 'USACC'
      DisplayFormat = '##,#0.00'
    end
    object KCRKSCWHL_HG: TCurrencyField
      FieldName = 'CWHL_HG'
    end
    object KCRKSVNACC_HG: TCurrencyField
      FieldName = 'VNACC_HG'
      DisplayFormat = '##,#0'
    end
    object KCRKSVNPrice_HG: TCurrencyField
      FieldName = 'VNPrice_HG'
      DisplayFormat = '##,#0'
    end
    object KCRKSVNTax_HG: TCurrencyField
      FieldName = 'VNTax_HG'
      DisplayFormat = '##,#0'
    end
    object KCRKSVNACC_Tax: TCurrencyField
      FieldName = 'VNACC_Tax'
    end
    object KCRKSMonthS: TIntegerField
      FieldName = 'MonthS'
    end
    object KCRKSCostID: TStringField
      FieldName = 'CostID'
      FixedChar = True
    end
    object KCRKSZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object KCRKSVWPM: TStringField
      FieldName = 'VWPM'
      FixedChar = True
      Size = 250
    end
    object KCRKSHGPM: TStringField
      FieldName = 'HGPM'
      Size = 250
    end
    object KCRKSTSBH: TStringField
      FieldName = 'TSBH'
      FixedChar = True
      Size = 255
    end
    object KCRKSRKMemo: TStringField
      FieldName = 'RKMemo'
      FixedChar = True
      Size = 255
    end
  end
  object DS1: TDataSource
    DataSet = KCRKS
    Left = 348
    Top = 228
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '')
    Left = 384
    Top = 180
  end
end
