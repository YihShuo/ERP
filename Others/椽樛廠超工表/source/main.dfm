object MAilform: TMAilform
  Left = 238
  Top = 144
  Width = 815
  Height = 472
  Caption = 'MainForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 56
    Top = 120
    object Emp1: TMenuItem
      Caption = 'DataSetup'
      object StaffData1: TMenuItem
        Caption = 'Staff Data'
        OnClick = StaffData1Click
      end
      object MoldData1: TMenuItem
        Caption = 'Mold Data'
        OnClick = MoldData1Click
      end
      object MoldVS1: TMenuItem
        Caption = 'Mold VS Article'
      end
    end
    object DataInput1: TMenuItem
      Caption = 'DataInput'
      OnClick = DataInput1Click
    end
    object Report1: TMenuItem
      Caption = 'Report'
      object Salary1: TMenuItem
        Caption = 'Salary'
        OnClick = Salary1Click
      end
    end
  end
end
