object BOMInformation: TBOMInformation
  Left = 352
  Top = 86
  AutoScroll = False
  Caption = 'BOMInformation'
  ClientHeight = 749
  ClientWidth = 1370
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
  object SBtn3: TSpeedButton
    Left = 353
    Top = 73
    Width = 44
    Height = 22
    Caption = 'like'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Splitter1: TSplitter
    Left = 0
    Top = 569
    Width = 1370
    Height = 8
    Cursor = crVSplit
    Align = alTop
    Color = clActiveCaption
    ParentColor = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1370
    Height = 569
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object n: TButton
      Left = 768
      Top = 36
      Width = 81
      Height = 30
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = nClick
    end
    object Button2: TButton
      Left = 769
      Top = 72
      Width = 81
      Height = 30
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 393
      Width = 825
      Height = 161
      Caption = 'Part'#37096#20301
      Color = clBtnFace
      ParentColor = False
      TabOrder = 2
      object Label14: TLabel
        Left = 2
        Top = 23
        Width = 82
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'PartNo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 4
        Top = 50
        Width = 79
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'PartCN:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 5
        Top = 108
        Width = 78
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'PartEN:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object SpeedButton9: TSpeedButton
        Left = 778
        Top = 134
        Width = 33
        Height = 22
        Caption = 'like'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = SpeedButtonClick
      end
      object SpeedButton7: TSpeedButton
        Left = 777
        Top = 103
        Width = 33
        Height = 22
        Caption = 'like'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = SpeedButtonClick
      end
      object SpeedButton6: TSpeedButton
        Left = 778
        Top = 46
        Width = 33
        Height = 22
        Caption = 'like'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = SpeedButtonClick
      end
      object SpeedButton8: TSpeedButton
        Left = 778
        Top = 75
        Width = 33
        Height = 22
        Caption = 'like'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = SpeedButtonClick
      end
      object SpeedButton10: TSpeedButton
        Left = 779
        Top = 17
        Width = 33
        Height = 22
        Caption = 'like'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = SpeedButtonClick
      end
      object PartNoEdit: TEdit
        Left = 85
        Top = 17
        Width = 692
        Height = 24
        CharCase = ecUpperCase
        TabOrder = 0
      end
      object ZWSMEdit1: TEdit
        Left = 85
        Top = 46
        Width = 692
        Height = 24
        CharCase = ecUpperCase
        TabOrder = 1
      end
      object ZWSMEdit2: TEdit
        Left = 85
        Top = 75
        Width = 692
        Height = 24
        CharCase = ecUpperCase
        TabOrder = 2
      end
      object YWSMEdit1: TEdit
        Left = 85
        Top = 103
        Width = 692
        Height = 24
        CharCase = ecUpperCase
        TabOrder = 3
      end
      object YWSMEdit2: TEdit
        Left = 85
        Top = 133
        Width = 692
        Height = 24
        CharCase = ecUpperCase
        TabOrder = 4
      end
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 233
      Width = 825
      Height = 161
      Caption = '   Material '#26448#26009
      Color = clSkyBlue
      ParentColor = False
      TabOrder = 3
      object Label5: TLabel
        Left = 0
        Top = 18
        Width = 83
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'MatNo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 0
        Top = 45
        Width = 83
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'MatCN:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 0
        Top = 102
        Width = 83
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'MatEN:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object SpeedButton1: TSpeedButton
        Left = 778
        Top = 19
        Width = 33
        Height = 22
        Caption = 'like'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = SpeedButtonClick
      end
      object SpeedButton2: TSpeedButton
        Left = 778
        Top = 46
        Width = 33
        Height = 22
        Caption = 'like'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = SpeedButtonClick
      end
      object SpeedButton4: TSpeedButton
        Left = 777
        Top = 72
        Width = 33
        Height = 22
        Caption = 'like'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = SpeedButtonClick
      end
      object SpeedButton3: TSpeedButton
        Left = 777
        Top = 101
        Width = 33
        Height = 22
        Caption = 'like'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = SpeedButtonClick
      end
      object SpeedButton5: TSpeedButton
        Left = 778
        Top = 128
        Width = 33
        Height = 22
        Caption = 'like'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = SpeedButtonClick
      end
      object YWPMEdit1: TEdit
        Left = 85
        Top = 99
        Width = 695
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object YWPMEdit2: TEdit
        Left = 85
        Top = 126
        Width = 695
        Height = 24
        CharCase = ecUpperCase
        TabOrder = 1
      end
      object ZWPMEdit1: TEdit
        Left = 85
        Top = 69
        Width = 695
        Height = 24
        CharCase = ecUpperCase
        TabOrder = 2
      end
      object ZWPMEdit: TEdit
        Left = 85
        Top = 44
        Width = 695
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object MatNoEdit: TEdit
        Left = 85
        Top = 17
        Width = 695
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object MatColumnShowCK: TCheckBox
        Left = 0
        Top = 0
        Width = 17
        Height = 17
        TabOrder = 5
      end
    end
    object GroupBox3: TGroupBox
      Left = 8
      Top = 4
      Width = 753
      Height = 221
      Caption = 'Article Basic'
      TabOrder = 4
      object Label4: TLabel
        Left = 5
        Top = 23
        Width = 72
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Article:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object SpeedButton11: TSpeedButton
        Left = 664
        Top = 20
        Width = 33
        Height = 22
        Caption = 'like'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = SpeedButtonClick
      end
      object Label3: TLabel
        Left = 5
        Top = 137
        Width = 72
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Sup No:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object ZSJC: TLabel
        Left = 150
        Top = 137
        Width = 53
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Supplier:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object XTMH: TLabel
        Left = 325
        Top = 135
        Width = 59
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'XTMH:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object clbh: TLabel
        Left = 5
        Top = 110
        Width = 72
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'BuyNo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 143
        Top = 111
        Width = 59
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'DDMH:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 319
        Top = 110
        Width = 65
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'DAOMH:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object XieMing: TLabel
        Left = 5
        Top = 77
        Width = 72
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'XieMing:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object SpeedButton12: TSpeedButton
        Left = 372
        Top = 74
        Width = 33
        Height = 22
        Caption = 'like'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = SpeedButtonClick
      end
      object Label9: TLabel
        Left = 410
        Top = 78
        Width = 72
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Season:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 598
        Top = 131
        Width = 28
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'To:'
      end
      object Label13: TLabel
        Left = 494
        Top = 163
        Width = 27
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'To:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 268
        Top = 193
        Width = 28
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'To:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 5
        Top = 49
        Width = 72
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'SR#:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object SpeedButton13: TSpeedButton
        Left = 664
        Top = 46
        Width = 33
        Height = 22
        Caption = 'like'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        OnClick = SpeedButtonClick
      end
      object Label16: TLabel
        Left = 5
        Top = 165
        Width = 72
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Size From :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 182
        Top = 164
        Width = 20
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'To'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 407
        Top = 195
        Width = 27
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'LB:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 535
        Top = 195
        Width = 50
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Factory:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object SKUEdit: TEdit
        Left = 78
        Top = 20
        Width = 586
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object SupEdit: TEdit
        Left = 78
        Top = 134
        Width = 67
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object ZSJCEdit1: TEdit
        Left = 206
        Top = 131
        Width = 113
        Height = 24
        CharCase = ecUpperCase
        TabOrder = 2
      end
      object XTMHEdit1: TEdit
        Left = 391
        Top = 132
        Width = 110
        Height = 24
        CharCase = ecUpperCase
        TabOrder = 3
      end
      object BuyNoEdit: TEdit
        Left = 78
        Top = 106
        Width = 66
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DDMHEdit1: TEdit
        Left = 206
        Top = 105
        Width = 113
        Height = 24
        CharCase = ecUpperCase
        TabOrder = 5
      end
      object DAOMHEdit1: TEdit
        Left = 391
        Top = 107
        Width = 110
        Height = 24
        CharCase = ecUpperCase
        TabOrder = 6
      end
      object XieMingEdit: TEdit
        Left = 78
        Top = 74
        Width = 291
        Height = 24
        CharCase = ecUpperCase
        TabOrder = 7
      end
      object JIJIEEdit1: TEdit
        Left = 494
        Top = 75
        Width = 96
        Height = 24
        CharCase = ecUpperCase
        TabOrder = 8
      end
      object dtpStart: TDateTimePicker
        Left = 505
        Top = 128
        Width = 88
        Height = 21
        Date = 42370.568310717590000000
        Format = 'yyyy/MM/dd'
        Time = 42370.568310717590000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object DateTimePicker1: TDateTimePicker
        Left = 638
        Top = 128
        Width = 89
        Height = 21
        Date = 42705.568310717590000000
        Format = 'yyyy/MM/dd'
        Time = 42705.568310717590000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object CB5: TCheckBox
        Left = 515
        Top = 101
        Width = 129
        Height = 26
        Caption = 'RevDT'#30064#21205#26085#26399
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 11
      end
      object CB6: TCheckBox
        Left = 593
        Top = 74
        Width = 132
        Height = 27
        Caption = #36942#28670#20839#37559'SKU(V)'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 12
      end
      object DateTimePicker4: TDateTimePicker
        Left = 527
        Top = 159
        Width = 90
        Height = 21
        Date = 42705.568310717590000000
        Format = 'yyyy/MM/dd'
        Time = 42705.568310717590000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
      end
      object DateTimePicker5: TDateTimePicker
        Left = 404
        Top = 160
        Width = 88
        Height = 21
        Date = 42370.568310717590000000
        Format = 'yyyy/MM/dd'
        Time = 42370.568310717590000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
      end
      object CheckBox2: TCheckBox
        Left = 317
        Top = 159
        Width = 81
        Height = 26
        Caption = 'ShipDate:'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 15
      end
      object DateTimePicker2: TDateTimePicker
        Left = 307
        Top = 190
        Width = 90
        Height = 21
        Date = 42705.568310717590000000
        Format = 'yyyy/MM/dd'
        Time = 42705.568310717590000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 16
      end
      object DateTimePicker3: TDateTimePicker
        Left = 163
        Top = 190
        Width = 89
        Height = 21
        Date = 42370.568310717590000000
        Format = 'yyyy/MM/dd'
        Time = 42370.568310717590000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 17
      end
      object CheckBox1: TCheckBox
        Left = 8
        Top = 187
        Width = 153
        Height = 26
        Caption = #19979#21934#26085#26399' OrderDate'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 18
      end
      object SREdit: TEdit
        Left = 78
        Top = 46
        Width = 586
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 19
      end
      object CCQQEdit: TEdit
        Left = 80
        Top = 161
        Width = 89
        Height = 24
        TabOrder = 20
      end
      object CCQZEdit: TEdit
        Left = 211
        Top = 161
        Width = 98
        Height = 24
        TabOrder = 21
      end
      object cbLB: TComboBox
        Left = 440
        Top = 192
        Width = 89
        Height = 24
        Style = csDropDownList
        ItemHeight = 16
        TabOrder = 22
        Items.Strings = (
          ''
          '1'
          '3')
      end
      object cbFactory: TComboBox
        Left = 592
        Top = 192
        Width = 89
        Height = 24
        Style = csDropDownList
        ItemHeight = 16
        ItemIndex = 0
        TabOrder = 23
        Text = 'JNG'
        Items.Strings = (
          'JNG'
          'YQA')
      end
    end
    object CB3: TCheckBox
      Left = 763
      Top = 139
      Width = 117
      Height = 26
      BiDiMode = bdLeftToRight
      Caption = 'Show Child Mat'
      Checked = True
      Color = clBtnFace
      ParentBiDiMode = False
      ParentColor = False
      State = cbChecked
      TabOrder = 5
    end
    object BrdCombo: TComboBox
      Left = 762
      Top = 112
      Width = 110
      Height = 24
      ItemHeight = 16
      TabOrder = 6
    end
    object CB4: TCheckBox
      Left = 763
      Top = 159
      Width = 189
      Height = 26
      BiDiMode = bdLeftToRight
      Caption = 'Developing Dropped Show'
      Color = clBtnFace
      ParentBiDiMode = False
      ParentColor = False
      TabOrder = 7
    end
    object CB7: TCheckBox
      Left = 763
      Top = 179
      Width = 181
      Height = 26
      BiDiMode = bdLeftToRight
      Caption = 'Production Dropped Show'
      Color = clBtnFace
      ParentBiDiMode = False
      ParentColor = False
      TabOrder = 8
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 577
    Width = 1370
    Height = 172
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DEVCODE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = #38283#30332#20195#30908'|DEVCODE'
        Title.Color = clActiveCaption
        Width = 127
      end
      item
        EditButtons = <>
        FieldName = 'JiJie'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = #23395#21029'|Sea'
        Title.Color = clActiveCaption
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'ARTICLE|ARTNO'
        Title.Color = clSkyBlue
        Width = 98
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = #38795#22411#21517#31281'|XieMing'
        Title.Color = clSkyBlue
        Width = 138
      end
      item
        EditButtons = <>
        FieldName = 'DAOMH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = #20992#27169#34399'|DAOMH'
        Title.Color = clSkyBlue
        Width = 98
      end
      item
        EditButtons = <>
        FieldName = 'DDMH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = #22823#24213#27169#34399'|DDMH'
        Title.Color = clSkyBlue
        Width = 107
      end
      item
        EditButtons = <>
        FieldName = 'XTMH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = #26982#38957#27169#34399'|XTMH'
        Title.Color = clSkyBlue
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'XieXing'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = #38795#22411'|Style No'
        Title.Color = clSkyBlue
        Width = 109
      end
      item
        EditButtons = <>
        FieldName = 'SheHao'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = #33394#34399'|Color'
        Title.Color = clSkyBlue
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'bwdh'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = #37096#20301'No|Parts'
        Title.Color = clLime
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'ywsm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = #37096#20301#33521#25991'|PartEN'
        Title.Color = clLime
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'zwsm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = '|'#37096#20301#20013#25991'|PartCN'
        Title.Color = clLime
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = 'bwlb'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = #37096#20301#39006#21029'|BWLB'
        Title.Color = clLime
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = #26448#26009#32232#34399'|MatNO'
        Title.Color = clLime
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'zwpm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = #33521#25991#21517#31281'|MatCN'
        Title.Color = clLime
        Width = 229
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = #20013#25991#21517#31281'|MatEN'
        Title.Color = clLime
        Width = 273
      end
      item
        EditButtons = <>
        FieldName = 'dwbh'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = #21934#20301'|Unit'
        Title.Color = clLime
        Width = 36
      end
      item
        EditButtons = <>
        FieldName = 'LOSS'
        Footers = <>
        Title.Caption = #32791#25613'|LOSS'
        Title.Color = clLime
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Footers = <>
        Title.Caption = #29992#37327'|CLSL'
        Title.Color = clLime
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'CCQQ'
        Footers = <>
        Title.Caption = #23610#30908#36215'|CCQQ'
        Title.Color = clLime
      end
      item
        EditButtons = <>
        FieldName = 'CCQZ'
        Footers = <>
        Title.Caption = #23610#30908#36804'|CCQZ'
        Title.Color = clLime
      end
      item
        EditButtons = <>
        FieldName = 'clzmlb'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = #23376#27597'|LB'
        Title.Color = clLime
        Width = 36
      end
      item
        EditButtons = <>
        FieldName = 'CSBH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = #24288#21830'No|Sup No'
        Title.Color = clLime
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'zsjc'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = #24288#21830'|Supplier'
        Title.Color = clLime
        Width = 101
      end
      item
        EditButtons = <>
        FieldName = 'fd'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'FD|FD'
        Title.Color = clLime
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'Engname'
        Footers = <>
        Title.Caption = #20351#29992#32773'|Engname'
        Title.Color = clLime
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = #20462#25913#26085#26399'|USERDATE'
        Title.Color = clLime
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'Dropped_KF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = #38283#30332'|Dropped'
        Title.Color = clSkyBlue
        Width = 39
      end
      item
        EditButtons = <>
        FieldName = 'Dropped_PD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = #37327#29986'|Dropped'
        Title.Color = clSkyBlue
        Width = 39
      end
      item
        EditButtons = <>
        FieldName = 'KFCQ'
        Footers = <>
        Title.Caption = #24037#24288'|Factory'
        Width = 50
      end>
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 400
    Top = 280
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      ''
      
        'select distinct kfxxzl.DEVCODE,kfxxzl.JiJie,bwzl.bwdh,bwzl.ywsm,' +
        'bwzl.zwsm,xxzl.DAOMH,xxzl.DDMH,xxzl.XTMH,xxzl.XieXing,xxzl.SheHa' +
        'o,xxzl.ARTICLE'
      
        '       ,xxzl.XieMing,'#39'Assembly'#39' as Type ,xxzls.BWLB,xxzls.CLBH,c' +
        'lzl.dwbh,clzl.ywpm,clzl.zwpm,XXZLS.CLSL,XXZLS.CCQQ,XXZLS.CCQZ,XX' +
        'ZLS.LOSS,xxzls.USERDATE,xxzls.CSBH,zszl.zsjc,CLZL.clzmlb '
      
        '       ,(case when ypzl.fd='#39#39' then kfxxzl.fd when ypzl.fd<>'#39#39' th' +
        'en ypzl.fd  else kfxxzl.fd end) as fd,xxzlKF.Dropped as Dropped_' +
        'KF,xxzlPD.Dropped as  Dropped_PD,BUsers.Engname  '
      'from xxzl'
      
        'left join (select xxzls.XieXing,xxzls.SheHao,Max(xxzls.UserDate)' +
        ' as USerdate,xxzls.bwbh,xxzls.bwlb,xxzls.clbh,xxzls.csbh,XXZLS.C' +
        'LSL,XXZLS.CCQQ,XXZLS.CCQZ,XXZLS.LOSS'
      
        'from xxzls,xxzl where Xxzls.xiexing=xxzl.xiexing and xxzls.sheha' +
        'o=xxzl.shehao'
      '       and ((xxzl.ARTICLE like '#39'172633C%'#39'))'
      
        ' and  xxzl.khdh  in (select KFDH from KFZL where KFJC = '#39'CONVERS' +
        'E'#39')'
      
        'Group by xxzls.XieXing,xxzls.SheHao,xxzls.bwbh,xxzls.bwlb,xxzls.' +
        'clbh,xxzls.csbh,XXZLS.CLSL,XXZLS.CCQQ,XXZLS.CCQZ,XXZLS.LOSS'
      
        ') XXZLs on xxzls.XieXing = xxzl.XieXing and xxzls.SheHao = xxzl.' +
        'SheHao'
      
        'left join kfxxzl on kfxxzl.Xiexing = xxzl.XieXing and kfxxzl.She' +
        'Hao = xxzl.SheHao '
      
        'left join xxzlPD on xxzlPD.Xiexing = xxzl.XieXing and xxzlPD.She' +
        'Hao = xxzl.SheHao '
      
        'left join xxzlKF on xxzlKF.Xiexing = xxzl.XieXing and xxzlKF.She' +
        'Hao = xxzl.SheHao '
      
        'left join ypzl on kfxxzl.Xiexing = ypzl.XieXing and kfxxzl.SheHa' +
        'o = ypzl.SheHao and kfxxzl.ARTICLE= ypzl.ARTICLE '
      'left join BUsers on BUsers.UserID=ypzl.UserID '
      'left join kfzl on kfzl.kfdh = xxzl.khdh'
      
        'left join DDZL on DDZL.XieXing = xxzl.XieXing and DDZL.SheHao = ' +
        'xxzl.SheHao '
      'left join bwzl on bwzl.bwdh = xxzls.BWBH '
      'left join clzl on clzl.cldh = xxzls.CLBH'
      'left join zszl on zszl.zsdh = xxzls.CSBH '
      'where  1=1'
      ' and IsNull(xxzlKF.Dropped,0)=0'
      ' and IsNull(xxzlPD.Dropped,0)=0'
      '       and ((xxzl.ARTICLE like '#39'172633C%'#39'))'
      
        ' and  xxzl.khdh  in (select KFDH from KFZL where KFJC = '#39'CONVERS' +
        'E'#39')'
      '       and ((xxzls.CLBH like '#39'L090000241%'#39'))'
      
        ' and exists ( select XieXing from XXZLS where xxzls.XieXing = xx' +
        'zl.XieXing and xxzls.SheHao = xxzl.SheHao'
      
        ' and  xxzl.khdh  in (select KFDH from KFZL where KFJC = '#39'CONVERS' +
        'E'#39')'
      ')'
      'union all'
      
        'select distinct kfxxzl.DEVCODE,kfxxzl.JiJie,bwzl.bwdh,bwzl.ywsm,' +
        'bwzl.zwsm,xxzl.DAOMH,xxzl.DDMH,xxzl.XTMH,xxzl.XieXing,xxzl.SheHa' +
        'o,xxzl.ARTICLE'
      
        ',xxzl.XieMing,'#39'Extra'#39' as Type,xxzls.bwlb ,clzhzl.cldh1,clzl.dwbh' +
        ',clzl.ywpm,clzl.zwpm,XXZLS.CLSL*clzhzl.syl as CLSL,XXZLS.CCQQ,XX' +
        'ZLS.CCQZ,XXZLS.LOSS,xxzls.USERDATE,clzhzl.zsdh as CSBH,zszl.zsjc' +
        ',CLZL.clzmlb '
      
        ',(case when ypzl.fd='#39#39' then kfxxzl.fd when ypzl.fd<>'#39#39' then ypzl' +
        '.fd  else kfxxzl.fd end) as fd,xxzlKF.Dropped as Dropped_KF,xxzl' +
        'PD.Dropped as  Dropped_PD,BUsers.Engname    '
      'from xxzl'
      
        'left join (select xxzls.XieXing,xxzls.SheHao,Max(xxzls.UserDate)' +
        ' as USerdate,xxzls.bwbh,xxzls.bwlb,xxzls.clbh,xxzls.csbh,XXZLS.C' +
        'LSL,XXZLS.CCQQ,XXZLS.CCQZ,XXZLS.LOSS'
      
        'from xxzls,xxzl where Xxzls.xiexing=xxzl.xiexing and xxzls.sheha' +
        'o=xxzl.shehao'
      '       and ((xxzl.ARTICLE like '#39'172633C%'#39'))'
      
        ' and  xxzl.khdh  in (select KFDH from KFZL where KFJC = '#39'CONVERS' +
        'E'#39')'
      
        'Group by xxzls.XieXing,xxzls.SheHao,xxzls.bwbh,xxzls.bwlb,xxzls.' +
        'clbh,xxzls.csbh,XXZLS.CLSL,XXZLS.CCQQ,XXZLS.CCQZ,XXZLS.LOSS'
      
        ') XXZLs on xxzls.XieXing = xxzl.XieXing and xxzls.SheHao = xxzl.' +
        'SheHao'
      
        'left join kfxxzl on kfxxzl.Xiexing = xxzl.XieXing and kfxxzl.She' +
        'Hao = xxzl.SheHao '
      
        'left join xxzlPD on xxzlPD.Xiexing = xxzl.XieXing and xxzlPD.She' +
        'Hao = xxzl.SheHao '
      
        'left join xxzlKF on xxzlKF.Xiexing = xxzl.XieXing and xxzlKF.She' +
        'Hao = xxzl.SheHao '
      
        'left join ypzl on kfxxzl.Xiexing = ypzl.XieXing and kfxxzl.SheHa' +
        'o = ypzl.SheHao and kfxxzl.ARTICLE= ypzl.ARTICLE '
      'left join BUsers on BUsers.UserID=ypzl.UserID '
      'left join kfzl on kfzl.kfdh = xxzl.khdh'
      
        'left join DDZL on DDZL.XieXing = xxzl.XieXing and DDZL.SheHao = ' +
        'xxzl.SheHao '
      'left join bwzl on bwzl.bwdh = xxzls.BWBH '
      'inner join clzhzl on xxzls.CLBH = clzhzl.cldh '
      'left join clzl on clzl.cldh = clzhzl.cldh1'
      'left join zszl on ZSZL.ZSDH=clzhzl.zsdh '
      'where  1=1'
      ' and IsNull(xxzlKF.Dropped,0)=0'
      ' and IsNull(xxzlPD.Dropped,0)=0'
      '       and ((xxzl.ARTICLE like '#39'172633C%'#39'))'
      
        ' and  xxzl.khdh  in (select KFDH from KFZL where KFJC = '#39'CONVERS' +
        'E'#39')'
      '       and ((xxzls.CLBH like '#39'L090000241%'#39'))'
      
        ' and exists ( select XieXing from XXZLS where xxzls.XieXing = xx' +
        'zl.XieXing and xxzls.SheHao = xxzl.SheHao'
      
        ' and  xxzl.khdh  in (select KFDH from KFZL where KFJC = '#39'CONVERS' +
        'E'#39')'
      ')'
      'order by xxzl.article,bwzl.bwdh,type')
    Left = 400
    Top = 312
    object Query1DEVCODE: TStringField
      FieldName = 'DEVCODE'
      FixedChar = True
    end
    object Query1JiJie: TStringField
      FieldName = 'JiJie'
      FixedChar = True
    end
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1DAOMH: TStringField
      FieldName = 'DAOMH'
      FixedChar = True
      Size = 30
    end
    object Query1DDMH: TStringField
      FieldName = 'DDMH'
      FixedChar = True
      Size = 30
    end
    object Query1XTMH: TStringField
      FieldName = 'XTMH'
      FixedChar = True
      Size = 30
    end
    object Query1XieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object Query1SheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object Query1bwdh: TStringField
      FieldName = 'bwdh'
      FixedChar = True
      Size = 4
    end
    object Query1ywsm: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 40
    end
    object Query1zwsm: TStringField
      FieldName = 'zwsm'
      FixedChar = True
      Size = 40
    end
    object Query1bwlb: TStringField
      FieldName = 'bwlb'
      FixedChar = True
      Size = 1
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1ywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object Query1zwpm: TStringField
      FieldName = 'zwpm'
      FixedChar = True
      Size = 200
    end
    object Query1dwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object Query1LOSS: TFloatField
      FieldName = 'LOSS'
    end
    object Query1CLSL: TFloatField
      FieldName = 'CLSL'
    end
    object Query1CCQQ: TStringField
      FieldName = 'CCQQ'
      FixedChar = True
      Size = 6
    end
    object Query1CCQZ: TStringField
      FieldName = 'CCQZ'
      FixedChar = True
      Size = 6
    end
    object Query1clzmlb: TStringField
      FieldName = 'clzmlb'
      FixedChar = True
      Size = 1
    end
    object Query1CSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object Query1zsjc: TStringField
      FieldName = 'zsjc'
      FixedChar = True
    end
    object Query1fd: TStringField
      FieldName = 'fd'
      FixedChar = True
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object Query1Dropped_KF: TBooleanField
      FieldName = 'Dropped_KF'
    end
    object Query1Dropped_PD: TBooleanField
      FieldName = 'Dropped_PD'
    end
    object Query1Engname: TStringField
      FieldName = 'Engname'
      FixedChar = True
    end
    object Query1KFCQ: TStringField
      FieldName = 'KFCQ'
    end
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Excel File(*.xls)|*.xls|CSV(comma split)(*.csv)|*.csv|Web Page(*' +
      '.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 435
    Top = 280
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 400
    Top = 344
  end
end
