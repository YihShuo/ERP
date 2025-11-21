object ProdSendR: TProdSendR
  Left = 469
  Top = 243
  Width = 1359
  Height = 581
  Caption = 'ProdSendR'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Splitter2: TSplitter
    Left = 1053
    Top = 73
    Width = 5
    Height = 469
    Align = alRight
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1343
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label5: TLabel
      Left = 8
      Top = 10
      Width = 85
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'OrdNO:'
    end
    object Label6: TLabel
      Left = 8
      Top = 44
      Width = 85
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'PlanDate:'
    end
    object Label8: TLabel
      Left = 200
      Top = 44
      Width = 17
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'To'
    end
    object Label9: TLabel
      Left = 328
      Top = 44
      Width = 33
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'GX:'
    end
    object Label1: TLabel
      Left = 204
      Top = 12
      Width = 9
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = '~'
    end
    object Label2: TLabel
      Left = 333
      Top = 10
      Width = 30
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'PCE:'
    end
    object Label3: TLabel
      Left = 504
      Top = 44
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Tool Size:'
      Color = clBtnFace
      ParentColor = False
    end
    object Label4: TLabel
      Left = 504
      Top = 12
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = '#SKU: '
      Color = clBtnFace
      ParentColor = False
    end
    object DDBHSEdit: TEdit
      Left = 95
      Top = 6
      Width = 106
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object DTP1: TDateTimePicker
      Left = 95
      Top = 40
      Width = 103
      Height = 24
      Date = 42736.568310717590000000
      Format = 'yyyy/MM/dd'
      Time = 42736.568310717590000000
      TabOrder = 1
    end
    object DTP2: TDateTimePicker
      Left = 221
      Top = 40
      Width = 102
      Height = 24
      Date = 43435.569282222220000000
      Format = 'yyyy/MM/dd'
      Time = 43435.569282222220000000
      TabOrder = 2
    end
    object CBX4: TComboBox
      Left = 363
      Top = 40
      Width = 42
      Height = 24
      ItemHeight = 16
      TabOrder = 3
      Text = 'W'
    end
    object ChkSize: TCheckBox
      Left = 416
      Top = 26
      Width = 81
      Height = 17
      Caption = 'Size Asc'
      TabOrder = 4
    end
    object DDBHEEdit: TEdit
      Left = 215
      Top = 6
      Width = 106
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 5
    end
    object PairsSpinEdit: TSpinEdit
      Left = 365
      Top = 6
      Width = 41
      Height = 26
      MaxValue = 99
      MinValue = 1
      TabOrder = 6
      Value = 1
    end
    object CCCombo: TComboBox
      Left = 584
      Top = 40
      Width = 105
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 1
      TabOrder = 7
      Text = '100-Last Size'
      Items.Strings = (
        '000-Article Size'
        '100-Last Size'
        '101-Outsole')
    end
    object BDT6: TBitBtn
      Left = 856
      Top = 16
      Width = 55
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Print'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = BDT6Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BDT7: TBitBtn
      Left = 910
      Top = 16
      Width = 55
      Height = 49
      Hint = 'Modify Current'
      Caption = 'XLS1'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = BDT7Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
        DACFC8BCAA9BBDAB9CBCA99AB9A595B7A291B69F8EB19B88AF9583AD9480AA8F
        7AA78C77A68C75A38871FFFFFFFFFFFFD4C9C0FFFBF5FFF5EDFFF3EBFFF1E8FF
        EFE3FFEEE1FFEADDFFE8D9FFE7D7FFE4D3FFE3D0FFE3CFFFE0CDFFFFFFFFFFFF
        D4C9C1FFF8F3FEF5EEFFF5EFFFF3EDFEF1E8FDF0E9FDEBE0FFEEE4FDEADEFFEA
        DCFADDCCFADBC9F8D9C7FFFFFFFFFFFFD6CAC1FFFEFCF3E6DBE8D0BFE5CBB9EA
        D1BFE1BDA1EBD1BBC79572DDB79BB4815CFFEBDEFADFD0F8DCCAFFFFFFFFFFFF
        D7CAC1FFFFFFEFD9CADCB294D5AA89CC9E7DD0A17BFFFFFFC3906BF7DFCCA976
        51FFF1E6F9E4D6FADFCFFFFFFFFFFFFFD9CCC2FFFFFFFAF2ECF6E6DAF3E1D4F0
        DDD0E3C4ACCE9C76E1C0A7E0BEA1DABBA7FFEFE5FBE8DCF9E4D6FFFFFFFFFFFF
        E3D0CAFFFFFFFFF9F6FFE9DFFFEAE3ECD7C8EBD6C6E9D1C1EAD1C0EAD1BEFFFD
        FAFDEEE5FBE9E0FAE6D88CB89782B38F80B69077AF8873B2887AB78F00590BFF
        EDE7EFDDCFEBD7C6E8D0C0E6CDBBE0C3AEEFDACDFEF2EAFBECE1F8FAF6FFFEFF
        FFFFFFBBD3BB818982878B84006D23FFF4EFF3E3D7F0DDCFECD7C7EBD4C3E5CA
        B7F1DDD1FEF3EDFBEDE4F0F5EF50A2582D893381C88506641990B69A0C7332FF
        F9F4F8EAE0F5E6DAF1E0D3F0DCCEEBD4C2F4E4D9FEF8F4FDF1EBFFFFFF9EC59E
        7CBD8033883449924EE1F0E4107232FFFAF7F8ECE4F5E8DDF2E3D7F1DFD3EBD7
        C8F4E7DDFFF9F6FCF3EDDDE9DC9AD6A44B985171BF7C107B176DA7692B824CFF
        DBC7F1D2BAF0D0B9EAC9AFE5C2A8DCB292F1DBCAFFFFFFFFFFFEB3D7B5AFCBB0
        EAF0E9FFFFFFABBAAAF1EFEE2B7F43FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFBAADA3B5A99DB3A59787C19577B7876DB07F549C674D94603F8C542E7D43FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E7FFFDED3B210AFFFFFFFFFFFF
        EEDBD6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFE3CEC2AC9D95FFFFCCFFFFFFFFFFFFE5DBD3E4DAD3E4D9D2E3D9D0E1D7CFE0
        D6CEE0D6CDDDD4CBDDD2CADCD2C9DDD5D0BDA17AE3D4B6FFFFFF}
      Layout = blGlyphTop
    end
    object BDT8: TBitBtn
      Left = 964
      Top = 16
      Width = 55
      Height = 49
      Hint = 'Modify Current'
      Caption = 'XLS2'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnClick = BDT8Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
        DACFC8BCAA9BBDAB9CBCA99AB9A595B7A291B69F8EB19B88AF9583AD9480AA8F
        7AA78C77A68C75A38871FFFFFFFFFFFFD4C9C0FFFBF5FFF5EDFFF3EBFFF1E8FF
        EFE3FFEEE1FFEADDFFE8D9FFE7D7FFE4D3FFE3D0FFE3CFFFE0CDFFFFFFFFFFFF
        D4C9C1FFF8F3FEF5EEFFF5EFFFF3EDFEF1E8FDF0E9FDEBE0FFEEE4FDEADEFFEA
        DCFADDCCFADBC9F8D9C7FFFFFFFFFFFFD6CAC1FFFEFCF3E6DBE8D0BFE5CBB9EA
        D1BFE1BDA1EBD1BBC79572DDB79BB4815CFFEBDEFADFD0F8DCCAFFFFFFFFFFFF
        D7CAC1FFFFFFEFD9CADCB294D5AA89CC9E7DD0A17BFFFFFFC3906BF7DFCCA976
        51FFF1E6F9E4D6FADFCFFFFFFFFFFFFFD9CCC2FFFFFFFAF2ECF6E6DAF3E1D4F0
        DDD0E3C4ACCE9C76E1C0A7E0BEA1DABBA7FFEFE5FBE8DCF9E4D6FFFFFFFFFFFF
        E3D0CAFFFFFFFFF9F6FFE9DFFFEAE3ECD7C8EBD6C6E9D1C1EAD1C0EAD1BEFFFD
        FAFDEEE5FBE9E0FAE6D88CB89782B38F80B69077AF8873B2887AB78F00590BFF
        EDE7EFDDCFEBD7C6E8D0C0E6CDBBE0C3AEEFDACDFEF2EAFBECE1F8FAF6FFFEFF
        FFFFFFBBD3BB818982878B84006D23FFF4EFF3E3D7F0DDCFECD7C7EBD4C3E5CA
        B7F1DDD1FEF3EDFBEDE4F0F5EF50A2582D893381C88506641990B69A0C7332FF
        F9F4F8EAE0F5E6DAF1E0D3F0DCCEEBD4C2F4E4D9FEF8F4FDF1EBFFFFFF9EC59E
        7CBD8033883449924EE1F0E4107232FFFAF7F8ECE4F5E8DDF2E3D7F1DFD3EBD7
        C8F4E7DDFFF9F6FCF3EDDDE9DC9AD6A44B985171BF7C107B176DA7692B824CFF
        DBC7F1D2BAF0D0B9EAC9AFE5C2A8DCB292F1DBCAFFFFFFFFFFFEB3D7B5AFCBB0
        EAF0E9FFFFFFABBAAAF1EFEE2B7F43FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFBAADA3B5A99DB3A59787C19577B7876DB07F549C674D94603F8C542E7D43FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E7FFFDED3B210AFFFFFFFFFFFF
        EEDBD6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFE3CEC2AC9D95FFFFCCFFFFFFFFFFFFE5DBD3E4DAD3E4D9D2E3D9D0E1D7CFE0
        D6CEE0D6CDDDD4CBDDD2CADCD2C9DDD5D0BDA17AE3D4B6FFFFFF}
      Layout = blGlyphTop
    end
    object BB1: TBitBtn
      Left = 728
      Top = 16
      Width = 49
      Height = 49
      Caption = 'Query'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
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
      Left = 776
      Top = 16
      Width = 49
      Height = 49
      Caption = 'MerQry'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      OnClick = BB2Click
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
    object ArticleEdit: TEdit
      Left = 583
      Top = 6
      Width = 106
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 13
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 1058
    Top = 73
    Width = 285
    Height = 469
    Align = alRight
    DataSource = DS2
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FrozenCols = 3
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Checkboxes = True
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
        Width = 24
      end
      item
        EditButtons = <>
        FieldName = 'BWBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'PartID'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Part'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = 'MatNo'
        Width = 81
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Unit'
        Width = 37
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = 'MatName'
        Width = 264
      end
      item
        EditButtons = <>
        FieldName = 'CCQQ'
        Footers = <>
        Title.Caption = 'SizeFro'
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'CCQZ'
        Footers = <>
        Title.Caption = 'SizeEnd'
        Width = 56
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 73
    Width = 1053
    Height = 469
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 2
    object Splitter1: TSplitter
      Left = 1
      Top = 352
      Width = 1051
      Height = 5
      Cursor = crVSplit
      Align = alBottom
    end
    object DBGridEh3: TDBGridEh
      Left = 1
      Top = 1
      Width = 1051
      Height = 351
      Align = alClient
      DataSource = DS1
      Flat = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = ANSI_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = '???'
      FooterFont.Style = []
      FooterRowCount = 1
      ParentFont = False
      PopupMenu = PopupMenu2
      ReadOnly = True
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
    end
    object Panel5: TPanel
      Left = 1
      Top = 357
      Width = 1051
      Height = 111
      Align = alBottom
      Caption = 'Panel5'
      TabOrder = 1
      object Panel3: TPanel
        Left = 209
        Top = 1
        Width = 841
        Height = 109
        Align = alClient
        Caption = 'Panel3'
        TabOrder = 0
        object DBGridEh2: TDBGridEh
          Left = 1
          Top = 57
          Width = 839
          Height = 51
          Align = alClient
          DataSource = DS3
          Flat = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDblClickOptimizeColWidth, dghDialogFind]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
        object Panel4: TPanel
          Left = 1
          Top = 1
          Width = 839
          Height = 56
          Align = alTop
          TabOrder = 1
          object Label7: TLabel
            Left = 198
            Top = 23
            Width = 63
            Height = 16
            Caption = 'Shoe Last:'
          end
          object GroupBox3: TGroupBox
            Left = 9
            Top = 2
            Width = 159
            Height = 49
            Caption = 'Foxing length'
            TabOrder = 0
            object Label26: TLabel
              Left = 13
              Top = 22
              Width = 35
              Height = 16
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Type:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object SizeFoxTypeEdit: TComboBox
              Left = 50
              Top = 19
              Width = 98
              Height = 24
              CharCase = ecUpperCase
              Color = clSkyBlue
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemHeight = 16
              ParentFont = False
              TabOrder = 0
              OnChange = SizeFoxTypeEditChange
            end
          end
          object Edit1: TEdit
            Left = 264
            Top = 17
            Width = 148
            Height = 27
            TabOrder = 1
          end
        end
      end
      object DBGridEh4: TDBGridEh
        Left = 1
        Top = 1
        Width = 208
        Height = 109
        Align = alLeft
        DataSource = DS4
        Flat = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DDBH'
            Footers = <
              item
                FieldName = 'DDBH'
                ValueType = fvtCount
              end>
            Title.Caption = 'Order'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 98
          end
          item
            EditButtons = <>
            FieldName = 'T1'
            Footers = <>
            Width = 33
          end
          item
            EditButtons = <>
            FieldName = 'T2'
            Footers = <>
            Width = 36
          end>
      end
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 192
    Top = 208
  end
  object SMDDS: TQuery
    CachedUpdates = True
    AfterOpen = SMDDSSAfterOpen
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'select A.ddbh,A.Article,A.buyno,A.XieMing,A.XTMH,A.DAOMH,A.PlanD' +
        'ate,A.Qty,A.XieXing,A.SheHao'
      ',sum([10.0]) as  '#39'10.0'#39' '
      ',sum([09.0]) as  '#39'09.0'#39' '
      ',sum([08.0]) as  '#39'08.0'#39' '
      ',sum([07.0]) as  '#39'07.0'#39' '
      ',sum([06.0]) as  '#39'06.0'#39' '
      ',sum([05.0]) as  '#39'05.0'#39' '
      ',A.YSBH from('
      'select SMDD.DDBH,SMDD.Article,DDZL.buyno,SMDD.XieMing '
      ',XXZL.xtmh as XXTMH ,XXZL.DAOMH as XDAOMH,SMDD.PlanDate'
      ',ddzl.xiexing,ddzl.shehao,SMDD.Qty as Qty '
      ',Max(case  when SMDDS.XXCC='#39'10.0'#39
      ' then SMDDS.Qty else null end) as '#39'10.0'#39
      ',Max(case  when SMDDS.XXCC='#39'09.0'#39
      ' then SMDDS.Qty else null end) as '#39'09.0'#39
      ',Max(case  when SMDDS.XXCC='#39'08.0'#39
      ' then SMDDS.Qty else null end) as '#39'08.0'#39
      ',Max(case  when SMDDS.XXCC='#39'07.0'#39
      ' then SMDDS.Qty else null end) as '#39'07.0'#39
      ',Max(case  when SMDDS.XXCC='#39'06.0'#39
      ' then SMDDS.Qty else null end) as '#39'06.0'#39
      ',Max(case  when SMDDS.XXCC='#39'05.0'#39
      ' then SMDDS.Qty else null end) as '#39'05.0'#39
      
        ',smdd.ysbh,DXXZL.XTMH as DXTMH,DXXZL.DAOMH as DDAOMH,DXXZL.DDBH ' +
        'as XDDBH'
      
        ',case when DXXZL.DDBH is null then XXZL.XTMH else DXXZL.XTMH end' +
        ' as XTMH'
      
        ',case when DXXZL.DDBH is null then XXZL.DAOMH else DXXZL.DAOMH e' +
        'nd as DAOMH'
      'from SMDDS '
      'left join SMDD on SMDD.DDBH=SMDDS.DDBH '
      'left join DDZL on SMDD.YSBH=DDZL.DDBH '
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and DDZL.Shehao=XXZL' +
        '.SheHao '
      
        'left join DDZL_XXZL as DXXZL on DXXZL.XieXing=DDZL.XieXing and D' +
        'XXZL.Shehao=DDZL.Shehao and DXXZL.DDBH=DDZL.DDBH'
      
        'where (convert(smalldatetime,convert(varchar,SMDD.PlanDate,111))' +
        ' between '
      '       '#39'2018/01/01'#39' and  '#39'2018/12/01'#39')'
      '      and SMDD.GXLB='#39'W'#39
      '      and SMDDS.DDBH like '#39'Y1803-0023%'#39
      '      and SMDD.GSBH='#39'VR2'#39
      
        'group by SMDD.DDBH,SMDD.Article,SMDD.XieMing,XXZL.xtmh,XXZL.DAOM' +
        'H,SMDD.PlanDate,SMDD.Qty,ddzl.xiexing,ddzl.shehao,smdd.ysbh,DXXZ' +
        'L.XTMH,DXXZL.DAOMH,DXXZL.DDBH,DDZl.buyno '
      
        ')A group by A.ddbh,A.Article,A.XieMing,A.XTMH,A.DAOMH,A.PlanDate' +
        ',A.Qty,A.XieXing,A.SheHao,A.YSBH,A.buyno')
    UpdateObject = UpdateSQL2
    Left = 224
    Top = 248
  end
  object DS1: TDataSource
    DataSet = SMDDS
    Left = 256
    Top = 248
  end
  object PrintDBGridEh1: TPrintDBGridEh
    Options = [pghFitingByColWidths]
    Page.BottomMargin = 1.000000000000000000
    Page.LeftMargin = 1.000000000000000000
    Page.RightMargin = 1.000000000000000000
    Page.TopMargin = 1.000000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.CenterText.Strings = (
      '?????'
      'Production Cycle')
    PageHeader.Font.Charset = ANSI_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -24
    PageHeader.Font.Name = '????'
    PageHeader.Font.Style = []
    Units = MM
    Left = 304
    Top = 248
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E73696370673935305C64656666305C646566
      6C616E67313033335C6465666C616E676665313032387B5C666F6E7474626C7B
      5C66305C666E696C5C6663686172736574313336204D532053616E7320536572
      69663B7D7D0D0A5C766965776B696E64345C7563315C706172645C6C616E6731
      3032385C66305C6673313620255B544465705D200D0A5C706172207D0D0A00}
  end
  object BWZL: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select zlzls2.BWBH,BWZL.YWSM,zlzls2.CLBH,CLZL.YWPM,CLZL.DWBH,XXZ' +
        'LS.CCQQ,XXZLS.CCQZ,0 as YN,CLBZZL.BZ,sum(zlzls2.clsl) AS clsl'
      'from zlzls2'
      'left join BWZL on BWZL.BWDH=zlzls2.BWBH'
      'left join CLZL on CLZL.CLDH=zlzls2.CLBH'
      'left join DDZL on DDZL.DDBH=ZLZLS2.ZLBH'
      
        'left join XXZLS on XXZLS.XieXing=DDZL.XieXing and DDZL.SheHao=XX' +
        'ZLS.SheHao and ZLZLS2.BWBH=XXZLS.BWBH'
      'left join CLBZZL on zlzls2.CLBH = CLBZZL.CLDH and zybb='#39'E'#39
      'where zlzls2.zlbh='#39#39
      
        'group by zlzls2.BWBH,BWZL.YWSM,zlzls2.CLBH,CLZL.YWPM,CLZL.DWBH,X' +
        'XZLS.CCQQ,XXZLS.CCQZ,CLBZZL.BZ')
    UpdateObject = UpdateSQL1
    Left = 720
    Top = 152
    object BWZLBWBH: TStringField
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object BWZLYWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 30
    end
    object BWZLCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object BWZLYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object BWZLDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object BWZLCCQQ: TStringField
      FieldName = 'CCQQ'
      FixedChar = True
      Size = 6
    end
    object BWZLCCQZ: TStringField
      FieldName = 'CCQZ'
      FixedChar = True
      Size = 6
    end
    object BWZLYN: TIntegerField
      FieldName = 'YN'
    end
    object BWZLBZ: TStringField
      FieldName = 'BZ'
      FixedChar = True
      Size = 80
    end
    object BWZLclsl: TFloatField
      FieldName = 'clsl'
      DisplayFormat = '##,#0.0'
    end
  end
  object UpdateSQL1: TUpdateSQL
    Left = 752
    Top = 152
  end
  object DS2: TDataSource
    DataSet = BWZL
    Left = 688
    Top = 152
  end
  object PopupMenu1: TPopupMenu
    Left = 688
    Top = 188
    object Insert1: TMenuItem
      Caption = 'Insert'
      OnClick = Insert1Click
    end
    object Delete2: TMenuItem
      Caption = 'Delete'
      OnClick = Delete2Click
    end
  end
  object UpdateSQL2: TUpdateSQL
    Left = 192
    Top = 248
  end
  object PopupMenu2: TPopupMenu
    Left = 344
    Top = 248
    object Delete1: TMenuItem
      Caption = 'Delete'
      OnClick = Delete1Click
    end
  end
  object SizefoxQry: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    UpdateObject = UpdateSQL3
    Left = 400
    Top = 496
  end
  object DS3: TDataSource
    DataSet = SizefoxQry
    Left = 440
    Top = 496
  end
  object UpdateSQL3: TUpdateSQL
    Left = 480
    Top = 496
  end
  object XXCCQry: TQuery
    DatabaseName = 'DB'
    Left = 224
    Top = 208
  end
  object DS4: TDataSource
    DataSet = RYQuery
    Left = 80
    Top = 432
  end
  object RYQuery: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        '  Select DDZL.DDBH,XXZL.XTMH,CLZL.CLDH,null as T1, null as T2  f' +
        'rom DDZL'
      
        '  left join XXZL on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XX' +
        'ZL.SheHao '
      '  left join CLZL on CLZL.YWPM=XXZL.XTMH and CLDH like '#39'VD%'#39' '
      '  where 1=2')
    UpdateObject = UpdateSQL4
    Left = 80
    Top = 464
    object RYQueryDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object RYQueryT1: TIntegerField
      FieldName = 'T1'
    end
    object RYQueryT2: TIntegerField
      FieldName = 'T2'
    end
  end
  object UpdateSQL4: TUpdateSQL
    Left = 80
    Top = 496
  end
  object QArticle: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select A.ddbh,A.Article,A.buyno,A.XieMing,A.XTMH,A.DAOMH,A.PlanD' +
        'ate,A.Qty,A.XieXing,A.SheHao'
      ',sum([10.0]) as  '#39'10.0'#39' '
      ',sum([09.0]) as  '#39'09.0'#39' '
      ',sum([08.0]) as  '#39'08.0'#39' '
      ',sum([07.0]) as  '#39'07.0'#39' '
      ',sum([06.0]) as  '#39'06.0'#39' '
      ',sum([05.0]) as  '#39'05.0'#39' '
      ',A.YSBH from('
      'select SMDD.DDBH,SMDD.Article,DDZL.buyno,SMDD.XieMing '
      ',XXZL.xtmh as XXTMH ,XXZL.DAOMH as XDAOMH,SMDD.PlanDate'
      ',ddzl.xiexing,ddzl.shehao,SMDD.Qty as Qty '
      ',Max(case  when SMDDS.XXCC='#39'10.0'#39
      ' then SMDDS.Qty else null end) as '#39'10.0'#39
      ',Max(case  when SMDDS.XXCC='#39'09.0'#39
      ' then SMDDS.Qty else null end) as '#39'09.0'#39
      ',Max(case  when SMDDS.XXCC='#39'08.0'#39
      ' then SMDDS.Qty else null end) as '#39'08.0'#39
      ',Max(case  when SMDDS.XXCC='#39'07.0'#39
      ' then SMDDS.Qty else null end) as '#39'07.0'#39
      ',Max(case  when SMDDS.XXCC='#39'06.0'#39
      ' then SMDDS.Qty else null end) as '#39'06.0'#39
      ',Max(case  when SMDDS.XXCC='#39'05.0'#39
      ' then SMDDS.Qty else null end) as '#39'05.0'#39
      
        ',smdd.ysbh,DXXZL.XTMH as DXTMH,DXXZL.DAOMH as DDAOMH,DXXZL.DDBH ' +
        'as XDDBH'
      
        ',case when DXXZL.DDBH is null then XXZL.XTMH else DXXZL.XTMH end' +
        ' as XTMH'
      
        ',case when DXXZL.DDBH is null then XXZL.DAOMH else DXXZL.DAOMH e' +
        'nd as DAOMH'
      'from SMDDS '
      'left join SMDD on SMDD.DDBH=SMDDS.DDBH '
      'left join DDZL on SMDD.YSBH=DDZL.DDBH '
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and DDZL.Shehao=XXZL' +
        '.SheHao '
      
        'left join DDZL_XXZL as DXXZL on DXXZL.XieXing=DDZL.XieXing and D' +
        'XXZL.Shehao=DDZL.Shehao and DXXZL.DDBH=DDZL.DDBH'
      
        'where (convert(smalldatetime,convert(varchar,SMDD.PlanDate,111))' +
        ' between '
      '       '#39'2018/01/01'#39' and  '#39'2018/12/01'#39')'
      '      and SMDD.GXLB='#39'W'#39
      '      and SMDDS.DDBH like '#39'Y1803-0023%'#39
      '      and SMDD.GSBH='#39'VR2'#39
      '      and SMDD.Article like '#39'A01693F%'#39
      
        'group by SMDD.DDBH,SMDD.Article,SMDD.XieMing,XXZL.xtmh,XXZL.DAOM' +
        'H,SMDD.PlanDate,SMDD.Qty,ddzl.xiexing,ddzl.shehao,smdd.ysbh,DXXZ' +
        'L.XTMH,DXXZL.DAOMH,DXXZL.DDBH,DDZl.buyno '
      
        ')A group by A.ddbh,A.Article,A.XieMing,A.XTMH,A.DAOMH,A.PlanDate' +
        ',A.Qty,A.XieXing,A.SheHao,A.YSBH,A.buyno'
      '')
    Left = 472
    Top = 145
  end
end
