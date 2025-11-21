object Payabledetail: TPayabledetail
  Left = 300
  Top = 206
  Width = 795
  Height = 485
  BorderIcons = [biSystemMenu]
  Caption = 'Payabledetail'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 41
    Width = 787
    Height = 410
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    FooterColor = 16756912
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnGetCellParams = DBGrid1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DJLX'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'LX'
        Title.TitleButton = True
        Width = 23
      end
      item
        EditButtons = <>
        FieldName = 'DJNO'
        Footers = <>
        Title.Alignment = taCenter
        Title.TitleButton = True
        Width = 77
      end
      item
        EditButtons = <>
        FieldName = 'CGBH'
        Footers = <>
        Title.TitleButton = True
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Alignment = taCenter
        Title.TitleButton = True
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Alignment = taCenter
        Title.TitleButton = True
        Width = 273
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Alignment = taCenter
        Title.TitleButton = True
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.Alignment = taCenter
        Title.TitleButton = True
        Width = 51
      end
      item
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <>
        Title.TitleButton = True
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'USACC'
        Footers = <>
        Title.TitleButton = True
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'USQty'
        Footers = <>
        Title.TitleButton = True
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'CWHL'
        Footers = <>
        Title.TitleButton = True
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <>
        Title.Alignment = taCenter
        Title.TitleButton = True
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'VNACC'
        Footers = <>
        Title.Alignment = taCenter
        Title.TitleButton = True
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'VNQty'
        Footers = <>
        Title.TitleButton = True
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'DJDATE'
        Footers = <>
        Title.Alignment = taCenter
        Title.TitleButton = True
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'FKBH'
        Footers = <>
        Title.Alignment = taCenter
        Title.TitleButton = True
        Width = 75
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 787
    Height = 41
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 1080
      Height = 16
      Caption = 
        '****************************************************************' +
        '****************************************************************' +
        '****************************************************************' +
        '************************'
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = PayableMaterial.DS1
    SQL.Strings = (
      'select CWYF.*,CLZL.YWPM,CLZL.DWBH'
      'from CWYF'
      'left join CLZL on CLZL.CLDH=CWYF.CLBH'
      'left join CWFK on CWFK.FKBH=CWYF.FKBH'
      'where CWFK.ZSBH=:ZSBH'
      'order by CWYF.DJNO ,CWYF.DJLX')
    Left = 192
    Top = 72
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'ZSBH'
        ParamType = ptUnknown
        Size = 7
      end>
    object Query1DJLX: TStringField
      FieldName = 'DJLX'
      FixedChar = True
      Size = 2
    end
    object Query1DJNO: TStringField
      FieldName = 'DJNO'
      FixedChar = True
      Size = 15
    end
    object Query1CGBH: TStringField
      FieldName = 'CGBH'
      FixedChar = True
      Size = 15
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
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object Query1USPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.0000'
    end
    object Query1USACC: TCurrencyField
      FieldName = 'USACC'
      DisplayFormat = '##,#0.00'
    end
    object Query1USQty: TCurrencyField
      FieldName = 'USQty'
      DisplayFormat = '##,#0.00'
    end
    object Query1CWHL: TIntegerField
      FieldName = 'CWHL'
      DisplayFormat = '##,#0'
    end
    object Query1VNPrice: TFloatField
      FieldName = 'VNPrice'
      DisplayFormat = '##,#0'
    end
    object Query1VNACC: TFloatField
      FieldName = 'VNACC'
      DisplayFormat = '##,#0'
    end
    object Query1VNQty: TFloatField
      FieldName = 'VNQty'
      DisplayFormat = '##,#0'
    end
    object Query1DJDATE: TDateTimeField
      FieldName = 'DJDATE'
      DisplayFormat = 'yy/MM/dd'
    end
    object Query1FKBH: TStringField
      FieldName = 'FKBH'
      FixedChar = True
      Size = 15
    end
    object Query1CostID: TStringField
      FieldName = 'CostID'
      FixedChar = True
      Size = 10
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 224
    Top = 72
  end
  object PopupMenu1: TPopupMenu
    Left = 176
    Top = 200
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
