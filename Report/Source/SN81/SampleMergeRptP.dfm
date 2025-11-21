object SampleMergeRpt: TSampleMergeRpt
  Left = 137
  Top = 147
  Width = 1000
  Height = 525
  Caption = 'Sample Merge Report'
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
  WindowState = wsMaximized
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 984
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
  object Panel2: TPanel
    Left = 0
    Top = 64
    Width = 984
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
      Left = 8
      Top = 16
      Width = 63
      Height = 16
      Caption = 'Merge No:'
    end
    object Label2: TLabel
      Left = 232
      Top = 16
      Width = 38
      Height = 16
      Caption = 'CLBH:'
    end
    object Edit1: TEdit
      Left = 80
      Top = 12
      Width = 137
      Height = 24
      TabOrder = 0
    end
    object QryBtn: TButton
      Left = 568
      Top = 8
      Width = 75
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = QryBtnClick
    end
    object Edit2: TEdit
      Left = 280
      Top = 12
      Width = 137
      Height = 24
      TabOrder = 2
    end
    object CK: TCheckBox
      Left = 432
      Top = 24
      Width = 137
      Height = 17
      Caption = 'Only child material'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
  end
  object Grid_ypzlzls2: TDBGridEh
    Left = 225
    Top = 112
    Width = 759
    Height = 375
    Align = alClient
    DataSource = YPZLZLS2_DS
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
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLDH'
        Footers = <
          item
            FieldName = 'CLDH'
            ValueType = fvtCount
          end>
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 356
      end
      item
        EditButtons = <>
        FieldName = 'dwbh'
        Footers = <>
        Title.Caption = 'Unit'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 37
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Footers = <>
        Title.Caption = 'Qty'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'CGQty'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'DEVCODE'
        Footers = <>
        Title.Caption = 'SR'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'YPZLBH'
        Footers = <>
        Title.Caption = 'Merge No.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'CGNO'
        Footers = <>
        Title.Caption = 'PO NO.'
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'FD'
        Footers = <>
        Title.Caption = 'Cateory'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 57
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.Caption = 'Shoe Name'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 203
      end
      item
        EditButtons = <>
        FieldName = 'JiJie'
        Footers = <>
        Title.Caption = 'Season'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'BWBHMM'
        Footers = <>
        Title.Caption = 'Usage'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 155
      end>
  end
  object Grid_ZSZL: TDBGridEh
    Left = 0
    Top = 112
    Width = 225
    Height = 375
    Align = alLeft
    DataSource = ZSZL_DS
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -16
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'zsdh'
        Footers = <
          item
            FieldName = 'zsdh'
            ValueType = fvtCount
          end>
      end
      item
        EditButtons = <>
        FieldName = 'zsywjc'
        Footers = <>
      end>
  end
  object YPZLZLS2: TQuery
    DatabaseName = 'DB'
    DataSource = ZSZL_DS
    SQL.Strings = (
      'select YPZLZLS2.*,CGZLS.Qty as CGQty,CGZLS.CGNO from ('
      
        'select clzl.CLDH,clzl.YWPM,clzl.dwbh,IsNull(Sum(YPZLZLS2.CLSL),0' +
        ') as CLSL ,kfxxzl.DEVCODE,ypzlzls1.YPZLBH,kfxxzl.FD,kfxxzl.XieMi' +
        'ng,kfxxzl.JiJie,YPZLZLS1.BWBHMM '
      'from YPZLZLS2 '
      'left join clzl on clzl.cldh=YPZLZLS2.CLBH '
      'left join YPZL on YPZLZLS2.YPDH=YPZL.YPDH '
      
        'left join kfxxzl on YPZL.XieXing = kfxxzl.XieXing and YPZL.SheHa' +
        'o = kfxxzl.SheHao '
      
        'left join YPZLZLS1 on ypzlzls1.YPZLBH =YPZLZLS2.YPZLBH and YPZLZ' +
        'LS1.CLBH=YPZLZLS2.CLBH '
      'where  YPZLZLS2.CLBH<>'#39'NG'#39' and YPZLZLS2.CSBH='#39'A080'#39' '
      ' and YPZLZLS2.YPZLBH like '#39'%201410000002%'#39' '
      
        'group by ypzlzls1.YPZLBH,clzl.CLDH,clzl.YWPM,clzl.dwbh,kfxxzl.DE' +
        'VCODE,kfxxzl.FD,kfxxzl.XieMing,kfxxzl.JiJie,YPZLZLS1.BWBHMM'
      ') as YPZLZLS2'
      
        'left join CGZLS on CGZLS.CLBH=YPZLZLS2.CLDH and CGZLS.Memo=YPZLZ' +
        'LS2.YPZLBH ')
    Left = 360
    Top = 176
    object YPZLZLS2CLDH: TStringField
      FieldName = 'CLDH'
      FixedChar = True
      Size = 10
    end
    object YPZLZLS2YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object YPZLZLS2dwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object YPZLZLS2CLSL: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '0.0000'
    end
    object YPZLZLS2CGQty: TCurrencyField
      FieldName = 'CGQty'
      DisplayFormat = '0.0000'
    end
    object YPZLZLS2DEVCODE: TStringField
      FieldName = 'DEVCODE'
      FixedChar = True
    end
    object YPZLZLS2YPZLBH: TStringField
      FieldName = 'YPZLBH'
      FixedChar = True
      Size = 15
    end
    object YPZLZLS2CGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object YPZLZLS2FD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object YPZLZLS2XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object YPZLZLS2JiJie: TStringField
      FieldName = 'JiJie'
      FixedChar = True
    end
    object YPZLZLS2BWBHMM: TStringField
      FieldName = 'BWBHMM'
      FixedChar = True
      Size = 255
    end
  end
  object YPZLZLS2_DS: TDataSource
    DataSet = YPZLZLS2
    Left = 360
    Top = 144
  end
  object ZSZL: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select  zsdh,zsywjc from zszl where zsdh in '
      '(select CSBH  from YPZLZLS2  group by CSBH) and zsdh<>'#39#39)
    Left = 136
    Top = 176
    object ZSZLzsdh: TStringField
      FieldName = 'zsdh'
      FixedChar = True
      Size = 6
    end
    object ZSZLzsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
  end
  object ZSZL_DS: TDataSource
    DataSet = ZSZL
    Left = 136
    Top = 144
  end
end
