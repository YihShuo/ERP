object Form1: TForm1
  Left = 615
  Top = 174
  Width = 1700
  Height = 968
  Caption = 'MeetingRoom'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 312
    Top = 10
    Width = 38
    Height = 20
    Caption = 'Topic'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 309
    Top = 36
    Width = 100
    Height = 20
    Caption = 'BookingName'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1692
    Height = 937
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 1690
      Height = 58
      Align = alTop
      TabOrder = 0
      object Panel8: TPanel
        Left = 1
        Top = 1
        Width = 1688
        Height = 117
        Align = alTop
        TabOrder = 0
        object Button1: TButton
          Left = 5
          Top = 0
          Width = 67
          Height = 53
          Caption = 'Booking'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Button1Click
        end
        object Button3: TButton
          Left = 72
          Top = 0
          Width = 65
          Height = 53
          Caption = 'Cancel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = Button3Click
        end
      end
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 59
      Width = 1690
      Height = 877
      ActivePage = TabSheet2
      Align = alClient
      TabOrder = 1
      OnChange = PageControl1Change
      object TabSheet1: TTabSheet
        Caption = 'Login'
        object Panel10: TPanel
          Left = 0
          Top = 0
          Width = 1547
          Height = 665
          Align = alClient
          TabOrder = 0
          object Label9: TLabel
            Left = 156
            Top = 104
            Width = 46
            Height = 20
            Caption = 'UseID'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 130
            Top = 137
            Width = 69
            Height = 20
            Caption = 'Password'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 124
            Top = 169
            Width = 76
            Height = 20
            Caption = 'UserName'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label21: TLabel
            Left = 85
            Top = 59
            Width = 346
            Height = 29
            Caption = 'Converse MeetingRoom System'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -25
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Edit4: TEdit
            Left = 208
            Top = 104
            Width = 98
            Height = 33
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnExit = Edit4Exit
            OnKeyPress = Edit4KeyPress
          end
          object Edit5: TEdit
            Left = 208
            Top = 137
            Width = 98
            Height = 33
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            PasswordChar = '*'
            TabOrder = 1
            OnEnter = Edit5Enter
          end
          object Edit6: TEdit
            Left = 208
            Top = 169
            Width = 98
            Height = 33
            Color = clScrollBar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
          object Button2: TButton
            Left = 208
            Top = 208
            Width = 61
            Height = 20
            Caption = 'Login'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = Button2Click
          end
          object Edit7: TEdit
            Left = 104
            Top = 26
            Width = 98
            Height = 24
            TabOrder = 4
            Text = '0'
            Visible = False
          end
          object Edit8: TEdit
            Left = 234
            Top = 26
            Width = 98
            Height = 24
            TabOrder = 5
            Text = 'fail'
            Visible = False
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Booking'
        ImageIndex = 1
        object Panel9: TPanel
          Left = 0
          Top = 0
          Width = 1682
          Height = 124
          Align = alTop
          TabOrder = 0
          Visible = False
          object Label2: TLabel
            Left = 65
            Top = 68
            Width = 43
            Height = 20
            Caption = 'Room'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 73
            Top = 12
            Width = 35
            Height = 20
            Caption = 'Date'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 71
            Top = 37
            Width = 34
            Height = 20
            Caption = 'Time'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 377
            Top = 11
            Width = 95
            Height = 20
            Caption = 'MeetingTopic'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 374
            Top = 62
            Width = 100
            Height = 20
            Caption = 'BookingName'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 380
            Top = 88
            Width = 92
            Height = 20
            Caption = 'BookingTime'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 206
            Top = 46
            Width = 11
            Height = 24
            Caption = '~'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label22: TLabel
            Left = 403
            Top = 37
            Width = 75
            Height = 20
            Caption = 'Participant'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object ComboBox1: TComboBox
            Left = 110
            Top = 69
            Width = 118
            Height = 28
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 20
            ParentFont = False
            TabOrder = 0
          end
          object DateTimePicker1: TDateTimePicker
            Left = 110
            Top = 11
            Width = 118
            Height = 28
            Date = 42663.584754085650000000
            Format = 'yyyy/MM/dd'
            Time = 42663.584754085650000000
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object Edit1: TEdit
            Left = 481
            Top = 10
            Width = 339
            Height = 28
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object Edit2: TEdit
            Left = 611
            Top = 65
            Width = 131
            Height = 28
            Color = clScrollBar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object Edit3: TEdit
            Left = 611
            Top = 91
            Width = 131
            Height = 28
            Color = clScrollBar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
          end
          object Edit9: TEdit
            Left = 481
            Top = 65
            Width = 131
            Height = 28
            Color = clScrollBar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
          end
          object Button4: TButton
            Left = 754
            Top = 65
            Width = 61
            Height = 53
            Caption = 'OK'
            TabOrder = 6
            OnClick = Button4Click
          end
          object ComboBox2: TComboBox
            Left = 111
            Top = 39
            Width = 46
            Height = 28
            Style = csDropDownList
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 20
            ItemIndex = 0
            ParentFont = False
            TabOrder = 7
            Text = '07'
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
              '18'
              '')
          end
          object ComboBox3: TComboBox
            Left = 163
            Top = 39
            Width = 41
            Height = 28
            Style = csDropDownList
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 20
            ItemIndex = 1
            ParentFont = False
            TabOrder = 8
            Text = '00'
            Items.Strings = (
              ''
              '00'
              '10'
              '20'
              '30'
              '40'
              '50')
          end
          object ComboBox4: TComboBox
            Left = 221
            Top = 39
            Width = 46
            Height = 28
            Style = csDropDownList
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 20
            ItemIndex = 1
            ParentFont = False
            TabOrder = 9
            Text = '08'
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
              '18'
              '19'
              '20')
          end
          object ComboBox5: TComboBox
            Left = 273
            Top = 39
            Width = 41
            Height = 28
            Style = csDropDownList
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 20
            ItemIndex = 1
            ParentFont = False
            TabOrder = 10
            Text = '00'
            Items.Strings = (
              ''
              '00'
              '10'
              '20'
              '30'
              '40'
              '50')
          end
          object Edit16: TEdit
            Left = 481
            Top = 91
            Width = 131
            Height = 28
            Color = clScrollBar
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 11
          end
          object Edit17: TEdit
            Left = 481
            Top = 36
            Width = 339
            Height = 28
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 12
          end
          object CheckBox2: TCheckBox
            Left = 72
            Top = 104
            Width = 78
            Height = 14
            Caption = 'HINT'
            TabOrder = 13
            OnClick = CheckBox2Click
          end
        end
        object Panel14: TPanel
          Left = 0
          Top = 124
          Width = 1682
          Height = 725
          Align = alClient
          Caption = 'Panel14'
          TabOrder = 1
          object Panel4: TPanel
            Left = 1
            Top = 1
            Width = 1680
            Height = 357
            Align = alTop
            Caption = 'Panel4'
            TabOrder = 0
            object DBGridEh1: TDBGridEh
              Left = 385
              Top = 170
              Width = 1294
              Height = 186
              Align = alClient
              DataSource = DataSource1
              Flat = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
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
              TitleFont.Height = -16
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              UseMultiTitle = True
              OnCellClick = DBGridEh1CellClick
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'RoomName'
                  Footers = <>
                  Title.Caption = #26371#35696#23460#21517#31281'|RoomName'
                  Width = 92
                end
                item
                  EditButtons = <>
                  FieldName = 'Booked'
                  Footers = <>
                  Title.Caption = #30070#26085#38928#23450#25976'|Booked'
                  Width = 93
                end>
            end
            object Panel6: TPanel
              Left = 1
              Top = 1
              Width = 1678
              Height = 169
              Align = alTop
              TabOrder = 1
              Visible = False
              object Label1: TLabel
                Left = 397
                Top = 13
                Width = 4
                Height = 20
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object DBGridEh4: TDBGridEh
                Left = 1
                Top = 1
                Width = 1676
                Height = 167
                Align = alClient
                Color = clLime
                DataSource = DataSource4
                Flat = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
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
                TitleFont.Height = -16
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                Columns = <
                  item
                    EditButtons = <>
                    FieldName = 'RoomTime'
                    Footers = <>
                    Width = 126
                  end
                  item
                    EditButtons = <>
                    FieldName = 'Participant'
                    Footers = <>
                    Width = 80
                  end
                  item
                    EditButtons = <>
                    FieldName = 'Topic'
                    Footers = <>
                    Width = 149
                  end
                  item
                    EditButtons = <>
                    FieldName = 'RoomName'
                    Footers = <>
                    Width = 151
                  end
                  item
                    EditButtons = <>
                    FieldName = 'UserName'
                    Footers = <>
                    Width = 183
                  end>
              end
            end
            object Panel3: TPanel
              Left = 1
              Top = 170
              Width = 384
              Height = 186
              Align = alLeft
              Caption = 'Panel3'
              TabOrder = 2
              object MonthCalendar1: TMonthCalendar
                Left = 1
                Top = 1
                Width = 382
                Height = 184
                Align = alClient
                Date = 42664.329683622690000000
                FirstDayOfWeek = dowMonday
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
                OnClick = MonthCalendar1Click
              end
            end
          end
          object Panel5: TPanel
            Left = 1
            Top = 358
            Width = 1680
            Height = 366
            Align = alClient
            Caption = 'Panel5'
            TabOrder = 1
            object DBGridEh2: TDBGridEh
              Left = 1
              Top = 40
              Width = 1678
              Height = 325
              Align = alClient
              DataSource = DataSource2
              Flat = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
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
              TitleFont.Height = -16
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              UseMultiTitle = True
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'USERNAME'
                  Footers = <>
                  Title.Caption = #38928#23450#20154'|UserName'
                  Width = 120
                end
                item
                  EditButtons = <>
                  FieldName = 'UserDate'
                  Footers = <>
                  Title.Caption = #38928#23450#26178#38291'|UserDate'
                  Width = 186
                end
                item
                  EditButtons = <>
                  FieldName = 'RoomDate'
                  Footers = <>
                  Title.Caption = #26371#35696#26178#38291'|RoomDate'
                  Width = 93
                end
                item
                  EditButtons = <>
                  FieldName = 'RoomTime'
                  Footers = <>
                  Title.Caption = #26371#35696#26178#38291'|RoomTime'
                  Width = 102
                end
                item
                  EditButtons = <>
                  FieldName = 'Topic'
                  Footers = <>
                  Title.Caption = #26371#35696#20027#38988'|Topic'
                  Width = 404
                end
                item
                  EditButtons = <>
                  FieldName = 'Participant'
                  Footers = <>
                  Title.Caption = #21443#33287#32773'|Participant'
                  Width = 383
                end>
            end
            object Panel7: TPanel
              Left = 1
              Top = 1
              Width = 1678
              Height = 39
              Align = alTop
              TabOrder = 1
              object Label13: TLabel
                Left = 26
                Top = 13
                Width = 4
                Height = 20
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
            end
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Cancel'
        ImageIndex = 2
        object Panel11: TPanel
          Left = 0
          Top = 0
          Width = 1547
          Height = 665
          Align = alClient
          TabOrder = 0
          object Panel12: TPanel
            Left = 1
            Top = 1
            Width = 1545
            Height = 110
            Align = alTop
            TabOrder = 0
            object Label15: TLabel
              Left = 73
              Top = 8
              Width = 35
              Height = 20
              Caption = 'Date'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label16: TLabel
              Left = 71
              Top = 33
              Width = 34
              Height = 20
              Caption = 'Time'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label17: TLabel
              Left = 65
              Top = 59
              Width = 43
              Height = 20
              Caption = 'Room'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label18: TLabel
              Left = 379
              Top = 9
              Width = 95
              Height = 20
              Caption = 'MeetingTopic'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label19: TLabel
              Left = 427
              Top = 60
              Width = 51
              Height = 20
              Caption = 'UserID'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label20: TLabel
              Left = 381
              Top = 86
              Width = 92
              Height = 20
              Caption = 'BookingTime'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label23: TLabel
              Left = 398
              Top = 35
              Width = 75
              Height = 20
              Caption = 'Participant'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Button5: TButton
              Left = 754
              Top = 33
              Width = 61
              Height = 52
              Caption = 'Delete'
              TabOrder = 0
              OnClick = Button5Click
            end
            object Edit10: TEdit
              Left = 479
              Top = 3
              Width = 251
              Height = 33
              Color = clScrollBar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
            end
            object Edit11: TEdit
              Left = 479
              Top = 55
              Width = 251
              Height = 33
              Color = clScrollBar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 2
            end
            object Edit12: TEdit
              Left = 479
              Top = 81
              Width = 251
              Height = 33
              Color = clScrollBar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 3
            end
            object Edit13: TEdit
              Left = 109
              Top = 55
              Width = 251
              Height = 33
              Color = clScrollBar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 4
            end
            object Edit14: TEdit
              Left = 109
              Top = 29
              Width = 251
              Height = 33
              Color = clScrollBar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 5
            end
            object Edit15: TEdit
              Left = 109
              Top = 3
              Width = 251
              Height = 33
              Color = clScrollBar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 6
            end
            object CheckBox1: TCheckBox
              Left = 754
              Top = 13
              Width = 79
              Height = 14
              Caption = 'Effective'
              Checked = True
              State = cbChecked
              TabOrder = 7
              OnClick = CheckBox1Click
            end
            object Edit18: TEdit
              Left = 479
              Top = 29
              Width = 251
              Height = 33
              Color = clScrollBar
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 8
            end
          end
          object Panel13: TPanel
            Left = 1
            Top = 111
            Width = 1545
            Height = 553
            Align = alClient
            TabOrder = 1
            object DBGridEh3: TDBGridEh
              Left = 1
              Top = 1
              Width = 1544
              Height = 551
              Align = alClient
              DataSource = DataSource3
              Flat = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
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
              TitleFont.Height = -16
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              UseMultiTitle = True
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'RoomName'
                  Footers = <>
                  Title.Caption = #26371#35696#23460#21517#31281'|RoomName'
                  Width = 112
                end
                item
                  EditButtons = <>
                  FieldName = 'RoomDate'
                  Footers = <>
                  Title.Caption = #26371#35696#26178#38291'|RoomDate'
                  Width = 100
                end
                item
                  EditButtons = <>
                  FieldName = 'RoomTime'
                  Footers = <>
                  Title.Caption = #26371#35696#26178#38291'|RoomTime'
                  Width = 178
                end
                item
                  EditButtons = <>
                  FieldName = 'UserDate'
                  Footers = <>
                  Title.Caption = #38928#32004#26178#38291'|UserDate'
                  Width = 171
                end
                item
                  EditButtons = <>
                  FieldName = 'UserID'
                  Footers = <>
                  Title.Caption = #38928#32004#20154'|UserID'
                  Width = 109
                end
                item
                  EditButtons = <>
                  FieldName = 'Topic'
                  Footers = <>
                  Title.Caption = #26371#35696#20027#38988'|Topic'
                  Width = 529
                end
                item
                  EditButtons = <>
                  FieldName = 'Participant'
                  Footers = <>
                  Title.Caption = #21443#33287#32773'|Participant'
                  Width = 1791
                end>
            end
          end
        end
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 441
    Top = 361
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 481
    Top = 361
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery3
    Left = 518
    Top = 365
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 77
    Top = 164
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    AfterScroll = ADOQuery1AfterScroll
    Parameters = <>
    SQL.Strings = (
      
        'select meetingroom.RoomName,isnull(meetingrooms.booked,0) as Boo' +
        'ked from meetingroom'
      'left join ('
      'select roomname,count(roomdate) booked from meetingrooms  '
      'where roomdate='#39'2016/10/20'#39
      
        'group by roomname)meetingrooms on meetingroom.roomname=meetingro' +
        'oms.roomname ')
    Left = 438
    Top = 400
    object ADOQuery1RoomName: TStringField
      FieldName = 'RoomName'
    end
    object ADOQuery1Booked: TIntegerField
      FieldName = 'Booked'
      ReadOnly = True
    end
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=Itkhua@!admin;Persist Security Info' +
      '=True;User ID=tyxuan;Initial Catalog=LIY_TYXUAN;Data Source=192.' +
      '168.23.9'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 14
    Top = 208
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection1
    DataSource = DataSource1
    Parameters = <>
    SQL.Strings = (
      'select * from LIY_TYXUAN.dbo.MeetingRooms'
      
        'left join LIY_ERP.dbo.busers on busers.userid=MeetingRooms.useri' +
        'd'
      ' where 1=2')
    Left = 477
    Top = 397
    object ADOQuery2UserDate: TStringField
      FieldName = 'UserDate'
      Size = 30
    end
    object ADOQuery2UserID: TStringField
      FieldName = 'UserID'
      Size = 8
    end
    object ADOQuery2RoomDate: TDateTimeField
      FieldName = 'RoomDate'
    end
    object ADOQuery2Topic: TStringField
      FieldName = 'Topic'
      Size = 200
    end
    object ADOQuery2RoomTime: TStringField
      FieldName = 'RoomTime'
      Size = 30
    end
    object ADOQuery2USERNAME: TStringField
      FieldName = 'USERNAME'
      Size = 30
    end
    object ADOQuery2Participant: TStringField
      FieldName = 'Participant'
      Size = 200
    end
  end
  object ADOgettime: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 437
    Top = 509
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection2
    TableName = 'Busers'
    Left = 45
    Top = 165
  end
  object ADOQuery3: TADOQuery
    Connection = ADOConnection1
    AfterScroll = ADOQuery3AfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from MeetingRooms'
      'where 1=2')
    Left = 517
    Top = 405
    object ADOQuery3RoomName: TStringField
      FieldName = 'RoomName'
    end
    object ADOQuery3UserDate: TStringField
      FieldName = 'UserDate'
      Size = 30
    end
    object ADOQuery3UserID: TStringField
      FieldName = 'UserID'
      Size = 8
    end
    object ADOQuery3RoomDate: TDateTimeField
      FieldName = 'RoomDate'
    end
    object ADOQuery3Topic: TStringField
      FieldName = 'Topic'
      Size = 200
    end
    object ADOQuery3RoomTime: TStringField
      FieldName = 'RoomTime'
      Size = 30
    end
    object ADOQuery3Participant: TStringField
      FieldName = 'Participant'
      Size = 200
    end
  end
  object ADOConnection2: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=Itkhua@!admin;Persist Security Info' +
      '=True;User ID=tyxuan;Initial Catalog=LIY_ERP;Data Source=192.168' +
      '.23.9'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 13
    Top = 164
  end
  object DataSource4: TDataSource
    DataSet = ADOQuery4
    Left = 567
    Top = 367
  end
  object ADOQuery4: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      
        'select RoomTime,Participant,Topic,RoomName,UserID as UserName fr' +
        'om MeetingRooms where 1=2')
    Left = 567
    Top = 407
    object ADOQuery4RoomTime: TStringField
      FieldName = 'RoomTime'
      Size = 30
    end
    object ADOQuery4Participant: TStringField
      FieldName = 'Participant'
      Size = 200
    end
    object ADOQuery4Topic: TStringField
      FieldName = 'Topic'
      Size = 200
    end
    object ADOQuery4RoomName: TStringField
      FieldName = 'RoomName'
    end
    object ADOQuery4UserName: TStringField
      FieldName = 'UserName'
      Size = 8
    end
  end
end
