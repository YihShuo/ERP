object CostOrderList_Det: TCostOrderList_Det
  Left = 253
  Top = 225
  Width = 1022
  Height = 416
  BorderIcons = [biSystemMenu]
  Caption = 'CostOrderList_Det'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 1006
    Height = 377
    Align = alClient
    DataSource = DS1
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
    FooterRowCount = 1
    ParentFont = False
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'LLNO'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Width = 106
      end
      item
        EditButtons = <>
        FieldName = 'SCBH'
        Footers = <>
        Width = 116
      end
      item
        EditButtons = <>
        FieldName = 'CostID'
        Footers = <>
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 119
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 240
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'CWBH'
        Footers = <>
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Width = 57
      end
      item
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'VNACC'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Width = 99
      end>
  end
  object Query1: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select KCLL.CFMDate,KCLLS.LLNO,KCLLS.SCBH,KCLLS.CLBH,'
      
        'KCLLS.Qty,KCLLS.VNPrice,CLZL.YWPM,CLZl.DWBH,KCLLS.YYBH,KCLL.SCBH' +
        ','
      
        'SCBLYY.YWSM,BDepartment.DepName,KCLL.DepID,KCLLS.CostID,KCZLS.CW' +
        'BH'
      'from KCLLS'
      'left join CLZL on CLZL.CLDH=KCLLS.CLBH '
      'left join KCLL on KCLL.LLNO=KCLLS.LLNO '
      'left join BDepartment on BDepartment.ID=KCLL.DepID'
      'left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH'
      'left join KCZLS on KCZLS.CLBH=KCLLS.CLBH '
      'where KCLLS.CostID='#39'621'#39
      
        'and not exists(select ZLBH from ZLZL where ZLZL.ZLBH=KCLLS.SCBH ' +
        ')'
      
        'and convert(smalldatetime,convert(varchar,KCLL.CFMdate,111)) bet' +
        'ween '
      #39'2008/03/31'#39
      ' and '#39'2008/03/01'#39
      'and KCLLS.Qty<>0order by KCLLS.LLNO,KCLLS.CLBH ')
    UpdateObject = UpSQL1
    Left = 216
    Top = 112
    object Query1LLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object Query1CFMDate: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1SCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object Query1CostID: TStringField
      FieldName = 'CostID'
      FixedChar = True
      Size = 10
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1CWBH: TStringField
      FieldName = 'CWBH'
      FixedChar = True
      Size = 5
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object Query1VNPrice: TFloatField
      FieldName = 'VNPrice'
      DisplayFormat = '##,#0'
    end
    object Query1VNACC: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'VNACC'
      DisplayFormat = '##,#0'
      Calculated = True
    end
    object Query1YYBH: TStringField
      FieldName = 'YYBH'
      FixedChar = True
      Size = 4
    end
    object Query1YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 50
    end
    object Query1DepID: TStringField
      FieldName = 'DepID'
      FixedChar = True
      Size = 10
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 240
    Top = 208
    object Excel1: TMenuItem
      Caption = 'Excel'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 248
    Top = 112
  end
  object UpSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update KCLLS'
      'set'
      '  SCBH = :SCBH'
      'where'
      '  LLNO = :OLD_LLNO and'
      '  CLBH = :OLD_CLBH')
    InsertSQL.Strings = (
      'insert into KCLLS'
      '  (SCBH)'
      'values'
      '  (:SCBH)')
    DeleteSQL.Strings = (
      'delete from KCLLS'
      'where'
      '  LLNO = :OLD_LLNO and'
      '  CLBH = :OLD_CLBH')
    Left = 288
    Top = 112
  end
end
