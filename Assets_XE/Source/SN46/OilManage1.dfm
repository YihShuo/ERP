object OilManage: TOilManage
  Left = 0
  Top = 0
  Caption = 'Oil Manage'
  ClientHeight = 758
  ClientWidth = 1219
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1219
    Height = 758
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Oil Input'
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1211
        Height = 51
        Align = alTop
        TabOrder = 0
        object Label30: TLabel
          Left = 31
          Top = 16
          Width = 37
          Height = 17
          Caption = 'TSBH:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'VNI-Times'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 185
          Top = 17
          Width = 37
          Height = 17
          Caption = 'LSBH:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'VNI-Times'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 529
          Top = 17
          Width = 38
          Height = 16
          Caption = 'Name:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label38: TLabel
          Left = 346
          Top = 17
          Width = 52
          Height = 17
          Caption = 'DPName:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'VNI-Times'
          Font.Style = []
          ParentFont = False
        end
        object btSearch: TButton
          Left = 815
          Top = 16
          Width = 75
          Height = 25
          Caption = 'Search'
          TabOrder = 0
          OnClick = btSearchClick
        end
        object tbSTSBH: TEdit
          Left = 69
          Top = 16
          Width = 89
          Height = 21
          TabOrder = 1
        end
        object tbSLSBH: TEdit
          Left = 236
          Top = 16
          Width = 89
          Height = 21
          TabOrder = 2
        end
        object cbSDepartment: TComboBox
          Left = 408
          Top = 17
          Width = 105
          Height = 21
          TabOrder = 3
        end
        object tbSName: TEdit
          Left = 573
          Top = 16
          Width = 236
          Height = 21
          TabOrder = 4
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 51
        Width = 1211
        Height = 126
        Align = alTop
        TabOrder = 1
        object Label24: TLabel
          Left = 195
          Top = 47
          Width = 83
          Height = 17
          Caption = 'DepID_Memo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'VNI-Times'
          Font.Style = []
          ParentFont = False
        end
        object lbDpName1: TLabel
          Left = 217
          Top = 81
          Width = 59
          Height = 17
          Caption = 'DepName:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'VNI-Times'
          Font.Style = []
          ParentFont = False
        end
        object Label26: TLabel
          Left = 31
          Top = 46
          Width = 32
          Height = 17
          Caption = 'TSID:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'VNI-Times'
          Font.Style = []
          ParentFont = False
        end
        object Label27: TLabel
          Left = 27
          Top = 12
          Width = 37
          Height = 17
          Caption = 'TSBH:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'VNI-Times'
          Font.Style = []
          ParentFont = False
        end
        object Label28: TLabel
          Left = 23
          Top = 83
          Width = 38
          Height = 17
          Caption = 'SBBH:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'VNI-Times'
          Font.Style = []
          ParentFont = False
        end
        object Label29: TLabel
          Left = 239
          Top = 12
          Width = 40
          Height = 17
          Caption = 'DepID:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'VNI-Times'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 412
          Top = 81
          Width = 44
          Height = 17
          Caption = 'YWPM:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'VNI-Times'
          Font.Style = []
          ParentFont = False
        end
        object Label31: TLabel
          Left = 414
          Top = 12
          Width = 43
          Height = 17
          Caption = 'ZWPM:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'VNI-Times'
          Font.Style = []
          ParentFont = False
        end
        object Label32: TLabel
          Left = 411
          Top = 47
          Width = 44
          Height = 17
          Caption = 'VWPM:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'VNI-Times'
          Font.Style = []
          ParentFont = False
        end
        object tbTSID: TDBEdit
          Left = 69
          Top = 44
          Width = 111
          Height = 24
          DataField = 'TSID'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object tbTSBH: TDBEdit
          Left = 69
          Top = 9
          Width = 111
          Height = 24
          DataField = 'TSBH'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object tbSBBH: TDBEdit
          Left = 69
          Top = 78
          Width = 111
          Height = 24
          DataField = 'SBBH'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object tbDPID: TDBEdit
          Left = 284
          Top = 9
          Width = 111
          Height = 24
          DataField = 'DEPID'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object tbDPMeom: TDBEdit
          Left = 283
          Top = 44
          Width = 111
          Height = 24
          DataField = 'DEPID_MEMO'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object tbYWPM: TDBEdit
          Left = 464
          Top = 78
          Width = 345
          Height = 24
          DataField = 'YWPM'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object tbVWPM: TDBEdit
          Left = 463
          Top = 44
          Width = 346
          Height = 24
          DataField = 'VWPM'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object tbDpName: TDBEdit
          Left = 284
          Top = 78
          Width = 111
          Height = 24
          DataField = 'depname'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object tbZWPM: TDBEdit
          Left = 464
          Top = 9
          Width = 345
          Height = 24
          DataField = 'ZWPM'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 177
        Width = 1211
        Height = 553
        Align = alClient
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 2
        object Splitter1: TSplitter
          Left = 792
          Top = 1
          Width = 5
          Height = 551
          ExplicitLeft = 953
          ExplicitTop = 0
        end
        object Panel7: TPanel
          Left = 1
          Top = 1
          Width = 791
          Height = 551
          Align = alLeft
          AutoSize = True
          TabOrder = 0
          object ScrollBox1: TScrollBox
            Left = 1
            Top = 1
            Width = 789
            Height = 549
            Align = alClient
            Color = clBtnHighlight
            ParentColor = False
            TabOrder = 0
            object GroupBox1: TGroupBox
              Left = -4
              Top = 8
              Width = 789
              Height = 73
              Caption = 'R324-'#38450#28779#22411#28082#22739#27833
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object Label4: TLabel
                Left = 24
                Top = 32
                Width = 30
                Height = 16
                Caption = #27833#37327
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label5: TLabel
                Left = 149
                Top = 32
                Width = 60
                Height = 16
                Caption = #26412#27425#26178#38291
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label7: TLabel
                Left = 346
                Top = 32
                Width = 60
                Height = 16
                Caption = #19979#27425#26178#38291
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object dt2341: TDateTimePicker
                Left = 215
                Top = 29
                Width = 107
                Height = 24
                Date = 45505.661921921290000000
                Time = 45505.661921921290000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object dt2342: TDateTimePicker
                Left = 412
                Top = 29
                Width = 107
                Height = 24
                Date = 45505.661921921290000000
                Time = 45505.661921921290000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
              object btSave234: TButton
                Left = 701
                Top = 29
                Width = 75
                Height = 25
                Caption = 'Save'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                OnClick = btSave234Click
              end
              object tbQty234: TEdit
                Left = 60
                Top = 29
                Width = 65
                Height = 24
                Alignment = taRightJustify
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
                Text = '0'
              end
              object cbR324: TComboBox
                Left = 579
                Top = 29
                Width = 94
                Height = 24
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ItemIndex = 0
                ParentFont = False
                TabOrder = 4
                Text = 'ISO VG 68'
                Items.Strings = (
                  'ISO VG 68')
              end
            end
            object GroupBox2: TGroupBox
              Left = -2
              Top = 87
              Width = 787
              Height = 82
              Caption = 'R325-'#28082#22739#24490#29872#27833
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              object Label8: TLabel
                Left = 21
                Top = 35
                Width = 30
                Height = 16
                Caption = #27833#37327
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label9: TLabel
                Left = 147
                Top = 35
                Width = 60
                Height = 16
                Caption = #26412#27425#26178#38291
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label10: TLabel
                Left = 343
                Top = 34
                Width = 60
                Height = 16
                Caption = #19979#27425#26178#38291
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object dt2351: TDateTimePicker
                Left = 213
                Top = 32
                Width = 107
                Height = 24
                Date = 45505.661921921290000000
                Time = 45505.661921921290000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object dt2352: TDateTimePicker
                Left = 409
                Top = 31
                Width = 107
                Height = 24
                Date = 45505.661921921290000000
                Time = 45505.661921921290000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
              object tbQty235: TEdit
                Left = 57
                Top = 32
                Width = 65
                Height = 24
                Alignment = taRightJustify
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                Text = '0'
              end
              object btSave235: TButton
                Left = 699
                Top = 29
                Width = 75
                Height = 25
                Caption = 'Save'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
                OnClick = btSave234Click
              end
              object ComboBox2: TComboBox
                Left = -145
                Top = 209
                Width = 105
                Height = 24
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 4
              end
              object cbR325: TComboBox
                Left = 577
                Top = 32
                Width = 94
                Height = 24
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ItemIndex = 0
                ParentFont = False
                TabOrder = 5
                Text = 'ISO VG 32'
                Items.Strings = (
                  'ISO VG 32'
                  'ISO VG 46'
                  'ISO VG 68')
              end
            end
            object GroupBox3: TGroupBox
              Left = -2
              Top = 175
              Width = 787
              Height = 82
              Caption = 'R329-'#25239#26997#22739#40786#36650#27833
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              object Label12: TLabel
                Left = 22
                Top = 35
                Width = 30
                Height = 16
                Caption = #27833#37327
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label13: TLabel
                Left = 147
                Top = 36
                Width = 60
                Height = 16
                Caption = #26412#27425#26178#38291
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label14: TLabel
                Left = 344
                Top = 37
                Width = 60
                Height = 16
                Caption = #19979#27425#26178#38291
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object dt2391: TDateTimePicker
                Left = 213
                Top = 32
                Width = 107
                Height = 24
                Date = 45505.661921921290000000
                Time = 45505.661921921290000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object dt2392: TDateTimePicker
                Left = 410
                Top = 32
                Width = 107
                Height = 24
                Date = 45505.661921921290000000
                Time = 45505.661921921290000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
              object tbQty239: TEdit
                Left = 58
                Top = 32
                Width = 65
                Height = 24
                Alignment = taRightJustify
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                Text = '0'
              end
              object btSave239: TButton
                Left = 699
                Top = 32
                Width = 75
                Height = 25
                Caption = 'Save'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
                OnClick = btSave234Click
              end
              object cbR239: TComboBox
                Left = 577
                Top = 32
                Width = 94
                Height = 24
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ItemIndex = 0
                ParentFont = False
                TabOrder = 4
                Text = 'ISO VG 320'
                Items.Strings = (
                  'ISO VG 320')
              end
            end
            object GroupBox4: TGroupBox
              Left = -1
              Top = 264
              Width = 786
              Height = 83
              Caption = 'R266-'#23566#29105#27833
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              object Label16: TLabel
                Left = 24
                Top = 35
                Width = 30
                Height = 16
                Caption = #27833#37327
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label17: TLabel
                Left = 150
                Top = 35
                Width = 60
                Height = 16
                Caption = #26412#27425#26178#38291
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label18: TLabel
                Left = 346
                Top = 35
                Width = 60
                Height = 16
                Caption = #19979#27425#26178#38291
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object dt2661: TDateTimePicker
                Left = 216
                Top = 32
                Width = 107
                Height = 24
                Date = 45505.661921921290000000
                Time = 45505.661921921290000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object dt2662: TDateTimePicker
                Left = 412
                Top = 32
                Width = 107
                Height = 24
                Date = 45505.661921921290000000
                Time = 45505.661921921290000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
              object tbQty266: TEdit
                Left = 60
                Top = 32
                Width = 65
                Height = 24
                Alignment = taRightJustify
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                Text = '0'
              end
              object btSave266: TButton
                Left = 698
                Top = 29
                Width = 75
                Height = 25
                Caption = 'Save'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
                OnClick = btSave234Click
              end
              object cbR266: TComboBox
                Left = 576
                Top = 32
                Width = 94
                Height = 24
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ItemIndex = 0
                ParentFont = False
                TabOrder = 4
                Text = 'ISO VG 46'
                Items.Strings = (
                  'ISO VG 46')
              end
            end
            object GroupBox5: TGroupBox
              Left = -2
              Top = 353
              Width = 787
              Height = 85
              Caption = 'R275-'#38450#27700#40786#36650#27833
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              object Label21: TLabel
                Left = 25
                Top = 35
                Width = 30
                Height = 16
                Caption = #27833#37327
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label22: TLabel
                Left = 151
                Top = 35
                Width = 60
                Height = 16
                Caption = #26412#27425#26178#38291
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label23: TLabel
                Left = 343
                Top = 35
                Width = 60
                Height = 16
                Caption = #19979#27425#26178#38291
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object dt2751: TDateTimePicker
                Left = 217
                Top = 32
                Width = 107
                Height = 24
                Date = 45505.661921921290000000
                Time = 45505.661921921290000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object dt2752: TDateTimePicker
                Left = 409
                Top = 33
                Width = 107
                Height = 24
                Date = 45505.661921921290000000
                Time = 45505.661921921290000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
              object tbQty275: TEdit
                Left = 61
                Top = 32
                Width = 65
                Height = 24
                Alignment = taRightJustify
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                Text = '0'
              end
              object btSave275: TButton
                Left = 699
                Top = 31
                Width = 75
                Height = 25
                Caption = 'Save'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
                OnClick = btSave234Click
              end
              object cbR275: TComboBox
                Left = 577
                Top = 32
                Width = 94
                Height = 24
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ItemIndex = 0
                ParentFont = False
                TabOrder = 4
                Text = 'SAE 140'
                Items.Strings = (
                  'SAE 140')
              end
            end
            object GroupBox7: TGroupBox
              Left = -2
              Top = 444
              Width = 789
              Height = 85
              Caption = 'G25-'#21322#27969#39636#27833#33026'('#23553#38281#24335#40786#36650')'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              object Label35: TLabel
                Left = 25
                Top = 35
                Width = 30
                Height = 16
                Caption = #27833#37327
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label36: TLabel
                Left = 151
                Top = 35
                Width = 60
                Height = 16
                Caption = #26412#27425#26178#38291
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label37: TLabel
                Left = 343
                Top = 35
                Width = 60
                Height = 16
                Caption = #19979#27425#26178#38291
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object dtG251: TDateTimePicker
                Left = 217
                Top = 32
                Width = 107
                Height = 24
                Date = 45505.661921921290000000
                Time = 45505.661921921290000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object dtG252: TDateTimePicker
                Left = 409
                Top = 33
                Width = 107
                Height = 24
                Date = 45505.661921921290000000
                Time = 45505.661921921290000000
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
              object tbQtyG25: TEdit
                Left = 61
                Top = 32
                Width = 65
                Height = 24
                Alignment = taRightJustify
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                Text = '0'
              end
              object btSaveG25: TButton
                Left = 701
                Top = 31
                Width = 75
                Height = 25
                Caption = 'Save'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
                OnClick = btSave234Click
              end
              object cbG25: TComboBox
                Left = 579
                Top = 32
                Width = 94
                Height = 24
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ItemIndex = 0
                ParentFont = False
                TabOrder = 4
                Text = 'NLGI#000'
                Items.Strings = (
                  'NLGI#000')
              end
            end
          end
        end
        object DBGrid3: TDBGrid
          Left = 797
          Top = 1
          Width = 413
          Height = 551
          Align = alClient
          DataSource = DataSource1
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Oil Search'
      ImageIndex = 1
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1211
        Height = 83
        Align = alTop
        TabOrder = 0
        object Label6: TLabel
          Left = 15
          Top = 16
          Width = 37
          Height = 17
          Caption = 'TSBH:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'VNI-Times'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 197
          Top = 15
          Width = 38
          Height = 17
          Caption = 'SBBH:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'VNI-Times'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 371
          Top = 15
          Width = 38
          Height = 16
          Caption = 'Name:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 15
          Top = 52
          Width = 37
          Height = 17
          Caption = 'Typle:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'VNI-Times'
          Font.Style = []
          ParentFont = False
        end
        object Label25: TLabel
          Left = 590
          Top = 49
          Width = 16
          Height = 17
          Caption = #65374
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'VNI-Times'
          Font.Style = []
          ParentFont = False
        end
        object Label33: TLabel
          Left = 183
          Top = 52
          Width = 52
          Height = 17
          Caption = 'DpName:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'VNI-Times'
          Font.Style = []
          ParentFont = False
        end
        object Button1: TButton
          Left = 749
          Top = 46
          Width = 75
          Height = 25
          Caption = 'Search'
          TabOrder = 0
          OnClick = btSearchClick2
        end
        object tbSTISID2: TEdit
          Left = 55
          Top = 14
          Width = 89
          Height = 21
          TabOrder = 1
        end
        object tbSSBBH2: TEdit
          Left = 242
          Top = 14
          Width = 106
          Height = 21
          TabOrder = 2
        end
        object cbSOilType2: TComboBox
          Left = 55
          Top = 52
          Width = 89
          Height = 21
          TabOrder = 3
          Items.Strings = (
            ''
            'R324'
            'R325'
            'R329'
            'R266'
            'R275'
            'G25')
        end
        object cbDep2: TComboBox
          Left = 243
          Top = 52
          Width = 105
          Height = 21
          TabOrder = 4
        end
        object tbSSname2: TEdit
          Left = 415
          Top = 14
          Width = 304
          Height = 21
          TabOrder = 5
        end
        object dtSoil1: TDateTimePicker
          Left = 474
          Top = 46
          Width = 107
          Height = 24
          Date = 45505.661921921290000000
          Time = 45505.661921921290000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object dtSoil2: TDateTimePicker
          Left = 612
          Top = 45
          Width = 107
          Height = 24
          Date = 45505.661921921290000000
          Time = 45505.661921921290000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object BitBtn1: TBitBtn
          Left = 950
          Top = 22
          Width = 107
          Height = 46
          Hint = 'Modify Current'
          Caption = 'Import'#38646#20214
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
            333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
            0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
            07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
            07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
            0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
            B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
            3BB33773333773333773B333333B3333333B7333333733333337}
          Layout = blGlyphTop
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 8
          Visible = False
          OnClick = BitBtn1Click
        end
        object CheckBox1: TCheckBox
          Left = 370
          Top = 50
          Width = 89
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Change Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object bbt6: TBitBtn
          Left = 880
          Top = 18
          Width = 49
          Height = 49
          Hint = 'Modify Current'
          Caption = 'Excel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
            333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
            0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
            07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
            07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
            0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
            B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
            3BB33773333773333773B333333B3333333B7333333733333337}
          Layout = blGlyphTop
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 10
          OnClick = bbt6Click
        end
      end
      object DBGrid1: TDBGrid
        Left = 222
        Top = 83
        Width = 989
        Height = 647
        Align = alClient
        DataSource = dsOil1
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid1DrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'TSBH'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SBBH'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'depname'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DEPID_MEMO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'YWPM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ZWPM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VWPM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Oil_id'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Sticky'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'quty'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Oil_prevDate'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Oil_date'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Oil_nextDate'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sno'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TSID'
            Visible = False
          end>
      end
      object GroupBox6: TGroupBox
        Left = 0
        Top = 83
        Width = 222
        Height = 647
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object Label39: TLabel
          Left = 39
          Top = 103
          Width = 19
          Height = 16
          Caption = 'Qty'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label40: TLabel
          Left = 15
          Top = 145
          Width = 54
          Height = 16
          Caption = 'This Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label41: TLabel
          Left = 14
          Top = 185
          Width = 55
          Height = 16
          Caption = 'Nest Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 37
          Top = 24
          Width = 37
          Height = 17
          Caption = 'TSBH:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'VNI-Times'
          Font.Style = []
          ParentFont = False
        end
        object lbSno: TDBText
          Left = 9
          Top = 224
          Width = 65
          Height = 17
          DataField = 'sno'
          DataSource = dsOil1
          Visible = False
        end
        object Label42: TLabel
          Left = 37
          Top = 62
          Width = 33
          Height = 17
          Caption = 'Type:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'VNI-Times'
          Font.Style = []
          ParentFont = False
        end
        object DtStart1: TDateTimePicker
          Left = 75
          Top = 141
          Width = 107
          Height = 24
          Date = 45505.661921921290000000
          Time = 45505.661921921290000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DtStart2: TDateTimePicker
          Left = 75
          Top = 181
          Width = 107
          Height = 24
          Date = 45505.661921921290000000
          Time = 45505.661921921290000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object btOilUpdate2: TButton
          Left = 73
          Top = 221
          Width = 107
          Height = 25
          Caption = 'Save'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = btOilUpdate2Click
        end
        object tbQuty2: TEdit
          Left = 75
          Top = 98
          Width = 105
          Height = 24
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Text = '0'
        end
        object cbOilType2: TComboBox
          Left = 74
          Top = 59
          Width = 105
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          Items.Strings = (
            ''
            'R324'
            'R325'
            'R329'
            'R266'
            'R275'
            'G25')
        end
        object DBtbTSID: TDBEdit
          Left = 75
          Top = 19
          Width = 107
          Height = 24
          DataField = 'TSBH'
          DataSource = dsOil1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
      end
    end
  end
  object qySearch: TQuery
    DatabaseName = 'DB'
    Left = 480
    Top = 464
    object qySearchTSBH: TStringField
      FieldName = 'TSBH'
    end
    object qySearchLSBH: TStringField
      FieldName = 'LSBH'
    end
    object qySearchDEPID: TStringField
      FieldName = 'DEPID'
    end
    object qySearchdepname: TStringField
      FieldName = 'depname'
    end
    object qySearchDEPID_MEMO: TStringField
      FieldName = 'DEPID_MEMO'
    end
    object qySearchYWPM: TStringField
      FieldName = 'YWPM'
    end
    object qySearchZWPM: TStringField
      FieldName = 'ZWPM'
    end
    object qySearchVWPM: TStringField
      FieldName = 'VWPM'
    end
    object qySearchTSID: TStringField
      FieldName = 'TSID'
    end
    object qySearchSBBH: TStringField
      FieldName = 'SBBH'
    end
  end
  object qyInsert: TQuery
    DatabaseName = 'DB'
    Left = 1024
    Top = 96
  end
  object DataSource1: TDataSource
    DataSet = qySearch
    OnDataChange = DataSource1DataChange
    Left = 536
    Top = 464
  end
  object qySearch1: TQuery
    DatabaseName = 'DB'
    Left = 1024
    Top = 144
  end
  object qyOilSearch: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT [sno],[TSCD_OIL].[TSID],TSCD.SBBH,BDepartment.depname,DEP' +
        'ID_MEMO'
      
        ',IsNull(TSCD_SB.YWPM,CLZL.YWPM) as YWPM,IsNull(TSCD_SB.ZWPM,CLZL' +
        '.ZWPM) as ZWPM, TSCD_SB.VWPM as VWPM'
      
        ',[Oil_id],[Oil_date],[Oil_nextDate],[usid],[quty] FROM [LIY_ERP]' +
        '.[dbo].[TSCD_OIL]'
      'inner join TSCD on TSCD.[TSID]=[TSCD_OIL].[TSID]'
      
        'left join  TSCD_BDepartment BDepartment on BDepartment.ID=TSCD.D' +
        'epID'
      'left join clzl on TSCD.SBBH = clzl.cldh'
      'left join TSCD_SB on TSCD.SBBH = TSCD_SB.SBBH'
      'where (Oil_date between '#39'2024-08-01'#39' and '#39'2024-08-02'#39')'
      'and [Oil_id]='#39'R234'#39
      'and [TSCD_OIL].TSID like '#39'20221100071%'#39
      'and TSCD.SBBH like '#39'A000100010%'#39
      'and depname='#39'A11'#39
      
        'and (TSCD_SB.YWPM like '#39'%HYDRAULIC PLANE CUTTING MACHINE%'#39' or TS' +
        'CD_SB.ZWPM like '#39'%HYDRAULIC PLANE CUTTING MACHINE%'#39' or TSCD_SB.V' +
        'WPM like '#39'%HYDRAULIC PLANE CUTTING MACHINE%'#39')')
    Left = 704
    Top = 32
    object qyOilSearchTSBH: TStringField
      FieldName = 'TSBH'
    end
    object StringField5: TStringField
      FieldName = 'depname'
    end
    object StringField6: TStringField
      FieldName = 'DEPID_MEMO'
    end
    object StringField8: TStringField
      FieldName = 'ZWPM'
    end
    object StringField9: TStringField
      FieldName = 'VWPM'
    end
    object qyOilSearchOil_id: TStringField
      FieldName = 'Oil_id'
    end
    object qyOilSearchSticky: TStringField
      FieldName = 'Sticky'
    end
    object qyOilSearchquty: TIntegerField
      FieldName = 'quty'
    end
    object qyOilSearchOil_prevDate: TStringField
      FieldName = 'Oil_prevDate'
    end
    object qyOilSearchOil_date: TStringField
      FieldName = 'Oil_date'
    end
    object qyOilSearchOil_nextDate: TStringField
      FieldName = 'Oil_nextDate'
    end
    object StringField2: TStringField
      FieldName = 'SBBH'
    end
    object StringField7: TStringField
      FieldName = 'YWPM'
      Visible = False
    end
    object StringField1: TStringField
      FieldName = 'TSID'
    end
    object qyOilSearchDEPID: TStringField
      FieldName = 'DEPID'
    end
    object qyOilSearchsno: TIntegerField
      FieldName = 'sno'
    end
  end
  object dsOil1: TDataSource
    DataSet = qyOilSearch
    OnDataChange = dsOil1DataChange
    Left = 760
    Top = 32
  end
  object OpenDialog: TOpenDialog
    FileName = '*.xlsx'
    Filter = 'CSV|*.csv|EXCEL|*.xls|EXCEL|*.xlsx'
    Left = 704
    Top = 160
  end
  object TSCD: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select TSID,TSBH,TSCD.SBBH,QTY,TSCD.DEPID,DEPID_MEMO,status,BDep' +
        'artment.depname,TSCD.userid,TSCD.userdate,LLNO,RKNO,LB,TSCD.YN'
      
        '       ,IsNull(TSCD_SB.YWPM,CLZL.YWPM) as YWPM,IsNull(TSCD_SB.ZW' +
        'PM,CLZL.ZWPM) as ZWPM'
      
        '       ,TSCD.Label_Tag,TSCD.RFID_Tag,TSCD.USERID_Tag,TSCD.USERDA' +
        'TE_Tag,TSCD.Memo,TSCD.MSBBH,IsNull(TSCD_SB.YWPM,MCLZL.YWPM) as M' +
        'YWPM,IsNull(TSCD_SB.ZWPM,MCLZL.ZWPM) as MZWPM'
      
        '       ,TSCD.Machine_Type,TSCD.Lean_ID,BDepart.DepName as LeanNa' +
        'me,BDepart.DepMemo'
      'from TSCD'
      
        'left join  TSCD_BDepartment BDepartment on BDepartment.ID=TSCD.D' +
        'epID'
      'left join  TSCD_BDepartment BDepart on BDepart.ID=TSCD.Lean_ID'
      'left join clzl on TSCD.SBBH = clzl.cldh'
      'left join TSCD_SB on TSCD.SBBH = TSCD_SB.SBBH'
      'left join clzl MCLZL on TSCD.MSBBH = MCLZL.cldh'
      'where 1=1'
      'and TSCD.USERID ='#39'83489'#39
      
        'and convert(smalldatetime,convert(varchar,TSCD.USERDATE,111)) be' +
        'tween  '#39'2023/05/21'#39' and '#39'2023/05/24'#39
      'order by TSID desc'
      ''
      '')
    Left = 396
    Top = 265
    object TSCDTSID: TStringField
      FieldName = 'TSID'
      FixedChar = True
      Size = 11
    end
    object TSCDTSBH: TStringField
      FieldName = 'TSBH'
      FixedChar = True
      Size = 15
    end
    object TSCDSBBH: TStringField
      FieldName = 'SBBH'
      FixedChar = True
      Size = 15
    end
    object TSCDQTY: TFloatField
      FieldName = 'QTY'
    end
    object TSCDDEPID: TStringField
      FieldName = 'DEPID'
      FixedChar = True
      Size = 10
    end
    object TSCDdepname: TStringField
      FieldName = 'depname'
      FixedChar = True
      Size = 50
    end
    object TSCDDEPID_MEMO: TStringField
      FieldName = 'DEPID_MEMO'
      FixedChar = True
    end
    object TSCDstatus: TStringField
      FieldName = 'status'
      FixedChar = True
      Size = 2
    end
    object TSCDuserid: TStringField
      FieldName = 'userid'
      FixedChar = True
      Size = 10
    end
    object TSCDuserdate: TDateTimeField
      FieldName = 'userdate'
    end
    object TSCDLLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object TSCDRKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object TSCDLB: TStringField
      FieldName = 'LB'
      FixedChar = True
      Size = 1
    end
    object TSCDYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object TSCDYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object TSCDLabel_Tag: TStringField
      FieldName = 'Label_Tag'
      FixedChar = True
      Size = 15
    end
    object TSCDZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object TSCDRFID_Tag: TStringField
      DisplayWidth = 24
      FieldName = 'RFID_Tag'
      FixedChar = True
      Size = 24
    end
    object TSCDUSERID_Tag: TStringField
      FieldName = 'USERID_Tag'
      FixedChar = True
      Size = 10
    end
    object TSCDUSERDATE_Tag: TDateTimeField
      FieldName = 'USERDATE_Tag'
    end
    object TSCDMemo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 100
    end
    object TSCDMSBBH: TStringField
      FieldName = 'MSBBH'
      FixedChar = True
      Size = 15
    end
    object TSCDMYWPM: TStringField
      FieldName = 'MYWPM'
      FixedChar = True
      Size = 200
    end
    object TSCDMZWPM: TStringField
      FieldName = 'MZWPM'
      FixedChar = True
      Size = 200
    end
    object TSCDMachine_Type: TStringField
      FieldName = 'Machine_Type'
      FixedChar = True
    end
    object TSCDDepMemo: TStringField
      FieldName = 'DepMemo'
      FixedChar = True
      Size = 50
    end
    object TSCDLeanName: TStringField
      FieldName = 'LeanName'
      FixedChar = True
      Size = 50
    end
    object TSCDLean_ID: TStringField
      FieldName = 'Lean_ID'
      FixedChar = True
      Size = 10
    end
  end
  object OpenDialog1: TOpenDialog
    FileName = '*.xlsx'
    Filter = 'CSV|*.csv|EXCEL|*.xls|EXCEL|*.xlsx'
    Left = 848
    Top = 176
  end
end
