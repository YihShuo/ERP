object AdjustEntry: TAdjustEntry
  Left = 230
  Top = 177
  Width = 1348
  Height = 499
  Caption = 'AdjustEntry'
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
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 0
    Width = 1332
    Height = 193
    Align = alTop
    DataSource = DS3
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'RKNO'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'ZSBH'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 117
      end
      item
        EditButtons = <>
        FieldName = 'ZSNO'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 85
      end
      item
        Color = 12189695
        EditButtons = <>
        FieldName = 'HGLB'
        Footers = <>
        PickList.Strings = (
          'NK'
          'KD'
          'HD'
          'XT'
          'GC')
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 57
      end
      item
        Color = 12189695
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'CFMDATE'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'CFMID'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 56
      end
      item
        Color = 12189695
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
        PickList.Strings = (
          '1'
          '5')
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'DOCNO'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 163
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 193
    Width = 1332
    Height = 48
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
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
      Left = 728
      Top = 5
      Width = 97
      Height = 33
      Caption = 'Cancel'
      TabOrder = 5
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
    object CKSotcOK: TCheckBox
      Left = 832
      Top = 13
      Width = 169
      Height = 17
      Caption = 'Check'
      Checked = True
      State = cbChecked
      TabOrder = 6
    end
  end
  object DBGrid2: TDBGridEh
    Left = 0
    Top = 241
    Width = 1332
    Height = 219
    Align = alClient
    DataSource = DS4
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        ReadOnly = True
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'PaQty'
        Footers = <>
        ReadOnly = True
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        ReadOnly = True
        Width = 68
      end
      item
        Color = 11796479
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <>
        Width = 58
      end
      item
        Color = 11796479
        EditButtons = <>
        FieldName = 'USACC'
        Footers = <>
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'CWHL'
        Footers = <>
        ReadOnly = True
        Width = 49
      end
      item
        Color = 11796479
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <>
        Width = 60
      end
      item
        Color = 11796479
        EditButtons = <>
        FieldName = 'VNACC'
        Footers = <>
        Width = 59
      end
      item
        Color = 12713983
        EditButtons = <>
        FieldName = 'CostID'
        Footers = <>
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        ReadOnly = True
        Width = 314
      end
      item
        Color = 11796479
        EditButtons = <>
        FieldName = 'CNO'
        Footers = <>
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        ReadOnly = True
        Width = 43
      end
      item
        EditButtons = <>
        FieldName = 'RKSB'
        Footers = <>
        ReadOnly = True
        Width = 37
      end
      item
        EditButtons = <>
        FieldName = 'CGBH'
        Footers = <>
        ReadOnly = True
        Width = 85
      end
      item
        Color = 11796479
        EditButtons = <>
        FieldName = 'RKMEMO'
        Footers = <>
        Width = 75
      end
      item
        Color = 11796479
        EditButtons = <>
        FieldName = 'CNO1'
        Footers = <>
        Width = 84
      end>
  end
  object UPDet: TUpdateSQL
    ModifySQL.Strings = (
      'update KCRKS'
      'set'
      '  USPrice = :USPrice,'
      '  USACC = :USACC,'
      '  VNPrice = :VNPrice,'
      '  VNACC = :VNACC,'
      '  CostID = :CostID,'
      '  CNO = :CNO,'
      '  CNO1 = :CNO1,'
      '  RKMemo =:RKMemo'
      'where'
      '  RKNO = :OLD_RKNO and'
      '  CLBH = :OLD_CLBH and'
      '  CGBH = :OLD_CGBH and'
      '  RKSB = :OLD_RKSB')
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
    OnNewRecord = EnDetNewRecord
    DatabaseName = 'DB'
    DataSource = DS3
    RequestLive = True
    SQL.Strings = (
      'select KCRKS.*,CLZL.YWPM,CLZL.DWBH'
      'from KCRKS'
      'left join CLZL on CLZL.CLDH=KCRKS.CLBH'
      'where KCRKS.RKNO=:RKNO'
      'order by KCRKS.CLBH')
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
    object EnDetCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
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
    object EnDetCGBH: TStringField
      FieldName = 'CGBH'
      FixedChar = True
      Size = 15
    end
    object EnDetRKSB: TStringField
      FieldName = 'RKSB'
      FixedChar = True
      Size = 15
    end
    object EnDetPaQty: TCurrencyField
      FieldName = 'PaQty'
      DisplayFormat = '#,##0.00'
    end
    object EnDetQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '#,##0.00'
    end
    object EnDetUSPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.0000'
    end
    object EnDetUSACC: TCurrencyField
      FieldName = 'USACC'
      DisplayFormat = '##,#0.00'
    end
    object EnDetVNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object EnDetVNACC: TCurrencyField
      FieldName = 'VNACC'
    end
    object EnDetCWHL: TCurrencyField
      FieldName = 'CWHL'
    end
    object EnDetCostID: TStringField
      FieldName = 'CostID'
      FixedChar = True
      Size = 10
    end
    object EnDetUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object EnDetUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object EnDetYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object EnDetCNO: TStringField
      FieldName = 'CNO'
      FixedChar = True
      Size = 40
    end
    object EnDetRKMEMO: TStringField
      FieldName = 'RKMEMO'
      FixedChar = True
      Size = 200
    end
    object EnDetCNO1: TStringField
      FieldName = 'CNO1'
    end
  end
  object DS4: TDataSource
    DataSet = EnDet
    Left = 508
    Top = 132
  end
  object EnMas: TQuery
    CachedUpdates = True
    OnNewRecord = EnMasNewRecord
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select KCRK.*,ZSZL.ZSYWJC'
      'from KCRK'
      'left join ZSZL on KCRK.ZSBH=ZSZL.ZSDH'
      'where KCRK.YN<>'#39'5'#39' and 1=2'
      'order by KCRK.RKNO')
    UpdateObject = UpMas
    Left = 324
    Top = 132
    object EnMasRKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object EnMasZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object EnMasZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object EnMasZSNO: TStringField
      FieldName = 'ZSNO'
      FixedChar = True
    end
    object EnMasUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object EnMasUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object EnMasCFMID: TStringField
      FieldName = 'CFMID'
      FixedChar = True
      Size = 15
    end
    object EnMasCFMDATE: TDateTimeField
      FieldName = 'CFMDATE'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object EnMasYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object EnMasGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object EnMasCKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object EnMasDOCNO: TStringField
      FieldName = 'DOCNO'
      FixedChar = True
      Size = 30
    end
    object EnMasHGLB: TStringField
      FieldName = 'HGLB'
      FixedChar = True
      Size = 5
    end
    object EnMasYN_Date: TDateTimeField
      FieldName = 'YN_Date'
    end
  end
  object UpMas: TUpdateSQL
    ModifySQL.Strings = (
      'update KCRK'
      'set'
      '  USERDATE = :USERDATE,'
      '  YN = :YN,'
      '  HGLB = :HGLB,'
      '  YN_Date = :YN_Date'
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
