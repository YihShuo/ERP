object SampleMerge: TSampleMerge
  Left = 274
  Top = 185
  Width = 928
  Height = 480
  Caption = 'SampleMerge'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
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
    object LastMonth: TLabel
      Left = 224
      Top = 34
      Width = 438
      Height = 25
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
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
  object Panel2: TPanel
    Left = 0
    Top = 64
    Width = 912
    Height = 48
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Visible = False
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 60
      Height = 16
      Caption = 'YPDHBH:'
    end
    object Edit1: TEdit
      Left = 80
      Top = 12
      Width = 137
      Height = 24
      TabOrder = 0
    end
    object QryBtn: TButton
      Left = 264
      Top = 8
      Width = 75
      Height = 33
      Caption = 'Query'
      TabOrder = 1
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 112
    Width = 912
    Height = 330
    Align = alClient
    DataSource = DS
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLDH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 454
      end
      item
        EditButtons = <>
        FieldName = 'dwbh'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'DEVCODE'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'FD'
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Width = 211
      end
      item
        EditButtons = <>
        FieldName = 'JiJie'
        Footers = <>
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'BWBHMM'
        Footers = <>
        Width = 200
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Footers = <>
        Width = 52
      end>
  end
  object YPZLZLS2: TQuery
    Active = True
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select clzl.CLDH,clzl.YWPM,clzl.dwbh,kfxxzl.DEVCODE,kfxxzl.FD,kf' +
        'xxzl.XieMing,kfxxzl.JiJie,YPZLZLS1.BWBHMM,Sum(YPZLZLS2.CLSL) as ' +
        'CLSL'
      'from YPZLZLS2 '
      'left join clzl on clzl.cldh=YPZLZLS2.CLBH'
      'left join YPZL on YPZLZLS2.YPDH=YPZL.YPDH'
      
        'left join kfxxzl on YPZL.XieXing = kfxxzl.XieXing and YPZL.SheHa' +
        'o = kfxxzl.SheHao'
      
        'left join YPZLZLS1 on ypzlzls1.YPZLBH='#39'201402000002'#39' and YPZLZLS' +
        '1.CLBH=YPZLZLS2.CLBH'
      
        'where  YPZLZLS2.YPDH in (select YPDH from YPZLZLS where YPZLBH='#39 +
        '201402000002'#39') and YPZLZLS2.CLBH<>'#39'NG'#39' --and YPZLZLS2.CLBH='#39'F160' +
        '006520'#39
      
        'group by clzl.CLDH,clzl.YWPM,clzl.dwbh,kfxxzl.DEVCODE,kfxxzl.FD,' +
        'kfxxzl.XieMing,kfxxzl.JiJie,YPZLZLS1.BWBHMM')
    Left = 360
    Top = 176
  end
  object DS: TDataSource
    DataSet = YPZLZLS2
    Left = 360
    Top = 144
  end
end
