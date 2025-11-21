object EquipmentAssetRpt: TEquipmentAssetRpt
  Left = 433
  Top = 255
  Caption = 'EquipmentAssetRpt'
  ClientHeight = 449
  ClientWidth = 989
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 989
    Height = 81
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 172
      Top = 11
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
      Left = 312
      Top = 11
      Width = 40
      Height = 16
      Caption = 'TSBH:'
    end
    object Label4: TLabel
      Left = 181
      Top = 46
      Width = 20
      Height = 16
      Caption = 'To:'
    end
    object Label3: TLabel
      Left = 480
      Top = 11
      Width = 45
      Height = 16
      Caption = 'YWPM:'
    end
    object Label5: TLabel
      Left = 322
      Top = 46
      Width = 58
      Height = 16
      Caption = 'ZSYWJC:'
    end
    object Label6: TLabel
      Left = 560
      Top = 46
      Width = 40
      Height = 16
      Caption = 'Status:'
    end
    object Label7: TLabel
      Left = 16
      Top = 11
      Width = 54
      Height = 16
      Caption = 'BaseDT:'
    end
    object Label8: TLabel
      Left = 677
      Top = 11
      Width = 52
      Height = 16
      Caption = 'DOCNO:'
    end
    object SBBHEdit: TEdit
      Left = 216
      Top = 8
      Width = 89
      Height = 29
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 853
      Top = 39
      Width = 81
      Height = 33
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object DTP1: TDateTimePicker
      Left = 77
      Top = 42
      Width = 97
      Height = 24
      Date = 39255.041666666660000000
      Format = 'yyyy/MM/dd'
      Time = 39255.041666666660000000
      TabOrder = 2
    end
    object DTP2: TDateTimePicker
      Left = 205
      Top = 42
      Width = 97
      Height = 24
      Date = 39255.958333333340000000
      Format = 'yyyy/MM/dd'
      Time = 39255.958333333340000000
      TabOrder = 3
    end
    object TSBHEdit: TEdit
      Left = 360
      Top = 8
      Width = 113
      Height = 24
      TabOrder = 4
    end
    object InDateCB: TCheckBox
      Left = 9
      Top = 45
      Width = 65
      Height = 17
      Caption = 'InDATE:'
      TabOrder = 5
    end
    object YWPMEdit: TEdit
      Left = 528
      Top = 8
      Width = 145
      Height = 24
      TabOrder = 6
    end
    object ZSYWJCEdit: TEdit
      Left = 384
      Top = 43
      Width = 169
      Height = 24
      TabOrder = 7
    end
    object ComboBox1: TComboBox
      Left = 605
      Top = 41
      Width = 140
      Height = 24
      Style = csDropDownList
      TabOrder = 8
      Items.Strings = (
        'All'
        'Moi(N)'
        'Cu(Y/R/M)'
        'Bo phe(B)'
        'CE chung minh')
    end
    object Button2: TButton
      Left = 853
      Top = 4
      Width = 81
      Height = 33
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = Button2Click
    end
    object BaseDTP: TDateTimePicker
      Left = 75
      Top = 7
      Width = 92
      Height = 24
      Date = 39255.041666666660000000
      Format = 'yyyy/MM/dd'
      Time = 39255.041666666660000000
      TabOrder = 10
    end
    object DOCNOEdit: TEdit
      Left = 728
      Top = 8
      Width = 113
      Height = 24
      TabOrder = 11
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 81
    Width = 989
    Height = 368
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
    FrozenCols = 4
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleParams.MultiTitle = True
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'RKNO'
        Footers = <>
        Title.Caption = #20837#24235#21934#34399'|RKNO'
        Width = 88
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SBBH'
        Footers = <>
        Title.Caption = #26009#34399'ID|SBBH'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TSBH'
        Footer.FieldName = 'TSBH'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = #36001#29986#32232#34399'|TSBH'
        Width = 81
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = #36234#25991#21517#31281'|YWPM'
        Width = 160
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DOCNO'
        Footers = <>
        Title.Caption = #30332#31080#32232#34399'|DOCNO'
        Width = 93
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'QUCBH'
        Footers = <>
        Title.Caption = #35215#26684'|QUCBH'
        Width = 75
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Status'
        Footers = <>
        Title.Caption = #29376#24907'|Status'
        Width = 40
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = #21934#20301'|DWBH'
        Width = 46
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.Caption = #25976#37327'|Qty'
        Width = 40
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'zsjc_yw'
        Footers = <>
        Title.Caption = #35069#36896#24288#21830'|ZSJC_YW'
        Width = 95
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'LLDepName'
        Footers = <>
        Title.Caption = #20301#32622'|DepName'
        Width = 90
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DepID_Memo'
        Footers = <>
        Title.Caption = #20301#32622'|Dep Memo'
        Width = 79
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'LLDate'
        Footers = <>
        Title.Caption = #20301#32622'|Date'
        Width = 68
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'JDBDATE'
        Footers = <>
        Title.Caption = #20511#20986#24288#22806'|JDBDATE'
        Width = 70
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'JDEDATE'
        Footers = <>
        Title.Caption = #20511#20986#24288#22806'|JDEDATE'
        Width = 65
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'VNPrice'
        Footer.FieldName = 'VNPrice'
        Footers = <>
        Title.Caption = #21934#20729'|VND'
        Title.Color = clSkyBlue
        Width = 67
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'USPrice'
        Footer.FieldName = 'USPrice'
        Footers = <>
        Title.Caption = #21934#20729'|USD'
        Title.Color = clSkyBlue
        Width = 65
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'VNTax_HG'
        Footer.FieldName = 'VNTax_HG'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #36914#21475#31237'|Thue'
        Title.Color = clSkyBlue
        Width = 70
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'VNACC_Tax'
        Footer.FieldName = 'VNACC_Tax'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #32317#37329#38989'|VNACC+Thue'
        Title.Color = clSkyBlue
        Width = 98
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'STYM'
        Footers = <>
        Title.Caption = #25892#25552#24180#26376'|STYM'
        Title.Color = clLime
        Width = 55
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'EDYM'
        Footers = <>
        Title.Caption = #25892#25552#24180#26376'|EDYM'
        Title.Color = clLime
        Width = 52
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'UseVNAcc'
        Footer.FieldName = 'UseVNAcc'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #24050#25892#25552'|UseVNAcc'
        Title.Color = clYellow
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'RemVNAcc'
        Footer.FieldName = 'RemVNAcc'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #30446#21069#21097#39192'|RemVNAcc'
        Title.Color = clYellow
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'UseVNAcc_Year'
        Footer.FieldName = 'UseVNAcc_Year'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #24180#25892#25552'|UseVNAcc'
        Title.Color = clYellow
        Width = 75
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'UseVNAcc_YearS'
        Footer.FieldName = 'UseVNAcc_YearS'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #24180#25892#25552'|UseVNAcc_YearS'
        Title.Color = clYellow
        Width = 76
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CQDH'
        Footers = <>
        Title.Caption = #25505#21312'|CQDH'
        Width = 47
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'XSBH'
        Footers = <>
        Title.Caption = #20986#24288#34399#30908'|XSBH'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NSX'
        Footers = <>
        Title.Caption = #35069#36896#24180#26376'|NSX'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CWHL'
        Footers = <>
        Title.Caption = #21295#29575'|CWHL-KT'
        Width = 70
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CWHL_HG'
        Footers = <>
        Title.Caption = #21295#29575'|CWHL-HG'
        Width = 65
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'HGPM'
        Footers = <>
        Title.Caption = #28023#38364#21517#31281'|HGPM'
        Width = 153
      end
      item
        CellButtons = <>
        Color = 15987699
        DynProps = <>
        EditButtons = <>
        FieldName = 'TSID'
        Footers = <>
        ReadOnly = True
        Title.Caption = #35373#20633'ID|TSID'
        Width = 83
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object TSCDQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select TSCD.TSBH,TSCD.Status,TSCD_KCRK.DOCNO,TSCD_KCRK.RKNO,TSCD' +
        '_KCRK.CFMDATE as RKDate,TSCD_SB.SBBH,TSCD_SB.LSBH,TSCD_SB.YWPM,T' +
        'SCD_SB.HGPM,'
      
        '       TSCD_SB.QUCBH,TSCD_ZSZL.zsjc_yw,BDepartment.DepName as RK' +
        'DepName,TSCD_KCLL.CFMDATE as LLDate,IsNull(TSCDBdep_JD.DepName, ' +
        'TSCDBdep.DepName) as LLDepName,TSCD.DepID_Memo, '
      
        '       TSCD_KCRKS.USPrice,TSCD_KCRKS.VNPrice,TSCD_KCRKS.VNTax_HG' +
        ',TSCD_KCRKS.VNACC_Tax,TSCD_KCRKS.MonthS,'
      
        '       Substring(convert(varchar, TSCD_KCRK.CFMDATE ,111),1,7) a' +
        's STYM ,Substring(convert(varchar,  DateAdd(month,MonthS, TSCD_K' +
        'CRK.CFMDATE ),111),1,7) as EDYM,'
      
        '       TSCD_Month.UseVNAcc,TSCD_KCRKS.VNACC_Tax-TSCD_Month.UseVN' +
        'Acc as RemVNAcc, TSCD_MonthS_Year.UseVNAcc_YearS,TSCD_Month_Year' +
        '.UseVNAcc_Year, '
      
        '       TSCD.TSID,TSCD.XSBH,TSCD.NSX,TSCD.JDBDATE,TSCD.JDEDATE,TS' +
        'CD_SB.CQDH,TSCD_KCRKS.CWHL,TSCD_KCRKS.CWHL_HG,TSCD_SB.DWBH,TSCD_' +
        'KCRKS.Qty'
      'from TSCD'
      'left join TSCD_SB on TSCD.SBBH=TSCD_SB.SBBH'
      'left join TSCD_KCRKS on TSCD_KCRKS.TSID=TSCD.TSID'
      'left join TSCD_KCRK on TSCD_KCRKS.RKNO=TSCD_KCRK.RKNO'
      'left join BDepartment on BDepartment.ID=TSCD_KCRK.DepID'
      'left join TSCD_ZSZL on TSCD_ZSZL.zsdh=TSCD_KCRK.ZSBH'
      'left join BDepartment TSCDBdep on TSCDBdep.ID=TSCD.DepID'
      'left join BDepartment TSCDBdep_JD on TSCDBdep_JD.ID=TSCD.JDTS'
      'left join TSCD_KCLL on TSCD.LLNO=TSCD_KCLL.LLNO'
      'left join (select TSID,SUM(VNAcc) as UseVNAcc from TSCD_Month '
      '           where KCYEAR+KCMONTH<='#39'202003'#39' '
      
        '           group by TSID ) TSCD_Month on TSCD_Month.TSID=TSCD.TS' +
        'ID'
      
        'left join (select TSID,SUM(VNAcc) as UseVNAcc_Year from TSCD_Mon' +
        'th '
      '           where KCYEAR='#39'2020'#39' and KCMONTH<='#39'03'#39
      
        '           group by TSID ) TSCD_Month_Year on TSCD_Month_Year.TS' +
        'ID=TSCD.TSID  '
      
        'left join (select TSID,SUM(VNAcc) as UseVNAcc_YearS from TSCD_Mo' +
        'nth '
      '           where KCYEAR='#39'2020'#39' '
      
        '           group by TSID ) TSCD_MonthS_Year on TSCD_MonthS_Year.' +
        'TSID=TSCD.TSID  '
      'where 1=1')
    Left = 348
    Top = 180
    object TSCDQryTSBH: TStringField
      FieldName = 'TSBH'
      FixedChar = True
      Size = 10
    end
    object TSCDQryStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 2
    end
    object TSCDQryDOCNO: TStringField
      FieldName = 'DOCNO'
      FixedChar = True
    end
    object TSCDQryRKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object TSCDQryRKDate: TDateTimeField
      FieldName = 'RKDate'
    end
    object TSCDQrySBBH: TStringField
      FieldName = 'SBBH'
      FixedChar = True
      Size = 10
    end
    object TSCDQryLSBH: TStringField
      FieldName = 'LSBH'
      FixedChar = True
      Size = 30
    end
    object TSCDQryYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object TSCDQryHGPM: TStringField
      FieldName = 'HGPM'
      FixedChar = True
      Size = 200
    end
    object TSCDQryQUCBH: TStringField
      FieldName = 'QUCBH'
      FixedChar = True
      Size = 30
    end
    object TSCDQryRKDepName: TStringField
      FieldName = 'RKDepName'
      FixedChar = True
      Size = 50
    end
    object TSCDQryLLDate: TDateTimeField
      FieldName = 'LLDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object TSCDQryLLDepName: TStringField
      FieldName = 'LLDepName'
      FixedChar = True
      Size = 50
    end
    object TSCDQryDepID_Memo: TStringField
      FieldName = 'DepID_Memo'
      FixedChar = True
    end
    object TSCDQryzsjc_yw: TStringField
      FieldName = 'zsjc_yw'
      FixedChar = True
    end
    object TSCDQryUSPrice: TFloatField
      FieldName = 'USPrice'
    end
    object TSCDQryVNPrice: TIntegerField
      FieldName = 'VNPrice'
      DisplayFormat = '#,#0'
    end
    object TSCDQryVNTax_HG: TFloatField
      FieldName = 'VNTax_HG'
      DisplayFormat = '#,#0'
    end
    object TSCDQryVNACC_Tax: TFloatField
      FieldName = 'VNACC_Tax'
      DisplayFormat = '#,#0'
    end
    object TSCDQryMonthS: TIntegerField
      FieldName = 'MonthS'
    end
    object TSCDQrySTYM: TStringField
      FieldName = 'STYM'
      FixedChar = True
      Size = 14
    end
    object TSCDQryEDYM: TStringField
      FieldName = 'EDYM'
      FixedChar = True
      Size = 14
    end
    object TSCDQryUseVNAcc: TFloatField
      FieldName = 'UseVNAcc'
      DisplayFormat = '#,#0'
    end
    object TSCDQryRemVNAcc: TFloatField
      FieldName = 'RemVNAcc'
      DisplayFormat = '#,#0'
    end
    object TSCDQryTSID: TStringField
      FieldName = 'TSID'
      FixedChar = True
      Size = 11
    end
    object TSCDQryCWHL: TIntegerField
      FieldName = 'CWHL'
    end
    object TSCDQryCWHL_HG: TIntegerField
      FieldName = 'CWHL_HG'
    end
    object TSCDQryDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object TSCDQryQty: TFloatField
      FieldName = 'Qty'
    end
    object TSCDQryUseVNAcc_YearS: TFloatField
      FieldName = 'UseVNAcc_YearS'
    end
    object TSCDQryUseVNAcc_Year: TFloatField
      FieldName = 'UseVNAcc_Year'
    end
    object TSCDQryXSBH: TStringField
      FieldName = 'XSBH'
      FixedChar = True
      Size = 10
    end
    object TSCDQryNSX: TStringField
      FieldName = 'NSX'
      FixedChar = True
      Size = 10
    end
    object TSCDQryJDBDATE: TStringField
      FieldName = 'JDBDATE'
      FixedChar = True
      Size = 12
    end
    object TSCDQryJDEDATE: TStringField
      FieldName = 'JDEDATE'
      FixedChar = True
      Size = 12
    end
    object TSCDQryCQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
  end
  object DS1: TDataSource
    DataSet = TSCDQry
    Left = 348
    Top = 212
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '')
    Left = 384
    Top = 180
  end
end
