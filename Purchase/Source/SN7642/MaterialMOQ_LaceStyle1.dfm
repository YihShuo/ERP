object MaterialMOQ_LaceStyle: TMaterialMOQ_LaceStyle
  Left = 499
  Top = 177
  Width = 776
  Height = 593
  Caption = 'MaterialMOQ_LaceStyle'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 60
    Width = 760
    Height = 495
    Align = alClient
    TabOrder = 0
    object DBGrid1: TDBGridEh
      Left = 1
      Top = 1
      Width = 758
      Height = 493
      Align = alClient
      DataSource = DS1
      Flat = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      UseMultiTitle = True
      VTitleMargin = 5
      Columns = <
        item
          Color = cl3DLight
          EditButtons = <>
          FieldName = 'SEASON'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Season'
          Title.TitleButton = True
          Width = 52
        end
        item
          Color = cl3DLight
          EditButtons = <>
          FieldName = 'Lace_Spec'
          Footers = <>
          ReadOnly = True
          Title.TitleButton = True
        end
        item
          Color = cl3DLight
          EditButtons = <>
          FieldName = 'Lace_Spec_2'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Width'
          Title.TitleButton = True
          Width = 65
        end
        item
          EditButtons = <>
          FieldName = 'SamplePrice'
          Footers = <>
          Title.TitleButton = True
          Width = 89
        end
        item
          Color = cl3DLight
          EditButtons = <>
          FieldName = 'nrdh'
          Footers = <>
          ReadOnly = True
          Title.TitleButton = True
          Width = 45
        end
        item
          Color = cl3DLight
          EditButtons = <>
          FieldName = 'nrdh_2'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'width ID'
          Title.TitleButton = True
          Width = 63
        end
        item
          Color = cl3DLight
          EditButtons = <>
          FieldName = 'USERID'
          Footers = <>
          ReadOnly = True
          Title.TitleButton = True
          Width = 57
        end
        item
          Color = cl3DLight
          EditButtons = <>
          FieldName = 'USERDATE'
          Footers = <>
          ReadOnly = True
          Title.TitleButton = True
          Width = 78
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 760
    Height = 60
    Align = alTop
    TabOrder = 1
    object BB2: TBitBtn
      Left = 56
      Top = 5
      Width = 49
      Height = 49
      Hint = 'Insert one New Record'
      Caption = 'Insert'
      Enabled = False
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
      Left = 104
      Top = 5
      Width = 49
      Height = 49
      Hint = 'Delete one Record'
      Caption = 'Delete'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BB3Click
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
      Left = 152
      Top = 5
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Modify'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BB4Click
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
      Left = 200
      Top = 5
      Width = 49
      Height = 49
      Hint = 'Save Current'
      Caption = 'Save'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BB5Click
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
    object BB6: TBitBtn
      Left = 248
      Top = 5
      Width = 49
      Height = 49
      Hint = 'Cancel'
      Caption = 'Cancel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BB6Click
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
      Left = 296
      Top = 5
      Width = 49
      Height = 49
      Hint = 'Exit Current Form'
      Caption = 'Exit'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
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
    object BB1: TBitBtn
      Left = 8
      Top = 5
      Width = 49
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
      Left = 352
      Top = 5
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Excel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
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
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '   select CG.SEASON'
      '           ,CG.nrdh'
      
        '           ,(select nrywsm from cllbzlss where lb='#39'D'#39' AND txxh='#39 +
        '03'#39' and cllbzlss.nrdh=CG.nrdh ) AS Lace_Spec'
      '           ,CG.nrdh_2'
      
        '           ,(select nrywsm from cllbzlss where lb='#39'D'#39' AND txxh='#39 +
        '02'#39' and cllbzlss.nrdh=CG.nrdh ) AS Lace_Spec_2'
      '           ,MaterialMOQ_Lace.SamplePrice'
      '           ,MaterialMOQ_Lace.USERID'
      '           ,MaterialMOQ_Lace.USERDATE'
      '           ,MaterialMOQ_Lace.Remark'
      '    from ( select CGZL.SEASON'
      '                  ,substring(CLZL.clbm,9,4) as nrdh'
      '                  ,substring(CLZL.clbm,5,4) as nrdh_2'
      '           from CGZLS'
      '           left join CGZL on CGZl.CGNO=CGZLS.CGNO'
      '           left join CLZL on CLZl.CLDH=CGZLS.CLBH'
      '           where left(CGZLS.CLBH,3)='#39'D09'#39
      '                 AND CGZL.CGLX='#39'6'#39' and CGZLS.Qty>0'
      '                 and CGZL.SEASON='#39'FW12'#39
      
        '           group by CGZL.SEASON,substring(CLZL.clbm,9,4),substri' +
        'ng(CLZL.clbm,5,4)      ) CG'
      
        'left join MaterialMOQ_Lace  on CG.nrdh=MaterialMOQ_Lace.nrdh and' +
        ' CG.nrdh_2=MaterialMOQ_Lace.nrdh_2 and CG.SEASON=MaterialMOQ_Lac' +
        'e.SEASON')
    UpdateObject = UpSQL1
    Left = 144
    Top = 216
    object Query1nrdh: TStringField
      FieldName = 'nrdh'
      FixedChar = True
      Size = 8
    end
    object Query1Lace_Spec: TStringField
      FieldName = 'Lace_Spec'
      FixedChar = True
      Size = 50
    end
    object Query1USERID: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'USERID'
      FixedChar = True
    end
    object Query1USERDATE: TDateTimeField
      DisplayLabel = 'UserDate'
      FieldName = 'USERDATE'
    end
    object Query1Remark: TStringField
      FieldName = 'Remark'
      FixedChar = True
      Size = 50
    end
    object Query1SEASON: TStringField
      FieldName = 'SEASON'
      FixedChar = True
    end
    object Query1nrdh_2: TStringField
      FieldName = 'nrdh_2'
      FixedChar = True
      Size = 8
    end
    object Query1Lace_Spec_2: TStringField
      FieldName = 'Lace_Spec_2'
      FixedChar = True
      Size = 50
    end
    object Query1SamplePrice: TFloatField
      FieldName = 'SamplePrice'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 176
    Top = 216
  end
  object UpSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update Country'
      'set'
      '  Country = :Country,'
      '  ShippingleadtimeAIR = :ShippingleadtimeAIR,'
      '  ShippingleadtimeSEA = :ShippingleadtimeSEA,'
      '  Customclearanceday = :Customclearanceday,'
      '  Remark = :Remark,'
      '  USERDATE = :USERDATE,'
      '  USERID = :USERID,'
      '  YN = :YN'
      'where'
      '  Country = :OLD_Country')
    InsertSQL.Strings = (
      'insert into Country'
      
        '  (Country, ShippingleadtimeAIR, ShippingleadtimeSEA, Customclea' +
        'ranceday, '
      '   Remark, USERDATE, USERID, YN)'
      'values'
      
        '  (:Country, :ShippingleadtimeAIR, :ShippingleadtimeSEA, :Custom' +
        'clearanceday, '
      '   :Remark, :USERDATE, :USERID, :YN)')
    DeleteSQL.Strings = (
      'delete from Country'
      'where'
      '  Country = :OLD_Country')
    Left = 144
    Top = 256
  end
  object ExcelApplication1: TExcelApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 428
    Top = 16
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Excel File(*.xls)|*.xls|CSV(comma split)(*.csv)|*.csv|Web Page(*' +
      '.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 467
    Top = 16
  end
  object QryTmp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '   select CG.SEASON,CG.nrdh '
      
        '           ,(select nrywsm from cllbzlss where lb='#39'D'#39' AND txxh='#39 +
        '03'#39' and cllbzlss.nrdh=CG.nrdh  '
      '            ) AS Lace_Spec '
      
        '           ,MaterialMOQ_Lace.SamplePrice,MaterialMOQ_Lace.USERID' +
        ',MaterialMOQ_Lace.USERDATE ,MaterialMOQ_Lace.Remark'
      
        '    from ( select CGZL.SEASON,substring(CLZL.clbm,9,4) as nrdh f' +
        'rom CGZLS '
      '           left join CGZL on CGZl.CGNO=CGZLS.CGNO '
      '           left join CLZL on CLZl.CLDH=CGZLS.CLBH '
      '          where left(CGZLS.CLBH,3)='#39'D09'#39'  '
      '                 AND CGZL.CGLX='#39'6'#39' and CGZLS.Qty>0  '
      '                 and CGZL.SEASON='#39'FW12'#39
      '           group by CGZL.SEASON,substring(CLZL.clbm,9,4) ) CG  '
      
        'left join MaterialMOQ_Lace  on CG.nrdh=MaterialMOQ_Lace.nrdh and' +
        ' CG.SEASON=MaterialMOQ_Lace.SEASON')
    Left = 328
    Top = 200
  end
end
