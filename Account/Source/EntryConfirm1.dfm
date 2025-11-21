object EntryConfirm: TEntryConfirm
  Left = 215
  Top = 166
  Width = 1602
  Height = 500
  Caption = 'EntryConfirm'
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
    Width = 1586
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
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'RKNO'
        Footers = <>
        Width = 89
      end
      item
        EditButtons = <>
        FieldName = 'ZSBH'
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        Width = 106
      end
      item
        EditButtons = <>
        FieldName = 'ZSNO'
        Footers = <>
        Title.Caption = 'PO NO'
        Width = 91
      end
      item
        EditButtons = <>
        FieldName = 'DOCNO'
        Footers = <>
        Title.Caption = 'INVOICE'
        Width = 133
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'CFMDATE'
        Footers = <>
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'CFMID'
        Footers = <>
        Width = 48
      end
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
        Width = 42
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 193
    Width = 1586
    Height = 64
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 128
      Top = 28
      Width = 19
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'TO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 360
      Top = 28
      Width = 65
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RKNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 586
      Top = 16
      Width = 81
      Height = 33
      Caption = 'Search '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 674
      Top = 16
      Width = 81
      Height = 33
      Caption = 'Confirm'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 762
      Top = 16
      Width = 81
      Height = 33
      Caption = 'Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button3Click
    end
    object DTP1: TDateTimePicker
      Left = 16
      Top = 24
      Width = 105
      Height = 24
      Date = 39284.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677295636570000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object Edit1: TEdit
      Left = 432
      Top = 24
      Width = 137
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnKeyPress = Edit1KeyPress
    end
    object Button4: TButton
      Left = 850
      Top = 16
      Width = 81
      Height = 33
      Caption = 'Reset'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = Button4Click
    end
    object CheckBox1: TCheckBox
      Left = 271
      Top = 28
      Width = 15
      Height = 17
      Caption = 'CheckBox1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object CB1: TComboBox
      Left = 287
      Top = 24
      Width = 66
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 8
    end
  end
  object DBGrid2: TDBGridEh
    Left = 0
    Top = 257
    Width = 1586
    Height = 204
    Align = alClient
    DataSource = DS4
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = 16757683
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
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
        Footers = <
          item
            FieldName = 'CLBH'
            ValueType = fvtCount
          end>
        ReadOnly = True
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'PaQty'
        Footers = <
          item
            FieldName = 'PaQty'
            ValueType = fvtSum
          end>
        ReadOnly = True
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        ReadOnly = True
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <
          item
            FieldName = 'USPrice'
            ValueType = fvtAvg
          end>
        ReadOnly = True
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'USACC'
        Footers = <
          item
            FieldName = 'USACC'
            ValueType = fvtSum
          end>
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
        Footers = <
          item
            FieldName = 'VNPrice'
            ValueType = fvtAvg
          end>
        ReadOnly = True
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'VNACC'
        Footers = <
          item
            FieldName = 'VNACC'
            ValueType = fvtSum
          end>
        ReadOnly = True
        Width = 59
      end
      item
        Color = 7864319
        EditButtons = <>
        FieldName = 'ExchACC'
        Footers = <
          item
            FieldName = 'ExchACC'
            ValueType = fvtSum
          end>
        Width = 70
      end
      item
        Color = 7864319
        EditButtons = <>
        FieldName = 'CostID'
        Footers = <>
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'CWBH'
        Footers = <>
        ReadOnly = True
        Width = 47
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
      end
      item
        EditButtons = <>
        FieldName = 'CGBH'
        Footers = <>
        ReadOnly = True
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'invno'
        Footers = <>
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'CNO'
        Footers = <>
        Title.Caption = 'HaiQuan'
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'RKMEMO'
        Footers = <>
        Width = 85
      end>
  end
  object EnMas: TQuery
    CachedUpdates = True
    OnNewRecord = EnMasNewRecord
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select top 100 KCRK.*,ZSZL.ZSYWJC'
      'from KCRK'
      'left join ZSZL on KCRK.ZSBH=ZSZL.ZSDH'
      'where KCRK.YN<>'#39'5'#39
      'order by KCRK.RKNO')
    UpdateObject = UpMas
    Left = 324
    Top = 127
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
      DisplayFormat = 'yyyy/MM/dd'
    end
    object EnMasCFMID: TStringField
      FieldName = 'CFMID'
      FixedChar = True
      Size = 15
    end
    object EnMasCFMDATE: TDateTimeField
      FieldName = 'CFMDATE'
      DisplayFormat = 'yyyy/MM/dd'
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
    object EnMasYN_Date: TDateTimeField
      FieldName = 'YN_Date'
    end
  end
  object UpMas: TUpdateSQL
    ModifySQL.Strings = (
      'update KCRK'
      'set'
      '  CFMID = :CFMID,'
      '  YN = :YN,'
      '  YN_Date = :YN_Date'
      'where'
      '  RKNO = :OLD_RKNO')
    InsertSQL.Strings = (
      'insert into KCRK'
      '  (CFMID, YN)'
      'values'
      '  (:CFMID, :YN)')
    DeleteSQL.Strings = (
      'delete from KCRK'
      'where'
      '  RKNO = :OLD_RKNO')
    Left = 324
    Top = 156
  end
  object EnDet: TQuery
    CachedUpdates = True
    AfterOpen = EnDetAfterOpen
    OnNewRecord = EnDetNewRecord
    DatabaseName = 'DB'
    DataSource = DS3
    RequestLive = True
    SQL.Strings = (
      'select KCRKS.*,CLZL.YWPM,CLZL.DWBH,KCZLS.CWBH'
      'from KCRKS'
      'left join KCRK on KCRK.RKNO=KCRKS.RKNO'
      'left join CLZL on CLZL.CLDH=KCRKS.CLBH'
      
        'left join KCZLS on KCZLS.CLBH=KCRKS.CLBH and KCZLS.CKBH=KCRK.CKB' +
        'H'
      'where KCRKS.RKNO=:RKNO'
      'order by KCRKS.CLBH')
    UpdateObject = UPDet
    Left = 396
    Top = 126
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
      DisplayFormat = '#,##0.0000'
    end
    object EnDetQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object EnDetUSPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.00000'
    end
    object EnDetUSACC: TCurrencyField
      FieldName = 'USACC'
      DisplayFormat = '##,#0.00000'
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
    object EnDetExchACC: TFloatField
      FieldName = 'ExchACC'
      DisplayFormat = '##,#0'
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
      DisplayFormat = 'yyyy/MM/dd'
    end
    object EnDetYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object EnDetinvno: TStringField
      FieldName = 'invno'
      FixedChar = True
    end
    object EnDetCNO: TStringField
      FieldName = 'CNO'
      FixedChar = True
      Size = 40
    end
    object EnDetCWBH: TStringField
      FieldName = 'CWBH'
      FixedChar = True
      Size = 5
    end
    object EnDetRKMEMO: TStringField
      FieldName = 'RKMEMO'
      FixedChar = True
      Size = 200
    end
  end
  object UPDet: TUpdateSQL
    ModifySQL.Strings = (
      'update KCRKS'
      'set'
      '  CWHL= :CWHL,'
      '  VNPrice = :VNPrice,'
      '  VNACC = :VNACC,'
      '  CostID = :CostID,'
      '  YN = :YN,'
      '  ExchACC = :ExchACC'
      'where'
      '  RKNO = :OLD_RKNO and'
      '  CLBH = :OLD_CLBH and'
      '  CGBH = :OLD_CGBH and'
      '  RKSB = :OLD_RKSB')
    InsertSQL.Strings = (
      'insert into KCRKS'
      '  (CostID, YN, ExchACC)'
      'values'
      '  (:CostID, :YN, :ExchACC)')
    DeleteSQL.Strings = (
      'delete from KCRKS'
      'where'
      '  RKNO = :OLD_RKNO and'
      '  CLBH = :OLD_CLBH and'
      '  CGBH = :OLD_CGBH and'
      '  RKSB = :OLD_RKSB')
    Left = 396
    Top = 156
  end
  object DS4: TDataSource
    DataSet = EnDet
    Left = 433
    Top = 128
  end
  object DS3: TDataSource
    DataSet = EnMas
    Left = 357
    Top = 129
  end
  object PopupMenu1: TPopupMenu
    Left = 184
    Top = 72
    object Print1: TMenuItem
      Caption = 'Print'
      OnClick = Print1Click
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 192
    Top = 136
  end
  object CWHLS: TQuery
    DatabaseName = 'DB'
    Left = 224
    Top = 136
  end
end
