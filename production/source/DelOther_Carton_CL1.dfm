object DelOther_Carton_CL: TDelOther_Carton_CL
  Left = 341
  Top = 187
  Width = 693
  Height = 455
  BorderIcons = [biSystemMenu]
  Caption = 'DelOther_Carton_CL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 685
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 13
      Width = 106
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Order NO:'
    end
    object Edit1: TEdit
      Left = 110
      Top = 12
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Button1: TButton
      Left = 232
      Top = 8
      Width = 81
      Height = 33
      Caption = 'QUERY'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 685
    Height = 375
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
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    OnGetCellParams = DBGridEh1GetCellParams
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        ReadOnly = True
        Width = 103
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        ReadOnly = True
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        ReadOnly = True
        Width = 235
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        ReadOnly = True
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        ReadOnly = True
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'okQty'
        Footers = <>
        ReadOnly = True
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'Person'
        Footers = <>
        ReadOnly = True
        Width = 63
      end>
  end
  object Query1: TQuery
    CachedUpdates = True
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'SELECT      YWBZPO.DDBH, YWBZPO.CLBH,sum( YWBZPO.CTS) as Qty,YWW' +
        'X2.Square as PaQty,'
      
        '                   CLZL.YWPM,CLZL.DWBH,KCZLS.KCBH,KCRKS.Qty as o' +
        'kQty'
      'from YWBZPO'
      'left join YWWX2 on YWWX2.CLBH=YWBZPO.CLBH'
      'left join CLZl on CLZl.CLDH=YWBZPO.CLBH'
      'left join KCZLS on KCZLS.CLBH=YWBZPO.CLBH'
      
        'left join KCRKS on KCRKS.CGBH=YWBZPO.DDBH and KCRKS.CLBH=YWBZPO.' +
        'CLBH'
      'group by  YWBZPO.DDBH, YWBZPO.CLBH,YWWX2.Square, CLZL.YWPM,'
      '              CLZL.DWBH,KCZLS.KCBH,KCRKS.Qty')
    UpdateObject = UpdateSQL1
    Left = 224
    Top = 120
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.YWBZPO.DDBH'
      FixedChar = True
      Size = 15
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      Origin = 'DB.YWBZPO.CLBH'
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
    object Query1Qty: TIntegerField
      FieldName = 'Qty'
      Origin = 'DB.YWBZPO.CTS'
      DisplayFormat = '##,#0'
    end
    object Query1okQty: TCurrencyField
      FieldName = 'okQty'
      DisplayFormat = '##,#0'
    end
    object Query1Person: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Person'
      DisplayFormat = '##,#0.0%'
      Calculated = True
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 264
    Top = 120
  end
  object UpdateSQL1: TUpdateSQL
    Left = 320
    Top = 120
  end
end
