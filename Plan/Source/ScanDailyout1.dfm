object ScanDailyout: TScanDailyout
  Left = 278
  Top = 221
  Width = 870
  Height = 500
  Caption = 'ScanDailyout'
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
  object StringGrid1: TStringGrid
    Left = 0
    Top = 65
    Width = 862
    Height = 401
    Align = alClient
    ColCount = 20
    DefaultColWidth = 60
    DefaultRowHeight = 20
    RowCount = 10
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
    ParentFont = False
    TabOrder = 2
    OnDrawCell = StringGrid1DrawCell
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 65
    Width = 862
    Height = 401
    Align = alClient
    DataSource = DS1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'DepID'
        Width = 96
        Visible = True
      end
      item
        Color = clWhite
        Expanded = False
        FieldName = 'DepName'
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'THour'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Qty'
        Width = 86
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 65
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 264
      Top = 32
      Width = 32
      Height = 16
      Caption = 'Date:'
    end
    object Label3: TLabel
      Left = 8
      Top = 32
      Width = 53
      Height = 16
      Caption = 'SpecNo:'
    end
    object Label5: TLabel
      Left = 152
      Top = 28
      Width = 34
      Height = 20
      Caption = 'Dep:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 400
      Top = 32
      Width = 35
      Height = 16
      Caption = 'Type:'
    end
    object Edit2: TEdit
      Left = 64
      Top = 24
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Button1: TButton
      Left = 568
      Top = 16
      Width = 65
      Height = 33
      Caption = 'QUERY'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 640
      Top = 16
      Width = 65
      Height = 33
      Caption = 'SWITCH'
      TabOrder = 4
      OnClick = Button2Click
    end
    object DTP1: TDateTimePicker
      Left = 296
      Top = 24
      Width = 97
      Height = 24
      Date = 39219.355266736120000000
      Format = 'yyyy/MM/dd'
      Time = 39219.355266736120000000
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 192
      Top = 24
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Button3: TButton
      Left = 712
      Top = 16
      Width = 65
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 5
      OnClick = Button3Click
    end
    object CB1: TComboBox
      Left = 440
      Top = 24
      Width = 97
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 6
      Text = 'All'
      Items.Strings = (
        'All'
        '0:Chat Out'
        '1:May In'
        '2:May Out'
        '3:Go In'
        '4:De Out')
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select sum(SCSM.Qty) as Qty,SCSM.THour,'
      'SCSM.DepID,'#39'Tot'#39' as DepName'
      'from SCSM '
      'left join DDZL on DDZL.DDBH=SCSM.DDBH '
      
        'left join XXZL on XXZL.XieXing=DDZl.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao '
      'left join BDepartment on BDepartment.ID=SCSM.DepID '
      'where SCSM.DDBH like '#39'%'#39
      'and BDepartment.DepName like '#39'%%'#39
      'and convert(varchar,SCSM.USERDate,111)='#39'2008/07/01'#39
      'group by  SCSM.DepID,SCSM.THour'
      ' union '
      
        'select sum(SCSM.Qty) as Qty,SCSM.DepID,BDepartment.DepName,SCSM.' +
        'THour'
      'from SCSM '
      'left join DDZL on DDZL.DDBH=SCSM.DDBH '
      
        'left join XXZL on XXZL.XieXing=DDZl.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao '
      'left join BDepartment on BDepartment.ID=SCSM.DepID '
      'where SCSM.DDBH like '#39'%'#39
      'and BDepartment.DepName like '#39'%%'#39
      'and  convert(varchar,SCSM.USERDate,111)='#39'2008/07/01'#39
      'group by  SCSM.DepID,BDepartment.DepName,SCSM.THour'
      'order by SCSM.DepID,SCSM.THour')
    Left = 280
    Top = 168
    object Query1DepID: TStringField
      FieldName = 'DepID'
      FixedChar = True
      Size = 50
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 3
    end
    object Query1THour: TStringField
      FieldName = 'THour'
      FixedChar = True
      Size = 10
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.0'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 320
    Top = 168
  end
  object QDep: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    UpdateObject = UpdateSQL1
    Left = 392
    Top = 216
  end
  object QHour: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    UpdateObject = UpdateSQL2
    Left = 496
    Top = 224
  end
  object UpdateSQL1: TUpdateSQL
    Left = 424
    Top = 216
  end
  object UpdateSQL2: TUpdateSQL
    Left = 528
    Top = 224
  end
end
