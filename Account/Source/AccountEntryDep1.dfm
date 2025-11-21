object AccountEntryDep: TAccountEntryDep
  Left = 266
  Top = 192
  Width = 870
  Height = 500
  Caption = 'AccountEntrySupplier'
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
    TabOrder = 0
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
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'CostID'
        Footers = <>
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'ZSBH'
        Footers = <>
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'VNACC'
        Footers = <>
        Width = 85
      end>
  end
  object DTP1: TDateTimePicker
    Left = 96
    Top = 312
    Width = 105
    Height = 21
    Date = 39535.671667569450000000
    Format = 'yyyy/MM/dd'
    Time = 39535.671667569450000000
    TabOrder = 1
    Visible = False
  end
  object DTP2: TDateTimePicker
    Left = 96
    Top = 352
    Width = 105
    Height = 21
    Date = 39535.671667569450000000
    Format = 'yyyy/MM/dd'
    Time = 39535.671667569450000000
    TabOrder = 2
    Visible = False
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = AccountEntry.DS1
    SQL.Strings = (
      
        'select KCZLS.CWBH,KCRKS.CostID,KCRK.ZSBH,ZSZL.ZSYWJC,round(sum(K' +
        'CRKS.VNACC),0) as VNACC'
      'from KCRKS'
      'left join KCRK on KCRK.RKNO=KCRKS.RKNO'
      'left join KCZLS on KCZLS.CLBH=KCRKS.CLBH '
      'left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH '
      
        'where convert(smalldatetime,convert(varchar,KCRK.USERDate,111)) ' +
        'between '#39'2008/04/01'#39
      ' and '#39'2008/04/30'#39
      ' and KCRKS.Qty<>0'
      'and KCRKS.CostID='#39'331VN'#39
      'and KCZLS.CWBH='#39'152'#39
      'group by KCZLS.CWBH,KCRKS.CostID,KCRK.ZSBH,ZSZL.ZSYWJC '
      'order by KCZLS.CWBH,KCRKS.CostID ,KCRK.ZSBH,ZSZL.ZSYWJC')
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
    object Query1ZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object Query1ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Query1VNACC: TFloatField
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
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
end
