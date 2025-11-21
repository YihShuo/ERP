object MatLabCheck: TMatLabCheck
  Left = 315
  Top = 120
  Width = 1380
  Height = 665
  Caption = 'MatLabCheck'
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
  object Splitter1: TSplitter
    Left = 0
    Top = 370
    Width = 1364
    Height = 3
    Cursor = crVSplit
    Align = alTop
    Color = clScrollBar
    ParentColor = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 89
    Width = 1364
    Height = 48
    Align = alTop
    TabOrder = 0
    object Label21: TLabel
      Left = 309
      Top = 16
      Width = 73
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Fail Reason'
    end
    object btninsert: TBitBtn
      Left = 4
      Top = 0
      Width = 44
      Height = 44
      Hint = 'Insert one New Record'
      Caption = 'Insert'
      Enabled = False
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
    object btnmodify: TBitBtn
      Left = 47
      Top = 0
      Width = 44
      Height = 44
      Hint = 'Modify Current'
      Caption = 'Modify'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnmodifyClick
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
    object btndelete: TBitBtn
      Left = 90
      Top = 0
      Width = 44
      Height = 44
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
    object btnsave: TBitBtn
      Left = 133
      Top = 0
      Width = 44
      Height = 44
      Hint = 'Save Current'
      Caption = 'Save'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnsaveClick
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
    object btncancel: TBitBtn
      Left = 176
      Top = 0
      Width = 44
      Height = 44
      Hint = 'Cancel'
      Caption = 'Cancel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btncancelClick
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
    object btnTMethod: TButton
      Left = 219
      Top = 0
      Width = 81
      Height = 44
      Caption = 'Test Method'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = btnTMethodClick
    end
    object DBMemo1: TDBMemo
      Left = 384
      Top = 4
      Width = 225
      Height = 40
      DataField = 'Lab_Reason'
      DataSource = DS_Qc
      ScrollBars = ssVertical
      TabOrder = 6
    end
    object BBD: TBitBtn
      Left = 840
      Top = 4
      Width = 65
      Height = 39
      Caption = 'Download'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = BBDClick
      Glyph.Data = {
        BA030000424DBA030000000000003600000028000000130000000F0000000100
        18000000000084030000120B0000120B00000000000000000000FFFFFFFCFCFC
        7474741919190909090B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B
        0B0B0B0B0B0B0B3A3A3AAEAEAEFFFFFFFFFFFF000000FEFEFE1212121616169F
        9F9FBDBDBDB9B9B9B9B9B9B9B9B9BABABAC1C1C1BABABAB9B9B9B9B9B9BBBBBB
        BABABA6A6A6A000000535353FFFFFF000000787878171717FAFAFAFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFCACACAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFCBCBCB000000B0B0B0000000121212B2B2B2FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF9E9E9E000000959595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF7E7E7E313131000000000000D8D8D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97
        97970000000000000000008D8D8DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9D9D9
        000000000000242424959595FFFFFFFFFFFFFFFFFFFFFFFF9191910000000000
        00000000000000000000898989FFFFFFFFFFFFFFFFFFFFFFFFD7D7D700000000
        0000919191000000E6E6E6FFFFFFFFFFFFFFFFFFBABABAC8C8C83D3D3D000000
        363636C8C8C8B9B9B9FFFFFFFFFFFFFFFFFFFFFFFF8585852E2E2E000000FFFF
        FF3E3E3E000000505050D3D3D3FFFFFFFFFFFFFFFFFF545454000000494949FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFD2D2D2000000ADADAD000000FFFFFFFFFFFF
        A2A2A2000000CCCCCCFFFFFFFFFFFFFFFFFF4D4D4D000000434343FFFFFFFFFF
        FFFFFFFFFFFFFF828282000000626262FFFFFF000000FFFFFFFFFFFFFDFDFD0A
        0A0ABABABAFFFFFFFFFFFFFFFFFF5757570000004F4F4FFFFFFFFFFFFFFFFFFF
        FFFFFF4F4F4F373737FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF4949492D2D
        2DFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5F9F9F9FFFFFFFFFFFFFFFFFFFFFFFF5B
        5B5B4F4F4FFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFF4F4F40000002F2F2F
        BBBBBBC0C0C0989898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000009797
        97FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFEDEDED3E3E3E05050507
        0707000000A2A2A2FFFFFFFFFFFFFFFFFFFFFFFF5F5F5F070707F5F5F5FFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9EFEFEF9393
        930000004F4F4FA8A8A89F9F9F2D2D2D000000C6C6C6FFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECECE
        4D4D4D1919191F1F1F5F5F5FEDEDEDFFFFFFFFFFFFFFFFFFFFFFFF000000}
      Layout = blGlyphTop
    end
    object BBU: TBitBtn
      Left = 904
      Top = 4
      Width = 65
      Height = 39
      Caption = 'Upload'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = BBUClick
      Glyph.Data = {
        BA030000424DBA030000000000003600000028000000130000000F0000000100
        18000000000084030000120B0000120B00000000000000000000FFFFFFF9F9F9
        6363630000000000000000000000000000000000000000000000000000000000
        00000000000000222222A2A2A2FFFFFFFFFFFF000000FEFEFE000000212121AC
        ACACD0D0D0CCCCCCCCCCCCCDCDCDD8D8D8DEDEDED8D8D8CDCDCDCCCCCCCECECE
        CBCBCB7878780000004F4F4FFFFFFF0000007777771B1B1BFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFB2B2B2868686B2B2B2FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFD0D0D0000000AFAFAF000000050505AFAFAFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF3B3B3B0000003B3B3BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF7C7C7C2A2A2A000000000000DEDEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF494949000000494949FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D8D8
        000000000000212121898989FFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFFFFFF4D4D
        4D0000004D4D4DFFFFFFFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFD1D1D100000000
        0000999999000000DEDEDEFFFFFFFFFFFFFFFFFF747474373737131313000000
        1313133939396D6D6DFFFFFFFFFFFFFFFFFFFFFFFF7B7B7B2C2C2C000000FFFF
        FF4040400000004F4F4FD2D2D2FFFFFFECECEC25252500000000000000000022
        2222E8E8E8FFFFFFFFFFFFFFFFFFCACACA000000B2B2B2000000FFFFFFFFFFFF
        9D9D9D000000C5C5C5FFFFFFFFFFFFF8F8F82F2F2F000000292929F4F4F4FFFF
        FFFFFFFFFFFFFF818181000000616161FFFFFF000000FFFFFFFFFFFFFEFEFE12
        1212B8B8B8FFFFFFFFFFFFFFFFFFF2F2F2232323EDEDEDFFFFFFFFFFFFFFFFFF
        FFFFFF404040404040FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF4949493131
        31FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D
        4D4D5D5D5DFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFECECEC000000373737
        BBBBBBC0C0C0959595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0707079393
        93FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFE8E8E832323203030301
        0101000000AAAAAAFFFFFFFFFFFFFFFFFFFFFFFF6C6C6C090909ECECECFFFFFF
        FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E7ECECEC8383
        830000005C5C5CC2C2C2B3B3B33B3B3B000000BABABAFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4C4C4
        363636000000000000535353E4E4E4FFFFFFFFFFFFFFFFFFFFFFFF000000}
      Layout = blGlyphTop
    end
    object GroupBox1: TGroupBox
      Left = 613
      Top = -3
      Width = 210
      Height = 47
      TabOrder = 9
      object btnRelease: TBitBtn
        Left = 99
        Top = 8
        Width = 55
        Height = 38
        Caption = 'Release'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = btnReleaseClick
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000120B0000120B00000001000000000000FFFFFF00C8EC
          DF0098DFC90060D0AF004ECBA80050CBA90064D1B1009CE0CB00CEEFE300F3FA
          F70098DCC20056CCA80051CCA90057CFAE0058CFAE0050CCA9005ACDA900A3DF
          C800F8FCFA00F5FBF8006ECBA40051C9A00057CBA50054CAA30055CAA30050C9
          A0007FD1AE00FBFDFC0099D6B2004EC4950058C99E0057C99E004EC69900B2E6
          D300BBE9D90050C79A004DC39300A8DBBD00CDEAD8004DB6760056C7990055C6
          950050C5930089D7B600F7FCFA0050C4920056C7980055B97B00D8EEDF00A0D5
          AF0040AE610056C4930054C28F005FC69600D8F1E500ABE0C8004FC18C0040AD
          6000AFDCBB006ABA7A0042A754004FB77A0052BF89005AC18E0054BF8A0053BF
          89004DBD8500ABDFC600D8F0E4005FC3920053C08A004EB6780041A754007EC2
          8C0056A9640044A0540045A2560050B06F00CFEDDD00A8DEC1004DBC81005EC1
          8D00F7FCF9008AD3AD004EB97D004BAC670046A2560043A0530069B2750053A2
          5D0041984C0041984B0055A25E005AA86700C5E1CA00C7DFC800379342004297
          4A0042984C0042984D0040974B0066AC6F0068A76D003F90450042914700388B
          3E00CBE0CD00DEEBDF00F3F8F300EBF3EC0067A66B00419147003E8F44007CB2
          80009DC29E003A853C004089420067A16900F2F7F3009BC19C003A863D00ADCC
          AE00CCDECC00458944003D843C003E843D00C2D8C200F0F5F0003C833B004D8D
          4D00D7E5D70097B99500357732003C7C39003A7A3700558C5400BED2BD006597
          64003B7A38003C7B390034763100A6C3A500F5F8F50062935E0033742E003A79
          350037773200397833003877320033732D00749F7100FCFDFC00F3F6F30091B2
          8D003D79360032712B0036752F003876310038753000407B3A009BB99700F9FB
          F900C5D6C3008EB08B0050844B00397435003B75360054874F0094B39100CADA
          C900000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000A2A3
          A4A5A6A7A8A900000000000098999A9B9C9D9E9C9B9FA0A10000008E8F909192
          9394919191919596970000838485868788898A8B8B8B8B8C8D007A7B7C7C7D7E
          007F80807C7C7C7C818272737474757600007773747474747879666768696A00
          6B6C6D6E6F6868687071595A5B5C00005D5E005F6061626364654A4B4C4D4E4F
          505152005354555657583B3C3D3E3F4041424300444546474849313233343434
          3434353600373833393A26272829292929292A2B002C2D2E2F30001C1D1E1F1F
          1F1F1F20212223242500001314151616161616161718191A1B000000090A0B0C
          0D0E0E0D0F101112000000000000010203040506070800000000}
        Layout = blGlyphTop
      end
      object BtnReject: TBitBtn
        Left = 153
        Top = 8
        Width = 55
        Height = 38
        Caption = 'Reject'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BtnRejectClick
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000120B0000120B00000001000000000000FFFFFF00FFFF
          FE00CDCFFA009A9BF300615FF0004C48EF004945EF005957F0008E8DF300BEC1
          F900FBFCFE00FBFBFE00A0A4F500554DEF004D40EE005545EE005647EE005747
          EE005646EE004F41EE004F46EE00888AF300EBEDFC00FEFFFE007E80F4004C3F
          EF005547EE005C5CF000EDEEFD00ACB1F700443CEE005041ED004E3EED005445
          EE004D3EED004D3DEE00858BF300FDFDFE00DCDEFB004652F0005847EF004E3F
          EF00CAC6F800786BF2005243EF005244EF006153EF00E6E3FA00EFEDFC004E3E
          EE005747EF003C42EF00BFC2F800B1B6F7002738ED005647F1004D3FF000C5C0
          F800EBEAFC007469F3005C50F000CECAF800F0EFFA004C3EF0003039EE00868F
          F4007A84F4002838EF004242F0005446F000574BF000BBB6F600F9F9FE00DBD8
          FA00DFDDFA00675CF1005346F0004C44F0002A3AEF004854F1005E6BF1002736
          EE002C3AEE003A3EEE004D41F0005A4BF000D0CCF800F1F0FB006A5DF1004E41
          F0003F3FEE002E3AEE002A39EE002F3DEE005D68EF002432EB002735EC002332
          EB002F3CEB00CBCBF900F1F0FC004651EE002131EB002635EC002B39EC00777F
          EF002330E6002834E6002D3AE600A9AFF400F7F7FC00D2D5F800D7DAF900414C
          EA002734E6002632E600424DE800AEB3F300212FE2002734E2001E2CE100B6BA
          F400E6E8FA004F5AE600323EE200C1C4F300ECEEFB001D2AE1002634E200202E
          E200828AED00D9DBF8003D48DF002633DC001D2ADB00BCBFF200FFFFFD00525C
          E300222FDB00232FDB003640DD00DFE0F700EAEAF9001C2ADA002632DC002935
          DC00BCBFF300A7ABED001E27D300272FD5002029D4001E26D300252ED5001D26
          D3001D25D3002129D3007D81E400FDFDFD00FFFEFE006E74DC001E26CC00252E
          CE00262FCE001F28CC00444CD400ECEDFA00FBFBFD00989AE3003035C8001F25
          C400242AC600262BC600262CC600252AC6002026C400282DC600797DDB00EBEB
          F900C8C9EF008C8FDE00474CC9002C31C200282EC0003D43C7007E81D800B8BA
          EA00FCFCFD000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000B2B3
          B4B5B6B7B8B9BA0000000000A6A7A8A9AAABACADAEAFB0B10000009E9FA0A1A1
          A2A2A2A2A2A2A3A4A50000939495969798959595999A959B9C9D838485868788
          898A8B8C8D8E8F9091927576777879007A7B7C7D007E7F808182696A6B6B6C6D
          006E6F007071726B73745E5F6060616263000064656667606068505152535455
          5600005758595A5B5C5D424344454647004849004A4B4C4D4E4F353637383900
          3A3B3C3D003E3F374041262728292A012B2C2D2E2F3031323334001D1E101F20
          211010102223100E242500171819101A1A1A1A1A1A10131B1C0000000B0C0D0E
          0F1011121314151600000000000102030405060708090A000000}
        Layout = blGlyphTop
      end
      object FinishDT: TDateTimePicker
        Left = 3
        Top = 16
        Width = 96
        Height = 24
        Date = 39284.677664201390000000
        Format = 'yyyy/MM/dd'
        Time = 39284.677664201390000000
        TabOrder = 2
      end
    end
    object BBUFoler: TBitBtn
      Left = 988
      Top = 4
      Width = 77
      Height = 39
      Caption = 'Upload Rpt'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnClick = BBUFolerClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000A6A19F4D5E5F
        5A7E7E5A787B5A797B5A797B5A797B5A797B5A797B5A797B5A797B5A797B5A79
        7B5A797B5073759DA19F757D7C54AAB359FDFF58EFFF58F0FF58F0FF58F0FF58
        F0FF58F0FF58F0FF58F0FF58F0FF58F0FF58EFFF56FFFF5681857D8585549CA2
        5AECFF58DDEF59DEF059DEF059DEF059DEF059DEF059DEF059DEF059DEF059DE
        F059DDEF56EDFF61878A7D8485549EA35AECFF58DEF059DFF159DFF159DFF159
        DFF159DFF159DFF159DFF159DFF159DFF159DEF056EDFF61868A7C8484549EA3
        5AECFF58DEF059DFF159DFF159DFF159DFF159DFF159DFF159DFF159DFF159DF
        F159DEF056EDFF61868A7B8485559EA35AECFF59DEEF59DEF059DEF059DEF059
        DEF059DEF059DFF159DFF159DFF159DFF159DEF056EDFF61868A7B8484549EA3
        5BEEFF55EAFF52ECFF52ECFF52ECFF53EEFF59E0F259DEF059DFF159DFF159DF
        F159DEF056EDFF61868A7B8483559FA452E8FC648787707F7B6E807D6E827F6D
        69634EDEF159E1F359DEF059DFF159DFF159DEF056EDFF61868A7B848356A0A5
        48E0F3A39689C9A28FC5A190C7A493C7826C3ED3E85AE2F459DEF059DFF159DF
        F159DEF056EDFF61868A7A838255A1A751ECFF6E7F7B7D786F7B79717C7B737B
        5E514CE2F75AE7FA59E4F759E4F759E4F759E3F657F4FF60888C7B86874E878B
        4BB6BF46BCC643BFC843BFC843BFC844C2CA4BADB949AAB549ABB649ABB649AB
        B64AABB746B5BD5A76737E90909EDFDE8EB9B68FBAB88FBAB88FBAB88FBAB88F
        BAB891BFBE92C1C092C1C092C1C092C1C097C9C6707B7BD4C6C46C76779BE2E8
        A9F6FFA7F3FBA7F3FCA7F3FCA9F5FEADFAFF90D1D483BDBB84BFBE84BFBE84BF
        BE87C2C1788E90FDF9F8717F8092D4D9B2FFFFAEFCFFAEFDFFAEFCFFA3EBF498
        E1E76A6361CABEBDC2B8B7C2B8B7C2B8B7BFB5B4DBD6D5FDFDFE828B8A7DBBBF
        70A0A272A3A571A2A374A6A887C7CE7EC0C09B8D8CFFFFFFFDFDFDFDFDFEFDFD
        FEFDFEFEFAFBFBF6F6F6E6E2E293989996A0A196A0A096A0A1969FA092999A97
        9999FFFEFEF8F8F8F6F6F6F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7}
      Layout = blGlyphTop
    end
    object BBUpload: TBitBtn
      Left = 1064
      Top = 4
      Width = 129
      Height = 39
      Hint = 'Modify Current'
      Caption = 'Upload Excel Report'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnClick = BBUploadClick
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
  object DBGridDetail: TDBGridEh
    Left = 0
    Top = 137
    Width = 1364
    Height = 233
    Align = alTop
    DataSource = DS_Qc
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 10
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    VTitleMargin = 0
    OnDrawColumnCell = DBGridDetailDrawColumnCell
    Columns = <
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'No_ID'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'SID'
        Width = 40
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'RKNO'
        Footers = <>
        ReadOnly = True
        Width = 76
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'DateInput'
        Footers = <
          item
            FieldName = 'DateInput'
            ValueType = fvtCount
          end>
        ReadOnly = True
        Title.Caption = 'Date'
        Title.TitleButton = True
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'Tracking'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'T A-09'
        Title.TitleButton = True
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = 'RY'
        Footers = <>
        Title.Caption = 'RY Actual'
        Width = 80
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'CGNO'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'PO#'
        Title.TitleButton = True
      end
      item
        ButtonStyle = cbsNone
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        ReadOnly = True
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'CustPO'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Cust PO'
        Width = 80
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Material|ID'
        Title.TitleButton = True
        Width = 65
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'MaterialName'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Material|Name'
        Width = 150
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'SupplierName'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Supplier Name'
        Title.TitleButton = True
        Width = 70
      end
      item
        DisplayFormat = '#,###.#'
        EditButtons = <>
        FieldName = 'Qty'
        Footer.DisplayFormat = '#,###.#'
        Footer.FieldName = 'Qty'
        Footer.ValueType = fvtSum
        Footers = <>
        ReadOnly = True
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = 'Unit'
      end
      item
        ButtonStyle = cbsNone
        Color = 16742911
        EditButtons = <>
        FieldName = 'Lab_FinishDate'
        Footers = <>
        Title.Caption = 'Lab Test|Finished Date'
        Width = 65
      end
      item
        ButtonStyle = cbsNone
        EditButtons = <>
        FieldName = 'Lab_Check'
        Footers = <>
        PickList.Strings = (
          ''
          'Fail'
          'Pass'
          'Limited')
        Title.Caption = 'Lab Test|Result '
        Width = 50
      end
      item
        ButtonStyle = cbsNone
        EditButtons = <>
        FieldName = 'Lab_Reason'
        Footers = <>
        Title.Caption = 'Lab Test|Fail Reason'
        Width = 80
        OnEditButtonClick = DBGridDetailColumns14EditButtonClick
      end
      item
        ButtonStyle = cbsNone
        EditButtons = <>
        FieldName = 'T2Test_Result'
        Footer.Color = clSkyBlue
        Footer.FieldName = 'T2Test_Result'
        Footer.Value = 'Matching :'
        Footer.ValueType = fvtStaticText
        Footers = <>
        PickList.Strings = (
          ''
          'Fail'
          'Pass'
          'Limited')
        Title.Caption = 'Lab Test|T2 Test Result'
        Visible = False
        Width = 57
      end
      item
        ButtonStyle = cbsNone
        EditButtons = <>
        FieldName = 'Comparision'
        Footer.FieldName = 'Comparision'
        Footers = <>
        PickList.Strings = (
          ''
          'Matching'
          'Not Matching')
        Title.Caption = 'Lab Test|Comparision Result'
        Visible = False
        Width = 80
      end
      item
        Color = 9961367
        EditButtons = <>
        FieldName = 'Lab_Num'
        Footers = <>
        Title.Caption = 'Lab Test|Database'
        Title.TitleButton = True
        Visible = False
        Width = 70
      end
      item
        Color = 9961367
        EditButtons = <>
        FieldName = 'Lab_PDM_ID'
        Footers = <>
        Title.Caption = 'Lab Test|Report ID'
        Title.TitleButton = True
        Width = 85
      end
      item
        Color = 16243197
        EditButtons = <>
        FieldName = 'PDM_File_Name'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Lab Test|PDM Report File'
        Visible = False
        Width = 85
      end
      item
        Color = 9961367
        EditButtons = <>
        FieldName = 'Lab_PDM_IDT2'
        Footers = <>
        Title.Caption = 'Lab Test|Report ID2'
        Visible = False
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'File_Name_Lab'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Lab Test|Report File'
        Width = 80
      end
      item
        ButtonStyle = cbsNone
        EditButtons = <>
        FieldName = 'Lab_Result'
        Footers = <>
        PickList.Strings = (
          ''
          'Go to Production'
          'Return'
          'Waiting for Purchasing')
        Title.Caption = 'Lab Test|Remark'
        Width = 82
      end
      item
        ButtonStyle = cbsNone
        EditButtons = <>
        FieldName = 'Receducing_TLSP'
        Footers = <>
        PickList.Strings = (
          ''
          '')
        Title.Caption = 'Lab Test|Receducing Test Method of TLSP'
        Visible = False
        Width = 110
        OnEditButtonClick = DBGridDetailColumns24EditButtonClick
      end
      item
        ButtonStyle = cbsNone
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'Lab_ConfirmDate'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Lab Test|Confirmed Result'
        Visible = False
        Width = 65
      end
      item
        ButtonStyle = cbsNone
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'Lab_DateRemark'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Lab Test|Remark Date'
        Visible = False
        Width = 60
      end
      item
        ButtonStyle = cbsNone
        EditButtons = <>
        FieldName = 'Remark'
        Footers = <>
        Visible = False
        Width = 60
      end
      item
        ButtonStyle = cbsNone
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'Lab_Date'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Lab Test|User Date'
        Width = 65
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'Lab_UserID'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Lab Test|UserID'
        Width = 45
      end
      item
        ButtonStyle = cbsNone
        Color = 12582911
        EditButtons = <>
        FieldName = 'Final_Status'
        Footers = <>
        PickList.Strings = (
          ''
          'Fail'
          'Pass')
        ReadOnly = True
        Title.Caption = 'Final Status|Result'
        Width = 50
      end
      item
        Color = 12582911
        EditButtons = <>
        FieldName = 'Final_Remark'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Final Status|Remark'
        Width = 80
      end>
  end
  object Panel5: TPanel
    Left = 0
    Top = 373
    Width = 1364
    Height = 253
    Align = alClient
    TabOrder = 2
    object Panel3: TPanel
      Left = 1
      Top = 41
      Width = 1362
      Height = 211
      Align = alClient
      TabOrder = 0
      object DBGrid_RY: TDBGridEh
        Left = 1
        Top = 1
        Width = 899
        Height = 209
        Align = alClient
        DataSource = DS_RY
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            ButtonStyle = cbsNone
            EditButtons = <>
            FieldName = 'RY'
            Footers = <>
            Width = 86
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            Width = 155
          end
          item
            EditButtons = <>
            FieldName = 'ModelName'
            Footers = <>
            Width = 165
          end
          item
            EditButtons = <>
            FieldName = 'CustPO'
            Footers = <>
            Width = 103
          end
          item
            EditButtons = <>
            FieldName = 'Remark'
            Footers = <>
            Width = 130
          end
          item
            EditButtons = <>
            FieldName = 'COUNTRY'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Country'
            Width = 81
          end
          item
            ButtonStyle = cbsNone
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'UserDate'
            Footers = <>
            Width = 118
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'UserID'
            Footers = <>
            Width = 54
          end>
      end
      object Panel6: TPanel
        Left = 900
        Top = 1
        Width = 461
        Height = 209
        Align = alRight
        TabOrder = 1
        object Splitter2: TSplitter
          Left = 1
          Top = 1
          Height = 207
          Color = clScrollBar
          ParentColor = False
        end
        object DBGridEh1: TDBGridEh
          Left = 4
          Top = 1
          Width = 456
          Height = 207
          Align = alClient
          DataSource = DS2
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'BWBH'
              Footers = <>
              Title.Caption = 'Part'
              Width = 60
            end
            item
              EditButtons = <>
              FieldName = 'BWMC'
              Footers = <>
              Title.Caption = 'Part Name'
            end>
        end
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 1362
      Height = 40
      Align = alTop
      TabOrder = 1
      object Label9: TLabel
        Left = 8
        Top = 13
        Width = 94
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Select Report'
      end
      object CBX1: TComboBox
        Left = 104
        Top = 10
        Width = 241
        Height = 24
        Enabled = False
        ItemHeight = 16
        ItemIndex = 0
        TabOrder = 0
        Text = 'BINDING\BINDING SYNTHETICS'
        Items.Strings = (
          'BINDING\BINDING SYNTHETICS'
          'BINDING\BINDING TEXTILE'
          'ELASTIC TRAP'
          'EYELET'
          'FINISH SOCKLINER'
          'FOAM'
          'HOOK AND LOOP'
          'LACE'
          'LINING\LINING SYNTHETICS'
          'LINING\LINING TEXTILE'
          'REINFORCEMENT'
          'THREAD'
          'TREAMENT\PRINT  EMBROIDERY'
          'TREAMENT\PRINT 3D'
          'TREAMENT\PRINT FOIL'
          'TREAMENT\PRINT OTHER'
          'TREAMENT\PRINT RUBBER'
          'TREAMENT\PRINT TEXTILE'
          'UPPER\UPPER LEATHER'
          'UPPER\UPPER SYNTHETICS'
          'UPPER\UPPER TEXTILE'
          'WEBBING'
          'WOWEN LABEL'
          'ZIPPER')
      end
      object btnMatReport: TButton
        Left = 348
        Top = 6
        Width = 105
        Height = 30
        Caption = 'Material Report'
        Enabled = False
        TabOrder = 1
        OnClick = btnMatReportClick
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1364
    Height = 89
    Align = alTop
    TabOrder = 3
    object Label15: TLabel
      Left = 163
      Top = 9
      Width = 7
      Height = 25
      Caption = '~'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 280
      Top = 8
      Width = 64
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'PO#'
    end
    object Label3: TLabel
      Left = 280
      Top = 32
      Width = 64
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Material ID'
    end
    object Label4: TLabel
      Left = 12
      Top = 32
      Width = 90
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Supplier Name'
    end
    object Label1: TLabel
      Left = 458
      Top = 8
      Width = 60
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Database'
    end
    object Label5: TLabel
      Left = 586
      Top = 10
      Width = 11
      Height = 16
      Caption = '~'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 304
      Top = 57
      Width = 40
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RY'
    end
    object Label7: TLabel
      Left = 456
      Top = 32
      Width = 62
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Cust PO'
    end
    object Label8: TLabel
      Left = 464
      Top = 56
      Width = 54
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Article'
    end
    object Label10: TLabel
      Left = 672
      Top = 33
      Width = 53
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'FlexID:'
    end
    object Label11: TLabel
      Left = 672
      Top = 57
      Width = 53
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SID:'
    end
    object Label12: TLabel
      Left = 669
      Top = 8
      Width = 57
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'ReportID:'
    end
    object edt2: TEdit
      Left = 346
      Top = 29
      Width = 103
      Height = 24
      Color = cl3DLight
      TabOrder = 0
    end
    object edt1: TEdit
      Left = 346
      Top = 4
      Width = 103
      Height = 24
      Color = cl3DLight
      TabOrder = 1
    end
    object DTP1: TDateTimePicker
      Left = 66
      Top = 3
      Width = 97
      Height = 24
      Date = 39284.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677295636570000000
      TabOrder = 2
    end
    object DTP2: TDateTimePicker
      Left = 177
      Top = 3
      Width = 102
      Height = 24
      Date = 39284.677664201390000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677664201390000000
      TabOrder = 3
    end
    object Button1: TButton
      Left = 820
      Top = 50
      Width = 74
      Height = 29
      Caption = 'Query'
      TabOrder = 4
      OnClick = Button1Click
    end
    object edt3: TEdit
      Left = 104
      Top = 29
      Width = 174
      Height = 24
      TabOrder = 5
    end
    object Button2: TButton
      Left = 899
      Top = 51
      Width = 74
      Height = 28
      Caption = 'Excel'
      TabOrder = 6
      OnClick = Button2Click
    end
    object chk1: TCheckBox
      Left = 8
      Top = 7
      Width = 50
      Height = 17
      Caption = 'Date'
      Checked = True
      State = cbChecked
      TabOrder = 7
    end
    object edt4: TEdit
      Left = 520
      Top = 4
      Width = 65
      Height = 24
      Color = cl3DLight
      TabOrder = 8
    end
    object edt5: TEdit
      Left = 600
      Top = 4
      Width = 65
      Height = 24
      Color = cl3DLight
      TabOrder = 9
    end
    object edtRy: TEdit
      Left = 346
      Top = 54
      Width = 103
      Height = 24
      TabOrder = 10
    end
    object CustPo: TEdit
      Left = 520
      Top = 29
      Width = 145
      Height = 24
      TabOrder = 11
    end
    object edtArticle: TEdit
      Left = 520
      Top = 53
      Width = 145
      Height = 24
      TabOrder = 12
    end
    object chk2: TCheckBox
      Left = 104
      Top = 56
      Width = 73
      Height = 17
      Caption = 'Only Lab'
      Checked = True
      State = cbChecked
      TabOrder = 13
    end
    object chksample: TCheckBox
      Left = 184
      Top = 56
      Width = 105
      Height = 17
      Caption = 'Sample Send'
      TabOrder = 14
    end
    object Button3: TButton
      Left = 899
      Top = 19
      Width = 74
      Height = 29
      Caption = 'Weekly'
      TabOrder = 15
      OnClick = Button3Click
    end
    object FlexID: TEdit
      Left = 727
      Top = 29
      Width = 90
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 16
    end
    object SIDEdit: TEdit
      Left = 727
      Top = 53
      Width = 89
      Height = 24
      Color = cl3DLight
      TabOrder = 17
      OnKeyPress = SIDEditKeyPress
    end
    object ReportIDEdit: TEdit
      Left = 728
      Top = 4
      Width = 89
      Height = 24
      Color = cl3DLight
      TabOrder = 18
    end
  end
  object qry_Qc: TQuery
    AfterOpen = qry_QcAfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'if object_id('#39'tempdb..#Material'#39') is not null '
      'begin drop table #Material end'
      
        'select mc.No_ID, mc.CLBH, mc.CGNO, mc.DateInput, mc.LB, mc.ZSBH,' +
        'mc.RY,mc.Article,mc.CustPO, mc.Qty,mc.Tracking, mc.Lab_Check, mc' +
        '.Lab_Reason, mc.Lab_Result, mc.Lab_Date'
      
        '   ,mc.Lab_UserID, mc.Lab_Num, mc.Final_Status, mc.Final_Remark,' +
        ' mc.UserDate,mc.UserID,mc.Remark,mc.File_Name_Lab, mc.Lab_Finish' +
        'Date, mc.Lab_PDM_ID, mc.T2Test_Result'
      
        '   ,mc.Comparision, mc.Lab_PDM_IDT2, mc.Receducing_TLSP, mc.Lab_' +
        'ConfirmDate,mc.Lab_DateRemark, mc.RKNO,mc.PDM_File_Name'
      
        #9'  ,clzl.YWPM as MaterialName,ZSZL.ZSYWJC as SupplierName,clzl.D' +
        'WBH'
      'from MaterialQCcheck mc'
      #9#9#9#9#9'left join clzl on clzl.CLDH = mc.CLBH'
      #9#9#9#9#9'left Join ZSZL on ZSZL.ZSDH =mc.ZSBH'
      'where mc.GSBH='#39'VA12'#39' '
      '       and CONVERT(varchar(10),mc.DateInput,111) between'
      '           '#39'2019/04/08'#39' and '#39'2019/04/08'#39' '
      '       and Tracking='#39'1'#39' '
      '       and mc.CGNO like '#39'%'#39' '
      '       and mc.CLBH like '#39'%'#39' '
      '       and ZSZL.ZSYWJC like '#39'%'#39' '
      'order by mc.Userdate desc,mc.CLBH,LB asc'
      '')
    UpdateObject = Upd_QC
    Left = 264
    Top = 217
    object qry_QcNo_ID: TAutoIncField
      FieldName = 'No_ID'
    end
    object qry_QcCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object qry_QcRKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object qry_QcCGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object qry_QcDateInput: TDateTimeField
      FieldName = 'DateInput'
    end
    object qry_QcTime: TIntegerField
      FieldName = 'LB'
    end
    object qry_QcZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object qry_QcQty: TCurrencyField
      FieldName = 'Qty'
    end
    object qry_QcTracking: TStringField
      FieldName = 'Tracking'
      FixedChar = True
      Size = 10
    end
    object qry_QcLab_Check: TStringField
      FieldName = 'Lab_Check'
      OnChange = qry_QcLab_CheckChange
      FixedChar = True
      Size = 50
    end
    object qry_QcLab_Reason: TStringField
      FieldName = 'Lab_Reason'
      FixedChar = True
      Size = 50
    end
    object qry_QcLab_Result: TStringField
      FieldName = 'Lab_Result'
      OnChange = qry_QcLab_ResultChange
      FixedChar = True
      Size = 50
    end
    object qry_QcLab_Date: TDateTimeField
      FieldName = 'Lab_Date'
    end
    object qry_QcLab_UserID: TStringField
      FieldName = 'Lab_UserID'
      FixedChar = True
      Size = 10
    end
    object qry_QcLab_Num: TStringField
      FieldName = 'Lab_Num'
      FixedChar = True
      Size = 50
    end
    object qry_QcFinal_Status: TStringField
      FieldName = 'Final_Status'
      FixedChar = True
      Size = 10
    end
    object qry_QcFinal_Remark: TStringField
      FieldName = 'Final_Remark'
      FixedChar = True
      Size = 50
    end
    object qry_QcUserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object qry_QcUserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 10
    end
    object qry_QcRemark: TStringField
      FieldName = 'Remark'
      FixedChar = True
      Size = 100
    end
    object qry_QcFile_Name_Lab: TStringField
      FieldName = 'File_Name_Lab'
      FixedChar = True
      Size = 50
    end
    object qry_QcLab_FinishDate: TDateTimeField
      FieldName = 'Lab_FinishDate'
    end
    object qry_QcLab_PDM_ID: TStringField
      FieldName = 'Lab_PDM_ID'
      FixedChar = True
    end
    object qry_QcT2Test_Result: TStringField
      FieldName = 'T2Test_Result'
      FixedChar = True
    end
    object qry_QcComparision: TStringField
      FieldName = 'Comparision'
      FixedChar = True
    end
    object qry_QcLab_PDM_IDT2: TStringField
      FieldName = 'Lab_PDM_IDT2'
      FixedChar = True
      Size = 50
    end
    object qry_QcReceducing_TLSP: TStringField
      FieldName = 'Receducing_TLSP'
      FixedChar = True
      Size = 50
    end
    object qry_QcLab_ConfirmDate: TDateTimeField
      FieldName = 'Lab_ConfirmDate'
    end
    object qry_QcLab_DateRemark: TDateTimeField
      FieldName = 'Lab_DateRemark'
    end
    object qry_QcMaterialName: TStringField
      FieldName = 'MaterialName'
      FixedChar = True
      Size = 200
    end
    object qry_QcSupplierName: TStringField
      FieldName = 'SupplierName'
      FixedChar = True
      Size = 200
    end
    object qry_QcDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object qry_QcPDM_File_Name: TStringField
      FieldName = 'PDM_File_Name'
      FixedChar = True
      Size = 50
    end
    object qry_QcRY: TStringField
      FieldName = 'RY'
      FixedChar = True
      Size = 255
    end
    object qry_QcArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
      Size = 255
    end
    object qry_QcCustPO: TStringField
      FieldName = 'CustPO'
      FixedChar = True
      Size = 255
    end
  end
  object DS_Qc: TDataSource
    DataSet = qry_Qc
    Left = 264
    Top = 249
  end
  object Upd_QC: TUpdateSQL
    ModifySQL.Strings = (
      'update MaterialQCcheck set '#9
      #9#9'Lab_Check=:Lab_Check,'
      #9#9'Lab_Reason=:Lab_Reason,'
      #9#9'Lab_Result=:Lab_Result,'
      #9#9'Lab_Date=getdate(),'
      #9#9'Lab_UserID=:Lab_UserID,'
      #9#9'Lab_Num=:Lab_Num,'
      '                                Lab_FinishDate=:Lab_FinishDate,'
      '                                Lab_PDM_ID=:Lab_PDM_ID,'
      'T2Test_Result=:T2Test_Result,'
      'Comparision=:Comparision,'
      'Lab_PDM_IDT2=:Lab_PDM_IDT2,'
      'Receducing_TLSP=:Receducing_TLSP,'
      'Lab_ConfirmDate=:Lab_ConfirmDate,'
      'Lab_DateRemark=:Lab_DateRemark,'
      'Remark=:Remark'
      'where No_ID=:No_ID'
      '')
    DeleteSQL.Strings = (
      '')
    Left = 264
    Top = 281
  end
  object OpenDialog1: TOpenDialog
    Filter = '*.xlsx;*.xls|*.xlsx;*.xls'
    Left = 668
    Top = 242
  end
  object SaveDialog1: TSaveDialog
    Filter = '*.xlsx;*.xls|*.xlsx;*.xls'
    Left = 700
    Top = 242
  end
  object PopupMenu1: TPopupMenu
    Left = 635
    Top = 245
    object MultirowsFinisheddate1: TMenuItem
      Caption = 'Multi Rows Finished date'
      OnClick = MultirowsFinisheddate1Click
    end
    object MultirowsResult1: TMenuItem
      Caption = 'Multi Rows Result'
      OnClick = MultirowsResult1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object mnu1: TMenuItem
      Caption = 'Upload Guarantee letter'
      Enabled = False
      OnClick = mnu1Click
    end
    object mnu2: TMenuItem
      Caption = 'Download Guarantee letter'
      Enabled = False
      OnClick = mnu2Click
    end
    object mnu3: TMenuItem
      Caption = 'Delete Guarantee letter'
      Enabled = False
      OnClick = mnu3Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object UploadPDMReport1: TMenuItem
      Caption = 'Upload PDM Report'
      OnClick = UploadPDMReport1Click
    end
    object DownloadPDMReport1: TMenuItem
      Caption = 'Download PDM Report'
      OnClick = DownloadPDMReport1Click
    end
    object DeletePDMReport1: TMenuItem
      Caption = 'Delete PDM Report'
      OnClick = DeletePDMReport1Click
    end
  end
  object qry1: TQuery
    DatabaseName = 'DB'
    Left = 296
    Top = 249
  end
  object qry_Rate: TQuery
    AfterOpen = qry_RateAfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT a.Matching,b.NotMatching,a.Matching + b.NotMatching AS To' +
        'tal,ROUND((a.Matching*1.0/(a.Matching + b.NotMatching))*100,2) A' +
        'S RateMat'
      'FROM ('
      'select 1 as ID,count(*) AS Matching'
      'from MaterialQCcheck m2'
      'WHERE Comparision='#39'Matching'#39
      ')a LEFT JOIN ('
      'select 1 as ID,count(*) AS NotMatching'
      'from MaterialQCcheck m2 '
      'WHERE Comparision='#39'Not Matching'#39
      ')b ON a.ID=b.ID')
    Left = 298
    Top = 218
    object qry_RateRateMat: TFloatField
      FieldName = 'RateMat'
    end
  end
  object qry_RY: TQuery
    DatabaseName = 'DB'
    DataSource = DS_Qc
    SQL.Strings = (
      
        'select mr.*,lbzls.ywsm as COUNTRY,xxzl.XieMing  as ModelName,do.' +
        'XieXing,do.SheHao'
      ',MaterialQCcheck.CLBH'
      'FROM MaterialQCcheck_RY mr'
      '  Left join DDZL do ON mr.RY=do.DDBH'
      
        '  Left join xxzl on do.xiexing=xxzl.xiexing and do.shehao=xxzl.s' +
        'hehao'
      '  left join lbzls on do.DDGB=lbzls.lbdh and lbzls.lb='#39'13'#39
      '  left join MaterialQCcheck on mr.No_ID=MaterialQCcheck.No_ID'
      'where mr.No_ID=:No_ID')
    Left = 260
    Top = 439
    ParamData = <
      item
        DataType = ftAutoInc
        Name = 'No_ID'
        ParamType = ptUnknown
        Size = 4
      end>
    object qry_RYNo_ID: TIntegerField
      FieldName = 'No_ID'
      Origin = 'DB.MaterialQCcheck_RY.No_ID'
    end
    object qry_RYRY: TStringField
      FieldName = 'RY'
      Origin = 'DB.MaterialQCcheck_RY.RY'
      FixedChar = True
      Size = 15
    end
    object qry_RYArticle: TStringField
      FieldName = 'Article'
      Origin = 'DB.MaterialQCcheck_RY.Article'
      FixedChar = True
      Size = 15
    end
    object qry_RYAdidasPO: TStringField
      FieldName = 'CustPO'
      Origin = 'DB.MaterialQCcheck_RY.AdidasPO'
      FixedChar = True
      Size = 15
    end
    object qry_RYRemark: TStringField
      FieldName = 'Remark'
      Origin = 'DB.MaterialQCcheck_RY.Remark'
      FixedChar = True
      Size = 50
    end
    object qry_RYYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.MaterialQCcheck_RY.YN'
      FixedChar = True
      Size = 10
    end
    object qry_RYUserID: TStringField
      FieldName = 'UserID'
      Origin = 'DB.MaterialQCcheck_RY.UserID'
      FixedChar = True
      Size = 15
    end
    object qry_RYUserDate: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'DB.MaterialQCcheck_RY.UserDate'
    end
    object qry_RYCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      FixedChar = True
      Size = 50
    end
    object qry_RYModelName: TStringField
      FieldName = 'ModelName'
      FixedChar = True
      Size = 50
    end
    object qry_RYXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object qry_RYSheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object qry_RYCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
  end
  object DS_RY: TDataSource
    DataSet = qry_RY
    Left = 292
    Top = 439
  end
  object qry_Mat: TQuery
    DatabaseName = 'DB'
    DataSource = DS_RY
    SQL.Strings = (
      'select XXZLS.BWBH,BWZL.ywsm as BWMC,XXZLS.CLBH,CLZL.YWPM as CLMC'
      'FROM XXZLS'
      
        #9#9#9'LEFT JOIN BWZL  ON XXZLS.BWBH = BWZL.bwdh                    ' +
        '           '
      #9#9#9'LEFT JOIN CLZL   ON XXZLS.CLBH = CLZL.cldh'
      
        'where XXZLS.CLBH=:CLBH and XXZLS.XieXing=:XieXing and XXZLS.sheh' +
        'ao=:Shehao'
      'group by XXZLS.BWBH,BWZL.ywsm,XXZLS.CLBH,CLZL.YWPM'
      'UNION ALL'
      
        'select XXZLS.BWBH,BWZL.ywsm as BWMC,CLZHZL.CLDH1 AS CLBH,CLZL.YW' +
        'PM as CLMC'
      'FROM XXZLS'
      #9#9#9'INNER  JOIN CLZHZL   ON XXZLS.CLBH = CLZHZL.cldh'
      #9#9#9'LEFT JOIN BWZL  ON XXZLS.BWBH = BWZL.bwdh'
      #9#9#9'LEFT JOIN CLZL   ON CLZHZL.CLDH1 = CLZL.cldh'
      
        'where CLZHZL.CLDH1=:CLBH and XXZLS.XieXing=:XieXing and XXZLS.sh' +
        'ehao=:Shehao'
      'group by XXZLS.BWBH,BWZL.ywsm,CLZHZL.CLDH1,CLZL.YWPM'
      'ORDER BY BWBH')
    Left = 956
    Top = 462
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'XieXing'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'SheHao'
        ParamType = ptUnknown
        Size = 6
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'XieXing'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'Shehao'
        ParamType = ptUnknown
      end>
    object qry_MatBWBH: TStringField
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object qry_MatBWMC: TStringField
      FieldName = 'BWMC'
      FixedChar = True
      Size = 40
    end
    object qry_MatCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object qry_MatCLMC: TStringField
      FieldName = 'CLMC'
      FixedChar = True
      Size = 200
    end
  end
  object DS2: TDataSource
    DataSet = qry_Mat
    Left = 996
    Top = 462
  end
  object BWBH: TQuery
    DatabaseName = 'DB'
    DataSource = DS_RY
    SQL.Strings = (
      'select XXZLS.BWBH,BWZL.ywsm as BWMC,XXZLS.CLBH,CLZL.YWPM as CLMC'
      'FROM XXZLS'
      
        #9#9#9'LEFT JOIN BWZL  ON XXZLS.BWBH = BWZL.bwdh                    ' +
        '           '
      
        #9#9#9'LEFT JOIN CLZL   ON XXZLS.CLBH = CLZL.cldh                   ' +
        '           '
      
        #9#9#9'LEFT JOIN LBZLS ON SUBSTRING(XXZLS.CLBH,1,1) = LBZLS.lbdh AND' +
        ' LBZLS.LB='#39'05'#39'                             '
      #9#9#9'LEFT JOIN ZSZL on ZSZL.ZSDH=XXZLS.CSBH'
      
        #9#9#9'left join ddzl on xxzls.xiexing=ddzl.xiexing and xxzls.shehao' +
        '=ddzl.shehao'
      
        #9#9#9'left join MaterialQCcheck_RY on MaterialQCcheck_RY.RY=ddzl.DD' +
        'BH'
      'where CLBH =:CLBH  and  MaterialQCcheck_RY.No_ID=:No_ID'
      'group by XXZLS.BWBH,BWZL.ywsm,XXZLS.CLBH,CLZL.YWPM'
      'UNION ALL'
      
        'select XXZLS.BWBH,BWZL.ywsm as BWMC,CLZHZL.CLDH1 AS CLBH,CLZL.YW' +
        'PM as CLMC'
      'FROM XXZLS'
      #9#9#9'INNER  JOIN CLZHZL   ON XXZLS.CLBH = CLZHZL.cldh'
      #9#9#9'LEFT JOIN BWZL  ON XXZLS.BWBH = BWZL.bwdh'
      #9#9#9'LEFT JOIN CLZL   ON CLZHZL.CLDH1 = CLZL.cldh'
      
        #9#9#9'LEFT JOIN LBZLS ON SUBSTRING(XXZLS.CLBH,1,1) = LBZLS.lbdh AND' +
        ' LBZLS.LB='#39'05'#39
      #9#9#9'LEFT JOIN ZSZL on ZSZL.ZSDH=clzhzl.zsdh'
      
        #9#9#9'left join ddzl on xxzls.xiexing=ddzl.xiexing and xxzls.shehao' +
        '=ddzl.shehao'
      
        #9#9#9'left join MaterialQCcheck_RY on MaterialQCcheck_RY.RY=ddzl.DD' +
        'BH'
      'where CLZHZL.CLDH1=:CLBH and MaterialQCcheck_RY.No_ID=:No_ID'
      'group by XXZLS.BWBH,BWZL.ywsm,CLZHZL.CLDH1,CLZL.YWPM'
      'ORDER BY BWBH')
    Left = 721
    Top = 469
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftInteger
        Name = 'No_ID'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'No_ID'
        ParamType = ptUnknown
      end>
  end
end
