object BOM_Audit_Check: TBOM_Audit_Check
  Left = 194
  Top = 145
  Width = 1285
  Height = 527
  Caption = 'BOM_Audit_Check'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
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
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1267
    Height = 74
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = #24494#36575#27491#40657#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object BB1: TBitBtn
      Left = 20
      Top = 6
      Width = 60
      Height = 60
      Caption = 'Query'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
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
      Left = 79
      Top = 6
      Width = 60
      Height = 60
      Hint = 'Insert one New Record'
      Caption = 'Insert'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BB3: TBitBtn
      Left = 138
      Top = 6
      Width = 60
      Height = 60
      Hint = 'Delete one Record'
      Caption = 'Delete'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        300033FFFFFF3333377739999993333333333777777F3333333F399999933333
        3300377777733333337733333333333333003333333333333377333333333333
        3333333333333333333F333333333333330033333F33333333773333C3333333
        330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
        333333377F33333333FF3333C333333330003333733333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BB4: TBitBtn
      Left = 197
      Top = 6
      Width = 60
      Height = 60
      Hint = 'Modify Current'
      Caption = 'Modify'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BB5: TBitBtn
      Left = 256
      Top = 6
      Width = 60
      Height = 60
      Hint = 'Cancel'
      Caption = 'Cancel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFF33FF333FFF339993370733
        999333777FF37FF377733339993000399933333777F777F77733333399970799
        93333333777F7377733333333999399933333333377737773333333333990993
        3333333333737F73333333333331013333333333333777FF3333333333910193
        333333333337773FF3333333399000993333333337377737FF33333399900099
        93333333773777377FF333399930003999333337773777F777FF339993370733
        9993337773337333777333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BB7: TBitBtn
      Left = 315
      Top = 6
      Width = 60
      Height = 60
      Hint = 'Exit Current Form'
      Caption = 'Exit'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BB7Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033BBBBBBBBBB
        BB33337777777777777F33BB00BBBBBBBB33337F77333333F37F33BB0BBBBBB0
        BB33337F73F33337FF7F33BBB0BBBB000B33337F37FF3377737F33BBB00BB00B
        BB33337F377F3773337F33BBBB0B00BBBB33337F337F7733337F33BBBB000BBB
        BB33337F33777F33337F33EEEE000EEEEE33337F3F777FFF337F33EE0E80000E
        EE33337F73F77773337F33EEE0800EEEEE33337F37377F33337F33EEEE000EEE
        EE33337F33777F33337F33EEEEE00EEEEE33337F33377FF3337F33EEEEEE00EE
        EE33337F333377F3337F33EEEEEE00EEEE33337F33337733337F33EEEEEEEEEE
        EE33337FFFFFFFFFFF7F33EEEEEEEEEEEE333377777777777773}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 74
    Width = 1267
    Height = 406
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = #24494#36575#27491#40657#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 1265
      Height = 62
      Align = alTop
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Visible = False
      object Label2: TLabel
        Left = 8
        Top = 19
        Width = 87
        Height = 25
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Season'
      end
      object Edit1: TEdit
        Left = 106
        Top = 15
        Width = 149
        Height = 30
        TabOrder = 0
        Text = '20S'
      end
      object Button1: TButton
        Left = 278
        Top = 10
        Width = 99
        Height = 40
        Caption = 'QUERY'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = Button1Click
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 331
      Width = 1265
      Height = 74
      Align = alBottom
      TabOrder = 1
      object DBEdit1: TDBEdit
        Left = 6
        Top = 4
        Width = 1419
        Height = 30
        DataField = 'YWPM'
        DataSource = DS1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 6
        Top = 39
        Width = 1419
        Height = 30
        DataField = 'ZWPM'
        DataSource = DS1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 63
      Width = 1265
      Height = 268
      Align = alClient
      DataSource = DS1
      Flat = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = ANSI_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -15
      FooterFont.Name = #24494#36575#27491#40657#39636
      FooterFont.Style = []
      OddRowColor = clWindow
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -17
      TitleFont.Name = 'Calibri'
      TitleFont.Style = []
      UseMultiTitle = True
      OnDrawColumnCell = DBGridEh1DrawColumnCell
      Columns = <
        item
          EditButtons = <>
          FieldName = 'JIJIE'
          Footer.Font.Charset = ANSI_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -13
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footers = <>
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -17
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 47
        end
        item
          EditButtons = <>
          FieldName = 'ARTICLE'
          Footer.Font.Charset = ANSI_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -13
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footers = <>
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -17
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 83
        end
        item
          EditButtons = <>
          FieldName = 'XH'
          Footer.Font.Charset = ANSI_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -13
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footers = <>
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -17
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 39
        end
        item
          EditButtons = <>
          FieldName = 'BWBH'
          Footer.Font.Charset = ANSI_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -13
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footers = <>
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -17
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 69
        end
        item
          EditButtons = <>
          FieldName = 'zwsm'
          Footer.Font.Charset = ANSI_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -13
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footers = <>
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -17
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 86
        end
        item
          EditButtons = <>
          FieldName = 'BWLB'
          Footer.Font.Charset = ANSI_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -13
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footers = <>
          KeyList.Strings = (
            '1'
            '2'
            '3')
          PickList.Strings = (
            #36890#29992
            #22806#21253#35037
            #29305#23450)
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -17
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 61
        end
        item
          EditButtons = <>
          FieldName = 'CLBH'
          Footer.Font.Charset = ANSI_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -13
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footers = <>
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -17
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 84
        end
        item
          EditButtons = <>
          FieldName = 'YWPM'
          Footer.Font.Charset = ANSI_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -13
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footers = <>
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -17
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'ZWPM'
          Footer.Font.Charset = ANSI_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -13
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footers = <>
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -17
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Visible = False
          Width = 71
        end
        item
          EditButtons = <>
          FieldName = 'DWBH'
          Footer.Font.Charset = ANSI_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -13
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footers = <>
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -17
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 103
        end
        item
          EditButtons = <>
          FieldName = 'LYCC'
          Footer.Font.Charset = ANSI_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -13
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footers = <>
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -17
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 55
        end
        item
          EditButtons = <>
          FieldName = 'LOSS'
          Footer.Font.Charset = ANSI_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -13
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footers = <>
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -17
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 57
        end
        item
          EditButtons = <>
          FieldName = 'CLSL'
          Footer.Font.Charset = ANSI_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -13
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footers = <>
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -17
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 115
        end
        item
          EditButtons = <>
          FieldName = 'CLTX'
          Footer.Font.Charset = ANSI_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -13
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footers = <>
          KeyList.Strings = (
            '1'
            '2'
            '3')
          PickList.Strings = (
            #20849#29992
            #20998#27573
            #20998#34399)
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -17
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 59
        end
        item
          EditButtons = <>
          FieldName = 'CCQQ'
          Footer.Font.Charset = ANSI_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -13
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footers = <>
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -17
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 72
        end
        item
          EditButtons = <>
          FieldName = 'CCQZ'
          Footer.Font.Charset = ANSI_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -13
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footers = <>
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -17
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 71
        end
        item
          EditButtons = <>
          FieldName = 'USERID'
          Footer.Font.Charset = ANSI_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -13
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footers = <>
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -17
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 96
        end
        item
          EditButtons = <>
          FieldName = 'userdate'
          Footer.Font.Charset = ANSI_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -13
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footers = <>
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -17
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 113
        end
        item
          EditButtons = <>
          FieldName = 'CLBH_Log'
          Footer.Font.Charset = ANSI_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -13
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footers = <>
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -17
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 133
        end
        item
          EditButtons = <>
          FieldName = 'CLSL_Log'
          Footer.Font.Charset = ANSI_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -13
          Footer.Font.Name = 'MS Sans Serif'
          Footer.Font.Style = []
          Footers = <>
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -17
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 120
        end>
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 369
    Top = 61
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select top 100 '
      
        ' XXZL.JIJIE,XXZL.ARTICLE, XXZLS.XH,XXZLS.BWBH,bwzl.zwsm+'#39' / '#39'+bw' +
        'zl.ywsm as zwsm,XXZLS.BWLB,'
      
        ' XXZLS.CLBH,CLZL.YWPM, CLZL.ZWPM,CLZL.DWBH,CLZL.LYCC,XXZLS.LOSS,' +
        ' XXZLS.CLSL,   '
      ' XXZLS.CLTX,XXZLS.CCQQ, XXZLS.CCQZ,XXZLS.USERID, XXZLS.userdate,'
      
        ' (case when XXZLS.CLBH<>XXZLS_Log.CLBH then XXZLS_Log.Log_DateTi' +
        'me end) as '#39'CLBH_Log'#39','
      
        ' (case when XXZLS.CLSL<>XXZLS_Log.CLSL then XXZLS_Log.Log_DateTi' +
        'me end) as '#39'CLSL_Log'#39
      'FROM XXZLS'
      
        'LEFT join (select XieXing,SheHao,BWBH,Max(CLBH) as CLBH,Max(CLSL' +
        ') as CLSL,Max(Log_DateTime) as Log_DateTime from XXZLS_Log'
      
        '            where XXZLS_Log.XieXing=XieXing  and XXZLS_Log.SheHa' +
        'o=SheHao and Log_DateTime>=GetDate()-1'
      '           Group by XieXing,SheHao,BWBH'
      
        '          )  XXZLS_Log on XXZLS_Log.XieXing=XXZLS.XieXing and XX' +
        'ZLS_Log.SheHao=XXZLS.SheHao and XXZLS_Log.BWBH=XXZLS.BWBH'
      'LEFT JOIN BWZL  ON XXZLS.BWBH = BWZL.bwdh'
      'LEFT JOIN CLZL   ON XXZLS.CLBH = CLZL.cldh'
      
        'LEFT JOIN LBZLS ON SUBSTRING(XXZLS.CLBH,1,1) = LBZLS.lbdh AND LB' +
        'ZLS.LB='#39'05'#39
      'LEFT JOIN ZSZL on ZSZL.ZSDH=XXZLS.CSBH'
      
        'LEFT JOIN xxzl on xxzlS.xiexing = xxzl.xiexing and xxzlS.shehao ' +
        '= xxzl.shehao '
      'where xxzl.jijie='#39'20s'#39' '
      'And xxzls.cltx ='#39'2'#39
      '--And xxzls.ccqq ='#39#39
      '--And xxzls.ccqz ='#39#39
      'ORDER BY XXZLS.XH'
      ''
      ''
      '')
    Left = 368
    Top = 92
    object Query1JIJIE: TStringField
      FieldName = 'JIJIE'
      FixedChar = True
    end
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object Query1XH: TStringField
      FieldName = 'XH'
      FixedChar = True
      Size = 3
    end
    object Query1BWBH: TStringField
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object Query1zwsm: TStringField
      FieldName = 'zwsm'
      FixedChar = True
      Size = 83
    end
    object Query1BWLB: TStringField
      FieldName = 'BWLB'
      FixedChar = True
      Size = 1
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1LYCC: TStringField
      FieldName = 'LYCC'
      FixedChar = True
      Size = 1
    end
    object Query1LOSS: TFloatField
      FieldName = 'LOSS'
    end
    object Query1CLSL: TFloatField
      FieldName = 'CLSL'
    end
    object Query1CLTX: TStringField
      FieldName = 'CLTX'
      FixedChar = True
      Size = 1
    end
    object Query1CCQQ: TStringField
      FieldName = 'CCQQ'
      FixedChar = True
      Size = 6
    end
    object Query1CCQZ: TStringField
      FieldName = 'CCQZ'
      FixedChar = True
      Size = 6
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object Query1userdate: TDateTimeField
      FieldName = 'userdate'
    end
    object Query1CLBH_Log: TStringField
      FieldName = 'CLBH_Log'
      FixedChar = True
    end
    object Query1CLSL_Log: TStringField
      FieldName = 'CLSL_Log'
      FixedChar = True
    end
  end
end
