object Deliveraccount_Detail: TDeliveraccount_Detail
  Left = 356
  Top = 224
  Width = 653
  Height = 394
  BorderIcons = [biSystemMenu]
  Caption = 'Deliveraccount_Detail'
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
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 0
    Width = 645
    Height = 363
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'LLNO'
        Footers = <>
        Title.Caption = #38936#26009#21934#34399'|LLNO'
        Width = 92
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = #26448#26009#32232#34399'|CLBH'
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = 'SCBH'
        Footers = <>
        Title.Caption = #21046#20196#32232#34399'|SCBH'
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Footers = <>
        Title.Caption = #21046#20196#25976#37327'|CLSL'
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'TempQty'
        Footers = <>
        Title.Caption = #38283#21934#25976#37327'|TempQty'
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.Caption = #23526#30332#25976#37327'|Qty'
      end
      item
        EditButtons = <>
        FieldName = 'Person'
        Footers = <>
        Title.Caption = #30332#26009#27604'|Person'
        Width = 51
      end
      item
        EditButtons = <>
        FieldName = 'DFL'
        Footers = <>
        Title.Caption = #22823#20998#39006'|DFL'
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Title.Caption = #38283#21934#33521#25991#21407#22240'|YWSM'
        Width = 133
      end
      item
        EditButtons = <>
        FieldName = 'ZWSM'
        Footers = <>
        Title.Caption = #38283#21934#20013#25991#21407#22240'|ZWSM'
        Width = 109
      end>
  end
  object Query1: TQuery
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    DataSource = DeliverAccount.DS1
    SQL.Strings = (
      'select KCLLS.*,SCBLYY.YWSM,SCBLYY.ZWSM'
      'from KCLLS'
      'left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH'
      'where SCBH=:ZLBH'
      'and CLBH=:CLBH'
      'order by LLNO')
    Left = 96
    Top = 32
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'ZLBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 11
      end>
    object Query1LLNO: TStringField
      FieldName = 'LLNO'
      Origin = 'DB.KCLLS.LLNO'
      FixedChar = True
      Size = 11
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      Origin = 'DB.KCLLS.CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1SCBH: TStringField
      FieldName = 'SCBH'
      Origin = 'DB.KCLLS.SCBH'
      FixedChar = True
      Size = 15
    end
    object Query1CLSL: TCurrencyField
      FieldName = 'CLSL'
      Origin = 'DB.KCLLS.CLSL'
      DisplayFormat = '##,#0.0'
    end
    object Query1TempQty: TCurrencyField
      FieldName = 'TempQty'
      Origin = 'DB.KCLLS.TempQty'
      DisplayFormat = '##,#0.00'
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      Origin = 'DB.KCLLS.Qty'
      DisplayFormat = '##,#0.00'
    end
    object Query1YYBH: TStringField
      FieldName = 'YYBH'
      Origin = 'DB.KCLLS.YYBH'
      FixedChar = True
      Size = 4
    end
    object Query1DFL: TStringField
      FieldName = 'DFL'
      Origin = 'DB.KCLLS.DFL'
      FixedChar = True
      Size = 1
    end
    object Query1Person: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Person'
      DisplayFormat = '##,#0.0%'
      Calculated = True
    end
    object Query1YWSM: TStringField
      FieldName = 'YWSM'
      Origin = 'DB.SCBLYY.YWSM'
      FixedChar = True
      Size = 50
    end
    object Query1ZWSM: TStringField
      FieldName = 'ZWSM'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 136
    Top = 32
  end
  object PopupMenu1: TPopupMenu
    Left = 96
    Top = 112
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGrid1
    Options = []
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.CenterText.Strings = (
      #35330#21934#26448#26009#38936#26009#27604#20363
      'Order Material Deliver Person')
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'MS Sans Serif'
    PageHeader.Font.Style = []
    Units = MM
    Left = 96
    Top = 72
  end
end
