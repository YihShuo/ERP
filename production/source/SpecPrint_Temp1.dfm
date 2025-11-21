object SpecPrint_Temp: TSpecPrint_Temp
  Left = 526
  Top = 300
  Width = 625
  Height = 373
  BorderIcons = [biSystemMenu]
  Caption = 'SpecPrint_Temp'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 609
    Height = 334
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    PopupMenu = PopupMenu1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        Width = 93
      end
      item
        EditButtons = <>
        FieldName = 'BUYNO'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Width = 117
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Width = 194
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select distinct DDZL.DDBH,DDZL.BUYNO,ZLZLS2.ZLBH,XXZL.Article,XX' +
        'Zl.XieMing '
      'from DDZL '
      
        'left join XXZL on DDZl.XieXing=XXZL.XieXing and DDZl.SheHao=XXZl' +
        '.SheHao '
      
        'left join XXZLSVN on XXZLSVN.XieXing=XXZL.XieXing and XXZLSVN.Sh' +
        'eHao=XXZl.SheHao '
      
        'left join ZLZLS2 on ZLZLS2.ZLBH=DDZl.ZLBH and ZLZLS2.BWBH=XXZLSV' +
        'N.BWBH '
      'left join  kfzl on KFZl.KFDH=DDZL.KHBH'
      'where DDZL.ZLBH like '
      #39'%'#39
      'and KFZL.KFJC like'
      #39'%%'#39
      'and XXZL.XieMing like '
      #39'%%'#39
      
        'and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) be' +
        'tween '
      #39'2008/12/01'#39' and '#39'2008/12/31'#39
      'and DDZL.GSBH='#39'VA12'#39
      'and ZLZLS2.ZLBH is null '
      'order by DDZL.DDBH')
    Left = 264
    Top = 48
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1BUYNO: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 304
    Top = 56
  end
  object PopupMenu1: TPopupMenu
    Left = 128
    Top = 88
    object EXCEL1: TMenuItem
      Caption = 'EXCEL'
      OnClick = EXCEL1Click
    end
  end
end
