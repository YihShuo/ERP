object ModelCost_XCCB: TModelCost_XCCB
  Left = 319
  Top = 197
  Width = 834
  Height = 500
  BorderIcons = [biSystemMenu]
  Caption = 'ModelCost_XCCB'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 826
    Height = 466
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    PopupMenu = PopupMenu1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'BWBH'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 127
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 43
      end
      item
        Color = 11599871
        EditButtons = <>
        FieldName = 'CLSL'
        Footers = <>
        Title.TitleButton = True
        Width = 47
      end
      item
        Color = 11599871
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <>
        Title.TitleButton = True
        Width = 57
      end
      item
        EditButtons = <>
        FieldName = 'USACC'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 71
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 345
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 337
      end
      item
        EditButtons = <>
        FieldName = 'ZWSM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 132
      end>
  end
  object Query1: TQuery
    CachedUpdates = True
    OnCalcFields = Query1CalcFields
    OnNewRecord = Query1NewRecord
    DatabaseName = 'DB'
    DataSource = ModelCost.DS1
    RequestLive = True
    SQL.Strings = (
      'select XXZLS.*,(select top 1 USPrice from CWDJ '
      '                          where CWDJ.CLBH=XXZLS.CLBH'
      '                                    and CWDJ.USPrice is not null'
      
        '                                    order by DJYear DESC,DJMONTH' +
        ' DESC) as USPrice'
      '         ,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,BWZL.YWSM,BWZL.ZWSM'
      'from '
      
        '(select xtbwyl1.XieXing,xtbwyl1.SheHao,xtbwyl1.BWBH,XXZLS.CLBH,x' +
        'tbwyl1.CLSL'
      'from xtbwyl1'
      
        'left join XXZLS on xtbwyl1.XieXing=XXZLS.XieXing and  xtbwyl1.Sh' +
        'eHao=XXZLS.SheHao and  xtbwyl1.BWBH=XXZLS.BWBH'
      'where  xtbwyl1.XTCC=:BZCC'
      '           and xtbwyl1.XieXing=:XieXing'
      '           and xtbwyl1.SheHao=:SheHao'
      '           and XXZLS.CLBH not like '#39'M%'#39
      'union'
      'select XXZLSVN.XieXing,XXZLSVN.SheHao,BWBH,CLBH,CLSL '
      'from XXZLSVN'
      'where CLBH not like '#39'W%'#39
      '           and XieXing=:XieXing'
      '           and SheHao=:SheHao) XXZLS'
      'left join CLZL on CLZL.CLDH=XXZLS.CLBH'
      'left join BWZL on BWZL.BWDH=XXZLS.BWBH '
      
        'left join CWXXCBS on CWXXCBS.XieXing=XXZLS.XieXing and CWXXCBS.B' +
        'WBH=XXZLS.BWBH'
      
        '                                   and CWXXCBS.SheHao=XXZLS.SheH' +
        'ao and CWXXCBS.SB='#39'1'#39
      'order by XXZLS.BWBH')
    UpdateObject = UpCWXXCBS
    Left = 200
    Top = 56
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'BZCC'
        ParamType = ptUnknown
        Size = 7
      end
      item
        DataType = ftFixedChar
        Name = 'XieXing'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'Shehao'
        ParamType = ptUnknown
        Size = 6
      end
      item
        DataType = ftFixedChar
        Name = 'XieXing'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'SheHao'
        ParamType = ptUnknown
      end>
    object Query1BWBH: TStringField
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object Query1YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 30
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1CLSL: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0000'
    end
    object Query1USPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.0000'
    end
    object Query1USACC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'USACC'
      DisplayFormat = '##,#0.000000'
      Calculated = True
    end
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object Query1ZWSM: TStringField
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 30
    end
    object Query1XieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object Query1SheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 232
    Top = 56
  end
  object UpCWXXCBS: TUpdateSQL
    ModifySQL.Strings = (
      'update CWXXCBS'
      'set'
      '  XieXing = :XieXing,'
      '  SheHao = :SheHao,'
      '  SB = :SB,'
      '  BWBH = :BWBH,'
      '  CLBH = :CLBH,'
      '  CLSL = :CLSL,'
      '  USPrice = :USPrice,'
      '  USERDATE = :USERDATE,'
      '  USERID = :USERID,'
      '  YN = :YN'
      'where'
      '  XieXing = :OLD_XieXing and'
      '  SheHao = :OLD_SheHao and'
      '  SB = :OLD_SB and'
      '  BWBH = :OLD_BWBH')
    InsertSQL.Strings = (
      'insert into CWXXCBS'
      
        '  (XieXing, SheHao, SB, BWBH, CLBH, CLSL, USPrice, USERDATE, USE' +
        'RID, YN)'
      'values'
      
        '  (:XieXing, :SheHao, '#39'1'#39', :BWBH, :CLBH, :CLSL, :USPrice, getdat' +
        'e(),'#39'21060'#39','#39'2'#39')')
    DeleteSQL.Strings = (
      'delete from CWXXCBS'
      'where'
      '  XieXing = :OLD_XieXing and'
      '  SheHao = :OLD_SheHao and'
      '  SB = :OLD_SB and'
      '  BWBH = :OLD_BWBH')
    Left = 200
    Top = 88
  end
  object PopupMenu1: TPopupMenu
    Left = 152
    Top = 136
    object Calculate1: TMenuItem
      Caption = 'Calculate'
      OnClick = Calculate1Click
    end
    object CalculateAll1: TMenuItem
      Caption = 'Calculate All'
      OnClick = CalculateAll1Click
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 264
    Top = 168
  end
end
