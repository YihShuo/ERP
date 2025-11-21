object ConOrderQty: TConOrderQty
  Left = 261
  Top = 145
  Width = 928
  Height = 480
  Caption = 'ConOrderQty'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
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
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 64
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object BB1: TBitBtn
      Left = 17
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
  object QryPanel: TPanel
    Left = 0
    Top = 64
    Width = 912
    Height = 73
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Visible = False
    object Label3: TLabel
      Left = 8
      Top = 44
      Width = 49
      Height = 16
      Caption = 'START:'
    end
    object Label4: TLabel
      Left = 208
      Top = 44
      Width = 32
      Height = 16
      Caption = 'END:'
    end
    object Label1: TLabel
      Left = 16
      Top = 12
      Width = 41
      Height = 16
      Caption = 'GSBH:'
    end
    object QryBtn: TButton
      Left = 424
      Top = 32
      Width = 75
      Height = 33
      Caption = 'Query'
      TabOrder = 0
      OnClick = QryBtnClick
    end
    object STYea: TComboBox
      Left = 64
      Top = 40
      Width = 73
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 6
      TabOrder = 1
      Text = '2014'
      Items.Strings = (
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
    object STMon: TComboBox
      Left = 144
      Top = 40
      Width = 49
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 2
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
    object EDYea: TComboBox
      Left = 248
      Top = 40
      Width = 73
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 6
      TabOrder = 3
      Text = '2014'
      Items.Strings = (
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
    object EDMon: TComboBox
      Left = 336
      Top = 40
      Width = 49
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
    object GSBHCombo: TComboBox
      Left = 64
      Top = 8
      Width = 73
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 5
      Text = 'VA12'
      Items.Strings = (
        'VA12'
        'VA3'
        'VB1'
        'VB2')
    end
  end
  object ConDBGridEh: TDBGridEh
    Left = 0
    Top = 137
    Width = 912
    Height = 305
    Align = alClient
    DataSource = DS
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
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
  end
  object ConQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select YWSM'
      ',Sum(case when GSBH='#39'VB1'#39' then Qty else 0 end) as '#39'VB1'#39' '
      ',Sum(case when GSBH='#39'VA3'#39' then Qty else 0 end) as '#39'VA3'#39' '
      ',Sum(case when GSBH='#39'VA12'#39' then Qty else 0 end) as '#39'VA12'#39' '
      ' from ('
      
        '  Select DDZL.DDGB,DDZL.GSBH,lbzls.ywsm,SUM(DDZL.Pairs) as Qty f' +
        'rom DDZL '
      #9'left join lbzls on lbzls.lbdh=ddzl.ddgb and lbzls.lb='#39'06'#39' '
      
        #9'where  DDZL.ShipDate>='#39'2014-01-01'#39' and DDZL.ShipDate<='#39'2014-01-' +
        '31'#39' and DDGB is not null '
      ' Group by DDZL.DDGB,DDZL.GSBH,lbzls.ywsm '
      '  ) as DDGBList '
      ' where ywsm is not null '
      ' Group by YWSM'
      'order by YWSM  ')
    Left = 48
    Top = 176
  end
  object DS: TDataSource
    DataSet = ConQry
    Left = 80
    Top = 176
  end
  object tmpQry: TQuery
    DatabaseName = 'DB'
    Left = 120
    Top = 176
  end
end
