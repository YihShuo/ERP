object DCMatQtyRpt: TDCMatQtyRpt
  Left = 258
  Top = 141
  Width = 927
  Height = 480
  Caption = 'DCMatQtyRpt'
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 919
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
      OnDblClick = LastMonthDblClick
    end
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
    object BB2: TBitBtn
      Left = 74
      Top = 7
      Width = 57
      Height = 49
      Hint = 'Save Current'
      Caption = 'Monthly'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BB2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BaseDate: TDateTimePicker
      Left = 224
      Top = 8
      Width = 105
      Height = 24
      Date = 41615.484468796300000000
      Time = 41615.484468796300000000
      TabOrder = 2
      Visible = False
      OnChange = BaseDateChange
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
      TabOrder = 3
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
    Width = 919
    Height = 65
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
      Top = 32
      Width = 38
      Height = 16
      Caption = 'CLBH:'
    end
    object Label2: TLabel
      Left = 216
      Top = 32
      Width = 45
      Height = 16
      Caption = 'YWPM:'
    end
    object Edit1: TEdit
      Left = 64
      Top = 28
      Width = 137
      Height = 24
      TabOrder = 0
    end
    object QryBtn: TButton
      Left = 440
      Top = 20
      Width = 75
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Edit2: TEdit
      Left = 272
      Top = 28
      Width = 137
      Height = 24
      TabOrder = 2
    end
    object CKQty: TCheckBox
      Left = 16
      Top = 8
      Width = 97
      Height = 17
      Caption = 'TotalQty > 0'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
  end
  object TLFLDBGridEh: TDBGridEh
    Left = 0
    Top = 129
    Width = 919
    Height = 317
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
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLDH'
        Footers = <
          item
            DisplayFormat = 'count=0'
            FieldName = 'CLDH'
            ValueType = fvtCount
          end>
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 271
      end
      item
        EditButtons = <>
        FieldName = 'TQty'
        Footers = <>
        Title.Caption = 'Total Qty'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'AQty'
        Footers = <>
        Title.Caption = 'Dev Qty'
      end
      item
        EditButtons = <>
        FieldName = 'BQty'
        Footers = <>
        Title.Caption = 'Tech Qty'
      end
      item
        EditButtons = <>
        FieldName = 'CQty'
        Footers = <>
        Title.Caption = 'NG Qty'
      end
      item
        EditButtons = <>
        FieldName = 'DQty'
        Footers = <>
        Title.Caption = 'Defect Qty'
      end
      item
        EditButtons = <>
        FieldName = 'EQty'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'FQty'
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        FieldName = 'GQty'
        Footers = <>
        Visible = False
      end>
  end
  object DS: TDataSource
    DataSet = DC_TLFLRpt
    Left = 392
    Top = 25
  end
  object tempQuery: TQuery
    DatabaseName = 'DB'
    Left = 424
    Top = 25
  end
  object DC_TLFLRpt: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select CLZL.CLDH,CLZL.YWPM,'
      '       (IsNULL(RKTLFL.TQty,0)-IsNULL(LLTLFL.TQty,0)) as TQty,'
      '       (IsNULL(RKTLFL.AQty,0)-IsNULL(LLTLFL.AQty,0)) as AQty,'
      '       (IsNULL(RKTLFL.BQty,0)-IsNULL(LLTLFL.BQty,0)) as BQty, '
      '       (IsNULL(RKTLFL.CQty,0)-IsNULL(LLTLFL.CQty,0)) as CQty,'
      '       (IsNULL(RKTLFL.DQty,0)-IsNULL(LLTLFL.DQty,0)) as DQty,'
      '       (IsNULL(RKTLFL.EQty,0)-IsNULL(LLTLFL.EQty,0)) as EQty,'
      '       (IsNULL(RKTLFL.FQty,0)-IsNULL(LLTLFL.FQty,0)) as FQty,'
      '       (IsNULL(RKTLFL.GQty,0)-IsNULL(LLTLFL.GQty,0)) as GQty '
      'from '
      
        '(select CLBH,Sum(TQty) as TQty ,Sum(AQty) as AQty,Sum(BQty) as B' +
        'Qty ,Sum(CQty) as CQty,Sum(DQty) as DQty,Sum(EQty) as EQty,Sum(F' +
        'Qty) as FQty,Sum(GQty) as GQty  from '
      
        '(select CLBH,Sum(TQty) as TQty ,Sum(AQty) as AQty,Sum(BQty) as B' +
        'Qty ,Sum(CQty) as CQty,Sum(DQty) as DQty,Sum(EQty) as EQty,Sum(F' +
        'Qty) as FQty,Sum(GQty) as GQty  from DC_TLFL '
      
        'where   convert(smalldatetime,convert(varchar,UserDate,111)) bet' +
        'ween '#39'2013/12/01'#39' and '#39'2013/12/14'#39' and LB=1 '
      'group by CLBH '
      'Union '
      
        '(select CLBH,TQty,AQty,BQty,CQty,DQty,EQty,FQty,GQty from DC_TLF' +
        'LMonth where DCYEAR='#39'2013'#39' and DCMonth='#39'11'#39'))as tmpRKTLFL group ' +
        'by CLBH) as RKTLFL '
      'left join '
      
        '(select CLBH,Sum(TQty) as TQty ,Sum(AQty) as AQty,Sum(BQty) as B' +
        'Qty ,Sum(CQty) as CQty,Sum(DQty) as DQty,Sum(EQty) as EQty,Sum(F' +
        'Qty) as FQty,Sum(GQty) as GQty  from DC_TLFL '
      
        'where   convert(smalldatetime,convert(varchar,UserDate,111)) bet' +
        'ween '#39'2013/12/01'#39' and '#39'2013/12/14'#39' and LB=2 '
      'group by CLBH) as LLTLFL on RKTLFL.CLBH=LLTLFL.CLBH '
      'left join clzl on CLZL.CLDH=RKTLFL.CLBH'
      ' order by RKTLFL.CLBH')
    Left = 456
    Top = 25
    object DC_TLFLRptCLDH: TStringField
      FieldName = 'CLDH'
      FixedChar = True
      Size = 10
    end
    object DC_TLFLRptYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 270
    end
    object DC_TLFLRptTQty: TFloatField
      FieldName = 'TQty'
      DisplayFormat = '0.00'
    end
    object DC_TLFLRptAQty: TFloatField
      FieldName = 'AQty'
      DisplayFormat = '0.00'
    end
    object DC_TLFLRptBQty: TFloatField
      FieldName = 'BQty'
      DisplayFormat = '0.00'
    end
    object DC_TLFLRptCQty: TFloatField
      FieldName = 'CQty'
      DisplayFormat = '0.00'
    end
    object DC_TLFLRptDQty: TFloatField
      FieldName = 'DQty'
      DisplayFormat = '0.00'
    end
    object DC_TLFLRptEQty: TFloatField
      FieldName = 'EQty'
      DisplayFormat = '0.00'
    end
    object DC_TLFLRptFQty: TFloatField
      FieldName = 'FQty'
      DisplayFormat = '0.00'
    end
    object DC_TLFLRptGQty: TFloatField
      FieldName = 'GQty'
      DisplayFormat = '0.00'
    end
  end
end
