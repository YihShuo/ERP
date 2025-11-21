object RYPrice: TRYPrice
  Left = 780
  Top = 388
  Width = 1299
  Height = 631
  Caption = 'RYPrice'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1283
    Height = 58
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 391
      Top = 6
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RY'
    end
    object Label2: TLabel
      Left = 390
      Top = 34
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Article'
    end
    object Label13: TLabel
      Left = 240
      Top = 32
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Month'
    end
    object Label3: TLabel
      Left = 1040
      Top = 8
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Colors:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic, fsUnderline]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 1132
      Top = 8
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'No price'
    end
    object Label5: TLabel
      Left = 1104
      Top = 24
      Width = 100
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Have price'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 1104
      Top = 40
      Width = 100
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Revise price'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 240
      Top = 6
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Month'
    end
    object Label8: TLabel
      Left = 711
      Top = 6
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Brand'
      Visible = False
    end
    object Label9: TLabel
      Left = 567
      Top = 6
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Factory'
    end
    object Edit1: TEdit
      Left = 470
      Top = 4
      Width = 92
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 470
      Top = 30
      Width = 92
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Button1: TButton
      Left = 938
      Top = 30
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object CheckBox1: TCheckBox
      Left = 590
      Top = 32
      Width = 73
      Height = 17
      Caption = 'No Price'
      TabOrder = 3
    end
    object CBX1: TComboBox
      Left = 174
      Top = 30
      Width = 65
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 4
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
      Left = 318
      Top = 30
      Width = 67
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 5
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
      Left = 939
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Excel'
      TabOrder = 6
      OnClick = Button2Click
    end
    object CheckBox2: TCheckBox
      Left = 686
      Top = 32
      Width = 97
      Height = 17
      Caption = 'Revise Price'
      TabOrder = 7
    end
    object bbt5: TBitBtn
      Left = 0
      Top = 0
      Width = 75
      Height = 57
      Hint = 'Modify Current'
      Caption = 'Import Price'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
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
    object chkPODD: TCheckBox
      Left = 88
      Top = 8
      Width = 81
      Height = 17
      Caption = 'ReceDate'
      TabOrder = 9
    end
    object chkSDD: TCheckBox
      Left = 88
      Top = 32
      Width = 81
      Height = 17
      Caption = 'ShipDate'
      Checked = True
      State = cbChecked
      TabOrder = 10
    end
    object cbo_PODD_M: TComboBox
      Left = 316
      Top = 2
      Width = 69
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 11
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
    object cbo_PODD_Y: TComboBox
      Left = 174
      Top = 1
      Width = 65
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 12
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
    object cboBrand: TComboBox
      Left = 786
      Top = 4
      Width = 137
      Height = 24
      Color = 16758783
      ItemHeight = 16
      ItemIndex = 2
      TabOrder = 13
      Text = 'Converse-036'
      Visible = False
      Items.Strings = (
        ''
        'COACH=0063'
        'Converse-036'
        'Adidas-0038'
        'K-SWISS-0049'
        'PALLADIUM-0051'
        'SANUK-0048'
        '361'#24230'-0061'
        'REEBOK-0060'
        'HOKA-0062'
        'TOMMY-048')
    end
    object GSBH: TComboBox
      Left = 642
      Top = 4
      Width = 63
      Height = 24
      Color = 16758783
      ItemHeight = 16
      TabOrder = 14
      Text = 'VA12'
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 58
    Width = 1283
    Height = 534
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
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'RY'
        Footer.FieldName = 'RY'
        Footer.ValueType = fvtCount
        Footers = <>
        ReadOnly = True
        Title.Caption = 'DDBH'
        Width = 119
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Article'
        Width = 126
      end
      item
        EditButtons = <>
        FieldName = 'CustOrdNo'
        Footers = <>
        Width = 137
      end
      item
        DisplayFormat = '#0.00'
        EditButtons = <>
        FieldName = 'VNPrice'
        Footer.DisplayFormat = '#0.00'
        Footer.FieldName = 'VNPrice'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Price'
        Width = 67
      end
      item
        ButtonStyle = cbsNone
        EditButtons = <>
        FieldName = 'IM_DATE'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Import Date'
        Width = 154
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'User Import'
        Width = 96
      end
      item
        ButtonStyle = cbsNone
        EditButtons = <>
        FieldName = 'USERDATE_R'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Date Revise'
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'USERID_R'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'User Revise'
        Width = 80
      end>
  end
  object Query1: TQuery
    AfterOpen = Query1AfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select DDZL.*,RY_VNPRICE.CustOrdNo,RY_VNPRICE.VNPRICE,RY_VNPRICE' +
        '.IM_DATE,RY_VNPRICE.USERID ,USERID_R,USERDATE_R from ('
      'select DDZL.DDBH as RY,DDZL.ARTICLE,max(DDZLS.IPrice) as IPrice '
      'from DDZL '
      'Left join DDZLS on DDZLS.DDBH=DDZL.DDBH'
      'where 1=1 '
      'and DDZL.GSBH='#39'VA12'#39' '
      '    and year(DDZL.shipdate)='#39'2021'#39' '
      '    and month(DDZL.shipdate)='#39'05'#39' '
      'Group by DDZL.DDBH,DDZL.ARTICLE ) DDZL'
      'left join RY_VNPRICE on DDZL.RY=RY_VNPRICE.RYNO '
      'where 1=1 '
      'order by DDZL.RY')
    UpdateObject = UpdateSQL1
    Left = 272
    Top = 200
    object Query1RY: TStringField
      FieldName = 'RY'
      FixedChar = True
      Size = 15
    end
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object Query1CustOrdNo: TStringField
      FieldName = 'CustOrdNo'
      FixedChar = True
      Size = 15
    end
    object Query1IPrice: TFloatField
      FieldName = 'IPrice'
    end
    object Query1VNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object Query1IM_DATE: TDateTimeField
      FieldName = 'IM_DATE'
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 10
    end
    object Query1USERID_R: TStringField
      FieldName = 'USERID_R'
      FixedChar = True
      Size = 10
    end
    object Query1USERDATE_R: TDateTimeField
      FieldName = 'USERDATE_R'
    end
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE RY_VNPrice SET '
      '      VNPrice = :VNPrice'
      '      ,CustOrdNo = :CustOrdNo'
      '      ,UserID_R = :UserID_R'
      '      ,UserDate_R = getdate()'
      ' WHERE RYNO=:RY')
    InsertSQL.Strings = (
      'insert into RY_VNPRICE'
      '  (RYNO, CustOrdNo, VNPRICE, IM_DATE, USERID)'
      'values'
      '  (:RYNO, :CustOrdNo, :VNPRICE, :IM_DATE, :USERID)')
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
      Caption = 'CopyPrice'
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
