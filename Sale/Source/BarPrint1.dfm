object BarPrint: TBarPrint
  Left = 171
  Top = 201
  Width = 1016
  Height = 500
  Caption = 'BarPrint'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 585
    Top = 81
    Width = 423
    Height = 388
    Align = alClient
    DataSource = DS2
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = 16765650
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CARTONBAR'
        Footers = <
          item
            FieldName = 'CARTONBAR'
            ValueType = fvtCount
          end>
        ReadOnly = True
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        Width = 30
      end
      item
        Alignment = taRightJustify
        EditButtons = <>
        FieldName = 'XH'
        Footers = <>
        ReadOnly = True
        Width = 29
      end
      item
        Alignment = taRightJustify
        EditButtons = <>
        FieldName = 'SB'
        Footers = <>
        ReadOnly = True
        Width = 27
      end
      item
        EditButtons = <>
        FieldName = 'sgw'
        Footers = <>
        Title.Caption = 'SGW'
        Width = 39
      end
      item
        EditButtons = <>
        FieldName = 'LPNBarCode'
        Footers = <>
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'KHPO'
        Footers = <>
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'KHDDBH1'
        Footers = <>
        Width = 111
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 81
    Width = 585
    Height = 388
    Align = alLeft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 583
      Height = 210
      Align = alClient
      TabOrder = 0
      object DBGridEh2: TDBGridEh
        Left = 1
        Top = 1
        Width = 581
        Height = 208
        Align = alClient
        DataSource = DS1
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16765650
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ParentFont = False
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnGetCellParams = DBGridEh2GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DDBH'
            Footers = <
              item
                FieldName = 'DDBH'
                ValueType = fvtCount
              end>
            Width = 83
          end
          item
            EditButtons = <>
            FieldName = 'KHPO'
            Footers = <>
            Width = 83
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            Width = 123
          end
          item
            EditButtons = <>
            FieldName = 'XieMing'
            Footers = <>
            Width = 190
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <
              item
                FieldName = 'Qty'
                ValueType = fvtSum
              end>
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'okQty'
            Footers = <>
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'CTS'
            Footers = <
              item
                FieldName = 'CTS'
                ValueType = fvtSum
              end>
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'SB'
            Footers = <>
            Width = 20
          end>
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 211
      Width = 583
      Height = 79
      Align = alBottom
      TabOrder = 1
      object Button3: TButton
        Left = 8
        Top = 18
        Width = 89
        Height = 34
        Caption = 'SEND'
        TabOrder = 0
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 112
        Top = 18
        Width = 81
        Height = 34
        Caption = 'DELET'
        TabOrder = 1
        OnClick = Button4Click
      end
      object bbt5: TBitBtn
        Left = 423
        Top = 3
        Width = 67
        Height = 57
        Hint = 'Modify Current'
        Caption = 'Print'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = bbt5Click
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          0800000000000001000000000000000000000001000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
          A6000020400000206000002080000020A0000020C0000020E000004000000040
          20000040400000406000004080000040A0000040C0000040E000006000000060
          20000060400000606000006080000060A0000060C0000060E000008000000080
          20000080400000806000008080000080A0000080C0000080E00000A0000000A0
          200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
          200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
          200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
          20004000400040006000400080004000A0004000C0004000E000402000004020
          20004020400040206000402080004020A0004020C0004020E000404000004040
          20004040400040406000404080004040A0004040C0004040E000406000004060
          20004060400040606000406080004060A0004060C0004060E000408000004080
          20004080400040806000408080004080A0004080C0004080E00040A0000040A0
          200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
          200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
          200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
          20008000400080006000800080008000A0008000C0008000E000802000008020
          20008020400080206000802080008020A0008020C0008020E000804000008040
          20008040400080406000804080008040A0008040C0008040E000806000008060
          20008060400080606000806080008060A0008060C0008060E000808000008080
          20008080400080806000808080008080A0008080C0008080E00080A0000080A0
          200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
          200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
          200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
          2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
          2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
          2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
          2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
          2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
          2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
          2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFF12085BF7
          FFAD00000052FFFF0000FFFF12085BF7FFAD00000052FFFF0000FFFF12085BF7
          FFAD00000052FFFF0000FFFF12085BF7FFAD00000052FFFF0000FFFF12085BF7
          FFAD00000052FFFF0000FFFF12085BF7FFAD00000052FFFF0000FFFF12085BF7
          FFAD00000052FFFF0000FFFF12085BF7FFAD00000052FFFF0000FFFF12085BF7
          FFAD00000052FFFF0000FFFF12085BF7FFAD00000052FFFF0000FFFF12085BF7
          FFAD00000052FFFF0000FFFF12085BF7FFAD00000052FFFF0000FFFF12085BF7
          FFAD00000052FFFF0000FFFF12085BF7FFAD00000052FFFF0000FFFF12085BF7
          FFAD00000052FFFF0000FFFF12085BF7FFAD00000052FFFF0000}
        Layout = blGlyphTop
      end
      object Button5: TButton
        Left = 312
        Top = 18
        Width = 97
        Height = 34
        Caption = 'Recalculation'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Symbol'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 3
        OnClick = Button5Click
      end
      object Button6: TButton
        Left = 202
        Top = 18
        Width = 97
        Height = 34
        Caption = 'REComput ALL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Segoe UI Symbol'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnClick = Button6Click
      end
      object bbt6: TBitBtn
        Left = 511
        Top = 3
        Width = 67
        Height = 57
        Hint = 'Modify Current'
        Caption = 'PO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = bbt6Click
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E000000000000000000008C8C8C838383
          848484848484828282848484808080FFFFFF6C6C6CFFFFFF6F6F6FFFFFFF6A6A
          6AFFFFFF6E6E6EE8E8E80000004B4B4B5353535F5F5F5D5D5D505050000000DB
          DBDB4C4C4C5858584949495252524747475656563A3A3AD6D6D6000000E5E5E5
          9595958B8B8B888888FFFFFF000000DEDEDE8282824C4C4C6363634E4E4E7171
          71494949545454F1F1F1000000EDEDED000000000000000000ECECEC000000E4
          E4E44E4E4E6565655151516565654B4B4B6767673D3D3DDCDCDC000000E9E9E9
          000000000000000000EEEEEE000000E0E0E08686864747476666664C4C4C6B6B
          6B4B4B4B545454F2F2F2000000EFEFEF5757576B6B6B5D5D5DFAFAFA000000E2
          E2E25454546666665050506464644A4A4A676767444444D2D2D2000000606060
          8A8A8A878787878787868686000000DFDFDF7F7F7F3737376464643E3E3E6565
          653F3F3F525252EBEBEB7D7D7D5A5A5A5C5C5C5858585959595C5C5C5F5F5FE4
          E4E4434343FFFFFF474747FFFFFF424242FFFFFF434343DBDBDB8E8E8E878787
          888888888888868686888888848484FFFFFF8282827979798787877A7A7A8686
          867A7A7A848484FEFEFE0000004B4B4B5353535F5F5F5D5D5D505050000000E6
          E6E60000004B4B4B5353535F5F5F5D5D5D505050000000CFCFCF000000E5E5E5
          9595958B8B8B888888FFFFFF000000EDEDED000000E5E5E59595958B8B8B8888
          88FFFFFF000000D6D6D6000000EDEDED000000000000000000ECECEC000000F0
          F0F0000000EDEDED000000000000000000ECECEC000000D8D8D8000000E9E9E9
          000000000000000000EEEEEE000000F0F0F0000000E9E9E90000000000000000
          00EEEEEE000000D8D8D8000000EFEFEF5757576B6B6B5D5D5DFAFAFA000000EE
          EEEE000000EFEFEF5757576B6B6B5D5D5DFAFAFA000000D7D7D7000000606060
          8A8A8A878787878787868686000000EEEEEE0000006060608A8A8A8787878787
          87868686000000D6D6D67E7E7E5D5D5D6060605C5C5C5D5D5D606060636363E6
          E6E67373735D5D5D6060605C5C5C5D5D5D606060636363DBDBDB}
        Layout = blGlyphTop
      end
      object DefaultPCK: TCheckBox
        Left = 422
        Top = 61
        Width = 97
        Height = 17
        Caption = 'Default Style'
        Checked = True
        State = cbChecked
        TabOrder = 6
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 290
      Width = 583
      Height = 97
      Align = alBottom
      TabOrder = 2
      object Label6: TLabel
        Left = 176
        Top = 51
        Width = 17
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'To'
      end
      object Label5: TLabel
        Left = 32
        Top = 50
        Width = 34
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'From:'
      end
      object Label3: TLabel
        Left = 8
        Top = 8
        Width = 138
        Height = 16
        AutoSize = False
        Caption = 'Additional Carton label:'
      end
      object Edit4: TEdit
        Left = 199
        Top = 46
        Width = 105
        Height = 24
        TabOrder = 0
        OnKeyPress = Edit4KeyPress
      end
      object Edit3: TEdit
        Left = 70
        Top = 47
        Width = 97
        Height = 24
        TabOrder = 1
        OnKeyPress = Edit3KeyPress
      end
      object Button2: TButton
        Left = 316
        Top = 41
        Width = 75
        Height = 33
        Caption = 'Add  >>'
        TabOrder = 2
        OnClick = Button2Click
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 1008
    Height = 81
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 77
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SpecNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 216
      Top = 8
      Width = 56
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'ArtName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 400
      Top = 8
      Width = 55
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'X/F Date:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 560
      Top = 8
      Width = 17
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'To'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 200
      Top = 42
      Width = 68
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Style:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 24
      Top = 44
      Width = 67
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'KHPO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 96
      Top = 4
      Width = 97
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 272
      Top = 4
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Button1: TButton
      Left = 531
      Top = 36
      Width = 70
      Height = 33
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
    object DTP1: TDateTimePicker
      Left = 456
      Top = 4
      Width = 97
      Height = 24
      Date = 39783.568310717590000000
      Format = 'yyyy/MM/dd'
      Time = 39783.568310717590000000
      TabOrder = 3
    end
    object DTP2: TDateTimePicker
      Left = 584
      Top = 4
      Width = 97
      Height = 24
      Date = 39783.569282222220000000
      Format = 'yyyy/MM/dd'
      Time = 39783.569282222220000000
      TabOrder = 4
    end
    object PackingStyleCB: TComboBox
      Left = 271
      Top = 39
      Width = 193
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 5
      Text = 'Include Inbox'
      OnChange = PackingStyleCBChange
      Items.Strings = (
        'Include Inbox'
        'Not Include Inbox'
        '12 pairs(2*3, 2 Layer)'
        'Include Inbox & bag(361 M'#39's)'
        'Include Inbox & bag(361 W'#39's)')
    end
    object BgWeight: TEdit
      Left = 479
      Top = 40
      Width = 41
      Height = 24
      Color = clYellow
      TabOrder = 6
      Text = '0'
      Visible = False
    end
    object Edit5: TEdit
      Left = 95
      Top = 39
      Width = 97
      Height = 24
      TabOrder = 7
    end
  end
  object Memo1: TMemo
    Left = 760
    Top = 168
    Width = 1
    Height = 17
    Lines.Strings = (
      'M'
      'e'
      'm'
      'o'
      '1')
    TabOrder = 3
  end
  object YWDD: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select YWDD.DDBH,XXZL.Article,XXZL.XieMing,YWDD.Qty,YWBZPOS.CTS ' +
        ',YWCP.SB,DDZL.KHPO'
      'from YWDD'
      'left join DDZL on YWDD.YSBH=DDZl.DDBH'
      
        'left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZ' +
        'L.SheHao  '
      'left join (select YWBZPOS.DDBH,sum(YWBZPOS.CTS) as CTS'
      '           from (select distinct DDBH,XH,CTS from YWBZPOS'
      '                 where DDBH like '#39'%'#39') YWBZPOS '
      
        '                 group by YWBZPOS.DDBH) YWBZPOS on YWBZPOS.DDBH=' +
        'YWDD.DDBH'
      
        'left join (select top 1 DDBH ,isnull(SB,0) SB from YWCP  order b' +
        'y SB DESC) YWCP on YWCP.DDBH=YWDD.DDBH '
      'where DDZL.DDBH like '#39'%'#39
      '      and XXZL.XieMing like '#39'%%'#39
      
        '      and convert(smalldatetime,convert(varchar,YWDD.ETD,111)) b' +
        'etween '
      '      '#39'2009/03/01'#39'and '#39'2009/03/31'#39
      '      and YWDD.GSBH='#39'VA12'#39
      '      and YWBZPOS.DDBH is not null '
      'order by YWDD.DDBH')
    Left = 260
    Top = 124
    object YWDDDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object YWDDArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object YWDDXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object YWDDQty: TFloatField
      FieldName = 'Qty'
      DisplayFormat = '##,#0'
    end
    object YWDDCTS: TIntegerField
      FieldName = 'CTS'
      DisplayFormat = '##,#0'
    end
    object YWDDokQty: TIntegerField
      FieldName = 'okQty'
    end
    object YWDDSB: TStringField
      FieldName = 'SB'
      FixedChar = True
      Size = 1
    end
    object YWDDKHPO: TStringField
      FieldName = 'KHPO'
      FixedChar = True
      Size = 25
    end
  end
  object DS1: TDataSource
    DataSet = YWDD
    Left = 292
    Top = 124
  end
  object CartonBar: TQuery
    CachedUpdates = True
    AfterOpen = CartonBarAfterOpen
    DatabaseName = 'DB'
    DataSource = DS1
    RequestLive = True
    SQL.Strings = (
      'select YWCP.*,DDZL.KHPO,YWDD.KHDDBH1'
      'from YWCP'
      'left join YWDD on YWDD.DDBH=YWCP.DDBH'
      'left join DDZL on DDZL.DDBH=YWDD.YSBH'
      'where YWCP.DDBH in (select DDBH from YWDD where YSBH=:DDBH ) '
      'order by CARTONBAR')
    UpdateObject = UpBar
    Left = 632
    Top = 120
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'DDBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object CartonBarCARTONBAR: TStringField
      FieldName = 'CARTONBAR'
      Origin = 'DB.YWCP.CARTONBAR'
      FixedChar = True
    end
    object CartonBarDDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.YWCP.DDBH'
      FixedChar = True
      Size = 15
    end
    object CartonBarCARTONNO: TIntegerField
      FieldName = 'CARTONNO'
      Origin = 'DB.YWCP.CARTONNO'
    end
    object CartonBarXH: TStringField
      FieldName = 'XH'
      Origin = 'DB.YWCP.XH'
      FixedChar = True
      Size = 3
    end
    object CartonBarQty: TIntegerField
      FieldName = 'Qty'
      Origin = 'DB.YWCP.Qty'
      DisplayFormat = '##,#0'
    end
    object CartonBarSB: TStringField
      FieldName = 'SB'
      Origin = 'DB.YWCP.SB'
      FixedChar = True
      Size = 1
    end
    object CartonBarINCS: TSmallintField
      FieldName = 'INCS'
      Origin = 'DB.YWCP.INCS'
    end
    object CartonBarINDATE: TDateTimeField
      FieldName = 'INDATE'
      Origin = 'DB.YWCP.INDATE'
    end
    object CartonBarOUTCS: TSmallintField
      FieldName = 'OUTCS'
      Origin = 'DB.YWCP.OUTCS'
    end
    object CartonBarOUTDATE: TDateTimeField
      FieldName = 'OUTDATE'
      Origin = 'DB.YWCP.OUTDATE'
    end
    object CartonBarINSPECTCS: TIntegerField
      FieldName = 'INSPECTCS'
      Origin = 'DB.YWCP.INSPECTCS'
    end
    object CartonBarINSPECTDATE: TDateTimeField
      FieldName = 'INSPECTDATE'
      Origin = 'DB.YWCP.INSPECTDATE'
    end
    object CartonBarEXEDATE: TDateTimeField
      FieldName = 'EXEDATE'
      Origin = 'DB.YWCP.EXEDATE'
    end
    object CartonBarMEMO: TStringField
      FieldName = 'MEMO'
      Origin = 'DB.YWCP.MEMO'
      FixedChar = True
    end
    object CartonBarUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.YWCP.USERID'
      FixedChar = True
    end
    object CartonBarUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.YWCP.USERDATE'
    end
    object CartonBarYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.YWCP.YN'
      FixedChar = True
      Size = 1
    end
    object CartonBarsgw: TFloatField
      FieldName = 'sgw'
      Origin = 'DB.YWCP.sgw'
    end
    object CartonBarLPNBarCode: TStringField
      FieldName = 'LPNBarCode'
      Origin = 'DB.YWCP.LPNBarCode'
      FixedChar = True
    end
    object CartonBarKHPO: TStringField
      FieldName = 'KHPO'
      FixedChar = True
      Size = 25
    end
    object CartonBarKHDDBH1: TStringField
      FieldName = 'KHDDBH1'
      FixedChar = True
      Size = 30
    end
  end
  object UpBar: TUpdateSQL
    ModifySQL.Strings = (
      'update YWCP'
      'set'
      '  CARTONBAR = :CARTONBAR,'
      '  DDBH = :DDBH,'
      '  CARTONNO = :CARTONNO,'
      '  XH = :XH,'
      '  Qty = :Qty,'
      '  SB = :SB,'
      '  INCS = :INCS,'
      '  INDATE = :INDATE,'
      '  OUTCS = :OUTCS,'
      '  OUTDATE = :OUTDATE,'
      '  INSPECTCS = :INSPECTCS,'
      '  INSPECTDATE = :INSPECTDATE,'
      '  EXEDATE = :EXEDATE,'
      '  MEMO = :MEMO,'
      '  USERID = :USERID,'
      '  USERDATE = :USERDATE,'
      '  YN = :YN,'
      '  sgw = :sgw'
      'where'
      '  CARTONBAR = :OLD_CARTONBAR')
    InsertSQL.Strings = (
      'insert into YWCP'
      '  (CARTONBAR, DDBH, CARTONNO, XH, Qty, SB, INCS, INDATE, OUTCS, '
      'OUTDATE, '
      
        '   INSPECTCS, INSPECTDATE, EXEDATE, MEMO, USERID, USERDATE, YN, ' +
        'sgw)'
      'values'
      
        '  (:CARTONBAR, :DDBH, :CARTONNO, :XH, :Qty, :SB, :INCS, :INDATE,' +
        ' :OUTCS, '
      
        '   :OUTDATE, :INSPECTCS, :INSPECTDATE, :EXEDATE, :MEMO, :USERID,' +
        ' '
      ':USERDATE, '
      '   :YN, :sgw)')
    DeleteSQL.Strings = (
      'delete from YWCP'
      'where'
      '  CARTONBAR = :OLD_CARTONBAR')
    Left = 632
    Top = 152
  end
  object DS2: TDataSource
    DataSet = CartonBar
    Left = 664
    Top = 120
  end
  object PopupMenu1: TPopupMenu
    Left = 680
    Top = 208
    object Delete1: TMenuItem
      Caption = 'Delete'
      OnClick = Delete1Click
    end
    object Modify1: TMenuItem
      Caption = 'Modify'
      OnClick = Modify1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 481
    Top = 177
  end
  object YWBZPOS: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'select YWBZPO.DDBH,YWBZPO.XH,sum(ywbzpos.Qty) as Qty,ywbzpos.CTS' +
        ',ywbzpos.CTQ,ywbzpos.CTZ,YWBZPO.gw'
      'from YWBZPOS'
      
        'left join YWBZPO on YWBZPO.ddbh=ywbzpos.ddbh and YWBZPO.xh=ywbzp' +
        'os.xh'
      'where YWBZPO.DDBH in (select DDBH from YWDD where YSBH=:DDBH ) '
      
        'group by YWBZPO.DDBH,YWBZPO.XH,ywbzpos.CTS,ywbzpos.CTQ,ywbzpos.C' +
        'TZ,ywbzpo.gw'
      'order by YWBZPO.XH')
    Left = 521
    Top = 177
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'DDBH'
        ParamType = ptUnknown
        Size = 16
      end>
  end
  object YWBZPOS2: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    Left = 569
    Top = 177
  end
  object recc: TQuery
    DatabaseName = 'dB'
    DataSource = DS2
    SQL.Strings = (
      
        'select ddzl.ddbh,ywbzpos.xh,sum((isnull(YWXXNew.nweigh,0)+isnull' +
        '(YWXXNew.oweigh,0))*ywbzpos.qty) as nweigh,ywbzpo.clbh,ywwx2.owe' +
        'igh from ywbzpos'
      'left join ddzl on ddzl.ddbh=ywbzpos.ddbh'
      
        'left join YWXXNew on YWXXNew.XieXing=ddzl.XieXIng and YWXXNew.Sh' +
        'eHao=DDZL.SheHao and YWXXNew.XXCC=ywbzpos.ddCC'
      
        'left join ywbzpo on ywbzpo.ddbh=ywbzpos.ddbh and ywbzpo.xh=ywbzp' +
        'os.xh'
      'left join ywwx2 on ywbzpo.clbh=ywwx2.clbh'
      'where YWBZPO.DDBH=:ddbh  and YWBZPO.xh=:xh'
      'group by ddzl.ddbh,ywbzpos.xh,ywbzpo.clbh,ywwx2.oweigh'
      '')
    Left = 632
    Top = 184
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'DDBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'XH'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object Ad_Packing: TQuery
    DatabaseName = 'DB'
    DataSource = DS2
    SQL.Strings = (
      
        'select DDZL.KHPO, DDZL.ARTICLE,YWDD.KHDDBH1,YWCP.CARTONBAR,YWCP.' +
        'XH,YWCP.DDBH from YWCP'
      'left join DDZL on DDZL.DDBH=YWCP.DDBH'
      'left join YWDD on DDZL.DDBH= YWDD.DDBH'
      ' where YWCP.CARTONBAR=:CARTONBAR')
    Left = 505
    Top = 372
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CARTONBAR'
        ParamType = ptUnknown
      end>
  end
  object Ad_PackingS: TQuery
    DatabaseName = 'DB'
    DataSource = DS_Packing
    SQL.Strings = (
      'Select DDCC,Qty from YWBZPOS'
      'where DDBH=:DDBH and XH=:XH')
    Left = 505
    Top = 404
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DDBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'XH'
        ParamType = ptUnknown
      end>
  end
  object DS_Packing: TDataSource
    DataSet = Ad_Packing
    Left = 536
    Top = 376
  end
end
