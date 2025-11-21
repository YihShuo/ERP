object ReplenishFeeDep: TReplenishFeeDep
  Left = 283
  Top = 209
  Width = 870
  Height = 500
  BorderIcons = [biSystemMenu]
  Caption = 'ReplenishFeeDep'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 57
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label4: TLabel
      Left = 16
      Top = 24
      Width = 63
      Height = 16
      Caption = 'ETD Year:'
    end
    object Label5: TLabel
      Left = 160
      Top = 24
      Width = 39
      Height = 16
      Caption = 'Month:'
    end
    object Label6: TLabel
      Left = 280
      Top = 24
      Width = 51
      Height = 16
      Caption = 'Reason:'
    end
    object Button1: TButton
      Left = 496
      Top = 16
      Width = 89
      Height = 33
      Caption = 'QUERY'
      TabOrder = 2
      OnClick = Button1Click
    end
    object CBX2: TComboBox
      Left = 88
      Top = 16
      Width = 65
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 2
      TabOrder = 0
      Text = '2008'
      Items.Strings = (
        '2006'
        '2007'
        '2008'
        '2009'
        '2010'
        '2011'
        '2012'
        '2013'
        '2014'
        '2015'
        '2016'
        '2017'
        '2018'
        '2019'
        '2020')
    end
    object CBX3: TComboBox
      Left = 208
      Top = 16
      Width = 49
      Height = 24
      DropDownCount = 12
      ItemHeight = 16
      TabOrder = 1
      Text = '1'
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11'
        '12')
    end
    object Button2: TButton
      Left = 600
      Top = 16
      Width = 89
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 3
      OnClick = Button2Click
    end
    object Edit1: TEdit
      Left = 336
      Top = 16
      Width = 113
      Height = 24
      TabOrder = 4
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 57
    Width = 862
    Height = 409
    Align = alClient
    DataSource = DS1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DepID'
        Width = 133
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DepName'
        Width = 160
        Visible = True
      end
      item
        Color = 13172735
        Expanded = False
        FieldName = 'VNACC'
        Width = 191
        Visible = True
      end>
  end
  object DTP1: TDateTimePicker
    Left = 72
    Top = 200
    Width = 105
    Height = 21
    Date = 39535.671667569450000000
    Format = 'yyyy/MM/dd'
    Time = 39535.671667569450000000
    TabOrder = 2
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
    TabOrder = 3
    Visible = False
  end
  object Query1: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'select round(sum(KCLLS.VNPrice*KCLLS.Qty),0) as VNACC,KCLL.DepID' +
        ',Bdepartment.DepName'
      'from KCLLS'
      'left join KCLL on KCLL.LLNO=KCLLS.LLNO'
      'left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH '
      'left join BDepartment on BDepartment.ID=KCLL.DepID '
      
        'where convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) b' +
        'etween '#39'2008/01/01'#39
      ' and '#39'2008/01/31'#39
      ' and KCLLS.Qty<>0'
      'and KCLL.SCBH='#39'ZZZZZZZZZZ'#39
      
        'and not exists(select ZLZL.ZLBH from ZLZL where ZLZL.ZLBH=KCLLS.' +
        'SCBH)'
      'and SCBLYY.YWSM like '#39'%'#39
      'group by KCLL.DepID,BDepartment.DepName '
      'order by KCLL.DepID,BDepartment.DepName ')
    UpdateObject = UpdateSQL1
    Left = 296
    Top = 160
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
  object UpdateSQL1: TUpdateSQL
    Left = 296
    Top = 192
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 344
    Top = 160
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 168
    Top = 152
  end
  object PopupMenu1: TPopupMenu
    Left = 240
    Top = 256
    object Detail1: TMenuItem
      Caption = 'Detail'
      OnClick = Detail1Click
    end
  end
end
