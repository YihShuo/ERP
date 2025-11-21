object DelCheck: TDelCheck
  Left = 265
  Top = 181
  Width = 1106
  Height = 491
  Caption = 'DelCheck'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1090
    Height = 65
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 24
      Width = 49
      Height = 20
      Caption = 'SCBH:'
    end
    object Label2: TLabel
      Left = 264
      Top = 24
      Width = 47
      Height = 20
      Caption = 'CLBH:'
    end
    object Edit1: TEdit
      Left = 88
      Top = 16
      Width = 145
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 320
      Top = 16
      Width = 137
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Button1: TButton
      Left = 472
      Top = 16
      Width = 81
      Height = 33
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 568
      Top = 16
      Width = 81
      Height = 33
      Caption = 'Excel'
      TabOrder = 3
      OnClick = Button2Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 65
    Width = 1090
    Height = 388
    Align = alClient
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'LLNO'
        Width = 94
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
        FieldName = 'YWPM'
        Width = 313
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DWBH'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TempQty'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Qty'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLSL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SCBH'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DFL'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USERDATE'
        Visible = True
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select KCLLS.*,CLZL.YWPM,CLZL.DWBH'
      'from KCLLS'
      'left join CLZL on CLZL.CLDH=KCLLS.CLBH'
      'order by KCLLS.SCBH ')
    Left = 328
    Top = 160
    object Query1LLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
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
    object Query1TempQty: TCurrencyField
      FieldName = 'TempQty'
      DisplayFormat = '##,#0.00'
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object Query1CLSL: TCurrencyField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0'
    end
    object Query1SCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object Query1DFL: TStringField
      FieldName = 'DFL'
      FixedChar = True
      Size = 1
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 360
    Top = 160
  end
end
