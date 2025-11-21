object main: Tmain
  Left = 309
  Top = 138
  Width = 800
  Height = 545
  Caption = 'Rfactory'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 784
    Height = 465
    Align = alClient
    AutoSize = True
    Stretch = True
  end
  object Edit1: TEdit
    Left = 280
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 0
    Visible = False
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 465
    Width = 784
    Height = 22
    Panels = <>
  end
  object Edit2: TEdit
    Left = 280
    Top = 168
    Width = 121
    Height = 21
    TabOrder = 2
    Visible = False
  end
  object MainMenu1: TMainMenu
    Left = 104
    Top = 88
    object SN1: TMenuItem
      Caption = 'N1 Scale'
      object SN11: TMenuItem
        Caption = 'N11 Chemicals Set'
        OnClick = SN11Click
      end
      object SN12: TMenuItem
        Caption = 'N12 Weighing'
        OnClick = SN12Click
      end
      object SN13: TMenuItem
        Caption = 'N13 Weighing report'
        OnClick = SN13Click
      end
      object SN14: TMenuItem
        Caption = 'N14 Weighing Situation'
        OnClick = SN14Click
      end
    end
    object N2Chemicals1: TMenuItem
      Caption = 'N2 Chemicals'
      object SN21: TMenuItem
        Caption = 'N21 Calculate Amount'
        OnClick = SN21Click
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'dd'
    SQL.Strings = (
      'select *'
      'from YHQX'
      'where USERID = :userid'
      'and SX = '#39'07'#39)
    Left = 64
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'userid'
        ParamType = ptUnknown
      end>
  end
end
