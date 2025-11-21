object ModelCost_XC: TModelCost_XC
  Left = 313
  Top = 218
  Width = 724
  Height = 473
  BorderIcons = [biSystemMenu]
  Caption = 'ModelCost_XC'
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
  PixelsPerInch = 96
  TextHeight = 16
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 716
    Height = 439
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    PopupMenu = PopupMenu1
    SumList.Active = True
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
        Footers = <
          item
            FieldName = 'BWBH'
            ValueType = fvtCount
          end>
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
        EditButtons = <>
        FieldName = 'CLSL'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <>
        Title.TitleButton = True
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'USACC'
        Footers = <
          item
            FieldName = 'USACC'
            ValueType = fvtSum
          end>
        ReadOnly = True
        Title.TitleButton = True
        Width = 76
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
        Width = 326
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
        Width = 313
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
        Width = 110
      end>
  end
  object Query1: TQuery
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    DataSource = ModelCost.DS1
    SQL.Strings = (
      
        'select CWXXCBS.*,BWZL.YWSM,BWZL.ZWSM,CLZL.YWPM,CLZL.ZWPM,CLZL.DW' +
        'BH'
      'from CWXXCBS'
      'left join CLZL on CLZL.CLDH=CWXXCBS.CLBH'
      'left join BWZL on BWZL.BWDH=CWXXCBS.BWBH'
      'where CWXXCBS.SB='#39'1'#39
      '         and CWXXCBS.XieXing=:XieXing'
      '         and CWXXCBS.SheHao=:SheHao'
      '         and CWXXCBS.YN='#39'1'#39
      'order by CWXXCBS.BWBH')
    Left = 200
    Top = 56
    ParamData = <
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
      end>
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
    object Query1SB: TStringField
      FieldName = 'SB'
      FixedChar = True
      Size = 1
    end
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
    object Query1CLSL: TCurrencyField
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
    object Query1ZWSM: TStringField
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 30
    end
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 232
    Top = 56
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGridEh1
    Options = [pghRowAutoStretch]
    Page.BottomMargin = 1.000000000000000000
    Page.LeftMargin = 1.000000000000000000
    Page.RightMargin = 1.000000000000000000
    Page.TopMargin = 1.000000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.CenterText.Strings = (
      #38795#24288#22411#22411#25104#26412#26126#32048)
    PageHeader.Font.Charset = ANSI_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -24
    PageHeader.Font.Name = #26032#32048#26126#39636
    PageHeader.Font.Style = []
    Units = MM
    Left = 200
    Top = 88
  end
  object PopupMenu1: TPopupMenu
    Left = 136
    Top = 168
    object Print1: TMenuItem
      Caption = 'Print'
      OnClick = Print1Click
    end
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
end
