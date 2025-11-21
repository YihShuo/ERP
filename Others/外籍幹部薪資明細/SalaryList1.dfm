object SalaryList: TSalaryList
  Left = 0
  Top = 0
  Caption = #22806#31821#24185#37096#34218#36039#26126#32048#34920
  ClientHeight = 572
  ClientWidth = 966
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 966
    Height = 572
    ActivePage = TabMM
    Align = alClient
    TabOrder = 1
    object TabTW: TTabSheet
      Caption = 'TW'
      ImageIndex = 1
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 962
        Height = 58
        Align = alTop
        ParentBackground = False
        TabOrder = 0
        object TLabel
          Left = 832
          Top = 24
          Width = 3
          Height = 13
          Align = alCustom
        end
        object B_ImportTW: TBitBtn
          Left = 9
          Top = 3
          Width = 90
          Height = 49
          Caption = 'Nh'#7853'p file d'#7919' li'#7879'u '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
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
          ParentFont = False
          TabOrder = 0
          OnClick = B_ImportTWClick
        end
        object B_MailTW: TBitBtn
          Left = 98
          Top = 3
          Width = 90
          Height = 49
          Caption = 'G'#7917'i mail'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000008080000000
            00007F7F7F0000030300FFFFFF00000505001919190000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000002222222222
            2222004444444444444401111111111111120222222222222224031444444444
            4112022440000000022403114444444411120222440044002224034114411441
            1412024224422442202405441111111144120240222222220024054441144614
            4412024002200224402403441144441144120240220000224424034114444441
            1412024220000002242403114444444411120222000000002224031444444444
            4112022444444444422401111111111111100222222222222220000000000000
            0000000000000000000000000000000000000000000000000000}
          Layout = blGlyphTop
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 1
          OnClick = B_MailTWClick
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 58
        Width = 962
        Height = 35
        Align = alTop
        ParentBackground = False
        TabOrder = 1
        object Label2: TLabel
          Left = 9
          Top = 9
          Width = 34
          Height = 13
          Caption = 'Ch'#7911' '#273#7873
        end
        object ED_TWTitle: TEdit
          Left = 49
          Top = 6
          Width = 255
          Height = 21
          TabOrder = 0
        end
        object ED_TWRateT1: TEdit
          Left = 312
          Top = 6
          Width = 65
          Height = 21
          TabOrder = 1
          Visible = False
        end
        object ED_TWRateV1: TEdit
          Left = 377
          Top = 6
          Width = 65
          Height = 21
          TabOrder = 2
          Visible = False
        end
        object ED_TWRateT2: TEdit
          Left = 442
          Top = 6
          Width = 65
          Height = 21
          TabOrder = 3
          Visible = False
        end
        object ED_TWRateV2: TEdit
          Left = 507
          Top = 6
          Width = 65
          Height = 21
          TabOrder = 4
          Visible = False
        end
      end
      object SGTW: TStringGrid
        Left = 0
        Top = 93
        Width = 962
        Height = 452
        Align = alClient
        ColCount = 49
        Ctl3D = True
        DefaultColWidth = 11
        DefaultRowHeight = 22
        FixedRows = 4
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
        ParentCtl3D = False
        TabOrder = 2
        OnDrawCell = SGTWDrawCell
        OnMouseUp = SGTWMouseUp
      end
    end
    object TabVN: TTabSheet
      Caption = 'VN'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 962
        Height = 58
        Align = alTop
        ParentBackground = False
        TabOrder = 0
        object TLabel
          Left = 832
          Top = 24
          Width = 3
          Height = 13
          Align = alCustom
        end
        object B_ImportVN: TBitBtn
          Left = 9
          Top = 3
          Width = 90
          Height = 49
          Caption = 'Nh'#7853'p file d'#7919' li'#7879'u '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
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
          ParentFont = False
          TabOrder = 0
          OnClick = B_ImportVNClick
        end
        object B_MailVN: TBitBtn
          Left = 98
          Top = 3
          Width = 90
          Height = 49
          Caption = 'G'#7917'i mail'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000008080000000
            00007F7F7F0000030300FFFFFF00000505001919190000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000002222222222
            2222004444444444444401111111111111120222222222222224031444444444
            4112022440000000022403114444444411120222440044002224034114411441
            1412024224422442202405441111111144120240222222220024054441144614
            4412024002200224402403441144441144120240220000224424034114444441
            1412024220000002242403114444444411120222000000002224031444444444
            4112022444444444422401111111111111100222222222222220000000000000
            0000000000000000000000000000000000000000000000000000}
          Layout = blGlyphTop
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 1
          OnClick = B_MailVNClick
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 58
        Width = 962
        Height = 35
        Align = alTop
        ParentBackground = False
        TabOrder = 1
        object Label1: TLabel
          Left = 9
          Top = 9
          Width = 34
          Height = 13
          Caption = 'Ch'#7911' '#273#7873
        end
        object ED_VNTitle: TEdit
          Left = 49
          Top = 6
          Width = 255
          Height = 21
          TabOrder = 0
        end
        object ED_VNRateT1: TEdit
          Left = 312
          Top = 6
          Width = 65
          Height = 21
          TabOrder = 1
          Visible = False
        end
        object ED_VNRateV1: TEdit
          Left = 377
          Top = 6
          Width = 65
          Height = 21
          TabOrder = 2
          Visible = False
        end
        object ED_VNRateT2: TEdit
          Left = 442
          Top = 6
          Width = 65
          Height = 21
          TabOrder = 3
          Visible = False
        end
        object ED_VNRateV2: TEdit
          Left = 507
          Top = 6
          Width = 65
          Height = 21
          TabOrder = 4
          Visible = False
        end
      end
      object SGVN: TStringGrid
        Left = 0
        Top = 93
        Width = 962
        Height = 452
        Align = alClient
        ColCount = 44
        Ctl3D = True
        DefaultColWidth = 11
        DefaultRowHeight = 22
        FixedRows = 4
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
        ParentCtl3D = False
        TabOrder = 2
        OnDrawCell = SGVNDrawCell
        OnMouseUp = SGVNMouseUp
      end
    end
    object TabMM: TTabSheet
      Caption = 'MM'
      ImageIndex = 2
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 958
        Height = 58
        Align = alTop
        ParentBackground = False
        TabOrder = 0
        object TLabel
          Left = 832
          Top = 24
          Width = 3
          Height = 13
          Align = alCustom
        end
        object B_ImportMM: TBitBtn
          Left = 9
          Top = 3
          Width = 90
          Height = 49
          Caption = 'Import Excel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
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
          ParentFont = False
          TabOrder = 0
          OnClick = B_ImportMMClick
        end
        object B_MailMM: TBitBtn
          Left = 98
          Top = 3
          Width = 90
          Height = 49
          Caption = 'Send Email'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000008080000000
            00007F7F7F0000030300FFFFFF00000505001919190000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000002222222222
            2222004444444444444401111111111111120222222222222224031444444444
            4112022440000000022403114444444411120222440044002224034114411441
            1412024224422442202405441111111144120240222222220024054441144614
            4412024002200224402403441144441144120240220000224424034114444441
            1412024220000002242403114444444411120222000000002224031444444444
            4112022444444444422401111111111111100222222222222220000000000000
            0000000000000000000000000000000000000000000000000000}
          Layout = blGlyphTop
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 1
          OnClick = B_MailMMClick
        end
      end
      object SGMM: TStringGrid
        Left = 0
        Top = 93
        Width = 958
        Height = 451
        Align = alClient
        ColCount = 26
        Ctl3D = True
        DefaultColWidth = 11
        DefaultRowHeight = 22
        FixedRows = 4
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
        ParentCtl3D = False
        TabOrder = 1
        OnDrawCell = SGMMDrawCell
      end
      object Panel7: TPanel
        Left = 0
        Top = 58
        Width = 958
        Height = 35
        Align = alTop
        ParentBackground = False
        TabOrder = 2
        object Label3: TLabel
          Left = 9
          Top = 9
          Width = 20
          Height = 13
          Caption = 'Title'
        end
        object Label4: TLabel
          Left = 119
          Top = 9
          Width = 36
          Height = 13
          Caption = #34218#36039#21934
        end
        object ED_MMRateT1: TEdit
          Left = 312
          Top = 6
          Width = 65
          Height = 21
          TabOrder = 0
          Visible = False
        end
        object ED_MMRateV1: TEdit
          Left = 377
          Top = 6
          Width = 65
          Height = 21
          TabOrder = 1
          Visible = False
        end
        object ED_MMRateT2: TEdit
          Left = 442
          Top = 6
          Width = 65
          Height = 21
          TabOrder = 2
          Visible = False
        end
        object ED_MMRateV2: TEdit
          Left = 507
          Top = 6
          Width = 65
          Height = 21
          TabOrder = 3
          Visible = False
        end
        object MMDTP: TDateTimePicker
          Left = 35
          Top = 6
          Width = 78
          Height = 21
          Date = 44655.000000000000000000
          Format = 'yyyy.MM'
          Time = 0.725476354156853600
          TabOrder = 4
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 328
    Top = 272
    Width = 337
    Height = 41
    Caption = #272'ang t'#7843'i d'#7919' li'#7879'u ...'
    TabOrder = 0
    Visible = False
  end
  object OpenDialog1: TOpenDialog
    Left = 26
    Top = 240
  end
  object IdSMTP1: TIdSMTP
    IOHandler = IdSSLIOHandlerSocketOpenSSL1
    Port = 587
    SASLMechanisms = <>
    UseTLS = utUseExplicitTLS
    Left = 24
    Top = 288
  end
  object IdMessage1: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CharSet = 'uft-8'
    CCList = <>
    ContentType = 'text/html'
    Encoding = meMIME
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 24
    Top = 336
  end
  object MainMenu1: TMainMenu
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    Left = 24
    Top = 384
    object Setting: TMenuItem
      Caption = 'Setting'
      object MailServer: TMenuItem
        Caption = 'Mail Server'
        OnClick = MailServerClick
      end
      object Version: TMenuItem
        Caption = 'Version'
        object TW: TMenuItem
          Caption = 'TW'
          OnClick = TWClick
        end
        object VN: TMenuItem
          Caption = 'VN'
          OnClick = VNClick
        end
        object MM: TMenuItem
          Caption = 'MM'
          OnClick = MMClick
        end
      end
    end
  end
  object IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL
    Destination = ':587'
    MaxLineAction = maException
    Port = 587
    DefaultPort = 0
    SSLOptions.Method = sslvSSLv23
    SSLOptions.SSLVersions = [sslvTLSv1, sslvTLSv1_1, sslvTLSv1_2]
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 136
    Top = 288
  end
end
