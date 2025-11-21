object main: Tmain
  Left = 376
  Top = 257
  Width = 870
  Height = 499
  Caption = 'shipping'
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
    Width = 854
    Height = 440
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
  object Edit2: TEdit
    Left = 240
    Top = 208
    Width = 121
    Height = 21
    TabOrder = 1
    Visible = False
  end
  object MainMenu1: TMainMenu
    AutoHotkeys = maManual
    Left = 104
    Top = 88
    object SN1: TMenuItem
      Caption = 'N1 Invoice'
      object SN11: TMenuItem
        Caption = 'N11 Make Invoice'
        OnClick = SN11Click
      end
      object SN12: TMenuItem
        Caption = 'N12 Invoice/Packing List'
        OnClick = SN12Click
      end
      object SN13: TMenuItem
        Caption = 'N13 Invoice Mat Detail(HG)'
        OnClick = SN13Click
      end
      object SN14: TMenuItem
        Caption = 'N14 To Khai Stock'
        OnClick = SN14Click
      end
      object SN15: TMenuItem
        Caption = 'N15 Ma Hai Quan'
        object SN151: TMenuItem
          Caption = 'N151 Ma Hai Quan (NK)'
          OnClick = SN151Click
        end
        object SN152: TMenuItem
          Caption = 'N152 Ma Hai Quan (NK1)'
          OnClick = SN152Click
        end
      end
      object SN15A: TMenuItem
        Caption = 'N15A Ma Hai Quan (13~16)'
        OnClick = SN15AClick
      end
      object SN16: TMenuItem
        Caption = 'N16 Ma Hoa Don'
        object SN161: TMenuItem
          Caption = 'N161 Ma Hoa Don (HD)'
          OnClick = SN161Click
        end
        object SN162: TMenuItem
          Caption = 'N162 Ma Hoa Don (HD1)'
          OnClick = SN162Click
        end
      end
      object SN17: TMenuItem
        Caption = 'N17 Ma HQ/Ma HD'
        OnClick = SN17Click
      end
      object SN18: TMenuItem
        Caption = 'N18 Ma Hai Quan TC'
        object SN181: TMenuItem
          Caption = 'N181 Ma Hai Quan (TC)'
          OnClick = SN181Click
        end
        object SN182: TMenuItem
          Caption = 'N182 Ma Hai Quan (TC1)'
          OnClick = SN182Click
        end
      end
      object SN19: TMenuItem
        Caption = 'N19 Ma Hai Quan KD'
        object SN191: TMenuItem
          Caption = 'N191 Ma Hai Quan (KD)'
          OnClick = SN191Click
        end
        object SN192: TMenuItem
          Caption = 'N192 Ma Hai Quan (KD1)'
          OnClick = SN192Click
        end
      end
      object N1AHaiQuanData1: TMenuItem
        Caption = 'N1A Hai Quan Usage'
        OnClick = N1AHaiQuanData1Click
      end
      object SN1B: TMenuItem
        Caption = 'N1B Ma Hai Quan NQ'
        OnClick = SN1BClick
      end
      object SN1C: TMenuItem
        Caption = 'N1C Ma Hai Quan NKNQ'
        OnClick = SN1CClick
      end
    end
    object SN2: TMenuItem
      Caption = 'N2 Price'
      object SN21: TMenuItem
        Caption = 'SN21 Order Price'
        OnClick = SN21Click
      end
      object SN22: TMenuItem
        Caption = 'SN22 Split RY- Invoice'
        OnClick = SN22Click
      end
      object SN23: TMenuItem
        Caption = 'SN23 Merge Invoice'
        OnClick = SN23Click
      end
    end
    object BOM1: TMenuItem
      Caption = 'N3 Production'
      object SN31: TMenuItem
        Caption = 'N31 Shiping BOM'
        OnClick = SN31Click
      end
      object SN32: TMenuItem
        Caption = 'N32 Shipping Revise Usage'
        OnClick = SN32Click
      end
      object SN33: TMenuItem
        Caption = 'N33 Deliver Account'
        OnClick = SN33Click
      end
      object SN34: TMenuItem
        Caption = 'N34 Shipping Order Spec'
        OnClick = SN34Click
      end
      object SN35: TMenuItem
        Caption = 'N35 Shipping Usage'
        OnClick = SN35Click
      end
    end
    object SN4: TMenuItem
      Caption = 'N4 Develop'
      object SN41: TMenuItem
        Caption = 'N41 SampleOrder'
        OnClick = SN41Click
      end
      object SN42: TMenuItem
        Caption = 'N42 SampleOrder Mat Detail(HG)'
        OnClick = SN42Click
      end
      object SN43: TMenuItem
        Caption = 'N43 ShipDateConfirm'
        OnClick = SN43Click
      end
      object SN44: TMenuItem
        Caption = 'N44 Sample Order Shipping Revise Usage'
        OnClick = SN44Click
      end
      object SN45: TMenuItem
        Caption = 'N45 Sample Order Shipping Order Spec'
        OnClick = SN45Click
      end
      object SN46: TMenuItem
        Caption = 'N46 Shipping Confirm Shoes'
        OnClick = SN46Click
      end
      object N47DeveloptoSimis1: TMenuItem
        Caption = 'N47 Develop to Simis'
        OnClick = N47DeveloptoSimis1Click
      end
    end
    object SN5: TMenuItem
      Caption = 'N5 BY Custom'
      object SN51: TMenuItem
        Caption = 'N51 Purchase Order'
        OnClick = SN51Click
      end
      object SN52: TMenuItem
        Caption = 'N52 Apply Custom'
        OnClick = SN52Click
      end
      object SN53: TMenuItem
        Caption = 'N53 Custom Report'
        OnClick = SN53Click
      end
    end
    object SN6: TMenuItem
      Caption = 'N6 Schedule'
      object SN61: TMenuItem
        Caption = 'N61 Booking'
        OnClick = SN61Click
      end
      object SN62: TMenuItem
        Caption = 'N62 Docz Bill'
        OnClick = SN62Click
      end
      object SN63: TMenuItem
        Caption = 'N63 Docz CO'
        OnClick = SN63Click
      end
    end
    object SN7: TMenuItem
      Caption = 'N7 TW Invoice'
      object SN71: TMenuItem
        Caption = 'N71 Make Inoice'
        OnClick = SN71Click
      end
      object SN72: TMenuItem
        Caption = 'N72 Invoice/Packing List'
        OnClick = SN72Click
      end
    end
    object SN9: TMenuItem
      Caption = 'N9 Report'
      object SN91: TMenuItem
        Caption = 'N91 Entry Check'
        OnClick = SN91Click
      end
      object SN92: TMenuItem
        Caption = 'N92 Customs Shoe and Material'
        OnClick = SN92Click
      end
      object SN93: TMenuItem
        Caption = 'N93 Shipping Destroy'
        OnClick = SN93Click
      end
      object SN94: TMenuItem
        Caption = 'N94 Shipping Export Invoice List'
        OnClick = SN94Click
      end
      object SN95: TMenuItem
        Caption = 'N95 Taiwan Shipping Invoice List'
        OnClick = SN95Click
      end
      object SN96: TMenuItem
        Caption = 'N96 Traceability Material Receiving'
        OnClick = SN96Click
      end
      object SN97: TMenuItem
        Caption = 'N97 Traceability Shipping Finished Good'
        OnClick = SN97Click
      end
    end
    object SNA: TMenuItem
      Caption = 'NA Bill'
      object SNA1: TMenuItem
        Caption = 'NA1 Bill Information Material Receiving'
        OnClick = SNA1Click
      end
      object SNA2: TMenuItem
        Caption = 'NA2 Bill Shipping Finished Good'
        OnClick = SNA2Click
      end
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
