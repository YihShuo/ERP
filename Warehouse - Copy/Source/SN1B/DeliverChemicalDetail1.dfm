object DeliverChemicalDetail: TDeliverChemicalDetail
  Left = 309
  Top = 302
  Width = 1084
  Height = 403
  Caption = 'DeliverChemicalDetail'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 1076
    Height = 372
    Align = alClient
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'LLNO'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLBH'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SCBH'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLSL'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TempQty'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Qty'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Person'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DFL'
        Width = 27
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'YWSM'
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CKBH'
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BLSB'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MEMO'
        Width = 111
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USERID'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USERDATE'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CFMID'
        Width = 80
        Visible = True
      end>
  end
  object Query1: TQuery
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    DataSource = ChemicalMaterial.DataSource1
    SQL.Strings = (
      'select KCLLS.*,SCBLYY.YWSM,KCLL.CKBH,KCLL.CFMID'
      'from KCLLS'
      'left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH'
      'left join KCLL on KCLL.LLNO=KCLLS.LLNO'
      'where KCLLS.SCBH=:ZLBH1  and KCLL.USERDate>getdate()-90'
      'and KCLLS.CLBH=:CLDHZ and  KCLL.GSBH='#39'VR2'#39
      'order by KCLLS.LLNO')
    Left = 96
    Top = 32
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'ZLBH1'
        ParamType = ptUnknown
        Size = 19
      end
      item
        DataType = ftFixedChar
        Name = 'cldhz'
        ParamType = ptUnknown
        Size = 17
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
      DisplayFormat = '##,#0.00'
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
    object Query1YWSM: TStringField
      FieldName = 'YWSM'
      Origin = 'DB.SCBLYY.YWSM'
      FixedChar = True
      Size = 50
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
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query1MEMO: TStringField
      FieldName = 'MEMO'
      FixedChar = True
      Size = 250
    end
    object Query1BLSB: TStringField
      FieldName = 'BLSB'
      FixedChar = True
      Size = 1
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object Query1CFMID: TStringField
      FieldName = 'CFMID'
      FixedChar = True
      Size = 15
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 136
    Top = 32
  end
  object PopupMenu1: TPopupMenu
    Left = 96
    Top = 64
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
end
