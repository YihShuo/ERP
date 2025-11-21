object main: Tmain
  Left = 349
  Top = 236
  Width = 1091
  Height = 404
  Caption = 'Account'
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
    Width = 1075
    Height = 315
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
    Top = 315
    Width = 1075
    Height = 30
    Panels = <>
  end
  object Edit2: TEdit
    Left = 240
    Top = 208
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
      Caption = 'N1 Warehouse'
      object SN11: TMenuItem
        Caption = 'N11 Entry Purchase'
        OnClick = SN11Click
      end
      object SN12: TMenuItem
        Caption = 'N12 Entry Confirm'
        OnClick = SN12Click
      end
      object SN13: TMenuItem
        Caption = 'N13 Extra Confirm'
        OnClick = SN13Click
      end
      object SN14: TMenuItem
        Caption = 'N14 Material Count'
        OnClick = Deliverlist1Click
      end
      object SN15: TMenuItem
        Caption = 'N15 Deliver Confirm'
        OnClick = SN15Click
      end
      object SN16: TMenuItem
        Caption = 'N16 Account Calculate'
        OnClick = SN16Click
      end
      object SN17: TMenuItem
        Caption = 'N17 Check List'
        object SN171: TMenuItem
          Caption = 'N171 Stock Check'
          OnClick = SN171Click
        end
        object SN172: TMenuItem
          Caption = 'N172 Entry Check'
          OnClick = SN172Click
        end
        object SN173: TMenuItem
          Caption = 'N173 Extra in check'
          OnClick = SN173Click
        end
        object SN174: TMenuItem
          Caption = 'N174 Deliver Check'
          object SN1741: TMenuItem
            Caption = 'N1741 Deliver Check'
            OnClick = SN1741Click
          end
          object SN1742: TMenuItem
            Caption = 'N1742 Deliver Check Order'
            OnClick = SN1742Click
          end
          object SN1743: TMenuItem
            Caption = 'N1743 Production Semi finished'
            OnClick = SN1743Click
          end
        end
        object SN175: TMenuItem
          Caption = 'N175 Extra out Check'
          OnClick = SN175Click
        end
        object SN176: TMenuItem
          Caption = 'N176 Material Month List'
          OnClick = SN176Click
        end
        object SN177: TMenuItem
          Caption = 'N177 Material No Qty'
          OnClick = SN177Click
        end
        object SN178: TMenuItem
          Caption = 'N178 Scandata List'
          OnClick = SN178Click
        end
        object SN179: TMenuItem
          Caption = 'N179 Material Cost'
          object SN1791: TMenuItem
            Caption = 'N1791 Adjust SCBH GT '#35519#25972#25104#26412#35330#21934#62005
            OnClick = SN1791Click
          end
          object SN1792: TMenuItem
            Caption = 'N1792 Semi Material Cost Report '#20877#35069#21697#25104#26412#35336#31639#34920
            object SN17921: TMenuItem
              Caption = 'N17921 Ban thanh pham chi phi(Hien Truong) '#37327#29986#20877#35069#21697#37329#38989
              OnClick = SN17921Click
            end
            object SN17922: TMenuItem
              Caption = 'N17922 Ban thanh pham chi phi(Khai Thai) '#38283#30332#20877#35069#21697#37329#38989
              OnClick = SN17922Click
              object SN179221: TMenuItem
                Caption = 'N179221 Ban thanh pham chi phi(Khai Thac) chung'
                OnClick = SN179221Click
              end
              object SN179222: TMenuItem
                Caption = 'N179222 Ban thanh pham chi phi(Khai Thac) giay mau'
                OnClick = SN179222Click
              end
              object SN179223: TMenuItem
                Caption = 'N179223 Ban thanh pham chi phi(Khai Thac) CBY'
                OnClick = SN179223Click
              end
              object SN179224: TMenuItem
                Caption = 'N179224 Ban thanh pham chi phi ( Khai thac) Skechers'
                OnClick = SN179224Click
              end
            end
            object SN17923: TMenuItem
              Caption = 'N17923 Ban thanh pham chi phi(Hoa Chat) '#21270#23416#20877#35069#21697#37329#38989
              OnClick = SN17923Click
            end
            object SN17924: TMenuItem
              Caption = 'N17924 Ban thanh pham chi phi tong '#25104#26412#35336#31639#34920
              object SN179241: TMenuItem
                Caption = 'N179241 Nhap gia cho don hang'
                OnClick = SN179241Click
              end
              object SN179242: TMenuItem
                Caption = 'N179242 Ban thanh pham chi phi tong'
                OnClick = SN179242Click
              end
              object SN179243: TMenuItem
                Caption = 'N179243 Tuoi kho ban thanh pham'
                OnClick = SN179243Click
              end
            end
          end
          object SN1793: TMenuItem
            Caption = 'N1793 Monthly Finish Shoe '#25104#21697#20489#24235#23384#25104#26412
            OnClick = SN1793Click
          end
        end
        object SN17A: TMenuItem
          Caption = 'N17A Entry Check CCDC'
          OnClick = SN17AClick
        end
      end
      object SN18: TMenuItem
        Caption = 'N18 Adjust'
        object SN181: TMenuItem
          Caption = 'N181 Adjust Deliver'
          OnClick = SN181Click
        end
        object SN182: TMenuItem
          Caption = 'N182 Adjust Entry'
          OnClick = SN182Click
        end
        object SN183: TMenuItem
          Caption = 'N183 Adjust Extra'
          OnClick = SN183Click
        end
        object SN184: TMenuItem
          Caption = 'N184 Adjust Deliver Price'
          OnClick = SN184Click
        end
        object SN185: TMenuItem
          Caption = 'N185 Adjust Entry ACC'
          OnClick = SN185Click
        end
        object SN189: TMenuItem
          Caption = 'N189 Kiem tra KCRKCX'
          OnClick = SN189Click
        end
        object SN18B: TMenuItem
          Caption = 'N18B Adjust  CBY Extra Confirm'
          OnClick = SN18BClick
        end
        object SN18C: TMenuItem
          Caption = 'N18C Print Deliver'
          OnClick = SN18CClick
        end
        object SN18D: TMenuItem
          Caption = 'N18D Print Entry'
          OnClick = SN18DClick
        end
        object SN18E: TMenuItem
          Caption = 'N18E Adjust CBY Deliver'
          OnClick = SN18EClick
        end
      end
      object SN19: TMenuItem
        Caption = 'N19 Daily Exchange'
        OnClick = SN19Click
      end
      object SN1A: TMenuItem
        Caption = 'N1A Import VATNO Data'
        object SN1A1: TMenuItem
          Caption = 'N1A1 Import VATNo/Declaration'
          OnClick = SN1A1Click
        end
        object SN1A2: TMenuItem
          Caption = 'N1A2 GP Import Cost'
          OnClick = SN1A2Click
        end
      end
      object SN1B: TMenuItem
        Caption = 'N1B CBY Extra Confirm'
        OnClick = SN1BClick
      end
      object SN1C: TMenuItem
        Caption = 'N1C CBY Deliver Confirm'
        OnClick = SN1CClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
        OnClick = Exit1Click
      end
    end
    object SN2: TMenuItem
      Caption = 'N2 Payment'
      object SN21: TMenuItem
        Caption = 'N21 Material Payable'
        OnClick = SN21Click
      end
      object SN22: TMenuItem
        Caption = 'N22 Embroider Payable'
        OnClick = SN22Click
      end
      object SN23: TMenuItem
        Caption = 'N23 Payable List'
        object SN231: TMenuItem
          Caption = 'N231 Payable List'
          OnClick = SN231Click
        end
        object SN232: TMenuItem
          Caption = 'N232 Entry Check Pay'
          OnClick = SN232Click
        end
        object SN233: TMenuItem
          Caption = 'N233 Payment VATNo/Declaration'
          OnClick = SN233Click
        end
        object SN234: TMenuItem
          Caption = 'N234 Payment VATNo/ Declaration Confirm'
          object SN2341: TMenuItem
            Caption = 'N2341 Payment VATNo/ Declaration Confirm 331'
            OnClick = SN2341Click
          end
          object SN2342: TMenuItem
            Caption = 'N2342 Payment VATNo/ Declaration Confirm 112'
            OnClick = SN2342Click
          end
          object SN2343: TMenuItem
            Caption = 'N2343 Payment VATNo/ Declaration Tracking'
            OnClick = SN2343Click
          end
        end
      end
      object SN24: TMenuItem
        Caption = 'N24 Debit Note'
        OnClick = SN24Click
      end
      object SN25: TMenuItem
        Caption = 'N25 Account MAP'
        OnClick = SN25Click
      end
      object SN26: TMenuItem
        Caption = 'N26 Material Entry List'
        OnClick = SN26Click
      end
      object SN27: TMenuItem
        Caption = 'N27 Payment Confirm'
        OnClick = SN27Click
      end
    end
    object SN3: TMenuItem
      Caption = 'N3 Account Fee'
      object SN31: TMenuItem
        Caption = 'N31 Fee NO'
        OnClick = SN31Click
      end
      object SN32: TMenuItem
        Caption = 'N32 Fee Month'
        OnClick = SN32Click
      end
      object FeeQuery1: TMenuItem
        Caption = 'N33 Fee Query'
      end
      object SN34: TMenuItem
        Caption = 'N34 Order Material'
        object SN341: TMenuItem
          Caption = 'N341 Order Material & ACC'
          OnClick = SN341Click
        end
        object SN342: TMenuItem
          Caption = 'N342 Factory Fee Total'
          OnClick = SN342Click
        end
      end
      object SN35: TMenuItem
        Caption = 'N35 Material Cost Type'
        OnClick = SN35Click
      end
    end
    object SN4: TMenuItem
      Caption = 'N4 OrderCost'
      object SN41: TMenuItem
        Caption = 'N41 Order Sale'
        object SN411: TMenuItem
          Caption = 'N411 Order List'
          OnClick = SN411Click
        end
        object SN412: TMenuItem
          Caption = 'N412 Receivable List'
          OnClick = SN412Click
        end
      end
      object SN42: TMenuItem
        Caption = 'N42 Material Cost'
        object SN421: TMenuItem
          Caption = 'Material Cost'
          OnClick = SN421Click
        end
        object SN422: TMenuItem
          Caption = 'Material Cost-No Order'
          object SN4221: TMenuItem
            Caption = 'Account'
            OnClick = SN4221Click
          end
          object SN4222: TMenuItem
            Caption = 'Manage'
            OnClick = SN4222Click
          end
        end
        object SN423: TMenuItem
          Caption = 'Material Zone'
          OnClick = SN423Click
        end
      end
      object SN43: TMenuItem
        Caption = 'N43 Fee Cost'
      end
      object SN44: TMenuItem
        Caption = 'N44 Order Cost'
      end
      object SN45: TMenuItem
        Caption = 'N45 Replenish Cost'
        OnClick = SN45Click
      end
      object SN46: TMenuItem
        Caption = 'N46 Cost Fee'
        object SN461: TMenuItem
          Caption = 'N461 Calculate Reason'
          OnClick = SN461Click
        end
        object SN462: TMenuItem
          Caption = 'N462 Calculate Department'
          OnClick = SN462Click
        end
      end
      object SN47: TMenuItem
        Caption = 'N47 Replenish Fee'
        object SN471: TMenuItem
          Caption = 'N471 RepFee Reason'
          OnClick = SN471Click
        end
        object SN472: TMenuItem
          Caption = 'N472 RepFee Department'
          OnClick = SN472Click
        end
      end
      object SN48: TMenuItem
        Caption = 'N48 Order Key List'
        Enabled = False
        OnClick = SN48Click
      end
      object SN49: TMenuItem
        Caption = 'N49 Account List'
        object SN491: TMenuItem
          Caption = 'N491 Deliver list'
          OnClick = SN491Click
        end
        object SN492: TMenuItem
          Caption = 'N492 Entry List'
          OnClick = SN492Click
        end
        object SN493: TMenuItem
          Caption = 'N493 Account Fix'
          OnClick = SN493Click
        end
      end
    end
    object SN5: TMenuItem
      Caption = 'N5 First Stock(Temp)'
      OnClick = SN5Click
    end
    object SN6: TMenuItem
      Caption = 'N6 Report'
      object SN61: TMenuItem
        Caption = 'N61 Acc Montly Report'
        object SN611: TMenuItem
          Caption = 'N611 Acc Monthly Stock'
          OnClick = SN611Click
        end
      end
      object SN62: TMenuItem
        Caption = 'N62 Monthly Report NXT'
        OnClick = SN62Click
      end
      object SN63: TMenuItem
        Caption = 'N63 Monthly Report SCT'
        OnClick = SN63Click
      end
      object SN64: TMenuItem
        Caption = 'N64 Top Supplier Report'
        OnClick = SN64Click
      end
    end
    object N8Consumer1: TMenuItem
      Caption = 'N8 Consume'
      object SN81: TMenuItem
        Caption = 'N81 Consume'
        OnClick = SN81Click
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
