object main: Tmain
  Left = 205
  Top = 127
  Width = 928
  Height = 559
  Align = alClient
  AutoSize = True
  Caption = 'R Warehouse'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = True
  Visible = True
  WindowState = wsMaximized
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 471
    Width = 912
    Height = 30
    Align = alBottom
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 352
    Top = 256
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'System'
    Visible = False
  end
  object Edit2: TEdit
    Left = 352
    Top = 296
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'VR3'
    Visible = False
  end
  object MainMenu1: TMainMenu
    Left = 208
    Top = 192
    object S1: TMenuItem
      Caption = 'N1 Data Setup'
      object ColorSetup1: TMenuItem
        Caption = 'N11 Color Setup'
        OnClick = ColorSetup1Click
      end
      object N12ModeSetup1: TMenuItem
        Caption = 'N12 Mode Setup'
        OnClick = N12ModeSetup1Click
      end
    end
    object N12Plan1: TMenuItem
      Caption = 'N2 Production'
      object N211: TMenuItem
        Caption = 'N21 Production Plan'
        OnClick = N211Click
      end
      object N221: TMenuItem
        Caption = 'N22 Storage In'
        object N221Keyin1: TMenuItem
          Caption = 'N221 Keyin'
          OnClick = N221Keyin1Click
        end
        object N222Scan1: TMenuItem
          Caption = 'N222 Scan'
          OnClick = N222Scan1Click
        end
      end
      object N23StorageOut1: TMenuItem
        Caption = 'N23 Storage Out'
        object N231KeyIn1: TMenuItem
          Caption = 'N231 Key In'
          OnClick = N231KeyIn1Click
        end
        object N232Scan1: TMenuItem
          Caption = 'N232 Scan'
          OnClick = N232Scan1Click
        end
      end
    end
    object N31: TMenuItem
      Caption = 'N3 Regulation'
      Enabled = False
    end
    object N3R1: TMenuItem
      Caption = 'N4 Report'
      object N41StorReport1: TMenuItem
        Caption = 'N41 Stor Report'
        OnClick = N41StorReport1Click
      end
    end
  end
end
