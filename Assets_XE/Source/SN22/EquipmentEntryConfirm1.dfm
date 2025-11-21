object EquipmentEntryConfirm: TEquipmentEntryConfirm
  Left = 308
  Top = 294
  Caption = 'EquipmentEntryConfirm'
  ClientHeight = 539
  ClientWidth = 1149
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
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 217
    Width = 1149
    Height = 5
    Cursor = crVSplit
    Align = alTop
    Color = clGrayText
    ParentColor = False
    ExplicitWidth = 1157
  end
  object Splitter2: TSplitter
    Left = 800
    Top = 286
    Width = 5
    Height = 253
    ExplicitLeft = 633
    ExplicitTop = 1
    ExplicitHeight = 286
  end
  object Panel1: TPanel
    Left = 0
    Top = 222
    Width = 1149
    Height = 64
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 128
      Top = 28
      Width = 22
      Height = 16
      Caption = 'TO'
    end
    object Label2: TLabel
      Left = 275
      Top = 27
      Width = 47
      Height = 16
      Caption = 'RKNO:'
    end
    object btnSearch: TButton
      Left = 474
      Top = 16
      Width = 81
      Height = 33
      Caption = 'Search '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnSearchClick
    end
    object btnConfirm: TButton
      Left = 562
      Top = 16
      Width = 81
      Height = 33
      Caption = 'Confirm'
      TabOrder = 1
      OnClick = btnConfirmClick
    end
    object btnCancel: TButton
      Left = 738
      Top = 16
      Width = 73
      Height = 33
      Caption = 'Cancel'
      TabOrder = 2
    end
    object DTP1: TDateTimePicker
      Left = 16
      Top = 24
      Width = 105
      Height = 24
      Date = 39284.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677295636570000000
      TabOrder = 3
    end
    object DTP2: TDateTimePicker
      Left = 160
      Top = 24
      Width = 105
      Height = 24
      Date = 39284.677664201390000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677664201390000000
      TabOrder = 4
    end
    object edtRKNO: TEdit
      Left = 323
      Top = 24
      Width = 137
      Height = 24
      TabOrder = 5
    end
    object btnPrint: TButton
      Left = 649
      Top = 16
      Width = 81
      Height = 33
      Caption = 'Print'
      TabOrder = 6
      OnClick = btnPrintClick
    end
  end
  object DBGrid2: TDBGridEh
    Left = 0
    Top = 286
    Width = 800
    Height = 253
    Align = alLeft
    DataSource = DS2
    DynProps = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterParams.Color = clWindow
    ParentFont = False
    TabOrder = 1
    TitleParams.MultiTitle = True
    OnColExit = DBGrid2ColExit
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'RKNO'
        Footers = <>
        ReadOnly = True
        Title.Caption = #20837#24235#21934#34399'|RKNO'
        Visible = False
        Width = 87
      end
      item
        CellButtons = <>
        Color = clBtnFace
        DynProps = <>
        EditButtons = <>
        FieldName = 'SBBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30446#37636#32232#34399'|SBBH'
        Width = 82
      end
      item
        CellButtons = <>
        Color = clBtnFace
        DynProps = <>
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        ReadOnly = True
        Title.Caption = #35373#20633#21517#31281'|YWPM'
        Width = 170
      end
      item
        CellButtons = <>
        Color = clBtnFace
        DynProps = <>
        EditButtons = <>
        FieldName = 'QUCBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = #35215#26684'|QUCBH'
      end
      item
        CellButtons = <>
        Color = clBtnFace
        DynProps = <>
        EditButtons = <>
        FieldName = 'LSBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = #22411#34399'|LSBH'
      end
      item
        CellButtons = <>
        Color = clBtnFace
        DynProps = <>
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        ReadOnly = True
        Title.Caption = #25976#37327'|Qty'
        Width = 37
      end
      item
        CellButtons = <>
        DropDownSpecRow.Value = 0.000000000000000000
        DynProps = <>
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <>
        Title.Caption = 'VND|Price'
        Width = 57
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'VNACC'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'VND|Amout'
      end
      item
        CellButtons = <>
        DropDownSpecRow.Value = 0.000000000000000000
        DynProps = <>
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <>
        Title.Caption = 'USD|Price'
        Width = 57
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'USACC'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'USD|Amount'
        Width = 54
      end
      item
        CellButtons = <>
        Color = clBtnFace
        DisplayFormat = 'YYYY/MM/DD'
        DynProps = <>
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        ReadOnly = True
        Title.Caption = #20351#29992#32773#26085#26399'|USERDATE'
        Width = 81
      end
      item
        CellButtons = <>
        Color = clBtnFace
        DynProps = <>
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Title.Caption = #20351#29992#32773'|USERID'
        Width = 60
      end
      item
        CellButtons = <>
        Color = clBtnFace
        DynProps = <>
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
        ReadOnly = True
        Width = 25
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 0
    Width = 1149
    Height = 217
    Align = alTop
    DataSource = DS1
    DynProps = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterParams.Color = clWindow
    ParentFont = False
    TabOrder = 2
    TitleParams.MultiTitle = True
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'RKNO'
        Footers = <>
        ReadOnly = True
        Title.Caption = #20837#24235#32232#34399'|RKNO'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'LB'
        Footers = <>
        ReadOnly = True
        Title.Caption = #39006#21029'|LB'
        Width = 62
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ZSBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = #24288#21830'|ID'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        ReadOnly = True
        Title.Caption = #24288#21830'|Supplier'
        Width = 76
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DOCNO'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30332#31080#32232#34399'|DOCNO'
        Width = 102
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DepID'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30003#35531#21934#20301'|DepID'
        Width = 66
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30003#35531#21934#20301'|DepName'
        Width = 103
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        ReadOnly = True
        Title.Caption = #20351#29992#32773'|USERID'
      end
      item
        CellButtons = <>
        DisplayFormat = 'YYYY/MM/DD'
        DynProps = <>
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        ReadOnly = True
        Title.Caption = #26085#26399'|USERDATE'
        Width = 86
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CFMID'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30906#35469'ID|CFMID'
      end
      item
        CellButtons = <>
        DisplayFormat = 'YYYY/MM/DD'
        DynProps = <>
        EditButtons = <>
        FieldName = 'CFMDATE'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30906#35469#26085#26399'|CFMDATE'
        Width = 93
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
        ReadOnly = True
        Width = 23
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DBGrid4: TDBGridEh
    Left = 805
    Top = 286
    Width = 344
    Height = 253
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
    PopupMenu = PopupMenu
    TabOrder = 3
    TitleParams.MultiTitle = True
    Columns = <
      item
        CellButtons = <>
        Color = clBtnFace
        DynProps = <>
        EditButtons = <>
        FieldName = 'SBBH1'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30446#37636#32232#34399'1|SBBH1'
      end
      item
        CellButtons = <>
        Color = clBtnFace
        DynProps = <>
        EditButtons = <>
        FieldName = 'VWPM'
        Footers = <>
        ReadOnly = True
        Title.Caption = #36234#25991#21517#31281'|VWPM'
        Width = 100
      end
      item
        CellButtons = <>
        Color = clBtnFace
        DynProps = <>
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        ReadOnly = True
        Title.Caption = #25976#37327'|Qty'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <>
        Title.Caption = #22577#20729'|VNPrice'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <>
        Title.Caption = #22577#20729'|USPrice'
        Width = 66
      end
      item
        CellButtons = <>
        Color = clBtnFace
        DynProps = <>
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        ReadOnly = True
        Title.Caption = #20351#29992#32773'|USERID'
        Width = 61
      end
      item
        CellButtons = <>
        Color = clBtnFace
        DisplayFormat = 'YYYY/MM/DD'
        DynProps = <>
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        ReadOnly = True
        Title.Caption = #20351#29992#32773#26085#26399'|USERDATE'
        Width = 82
      end
      item
        CellButtons = <>
        Color = clBtnFace
        DynProps = <>
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
        ReadOnly = True
        Width = 33
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 289
    Top = 133
  end
  object EnMas: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select TSCD_KCRK.*,BDepartment.DepName,TSCD_ZSZL.ZSJC_YW'
      'from TSCD_KCRK'
      'left join  BDepartment on BDepartment.ID=TSCD_KCRK.DepID'
      'left join TSCD_ZSZL on TSCD_ZSZL.zsdh=TSCD_KCRK.ZSBH'
      'where TSCD_KCRK.CFMID='#39'NO'#39)
    UpdateObject = UpMas
    Left = 324
    Top = 132
    object EnMasRKNO: TStringField
      FieldName = 'RKNO'
      Origin = 'DB.TSCD_KCRK.RKNO'
      FixedChar = True
      Size = 11
    end
    object EnMasLB: TStringField
      FieldName = 'LB'
      Origin = 'DB.TSCD_KCRK.LB'
      FixedChar = True
    end
    object EnMasZSNO: TStringField
      FieldName = 'ZSNO'
      FixedChar = True
      Size = 11
    end
    object EnMasDOCNO: TStringField
      FieldName = 'DOCNO'
      Origin = 'DB.TSCD_KCRK.DOCNO'
      FixedChar = True
    end
    object EnMasZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object EnMasZSJC_YW: TStringField
      FieldName = 'ZSJC_YW'
      FixedChar = True
    end
    object EnMasDepID: TStringField
      FieldName = 'DepID'
      Origin = 'DB.TSCD_KCRK.DepID'
      FixedChar = True
      Size = 10
    end
    object EnMasDepName: TStringField
      FieldName = 'DepName'
      Origin = 'DB.BDepartment.DepName'
      FixedChar = True
      Size = 50
    end
    object EnMasCFMDATE: TDateTimeField
      FieldName = 'CFMDATE'
      Origin = 'DB.TSCD_KCRK.CFMDATE'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object EnMasCFMID: TStringField
      FieldName = 'CFMID'
      Origin = 'DB.TSCD_KCRK.CFMID'
      FixedChar = True
      Size = 10
    end
    object EnMasUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.TSCD_KCRK.USERDATE'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object EnMasUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.TSCD_KCRK.USERID'
      FixedChar = True
      Size = 10
    end
    object EnMasYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.TSCD_KCRK.YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS1: TDataSource
    DataSet = EnMas
    Left = 356
    Top = 132
  end
  object UpMas: TUpdateSQL
    ModifySQL.Strings = (
      'update TSCD_KCRK'
      'set'
      '  CFMID = :CFMID,'
      '  CFMDATE = :CFMDATE,'
      '  YN = :YN'
      'where'
      '  RKNO = :OLD_RKNO')
    InsertSQL.Strings = (
      '')
    Left = 324
    Top = 164
  end
  object UPDet: TUpdateSQL
    ModifySQL.Strings = (
      'update TSCD_KCRKS'
      'set'
      '  VNPrice = :VNPrice,'
      '  VNACC = :VNACC,'
      '  USPrice = :USPrice,'
      '  USACC = :USACC,'
      '  YN = :YN'
      'where'
      '  RKNO = :OLD_RKNO and'
      '  SBBH =:OLD_SBBH'
      ''
      '')
    Left = 468
    Top = 165
  end
  object EnDet: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    DataSource = DS1
    RequestLive = True
    SQL.Strings = (
      
        'select TSCD_KCRKS.RKNO,TSCD_SB.SBBH,TSCD_KCRKS.USERID,TSCD_KCRKS' +
        '.USERDATE,TSCD_KCRKS.YN'
      
        '       ,TSCD_SB.YWPM,TSCD_SB.ZWPM,TSCD_SB.LSBH,TSCD_SB.QUCBH,TSC' +
        'D_KCRKS.Qty'
      
        '       ,TSCD_KCRKS.VNPrice,TSCD_KCRKS.USPrice,TSCD_KCRKS.VNACC,T' +
        'SCD_KCRKS.USACC'
      'from TSCD_KCRKS'
      'left join TSCD_SB on TSCD_SB.SBBH = TSCD_KCRKS.SBBH'
      'where TSCD_KCRKS.RKNO=:RKNO'
      'order by TSCD_KCRKS.RKNO')
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
      Origin = 'DB.TSCD_KCRKS.RKNO'
      FixedChar = True
      Size = 11
    end
    object EnDetSBBH: TStringField
      FieldName = 'SBBH'
      Origin = 'DB.TSCD_SB.SBBH'
      FixedChar = True
      Size = 15
    end
    object EnDetUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.TSCD_KCRKS.USERID'
      FixedChar = True
      Size = 10
    end
    object EnDetUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.TSCD_KCRKS.USERDATE'
    end
    object EnDetYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.TSCD_KCRKS.YN'
      FixedChar = True
      Size = 1
    end
    object EnDetYWPM: TStringField
      FieldName = 'YWPM'
      Origin = 'DB.TSCD_SB.YWPM'
      FixedChar = True
      Size = 200
    end
    object EnDetZWPM: TStringField
      FieldName = 'ZWPM'
      Origin = 'DB.TSCD_SB.ZWPM'
      FixedChar = True
      Size = 200
    end
    object EnDetLSBH: TStringField
      FieldName = 'LSBH'
      Origin = 'DB.TSCD_SB.LSBH'
      FixedChar = True
      Size = 30
    end
    object EnDetQUCBH: TStringField
      FieldName = 'QUCBH'
      Origin = 'DB.TSCD_SB.QUCBH'
      FixedChar = True
      Size = 30
    end
    object EnDetQty: TFloatField
      FieldName = 'Qty'
      Origin = 'DB.TSCD_KCRKS.Qty'
    end
    object EnDetVNPrice: TCurrencyField
      FieldName = 'VNPrice'
      Origin = 'DB.TSCD_KCRKS.VNPrice'
      DisplayFormat = '#,##0'
    end
    object EnDetUSPrice: TFloatField
      FieldName = 'USPrice'
      Origin = 'DB.TSCD_KCRKS.USPrice'
      DisplayFormat = '#,##0.0000'
    end
    object EnDetVNACC: TCurrencyField
      FieldName = 'VNACC'
      Origin = 'DB.TSCD_KCRKS.VNACC'
      DisplayFormat = '#,##0'
    end
    object EnDetUSACC: TFloatField
      FieldName = 'USACC'
      Origin = 'DB.TSCD_KCRKS.USACC'
      DisplayFormat = '#,##0.00'
    end
  end
  object DS2: TDataSource
    DataSet = EnDet
    Left = 500
    Top = 132
  end
  object TSCD: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    DataSource = DS2
    RequestLive = True
    SQL.Strings = (
      'select TSCD.*'
      'from TSCD'
      'where TSID=:TSID'
      'order by TSID')
    Left = 600
    Top = 133
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TSID'
        ParamType = ptUnknown
      end>
  end
  object EnDetS: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    DataSource = DS2
    RequestLive = True
    SQL.Strings = (
      'select TSCD_KCRKSS.*,TSCD_SB.VWPM'
      'from TSCD_KCRKSS'
      'left join TSCD_SB on TSCD_SB.SBBH = TSCD_KCRKSS.SBBH1'
      'where TSCD_KCRKSS.RKNO=:RKNO'
      'and TSCD_KCRKSS.SBBH=:SBBH'
      'order by TSCD_KCRKSS.SBBH1'
      ''
      ''
      ''
      '')
    UpdateObject = UpDetS
    Left = 754
    Top = 126
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'RKNO'
        ParamType = ptUnknown
        Size = 12
      end
      item
        DataType = ftFixedChar
        Name = 'SBBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object EnDetSRKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object EnDetSSBBH: TStringField
      FieldName = 'SBBH'
      FixedChar = True
      Size = 15
    end
    object EnDetSSBBH1: TStringField
      FieldName = 'SBBH1'
      FixedChar = True
      Size = 15
    end
    object EnDetSQty: TFloatField
      FieldName = 'Qty'
    end
    object EnDetSVNPrice: TCurrencyField
      FieldName = 'VNPrice'
      DisplayFormat = '#,##0'
    end
    object EnDetSUSPrice: TFloatField
      FieldName = 'USPrice'
      DisplayFormat = '#,##0.0000'
    end
    object EnDetSUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 10
    end
    object EnDetSUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object EnDetSYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object EnDetSVWPM: TStringField
      FieldName = 'VWPM'
      FixedChar = True
      Size = 255
    end
  end
  object DS4: TDataSource
    DataSet = EnDetS
    Left = 786
    Top = 126
  end
  object UpDetS: TUpdateSQL
    ModifySQL.Strings = (
      'update TSCD_KCRKSS'
      'set'
      '  USPrice =:USPrice,'
      '  VNPrice =:VNPrice,'
      '  YN =:YN'
      'where'
      '  RKNO =:OLD_RKNO and'
      '  SBBH =:OLD_SBBH and'
      '  SBBH1 =:OLD_SBBH1')
    Left = 754
    Top = 167
  end
  object PopupMenu: TPopupMenu
    Left = 833
    Top = 127
    object Modify: TMenuItem
      Caption = 'Modify'
      OnClick = ModifyClick
    end
    object Save: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = SaveClick
    end
    object Cancel: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = CancelClick
    end
  end
end
