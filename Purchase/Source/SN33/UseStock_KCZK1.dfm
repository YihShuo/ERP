object UseStock_KCZK: TUseStock_KCZK
  Left = 478
  Top = 383
  Width = 436
  Height = 315
  Caption = 'UseStock_KCZK'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 428
    Height = 284
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ZKBH'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'SIZE'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'ZKQty'
        Footer.FieldName = 'ZKQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'ZKLQty'
        Footer.FieldName = 'ZKLQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = UseStock.DSZLZLS2
    SQL.Strings = (
      
        #9'Select KCZK.YN,KCZK.CLBH,KCZK.ZKBH,KCZKS.SIZE,KCZKS.Qty as ZKQt' +
        'y,KCZKS.LQty as ZKLQty '
      #9'from KCZK '
      #9'left join KCZKS on KCZKS.ZKBH=KCZK.ZKBH '
      
        #9'where KCZK.YN<>'#39'X'#39' and KCZK.ZKNO='#39'ZZZZZZZZZZ'#39' and KCZK.GSBH='#39'VA' +
        '12'#39' and KCZK.USERDate>GetDate()-180 and KCZKS.LQty>=0  '
      #9'    and KCZK.CLBH='#39'E120004408'#39
      #9'order by KCZK.YN DESC, KCZK.ZKBH DESC')
    Left = 208
    Top = 80
    object Query1YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1ZKBH: TStringField
      FieldName = 'ZKBH'
      FixedChar = True
      Size = 11
    end
    object Query1SIZE: TStringField
      FieldName = 'SIZE'
      FixedChar = True
      Size = 6
    end
    object Query1ZKQty: TFloatField
      FieldName = 'ZKQty'
      DisplayFormat = '#,##0.0'
    end
    object Query1ZKLQty: TFloatField
      FieldName = 'ZKLQty'
      DisplayFormat = '#,##0.0'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 240
    Top = 80
  end
end
