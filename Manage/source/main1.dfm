object main: Tmain
  Left = 446
  Top = 132
  Width = 870
  Height = 500
  Caption = 'Manage'
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
    Height = 403
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
    Top = 403
    Width = 854
    Height = 38
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
      Caption = 'N1 Order'
      object SN11: TMenuItem
        Caption = 'N11 Order Spec '#21046#20196#34920
        OnClick = SN11Click
      end
      object SN12: TMenuItem
        Caption = 'N12 Order Price '#35330#21934#21934#20729
        OnClick = SN12Click
      end
      object SN13: TMenuItem
        Caption = 'N13 Cost Type '#26448#26009#26009#39006#21029
        OnClick = SN13Click
      end
      object SN14: TMenuItem
        Caption = 'N14 Material Cost Type '#26448#26009#20998#39006
        OnClick = SN14Click
      end
      object SN15: TMenuItem
        Caption = 'N15 Material Price '#26448#26009#21934#20729
        OnClick = SN15Click
      end
      object SN16: TMenuItem
        Caption = 'N16 Model Cost '#22411#39636#25104#26412
        OnClick = SN16Click
      end
      object SN18: TMenuItem
        Caption = 'N18 Vendor Mapping Set'
        OnClick = SN18Click
      end
      object SN19: TMenuItem
        Caption = 'N19 SKU Detail Cost '#22411#39636#25104#26412#26126#32048
        OnClick = SN19Click
      end
      object SN1A: TMenuItem
        Caption = 'N1A TW Order UnLock BOM'#35330#21934#35299#37782
        OnClick = SN1AClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object SN17: TMenuItem
        Caption = 'Exit'
        OnClick = SN17Click
      end
    end
    object SN2: TMenuItem
      Caption = 'N2 Cost'
      object SN21: TMenuItem
        Caption = 'N21 Deliver Account '#21046#20196#20986#26448#26009#32317#35336
        object SN211: TMenuItem
          Caption = 'N211 Deliver Account For Order '#35330#21934#20986#26448#26009#21934#25976#37327#32317#35336
          OnClick = SN211Click
        end
        object SN212: TMenuItem
          Caption = 'N212 Finished Order Deliver Account '#24050#20837#24235#35330#21934#26448#26009#37329#38989#32317#35336
          OnClick = SN212Click
        end
        object SN213: TMenuItem
          Caption = 'N213 Monthly cost '#26376#25104#26412#20998#26512
          OnClick = SN213Click
        end
        object N214: TMenuItem
          Caption = 'N214 Cost Sheet For Fully Packed Orders '#28415#31665#35330#21934#25104#26412#37329#38989#22577#34920
          OnClick = N214Click
        end
      end
      object SN22: TMenuItem
        Caption = 'N22 Replenish Account '#35036#26009#37329#38989#32113#35336
        object SN221: TMenuItem
          Caption = 'N221 Department Replenish '#37096#38272#35036#26009#37329#38989
          OnClick = SN221Click
        end
        object SN222: TMenuItem
          Caption = 'N222 Order Replenish '#35330#21934#35036#26009#37329#38989
          OnClick = SN222Click
        end
        object SN223: TMenuItem
          Caption = 'N223 Replenish Reason '#35036#26009#21407#22240#32113#35336
          OnClick = SN223Click
        end
        object SN224: TMenuItem
          Caption = 'N224 Replenish Daily Report '#21508#24288#27599#26085#35036#26009#32113#35336
          OnClick = SN224Click
        end
        object SN225: TMenuItem
          Caption = 'N225 Daily Replenish  Rate '#21508#24288#27599#26085#35036#26009#27604#29575
          OnClick = SN225Click
        end
        object SN226: TMenuItem
          Caption = 'N226 Daily Replenish Rate by Order '#21508#24288#20381#35330#21934#35336#31639#35036#26009#29575#20998#26512
          OnClick = SN226Click
        end
      end
      object SN23: TMenuItem
        Caption = 'N23 Deliver Cost '#21046#20196#26448#26009#25104#26412#32113#35336
        Enabled = False
        object SN2311: TMenuItem
          Caption = 'N231 '#31649#29702#25104#26412
        end
        object N2321: TMenuItem
          Caption = 'N232 '#36001#21209#25104#26412
        end
        object SN2331: TMenuItem
          Caption = 'N233 '#38928#20272#25104#26412
        end
      end
      object SN24: TMenuItem
        Caption = 'N24 Material Cost '#20845#38917#36027#29992#20998#39006
        object SN241: TMenuItem
          Caption = 'N241 Department '#20998#37096#38272
          OnClick = SN241Click
        end
        object SN242: TMenuItem
          Caption = 'N242 Reason '#20998#21407#22240
          OnClick = SN242Click
        end
      end
      object SN25: TMenuItem
        Caption = 'N25  Material Total '#21608#29983#29986#25104#26412#32113#35336
        object SN251: TMenuItem
          Caption = 'N251 Order Material  '#35330#21934#26448#26009#25104#26412
          OnClick = SN251Click
        end
        object SN252: TMenuItem
          Caption = 'N252 Department Cost '#37096#38272#29983#29986#25104#26412
          OnClick = SN252Click
        end
        object SN253: TMenuItem
          Caption = 'N253 Other Sale '#24037#24288#20839#37559#21806#25910#20837
          Enabled = False
          OnClick = SN253Click
        end
      end
      object SN26: TMenuItem
        Caption = 'N26 Account Monthly Costing '#26371#35336#25104#26412#38917#30446
        OnClick = SN26Click
      end
    end
    object SN3: TMenuItem
      Caption = 'N3 Material'
      object SN31: TMenuItem
        Caption = 'N31 Material Stock Report'
        OnClick = SN31Click
      end
      object SN32: TMenuItem
        Caption = 'N32 Material Stock Use '#21033#24235#25976
        OnClick = SN32Click
      end
      object SN35: TMenuItem
        Caption = 'N35 Material CBD Price'#38283#30332#25104#26412#21934#20729' '
        OnClick = SN35Click
      end
    end
    object SN4: TMenuItem
      Caption = 'N4 Analysis'
      object SN41: TMenuItem
        Caption = 'N41 Order AnalySis'
        OnClick = SN41Click
      end
      object SN42: TMenuItem
        Caption = 'N42 Plan AnalySis'
        OnClick = SN42Click
      end
      object SN43: TMenuItem
        Caption = 'N43 Replenish Anlysis'
        OnClick = SN43Click
      end
      object SN44: TMenuItem
        Caption = 'N44 Finish Goods'
        OnClick = SN44Click
      end
    end
    object SN5: TMenuItem
      Caption = 'N5 Report'
      object SN51: TMenuItem
        Caption = 'N51 Month Production Report'
        OnClick = SN51Click
      end
      object SN52: TMenuItem
        Caption = 'N52 MRP Vendors v.s Actual Vendors'
        OnClick = SN52Click
      end
      object SN53: TMenuItem
        Caption = 'N53 In Stock Price'
        OnClick = SN53Click
      end
      object SN54: TMenuItem
        Caption = 'N54 Integerated Report('#32156#21512#22577#34920'1)'
        object SN541: TMenuItem
          Caption = 'N541 Factory Daily Report '#21508#38795#24288#29986#37327#26376#21295#32317#34920' '
          OnClick = SN541Click
        end
        object SN542: TMenuItem
          Caption = 'N542 Brand Production-'#24180#24230#21697#29260#38928#35336#20986#36008
          OnClick = SN542Click
        end
        object SN543: TMenuItem
          Caption = 'N543 Export Quantity-'#26376#20221#38928#35336#20986#36008
          OnClick = SN543Click
        end
        object SN544: TMenuItem
          Caption = 'N544 Department Daily POH OutPut-'#21508#21934#20301#20154#26178#22343#29986#33021
          OnClick = SN544Click
        end
        object SN545: TMenuItem
          Caption = 'N545 Factory Daily POH OutPut-'#20840#24288#20154#22343#26178#29986#33021
          OnClick = SN545Click
        end
        object SN546: TMenuItem
          Caption = 'N546 HRM Department Attendance -'#20154#20107#21508#21934#20301#27599#26085#20986#21220
          OnClick = SN546Click
        end
      end
      object SN55: TMenuItem
        Caption = 'N55 Integerated Report('#32156#21512#22577#34920'2)'
        object SN553: TMenuItem
          Caption = 'N553 IN /OUT Shoe Warehouse-'#25104#21697#20489#20986#20837#24235#22577#34920
          OnClick = SN553Click
        end
        object SN554: TMenuItem
          Caption = 'N554 Monthly QC Report(Shoe B/C) B/C'#21697#35330#21934
          Hint = 'SN544'
          OnClick = SN554Click
        end
        object SN555: TMenuItem
          Caption = 'N555 Replenish Daily Report '#21508#24288#27599#26085#35036#26009#32113#35336
          OnClick = SN555Click
        end
      end
      object SN56: TMenuItem
        Caption = 'N56 Extra Cost('#21152#24037#29986#20540')'
        OnClick = SN56Click
      end
    end
    object SN6: TMenuItem
      Caption = 'N6 KPI'
      object SN61: TMenuItem
        Caption = 'N61 KPI_Factory / R'
        OnClick = SN61Click
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
