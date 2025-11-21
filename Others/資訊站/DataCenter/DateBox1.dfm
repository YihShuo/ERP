object DateBox: TDateBox
  Left = 350
  Top = 189
  BorderStyle = bsNone
  BorderWidth = 3
  Caption = 'DateBox'
  ClientHeight = 629
  ClientWidth = 1022
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 69
    Width = 1022
    Height = 460
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 0
    object Panel4: TPanel
      Left = 24
      Top = 16
      Width = 469
      Height = 428
      BevelOuter = bvNone
      Color = clBlack
      TabOrder = 0
      object MC_START: TMonthCalendar
        Left = 2
        Top = 2
        Width = 465
        Height = 424
        Align = alCustom
        BorderWidth = 1
        CalColors.BackColor = clWhite
        CalColors.TextColor = clBlack
        CalColors.TitleBackColor = 3289904
        CalColors.TitleTextColor = 38655
        CalColors.TrailingTextColor = clSilver
        Date = 43831.417577638890000000
        FirstDayOfWeek = dowSunday
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -32
        Font.Name = 'Microsoft YaHei'
        Font.Style = [fsBold]
        ParentFont = False
        ShowToday = False
        ShowTodayCircle = False
        TabOrder = 0
        OnClick = MC_STARTClick
      end
      object P_MASK1: TPanel
        Left = 3
        Top = 93
        Width = 463
        Height = 41
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 3289904
        Font.Height = -29
        Font.Name = 'Microsoft YaHei'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label1: TLabel
          Left = 7
          Top = 8
          Width = 53
          Height = 31
          Caption = 'SUN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3289904
          Font.Height = -24
          Font.Name = 'Microsoft YaHei'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 68
          Top = 8
          Width = 65
          Height = 31
          Caption = 'MON'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3289904
          Font.Height = -24
          Font.Name = 'Microsoft YaHei'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 141
          Top = 8
          Width = 48
          Height = 31
          Caption = 'TUE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3289904
          Font.Height = -24
          Font.Name = 'Microsoft YaHei'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 202
          Top = 8
          Width = 59
          Height = 31
          Caption = 'WED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3289904
          Font.Height = -24
          Font.Name = 'Microsoft YaHei'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 270
          Top = 8
          Width = 54
          Height = 31
          Caption = 'THU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3289904
          Font.Height = -24
          Font.Name = 'Microsoft YaHei'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 344
          Top = 8
          Width = 38
          Height = 31
          Caption = 'FRI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3289904
          Font.Height = -24
          Font.Name = 'Microsoft YaHei'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 405
          Top = 8
          Width = 47
          Height = 31
          Caption = 'SAT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3289904
          Font.Height = -24
          Font.Name = 'Microsoft YaHei'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object Panel6: TPanel
        Left = 30
        Top = 26
        Width = 409
        Height = 41
        Align = alCustom
        BevelOuter = bvNone
        Caption = '2020/01/01'
        Color = 3289904
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -32
        Font.Name = 'Microsoft YaHei'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
    end
    object Panel5: TPanel
      Left = 528
      Top = 16
      Width = 469
      Height = 428
      BevelOuter = bvNone
      Color = clBlack
      TabOrder = 1
      object MC_END: TMonthCalendar
        Left = 2
        Top = 2
        Width = 465
        Height = 424
        Align = alCustom
        BorderWidth = 1
        CalColors.BackColor = clWhite
        CalColors.TextColor = clBlack
        CalColors.TitleBackColor = 3289904
        CalColors.TitleTextColor = 38655
        CalColors.TrailingTextColor = clSilver
        Date = 44196.417577638890000000
        FirstDayOfWeek = dowSunday
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -32
        Font.Name = 'Microsoft YaHei'
        Font.Style = [fsBold]
        ParentFont = False
        ShowToday = False
        ShowTodayCircle = False
        TabOrder = 0
        OnClick = MC_ENDClick
      end
      object Panel7: TPanel
        Left = 30
        Top = 26
        Width = 409
        Height = 41
        BevelOuter = bvNone
        Caption = '2020/12/31'
        Color = 3289904
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -32
        Font.Name = 'Microsoft YaHei'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object P_MASK2: TPanel
        Left = 3
        Top = 93
        Width = 463
        Height = 41
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 3289904
        Font.Height = -29
        Font.Name = 'Microsoft YaHei'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object Label8: TLabel
          Left = 7
          Top = 8
          Width = 53
          Height = 31
          Caption = 'SUN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3289904
          Font.Height = -24
          Font.Name = 'Microsoft YaHei'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 68
          Top = 8
          Width = 65
          Height = 31
          Caption = 'MON'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3289904
          Font.Height = -24
          Font.Name = 'Microsoft YaHei'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 141
          Top = 8
          Width = 48
          Height = 31
          Caption = 'TUE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3289904
          Font.Height = -24
          Font.Name = 'Microsoft YaHei'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 202
          Top = 8
          Width = 59
          Height = 31
          Caption = 'WED'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3289904
          Font.Height = -24
          Font.Name = 'Microsoft YaHei'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 270
          Top = 8
          Width = 54
          Height = 31
          Caption = 'THU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3289904
          Font.Height = -24
          Font.Name = 'Microsoft YaHei'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 344
          Top = 8
          Width = 38
          Height = 31
          Caption = 'FRI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3289904
          Font.Height = -24
          Font.Name = 'Microsoft YaHei'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 405
          Top = 8
          Width = 47
          Height = 31
          Caption = 'SAT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 3289904
          Font.Height = -24
          Font.Name = 'Microsoft YaHei'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1022
    Height = 69
    Align = alTop
    BevelOuter = bvNone
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object LB_TIPS: TLabel
      Left = 0
      Top = 0
      Width = 747
      Height = 69
      Align = alLeft
      Alignment = taCenter
      Caption = ' PLEASE SELECT YOUR DATE RANGE'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7332607
      Font.Height = -43
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
    object TP_CLOSE: TTouchPanel
      Left = 948
      Top = 0
      Width = 74
      Height = 69
      Align = alRight
      BevelOuter = bvNone
      Caption = ' '#9587' '
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -67
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnMouseDown = TP_CLOSEMouseDown
      OnMouseUp = TP_CLOSEMouseUp
      OnTouch = TP_CLOSETouch
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 529
    Width = 1022
    Height = 100
    Align = alBottom
    BevelOuter = bvNone
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object TP_OK: TTouchPanel
      Left = 431
      Top = 10
      Width = 160
      Height = 80
      BevelOuter = bvNone
      Caption = 'OK'
      Color = 3289904
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -40
      Font.Name = 'Microsoft YaHei'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnMouseDown = TP_OKMouseDown
      OnMouseUp = TP_OKMouseUp
      OnTouch = TP_OKTouch
    end
  end
end
