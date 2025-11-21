object Outsolestock_LL: TOutsolestock_LL
  Left = 478
  Top = 302
  Width = 815
  Height = 388
  Caption = 'Outsolestock_LL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 799
    Height = 349
    Align = alClient
    DataSource = DataSource1
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
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'LLNO'
        Footers = <>
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
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'PlanDate'
        Footers = <>
        Width = 63
      end
      item
        EditButtons = <>
        FieldName = 'DepID'
        Footers = <>
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Footers = <>
        Width = 68
      end
      item
        EditButtons = <>
        FieldName = 'SIZ'
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'KCQty'
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Width = 92
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = OutsoleSTOCK.ds3
    SQL.Strings = (
      'select * '
      'from OSLL left join OSLLSS on OSLL.LLNO =OSLLSS.LLNO'
      'where OSLLSS.CLBH=:CLBH')
    Left = 144
    Top = 112
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object Query1LLNO: TStringField
      FieldName = 'LLNO'
      Origin = 'DB.OSLL.LLNO'
      FixedChar = True
      Size = 13
    end
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
      Origin = 'DB.OSLL.GSBH'
      FixedChar = True
      Size = 4
    end
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
      Origin = 'DB.OSLL.CKBH'
      FixedChar = True
      Size = 4
    end
    object Query1PlanDate: TDateTimeField
      FieldName = 'PlanDate'
      Origin = 'DB.OSLL.PlanDate'
    end
    object Query1DepID: TStringField
      FieldName = 'DepID'
      Origin = 'DB.OSLL.DepID'
      FixedChar = True
      Size = 10
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.OSLL.USERDATE'
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.OSLL.USERID'
      FixedChar = True
      Size = 15
    end
    object Query1CFMDate: TDateTimeField
      FieldName = 'CFMDate'
      Origin = 'DB.OSLL.CFMDate'
    end
    object Query1CFMID: TStringField
      FieldName = 'CFMID'
      Origin = 'DB.OSLL.CFMID'
      FixedChar = True
      Size = 15
    end
    object Query1SB: TStringField
      FieldName = 'SB'
      Origin = 'DB.OSLL.SB'
      FixedChar = True
      Size = 1
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.OSLL.YN'
      FixedChar = True
      Size = 1
    end
    object Query1PMARK: TIntegerField
      FieldName = 'PMARK'
      Origin = 'DB.OSLL.PMARK'
    end
    object Query1MEMO: TStringField
      FieldName = 'MEMO'
      Origin = 'DB.OSLL.MEMO'
      FixedChar = True
    end
    object Query1SFL: TStringField
      FieldName = 'SFL'
      Origin = 'DB.OSLL.SFL'
      FixedChar = True
      Size = 1
    end
    object Query1LLNO_1: TStringField
      FieldName = 'LLNO_1'
      Origin = 'DB.OSLL.SFL'
      FixedChar = True
      Size = 13
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      Origin = 'DB.OSLL.SFL'
      FixedChar = True
      Size = 15
    end
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      Origin = 'DB.OSLL.SFL'
      FixedChar = True
      Size = 15
    end
    object Query1SIZ: TStringField
      FieldName = 'SIZ'
      Origin = 'DB.OSLL.SFL'
      FixedChar = True
      Size = 10
    end
    object Query1Qty: TFloatField
      FieldName = 'Qty'
      Origin = 'DB.OSLL.SFL'
    end
    object Query1TempQTY: TFloatField
      FieldName = 'TempQTY'
      Origin = 'DB.OSLL.SFL'
    end
    object Query1KCQty: TFloatField
      FieldName = 'KCQty'
      Origin = 'DB.OSLL.SFL'
    end
    object Query1USERDate_1: TDateTimeField
      FieldName = 'USERDate_1'
      Origin = 'DB.OSLL.SFL'
    end
    object Query1USERID_1: TStringField
      FieldName = 'USERID_1'
      Origin = 'DB.OSLL.SFL'
      FixedChar = True
      Size = 15
    end
    object Query1YN_1: TStringField
      FieldName = 'YN_1'
      Origin = 'DB.OSLL.SFL'
      FixedChar = True
      Size = 1
    end
    object Query1LCRY: TStringField
      FieldName = 'LCRY'
      Origin = 'DB.OSLL.SFL'
      FixedChar = True
      Size = 2
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 184
    Top = 112
  end
end
