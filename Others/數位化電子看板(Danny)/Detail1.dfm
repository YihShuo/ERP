object Details: TDetails
  Left = 397
  Top = 146
  Width = 1190
  Height = 720
  Caption = 'DETAILS'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = #24494#36575#27491#40657#39636
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 20
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1174
    Height = 681
    Align = alClient
    Color = clBlack
    TabOrder = 0
    object Label1: TLabel
      Left = 1
      Top = 311
      Width = 1172
      Height = 41
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'TOP 3 DEFECT REASON'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Layout = tlBottom
    end
    object StringGrid2: TStringGrid
      Left = 1
      Top = 184
      Width = 1172
      Height = 127
      Align = alTop
      Color = clBlack
      ColCount = 13
      DefaultColWidth = 85
      DefaultRowHeight = 20
      Enabled = False
      FixedCols = 0
      RowCount = 4
      FixedRows = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ScrollBars = ssNone
      TabOrder = 0
      OnDrawCell = StringGrid2DrawCell
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 1172
      Height = 56
      Align = alTop
      Color = clGradientActiveCaption
      TabOrder = 1
      object Label2: TLabel
        Left = 16
        Top = 1
        Width = 73
        Height = 24
        Caption = 'Lean'#65306
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 320
        Top = 1
        Width = 86
        Height = 24
        Caption = 'Target'#65306
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 592
        Top = 1
        Width = 107
        Height = 24
        Caption = 'Quantity'#65306
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 48
        Top = 24
        Width = 65
        Height = 29
        Caption = 'LEAN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 368
        Top = 24
        Width = 71
        Height = 29
        Caption = 'Target'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 664
        Top = 24
        Width = 97
        Height = 29
        Caption = 'Quantity'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 760
        Top = 1
        Width = 411
        Height = 54
        Align = alRight
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -37
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 57
      Width = 1172
      Height = 127
      Align = alTop
      BevelOuter = bvNone
      Color = clBlack
      TabOrder = 2
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 120
        Height = 127
        Align = alLeft
        TabOrder = 0
        object Panel6: TPanel
          Left = 1
          Top = 1
          Width = 118
          Height = 32
          Align = alTop
          BevelInner = bvLowered
          BevelOuter = bvNone
          Caption = 'Picture'
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object Panel7: TPanel
          Left = 1
          Top = 33
          Width = 118
          Height = 31
          Align = alTop
          BevelInner = bvLowered
          BevelOuter = bvNone
          Color = clBlack
          TabOrder = 1
          object Image1: TImage
            Left = 1
            Top = 1
            Width = 116
            Height = 29
            Align = alClient
            Stretch = True
          end
        end
        object Panel8: TPanel
          Left = 1
          Top = 64
          Width = 118
          Height = 31
          Align = alTop
          BevelInner = bvLowered
          BevelOuter = bvNone
          Color = clBlack
          TabOrder = 2
          object Image2: TImage
            Left = 1
            Top = 1
            Width = 116
            Height = 29
            Align = alClient
            Stretch = True
          end
        end
        object Panel9: TPanel
          Left = 1
          Top = 95
          Width = 118
          Height = 31
          Align = alTop
          BevelInner = bvLowered
          BevelOuter = bvNone
          Color = clBlack
          TabOrder = 3
          object Image3: TImage
            Left = 1
            Top = 1
            Width = 116
            Height = 29
            Align = alClient
            Stretch = True
          end
        end
      end
      object Panel10: TPanel
        Left = 120
        Top = 0
        Width = 1052
        Height = 127
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object StringGrid1: TStringGrid
          Left = 0
          Top = 0
          Width = 1052
          Height = 127
          Align = alClient
          Color = clBlack
          ColCount = 3
          DefaultRowHeight = 30
          Enabled = False
          FixedCols = 0
          RowCount = 4
          FixedRows = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ScrollBars = ssNone
          TabOrder = 0
          OnDrawCell = StringGrid1DrawCell
        end
      end
    end
    object Panel11: TPanel
      Left = 1
      Top = 352
      Width = 1172
      Height = 277
      Align = alTop
      BevelOuter = bvNone
      Color = clBlack
      TabOrder = 3
      object StringGrid3: TStringGrid
        Left = 0
        Top = 0
        Width = 1172
        Height = 43
        Align = alTop
        Color = clBlack
        ColCount = 3
        DefaultColWidth = 392
        DefaultRowHeight = 40
        Enabled = False
        FixedCols = 0
        RowCount = 1
        FixedRows = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ScrollBars = ssNone
        TabOrder = 0
        OnDrawCell = StringGrid3DrawCell
      end
      object Panel12: TPanel
        Left = 788
        Top = 43
        Width = 392
        Height = 234
        Align = alLeft
        BevelInner = bvLowered
        BevelOuter = bvNone
        Color = clBlack
        TabOrder = 1
        object Image6: TImage
          Left = 1
          Top = 1
          Width = 390
          Height = 232
          Align = alClient
          PopupMenu = PopupMenu3
          Stretch = True
        end
      end
      object Panel13: TPanel
        Left = 0
        Top = 43
        Width = 395
        Height = 234
        Align = alLeft
        BevelInner = bvLowered
        BevelOuter = bvNone
        Color = clBlack
        TabOrder = 2
        object Image4: TImage
          Left = 1
          Top = 1
          Width = 393
          Height = 232
          Align = alClient
          PopupMenu = PopupMenu1
          Stretch = True
        end
      end
      object Panel14: TPanel
        Left = 395
        Top = 43
        Width = 393
        Height = 234
        Align = alLeft
        BevelInner = bvLowered
        BevelOuter = bvNone
        Color = clBlack
        TabOrder = 3
        object Image5: TImage
          Left = 1
          Top = 1
          Width = 391
          Height = 232
          Align = alClient
          PopupMenu = PopupMenu2
          Stretch = True
        end
      end
    end
  end
  object ADOQuery1: TADOQuery
    CommandTimeout = 1000
    Parameters = <>
    Left = 16
    Top = 104
  end
  object ADOQuery2: TADOQuery
    CommandTimeout = 1000
    Parameters = <>
    Left = 48
    Top = 104
  end
  object ADOQuery3: TADOQuery
    CommandTimeout = 1000
    Parameters = <>
    Left = 16
    Top = 192
  end
  object PopupMenu1: TPopupMenu
    Left = 9
    Top = 405
    object LoadImage1: TMenuItem
      Caption = 'Load Image'
      OnClick = LoadImage1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 399
    Top = 405
    object LoadImage2: TMenuItem
      Caption = 'Load Image'
      OnClick = LoadImage2Click
    end
  end
  object PopupMenu3: TPopupMenu
    Left = 789
    Top = 405
    object LoadImage3: TMenuItem
      Caption = 'Load Image'
      OnClick = LoadImage3Click
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = '*.jpg|*.jpg'
    Left = 41
    Top = 405
  end
end
