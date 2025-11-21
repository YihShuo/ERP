object SemiImportPrice: TSemiImportPrice
  Left = 344
  Top = 307
  Width = 1305
  Height = 675
  Caption = 'Semi Import Price'
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
    Height = 113
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 311
      Top = 17
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RY'
    end
    object Label13: TLabel
      Left = 144
      Top = 20
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Month'
    end
    object Label2: TLabel
      Left = 12
      Top = 20
      Width = 49
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Year'
    end
    object Edit1: TEdit
      Left = 390
      Top = 15
      Width = 147
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Button1: TButton
      Left = 612
      Top = 15
      Width = 75
      Height = 31
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object chkNoPrice: TCheckBox
      Left = 64
      Top = 55
      Width = 148
      Height = 17
      Caption = 'No Price (XNK_KTH)'
      TabOrder = 2
    end
    object CBX1: TComboBox
      Left = 65
      Top = 16
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
      Left = 222
      Top = 16
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
      Left = 613
      Top = 53
      Width = 75
      Height = 31
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = Button2Click
    end
    object chkPrice: TCheckBox
      Left = 64
      Top = 80
      Width = 156
      Height = 17
      Caption = 'Have Price (XNK_KTH)'
      TabOrder = 6
    end
    object bbt5: TBitBtn
      Left = 716
      Top = 16
      Width = 85
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Import Price'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = bbt5Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
        07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
        0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object chkPrice_Acc: TCheckBox
      Left = 390
      Top = 81
      Width = 156
      Height = 17
      Caption = 'Have Price (Account)'
      TabOrder = 8
    end
    object chkNoPrice_Acc: TCheckBox
      Left = 390
      Top = 56
      Width = 156
      Height = 17
      Caption = 'No Price (Account)'
      TabOrder = 9
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 113
    Width = 1289
    Height = 523
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
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footer.ValueType = fvtCount
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'USPrice'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Memo'
        Footers = <>
        Width = 250
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
        FieldName = 'Price'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Price (XNK_KTH)'
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select Cost.DDBH,USPrice,Memo,Price.UserID,Price.UserDate,Price.' +
        'YN'
      'from CW_MatCostMonth Cost'
      
        'Left join CW_MatCostMonth_Price Price on Cost.KCYEAR=Price.KCYEA' +
        'R and Cost.KCMONTH=Price.KCMonth'
      'where Cost.KCYEAR='#39'2023'#39' and Cost.KCMONTH='#39'12'#39
      
        'Group by Cost.DDBH,USPrice,Memo,Price.UserID,Price.UserDate,Pric' +
        'e.YN'
      'Order by Cost. DDBH'
      '')
    UpdateObject = UpdateSQL1
    Left = 272
    Top = 200
    object Query1KCYEAR: TStringField
      FieldName = 'KCYEAR'
      Size = 4
    end
    object Query1KCMONTH: TStringField
      FieldName = 'KCMONTH'
      Size = 2
    end
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.CW_MatCostMonth.DDBH'
      FixedChar = True
    end
    object Query1USPrice: TCurrencyField
      FieldName = 'USPrice'
      Origin = 'DB.CW_MatCostMonth_Price.USPrice'
      DisplayFormat = '##,#0.00'
    end
    object Query1Memo: TStringField
      FieldName = 'Memo'
      Origin = 'DB.CW_MatCostMonth_Price.Memo'
      FixedChar = True
      Size = 100
    end
    object Query1UserID: TStringField
      FieldName = 'UserID'
      Origin = 'DB.CW_MatCostMonth_Price.UserID'
      FixedChar = True
      Size = 15
    end
    object Query1UserDate: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'DB.CW_MatCostMonth_Price.UserDate'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.CW_MatCostMonth_Price.YN'
      FixedChar = True
      Size = 1
    end
    object Query1Price: TCurrencyField
      FieldName = 'Price'
      DisplayFormat = '##,#0.00'
    end
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE CW_MatCostMonth_Price'
      'SET'
      '      USPrice = :USPrice,'
      '      Memo = :Memo,'
      '      UserID = :UserID,'
      '      UserDate = :UserDate,'
      '      YN = :YN'
      
        ' WHERE KCYEAR = :OLD_KCYEAR AND KCMONTH = :OLD_KCMONTH AND DDBH ' +
        '= :OLD_DDBH'
      '')
    InsertSQL.Strings = (
      'insert into CW_MatCostMonth_Price'
      '  (KCYEAR, KCMONTH, DDBH, USPrice, Memo, UserID, UserDate, YN)'
      'values'
      
        '  (:KCYEAR, :KCMONTH, :DDBH, :USPrice, :Memo, :UserID, :UserDate' +
        ', :YN)')
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
    object CopyPrice1: TMenuItem
      Caption = 'Copy Price'
      Enabled = False
      OnClick = CopyPrice1Click
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
