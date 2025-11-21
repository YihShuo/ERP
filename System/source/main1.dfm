object main: Tmain
  Left = 780
  Top = 138
  Width = 870
  Height = 500
  Caption = 'main'
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
    Width = 854
    Height = 441
    Align = alClient
    AutoSize = True
    Stretch = True
  end
  object Edit1: TEdit
    Left = 240
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'LC01010101'
    Visible = False
  end
  object MainMenu1: TMainMenu
    Left = 96
    Top = 88
    object TMenuItem
    end
    object SN1: TMenuItem
      Caption = 'N1 USER'
      Enabled = False
      OnClick = SN1Click
    end
    object SN2: TMenuItem
      Caption = 'N2 LIMIT'
      Enabled = False
      OnClick = SN2Click
    end
    object SN3: TMenuItem
      Caption = 'N3 Lock'
      Enabled = False
      OnClick = SN3Click
    end
    object SN4: TMenuItem
      Caption = 'N4 Switch'
      Enabled = False
      object SN41: TMenuItem
        Caption = 'N41 Copy'
        OnClick = SN41Click
      end
      object SN42: TMenuItem
        Caption = 'N42 Move'
        OnClick = SN42Click
      end
    end
    object SN5: TMenuItem
      Caption = 'N5 UI Languages'
      Enabled = False
      OnClick = SN5Click
    end
    object SN6: TMenuItem
      Caption = 'N6 Update '
      Enabled = False
      object SN61: TMenuItem
        Caption = 'Update vat tu manage N19'
        Enabled = False
        OnClick = SN61Click
      end
    end
    object SN7: TMenuItem
      Caption = 'N7 test du lieu'
      object SN71: TMenuItem
        Caption = 'N71 du lieu sinh quan'
        Enabled = False
        OnClick = SN71Click
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from BLimits'
      'where USERID=:userid'
      'and MKID=:mkid')
    Left = 64
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'userid'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mkid'
        ParamType = ptUnknown
      end>
  end
end
