object OutsolePrice: TOutsolePrice
  Left = 391
  Top = 202
  Width = 1305
  Height = 675
  Caption = 'OutsolePrice'
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 58
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 327
      Top = 15
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RY'
    end
    object Label13: TLabel
      Left = 152
      Top = 16
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Month'
    end
    object Edit1: TEdit
      Left = 406
      Top = 13
      Width = 147
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Button1: TButton
      Left = 675
      Top = 11
      Width = 75
      Height = 31
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object chkNoPrice: TCheckBox
      Left = 574
      Top = 9
      Width = 91
      Height = 17
      Caption = 'No Price'
      TabOrder = 2
    end
    object CBX1: TComboBox
      Left = 73
      Top = 14
      Width = 65
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 3
      Text = '2007'
      Items.Strings = (
        '2007'
        '2008'
        '2009'
        '2010'
        '2011'
        '2012'
        '2013'
        '2014'
        '2015'
        '2016'
        '2017'
        '2018'
        '2019'
        '2020'
        '2021'
        '2022'
        '2023'
        '2024'
        '2025'
        '2026'
        '2027'
        '2028'
        '2029'
        '2030')
    end
    object CBX2: TComboBox
      Left = 230
      Top = 14
      Width = 67
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 4
      Text = '01'
      Items.Strings = (
        '01'
        '02'
        '03'
        '04'
        '05'
        '06'
        '07'
        '08'
        '09'
        '10'
        '11'
        '12')
    end
    object Button2: TButton
      Left = 756
      Top = 11
      Width = 75
      Height = 31
      Caption = 'Excel'
      TabOrder = 5
      OnClick = Button2Click
    end
    object chk: TCheckBox
      Left = 8
      Top = 16
      Width = 65
      Height = 17
      Caption = 'Year'
      Checked = True
      State = cbChecked
      TabOrder = 6
    end
    object chkPrice: TCheckBox
      Left = 574
      Top = 29
      Width = 91
      Height = 17
      Caption = 'Have Price'
      TabOrder = 7
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 58
    Width = 1289
    Height = 578
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'RYNO'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.Caption = 'Qty In WH'
      end
      item
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Memo'
        Footers = <>
        Width = 170
      end
      item
        EditButtons = <>
        FieldName = 'UserID'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'UserDate'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
        Width = 25
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select RK.DDBH as RYNO,DDZL.Pairs,sum(RK.Qty) as Qty,Price.USPri' +
        'ce,VNPrice,Price.Memo,Price.UserID,Price.UserDate,PRICE.YN'
      'from LIY_DD.dbo.OUTSOLE_RK RK '
      'Left join LIY_DD.dbo.OUTSOLE_PRICE PRICE on RK.DDBH=PRICE.RYNO'
      'Left join LIY_DD.dbo.DDZL DDZL on RK.DDBH=DDZL.DDBH'
      'where 1=1 '
      'and year(RK.InDate)='#39'2023'#39' and MONTH(Rk.InDate)='#39'11'#39
      
        'group by RK.DDBH,DDZL.Pairs,Price.USPrice,VNPrice,Price.Memo,Pri' +
        'ce.UserID,Price.UserDate,PRICE.YN'
      '')
    UpdateObject = UpdateSQL1
    Left = 272
    Top = 200
    object Query1RYNO: TStringField
      FieldName = 'RYNO'
      FixedChar = True
    end
    object Query1Pairs: TFloatField
      FieldName = 'Pairs'
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '#,##0'
    end
    object Query1USPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.00'
    end
    object Query1VNPrice: TCurrencyField
      FieldName = 'VNPrice'
      DisplayFormat = '#,##0'
    end
    object Query1Memo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 50
    end
    object Query1UserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 15
    end
    object Query1UserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object UpdateSQL1: TUpdateSQL
    Left = 272
    Top = 233
  end
  object PopupMenu1: TPopupMenu
    Left = 272
    Top = 265
    object Modify1: TMenuItem
      Caption = 'Modify'
      Enabled = False
      OnClick = Modify1Click
    end
    object Save1: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = Save1Click
    end
    object Cancel1: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = Cancel1Click
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 304
    Top = 200
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Excel Files|*.xls'
    Left = 338
    Top = 200
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'if object_id('#39'tempdb..#LastCGBJ'#39') is not null  '
      'begin   drop table #LastCGBJ end   '
      
        'select * into #LastCGBJ from (select CLBH,USPRICE,VNPRICE from (' +
        ' select CGBJS.BJNO,CLBH,USPRICE,VNPRICE,ROW_NUMBER() over (PARTI' +
        'TION BY CLBH ORDER BY CGBJS.BJNO DESC) as  rn from CGBJS,CGBJ wh' +
        'ere CGBJS.BJNO=CGBJ.BJNO and CGBJ.GSBH='#39'VA12'#39'  '
      ') A where A.rn=1 ) CGBJS')
    Left = 240
    Top = 200
  end
end
