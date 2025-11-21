object DailyActualHour: TDailyActualHour
  Left = 332
  Top = 179
  Width = 911
  Height = 480
  Caption = 'Daily Actual Hour'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
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
    Width = 895
    Height = 57
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 19
      Width = 62
      Height = 16
      Caption = 'Plan Year:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 160
      Top = 22
      Width = 39
      Height = 16
      Caption = 'Month:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 272
      Top = 21
      Width = 66
      Height = 16
      Caption = 'DepName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 500
      Top = 8
      Width = 73
      Height = 33
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 740
      Top = 8
      Width = 65
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 580
      Top = 8
      Width = 73
      Height = 33
      Caption = 'Save'
      TabOrder = 2
      OnClick = Button3Click
    end
    object CBX2: TComboBox
      Left = 77
      Top = 16
      Width = 65
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 3
    end
    object CBX3: TComboBox
      Left = 200
      Top = 16
      Width = 49
      Height = 24
      Style = csDropDownList
      DropDownCount = 12
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 8
      ParentFont = False
      TabOrder = 4
      Text = '09'
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
    object Edit1: TEdit
      Left = 342
      Top = 16
      Width = 131
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Button4: TButton
      Left = 660
      Top = 8
      Width = 73
      Height = 33
      Caption = 'Cancel'
      TabOrder = 6
      OnClick = Button4Click
    end
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 57
    Width = 895
    Height = 384
    Align = alClient
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowMoving, goColMoving, goEditing]
    TabOrder = 1
    OnDrawCell = StringGrid1DrawCell
    OnKeyPress = StringGrid1KeyPress
  end
  object SCRL: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select*'
      'from SCRL')
    UpdateObject = UpSQl2
    Left = 400
    Top = 104
  end
  object DS1: TDataSource
    DataSet = SCRL
    Left = 432
    Top = 104
  end
  object QDep: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select ID,DepName,ID as RecNum'
      'from BDepartment'
      'where ProYN=1')
    UpdateObject = UpdateSQL1
    Left = 368
    Top = 104
  end
  object UpdateSQL1: TUpdateSQL
    Left = 368
    Top = 136
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    Left = 336
    Top = 104
  end
  object UpSQl2: TUpdateSQL
    ModifySQL.Strings = (
      'Update SCRL'
      'set  SCGS1=:SCGS1,'
      '      USERDATE1=:USERDATE1,'
      '      USERID1=:USERID1'
      'where SCYear=:OLD_SCYear and'
      '         SCMonth=:OLD_SCMonth and'
      '         SCDay=:OLD_SCDay and'
      '         DepNo=:OLD_DepNo')
    InsertSQL.Strings = (
      'Insert into SCRL'
      
        '  (SCYear, SCMonth, SCDay, DepNo, GSBH, SCGS, USERDATE, USERID, ' +
        'YN, SCGS1, USERDATE1, USERID1)'
      'values'
      
        '  (:SCYear, :SCMonth, :SCDay, :DepNo, :GSBH, :SCGS, :USERDATE, :' +
        'USERID, :YN, :SCGS1, :USERDATE1, :USERID1)')
    Left = 400
    Top = 136
  end
end
