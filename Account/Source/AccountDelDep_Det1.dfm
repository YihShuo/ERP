object AccountDelDep_Det: TAccountDelDep_Det
  Left = -8
  Top = -8
  Width = 1382
  Height = 744
  Caption = 'AccountDelDep_Det'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1366
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 864
      Height = 13
      Caption = 
        '****************************************************************' +
        '****************************************************************' +
        '****************************************************************' +
        '************************'
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 1366
    Height = 664
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
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 112
      end
      item
        EditButtons = <>
        FieldName = 'LLNO'
        Footers = <>
        Width = 99
      end
      item
        EditButtons = <>
        FieldName = 'SCBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 105
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 307
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'CWBH'
        Footers = <>
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <>
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'VNACC'
        Footers = <>
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Width = 92
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Width = 136
      end
      item
        EditButtons = <>
        FieldName = 'CostID'
        Footers = <>
        Width = 55
      end>
  end
  object Query1: TQuery
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    DataSource = AccountDelDep.DS1
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
      'where KCLLS.CostID='#39'621PB'#39' '
      'and KCZLS.CWBH=NULL '
      
        'and convert(smalldatetime,convert(varchar,KCLL.CFMdate,111)) bet' +
        'ween '
      #39'2008/04/01'#39
      ' and '#39'2008/04/30'#39
      'and KCLLS.Qty<>0'
      'order by KCLLS.CLBH,KCLLS.LLNO ')
    Left = 192
    Top = 72
    object Query1CFMDate: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1LLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object Query1SCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
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
      DisplayFormat = '##,#0.0'
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
    object Query1CostID: TStringField
      FieldName = 'CostID'
      FixedChar = True
      Size = 10
    end
    object Query1SCBH_1: TStringField
      FieldName = 'SCBH_1'
      FixedChar = True
      Size = 15
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 224
    Top = 72
  end
  object PopupMenu1: TPopupMenu
    Left = 176
    Top = 200
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
end
