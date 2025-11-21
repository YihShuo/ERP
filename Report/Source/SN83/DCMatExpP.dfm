object DCMatExp: TDCMatExp
  Left = 243
  Top = 142
  Width = 868
  Height = 483
  Caption = 'DCMatExp'
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
    Width = 860
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
    Width = 860
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
    object Label1: TLabel
      Left = 8
      Top = 40
      Width = 38
      Height = 16
      Caption = 'CLBH:'
    end
    object Label2: TLabel
      Left = 176
      Top = 40
      Width = 45
      Height = 16
      Caption = 'YWPM:'
    end
    object Label3: TLabel
      Left = 16
      Top = 10
      Width = 30
      Height = 16
      Caption = 'Start:'
    end
    object Label4: TLabel
      Left = 192
      Top = 10
      Width = 27
      Height = 16
      Caption = 'End:'
    end
    object Label5: TLabel
      Left = 368
      Top = 40
      Width = 45
      Height = 16
      Caption = 'UserID:'
    end
    object CLBH: TEdit
      Left = 48
      Top = 36
      Width = 121
      Height = 24
      TabOrder = 0
    end
    object QryBtn: TButton
      Left = 704
      Top = 32
      Width = 75
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = QryBtnClick
    end
    object YWPM: TEdit
      Left = 224
      Top = 36
      Width = 137
      Height = 24
      TabOrder = 2
    end
    object SDDate: TDateTimePicker
      Left = 48
      Top = 8
      Width = 121
      Height = 24
      Date = 41615.484468796300000000
      Time = 41615.484468796300000000
      TabOrder = 3
    end
    object EDDate: TDateTimePicker
      Left = 224
      Top = 8
      Width = 137
      Height = 24
      Date = 41615.484468796300000000
      Time = 41615.484468796300000000
      TabOrder = 4
    end
    object RadioGroup1: TRadioGroup
      Left = 496
      Top = 0
      Width = 97
      Height = 68
      Caption = 'RKNO / LLNO'
      TabOrder = 5
    end
    object CK1: TCheckBox
      Left = 520
      Top = 16
      Width = 65
      Height = 17
      Caption = 'RKNO'
      Checked = True
      State = cbChecked
      TabOrder = 6
    end
    object CK2: TCheckBox
      Left = 520
      Top = 32
      Width = 65
      Height = 17
      Caption = 'LLNO'
      Checked = True
      State = cbChecked
      TabOrder = 7
    end
    object UserID: TEdit
      Left = 424
      Top = 36
      Width = 65
      Height = 24
      TabOrder = 8
    end
    object GroupBox1: TGroupBox
      Left = 600
      Top = 0
      Width = 97
      Height = 68
      Caption = 'Data'
      TabOrder = 9
      object AllBox: TRadioButton
        Left = 8
        Top = 16
        Width = 73
        Height = 17
        Caption = 'ALL'
        TabOrder = 0
      end
      object ExpBox: TRadioButton
        Left = 8
        Top = 32
        Width = 81
        Height = 17
        Caption = 'Exception'
        Checked = True
        TabOrder = 1
        TabStop = True
      end
      object NorBox: TRadioButton
        Left = 8
        Top = 48
        Width = 73
        Height = 17
        Caption = 'Normal'
        TabOrder = 2
      end
    end
    object CK3: TCheckBox
      Left = 520
      Top = 48
      Width = 65
      Height = 17
      Caption = 'JGNO'
      Checked = True
      State = cbChecked
      TabOrder = 10
    end
    object cbNoCFM: TCheckBox
      Left = 384
      Top = 8
      Width = 105
      Height = 17
      Caption = 'No CFM'
      TabOrder = 11
    end
  end
  object TLFLDBGridEh: TDBGridEh
    Left = 0
    Top = 137
    Width = 860
    Height = 312
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
    FrozenCols = 3
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
        FieldName = 'BLNO'
        Footers = <
          item
            DisplayFormat = 'Count=0'
            FieldName = 'BLNO'
            ValueType = fvtCount
          end>
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'LB'
        Footers = <>
        Width = 29
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Width = 232
      end
      item
        EditButtons = <>
        FieldName = 'dwbh'
        Footers = <>
        Width = 43
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'AQty'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'BQty'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CQty'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'DQty'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'EQty'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'FQty'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'GQty'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'UserID'
        Footers = <>
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'UserDate'
        Footers = <>
        Width = 146
      end
      item
        EditButtons = <>
        FieldName = 'CFMID'
        Footers = <>
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'CFMDATE'
        Footers = <>
        Width = 152
      end>
  end
  object DC_TLFLRpt: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from ('
      
        'select KCRKS.RKNO as BLNO,'#39'RK'#39' as LB,KCRKS.CLBH,clzl.ywpm,clzl.d' +
        'wbh,KCRKS.Qty,DC_TLFL.AQty,DC_TLFL.BQty,DC_TLFL.CQty,DC_TLFL.DQt' +
        'y,DC_TLFL.EQty,DC_TLFL.FQty,DC_TLFL.GQty,KCRKS.UserID,KCRKS.User' +
        'Date,KCRK.CFMID,KCRK.CFMDATE  from KCRKS '
      'left join KCRK on KCRKS.RKNO=KCRK.RKNO '
      
        'left join DC_TLFL on KCRKS.RKNO=DC_TLFL.DJBH and KCRKS.CLBH=DC_T' +
        'LFL.CLBH and KCRKS.CGBH=DC_TLFL.DFL1 and KCRKS.RKSB=DC_TLFL.DFL2' +
        ' and DC_TLFL.GSBH=KCRK.GSBH and DC_TLFL.LB=1  '
      'left join clzl on KCRKS.CLBH=clzl.CLDH '
      
        'where KCRK.CKBH='#39'KDC'#39' and KCRK.GSBH='#39'KDC'#39' and convert(varchar,KC' +
        'RKS.USERDATE,111) between '#39'2014/05/01'#39' and '#39'2014/05/08'#39' '
      'Union All '
      
        'select KCLLS.LLNO as BLNO,'#39'LL'#39' as LB,KCLLS.CLBH,clzl.ywpm,clzl.d' +
        'wbh,KCLLS.Qty as Qty,DC_TLFL.AQty,DC_TLFL.BQty,DC_TLFL.CQty,DC_T' +
        'LFL.DQty,DC_TLFL.EQty,DC_TLFL.FQty,DC_TLFL.GQty,KCLLS.UserID,KCL' +
        'LS.UserDate,KCLL.CFMID,KCLL.CFMDATE   from KCLLS '
      'left join KCLL on KCLLS.LLNO=KCLL.LLNO '
      
        'left join DC_TLFL on KCLLS.LLNO=DC_TLFL.DJBH and KCLLS.CLBH=DC_T' +
        'LFL.CLBH and KCLLS.DFL=DC_TLFL.DFL1 and KCLLS.SCBH=DC_TLFL.DFL2 ' +
        'and DC_TLFL.GSBH=KCLL.GSBH and DC_TLFL.LB=2 '
      'left join clzl on KCLLS.CLBH=clzl.CLDH '
      
        'where KCLL.SCBH='#39'DDDDDDDDDD'#39' and KCLL.CKBH='#39'KDC'#39' and KCLL.GSBH='#39 +
        'KDC'#39' and convert(varchar,KCLLS.USERDATE,111) between '#39'2014/05/01' +
        #39' and '#39'2014/05/08'#39' '
      ') DCMat order by DCMat.LB,DCMat.BLNO,DCMat.CLBH,DCMat.UserID')
    Left = 432
    Top = 25
    object DC_TLFLRptRKNO: TStringField
      FieldName = 'BLNO'
      FixedChar = True
      Size = 11
    end
    object DC_TLFLRptLB: TStringField
      FieldName = 'LB'
      FixedChar = True
      Size = 2
    end
    object DC_TLFLRptCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object DC_TLFLRptywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object DC_TLFLRptdwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object DC_TLFLRptQty: TCurrencyField
      FieldName = 'Qty'
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
    object DC_TLFLRptUserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 15
    end
    object DC_TLFLRptUserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object DC_TLFLRptCFMID: TStringField
      FieldName = 'CFMID'
      FixedChar = True
      Size = 15
    end
    object DC_TLFLRptCFMDATE: TDateTimeField
      FieldName = 'CFMDATE'
    end
  end
  object DS: TDataSource
    DataSet = DC_TLFLRpt
    Left = 392
    Top = 25
  end
end
