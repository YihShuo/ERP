object OutsoleInspection_Size: TOutsoleInspection_Size
  Left = 738
  Top = 419
  Width = 1120
  Height = 519
  BorderIcons = [biSystemMenu]
  BorderWidth = 1
  Caption = 'Size'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 210
    Width = 1110
    Height = 276
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clBlack
    TabOrder = 0
    object Button1: TButton
      Left = 392
      Top = 10
      Width = 115
      Height = 40
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 591
      Top = 10
      Width = 113
      Height = 41
      Caption = 'Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1110
    Height = 210
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BorderWidth = 1
    Color = clBlack
    TabOrder = 1
    object Label1: TLabel
      Left = 3
      Top = 3
      Width = 1104
      Height = 45
      Align = alTop
      AutoSize = False
      Caption = 'Shoe Size:'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -35
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object SizeBox: TCheckListBox
      Left = 38
      Top = 48
      Width = 1069
      Height = 159
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clBlack
      Columns = 9
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -32
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemHeight = 37
      Items.Strings = (
        '01.0'
        '01.5'
        '02.0'
        '02.5'
        '03.0'
        '03.5'
        '04.0'
        '04.5'
        '05.0'
        '05.5'
        '06.0'
        '06.5'
        '07.0'
        '07.5'
        '08.0'
        '08.5'
        '09.0'
        '09.5'
        '10.0'
        '10.5'
        '11.0'
        '11.5'
        '12.0'
        '12.5'
        '13.0'
        '13.5'
        '14.0'
        '14.5'
        '15.0'
        '15.5'
        '16.0'
        '16.5'
        '17.0'
        '17.5'
        '18.0'
        '18.5')
      ParentFont = False
      TabOrder = 0
      OnMouseDown = SizeBoxMouseDown
    end
    object Panel3: TPanel
      Left = 3
      Top = 48
      Width = 35
      Height = 159
      Align = alLeft
      BevelOuter = bvNone
      Color = clBlack
      TabOrder = 1
    end
    object Button3: TButton
      Left = 826
      Top = 10
      Width = 126
      Height = 34
      Caption = 'Select All'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 952
      Top = 10
      Width = 142
      Height = 34
      Caption = 'Unselect All'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = Button4Click
    end
  end
end
