object CFMR3: TCFMR3
  Left = 237
  Top = 202
  Width = 966
  Height = 480
  Caption = 'Confirm Of R3'
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
  object Label1: TLabel
    Left = 0
    Top = 30
    Width = 41
    Height = 16
    Caption = 'RKNO:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 948
    Height = 90
    Align = alTop
    TabOrder = 0
    object Label7: TLabel
      Left = 456
      Top = 49
      Width = 87
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'LLNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 456
      Top = 20
      Width = 87
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'LLDate:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 668
      Top = 20
      Width = 25
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'To'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object BB4: TBitBtn
      Left = 69
      Top = 10
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
      TabOrder = 0
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
      Left = 128
      Top = 10
      Width = 60
      Height = 60
      Hint = 'Save Current'
      Caption = 'Save'
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
      Left = 187
      Top = 10
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
      TabOrder = 2
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
      Left = 246
      Top = 10
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
      TabOrder = 3
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
    object bb3: TBitBtn
      Left = 10
      Top = 10
      Width = 60
      Height = 60
      Hint = 'Modify Current'
      Caption = 'Excel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = bb3Click
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
    object CheckBox1: TCheckBox
      Left = 335
      Top = 20
      Width = 119
      Height = 21
      Caption = 'ALL '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object sd: TDateTimePicker
      Left = 551
      Top = 15
      Width = 108
      Height = 28
      Date = 40775.588594108800000000
      Time = 40775.588594108800000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object ed: TDateTimePicker
      Left = 705
      Top = 15
      Width = 108
      Height = 28
      Date = 40775.588594108800000000
      Time = 40775.588594108800000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object Edit1: TEdit
      Left = 551
      Top = 49
      Width = 149
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object Button2: TButton
      Left = 823
      Top = 42
      Width = 100
      Height = 41
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = Button2Click
    end
  end
  object Panel2: TPanel
    Left = 606
    Top = 90
    Width = 342
    Height = 343
    Align = alRight
    TabOrder = 1
    object DBGridEh2: TDBGridEh
      Left = 10
      Top = 1
      Width = 331
      Height = 341
      Align = alRight
      DataSource = DataSource2
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -15
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      ParentFont = False
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -17
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      Columns = <
        item
          EditButtons = <>
          FieldName = 'ysbh'
          Footers = <>
          Title.Caption = 'Ry#|ysbh'
          Width = 79
        end
        item
          EditButtons = <>
          FieldName = 'xxcc'
          Footers = <>
          Title.Caption = 'Size|xxcc'
          Width = 79
        end
        item
          DisplayFormat = '#,###.##'
          EditButtons = <>
          FieldName = 'OKQTY'
          Footers = <
            item
              Color = clLime
              DisplayFormat = '#,###.##'
              ValueType = fvtSum
            end>
          Title.Caption = #24050#23436#25104#25976'|OKQTY'
          Width = 78
        end>
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 90
    Width = 606
    Height = 343
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -15
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    RowSizingAllowed = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -17
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'llno'
        Footers = <>
        ReadOnly = True
        Title.Caption = #38936#26009#21934#34399'|llno'
        Width = 91
      end
      item
        EditButtons = <>
        FieldName = 'gsbh'
        Footers = <>
        ReadOnly = True
        Title.Caption = #24288#21029'|gsbh'
        Width = 43
      end
      item
        EditButtons = <>
        FieldName = 'scbh'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'RY#|scbh'
        Width = 102
      end
      item
        EditButtons = <>
        FieldName = 'depname'
        Footers = <>
        ReadOnly = True
        Title.Caption = #38936#26009#37096#38272'|depname'
        Width = 104
      end
      item
        EditButtons = <>
        FieldName = 'pairs'
        Footers = <>
        Title.Caption = #35330#21934#37327'|QTY'
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'clbh'
        Footers = <>
        ReadOnly = True
        Title.Caption = #26009#34399'|clbh'
        Width = 78
      end
      item
        DisplayFormat = '#,###'
        EditButtons = <>
        FieldName = 'tempqty'
        Footers = <>
        ReadOnly = True
        Title.Caption = #38936#26009#37327'|tempqty'
        Width = 74
      end
      item
        Color = clYellow
        DisplayFormat = '#,###'
        EditButtons = <>
        FieldName = 'r3qty'
        Footers = <>
        Title.Caption = 'R'#24288#30332#26009'|r3qty'
        Width = 74
      end
      item
        DisplayFormat = '#,###'
        EditButtons = <>
        FieldName = 'qty'
        Footers = <>
        ReadOnly = True
        Title.Caption = #38795#24288#30906#35469'|qty'
        Width = 74
      end
      item
        DisplayFormat = '#,###'
        EditButtons = <>
        FieldName = 'clsl'
        Footers = <>
        ReadOnly = True
        Title.Caption = #38656#27714#37327'|clsl'
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        ReadOnly = True
        Title.Caption = #21697#21517'|ywpm'
        Width = 78
      end>
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    DataSource = DataSource1
    SQL.Strings = (
      
        'select smdd.ysbh,smddss.xxcc,sum(isnull(smddss.qty,0)*isnull(smd' +
        'dss.okcts,0)) as OKQTY'
      ' from smdd'
      'left join smddss on smdd.ddbh=smddss.ddbh'
      'where'
      '     smdd.gsbh='#39'VR3'#39' and'
      '     smddss.gxlb='#39'O'#39' and smdd.gxlb='#39'O'#39
      '     and ysbh=:scbh'
      'group by smdd.ysbh,smddss.xxcc')
    Left = 656
    Top = 185
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'scbh'
        ParamType = ptUnknown
        Size = 16
      end>
  end
  object Query2: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'select kcll.llno,kcll.gsbh,kclls.scbh,bdepartment.depname,kclls.' +
        'clbh,'
      
        #9'clzl.ywpm,kclls.tempqty,kclls.qty,kclls.clsl,isnull(kclls.r3qty' +
        ',0)  as r3qty,'
      '                 ddzl.pairs'
      'from kclls '
      'left join kcll on kcll.llno=kclls.llno'
      'left join bdepartment on kcll.depid=bdepartment.id'
      'left join clzl on kclls.clbh=clzl.cldh'
      'left join ddzl on ddzl.ddbh=kclls.scbh'
      'where kcll.userdate > '#39'2011/08/01'#39' and  qty = 0'
      
        #9'and ((clbh>='#39'J03'#39' and clbh<'#39'J04'#39') or (clbh>='#39'I01'#39' and clbh<'#39'I02' +
        #39'))'
      'order by kcll.llno,kclls.scbh,kclls.clbh')
    UpdateObject = UpdateSQL1
    Left = 304
    Top = 185
  end
  object UpdateSQL1: TUpdateSQL
    Left = 344
    Top = 185
  end
  object DataSource1: TDataSource
    DataSet = Query2
    Left = 304
    Top = 153
  end
  object DataSource2: TDataSource
    DataSet = Query1
    Left = 656
    Top = 153
  end
end
