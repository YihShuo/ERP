object AdjustEntry: TAdjustEntry
  Left = 0
  Top = 0
  Caption = 'AdjustEntry'
  ClientHeight = 431
  ClientWidth = 1059
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
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
  TextHeight = 13
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 0
    Width = 1059
    Height = 193
    Align = alTop
    DataSource = DS3
    DynProps = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterParams.Color = clWindow
    ParentFont = False
    TabOrder = 0
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'RKNO'
        Footers = <>
        ReadOnly = True
        Width = 90
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ZSBH'
        Footers = <>
        ReadOnly = True
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'zsjc_yw'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'ZSYWJC'
        Width = 117
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ZSNO'
        Footers = <>
        ReadOnly = True
        Width = 85
      end
      item
        CellButtons = <>
        Color = 12189695
        DynProps = <>
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Width = 96
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        ReadOnly = True
        Width = 66
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CFMDATE'
        Footers = <>
        ReadOnly = True
        Width = 80
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CFMID'
        Footers = <>
        ReadOnly = True
        Width = 56
      end
      item
        CellButtons = <>
        Color = 12189695
        DynProps = <>
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
        PickList.Strings = (
          '1'
          '5')
        Width = 49
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        ReadOnly = True
        Width = 47
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DOCNO'
        Footers = <>
        ReadOnly = True
        Width = 120
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DOCDate'
        Footers = <>
        ReadOnly = True
        Width = 80
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'HDNO'
        Footers = <>
        ReadOnly = True
        Width = 120
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'HDDate'
        Footers = <>
        ReadOnly = True
        Width = 80
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 193
    Width = 1059
    Height = 48
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 143
      Top = 16
      Width = 22
      Height = 16
      Alignment = taRightJustify
      Caption = 'TO'
    end
    object Label2: TLabel
      Left = 280
      Top = 17
      Width = 93
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RKNO:'
    end
    object Button1: TButton
      Left = 520
      Top = 5
      Width = 97
      Height = 33
      Caption = 'Search '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 624
      Top = 5
      Width = 97
      Height = 33
      Caption = 'Modify'
      TabOrder = 4
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 727
      Top = 6
      Width = 97
      Height = 33
      Caption = 'Cancel'
      TabOrder = 5
      OnClick = Button3Click
    end
    object DTP1: TDateTimePicker
      Left = 24
      Top = 13
      Width = 105
      Height = 24
      Date = 39284.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677295636570000000
      TabOrder = 0
    end
    object DTP2: TDateTimePicker
      Left = 168
      Top = 13
      Width = 105
      Height = 24
      Date = 39284.677664201390000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677664201390000000
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 376
      Top = 13
      Width = 137
      Height = 24
      TabOrder = 2
    end
  end
  object DBGrid2: TDBGridEh
    Left = 0
    Top = 241
    Width = 1059
    Height = 190
    Align = alClient
    DataSource = DS4
    DynProps = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterParams.Color = clWindow
    ParentFont = False
    TabOrder = 2
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SBBH'
        Footers = <>
        ReadOnly = True
        Width = 82
      end
      item
        CellButtons = <>
        Color = clWhite
        DynProps = <>
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        ReadOnly = True
        Width = 53
      end
      item
        CellButtons = <>
        Color = 11796479
        DynProps = <>
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <>
        Width = 70
      end
      item
        CellButtons = <>
        Color = 11796479
        DynProps = <>
        EditButtons = <>
        FieldName = 'USACC'
        Footers = <>
        Width = 70
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CWHL'
        Footers = <>
        ReadOnly = True
        Width = 49
      end
      item
        CellButtons = <>
        Color = 11796479
        DynProps = <>
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <>
        Width = 90
      end
      item
        CellButtons = <>
        Color = 11796479
        DynProps = <>
        EditButtons = <>
        FieldName = 'VNACC'
        Footers = <>
        Width = 90
      end
      item
        CellButtons = <>
        Color = 12713983
        DynProps = <>
        EditButtons = <>
        FieldName = 'MonthS'
        Footers = <>
      end
      item
        CellButtons = <>
        Color = 12713983
        DynProps = <>
        EditButtons = <>
        FieldName = 'CostID'
        Footers = <>
        Width = 58
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'VWPM'
        Footers = <>
        ReadOnly = True
        Width = 314
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'HGPM'
        Footers = <>
        Width = 314
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        ReadOnly = True
        Width = 58
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object UPDet: TUpdateSQL
    ModifySQL.Strings = (
      'update TSCD_KCRKS'
      'set'
      '  USPrice = :USPrice,'
      '  USACC = :USACC,'
      '  VNPrice = :VNPrice,'
      '  VNACC = :VNACC,'
      '  CostID = :CostID,'
      '  Months = :Months'
      ''
      'where'
      '  RKNO = :OLD_RKNO and'
      '  SBBH = :OLD_SBBH'
      '')
    InsertSQL.Strings = (
      'insert into KCRKS'
      '  (Qty, USPrice, USACC, VNPrice, VNACC, CostID)'
      'values'
      '  (:Qty, :USPrice, :USACC, :VNPrice, :VNACC, :CostID)')
    DeleteSQL.Strings = (
      'delete from KCRKS'
      'where'
      '  RKNO = :OLD_RKNO and'
      '  CLBH = :OLD_CLBH and'
      '  CGBH = :OLD_CGBH and'
      '  RKSB = :OLD_RKSB')
    Left = 468
    Top = 163
  end
  object EnDet: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    DataSource = DS3
    RequestLive = True
    SQL.Strings = (
      
        'select KCRKS.*,TSCD_SB.YWPM,TSCD_SB.VWPM,TSCD_SB.HGPM,TSCD_SB.DW' +
        'BH'
      'from TSCD_KCRKS KCRKS'
      'left join TSCD_SB on TSCD_SB.SBBH = KCRKS.SBBH'
      'where KCRKS.RKNO=:RKNO'
      'order by KCRKS.RKNO')
    UpdateObject = UPDet
    Left = 468
    Top = 132
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'RKNO'
        ParamType = ptUnknown
        Size = 12
      end>
    object EnDetRKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object EnDetSBBH: TStringField
      FieldName = 'SBBH'
      FixedChar = True
      Size = 15
    end
    object EnDetQty: TFloatField
      FieldName = 'Qty'
    end
    object EnDetVNPrice: TCurrencyField
      FieldName = 'VNPrice'
      DisplayFormat = '##,#0'
    end
    object EnDetVNACC: TCurrencyField
      FieldName = 'VNACC'
      DisplayFormat = '##,#0'
    end
    object EnDetUSPrice: TFloatField
      FieldName = 'USPrice'
      DisplayFormat = '#,##0.0000'
    end
    object EnDetUSACC: TFloatField
      FieldName = 'USACC'
      DisplayFormat = '#,##0.00'
    end
    object EnDetCWHL: TCurrencyField
      FieldName = 'CWHL'
    end
    object EnDetCostID: TStringField
      FieldName = 'CostID'
      FixedChar = True
    end
    object EnDetCWHL_HG: TCurrencyField
      FieldName = 'CWHL_HG'
    end
    object EnDetVNACC_HG: TCurrencyField
      FieldName = 'VNACC_HG'
      DisplayFormat = '##,#0'
    end
    object EnDetVNTax_HG: TCurrencyField
      FieldName = 'VNTax_HG'
    end
    object EnDetVNPrice_HG: TCurrencyField
      FieldName = 'VNPrice_HG'
    end
    object EnDetVNACC_Tax: TCurrencyField
      FieldName = 'VNACC_Tax'
      DisplayFormat = '##,#0'
    end
    object EnDetMonthS: TIntegerField
      FieldName = 'MonthS'
    end
    object EnDetUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 10
    end
    object EnDetUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object EnDetYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object EnDetYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object EnDetDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object EnDetVWPM: TStringField
      FieldName = 'VWPM'
      FixedChar = True
      Size = 250
    end
    object EnDetHGPM: TStringField
      FieldName = 'HGPM'
      Size = 250
    end
  end
  object DS4: TDataSource
    DataSet = EnDet
    Left = 508
    Top = 132
  end
  object EnMas: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select KCRK.*,ZSZL.zsjc_yw'
      'from TSCD_KCRK KCRK'
      'left join TSCD_ZSZL ZSZL on KCRK.ZSBH=ZSZL.ZSDH'
      'where KCRK.YN<>'#39'5'#39' and 1=2'
      'order by KCRK.RKNO')
    UpdateObject = UpMas
    Left = 324
    Top = 132
    object EnMasRKNO: TStringField
      FieldName = 'RKNO'
      Origin = 'DB.TSCD_KCRK.RKNO'
      FixedChar = True
      Size = 11
    end
    object EnMasGSBH: TStringField
      FieldName = 'GSBH'
      Origin = 'DB.TSCD_KCRK.GSBH'
      FixedChar = True
      Size = 4
    end
    object EnMasLB: TStringField
      FieldName = 'LB'
      Origin = 'DB.TSCD_KCRK.LB'
      FixedChar = True
    end
    object EnMasZSBH: TStringField
      FieldName = 'ZSBH'
      Origin = 'DB.TSCD_KCRK.ZSBH'
      FixedChar = True
      Size = 6
    end
    object EnMasDOCNO: TStringField
      FieldName = 'DOCNO'
      Origin = 'DB.TSCD_KCRK.DOCNO'
      FixedChar = True
      Size = 50
    end
    object EnMasHDNO: TStringField
      FieldName = 'HDNO'
      Origin = 'DB.TSCD_KCRK.HDNO'
      FixedChar = True
      Size = 50
    end
    object EnMasDepID: TStringField
      FieldName = 'DepID'
      Origin = 'DB.TSCD_KCRK.DepID'
      FixedChar = True
      Size = 10
    end
    object EnMasZSNO: TStringField
      FieldName = 'ZSNO'
      Origin = 'DB.TSCD_KCRK.ZSNO'
      FixedChar = True
      Size = 11
    end
    object EnMasDOCDate: TDateTimeField
      FieldName = 'DOCDate'
      Origin = 'DB.TSCD_KCRK.DOCDate'
    end
    object EnMasHDDate: TDateTimeField
      FieldName = 'HDDate'
      Origin = 'DB.TSCD_KCRK.HDDate'
    end
    object EnMasUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.TSCD_KCRK.USERID'
      FixedChar = True
      Size = 10
    end
    object EnMasUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.TSCD_KCRK.USERDATE'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object EnMasCFMID: TStringField
      FieldName = 'CFMID'
      Origin = 'DB.TSCD_KCRK.CFMID'
      FixedChar = True
      Size = 10
    end
    object EnMasCFMDATE: TDateTimeField
      FieldName = 'CFMDATE'
      Origin = 'DB.TSCD_KCRK.CFMDATE'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object EnMasYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.TSCD_KCRK.YN'
      FixedChar = True
      Size = 1
    end
    object EnMaszsjc_yw: TStringField
      FieldName = 'zsjc_yw'
      Origin = 'DB.TSCD_ZSZL.zsjc_yw'
      FixedChar = True
      Size = 50
    end
  end
  object UpMas: TUpdateSQL
    ModifySQL.Strings = (
      'update TSCD_KCRK'
      'set'
      '  USERDATE = :USERDATE,'
      '  YN = :YN'
      'where'
      '  RKNO = :OLD_RKNO')
    InsertSQL.Strings = (
      'insert into KCRK'
      '  (USERDATE, YN)'
      'values'
      '  (:USERDATE, :YN)')
    DeleteSQL.Strings = (
      'delete from KCRK'
      'where'
      '  RKNO = :OLD_RKNO')
    Left = 324
    Top = 161
  end
  object DS3: TDataSource
    DataSet = EnMas
    Left = 364
    Top = 132
  end
  object BDelRec: TQuery
    DatabaseName = 'DB'
    Left = 211
    Top = 143
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 176
    Top = 144
  end
end
