object UploadFile: TUploadFile
  Left = 565
  Top = 332
  BorderStyle = bsDialog
  Caption = 'Upload File'
  ClientHeight = 261
  ClientWidth = 775
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 106
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 775
    Height = 261
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 64
      Width = 82
      Height = 20
      Caption = 'Select a file'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 1
      Top = 1
      Width = 773
      Height = 40
      Align = alTop
      Alignment = taCenter
      Caption = 'Upload File'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object Label4: TLabel
      Left = 32
      Top = 136
      Width = 116
      Height = 20
      Caption = 'Upload Location'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 48
      Top = 88
      Width = 609
      Height = 33
      BevelInner = bvLowered
      BevelOuter = bvLowered
      TabOrder = 0
      object Label2: TLabel
        Left = 83
        Top = 4
        Width = 518
        Height = 25
        AutoSize = False
        Caption = 'No file chosen'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object Button1: TButton
        Left = 4
        Top = 4
        Width = 75
        Height = 25
        Caption = 'Choose File'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = Button1Click
      end
    end
    object Panel3: TPanel
      Left = 48
      Top = 160
      Width = 609
      Height = 33
      BevelInner = bvLowered
      BevelOuter = bvLowered
      TabOrder = 1
      object Label5: TLabel
        Left = 83
        Top = 4
        Width = 510
        Height = 25
        AutoSize = False
        Caption = 
          '\\192.168.123.112\kcs\LAB\1. PRODUCTION REPORT\Pro. FINISHED SHO' +
          'E'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object Button2: TButton
        Left = 4
        Top = 4
        Width = 75
        Height = 25
        Caption = 'Choose Path'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = Button2Click
      end
    end
    object BBU: TBitBtn
      Left = 335
      Top = 208
      Width = 105
      Height = 40
      Caption = 'UPLOAD'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
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
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 520
    Top = 88
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 8
    Top = 8
  end
end
