object MonthCalendar: TMonthCalendar
  Left = 444
  Top = 382
  Width = 1051
  Height = 500
  Caption = 'MonthCalendar'
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
    Width = 1043
    Height = 73
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label3: TLabel
      Left = 15
      Top = 43
      Width = 63
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'ETD Year:'
    end
    object Label4: TLabel
      Left = 159
      Top = 43
      Width = 39
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Month:'
    end
    object Label1: TLabel
      Left = 269
      Top = 43
      Width = 33
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Extra:'
    end
    object Label2: TLabel
      Left = 492
      Top = 43
      Width = 66
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DepName:'
    end
    object Label5: TLabel
      Left = 16
      Top = 8
      Width = 233
      Height = 16
      AutoSize = False
      Caption = #26376#20221#29983#29986#34892#20107#27511
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #26032#32048#26126#39636
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 380
      Top = 43
      Width = 37
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'GXLB:'
    end
    object Button1: TButton
      Left = 808
      Top = 32
      Width = 73
      Height = 33
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object CBX1: TComboBox
      Left = 80
      Top = 40
      Width = 65
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 1
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
        '2020'
        '2021'
        '2022'
        '2023'
        '2024'
        '2025'
        '2026'
        '2027'
        '2028'
        '2029'
        '2030')
    end
    object CBX2: TComboBox
      Left = 200
      Top = 40
      Width = 49
      Height = 24
      Style = csDropDownList
      DropDownCount = 12
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 2
      Text = '01'
      Items.Strings = (
        '01'
        '02'
        '03'
        '04'
        '05'
        '06'
        '07'
        '08'
        '09'
        '10'
        '11'
        '12')
    end
    object Button2: TButton
      Left = 896
      Top = 32
      Width = 65
      Height = 33
      Caption = 'Save'
      Enabled = False
      TabOrder = 3
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 960
      Top = 32
      Width = 65
      Height = 33
      Caption = 'Cancel'
      Enabled = False
      TabOrder = 4
      OnClick = Button3Click
    end
    object CBX3: TComboBox
      Left = 304
      Top = 40
      Width = 65
      Height = 24
      Style = csDropDownList
      DropDownCount = 9
      ItemHeight = 16
      ItemIndex = 2
      TabOrder = 5
      Text = '8'
      Items.Strings = (
        '6'
        '7'
        '8'
        '8.5'
        '9'
        '9.5'
        '10'
        '10.5'
        '11'
        '11.5'
        '12'
        '12.5'
        '13'
        '13.5'
        '14'
        '14.5'
        '15'
        '15.5'
        '16')
    end
    object CBX4: TComboBox
      Left = 560
      Top = 40
      Width = 129
      Height = 24
      ItemHeight = 16
      TabOrder = 6
    end
    object CheckBox1: TCheckBox
      Left = 696
      Top = 43
      Width = 105
      Height = 17
      Caption = 'C/S/A'
      Checked = True
      State = cbChecked
      TabOrder = 7
    end
    object cbbGXLB: TComboBox
      Left = 419
      Top = 40
      Width = 52
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 8
      OnChange = cbbGXLBChange
      Items.Strings = (
        'C'
        'S'
        'A')
    end
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 73
    Width = 1043
    Height = 396
    Align = alClient
    ColCount = 8
    DefaultRowHeight = 32
    RowCount = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnDblClick = StringGrid1DblClick
    OnDrawCell = StringGrid1DrawCell
    OnKeyPress = StringGrid1KeyPress
    ColWidths = (
      64
      92
      84
      83
      88
      80
      81
      82)
  end
  object SCRL: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select *'
      'from SCRL')
    UpdateObject = UpSQL1
    Left = 448
    Top = 168
  end
  object DS1: TDataSource
    DataSet = SCRL
    Left = 488
    Top = 168
  end
  object UpSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update SCRL'
      'set'
      '  SCYEAR = :SCYEAR,'
      '  SCMONTH = :SCMONTH,'
      '  SCDay = :SCDay,'
      '  DepNO = :DepNO,'
      '  GSBH = :GSBH,'
      '  SCGS = :SCGS,'
      '  USERDATE = :USERDATE,'
      '  USERID = :USERID,'
      '  YN = :YN'
      'where'
      '  SCYEAR = :OLD_SCYEAR and'
      '  SCMONTH = :OLD_SCMONTH and'
      '  SCDay = :OLD_SCDay and'
      '  DepNO = :OLD_DepNO')
    InsertSQL.Strings = (
      'insert into SCRL'
      
        '  (SCYEAR, SCMONTH, SCDay, DepNO, GSBH, SCGS, USERDATE, USERID, ' +
        'YN)'
      'values'
      
        '  (:SCYEAR, :SCMONTH, :SCDay, :DepNO, :GSBH, :SCGS, :USERDATE, :' +
        'USERID, '
      '   :YN)')
    DeleteSQL.Strings = (
      'delete from SCRL'
      'where'
      '  SCYEAR = :OLD_SCYEAR and'
      '  SCMONTH = :OLD_SCMONTH and'
      '  SCDay = :OLD_SCDay and'
      '  DepNO = :OLD_DepNO')
    Left = 448
    Top = 200
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 312
    Top = 160
  end
  object QDep: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select ID,DepName from (select ID,DepName'
      'from BDepartment'
      'where GSBH=:GSBH'
      
        'and sumline = (select sumline from BDepartment where  depname =:' +
        'DepName and GSBH=:GSBH)'
      'union all'
      'select ID,DepName'
      'from BDepartment'
      'where GSBH=:GSBH'
      'and DepName=:DepName)BDepartment'
      'group by ID,DepName'
      'order by ID')
    Left = 312
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'GSBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DepName'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'GSBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'GSBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DepName'
        ParamType = ptUnknown
      end>
  end
end
