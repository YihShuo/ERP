object main: Tmain
  Left = 432
  Top = 251
  Width = 1147
  Height = 576
  Caption = 'Warehouse'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
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
  TextHeight = 20
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 1131
    Height = 495
    Align = alClient
    AutoSize = True
    Stretch = True
    OnDblClick = Image1DblClick
  end
  object Edit1: TEdit
    Left = 240
    Top = 176
    Width = 121
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Visible = False
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 495
    Width = 1131
    Height = 22
    Panels = <>
  end
  object Edit2: TEdit
    Left = 240
    Top = 224
    Width = 121
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Visible = False
  end
  object MainMenu1: TMainMenu
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    Left = 96
    Top = 88
    object SN1: TMenuItem
      Caption = 'N1 Deliver'
      object SN11: TMenuItem
        Caption = 'N11 Deliver List'
        OnClick = SN11Click
      end
      object SN12: TMenuItem
        Caption = 'N12 Deliver Confirm'
        OnClick = SN12Click
      end
      object SN13: TMenuItem
        Caption = 'N13 Deliver Account'
        OnClick = SN13Click
      end
      object SN14: TMenuItem
        Caption = 'N14 Deliver Trace'
        object SN141: TMenuItem
          Caption = 'N141 No Size '
          OnClick = SN141Click
        end
        object SN142: TMenuItem
          Caption = 'N142 Size'
          OnClick = SN142Click
        end
      end
      object SN15: TMenuItem
        Caption = 'N15 Deliver Detail'
        OnClick = SN15Click
      end
      object SN16: TMenuItem
        Caption = 'N16 Material List'
        OnClick = SN16Click
      end
      object SN17: TMenuItem
        Caption = 'N17 Purchase Material Trace'
        OnClick = SN17Click
      end
      object SN18: TMenuItem
        Caption = 'N18 No Use Material'
        OnClick = SN18Click
      end
      object SN19: TMenuItem
        Caption = 'N19 Confirm Of R3'
        OnClick = SN19Click
      end
      object SN1A: TMenuItem
        Caption = 'N1A Deliver Material For DT'
        OnClick = SN1AClick
      end
      object SN1B: TMenuItem
        Caption = 'N1B Deliver Account For R2/R3'
        OnClick = SN1BClick
      end
      object SN1C: TMenuItem
        Caption = 'N1C Material Released Cofirm'
        OnClick = SN1CClick
      end
      object SN1D: TMenuItem
        Caption = 'N1D Delivery No List'
        OnClick = SN1DClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Exit: TMenuItem
        Caption = 'Exit'
        OnClick = ExitClick
      end
    end
    object SN2: TMenuItem
      Caption = 'N2 Entry'
      object SN21: TMenuItem
        Caption = 'N21 Entry List'
        object SN211: TMenuItem
          Caption = 'N211 Entry List'
          OnClick = SN211Click
        end
        object SN212: TMenuItem
          Caption = 'N212 Entry Total'
          OnClick = SN212Click
        end
        object SN213: TMenuItem
          Caption = 'N213 Return Material'
          OnClick = SN213Click
        end
        object SN214: TMenuItem
          Caption = 'N214 Confirm('#23529#26680')'
          object SN2141: TMenuItem
            Caption = 'N2141 Warehouse Manage Confirm ('#20489#24235#20027#31649#23529#26680')'
            OnClick = SN2141Click
          end
          object SN2142: TMenuItem
            Caption = 'N2142 Purchase Manage Confirm ('#25505#36092#20027#31649#23529#26680')'
            OnClick = SN2142Click
          end
          object SN2143: TMenuItem
            Caption = 'N2143 Top Manage Confirm('#24288#20027#31649#23529#26680')'
            OnClick = SN2143Click
          end
        end
      end
      object SN22: TMenuItem
        Caption = 'N22 Entry Check'
        OnClick = SN22Click
      end
      object SN23: TMenuItem
        Caption = 'N23 Supplier New'
        OnClick = SN23Click
      end
      object SN24: TMenuItem
        Caption = 'N24 Entry Report'
        OnClick = SN24Click
      end
      object SN25: TMenuItem
        Caption = 'N25 Container List'
        OnClick = SN25Click
      end
      object SN26: TMenuItem
        Caption = 'N26 Material NG Color'
        OnClick = SN26Click
      end
      object SN27: TMenuItem
        Caption = 'N27 Reality Remain Quantity'
        OnClick = SN27Click
      end
      object SN28: TMenuItem
        Caption = 'N28 Declaretion Check'
        OnClick = SN28Click
      end
      object SN29: TMenuItem
        Caption = 'N29 Entry Leave Date'
        OnClick = SN29Click
      end
    end
    object SN3: TMenuItem
      Caption = 'N3 Material'
      object SN31: TMenuItem
        Caption = 'N31 Stock Report'
      end
      object SN32: TMenuItem
        Caption = 'N32 Monthly Stock'
        OnClick = SN32Click
      end
      object SN33: TMenuItem
        Caption = 'N33 Matreial Trace'
        OnClick = SN33Click
      end
      object SN34: TMenuItem
        Caption = 'N34 Site Area'
        OnClick = SN34Click
      end
      object SN35: TMenuItem
        Caption = 'N35 First stock'
        OnClick = SN35Click
      end
      object SN36: TMenuItem
        Caption = 'N36 Material  Area'
        OnClick = SN36Click
      end
      object SN37: TMenuItem
        Caption = 'N37 Anytime Stock'
        OnClick = SN37Click
      end
      object SN37A: TMenuItem
        Caption = 'N37A Monthly Stock Report'
        OnClick = SN37AClick
      end
      object SN38: TMenuItem
        Caption = 'N38 Material Comsumption'
        OnClick = SN38Click
      end
      object SN39: TMenuItem
        Caption = 'N39 Material In and Out'
        OnClick = SN39Click
      end
      object N3A1: TMenuItem
        Caption = 'N3A AnyStockUltra'
        OnClick = N3A1Click
      end
      object SN3B: TMenuItem
        Caption = 'N3B Warehouse Key In Stock'
        OnClick = SN3BClick
      end
      object SN3C: TMenuItem
        Caption = 'N3C Account Key In Stock'
        OnClick = SN3CClick
      end
      object SN3D: TMenuItem
        Caption = 'N3D Traceability Warehouse ( Material )'
        object SN3D1: TMenuItem
          Caption = 'N3D1 Material In Warehouse'
          OnClick = SN3D1Click
        end
        object SN3D2: TMenuItem
          Caption = 'N3D2 Material Released Records'
          OnClick = SN3D2Click
        end
      end
      object SN3E: TMenuItem
        Caption = 'N3E Anytime Stock HGLB'
        OnClick = SN3EClick
      end
      object SN3F: TMenuItem
        Caption = 'N3F Traceability Warehouse ( Chemical )'
        object SN3F1: TMenuItem
          Caption = 'N3F1 Chemical In Warehouse'
          OnClick = SN3F1Click
        end
        object SN3F2: TMenuItem
          Caption = 'N3F2 Chemical Released Records'
          OnClick = SN3F2Click
        end
      end
      object SN3G: TMenuItem
        Caption = 'N3G Detail Rubber'
        object SN3G1: TMenuItem
          Caption = 'N3G1 Detail Rubber In'
          OnClick = SN3G1Click
        end
        object SN3G2: TMenuItem
          Caption = 'N3G2 Detail Rubber Out'
          OnClick = SN3G2Click
        end
      end
      object SN3H: TMenuItem
        Caption = 'N3H Develop Request Check Stock'
        OnClick = SN3HClick
      end
      object SN3I: TMenuItem
        Caption = 'N3I Anytime Stock R'
        OnClick = SN3IClick
      end
      object SN3J: TMenuItem
        Caption = 'N3J Deliver Detail R'
        OnClick = SN3JClick
      end
      object SN3K: TMenuItem
        Caption = 'N3K Lock Qty Material '
        OnClick = SN3KClick
      end
    end
    object SN4: TMenuItem
      Caption = 'N4 Inventory'
      object SN41: TMenuItem
        Caption = 'N41 Inventory Loss'
      end
      object SN42: TMenuItem
        Caption = 'N42 Inventory Surplus'
      end
      object SN43: TMenuItem
        Caption = 'N43 Replenish Amount'
        OnClick = SN43Click
      end
      object SN44: TMenuItem
        Caption = 'N44 Inventory Old Stock'
        OnClick = SN44Click
      end
      object SN45: TMenuItem
        Caption = 'N45 Material Stock Type'
        OnClick = SN45Click
      end
      object SN46: TMenuItem
        Caption = 'N46 Material Usage List'
        OnClick = SN46Click
      end
      object SN47: TMenuItem
        Caption = 'N47 Material Inventory Type'
        OnClick = SN47Click
      end
      object SN48: TMenuItem
        Caption = 'N48 Material Stock Use'
        OnClick = SN48Click
      end
      object SN49: TMenuItem
        Caption = 'N49 Develop Materail Classify Change'
        OnClick = SN49Click
      end
    end
    object SN6: TMenuItem
      Caption = 'N6 Other'
      object SN61: TMenuItem
        Caption = 'N61 Safe Material'
        OnClick = SN61Click
      end
      object SN62: TMenuItem
        Caption = 'N62 Scrap Material'
        OnClick = SN62Click
      end
    end
    object SN7: TMenuItem
      Caption = 'N7 TPM'
      object SN71: TMenuItem
        Caption = 'N71 Entry'
        object SN711: TMenuItem
          Caption = 'N711 Entry TPM'
          OnClick = SN711Click
        end
      end
      object SN72: TMenuItem
        Caption = 'N72 Deliver'
        object SN721: TMenuItem
          Caption = 'N721 Deliver TPM'
          OnClick = SN721Click
        end
        object SN722: TMenuItem
          Caption = 'N722 Deliver Confirm For TPM'
          OnClick = SN722Click
        end
      end
      object SN73: TMenuItem
        Caption = 'N73 TPM Stock Report'
        OnClick = SN73Click
      end
      object SN74: TMenuItem
        Caption = 'N74 Material Review List'
        OnClick = SN74Click
      end
    end
    object SN7X: TMenuItem
      Caption = 'N7 Finished'
      Visible = False
      object SN71X: TMenuItem
        Caption = 'N71 Label Carton'
        OnClick = SN71XClick
      end
      object SN72X: TMenuItem
        Caption = 'N72 Label Inbox'
        OnClick = SN72XClick
      end
      object SN73X: TMenuItem
        Caption = 'N73 Label finished'
        Enabled = False
        OnClick = SN73XClick
      end
      object SN74X: TMenuItem
        Caption = 'N74 Inspector'
        object SN741: TMenuItem
          Caption = 'N741 Inspector Import'
          OnClick = SN741Click
        end
        object SN742: TMenuItem
          Caption = 'N742 Inspector Report'
          OnClick = SN742Click
        end
        object SN743: TMenuItem
          Caption = 'N743 Inspector Lack'
          OnClick = SN743Click
        end
      end
      object SN75: TMenuItem
        Caption = 'N75 Warehouse Trace'
        OnClick = SN75Click
      end
      object SN76: TMenuItem
        Caption = 'N76 Warehouse Report'
        OnClick = SN76Click
      end
      object SN77: TMenuItem
        Caption = 'N77 Shipping '
        object SN771: TMenuItem
          Caption = 'N771 Shipping Import'
          OnClick = SN771Click
        end
        object SN772: TMenuItem
          Caption = 'N772 Shipping Report'
          OnClick = SN772Click
        end
      end
      object SN78: TMenuItem
        Caption = 'N78 Cartton Move Report'
        object SN781: TMenuItem
          Caption = 'N781 Cartton Move Rep'
          OnClick = SN781Click
        end
        object SN782: TMenuItem
          Caption = 'N782 Cartton Move out Lack'
          OnClick = SN782Click
        end
      end
      object SN79: TMenuItem
        Caption = 'N79 Stock Report'
        OnClick = SN79Click
      end
      object SN790: TMenuItem
        Caption = 'N790 Account Report'
        OnClick = SN790Click
      end
    end
    object SN8: TMenuItem
      Caption = 'N8 MatScan'
      object SN81: TMenuItem
        Caption = 'N81 Material Barcode'
        OnClick = SN81Click
      end
      object SN82: TMenuItem
        Caption = 'N82 Material Code List'
        OnClick = SN82Click
      end
      object SN83: TMenuItem
        Caption = 'N83 Scan To Deliver'
        OnClick = SN83Click
      end
      object SN84: TMenuItem
        Caption = 'N84 Material Complete Set'
        OnClick = SN84Click
      end
      object SN85: TMenuItem
        Caption = 'N85 Material No Deliver'
        OnClick = SN85Click
      end
      object SN86: TMenuItem
        Caption = 'N86 Material Deliver Scan'
        OnClick = SN86Click
      end
      object SN87: TMenuItem
        Caption = 'N87 Entry Material Scan'
        OnClick = SN87Click
      end
      object SN88: TMenuItem
        Caption = 'N88 Delivery Material Scan'
        OnClick = SN88Click
      end
      object SN89: TMenuItem
        Caption = 'N89 Delivery Material Scan Confirm'
        OnClick = SN89Click
      end
      object SN8A: TMenuItem
        Caption = 'N8A Entry Material Scan RFID'
        OnClick = SN8AClick
      end
      object SN8B: TMenuItem
        Caption = 'N8B Delivery Material Scan RFID'
        OnClick = SN8BClick
      end
      object SN8C: TMenuItem
        Caption = 'N8C Report Material Scan RFID'
        OnClick = SN8CClick
      end
      object SN8D: TMenuItem
        Caption = 'N8D Material Scan QR'
        OnClick = SN8DClick
      end
      object SN8E: TMenuItem
        Caption = 'N8E Anytime Stock Scan'
        OnClick = SN8EClick
      end
    end
    object SN9: TMenuItem
      Caption = 'N9 Production Tool Stock'
      object SN91: TMenuItem
        Caption = 'N91 Production Tool Borrow'
        object SN911: TMenuItem
          Caption = 'N911 Phom Xuat  ('#26982#38957#20511#20986#25110#22577#24290')'
          OnClick = SN911Click
        end
        object SN912: TMenuItem
          Caption = 'N912 Rap Lap Trinh Xuat ('#38651#33126#36554#27169#29256#20511#20986#25110#22577#24290')'
          OnClick = SN912Click
        end
        object SN913: TMenuItem
          Caption = 'N913 Dao Chat Xuat ('#26028#20992#20511#20986#25110#22577#24290')'
          OnClick = SN913Click
        end
        object SN914: TMenuItem
          Caption = 'N914 Khuan In Xuat ('#32178#29256#20511#20986#25110#22577#24290')'
          OnClick = SN914Click
        end
        object SN915: TMenuItem
          Caption = 'N915 Truc Talon Xuat ('#33457#36650#20511#20986#25110#22577#24290')'
          OnClick = SN915Click
        end
        object SN916: TMenuItem
          Caption = 'N916 Muon Confirm ('#20489#24235#20511#20986#25110#22577#24290#30906#35469')'
          object SN9161: TMenuItem
            Caption = 'N9161 Muon Phom Confirm'
            OnClick = SN9161Click
          end
          object SN9162: TMenuItem
            Caption = 'N9162 Muon Rap Lap Trinh Confirm'
            OnClick = SN9162Click
          end
          object SN9163: TMenuItem
            Caption = 'N9163 Muon Dao Chat Confirm'
            OnClick = SN9163Click
          end
          object SN9164: TMenuItem
            Caption = 'N9164 Muon Khuan In Confirm'
            OnClick = SN9164Click
          end
          object SN9165: TMenuItem
            Caption = 'N9165 Truc Talon Confirm'
            OnClick = SN9165Click
          end
        end
        object SN917: TMenuItem
          Caption = 'N917 Thanh Ly Confirm ('#20489#24235#20511#28165#29702#22577#24290#30906#35469')'
          object SN9171: TMenuItem
            Caption = 'N9171 Thanh Ly Phom Confirm'
            OnClick = SN9171Click
          end
        end
      end
      object SN92: TMenuItem
        Caption = 'N92 Production Tool Return'
        object SN921: TMenuItem
          Caption = 'N921 Phom Tra ('#26982#38957#27512#36996#25110#26032#22686')'
          OnClick = SN921Click
        end
        object SN922: TMenuItem
          Caption = 'N922 Rap Lap Trinh  Tra('#38651#33126#36554#27169#29256#27512#36996#25110#26032#22686')'
          OnClick = SN922Click
        end
        object SN923: TMenuItem
          Caption = 'N923 Dao Chat Tra('#26028#20992#27512#36996#25110#26032#22686')'
          OnClick = SN923Click
        end
        object SN924: TMenuItem
          Caption = 'N924 Khuan In Tra ('#32178#29256#27512#36996#25110#26032#22686')'
          OnClick = SN924Click
        end
        object SN925: TMenuItem
          Caption = 'N925 Truc Talon Tra ('#33457#36650#27512#36996#25110#26032#22686')'
          OnClick = SN925Click
        end
      end
      object SN93: TMenuItem
        Caption = 'N93 Production Tool Stock'
        object SN931: TMenuItem
          Caption = 'N931 Phom Stock ('#26982#38957#20489#24235#23384')'
          OnClick = SN931Click
        end
        object SN932: TMenuItem
          Caption = 'N932 Rap Lap Trinh  Tra Stock ('#38651#33126#36554#27169#29256#24235#23384')'
          OnClick = SN932Click
        end
        object SN933: TMenuItem
          Caption = 'N933 Dao Chat Stock ('#26028#20992#24235#23384')'
          OnClick = SN933Click
        end
        object SN934: TMenuItem
          Caption = 'N934 Khuan In Stock ('#32178#29256#24235#23384')'
          OnClick = SN934Click
        end
        object SN935: TMenuItem
          Caption = 'N935 Truc Talon Stock ('#33457#36650#24235#23384')'
          OnClick = SN935Click
        end
      end
      object SN94: TMenuItem
        Caption = 'N94 Production Tool Track Report'
        OnClick = SN94Click
      end
      object SN95: TMenuItem
        Caption = 'N95 Production Tool Size Range'
        OnClick = SN95Click
      end
      object SN96: TMenuItem
        Caption = 'N96 Production Tool Area and  Site'
        OnClick = SN96Click
      end
    end
    object SNA: TMenuItem
      Caption = 'NA Outsole Data'
      object SNA1: TMenuItem
        Caption = 'NA1 Outsole Borrow'
        object SNA11: TMenuItem
          Caption = 'NA11 Borrow List'
          OnClick = SNA11Click
        end
        object SNA12: TMenuItem
          Caption = 'NA12 BrowConfirm'
          OnClick = SNA12Click
        end
      end
      object SNA2: TMenuItem
        Caption = 'NA2 Outsole Return'
        OnClick = SNA2Click
      end
      object SNA3: TMenuItem
        Caption = 'NA3 Outsole Stock'
        OnClick = SNA3Click
      end
      object SNA4: TMenuItem
        Caption = 'NA4 Outsole Report'
        object SNA41: TMenuItem
          Caption = 'NA41 Outsole Model Production('#24213#27169#20855#29986#33021#20998#26512')'
          OnClick = SNA41Click
        end
        object SNA42: TMenuItem
          Caption = 'NA42 Outsole DailyProduction('#24213#27169#26085#29986#33021#20998#26512')'
          OnClick = SNA42Click
        end
      end
      object SNA5: TMenuItem
        Caption = 'NA5 Outsole Data'
        object SNA51: TMenuItem
          Caption = 'NA51 Outsole Size Range('#20998#27573#23610#30908#35373#23450')'
          OnClick = SNA51Click
        end
        object SNA52: TMenuItem
          Caption = 'NA52 Outsole Model Production Qty('#24213#27169#29986#33021#35373#23450')'
          OnClick = SNA52Click
        end
      end
    end
    object SNB: TMenuItem
      Caption = 'NB Report'
      object SNB1: TMenuItem
        Caption = 'Taiwan Audit Report'
        OnClick = SNB1Click
      end
    end
    object SNC: TMenuItem
      Caption = 'NC FOC'
      object SNC1: TMenuItem
        Caption = 'NC1 Entry FOC'
        OnClick = SNC1Click
      end
      object SNC2: TMenuItem
        Caption = 'NC2 Delivery'
        object SNC21: TMenuItem
          Caption = 'NC21 Delivery FOC'
          OnClick = SNC21Click
        end
        object SNC22: TMenuItem
          Caption = 'NC22 Delivery Confirm For FOC'
          OnClick = SNC22Click
        end
      end
      object SNC3: TMenuItem
        Caption = 'NC3 FOC Stock Report'
        OnClick = SNC3Click
      end
      object SNC4: TMenuItem
        Caption = 'NC4 Material Discard Report'
        OnClick = SNC4Click
      end
      object SNC5: TMenuItem
        Caption = 'NC5 FOC List'
        OnClick = SNC5Click
      end
      object SNC6: TMenuItem
        Caption = 'NC6 FOC Matreial Trace'
        OnClick = SNC6Click
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
      'and GSBH=:GSBH'
      '')
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
