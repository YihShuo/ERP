object main: Tmain
  Left = 514
  Top = 208
  Width = 797
  Height = 475
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
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 781
    Height = 394
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
    Visible = False
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 394
    Width = 781
    Height = 22
    Panels = <>
  end
  object Edit2: TEdit
    Left = 240
    Top = 224
    Width = 121
    Height = 21
    TabOrder = 2
    Visible = False
  end
  object MainMenu1: TMainMenu
    AutoHotkeys = maManual
    Left = 96
    Top = 88
    object SN1: TMenuItem
      Caption = 'N1 Order'
      object SN11: TMenuItem
        Caption = 'N11 Order List'
        OnClick = SN11Click
      end
      object SN12: TMenuItem
        Caption = 'N12 Extra Material Deliver'
        object SN121: TMenuItem
          Caption = 'N121 Material'
          OnClick = SN121Click
        end
        object SN122: TMenuItem
          Caption = 'N122 Total'
          OnClick = SN122Click
        end
        object SN123: TMenuItem
          Caption = 'N123 Pairs Material'
          OnClick = SN123Click
        end
        object SN124: TMenuItem
          Caption = 'N124 Extra Deliver'
          OnClick = SN124Click
        end
        object SN125: TMenuItem
          Caption = 'N125 Confirm'#23529#26680
          object SN1251: TMenuItem
            Caption = 'N1251 Warehouse Manage Confirm ('#20489#24235#20027#31649#23529#26680')'
            OnClick = SN1251Click
          end
          object SN1252: TMenuItem
            Caption = 'N1252 Purchase Manage Confirm ('#25505#36092#20027#31649#23529#26680')'
            OnClick = SN1252Click
          end
          object N1253: TMenuItem
            Caption = 'N1253 Top Manage Confirm('#24288#20027#31649#23529#26680')'
            OnClick = N1253Click
          end
        end
      end
      object SN13: TMenuItem
        Caption = 'N13 Extra Order List'
        OnClick = SN13Click
      end
      object SN14: TMenuItem
        Caption = 'N14 Material Mother and Son'
        OnClick = SN14Click
      end
      object SN15: TMenuItem
        Caption = 'N15 Mat Mother and son  Query'
        OnClick = SN15Click
      end
      object SN16: TMenuItem
        Caption = 'N16 Extra Material QuickStep'
        OnClick = SN16Click
      end
      object SN17: TMenuItem
        Caption = 'N17 Extra Account'
        OnClick = SN17Click
      end
    end
    object SN2: TMenuItem
      Caption = 'N2 Entry'
      object SN21: TMenuItem
        Caption = 'N21 Extra Confirm'
        OnClick = SN21Click
      end
      object SN22: TMenuItem
        Caption = 'N22 Purchase Confirm'
        OnClick = SN22Click
      end
      object SN23: TMenuItem
        Caption = 'N23 Extra List'
        Enabled = False
        OnClick = SN23Click
      end
      object SN24: TMenuItem
        Caption = 'N24 Quotation'
        OnClick = SN24Click
      end
      object SN25: TMenuItem
        Caption = 'N25 CBY Purchase Confirm'
        OnClick = SN25Click
      end
    end
    object SN3: TMenuItem
      Caption = 'N3 Preview'
      object SN31: TMenuItem
        Caption = 'N31 Extra Preview'
        OnClick = SN31Click
      end
      object SN32: TMenuItem
        Caption = 'N32 Material List'
        OnClick = SN32Click
      end
      object SN33: TMenuItem
        Caption = 'N33 Extra Sample Order List'
        OnClick = SN33Click
      end
      object SN34: TMenuItem
        Caption = 'N34 Traceability Extra'
        OnClick = SN34Click
      end
      object SN35: TMenuItem
        Caption = 'N35 Extra List No'
        OnClick = SN35Click
      end
    end
    object SN4: TMenuItem
      Caption = 'N4 ExtraList'
      object SN41: TMenuItem
        Caption = 'N41 BOM Material Extra List'
        OnClick = SN41Click
      end
      object SN42: TMenuItem
        Caption = 'N42 BOM Part Extra List'
        Visible = False
        OnClick = SN42Click
      end
      object SN43: TMenuItem
        Caption = 'N43 Production Schedule'
        Visible = False
        OnClick = SN43Click
      end
    end
    object SN6: TMenuItem
      Caption = 'Help'
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from BLimits'
      'where USERID=:userid'
      'and MKID=:mkid'
      'and GSBH=:GSBH')
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
      end
      item
        DataType = ftUnknown
        Name = 'GSBH'
        ParamType = ptUnknown
      end>
  end
  object BLimitHideQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select FORMID,YN'
      'from BLimit'
      'where BLimit.MKID=:mkid '
      '')
    Left = 64
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mkid'
        ParamType = ptUnknown
      end>
  end
end
