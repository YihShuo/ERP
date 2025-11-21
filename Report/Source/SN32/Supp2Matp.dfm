object Supp2Mat: TSupp2Mat
  Left = 287
  Top = 160
  Width = 895
  Height = 500
  Caption = 'Supp2Mat'
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 64
    Width = 879
    Height = 73
    Align = alTop
    TabOrder = 0
    Visible = False
    object Label1: TLabel
      Left = 48
      Top = 16
      Width = 42
      Height = 16
      Caption = 'ZSJC:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BUYNOLabel: TLabel
      Left = 228
      Top = 16
      Width = 46
      Height = 16
      Caption = 'BuyNO:'
      Visible = False
    end
    object Label8: TLabel
      Left = 16
      Top = 48
      Width = 74
      Height = 16
      Caption = 'ShipingDate'
    end
    object Label9: TLabel
      Left = 197
      Top = 48
      Width = 4
      Height = 16
      Caption = '/'
    end
    object BtnQry: TButton
      Left = 448
      Top = 32
      Width = 75
      Height = 33
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BtnQryClick
    end
    object ZSJC: TEdit
      Left = 96
      Top = 12
      Width = 121
      Height = 24
      TabOrder = 1
    end
    object BuyNo: TEdit
      Left = 280
      Top = 12
      Width = 121
      Height = 24
      TabOrder = 2
      Visible = False
    end
    object CYear: TComboBox
      Left = 96
      Top = 44
      Width = 97
      Height = 24
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 3
      Text = '0000'
      Items.Strings = (
        '0000'
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
        '2020')
    end
    object CMonth: TComboBox
      Left = 208
      Top = 44
      Width = 41
      Height = 24
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 4
      Text = '00'
      Items.Strings = (
        '00'
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
    object DDBHGrp: TCheckBox
      Left = 280
      Top = 48
      Width = 153
      Height = 17
      Caption = 'DDBH Export Group'
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
  end
  object Supp2MatGrid: TDBGridEh
    Left = 0
    Top = 137
    Width = 879
    Height = 325
    Align = alClient
    DataSource = Supp2Mat_DS
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'BUYNO'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <
          item
            DisplayFormat = 'Total Count=0'
            FieldName = 'DDBH'
            ValueType = fvtCount
          end>
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'XieXing'
        Footers = <>
        Width = 91
      end
      item
        EditButtons = <>
        FieldName = 'SheHao'
        Footers = <>
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footers = <>
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'CSBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ZSJC'
        Footers = <>
        Width = 128
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 429
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 879
    Height = 64
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object BB1: TBitBtn
      Left = 8
      Top = 7
      Width = 57
      Height = 49
      Caption = 'Query'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BB1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333FF3FF3333333333CC30003333333333773777333333333C33
        3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
        33003377333337F33377333333333C333300333F333337F33377339333333C33
        3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
        330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
        330077F377F337F33377993399333C33330077FF773337F33377399993333C33
        33333777733337F333FF333333333C33300033333333373FF7773333333333CC
        3000333333333377377733333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbt6: TBitBtn
      Left = 160
      Top = 7
      Width = 57
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Excel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = bbt6Click
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
  end
  object Supp2Mat: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select DDZL.DDBH,DDZL.Article,XXZL.XieXing,XXZL.SheHao,DDZL.Pair' +
        's,DDZL.BUYNO,ZLZLS2.CSBH,ZSZL.ZSJC,ZLZLS2.CLBH,CLZL.YWPM from ZL' +
        'ZLS2'
      'left join DDZL on (ZLZLS2.ZLBH=DDZL.DDBH)'
      'left join XXZL on xxzl.ARTICLE=DDZL.ARTICLE'
      'left join CLZL on ZLZLS2.CLBH=CLZL.CLDH '
      'left join ZSZL on ZLZLS2.CSBH=ZSZL.ZSDH '
      'where (ZSZL.ZSJC like '#39'%SADESA%'#39' '
      ' and (DDZL.KHBH in ( '
      
        ' select KFDH from KFZL where KFDH in (select KHBH from DDZL wher' +
        'e ShipDate>GetDate()-360 and GSBH='#39'VA12'#39'  group by KHBH) and KFQ' +
        'M is not null '
      ' ) )) '
      ' and (DDZL.BUYNO like '#39'%20140%'#39') '
      
        'Group by   DDZL.DDBH,DDZL.Article,XXZL.XieXing,XXZL.SheHao,DDZL.' +
        'Pairs,DDZL.BUYNO,ZLZLS2.CSBH,ZSZL.ZSJC,ZLZLS2.CLBH,CLZL.YWPM '
      'order by DDZL.BUYNO,DDZL.DDBH,ZLZLS2.CLBH')
    Left = 200
    Top = 168
    object Supp2MatBUYNO: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
    object Supp2MatDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Supp2MatArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Supp2MatXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object Supp2MatSheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object Supp2MatPairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Supp2MatCSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object Supp2MatZSJC: TStringField
      FieldName = 'ZSJC'
      FixedChar = True
    end
    object Supp2MatCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object Supp2MatYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
  end
  object Supp2Mat_DS: TDataSource
    DataSet = Supp2Mat
    Left = 240
    Top = 168
  end
end
