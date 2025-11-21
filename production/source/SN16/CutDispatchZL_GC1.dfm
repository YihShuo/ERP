object CutDispatchZL_GC: TCutDispatchZL_GC
  Left = 241
  Top = 155
  Width = 1019
  Height = 477
  Caption = 'CutDispatchZL_GC'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 1003
    Height = 438
    Align = alClient
    DataSource = DS3
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'GCBWBH'
        Footers = <>
        Width = 92
      end
      item
        EditButtons = <>
        FieldName = 'ywsm'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'zwsm'
        Footers = <>
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'SIZE'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Levels'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'PDay'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'EarlyDay'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'BWBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'PDayS'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'BYWSM'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'BZWSM'
        Footers = <>
        Width = 108
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Width = 119
      end
      item
        EditButtons = <>
        FieldName = 'zwpm'
        Footers = <>
        Width = 102
      end>
  end
  object CutDispatchQry: TQuery
    DatabaseName = 'DB'
    DataSource = SpecPrint.DS1
    SQL.Strings = (
      
        'select CutDispatchZL_GC.ZLBH,CutDispatchZL_GC.GCBWBH,KT_SOPCutS_' +
        'GCBWD.ywsm,KT_SOPCutS_GCBWD.zwsm ,CutDispatchZL_GC.SIZE,'
      
        '       CutDispatchZL_GC.Qty,CutDispatchZL_GC.Levels,CutDispatchZ' +
        'L_GC.PDay,CutDispatchZL_GC.EarlyDay,CutDispatchZL_GC.PDayS,CutDi' +
        'spatchZL_GC.BWBH,BWZL.YWSM as BYWSM,BWZL.zwsm as BZWSM,CLZL.ywpm' +
        ',CLZL.zwpm'
      'from CutDispatchZL_GC'
      
        'left join KT_SOPCutS_GCBWD on KT_SOPCutS_GCBWD.gcbwdh=CutDispatc' +
        'hZL_GC.GCBWBH'
      'left join bwzl on BWZl.bwdh=CutDispatchZL_GC.BWBH'
      'left join CLZL on CLZL.cldh=CutDispatchZL_GC.CLBH'
      'where ZLBH=:ZLBH'
      'order by CutDispatchZL_GC.Levels desc')
    Left = 316
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ZLBH'
        ParamType = ptUnknown
      end>
    object CutDispatchQryZLBH: TStringField
      DisplayWidth = 11
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object CutDispatchQryGCBWBH: TStringField
      DisplayWidth = 8
      FieldName = 'GCBWBH'
      FixedChar = True
      Size = 6
    end
    object CutDispatchQryywsm: TStringField
      DisplayWidth = 18
      FieldName = 'ywsm'
      FixedChar = True
      Size = 40
    end
    object CutDispatchQryzwsm: TStringField
      DisplayWidth = 17
      FieldName = 'zwsm'
      FixedChar = True
      Size = 40
    end
    object CutDispatchQrySIZE: TStringField
      DisplayWidth = 6
      FieldName = 'SIZE'
      FixedChar = True
      Size = 6
    end
    object CutDispatchQryQty: TIntegerField
      DisplayWidth = 5
      FieldName = 'Qty'
    end
    object CutDispatchQryLevels: TStringField
      DisplayWidth = 6
      FieldName = 'Levels'
      FixedChar = True
      Size = 10
    end
    object CutDispatchQryPDay: TFloatField
      DisplayWidth = 6
      FieldName = 'PDay'
    end
    object CutDispatchQryEarlyDay: TFloatField
      DisplayWidth = 6
      FieldName = 'EarlyDay'
    end
    object CutDispatchQryBWBH: TStringField
      DisplayWidth = 7
      FieldName = 'BWBH'
      FixedChar = True
      Size = 6
    end
    object CutDispatchQryPDayS: TIntegerField
      FieldName = 'PDayS'
    end
    object CutDispatchQryBYWSM: TStringField
      FieldName = 'BYWSM'
      FixedChar = True
      Size = 40
    end
    object CutDispatchQryBZWSM: TStringField
      FieldName = 'BZWSM'
      FixedChar = True
      Size = 40
    end
    object CutDispatchQryywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object CutDispatchQryzwpm: TStringField
      FieldName = 'zwpm'
      FixedChar = True
      Size = 200
    end
  end
  object DS3: TDataSource
    DataSet = CutDispatchQry
    Left = 340
    Top = 64
  end
end
