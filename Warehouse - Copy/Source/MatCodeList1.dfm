object MatCodeList: TMatCodeList
  Left = 262
  Top = 215
  Width = 870
  Height = 500
  Caption = 'MatCodeList'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 24
      Width = 37
      Height = 16
      Caption = 'ZLBH:'
    end
    object Label2: TLabel
      Left = 240
      Top = 24
      Width = 38
      Height = 16
      Caption = 'CLBH:'
    end
    object Edit1: TEdit
      Left = 80
      Top = 16
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 288
      Top = 16
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Button1: TButton
      Left = 512
      Top = 16
      Width = 75
      Height = 33
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 600
      Top = 16
      Width = 75
      Height = 33
      Caption = 'Excel'
      TabOrder = 3
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 688
      Top = 16
      Width = 75
      Height = 33
      Caption = 'Print'
      TabOrder = 4
      OnClick = Button3Click
    end
    object CB1: TCheckBox
      Left = 424
      Top = 24
      Width = 89
      Height = 17
      Caption = 'Not Scan'
      TabOrder = 5
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 57
    Width = 862
    Height = 409
    Align = alClient
    DataSource = DS1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ZLBH'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'XieMing'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLBH'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'YWPM'
        Width = 316
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DWBH'
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DFL'
        Width = 28
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'XH'
        Width = 24
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MATCODE'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'YN'
        Width = 21
        Visible = True
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select KCSMCL.*,CLZL.YWPM,CLZL.DWBH,XXZl.XieMing'
      'from KCSMCL'
      'left join CLZL on CLZL.CLDH=KCSMCL.CLBH'
      'left join DDZL on DDZl.ZLBH=KCSMCL.ZLBH'
      
        'left join XXZl on XXZl.XieXing=DDZl.XieXing and XXZl.SheHao=DDZl' +
        '.SheHao')
    Left = 152
    Top = 88
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
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
    object Query1DFL: TStringField
      FieldName = 'DFL'
      FixedChar = True
      Size = 1
    end
    object Query1XH: TStringField
      FieldName = 'XH'
      FixedChar = True
      Size = 1
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object Query1MATCODE: TStringField
      FieldName = 'MATCODE'
      FixedChar = True
      Size = 45
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 192
    Top = 88
  end
end
