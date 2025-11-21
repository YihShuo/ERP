object Main: TMain
  Left = 298
  Top = 154
  Width = 932
  Height = 481
  Caption = 'sc tie'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = mmMain
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object imBackground: TImage
    Left = 0
    Top = 0
    Width = 916
    Height = 423
    Align = alClient
    AutoSize = True
    Center = True
    Stretch = True
  end
  object Edit1: TEdit
    Left = 344
    Top = 112
    Width = 121
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = 'Edit1'
    Visible = False
  end
  object Edit2: TEdit
    Left = 344
    Top = 136
    Width = 121
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = 'Edit2'
    Visible = False
  end
  object mmMain: TMainMenu
    AutoHotkeys = maManual
    Left = 32
    Top = 16
    object SN1: TMenuItem
      Caption = 'N1 BOM'
    end
    object SN2: TMenuItem
      Caption = 'N2 Sales'
      object SN21: TMenuItem
        Caption = 'N21 Order Qty By Month'
        OnClick = SN21Click
      end
      object SN22: TMenuItem
        Caption = 'N22 Order Qty By Countury'
        OnClick = SN22Click
      end
      object SN23: TMenuItem
        Caption = 'N23 '#21508#26376#20221#35330#21934#37327'-'#32113#35336#20998#26512
        OnClick = SN23Click
      end
      object SN24: TMenuItem
        Caption = 'N24 Department IE POH Analysis'
        OnClick = SN24Click
      end
      object SN25: TMenuItem
        Caption = 'N25 Order Detail  IE POH Analysis'
        OnClick = SN25Click
      end
    end
    object SN3: TMenuItem
      Caption = 'N3 Purchase'
      object SN31: TMenuItem
        Caption = 'N31 Stuff Cost'
        OnClick = SN31Click
      end
      object SN32: TMenuItem
        Caption = 'N32 Supplier for Material'
        OnClick = SN32Click
      end
    end
    object SN4: TMenuItem
      Caption = 'N4 Warehouse'
    end
    object SN5: TMenuItem
      Caption = 'N5 Production'
      object SN51: TMenuItem
        Caption = 'N51 Brand Production'
        OnClick = SN51Click
      end
      object SN52: TMenuItem
        Caption = 'N52 DT Production Report'
        OnClick = SN52Click
      end
      object SN53: TMenuItem
        Caption = 'N53 Daily Production of Department and Order'
        OnClick = SN53Click
      end
      object SN54: TMenuItem
        Caption = 'N54 Daily Production of Department'
        OnClick = SN54Click
      end
    end
    object SN6: TMenuItem
      Caption = 'N6 P.C'
    end
    object SN7: TMenuItem
      Caption = 'N7 QC'
      object SN71: TMenuItem
        Caption = 'N71 Monthy QC Report (By Dep)'
        OnClick = SN71Click
      end
      object SN72: TMenuItem
        Caption = 'N72 Monthly QC Report (By Defect)'
        OnClick = SN72Click
      end
      object SN73: TMenuItem
        Caption = 'N73 Daily QC Report (By Hours)'
        object SN731: TMenuItem
          Caption = 'N731 Daily QC Report '
          OnClick = SN731Click
        end
        object SN732: TMenuItem
          Caption = 'N732 Daily QC Report For ADIDAS'
          OnClick = SN732Click
        end
        object SN733: TMenuItem
          Caption = 'N733 Daily QC Report For TV'
          OnClick = SN733Click
        end
        object SN734: TMenuItem
          Caption = 'N734 Daily QC FTT'
          OnClick = SN734Click
        end
      end
      object SN74: TMenuItem
        Caption = 'N74 Production line FTT'
        OnClick = SN74Click
      end
      object SN75: TMenuItem
        Caption = 'N75 Production line FTT for TV'
        OnClick = SN75Click
      end
      object SN76: TMenuItem
        Caption = 'N76 Monthly QC Report(Shoe B/C)'
        OnClick = SN76Click
      end
      object SN77: TMenuItem
        Caption = 'N77 Monthly Report Shoe B/C'
        OnClick = SN77Click
      end
    end
    object SN8: TMenuItem
      Caption = 'N8 Develop'
      object SN81: TMenuItem
        Caption = 'N81 Merge Sample Trace'
        OnClick = SN81Click
      end
      object SN82: TMenuItem
        Caption = 'N82 DC Material Classify Use'
        Visible = False
        OnClick = SN82Click
      end
      object SN83: TMenuItem
        Caption = 'N83 DC Materail Classify Exception'
        Visible = False
        OnClick = SN83Click
      end
      object SN84: TMenuItem
        Caption = 'N84 Sample Tracking'
        object SN841: TMenuItem
          Caption = 'N841 Tracking List'
          OnClick = SN841Click
        end
        object SN842: TMenuItem
          Caption = 'N842 Tracking Statistics'
          OnClick = SN842Click
        end
        object SN843: TMenuItem
          Caption = 'N843 Trcking Reason'
          OnClick = SN843Click
        end
      end
    end
    object SN9: TMenuItem
      Caption = 'N9 Planning '
      object SN91: TMenuItem
        Caption = 'N91 HRM and Production-'#26376#29986#33021#20154#20107#24046#21220#22577#34920
        OnClick = SN91Click
      end
      object SN92: TMenuItem
        Caption = 'N92 Sample Shoes Tracking List-'#22411#39636'/'#35330#21934#20998#26512
        OnClick = SN92Click
      end
      object SN93: TMenuItem
        Caption = 'N93 Production Effection-'#26376#24037#26178#25928#29575#36948#25104#29376#27841
        OnClick = SN93Click
      end
      object SN94: TMenuItem
        Caption = 'N94 HRM Department Attendance -'#20154#20107#21508#21934#20301#27599#26085#20986#21220
        OnClick = SN94Click
      end
    end
  end
  object qrMain: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from BLimits'
      'where USERID=:userid'
      'and MKID=:mkid')
    Left = 64
    Top = 16
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
