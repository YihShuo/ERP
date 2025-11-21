object AdjustEntryACC: TAdjustEntryACC
  Left = 340
  Top = 324
  Width = 914
  Height = 508
  Caption = 'AdjustEntryACC'
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
    Width = 906
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
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'ZSBH'
        Footers = <>
        ReadOnly = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        ReadOnly = True
        Width = 117
      end
      item
        EditButtons = <>
        FieldName = 'ZSNO'
        Footers = <>
        ReadOnly = True
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        ReadOnly = True
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'CFMDATE'
        Footers = <>
        ReadOnly = True
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'CFMID'
        Footers = <>
        ReadOnly = True
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        Width = 47
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 193
    Width = 906
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
      Top = 32
      Width = 22
      Height = 16
      Caption = 'TO'
    end
    object Label2: TLabel
      Left = 272
      Top = 32
      Width = 47
      Height = 16
      Caption = 'RKNO:'
    end
    object Label3: TLabel
      Left = 456
      Top = 32
      Width = 55
      Height = 16
      Caption = 'Invoice:'
    end
    object Button1: TButton
      Left = 640
      Top = 16
      Width = 70
      Height = 33
      Caption = 'Search '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 720
      Top = 16
      Width = 70
      Height = 33
      Caption = 'Modify'
      TabOrder = 5
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 800
      Top = 16
      Width = 70
      Height = 33
      Caption = 'Cancel'
      TabOrder = 6
    end
    object DTP1: TDateTimePicker
      Left = 16
      Top = 24
      Width = 105
      Height = 24
      Date = 39284.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677295636570000000
      TabOrder = 0
    end
    object DTP2: TDateTimePicker
      Left = 160
      Top = 24
      Width = 105
      Height = 24
      Date = 39284.677664201390000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677664201390000000
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 320
      Top = 24
      Width = 121
      Height = 24
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 512
      Top = 24
      Width = 121
      Height = 24
      TabOrder = 3
    end
  end
  object DBGrid2: TDBGridEh
    Left = 0
    Top = 257
    Width = 906
    Height = 220
    Align = alClient
    DataSource = DS4
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
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
        FieldName = 'Qty'
        Footers = <>
        ReadOnly = True
        Width = 68
      end
      item
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <>
        ReadOnly = True
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'USACC'
        Footers = <>
        ReadOnly = True
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
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <>
        ReadOnly = True
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'VNACC'
        Footers = <>
        ReadOnly = True
        Width = 84
      end
      item
        Color = 8847359
        EditButtons = <>
        FieldName = 'ExchACC'
        Footers = <>
        Width = 71
      end
      item
        EditButtons = <>
        FieldName = 'CostID'
        Footers = <>
        ReadOnly = True
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
      end>
  end
  object UPDet: TUpdateSQL
    ModifySQL.Strings = (
      'update KCRKS'
      'set'
      '  ExchACC = :ExchACC'
      'where'
      '  RKNO = :OLD_RKNO and'
      '  CLBH = :OLD_CLBH and'
      '  CGBH = :OLD_CGBH and'
      '  RKSB = :OLD_RKSB')
    InsertSQL.Strings = (
      'insert into KCRKS'
      '  (ExchACC)'
      'values'
      '  (:ExchACC)')
    DeleteSQL.Strings = (
      'delete from KCRKS'
      'where'
      '  RKNO = :OLD_RKNO and'
      '  CLBH = :OLD_CLBH and'
      '  CGBH = :OLD_CGBH and'
      '  RKSB = :OLD_RKSB')
    Left = 468
    Top = 165
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
      Size = 2
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
    object EnDetExchACC: TFloatField
      FieldName = 'ExchACC'
    end
  end
  object DS4: TDataSource
    DataSet = EnDet
    Left = 508
    Top = 132
  end
  object EnMas: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select KCRK.*,ZSZL.ZSYWJC'
      'from KCRK'
      'left join ZSZL on KCRK.ZSBH=ZSZL.ZSDH'
      'where KCRK.YN<>'#39'5'#39
      'order by KCRK.RKNO')
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
  end
  object DS3: TDataSource
    DataSet = EnMas
    Left = 364
    Top = 132
  end
  object BDelRec: TQuery
    DatabaseName = 'DB'
    Left = 292
    Top = 133
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 256
    Top = 136
  end
end
