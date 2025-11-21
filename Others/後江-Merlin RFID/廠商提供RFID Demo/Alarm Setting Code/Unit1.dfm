object Form1: TForm1
  Left = 703
  Top = 183
  Width = 954
  Height = 515
  Caption = #22810'??'#31105#20989'??'#29992'?'#20363
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl30: TLabel
    Left = 18
    Top = 16
    Width = 18
    Height = 13
    Caption = #21345'?'
  end
  object stat1: TStatusBar
    Left = 0
    Top = 457
    Width = 938
    Height = 19
    Panels = <
      item
        Width = 120
      end>
  end
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 433
    Height = 457
    Align = alLeft
    TabOrder = 1
    object lv1: TListView
      Left = 1
      Top = 42
      Width = 431
      Height = 414
      Align = alClient
      Checkboxes = True
      Columns = <
        item
          Caption = #26426'?'
        end
        item
          Caption = 'IP'
          Width = 90
        end
        item
          Caption = #31471#21475
          Width = 40
        end
        item
          Caption = #24207#21015'?'
          Width = 120
        end
        item
          Caption = 'MAC'
          Width = 120
        end>
      RowSelect = True
      TabOrder = 0
      ViewStyle = vsReport
    end
    object pnl2: TPanel
      Left = 1
      Top = 1
      Width = 431
      Height = 41
      Align = alTop
      TabOrder = 1
      object btnSearch: TButton
        Left = 8
        Top = 8
        Width = 75
        Height = 25
        Caption = #25628#26426
        TabOrder = 0
        OnClick = btnSearchClick
      end
      object btnConnect: TButton
        Left = 93
        Top = 8
        Width = 75
        Height = 25
        Caption = '?'#26426
        TabOrder = 1
        OnClick = btnConnectClick
      end
    end
  end
  object pgc1: TPageControl
    Left = 433
    Top = 0
    Width = 505
    Height = 457
    ActivePage = ts2
    Align = alClient
    TabOrder = 2
    object ts1: TTabSheet
      Caption = #25511#21046#22120#25805#20316
      object btnReadTime: TButton
        Left = 3
        Top = 8
        Width = 229
        Height = 25
        Caption = '?'#21462'??'
        TabOrder = 0
        OnClick = btnReadTimeClick
      end
      object btnSetTime: TButton
        Left = 3
        Top = 46
        Width = 229
        Height = 25
        Caption = '?'#32622'??'
        TabOrder = 1
        OnClick = btnSetTimeClick
      end
      object btnInitialDevice: TButton
        Left = 3
        Top = 159
        Width = 229
        Height = 25
        Caption = #21021#22987#21270
        TabOrder = 2
        OnClick = btnInitialDeviceClick
      end
      object btnSetClockID: TButton
        Left = 3
        Top = 121
        Width = 229
        Height = 25
        Caption = #20462#25913#26426'?'
        TabOrder = 3
        OnClick = btnSetClockIDClick
      end
      object btnSetCommParameter: TButton
        Left = 3
        Top = 83
        Width = 229
        Height = 25
        Caption = #20462#25913'IP'#21450#31471#21475'(?'#25773#26041#24335#19981#38656'?'#26426')'
        TabOrder = 4
        OnClick = btnSetCommParameterClick
      end
      object Button1: TButton
        Left = 8
        Top = 200
        Width = 75
        Height = 25
        Caption = 'Button1'
        TabOrder = 5
        OnClick = Button1Click
      end
      object Edit1: TEdit
        Left = 8
        Top = 240
        Width = 145
        Height = 21
        TabOrder = 6
        Text = 'Edit1'
      end
    end
    object ts2: TTabSheet
      Caption = '??'#32622
      ImageIndex = 1
      object pnl4: TPanel
        Left = 0
        Top = 0
        Width = 497
        Height = 429
        Align = alClient
        TabOrder = 0
        object pgc2: TPageControl
          Left = 1
          Top = 1
          Width = 495
          Height = 427
          ActivePage = ts6
          Align = alClient
          TabOrder = 0
          object ts6: TTabSheet
            Caption = '?'#25805#20316
            ImageIndex = 3
            object lbl34: TLabel
              Left = 8
              Top = 16
              Width = 41
              Height = 13
              AutoSize = False
              Caption = '???'
            end
            object lbl33: TLabel
              Left = 135
              Top = 16
              Width = 137
              Height = 13
              AutoSize = False
              Caption = #27880#65306'????0?'#22987
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label1: TLabel
              Left = 221
              Top = 228
              Width = 30
              Height = 13
              Caption = '??'#23494'?'
            end
            object Label2: TLabel
              Left = 221
              Top = 251
              Width = 36
              Height = 13
              Caption = #36229'?'#23494'?'
            end
            object Label3: TLabel
              Left = 356
              Top = 228
              Width = 36
              Height = 13
              Caption = '?'#36843#23494'?'
            end
            object Label4: TLabel
              Left = 273
              Top = 51
              Width = 60
              Height = 13
              Caption = #33258'?'#20219'?'#27169#24335
              Transparent = True
            end
            object btnOpenDoor: TButton
              Left = 260
              Top = 6
              Width = 85
              Height = 25
              Caption = '??'
              TabOrder = 0
              OnClick = btnOpenDoorClick
            end
            object btnCloseDoor: TButton
              Left = 360
              Top = 6
              Width = 85
              Height = 25
              Caption = '??'
              TabOrder = 1
              OnClick = btnCloseDoorClick
            end
            object btnReadMSubDeviceCtrl: TButton
              Left = 8
              Top = 42
              Width = 125
              Height = 25
              Caption = '?'#21462'???'#20449#24687
              TabOrder = 2
              OnClick = btnReadMSubDeviceCtrlClick
            end
            object cbb2: TComboBox
              Left = 56
              Top = 8
              Width = 73
              Height = 21
              ItemHeight = 13
              TabOrder = 3
              Items.Strings = (
                '0'
                '1'
                '2'
                '3')
            end
            object grp1: TGroupBox
              Left = 8
              Top = 79
              Width = 361
              Height = 75
              Caption = '????'
              TabOrder = 4
              object lbl35: TLabel
                Left = 8
                Top = 24
                Width = 83
                Height = 13
                AutoSize = False
                Caption = '??'#20445#25345'??'
              end
              object lbl37: TLabel
                Left = 8
                Top = 51
                Width = 116
                Height = 13
                AutoSize = False
                Caption = '??'#36229'??'#35686'??'
              end
              object lbl38: TLabel
                Left = 204
                Top = 19
                Width = 86
                Height = 13
                AutoSize = False
                Caption = '?'#35686#24310'???'
              end
              object edtKeepOpenTime: TEdit
                Left = 127
                Top = 20
                Width = 57
                Height = 21
                TabOrder = 0
                Text = '0'
              end
              object edtOpenTimeOut: TEdit
                Left = 127
                Top = 46
                Width = 57
                Height = 21
                TabOrder = 1
                Text = '0'
              end
              object edtWarnDelayTime: TEdit
                Left = 295
                Top = 14
                Width = 57
                Height = 21
                TabOrder = 2
                Text = '0'
              end
            end
            object grp2: TGroupBox
              Left = 8
              Top = 160
              Width = 465
              Height = 52
              Caption = '?'#20837'??'
              TabOrder = 5
              object lbl41: TLabel
                Left = 222
                Top = 24
                Width = 67
                Height = 13
                AutoSize = False
                Caption = '?'#21161'?'#20837'1'
              end
              object lbl42: TLabel
                Left = 325
                Top = 24
                Width = 12
                Height = 13
                AutoSize = False
                Caption = '2'
              end
              object lbl47: TLabel
                Left = 369
                Top = 24
                Width = 12
                Height = 13
                AutoSize = False
                Caption = '3'
              end
              object lbl48: TLabel
                Left = 413
                Top = 24
                Width = 12
                Height = 13
                AutoSize = False
                Caption = '4'
              end
              object Label5: TLabel
                Left = 56
                Top = 8
                Width = 21
                Height = 13
                Caption = '(0-3)'
              end
              object Label6: TLabel
                Left = 159
                Top = 8
                Width = 21
                Height = 13
                Caption = '(4-7)'
              end
              object edtAuxiliary1Ctrl: TEdit
                Left = 290
                Top = 20
                Width = 30
                Height = 21
                TabOrder = 0
                Text = '0'
              end
              object edtAuxiliary2Ctrl: TEdit
                Left = 335
                Top = 20
                Width = 30
                Height = 21
                TabOrder = 1
                Text = '0'
              end
              object edtAuxiliary3Ctrl: TEdit
                Left = 380
                Top = 20
                Width = 30
                Height = 21
                TabOrder = 2
                Text = '0'
              end
              object edtAuxiliary4Ctrl: TEdit
                Left = 423
                Top = 20
                Width = 30
                Height = 21
                TabOrder = 3
                Text = '0'
              end
              object edtMagneticCtrl: TEdit
                Left = 57
                Top = 20
                Width = 23
                Height = 21
                TabOrder = 4
                Text = '0'
              end
              object edtSwitchCtrl: TEdit
                Left = 158
                Top = 20
                Width = 23
                Height = 21
                TabOrder = 5
                Text = '0'
              end
              object cbMagneticCtrl: TCheckBox
                Left = 8
                Top = 24
                Width = 46
                Height = 17
                Caption = '?'#30913
                TabOrder = 6
              end
              object chkSwitchCtrl: TCheckBox
                Left = 87
                Top = 24
                Width = 65
                Height = 17
                Caption = '??'#25353'?'
                TabOrder = 7
              end
            end
            object grp3: TGroupBox
              Left = 8
              Top = 216
              Width = 211
              Height = 52
              Caption = '?'#20986'??'
              TabOrder = 6
              object Label7: TLabel
                Left = 80
                Top = 8
                Width = 21
                Height = 13
                Caption = '(0-3)'
              end
              object Label8: TLabel
                Left = 178
                Top = 8
                Width = 21
                Height = 13
                Caption = '(4-7)'
              end
              object edtDoorCtrl: TEdit
                Left = 78
                Top = 20
                Width = 25
                Height = 21
                TabOrder = 0
                Text = '0'
              end
              object edtAlarmCtrl: TEdit
                Left = 175
                Top = 20
                Width = 31
                Height = 21
                TabOrder = 1
                Text = '0'
              end
              object chkDoorCtrl: TCheckBox
                Left = 8
                Top = 24
                Width = 68
                Height = 17
                Caption = '???'#20986
                TabOrder = 2
              end
              object chkAlarmCtrl: TCheckBox
                Left = 107
                Top = 24
                Width = 68
                Height = 17
                Caption = '?'#35686'?'#20986
                TabOrder = 3
              end
            end
            object btnSetMSubDeviceCtrl: TButton
              Left = 144
              Top = 42
              Width = 125
              Height = 25
              Caption = '?'#32622'???'#20449#24687
              TabOrder = 7
              OnClick = btnSetMSubDeviceCtrlClick
            end
            object grp4: TGroupBox
              Left = 8
              Top = 273
              Width = 281
              Height = 128
              Caption = #20854#20182
              TabOrder = 8
              object lbl45: TLabel
                Left = 8
                Top = 24
                Width = 53
                Height = 13
                AutoSize = False
                Caption = '????'
              end
              object lbl46: TLabel
                Left = 8
                Top = 48
                Width = 56
                Height = 13
                AutoSize = False
                Caption = #20986'???'
              end
              object lbl39: TLabel
                Left = 132
                Top = 24
                Width = 57
                Height = 13
                AutoSize = False
                Caption = #24037#20316#27169#24335
              end
              object lbl40: TLabel
                Left = 132
                Top = 48
                Width = 60
                Height = 13
                AutoSize = False
                Caption = '??'#26041#24335
              end
              object lbl56: TLabel
                Left = 8
                Top = 72
                Width = 42
                Height = 13
                Caption = #22810#21345'?'#37327
              end
              object edtInReader: TComboBox
                Left = 68
                Top = 16
                Width = 57
                Height = 21
                ItemHeight = 13
                TabOrder = 0
                Items.Strings = (
                  '255'
                  '0'
                  '1'
                  '2'
                  '3')
              end
              object edtOutReader: TComboBox
                Left = 68
                Top = 40
                Width = 57
                Height = 21
                ItemHeight = 13
                TabOrder = 1
                Items.Strings = (
                  '255'
                  '0'
                  '1'
                  '2'
                  '3')
              end
              object edtMode: TComboBox
                Left = 192
                Top = 16
                Width = 65
                Height = 21
                ItemHeight = 13
                TabOrder = 2
                Items.Strings = (
                  '1'
                  '2'
                  '3'
                  '4')
              end
              object edtOpenWay: TComboBox
                Left = 192
                Top = 40
                Width = 65
                Height = 21
                ItemHeight = 13
                TabOrder = 3
                Items.Strings = (
                  '1'
                  '2'
                  '3'
                  '4'
                  '5'
                  '6'
                  '7')
              end
              object cbbMultCount: TComboBox
                Left = 68
                Top = 64
                Width = 57
                Height = 20
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = #23435#20307
                Font.Style = []
                ItemHeight = 12
                ParentFont = False
                TabOrder = 4
                Items.Strings = (
                  '2'
                  '3'
                  '4'
                  '5'
                  '6'
                  '7'
                  '8'
                  '9'
                  '10')
              end
            end
            object edtOpenPwd: TEREdit
              Left = 280
              Top = 223
              Width = 67
              Height = 21
              MaxLength = 6
              TabOrder = 9
              Text = '0'
              Integrals = 3
              Decimals = 1
              AsInteger = 0
              InputStyle = IsHex
              Align = taLeft
            end
            object edtSupperPwd: TEREdit
              Left = 280
              Top = 246
              Width = 67
              Height = 21
              MaxLength = 6
              TabOrder = 10
              Text = '0'
              Integrals = 3
              Decimals = 1
              AsInteger = 0
              InputStyle = IsHex
              Align = taLeft
            end
            object edtIntimidatePwd: TEREdit
              Left = 408
              Top = 223
              Width = 61
              Height = 21
              MaxLength = 6
              TabOrder = 11
              Text = '0'
              Integrals = 3
              Decimals = 1
              AsInteger = 0
              InputStyle = IsHex
              Align = taLeft
            end
            object chkAlwaysOpen: TCheckBox
              Left = 356
              Top = 248
              Width = 97
              Height = 17
              Caption = '?'#29992#39318#20837#24120'?'
              TabOrder = 12
            end
            object rgWorkMode: TRadioGroup
              Left = 350
              Top = 39
              Width = 111
              Height = 31
              Columns = 2
              ItemIndex = 0
              Items.Strings = (
                #20572#27490
                '??')
              TabOrder = 13
            end
            object mmo2: TMemo
              Left = 296
              Top = 272
              Width = 177
              Height = 129
              Lines.Strings = (
                #24037#20316#27169#24335#65306
                '    1-'#24120'?'#27169#24335
                '    2-??'#24120'?'
                '    3-??'#24120'?'
                '    4-APB'#27169#24335
                '??'#26041#24335#65306
                '    1'#21047#21345'??'
                '    2'#21047#21345#25110#23494'?'
                '    3'#23494'???'
                '    4'#21047#21345'+?'#20154#23494'?'
                '    5'#22810#21345'??'
                '    6'#25351#23450#21345'?'
                '    7'#21047#21345'+??'#23494'?'
                '?'#30913'?'#20837':0~3'
                '??'#25353'?:4~7'
                '??'#20837#25511#21046':15'
                '???'#20986':0~3'
                '?'#21161'?'#20986':4~7'
                '??'#20986#25511#21046':15'
                '??/'#20986'???255'#34920#31034#31354)
              ScrollBars = ssVertical
              TabOrder = 14
            end
            object Button7: TButton
              Left = 384
              Top = 88
              Width = 75
              Height = 25
              Caption = '?'#31243'??'
              TabOrder = 15
              OnClick = Button7Click
            end
            object Button8: TButton
              Left = 384
              Top = 120
              Width = 75
              Height = 25
              Caption = '?'#31243'??'
              TabOrder = 16
              OnClick = Button8Click
            end
          end
          object ts3: TTabSheet
            Caption = '?'#20551#26085
            object lbl1: TLabel
              Left = 16
              Top = 16
              Width = 85
              Height = 13
              AutoSize = False
              Caption = '?'#20551#26085'??'
            end
            object lbl2: TLabel
              Left = 16
              Top = 45
              Width = 73
              Height = 13
              AutoSize = False
              Caption = '?'#22987#26085#26399
            end
            object lbl3: TLabel
              Left = 16
              Top = 74
              Width = 73
              Height = 13
              AutoSize = False
              Caption = '?'#26463#26085#26399
            end
            object lbl4: TLabel
              Left = 16
              Top = 173
              Width = 36
              Height = 13
              Caption = '?'#22987'??1'
            end
            object lbl5: TLabel
              Left = 160
              Top = 173
              Width = 36
              Height = 13
              Caption = '?'#26463'??1'
            end
            object lbl6: TLabel
              Left = 16
              Top = 199
              Width = 36
              Height = 13
              Caption = '?'#22987'??2'
            end
            object lbl7: TLabel
              Left = 160
              Top = 199
              Width = 36
              Height = 13
              Caption = '?'#26463'??2'
            end
            object lbl8: TLabel
              Left = 16
              Top = 226
              Width = 36
              Height = 13
              Caption = '?'#22987'??3'
            end
            object lbl9: TLabel
              Left = 160
              Top = 226
              Width = 36
              Height = 13
              Caption = '?'#26463'??3'
            end
            object bvl1: TBevel
              Left = 4
              Top = 96
              Width = 305
              Height = 7
              Shape = bsTopLine
            end
            object bvl2: TBevel
              Left = 4
              Top = 158
              Width = 305
              Height = 7
              Shape = bsTopLine
            end
            object lbl10: TLabel
              Left = 16
              Top = 253
              Width = 36
              Height = 13
              Caption = '?'#22987'??4'
            end
            object lbl11: TLabel
              Left = 160
              Top = 253
              Width = 36
              Height = 13
              Caption = '?'#26463'??4'
            end
            object lbl12: TLabel
              Left = 16
              Top = 280
              Width = 36
              Height = 13
              Caption = '?'#22987'??5'
            end
            object lbl13: TLabel
              Left = 160
              Top = 280
              Width = 36
              Height = 13
              Caption = '?'#26463'??5'
            end
            object lbl54: TLabel
              Left = 16
              Top = 306
              Width = 81
              Height = 13
              AutoSize = False
              Caption = '?'#22987'??6'
            end
            object lbl55: TLabel
              Left = 160
              Top = 306
              Width = 97
              Height = 13
              AutoSize = False
              Caption = '?'#26463'??6'
            end
            object edt1: TEdit
              Left = 96
              Top = 8
              Width = 121
              Height = 21
              TabOrder = 0
              Text = '1'
            end
            object chk1: TCheckBox
              Left = 16
              Top = 108
              Width = 65
              Height = 17
              Caption = #26143#26399#19968
              TabOrder = 1
              OnClick = chk1Click
            end
            object chk2: TCheckBox
              Left = 88
              Top = 108
              Width = 65
              Height = 17
              Caption = #26143#26399#20108
              TabOrder = 2
              OnClick = chk1Click
            end
            object chk3: TCheckBox
              Left = 160
              Top = 108
              Width = 65
              Height = 17
              Caption = #26143#26399#19977
              TabOrder = 3
              OnClick = chk1Click
            end
            object chk4: TCheckBox
              Left = 232
              Top = 108
              Width = 65
              Height = 17
              Caption = #26143#26399#22235
              TabOrder = 4
              OnClick = chk1Click
            end
            object chk5: TCheckBox
              Left = 16
              Top = 132
              Width = 65
              Height = 17
              Caption = #26143#26399#20116
              TabOrder = 5
              OnClick = chk1Click
            end
            object chk6: TCheckBox
              Left = 88
              Top = 132
              Width = 65
              Height = 17
              Caption = #26143#26399#20845
              TabOrder = 6
              OnClick = chk1Click
            end
            object chk7: TCheckBox
              Left = 160
              Top = 132
              Width = 65
              Height = 17
              Caption = #26143#26399#26085
              TabOrder = 7
              OnClick = chk1Click
            end
            object chk8: TCheckBox
              Left = 232
              Top = 132
              Width = 65
              Height = 17
              Caption = #20840'?'
              TabOrder = 8
              OnClick = chk8Click
            end
            object medt1: TMaskEdit
              Left = 88
              Top = 165
              Width = 49
              Height = 21
              EditMask = '99:99'
              MaxLength = 5
              TabOrder = 9
              Text = '00:00'
            end
            object medt2: TMaskEdit
              Left = 234
              Top = 165
              Width = 49
              Height = 21
              EditMask = '99:99'
              MaxLength = 5
              TabOrder = 10
              Text = '23:59'
            end
            object medt3: TMaskEdit
              Left = 88
              Top = 191
              Width = 49
              Height = 21
              EditMask = '99:99'
              MaxLength = 5
              TabOrder = 11
              Text = '00:00'
            end
            object medt4: TMaskEdit
              Left = 234
              Top = 191
              Width = 49
              Height = 21
              EditMask = '99:99'
              MaxLength = 5
              TabOrder = 12
              Text = '00:00'
            end
            object medt5: TMaskEdit
              Left = 88
              Top = 218
              Width = 49
              Height = 21
              EditMask = '99:99'
              MaxLength = 5
              TabOrder = 13
              Text = '00:00'
            end
            object medt6: TMaskEdit
              Left = 234
              Top = 218
              Width = 49
              Height = 21
              EditMask = '99:99'
              MaxLength = 5
              TabOrder = 14
              Text = '00:00'
            end
            object dtp1: TDateTimePicker
              Left = 96
              Top = 37
              Width = 121
              Height = 21
              Date = 42159.732648645830000000
              Time = 42159.732648645830000000
              TabOrder = 15
            end
            object dtp2: TDateTimePicker
              Left = 96
              Top = 66
              Width = 121
              Height = 21
              Date = 42159.732648645830000000
              Time = 42159.732648645830000000
              TabOrder = 16
            end
            object medt7: TMaskEdit
              Left = 88
              Top = 245
              Width = 50
              Height = 21
              EditMask = '99:99'
              MaxLength = 5
              TabOrder = 17
              Text = '00:00'
            end
            object medt8: TMaskEdit
              Left = 234
              Top = 245
              Width = 50
              Height = 21
              EditMask = '99:99'
              MaxLength = 5
              TabOrder = 18
              Text = '00:00'
            end
            object medt9: TMaskEdit
              Left = 88
              Top = 272
              Width = 50
              Height = 21
              EditMask = '99:99'
              MaxLength = 5
              TabOrder = 19
              Text = '00:00'
            end
            object medt10: TMaskEdit
              Left = 234
              Top = 272
              Width = 50
              Height = 21
              EditMask = '99:99'
              MaxLength = 5
              TabOrder = 20
              Text = '00:00'
            end
            object btnSetHolidayGroupEx: TButton
              Left = 16
              Top = 334
              Width = 185
              Height = 25
              Caption = '?'#32622'?'#20551#26085'(SetHolidayGroupEx)'
              TabOrder = 21
              OnClick = btnSetHolidayGroupExClick
            end
            object medt11: TMaskEdit
              Left = 88
              Top = 298
              Width = 50
              Height = 21
              EditMask = '99:99'
              MaxLength = 5
              TabOrder = 22
              Text = '00:00'
            end
            object medt12: TMaskEdit
              Left = 234
              Top = 298
              Width = 50
              Height = 21
              EditMask = '99:99'
              MaxLength = 5
              TabOrder = 23
              Text = '00:00'
            end
            object btnSetMDoorHoliday: TButton
              Left = 216
              Top = 334
              Width = 185
              Height = 25
              Caption = '?'#32622'?'#20551#26085'(SetMDoorHoliday)'
              TabOrder = 24
              OnClick = btnSetMDoorHolidayClick
            end
            object btnReadMDoorHoliday: TButton
              Left = 216
              Top = 366
              Width = 185
              Height = 25
              Caption = '?'#21462'?'#20551#26085'(ReadMDoorHoliday)'
              TabOrder = 25
              OnClick = btnReadMDoorHolidayClick
            end
          end
          object ts4: TTabSheet
            Caption = '???'
            ImageIndex = 1
            object lbl14: TLabel
              Left = 15
              Top = 16
              Width = 85
              Height = 13
              AutoSize = False
              Caption = '?????'
            end
            object lbl15: TLabel
              Left = 15
              Top = 45
              Width = 73
              Height = 13
              AutoSize = False
              Caption = '?'#22987#26085#26399
            end
            object lbl16: TLabel
              Left = 15
              Top = 74
              Width = 73
              Height = 13
              AutoSize = False
              Caption = '?'#26463#26085#26399
            end
            object bvl3: TBevel
              Left = 4
              Top = 96
              Width = 305
              Height = 7
              Shape = bsTopLine
            end
            object bvl4: TBevel
              Left = 4
              Top = 158
              Width = 305
              Height = 7
              Shape = bsTopLine
            end
            object lbl17: TLabel
              Left = 15
              Top = 173
              Width = 74
              Height = 13
              AutoSize = False
              Caption = '?'#22987'??1'
            end
            object lbl18: TLabel
              Left = 160
              Top = 173
              Width = 74
              Height = 13
              AutoSize = False
              Caption = '?'#26463'??1'
            end
            object lbl19: TLabel
              Left = 15
              Top = 199
              Width = 74
              Height = 13
              AutoSize = False
              Caption = '?'#22987'??2'
            end
            object lbl20: TLabel
              Left = 15
              Top = 226
              Width = 74
              Height = 13
              AutoSize = False
              Caption = '?'#22987'??3'
            end
            object lbl21: TLabel
              Left = 160
              Top = 226
              Width = 74
              Height = 13
              AutoSize = False
              Caption = '?'#26463'??3'
            end
            object lbl22: TLabel
              Left = 160
              Top = 253
              Width = 74
              Height = 13
              AutoSize = False
              Caption = '?'#26463'??4'
            end
            object lbl23: TLabel
              Left = 15
              Top = 253
              Width = 74
              Height = 13
              AutoSize = False
              Caption = '?'#22987'??4'
            end
            object lbl24: TLabel
              Left = 15
              Top = 280
              Width = 74
              Height = 13
              AutoSize = False
              Caption = '?'#22987'??5'
            end
            object lbl25: TLabel
              Left = 160
              Top = 280
              Width = 74
              Height = 13
              AutoSize = False
              Caption = '?'#26463'??5'
            end
            object lbl26: TLabel
              Left = 160
              Top = 199
              Width = 74
              Height = 13
              AutoSize = False
              Caption = '?'#26463'??2'
            end
            object lbl52: TLabel
              Left = 15
              Top = 308
              Width = 70
              Height = 13
              AutoSize = False
              Caption = '?'#22987'??6'
            end
            object lbl53: TLabel
              Left = 160
              Top = 308
              Width = 72
              Height = 13
              AutoSize = False
              Caption = '?'#26463'??6'
            end
            object edt2: TEdit
              Left = 96
              Top = 8
              Width = 121
              Height = 21
              TabOrder = 0
              Text = '1'
            end
            object dtp3: TDateTimePicker
              Left = 96
              Top = 37
              Width = 121
              Height = 21
              Date = 42159.732648645830000000
              Time = 42159.732648645830000000
              TabOrder = 1
            end
            object dtp4: TDateTimePicker
              Left = 96
              Top = 66
              Width = 121
              Height = 21
              Date = 42159.732648645830000000
              Time = 42159.732648645830000000
              TabOrder = 2
            end
            object chk9: TCheckBox
              Left = 15
              Top = 108
              Width = 65
              Height = 17
              Caption = #26143#26399#19968
              TabOrder = 3
              OnClick = chk9Click
            end
            object chk10: TCheckBox
              Left = 88
              Top = 108
              Width = 65
              Height = 17
              Caption = #26143#26399#20108
              TabOrder = 4
              OnClick = chk9Click
            end
            object chk11: TCheckBox
              Left = 160
              Top = 108
              Width = 65
              Height = 17
              Caption = #26143#26399#19977
              TabOrder = 5
              OnClick = chk9Click
            end
            object chk12: TCheckBox
              Left = 232
              Top = 108
              Width = 65
              Height = 17
              Caption = #26143#26399#22235
              TabOrder = 6
              OnClick = chk9Click
            end
            object chk13: TCheckBox
              Left = 16
              Top = 132
              Width = 65
              Height = 17
              Caption = #26143#26399#20116
              TabOrder = 7
              OnClick = chk9Click
            end
            object chk14: TCheckBox
              Left = 88
              Top = 132
              Width = 65
              Height = 17
              Caption = #26143#26399#20845
              TabOrder = 8
              OnClick = chk9Click
            end
            object chk15: TCheckBox
              Left = 160
              Top = 132
              Width = 65
              Height = 17
              Caption = #26143#26399#26085
              TabOrder = 9
              OnClick = chk9Click
            end
            object chk16: TCheckBox
              Left = 232
              Top = 132
              Width = 65
              Height = 17
              Caption = #20840'?'
              TabOrder = 10
              OnClick = chk16Click
            end
            object medt13: TMaskEdit
              Left = 87
              Top = 165
              Width = 50
              Height = 21
              EditMask = '99:99'
              MaxLength = 5
              TabOrder = 11
              Text = '00:00'
            end
            object medt14: TMaskEdit
              Left = 234
              Top = 165
              Width = 50
              Height = 21
              EditMask = '99:99'
              MaxLength = 5
              TabOrder = 12
              Text = '23:59'
            end
            object medt15: TMaskEdit
              Left = 87
              Top = 192
              Width = 50
              Height = 21
              EditMask = '99:99'
              MaxLength = 5
              TabOrder = 13
              Text = '00:00'
            end
            object medt16: TMaskEdit
              Left = 234
              Top = 192
              Width = 50
              Height = 21
              EditMask = '99:99'
              MaxLength = 5
              TabOrder = 14
              Text = '00:00'
            end
            object medt17: TMaskEdit
              Left = 87
              Top = 219
              Width = 50
              Height = 21
              EditMask = '99:99'
              MaxLength = 5
              TabOrder = 15
              Text = '00:00'
            end
            object medt18: TMaskEdit
              Left = 234
              Top = 219
              Width = 50
              Height = 21
              EditMask = '99:99'
              MaxLength = 5
              TabOrder = 16
              Text = '00:00'
            end
            object medt19: TMaskEdit
              Left = 87
              Top = 245
              Width = 50
              Height = 21
              EditMask = '99:99'
              MaxLength = 5
              TabOrder = 17
              Text = '00:00'
            end
            object medt20: TMaskEdit
              Left = 234
              Top = 245
              Width = 50
              Height = 21
              EditMask = '99:99'
              MaxLength = 5
              TabOrder = 18
              Text = '00:00'
            end
            object medt21: TMaskEdit
              Left = 87
              Top = 272
              Width = 50
              Height = 21
              EditMask = '99:99'
              MaxLength = 5
              TabOrder = 19
              Text = '00:00'
            end
            object medt22: TMaskEdit
              Left = 234
              Top = 272
              Width = 50
              Height = 21
              EditMask = '99:99'
              MaxLength = 5
              TabOrder = 20
              Text = '00:00'
            end
            object btnSetTimeGroupEx: TButton
              Left = 16
              Top = 341
              Width = 177
              Height = 25
              Caption = '?'#32622'???(SetTimeGroupEx)'
              TabOrder = 21
              OnClick = btnSetTimeGroupExClick
            end
            object btnSetMDoorPassTime: TButton
              Left = 208
              Top = 341
              Width = 193
              Height = 25
              Caption = '?'#32622'???(SetMDoorPassTime)'
              TabOrder = 22
              OnClick = btnSetMDoorPassTimeClick
            end
            object medt23: TMaskEdit
              Left = 87
              Top = 300
              Width = 50
              Height = 21
              EditMask = '99:99'
              MaxLength = 5
              TabOrder = 23
              Text = '00:00'
            end
            object medt24: TMaskEdit
              Left = 234
              Top = 300
              Width = 50
              Height = 21
              EditMask = '99:99'
              MaxLength = 5
              TabOrder = 24
              Text = '00:00'
            end
            object btnReadMDoorPassTime: TButton
              Left = 208
              Top = 373
              Width = 193
              Height = 25
              Caption = ' ?'#21462'???(ReadMDoorPassTime)'
              TabOrder = 25
              OnClick = btnReadMDoorPassTimeClick
            end
          end
          object ts5: TTabSheet
            Caption = '?'#38480'?'#32622
            ImageIndex = 2
            object lbl27: TLabel
              Left = 18
              Top = 16
              Width = 44
              Height = 13
              AutoSize = False
              Caption = #21345'?'
            end
            object lbl28: TLabel
              Left = 18
              Top = 49
              Width = 68
              Height = 13
              AutoSize = False
              Caption = #36890#34892#23494'?'
            end
            object lbl29: TLabel
              Left = 18
              Top = 82
              Width = 68
              Height = 13
              AutoSize = False
              Caption = '?'#38480#31561'?'
            end
            object lbl31: TLabel
              Left = 18
              Top = 115
              Width = 68
              Height = 13
              AutoSize = False
              Caption = #22833#25928#26085#26399
            end
            object lbl32: TLabel
              Left = 18
              Top = 148
              Width = 56
              Height = 13
              AutoSize = False
              Caption = '???'
            end
            object lbl57: TLabel
              Left = 16
              Top = 184
              Width = 41
              Height = 13
              AutoSize = False
              Caption = '???'
            end
            object lbl58: TLabel
              Left = 167
              Top = 184
              Width = 137
              Height = 13
              AutoSize = False
              Caption = #27880#65306'????0?'#22987
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object edt3: TEdit
              Left = 85
              Top = 8
              Width = 121
              Height = 21
              TabOrder = 0
              Text = '1209794580'
            end
            object edt4: TEdit
              Left = 85
              Top = 41
              Width = 121
              Height = 21
              TabOrder = 1
              Text = '123456'
            end
            object cbb1: TComboBox
              Left = 85
              Top = 74
              Width = 121
              Height = 21
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 2
              Text = #26222#36890#21345'|0'
              Items.Strings = (
                #26222#36890#21345'|0'
                #29305'?'#21345'|255')
            end
            object dtp5: TDateTimePicker
              Left = 85
              Top = 107
              Width = 121
              Height = 21
              Date = 45812.999988425930000000
              Time = 45812.999988425930000000
              TabOrder = 3
            end
            object edt5: TEdit
              Left = 85
              Top = 140
              Width = 121
              Height = 21
              TabOrder = 4
              Text = '1'
            end
            object Button3: TButton
              Left = 16
              Top = 262
              Width = 161
              Height = 25
              Caption = #19979'??'#38480'(AddCardHolder)'
              TabOrder = 5
              OnClick = Button3Click
            end
            object Button4: TButton
              Left = 16
              Top = 300
              Width = 161
              Height = 25
              Caption = '?'#38500'?'#38480'(DeleteCardHolder)'
              TabOrder = 6
              OnClick = Button4Click
            end
            object CheckBox1: TCheckBox
              Left = 85
              Top = 210
              Width = 129
              Height = 17
              Caption = '?'#20551#26085#20801'?'#36890#34892
              TabOrder = 7
            end
            object cbb3: TComboBox
              Left = 85
              Top = 176
              Width = 73
              Height = 21
              ItemHeight = 13
              ItemIndex = 0
              TabOrder = 8
              Text = '0'
              Items.Strings = (
                '0'
                '1'
                '2'
                '3')
            end
          end
          object ts7: TTabSheet
            Caption = #37319#38598'??'
            ImageIndex = 4
            object lbl36: TLabel
              Left = 8
              Top = 80
              Width = 46
              Height = 13
              Caption = '?'#32622'?'#31243'IP'
            end
            object lbl43: TLabel
              Left = 192
              Top = 79
              Width = 24
              Height = 13
              Caption = #31471#21475
            end
            object lbl44: TLabel
              Left = 8
              Top = 110
              Width = 69
              Height = 13
              Caption = #26412#26426'?'#21548#31471#21475':'
            end
            object Button2: TButton
              Left = 8
              Top = 8
              Width = 209
              Height = 25
              Caption = #25209#37327#37319#38598'('#37319#38598#21518'??'#38500'?'#25454')'
              TabOrder = 0
              OnClick = Button2Click
            end
            object mmo1: TMemo
              Left = 8
              Top = 240
              Width = 481
              Height = 161
              ScrollBars = ssVertical
              TabOrder = 1
            end
            object Button5: TButton
              Left = 232
              Top = 8
              Width = 201
              Height = 25
              Caption = #37319#38598'?'#25454'('#22238'?'#20989'?'#36820#22238'??)'
              TabOrder = 2
              OnClick = Button5Click
            end
            object Button6: TButton
              Left = 8
              Top = 40
              Width = 209
              Height = 25
              Caption = #25209#37319#65288#21516#19978#65292'??'#20018#36820#22238'??'#65289
              TabOrder = 3
              OnClick = Button6Click
            end
            object edt6: TEdit
              Left = 94
              Top = 76
              Width = 97
              Height = 21
              TabOrder = 4
            end
            object edt7: TEdit
              Left = 224
              Top = 76
              Width = 81
              Height = 21
              TabOrder = 5
            end
            object btn1: TButton
              Left = 315
              Top = 71
              Width = 75
              Height = 25
              Caption = '?'#21462
              TabOrder = 6
              OnClick = btn1Click
            end
            object btn2: TButton
              Left = 395
              Top = 71
              Width = 75
              Height = 25
              Caption = '?'#32622
              TabOrder = 7
              OnClick = btn2Click
            end
            object btnStart: TBitBtn
              Left = 184
              Top = 102
              Width = 87
              Height = 25
              Caption = '??'#20027'?'#19978'?'
              TabOrder = 8
              OnClick = btnStartClick
            end
            object edtPort: TEdit
              Left = 94
              Top = 105
              Width = 67
              Height = 21
              ImeName = #35895#27468#25340#38899'?'#20837#27861' 2'
              TabOrder = 9
              Text = '8001'
            end
            object btnStop: TBitBtn
              Left = 288
              Top = 102
              Width = 87
              Height = 25
              Caption = #20572#27490#20027'?'#19978'?'
              Enabled = False
              TabOrder = 10
              OnClick = btnStopClick
            end
            object lvClock: TListView
              Left = 8
              Top = 134
              Width = 463
              Height = 105
              Checkboxes = True
              Columns = <
                item
                  Caption = #26426'?'
                end
                item
                  Caption = 'Serial_no'
                  Width = 120
                end
                item
                  Caption = 'IP'
                  Width = 120
                end
                item
                  Caption = 'Port'
                end
                item
                  Caption = '??'
                end>
              GridLines = True
              RowSelect = True
              TabOrder = 11
              ViewStyle = vsReport
            end
          end
          object ts8: TTabSheet
            Caption = #20107#20214'?'#26126
            ImageIndex = 5
            object mmo3: TMemo
              Left = 0
              Top = 0
              Width = 487
              Height = 399
              Align = alClient
              Lines.Strings = (
                'ID'#9'Even'#9'Kind'#9'Remark'#9'Custom'#9'Unite'
                '1'#9'0'#9'2'#9#26410#30693#9#26410#30693#9'0'
                '2'#9'1'#9'0'#9#27491#24120#21345#21047#21345'??'#9#27491#24120#21345#21047#21345'??'#9'1'
                '3'#9'2'#9'0'#9#29305'?'#21345#21047#21345'??'#9#29305'?'#21345#21047#21345'??'#9'1'
                '4'#9'3'#9'0'#9#21345'+'#23494'???'#9#21345'+'#23494'???'#9'1'
                '5'#9'4'#9'0'#9#22810#21345'??'#9#22810#21345'??'#9'1'
                '6'#9'5'#9'0'#9#21345'???'#9#21345'???'#9'1'
                '7'#9'6'#9'0'#9#23494'???'#9#23494'???'#9'1'
                '8'#9'7'#9'0'#9#36229'?'#23494'???'#9#36229'?'#23494'???'#9'1'
                '9'#9'8'#9'0'#9#24067#38450#23494'??'#20837#9#24067#38450#23494'??'#20837#9'1'
                '10'#9'9'#9'0'#9#25764#38450#23494'??'#20837#9#25764#38450#23494'??'#20837#9'1'
                '11'#9'10'#9'0'#9#25511#21046#22120#24067#38450#9#25511#21046#22120#24067#38450#9'1'
                '12'#9'11'#9'0'#9#25511#21046#22120#25764#38450#9#25511#21046#22120#25764#38450#9'1'
                '13'#9'32'#9'0'#9'??'#9'??'#9'1'
                '14'#9'33'#9'0'#9'??'#9'??'#9'1'
                '15'#9'48'#9'0'#9#25353'???'#9#25353'???'#9'1'
                '16'#9'49'#9'2'#9'?'#30913'?'#20837#9'?'#30913'?'#20837#9'1'
                '17'#9'50'#9'2'#9'?'#21161#20449'?1?'#20837#9'?'#21161#20449'?1?'#20837#9'1'
                '18'#9'51'#9'2'#9'?'#21161#20449'?2?'#20837#9'?'#21161#20449'?2?'#20837#9'1'
                '19'#9'52'#9'2'#9'?'#21161#20449'?3?'#20837#9'?'#21161#20449'?3?'#20837#9'1'
                '20'#9'53'#9'2'#9'?'#21161#20449'?4?'#20837#9'?'#21161#20449'?4?'#20837#9'1'
                '21'#9'56'#9'2'#9'?'#21161#20449'??'#20986#26377#25928#20107#20214#9'?'#21161#20449'??'#20986#26377#25928#20107#20214#9'1'
                '22'#9'64'#9'0'#9'?'#31243'??'#9'?'#31243'??'#9'1'
                '23'#9'65'#9'0'#9'?'#31243'??'#9'?'#31243'??'#9'1'
                '24'#9'66'#9'0'#9'?'#31243#24067#38450#9'?'#31243#24067#38450#9'1'
                '25'#9'67'#9'0'#9'?'#31243#25764#38450#9'?'#31243#25764#38450#9'1'
                '26'#9'80'#9'0'#9'??'#20107#20214'[1]'#9'??'#20107#20214'[1]'#9'0'
                '27'#9'81'#9'0'#9'??'#20107#20214'[2]'#9'??'#20107#20214'[2]'#9'0'
                '28'#9'82'#9'0'#9'??'#20107#20214'[3]'#9'??'#20107#20214'[3]'#9'0'
                '29'#9'83'#9'0'#9'??'#20107#20214'[4]'#9'??'#20107#20214'[4]'#9'0'
                '30'#9'84'#9'0'#9'??'#20107#20214'[5]'#9'??'#20107#20214'[5]'#9'0'
                '31'#9'85'#9'0'#9'??'#20107#20214'[6]'#9'??'#20107#20214'[6]'#9'0'
                '32'#9'86'#9'0'#9'??'#20107#20214'[7]'#9'??'#20107#20214'[7]'#9'0'
                '33'#9'87'#9'0'#9'??'#20107#20214'[8]'#9'??'#20107#20214'[8]'#9'0'
                '34'#9'88'#9'0'#9'??'#20107#20214'[9]'#9'??'#20107#20214'[9]'#9'0'
                '35'#9'89'#9'0'#9'??'#20107#20214'[10]'#9'??'#20107#20214'[10]'#9'0'
                '36'#9'90'#9'0'#9'??'#20107#20214'[11]'#9'??'#20107#20214'[11]'#9'0'
                '37'#9'91'#9'0'#9'??'#20107#20214'[12]'#9'??'#20107#20214'[12]'#9'0'
                '38'#9'92'#9'0'#9'??'#20107#20214'[13]'#9'??'#20107#20214'[13]'#9'0'
                '39'#9'93'#9'0'#9'??'#20107#20214'[14]'#9'??'#20107#20214'[14]'#9'0'
                '40'#9'94'#9'0'#9'??'#20107#20214'[15]'#9'??'#20107#20214'[15]'#9'0'
                '41'#9'95'#9'0'#9'??'#20107#20214'[16]'#9'??'#20107#20214'[16]'#9'0'
                '42'#9'128'#9'1'#9#38750#27861#21345#21047#21345#9#38750#27861#21345#21047#21345#9'0'
                '43'#9'129'#9'1'#9#40657#21517'?'#21047#21345#9#40657#21517'?'#21047#21345#9'0'
                '44'#9'130'#9'1'#9#38750#20801'??'#27573#21047#21345#9#38750#20801'??'#27573#21047#21345#9'0'
                '45'#9'131'#9'1'#9'??'#34987#25286#38500#9'??'#34987#25286#38500#9'0'
                '46'#9'132'#9'1'#9'?'#36843'??'#9'?'#36843'??'#9'0'
                '47'#9'160'#9'1'#9'??'#36229'?'#9'??'#36229'?'#9'0'
                '48'#9'162'#9'1'#9#38750#27861#20837#20405#9#38750#27861#20837#20405#9'0'
                '49'#9'163'#9'1'#9'??'#20114'???'#22833'?'#9'??'#20114'???'#22833'?'#9'0'
                '50'#9'164'#9'1'#9'APB??'#22833'?'#9'APB??'#22833'?'#9'0'
                '51'#9'165'#9'1'#9'??'#34987#25772#9'??'#34987#25772#9'0'
                '52'#9'208'#9'1'#9#25511#21046#22120#34987#25286#38500#9#25511#21046#22120#34987#25286#38500#9'0')
              TabOrder = 0
            end
          end
        end
      end
    end
  end
end
