object AccountDelDep: TAccountDelDep
  Left = 248
  Top = 204
  Width = 870
  Height = 500
  Caption = 'AccountDelDep'
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
  object DTP1: TDateTimePicker
    Left = 72
    Top = 200
    Width = 105
    Height = 21
    Date = 39535.671667569450000000
    Format = 'yyyy/MM/dd'
    Time = 39535.671667569450000000
    TabOrder = 0
    Visible = False
  end
  object DTP2: TDateTimePicker
    Left = 72
    Top = 240
    Width = 105
    Height = 21
    Date = 39535.671667569450000000
    Format = 'yyyy/MM/dd'
    Time = 39535.671667569450000000
    TabOrder = 1
    Visible = False
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 854
    Height = 461
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
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CWBH'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'CostID'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'DepID'
        Footers = <>
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'VNACC'
        Footers = <>
        Width = 86
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = AccountDel.DS1
    SQL.Strings = (
      
        'select KCZLS.CWBH,KCLLS.CostID,KCLL.DepID,BDepartment.DepName,ro' +
        'und(sum(KCLLS.VNPrice*KCLLS.Qty),0) as VNACC'
      'from KCLLS'
      'left join KCLL on KCLL.LLNO=KCLLS.LLNO'
      'left join KCZLS on KCZLS.CLBH=KCLLS.CLBH '
      'left join BDepartment on BDepartment.ID=KCLL.DepID '
      
        'where convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) b' +
        'etween '#39'2008/04/01'#39
      ' and '#39'2008/04/30'#39
      ' and KCLLS.Qty<>0'
      'and KCLLS.CostID='#39'627'#39
      'and KCZLS.CWBH=NULL'
      'group by KCZLS.CWBH,KCLLS.CostID,KCLL.DepID,BDepartment.DepName '
      'order by KCZLS.CWBH,KCLLS.CostID,KCLL.DepID,BDepartment.DepName ')
    Left = 296
    Top = 160
    object Query1CWBH: TStringField
      FieldName = 'CWBH'
      FixedChar = True
      Size = 5
    end
    object Query1CostID: TStringField
      FieldName = 'CostID'
      FixedChar = True
      Size = 10
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
    object Query1VNACC: TCurrencyField
      FieldName = 'VNACC'
      DisplayFormat = '##,#0'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 344
    Top = 160
  end
  object PopupMenu1: TPopupMenu
    Left = 240
    Top = 256
    object Detail1: TMenuItem
      Caption = 'Detail'
      OnClick = Detail1Click
    end
    object Excel: TMenuItem
      Caption = 'Excel'
      OnClick = ExcelClick
    end
  end
end
