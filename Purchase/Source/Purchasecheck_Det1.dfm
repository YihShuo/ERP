object Purchasecheck_Det: TPurchasecheck_Det
  Left = 391
  Top = 202
  Width = 464
  Height = 443
  BorderIcons = [biSystemMenu]
  Caption = 'Purchasecheck_Det'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 456
    Height = 409
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ZLBH'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'XXCC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Qty'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLSL'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'YQDate'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CFMDate'
        Width = 67
        Visible = True
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = PurchaseCheck.DS1
    SQL.Strings = (
      'select *'
      'from CGZLSS'
      'where CGNO=:CGNO'
      'and CLBH=:CLBH'
      'and ZLBH=:ZLBH'
      'order by ZLBH,XXCC')
    Left = 160
    Top = 56
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CGNO'
        ParamType = ptUnknown
        Size = 12
      end
      item
        DataType = ftUnknown
        Name = 'CLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ZLBH'
        ParamType = ptUnknown
      end>
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      Origin = 'DB.CGZLSS.ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1XXCC: TStringField
      FieldName = 'XXCC'
      Origin = 'DB.CGZLSS.XXCC'
      FixedChar = True
      Size = 6
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      Origin = 'DB.CGZLSS.Qty'
      DisplayFormat = '#,##0.0'
    end
    object Query1CLSL: TCurrencyField
      FieldName = 'CLSL'
      Origin = 'DB.CGZLSS.CLSL'
      DisplayFormat = '#,##0.0'
    end
    object Query1YQDate: TDateTimeField
      FieldName = 'YQDate'
      Origin = 'DB.CGZLSS.YQDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1CFMDate: TDateTimeField
      FieldName = 'CFMDate'
      Origin = 'DB.CGZLSS.CFMDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 200
    Top = 56
  end
end
