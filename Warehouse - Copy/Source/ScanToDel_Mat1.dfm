object ScanToDel_Mat: TScanToDel_Mat
  Left = 346
  Top = 197
  Width = 756
  Height = 459
  BorderIcons = [biSystemMenu]
  Caption = 'ScanToDel_Mat'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 748
    Height = 57
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
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
      Left = 448
      Top = 16
      Width = 75
      Height = 33
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 57
    Width = 748
    Height = 368
    Align = alClient
    DataSource = DS1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'DepName'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ZLBH'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLBH'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'YWPM'
        Width = 336
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DWBH'
        Width = 34
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Qty'
        Width = 45
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
        FieldName = 'YN'
        Width = 18
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Me'
        Width = 20
        Visible = True
      end>
  end
  object Query1: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'select BDepartment.DepName,KCSMCL.ZLBH,KCSMCL.CLBH,KCSMCL.DFL,KC' +
        'SMCL.YN,sum(KCSMCL.Qty) as Qty,'
      '      CLZL.YWPM,CLZL.DWBH,DDZL.YN as Me'
      'from KCSMCL'
      'left join CLZL on CLZL.CLDH=KCSMCL.CLBH'
      'left join DDZL on DDZL.ZLBH=KCSMCL.ZLBH '
      'left join BDepartment on BDepartment.ID=KCSMCL.DepID'
      'where KCSMCL.ZLBH like '#39'%'#39
      'and KCSMCL.CLBH like '#39'%'#39
      'and KCSMCL.YN='#39'2'#39
      
        'group by BDepartment.DepName,KCSMCL.ZLBH,KCSMCL.CLBH,KCSMCL.DFL,' +
        'KCSMCL.YN,CLZL.YWPM,CLZL.DWBH ,DDZL.YN'
      'order by BDepartment.DepName,KCSMCL.CLBH,KCSMCL.ZLBH ')
    UpdateObject = UpdateSQL1
    Left = 152
    Top = 88
    object Query1DepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
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
    object Query1DFL: TStringField
      FieldName = 'DFL'
      FixedChar = True
      Size = 1
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object Query1Me: TStringField
      FieldName = 'Me'
      FixedChar = True
      Size = 1
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 192
    Top = 88
  end
  object UpdateSQL1: TUpdateSQL
    Left = 240
    Top = 88
  end
end
