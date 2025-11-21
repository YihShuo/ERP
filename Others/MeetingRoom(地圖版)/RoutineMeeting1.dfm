object RoutineMeeting: TRoutineMeeting
  Left = 429
  Top = 408
  BorderStyle = bsDialog
  Caption = 'RoutineMeeting'
  ClientHeight = 332
  ClientWidth = 863
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = #24494#36575#27491#40657#39636
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 863
    Height = 120
    Align = alTop
    Caption = 'Booking'
    TabOrder = 0
    object Label2: TLabel
      Left = 28
      Top = 48
      Width = 37
      Height = 28
      AutoSize = False
      Caption = 'Time'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object Label3: TLabel
      Left = 178
      Top = 48
      Width = 12
      Height = 28
      AutoSize = False
      Caption = '~'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object Label4: TLabel
      Left = 20
      Top = 16
      Width = 45
      Height = 28
      AutoSize = False
      Caption = 'Room'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object Label9: TLabel
      Left = 236
      Top = 48
      Width = 16
      Height = 28
      AutoSize = False
      Caption = #65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object Label8: TLabel
      Left = 116
      Top = 48
      Width = 16
      Height = 28
      AutoSize = False
      Caption = #65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object Label5: TLabel
      Left = 317
      Top = 16
      Width = 108
      Height = 28
      AutoSize = False
      Caption = 'Meeting Topic'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object Label6: TLabel
      Left = 343
      Top = 48
      Width = 82
      Height = 28
      AutoSize = False
      Caption = 'Participant'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object Label7: TLabel
      Left = 353
      Top = 80
      Width = 72
      Height = 28
      AutoSize = False
      Caption = 'Applicant'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object ComboBox1: TComboBox
      Left = 72
      Top = 48
      Width = 49
      Height = 28
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ItemHeight = 20
      ItemIndex = 2
      ParentFont = False
      TabOrder = 0
      Text = '09'
      Items.Strings = (
        '07'
        '08'
        '09'
        '10'
        '11'
        '12'
        '13'
        '14'
        '15'
        '16'
        '17'
        '18')
    end
    object ComboBox2: TComboBox
      Left = 128
      Top = 48
      Width = 49
      Height = 28
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ItemHeight = 20
      ItemIndex = 0
      ParentFont = False
      TabOrder = 1
      Text = '00'
      Items.Strings = (
        '00'
        '10'
        '20'
        '30'
        '40'
        '50')
    end
    object ComboBox3: TComboBox
      Left = 192
      Top = 48
      Width = 49
      Height = 28
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ItemHeight = 20
      ItemIndex = 3
      ParentFont = False
      TabOrder = 2
      Text = '10'
      Items.Strings = (
        '07'
        '08'
        '09'
        '10'
        '11'
        '12'
        '13'
        '14'
        '15'
        '16'
        '17'
        '18')
    end
    object ComboBox4: TComboBox
      Left = 248
      Top = 48
      Width = 49
      Height = 28
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ItemHeight = 20
      ItemIndex = 0
      ParentFont = False
      TabOrder = 3
      Text = '00'
      Items.Strings = (
        '00'
        '20'
        '30'
        '40'
        '50')
    end
    object Edit2: TEdit
      Left = 432
      Top = 16
      Width = 417
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object Edit3: TEdit
      Left = 432
      Top = 48
      Width = 417
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Edit4: TEdit
      Left = 432
      Top = 80
      Width = 417
      Height = 28
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object ComboBox5: TComboBox
      Left = 72
      Top = 16
      Width = 225
      Height = 28
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ItemHeight = 20
      ParentFont = False
      TabOrder = 7
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 120
    Width = 863
    Height = 121
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object BoxDaily: TGroupBox
      Left = 121
      Top = 0
      Width = 742
      Height = 121
      Align = alClient
      TabOrder = 2
      Visible = False
      object CB_EveryCustomDay: TCheckBox
        Left = 12
        Top = 18
        Width = 125
        Height = 17
        Caption = 'Every'#12288#12288#12288#12288'day(s)'
        Checked = True
        State = cbChecked
        TabOrder = 1
        OnClick = CB_EveryCustomDayClick
      end
      object ED_DailyDay: TEdit
        Left = 64
        Top = 15
        Width = 33
        Height = 23
        TabOrder = 0
        Text = '1'
      end
      object CB_EveryWeekDay: TCheckBox
        Left = 12
        Top = 48
        Width = 213
        Height = 17
        Caption = 'Every workday (Monday ~ Saturday)'
        TabOrder = 2
        OnClick = CB_EveryWeekDayClick
      end
    end
    object BoxMonthly: TGroupBox
      Left = 121
      Top = 0
      Width = 742
      Height = 121
      Align = alClient
      TabOrder = 3
      Visible = False
      object CB_DayOfMonth: TCheckBox
        Left = 12
        Top = 18
        Width = 229
        Height = 17
        Caption = 'Day'#12288#12288#12288#12288'of every'#12288#12288#12288#12288'month(s)'
        Checked = True
        State = cbChecked
        TabOrder = 1
        OnClick = CB_DayOfMonthClick
      end
      object ED_MonthlyDay: TEdit
        Left = 55
        Top = 15
        Width = 33
        Height = 23
        TabOrder = 0
        Text = '12'
      end
      object CB_CustomDayOfMonth: TCheckBox
        Left = 12
        Top = 48
        Width = 335
        Height = 17
        Caption = 'The'#12288#12288#12288#12288#12288#12288#12288#12288#12288#12288#12288#12288#12288#12288#12288'of every'#12288#12288#12288#12288'month(s)'
        TabOrder = 2
        OnClick = CB_CustomDayOfMonthClick
      end
      object ED_MonthlyMonth1: TEdit
        Left = 142
        Top = 15
        Width = 33
        Height = 23
        TabOrder = 3
        Text = '1'
      end
      object CBox_Order1: TComboBox
        Left = 54
        Top = 44
        Width = 65
        Height = 23
        Style = csDropDownList
        DropDownCount = 5
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = []
        ItemHeight = 15
        ItemIndex = 0
        ParentFont = False
        TabOrder = 4
        Text = 'first'
        Items.Strings = (
          'first'
          'second'
          'third'
          'fourth'
          'fifth')
      end
      object CBox_Week1: TComboBox
        Left = 119
        Top = 44
        Width = 90
        Height = 23
        Style = csDropDownList
        DropDownCount = 7
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = []
        ItemHeight = 15
        ItemIndex = 1
        ParentFont = False
        TabOrder = 5
        Text = 'Monday'
        Items.Strings = (
          'Sunday'
          'Monday'
          'Tuesday'
          'Wednesday'
          'Thursday'
          'Friday'
          'Saturday')
      end
      object ED_MonthlyMonth2: TEdit
        Left = 262
        Top = 44
        Width = 33
        Height = 23
        Enabled = False
        TabOrder = 6
        Text = '1'
      end
    end
    object BoxYearly: TGroupBox
      Left = 121
      Top = 0
      Width = 742
      Height = 121
      Align = alClient
      TabOrder = 4
      Visible = False
      object Label11: TLabel
        Left = 12
        Top = 18
        Width = 139
        Height = 15
        Caption = 'Recur every'#12288#12288#12288#12288'year(s)'
      end
      object ED_Year: TEdit
        Left = 78
        Top = 15
        Width = 33
        Height = 23
        TabOrder = 0
        Text = '1'
      end
      object CB_OnYearDate: TCheckBox
        Left = 13
        Top = 44
        Width = 45
        Height = 17
        Caption = 'On:'
        Checked = True
        State = cbChecked
        TabOrder = 1
        OnClick = CB_OnYearDateClick
      end
      object CB_OnTheCustomDate: TCheckBox
        Left = 13
        Top = 69
        Width = 181
        Height = 17
        Caption = 'On the:'#12288#12288#12288#12288#12288#12288#12288#12288#12288'of'
        TabOrder = 2
        OnClick = CB_OnTheCustomDateClick
      end
      object CBox_Month1: TComboBox
        Left = 77
        Top = 40
        Width = 87
        Height = 23
        Style = csDropDownList
        DropDownCount = 12
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = []
        ItemHeight = 15
        ItemIndex = 11
        ParentFont = False
        TabOrder = 3
        Text = 'December'
        Items.Strings = (
          'January'
          'February'
          'March'
          'April'
          'May'
          'June'
          'July'
          'August'
          'Septemper'
          'October'
          'November'
          'December')
      end
      object ED_Date: TEdit
        Left = 167
        Top = 40
        Width = 33
        Height = 23
        TabOrder = 4
        Text = '12'
      end
      object CBox_Month2: TComboBox
        Left = 77
        Top = 65
        Width = 87
        Height = 23
        Style = csDropDownList
        DropDownCount = 12
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = []
        ItemHeight = 15
        ItemIndex = 11
        ParentFont = False
        TabOrder = 5
        Text = 'December'
        Items.Strings = (
          'January'
          'February'
          'March'
          'April'
          'May'
          'June'
          'July'
          'August'
          'Septemper'
          'October'
          'November'
          'December')
      end
      object CBox_Order2: TComboBox
        Left = 187
        Top = 65
        Width = 65
        Height = 23
        Style = csDropDownList
        DropDownCount = 5
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = []
        ItemHeight = 15
        ItemIndex = 0
        ParentFont = False
        TabOrder = 6
        Text = 'first'
        Items.Strings = (
          'first'
          'second'
          'third'
          'fourth'
          'fifth')
      end
      object CBox_Week2: TComboBox
        Left = 252
        Top = 65
        Width = 90
        Height = 23
        Style = csDropDownList
        DropDownCount = 7
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = []
        ItemHeight = 15
        ItemIndex = 1
        ParentFont = False
        TabOrder = 7
        Text = 'Monday'
        Items.Strings = (
          'Sunday'
          'Monday'
          'Tuesday'
          'Wednesday'
          'Thursday'
          'Friday'
          'Saturday')
      end
    end
    object BoxWeekly: TGroupBox
      Left = 121
      Top = 0
      Width = 742
      Height = 121
      Align = alClient
      TabOrder = 0
      object Label10: TLabel
        Left = 12
        Top = 18
        Width = 164
        Height = 15
        Caption = 'Recur every'#12288#12288#12288#12288'week(s) on:'
      end
      object ED_WeeklyWeek: TEdit
        Left = 78
        Top = 15
        Width = 33
        Height = 23
        TabOrder = 0
        Text = '1'
      end
      object RG2: TRadioGroup
        Left = 12
        Top = 38
        Width = 341
        Height = 65
        Columns = 4
        ItemIndex = 5
        Items.Strings = (
          'Sunday'
          'Thursday'
          'Monday'
          'Friday'
          'Tuesday'
          'Saturday'
          'Wednesday')
        TabOrder = 1
      end
    end
    object RG1: TRadioGroup
      Left = 0
      Top = 0
      Width = 121
      Height = 121
      Align = alLeft
      Caption = 'Recurrence Pattern'
      ItemIndex = 1
      Items.Strings = (
        'Daily'
        'Weekly'
        'Monthly'
        'Yearly')
      TabOrder = 1
      OnClick = RG1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 241
    Width = 863
    Height = 48
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object GroupBox2: TGroupBox
      Left = 0
      Top = 0
      Width = 863
      Height = 48
      Align = alClient
      Caption = 'Range Of Recurrence'
      TabOrder = 0
      object Label12: TLabel
        Left = 12
        Top = 21
        Width = 187
        Height = 15
        Caption = 'Start:'#12288#12288#12288#12288#12288#12288#12288#12288#12288#12288#12288'End By:'
      end
      object DTP1: TDateTimePicker
        Left = 46
        Top = 17
        Width = 91
        Height = 23
        Date = 44177.567665995370000000
        Format = 'yyyy/MM/dd'
        Time = 44177.567665995370000000
        TabOrder = 0
      end
      object DTP2: TDateTimePicker
        Left = 206
        Top = 17
        Width = 91
        Height = 23
        Date = 44177.567665995370000000
        Format = 'yyyy/MM/dd'
        Time = 44177.567665995370000000
        TabOrder = 1
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 289
    Width = 863
    Height = 43
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 3
    object Button1: TButton
      Left = 347
      Top = 8
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 440
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 832
    Top = 160
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=Erp@admin2309;Persist Security Info' +
      '=True;User ID=tyxuan;Initial Catalog=LIY_TYXUAN;Data Source=192.' +
      '168.23.9'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 832
    Top = 128
  end
  object ADOQUpdate: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 832
    Top = 192
  end
end
