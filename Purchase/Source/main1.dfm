object main: Tmain
  Left = 552
  Top = 156
  Width = 1058
  Height = 359
  Caption = 'Purchase'
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
    Width = 1042
    Height = 278
    Align = alClient
    AutoSize = True
    Stretch = True
    OnDblClick = Image1DblClick
  end
  object Edit1: TEdit
    Left = 240
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'suername'
    Visible = False
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 278
    Width = 1042
    Height = 22
    Panels = <>
  end
  object Edit2: TEdit
    Left = 240
    Top = 216
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'company'
    Visible = False
  end
  object MainMenu1: TMainMenu
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    Left = 96
    Top = 88
    object SN1: TMenuItem
      Caption = 'N1 Order'
      object SN11: TMenuItem
        Caption = 'N11 Order Spec'
        OnClick = SN11Click
      end
      object SN12: TMenuItem
        Caption = 'N12 Material New'
        OnClick = SN12Click
      end
      object SN13: TMenuItem
        Caption = 'N13 Supplier new'
        OnClick = SN13Click
      end
      object SN14: TMenuItem
        Caption = 'N14 Thread BOM'
        OnClick = SN14Click
      end
      object SN15: TMenuItem
        Caption = 'N15 Material List'
        OnClick = SN15Click
      end
      object SN16: TMenuItem
        Caption = 'N16 Other Material List'
        OnClick = SN16Click
      end
      object SN17: TMenuItem
        Caption = 'N17 Article Extra Cost'
        OnClick = SN17Click
      end
      object SN18: TMenuItem
        Caption = 'N18 Material Woven List'
        OnClick = SN18Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object SN19: TMenuItem
        Caption = 'Exit'
        OnClick = SN19Click
      end
    end
    object SN2: TMenuItem
      Caption = 'N2 Purchase'
      object SN21: TMenuItem
        Caption = 'N21 Purchase Order '
        object SN211: TMenuItem
          Caption = 'N211 No Size'
          OnClick = SN211Click
        end
        object SN212: TMenuItem
          Caption = 'N212 Size'
          OnClick = SN212Click
        end
        object SN213: TMenuItem
          Caption = 'N213 Other'
          OnClick = SN213Click
        end
        object SN214: TMenuItem
          Caption = 'N214 Total'
          OnClick = SN214Click
        end
        object SN215: TMenuItem
          Caption = 'N215 Apply'
          object SN2151: TMenuItem
            Caption = 'N2151 Apply Total'
            OnClick = SN2151Click
          end
          object SN2152: TMenuItem
            Caption = 'N2152 Apply Total Confirm'
            OnClick = SN2152Click
          end
          object SN2153: TMenuItem
            Caption = 'N2153 Apply Total Confirm Permit'
            OnClick = SN2153Click
          end
          object SN2154: TMenuItem
            Caption = 'N2154 Apply Total Review(KH '#24288#20225#21123')'
            OnClick = SN2154Click
          end
        end
        object SN216: TMenuItem
          Caption = 'N216 Confirm('#23529#26680')'
          object SN2161: TMenuItem
            Caption = 'N2161 Manager  Confirm('#20027#31649#23529#26680')'
            OnClick = SN2161Click
          end
          object N2162: TMenuItem
            Caption = 'N2162 Top Manage Confirm('#24288#20027#31649#23529#26680')'
            OnClick = N2162Click
          end
        end
        object SN217: TMenuItem
          Caption = 'N217 Phom'
          OnClick = SN217Click
        end
      end
      object SN22: TMenuItem
        Caption = 'N22 Purchase Trace'
        object SN221: TMenuItem
          Caption = 'N221 No Size'
          OnClick = SN221Click
        end
        object SN222: TMenuItem
          Caption = 'N222 Size'
          OnClick = SN222Click
        end
        object SN223: TMenuItem
          Caption = 'N223 List'
          OnClick = SN223Click
        end
        object SN224: TMenuItem
          Caption = 'N224 Total'
          OnClick = SN224Click
        end
        object SN225: TMenuItem
          Caption = 'N225 Trace Apply Total '
          OnClick = SN225Click
        end
        object SN226: TMenuItem
          Caption = 'N226 Total Apply Report '
          OnClick = SN226Click
        end
        object SN227: TMenuItem
          Caption = 'N227 Budget Setting'
          OnClick = SN227Click
        end
        object SN228: TMenuItem
          Caption = 'N228 SGDH_Stock'
          OnClick = SN228Click
        end
      end
      object SN23: TMenuItem
        Caption = 'N23 Purchase Quotation'
        object SN231: TMenuItem
          Caption = 'N231 Quotation'
          OnClick = SN231Click
        end
        object SN232: TMenuItem
          Caption = 'N232 Quotation List'
          OnClick = SN232Click
        end
        object SN233: TMenuItem
          Caption = 'N233 Quotation Report'
          OnClick = SN233Click
        end
        object SN234: TMenuItem
          Caption = 'N234 Quotation Confirm'
          OnClick = SN234Click
        end
      end
      object SN24: TMenuItem
        Caption = 'N24 Purchase Adjust'
        OnClick = SN24Click
      end
      object SN25: TMenuItem
        Caption = 'N25 Purchase KPI'
        object SN251: TMenuItem
          Caption = 'N251 Purchase KPI'
          OnClick = SN251Click
        end
        object SN252: TMenuItem
          Caption = 'N252 Supplier KPI'
          OnClick = SN252Click
        end
      end
      object SN26: TMenuItem
        Caption = 'N26 Purchase Order QuickStep'
        OnClick = SN26Click
      end
      object SN28: TMenuItem
        Caption = 'N28 Pre-Order Material '
        object SN280: TMenuItem
          Caption = 'N280 Pre-Order Calculate'
          OnClick = SN280Click
        end
        object SN281: TMenuItem
          Caption = 'N281 Pre-Order Material List'
          OnClick = SN281Click
        end
        object SN282: TMenuItem
          Caption = 'N282 Pre-Order Use stock'
          OnClick = SN282Click
        end
      end
      object SN29: TMenuItem
        Caption = 'N29 Origin VATNo/Declaration'
        OnClick = SN29Click
      end
      object SN2A: TMenuItem
        Caption = 'N2A Origin Material'
        OnClick = SN2AClick
      end
      object SN2B: TMenuItem
        Caption = 'N2B Supplier Sale Contract'
        OnClick = SN2BClick
      end
      object SN2C: TMenuItem
        Caption = 'N2C Index X Upload'
        OnClick = SN2CClick
      end
      object SN2D: TMenuItem
        Caption = 'N2D Mass Material MOQ'
        OnClick = SN2DClick
      end
    end
    object SN3: TMenuItem
      Caption = 'N3 Trace'
      object SN31: TMenuItem
        Caption = 'N31 Purchase list'
        OnClick = SN31Click
      end
      object SN32: TMenuItem
        Caption = 'N32 Deliver Trace'
        object SN321: TMenuItem
          Caption = 'N321 No Size'
          OnClick = SN321Click
        end
        object SN322: TMenuItem
          Caption = 'N322 Size'
          OnClick = SN322Click
        end
        object SN323: TMenuItem
          Caption = 'N323 Other'
          OnClick = SN323Click
        end
      end
      object SN33: TMenuItem
        Caption = 'N33 Use Stock'
        OnClick = SN33Click
      end
      object SN34: TMenuItem
        Caption = 'N34 Purchase check'
        OnClick = SN34Click
      end
      object SN35: TMenuItem
        Caption = 'N35 Use Stock Report'
        object SN351: TMenuItem
          Caption = 'SN351 Purchase Use Stock'
          OnClick = SN351Click
        end
        object SN352: TMenuItem
          Caption = 'SN352 Production Use Stock'
          OnClick = SN352Click
        end
      end
      object SN36: TMenuItem
        Caption = 'N36 Purchase Extra'
        OnClick = SN36Click
      end
      object SN37: TMenuItem
        Caption = 'N37 Purchase list mating'
        OnClick = SN37Click
      end
      object SN38: TMenuItem
        Caption = 'N38 CFM Swatch TracKing'
        OnClick = SN38Click
      end
      object SN39: TMenuItem
        Caption = 'N39 Upload Traceable File'
        OnClick = SN39Click
      end
      object SN3A: TMenuItem
        Caption = 'N3A Traceability Purchasing'
        object SN3A1: TMenuItem
          Caption = 'N3A1 Purchasing Material'
          OnClick = SN3A1Click
        end
        object SN3A2: TMenuItem
          Caption = 'N3A2 Purchasing Chemical'
          OnClick = SN3A2Click
        end
      end
      object SN3B: TMenuItem
        Caption = 'N3B Expected Usage'
        OnClick = SN3BClick
      end
      object SN3C: TMenuItem
        Caption = 'N3C The Order Controlling Report'
        OnClick = SN3CClick
      end
      object N3DForeCastPurchaseCompare1: TMenuItem
        Caption = 'N3D ForeCast_Purchase_Compare'
        OnClick = N3DForeCastPurchaseCompare1Click
      end
      object SN3E: TMenuItem
        Caption = 'N3E Percen Report'
        OnClick = SN3EClick
      end
      object SN3F: TMenuItem
        Caption = 'N3F Material On-Time Arrival Rate'
        OnClick = SN3FClick
      end
    end
    object SN4: TMenuItem
      Caption = 'N4 LYV - BJ'
      object SN43: TMenuItem
        Caption = 'N43 Prod. UP'
        object SN431: TMenuItem
          Caption = 'N431 Supplier:Transaction Term'
          OnClick = SN431Click
        end
        object SN432: TMenuItem
          Caption = 'N432 Supplier:Quotation'
          OnClick = SN432Click
        end
        object SN433: TMenuItem
          Caption = 'N433 Material:Data Input'
          OnClick = SN433Click
        end
        object SN434: TMenuItem
          Caption = 'N434 Material:BOM/ Carton/ Label'
          OnClick = SN434Click
        end
        object SN435: TMenuItem
          Caption = 'N435 Material:Other Categories'
          OnClick = SN435Click
        end
      end
    end
    object SN5: TMenuItem
      Caption = 'N5 Supplier'
      object SN51: TMenuItem
        Caption = 'N51 Deliver History'
      end
      object SN52: TMenuItem
        Caption = 'N52 Supplier Review'
        OnClick = SN52Click
      end
      object SN53: TMenuItem
        Caption = 'N53 Supplier Review Develop'
        OnClick = SN53Click
      end
    end
    object SN6: TMenuItem
      Caption = 'N6 Embroider'
      object SN61: TMenuItem
        Caption = 'N61 Embroider Model'
        OnClick = SN61Click
      end
      object SN62: TMenuItem
        Caption = 'N62 Article Embroider'
        OnClick = SN62Click
      end
    end
    object SN7: TMenuItem
      Caption = 'N7 Develop'
      object SN71: TMenuItem
        Caption = 'N71 Receive Article'
        object SN711: TMenuItem
          Caption = 'SN711 Receive BOM'
          OnClick = SN711Click
        end
        object SN712: TMenuItem
          Caption = 'SN712 Use Stock'
          OnClick = SN712Click
        end
        object SN713: TMenuItem
          Caption = 'SN713 Anytime Stock'
          OnClick = SN713Click
        end
        object SN714: TMenuItem
          Caption = 'SN714 Trace Stock'
          OnClick = SN714Click
        end
      end
      object SN72: TMenuItem
        Caption = 'N72 Merge BOM'
        OnClick = SN72Click
      end
      object SN73: TMenuItem
        Caption = 'N73 Purchase '
        object SN731: TMenuItem
          Caption = 'N731 Purchase Sample'
          OnClick = SN731Click
        end
        object SN732: TMenuItem
          Caption = 'N732 Supplier Analysis'
          OnClick = SN732Click
        end
        object SN733: TMenuItem
          Caption = 'N733 Tracking Report'
          OnClick = SN733Click
        end
        object SN734: TMenuItem
          Caption = 'N734 Purchasing Analysis'
          OnClick = SN734Click
        end
        object SN735: TMenuItem
          Caption = 'N735 Color Swatch Card Tracking '
          OnClick = SN735Click
        end
        object SN736: TMenuItem
          Caption = 'N736 Temp Material Query'
          OnClick = SN736Click
        end
        object SN737: TMenuItem
          Caption = 'N737 FlexColorCode'
          OnClick = SN737Click
        end
        object SN738: TMenuItem
          Caption = 'N738 CBY Size Comparison'
          OnClick = SN738Click
        end
        object SN739: TMenuItem
          Caption = 'N739 CFM Swatch Database'
          OnClick = SN739Click
        end
        object SN740: TMenuItem
          Caption = 'N740 Apply Purchase Mold'
          OnClick = SN740Click
        end
        object SN741: TMenuItem
          Caption = 'N741 Color Standard Database'
          OnClick = SN741Click
        end
        object SN742: TMenuItem
          Caption = 'N742 Matching Color KPI'
          OnClick = SN742Click
        end
        object SN743: TMenuItem
          Caption = 'N743 Apply Purchase Printing Mold'
          OnClick = SN743Click
        end
      end
      object SN74: TMenuItem
        Caption = 'N74 Sample ETD'
        OnClick = SN74Click
      end
      object SN75: TMenuItem
        Caption = 'N75 Sample Invoice'
        object SN751: TMenuItem
          Caption = 'N751 Sample Invoice'
          OnClick = SN751Click
        end
        object SN752: TMenuItem
          Caption = 'N752 Transport Charge'
          OnClick = SN752Click
        end
        object SN753: TMenuItem
          Caption = 'N753 Confirm Price'
          OnClick = SN753Click
        end
      end
      object SN76: TMenuItem
        Caption = 'N76 Supplier'
        object SN761: TMenuItem
          Caption = 'N761 Forwarder'
          OnClick = SN761Click
        end
        object SN762: TMenuItem
          Caption = 'N762 Supplier KPI'
          OnClick = SN762Click
        end
        object SN763: TMenuItem
          Caption = 'N763 Supplier'
          OnClick = SN763Click
        end
        object SN764: TMenuItem
          Caption = 'N764 Quotation  LeadTime MOQ'
          OnClick = SN764Click
        end
        object SN765: TMenuItem
          Caption = 'N765 Converse Avery AD Material'
          OnClick = SN765Click
        end
        object SN766: TMenuItem
          Caption = 'N766 Supplier BPM'
          OnClick = SN766Click
        end
      end
      object SN78: TMenuItem
        Caption = 'N78 Sample FlowChart'
        OnClick = SN78Click
      end
      object SN79: TMenuItem
        Caption = 'N79 TraceChangeMaterial'
        OnClick = SN79Click
      end
      object SN7A: TMenuItem
        Caption = 'N7A Transportation'
        OnClick = SN7AClick
      end
      object SN7B: TMenuItem
        Caption = 'N7B DC Purchase list'
        OnClick = SN7BClick
      end
      object SN7C: TMenuItem
        Caption = 'N7C Purchase Confirm Shoes'
        OnClick = SN7CClick
      end
      object SN7D: TMenuItem
        Caption = 'N7D CBY_SIZE_Stock'
        OnClick = SN7DClick
      end
      object SN7E: TMenuItem
        Caption = 'N7E Payment Quotation'
        OnClick = SN7EClick
      end
      object SN7F: TMenuItem
        Caption = 'N7F Request Check Stock'
        OnClick = SN7FClick
      end
      object SN7G: TMenuItem
        Caption = 'N7G Set Common Material'
        OnClick = SN7GClick
      end
      object SN7H: TMenuItem
        Caption = 'N7H VLA Report'
        OnClick = SN7HClick
      end
    end
    object SN8: TMenuItem
      Caption = 'N8 Report'
      object SN81: TMenuItem
        Caption = 'N8 Converse'
        object SN811: TMenuItem
          Caption = 'N811 GMS_RFT'
          OnClick = SN811Click
        end
        object SN812: TMenuItem
          Caption = 'N812 Upper Mat Information'
          OnClick = SN812Click
        end
        object SN813: TMenuItem
          Caption = 'N813 Mat Detail Information'
          OnClick = SN813Click
        end
        object SN814: TMenuItem
          Caption = 'N814 PriceChecking'
          OnClick = SN814Click
        end
        object SN815: TMenuItem
          Caption = 'N815 TrackingPO_KCLL'
          OnClick = SN815Click
        end
        object SN816: TMenuItem
          Caption = 'N816 Confirm Swatch Report'
          OnClick = SN816Click
        end
        object N8171: TMenuItem
          Caption = 'N817 Model material fee'
          OnClick = N8171Click
        end
        object SN818: TMenuItem
          Caption = 'N818 Procurement Value'
          OnClick = SN818Click
        end
      end
    end
    object SN9: TMenuItem
      Caption = 'N9 Setting'
      object SN91: TMenuItem
        Caption = 'N91 Material Allowance value'
        OnClick = SN91Click
      end
      object SN92: TMenuItem
        Caption = 'N92 PO Manager Setting'
        OnClick = SN92Click
      end
      object SN93: TMenuItem
        Caption = 'N93 Season Setting'
        OnClick = SN93Click
      end
    end
    object N10ESG1: TMenuItem
      Caption = 'N10 ESG'
      object SN101: TMenuItem
        Caption = 'N101 ESG CLBH'
        OnClick = SN101Click
      end
      object N102CLBHWeight1: TMenuItem
        Caption = 'N102 CLBH_Weight'
        OnClick = N102CLBHWeight1Click
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
  object PopupMenu: TPopupMenu
    Left = 128
    Top = 88
    object DevelopPurcahseFlowChar1: TMenuItem
      Caption = 'Develop Purcahse FlowChar'
      OnClick = DevelopPurcahseFlowChar1Click
    end
  end
  object ActionList1: TActionList
    Left = 424
    Top = 232
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
