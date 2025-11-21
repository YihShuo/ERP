object main: Tmain
  Left = 646
  Top = 313
  Width = 739
  Height = 537
  Caption = 's ciit '
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
    Width = 723
    Height = 440
    Align = alClient
    AutoSize = True
    Stretch = True
    OnDblClick = Image1DblClick
  end
  object Edit1: TEdit
    Left = 104
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
    Visible = False
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 440
    Width = 723
    Height = 38
    Panels = <>
  end
  object Edit2: TEdit
    Left = 104
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 2
    Visible = False
  end
  object MainMenu1: TMainMenu
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    Left = 56
    Top = 8
    object SN1: TMenuItem
      Caption = 'N1 Produce'
      object SN11: TMenuItem
        Caption = 'N11 Import order'
        OnClick = SN11Click
      end
      object SN12: TMenuItem
        Caption = 'N12 Order Date'
        OnClick = SN12Click
      end
      object SN13: TMenuItem
        Caption = 'N13 Daily Report'
        Enabled = False
        OnClick = SN13Click
      end
      object SN14: TMenuItem
        Caption = 'N14 Monthly report'
        Enabled = False
        OnClick = SN14Click
      end
      object SN15: TMenuItem
        Caption = 'N15 Plan Output'
        Enabled = False
        OnClick = SN15Click
      end
      object SN16: TMenuItem
        Caption = 'N16 Spec Print'
        OnClick = SN16Click
      end
      object SN17: TMenuItem
        Caption = 'N17 Print Packing'
        OnClick = SN17Click
      end
      object SN18: TMenuItem
        Caption = 'N18 Shiping Out'
        Enabled = False
        OnClick = SN18Click
      end
      object SN19: TMenuItem
        Caption = 'N19 Article Picture'
        OnClick = SN19Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object SN10: TMenuItem
        Caption = 'Exit'
        OnClick = SN10Click
      end
    end
    object SN2: TMenuItem
      Caption = 'N2 Replenish'
      object SN21: TMenuItem
        Caption = 'N21 New Replenish'
        Enabled = False
        object SN211: TMenuItem
          Caption = 'N211 Part'
          OnClick = SN211Click
        end
        object SN212: TMenuItem
          Caption = 'N212 Pair'
          OnClick = SN212Click
        end
      end
      object SN22: TMenuItem
        Caption = 'N22 Replenish Rate'
        Enabled = False
      end
      object SN23: TMenuItem
        Caption = 'N23 Replenish Reason'
        OnClick = SN23Click
      end
      object SN24: TMenuItem
        Caption = 'N24 Replenish Deliver'
        OnClick = SN24Click
      end
      object SN25: TMenuItem
        Caption = 'N25 Replenish Confirm'
        OnClick = SN25Click
      end
      object SN26: TMenuItem
        Caption = 'N26 Replenish Stamp'
        OnClick = SN26Click
      end
    end
    object SN3: TMenuItem
      Caption = 'N3 Material'
      object SN31: TMenuItem
        Caption = 'N31 Deliver Material'
        object SN311: TMenuItem
          Caption = 'N311 Deliver Material'
          OnClick = SN311Click
        end
        object SN312: TMenuItem
          Caption = 'N312 Deliver Cement'
          OnClick = SN312Click
        end
        object SN313: TMenuItem
          Caption = 'N313 Deliver Carton'
          OnClick = SN313Click
        end
        object SN314: TMenuItem
          Caption = 'N314 Deliver INK'
          OnClick = SN314Click
        end
        object SN315: TMenuItem
          Caption = 'N315 Deliver Khuon In'
          OnClick = SN315Click
        end
      end
      object SN32: TMenuItem
        Caption = 'N32 Deliver Other'
        object SN321: TMenuItem
          Caption = 'N321 Deliver Other'
          OnClick = SN321Click
        end
        object SN322: TMenuItem
          Caption = 'N322 Deliver Total'
          OnClick = SN322Click
        end
        object SN323: TMenuItem
          Caption = 'N323 Develop Material'
          OnClick = SN323Click
        end
        object SN324: TMenuItem
          Caption = 'N324 Deliver Chemicals'
          object SN3241: TMenuItem
            Caption = 'N3241 Deliver Chemicals '
            OnClick = SN3241Click
          end
          object SN3242: TMenuItem
            Caption = 'N3242 Deliver Chemicals Replenish'
            OnClick = SN3242Click
          end
        end
        object SN325: TMenuItem
          Caption = 'N325 Delivery Material && Order by hand'
          OnClick = SN325Click
        end
        object SN326: TMenuItem
          Caption = 'N326 Deliver Total Qrcode Print'
          OnClick = SN326Click
        end
      end
      object SN33: TMenuItem
        Caption = 'N33 Reback Material'
        Enabled = False
      end
      object SN34: TMenuItem
        Caption = 'N34 Deliver Person'
        OnClick = SN34Click
      end
      object SN35: TMenuItem
        Caption = 'N35 Deliver Check'
        OnClick = SN35Click
      end
      object SN36: TMenuItem
        Caption = 'N36 Deliver Preview'
        OnClick = SN36Click
      end
      object SN37: TMenuItem
        Caption = 'N37 Material List'
        OnClick = SN37Click
      end
      object SN38: TMenuItem
        Caption = 'N38 Deliver Material Replenish'
        OnClick = SN38Click
      end
      object SN39: TMenuItem
        Caption = 'N39 Purchase material Trace'
        OnClick = SN39Click
      end
      object SN3A1: TMenuItem
        Caption = 'N3A1 Confirm('#23529#26680')'
        object SN3A11: TMenuItem
          Caption = 'N3A11 Warehouse Manage Confirm ('#20489#24235#20027#31649#23529#26680')'
          OnClick = SN3A11Click
        end
        object SN3A12: TMenuItem
          Caption = 'N3A12 Factory Manager Confirm ('#24288#20027#31649#23529#26680')'
          OnClick = SN3A12Click
        end
        object SN3A13: TMenuItem
          Caption = 'N3A13 Top Manage Confirm('#24288#20027#31649#23529#26680')'
          OnClick = SN3A13Click
        end
      end
    end
    object SN4: TMenuItem
      Caption = 'N4 Cutting'
      object SN41: TMenuItem
        Caption = 'N41 Article Type'
        OnClick = SN41Click
      end
      object SN42: TMenuItem
        Caption = 'N42 Cutting Dispatch '#35009#29255#27966#24037
        OnClick = SN42Click
      end
      object SN43: TMenuItem
        Caption = 'N43 Cutting Processing Dispatch '#35009#29255#21152#24037
        OnClick = SN43Click
      end
      object SN44: TMenuItem
        Caption = 'N44 Cutting Comparison '#35009#26039#27231#21488#29983#29986#34920
        OnClick = SN44Click
      end
      object SN45: TMenuItem
        Caption = 'N45 Cycle Round PlanDate '#29983#31649#36852#36681#35336#30059#26085#26356#26032
        OnClick = SN45Click
      end
      object SN46: TMenuItem
        Caption = 'N46 Cutting Machine '#35009#26039#27231#21488#31649#29702
        OnClick = SN46Click
      end
    end
    object SN5: TMenuItem
      Caption = 'N5 Warehouse'
      object SN51: TMenuItem
        Caption = 'N51 Scan'
        object SN511: TMenuItem
          Caption = 'N511 Scan In'
          OnClick = SN511Click
        end
        object SN512: TMenuItem
          Caption = 'N512 Scan Inspect'
          object SN5121: TMenuItem
            Caption = 'N5121 Inspect Select'
            OnClick = SN5121Click
          end
          object SN5122: TMenuItem
            Caption = 'N5122 Inspect Import'
            OnClick = SN5122Click
          end
          object SN5123: TMenuItem
            Caption = 'N5123 Inspect Order'
            OnClick = SN5123Click
          end
        end
        object SN513: TMenuItem
          Caption = 'N513 Scan Out/Return'
          object SN5131: TMenuItem
            Caption = 'N5131 Scan Out'
            OnClick = SN5131Click
          end
          object SN5132: TMenuItem
            Caption = 'N5132 Scan Return'
            OnClick = SN5132Click
          end
        end
        object SN514: TMenuItem
          Caption = 'N514 Scan Shipping'
          OnClick = SN514Click
        end
        object SN515: TMenuItem
          Caption = 'N515 Scan Check'
          OnClick = SN515Click
        end
        object SN516: TMenuItem
          Caption = 'N516 Scan In  location'
          OnClick = SN516Click
        end
      end
      object SN52: TMenuItem
        Caption = 'N52 Report'
        object SN521: TMenuItem
          AutoLineReduction = maManual
          Caption = 'N521 Sock List-'#25104#21697#20489#24235#23384#28165#21934#34920
          object SN5211: TMenuItem
            Caption = 'N5211 Brand-'#20998#21697#29260#22283#21029
            OnClick = SN5211Click
          end
          object SN5212: TMenuItem
            Caption = 'N5212 Order Detail-'#20998#35330#21934#26126#32048
            OnClick = SN5212Click
          end
          object SN5213: TMenuItem
            Caption = 'N5213 Monthly Order Report-'#26376#20221#35330#21934#23436#25104#29376#27841#34920
            OnClick = SN5213Click
          end
          object SN5214: TMenuItem
            Caption = 'N5214 Monthly Account Report '#36001#21209#26376#20221#22577#34920
            OnClick = SN5214Click
          end
          object SN5215: TMenuItem
            Caption = 'N5215 Finicial Stock Report '#25104#21697#24235#23384#21205#24907#34920
            OnClick = SN5215Click
          end
          object SN5216: TMenuItem
            Caption = 'N5216 Monthly Sock Report '#25104#21697#20489#26376#32080#26126#32048
            OnClick = SN5216Click
          end
        end
        object SN522: TMenuItem
          AutoLineReduction = maManual
          Caption = 'N522 Entry Daily Report-'#20837#24235#26085#22577#34920
          object SN5221: TMenuItem
            Caption = 'N5221 Department('#20998#21934#20301')'
            OnClick = SN5221Click
          end
          object SN5223: TMenuItem
            Caption = 'N5223 Order Detail('#35330#21934#26126#32048')'
            OnClick = SN5223Click
          end
        end
        object SN523: TMenuItem
          AutoLineReduction = maManual
          Caption = 'N523 Inspect List-'#39511#36008#22577#34920
          OnClick = SN523Click
        end
        object SN524: TMenuItem
          AutoLineReduction = maManual
          Caption = 'N524 Scan Out/Return Report -'#25104#21697#32763#31665#20986#20837#24235#22577#34920
          object SN5241: TMenuItem
            Caption = 'N5241 Scan Out Report'#32763#31665#20986#24235#22577#34920
            OnClick = SN5241Click
          end
          object SN5242: TMenuItem
            Caption = 'N5242 Scan Return Report'#32763#31665#20837#24235#22577#34920#34920
            OnClick = SN5242Click
          end
        end
        object SN525: TMenuItem
          AutoLineReduction = maManual
          Caption = 'N525 Export List-'#20986#36008#29376#27841#34920
          OnClick = SN525Click
        end
        object SN526: TMenuItem
          Caption = 'N526 Export Quantity-'#26376#20221#38928#35336#20986#36008#25976#37327
          OnClick = SN526Click
        end
        object SN527: TMenuItem
          Caption = 'N527 Import && Export  Quantity'
          OnClick = SN527Click
        end
        object SN528: TMenuItem
          Caption = 'N528 Turnover Days '#25104#21697#20489#21608#36681#29575
          OnClick = SN528Click
        end
      end
      object SN53: TMenuItem
        Caption = 'N53 Inbox Barcode'
        OnClick = SN53Click
      end
      object SN54: TMenuItem
        Caption = 'N54 Adidas data import'
        OnClick = SN54Click
      end
      object SN55: TMenuItem
        Caption = 'N55 FG Key In Order'
        OnClick = SN55Click
      end
    end
    object SN6: TMenuItem
      Caption = 'N6 Anlysis'
      object SN61: TMenuItem
        Caption = 'N61 Store Anlysis'
        OnClick = SN61Click
      end
      object SN62: TMenuItem
        Caption = 'N62 Replenish Anlysis'
        OnClick = SN62Click
      end
    end
    object SN7: TMenuItem
      Caption = 'N7 QC Check'
      object SN71: TMenuItem
        Caption = 'N71 Check Box'
        OnClick = SN71Click
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select BLimits.*,BLimit.YN'
      'from BLimits'
      
        'Left join BLimit on BLimit.MKID=BLimits.MKID and BLimit.FORMID=B' +
        'Limits.FORMID'
      'where BLimits.USERID=:userid'
      '      and BLimits.MKID=:mkid'
      '      and BLimits.GSBH=:GSBH')
    Left = 16
    Top = 8
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
      'where BLimit.MKID=:mkid'
      '')
    Left = 16
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mkid'
        ParamType = ptUnknown
      end>
  end
end
