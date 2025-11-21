object CBY_QC: TCBY_QC
  Left = 374
  Top = 167
  Width = 1560
  Height = 777
  Caption = 'CBY_QC'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -16
  Font.Name = 'Arial'
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
  TextHeight = 18
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1544
    Height = 41
    Align = alTop
    Color = clBlack
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 12
      Width = 63
      Height = 19
      Caption = 'Order ID'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label6: TLabel
      Left = 1108
      Top = 6
      Width = 64
      Height = 35
      Caption = 'Time'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -27
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object ED_Barcode: TEdit
      Left = 87
      Top = 9
      Width = 161
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 15
      ParentFont = False
      TabOrder = 0
      OnChange = ED_BarcodeChange
      OnKeyPress = ED_BarcodeKeyPress
    end
    object Button1: TButton
      Left = 584
      Top = 8
      Width = 137
      Height = 25
      Caption = 'Load'
      TabOrder = 1
      Visible = False
      OnClick = Button1Click
    end
    object cbbWorkTime: TComboBox
      Left = 1179
      Top = -1
      Width = 94
      Height = 42
      Style = csDropDownList
      Color = clSkyBlue
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      ItemHeight = 34
      ParentFont = False
      TabOrder = 2
      Visible = False
      Items.Strings = (
        '00:00'
        '07:30'
        '08:30'
        '09:30'
        '10:30'
        '11:30'
        '12:30'
        '13:30'
        '14:30'
        '15:30'
        '16:30'
        '17:30'
        '18:30'
        '19:30'
        '20:30')
    end
    object RG1: TRadioGroup
      Left = 281
      Top = 2
      Width = 288
      Height = 36
      Color = clBlack
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        '8Code'
        '11Code')
      ParentColor = False
      ParentFont = False
      TabOrder = 3
      Visible = False
    end
  end
  object TitleBox_Base: TScrollBox
    Left = 0
    Top = 41
    Width = 1544
    Height = 128
    Align = alTop
    BevelInner = bvSpace
    BevelOuter = bvRaised
    BevelKind = bkFlat
    BorderStyle = bsNone
    Color = clBlack
    ParentColor = False
    TabOrder = 1
    object TPASS: TLabel
      Left = 8
      Top = 8
      Width = 153
      Height = 25
      AutoSize = False
      Caption = 'Today Pass:1234'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object TNG: TLabel
      Left = 8
      Top = 40
      Width = 153
      Height = 25
      AutoSize = False
      Caption = 'Today NG:1234'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object FTT: TLabel
      Left = 8
      Top = 72
      Width = 153
      Height = 25
      AutoSize = False
      Caption = 'FTT:70%'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Orderid: TLabel
      Left = 416
      Top = 8
      Width = 169
      Height = 25
      AutoSize = False
      Caption = 'Order ID:12345678'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Sku: TLabel
      Left = 600
      Top = 8
      Width = 169
      Height = 25
      AutoSize = False
      Caption = 'SKU:156574C'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object acceptdate: TLabel
      Left = 416
      Top = 32
      Width = 300
      Height = 25
      AutoSize = False
      Caption = 'Accept date: 2023/04/01 Fri-0233'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object shippingdate: TLabel
      Left = 416
      Top = 56
      Width = 300
      Height = 25
      AutoSize = False
      Caption = 'Shipping date:2023/04/07'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object size: TLabel
      Left = 752
      Top = 8
      Width = 300
      Height = 25
      AutoSize = False
      Caption = 'SIZE: UNISEX 7.0'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object pid1: TLabel
      Left = 752
      Top = 32
      Width = 130
      Height = 25
      AutoSize = False
      Caption = 'PID1:COOL'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object pid2: TLabel
      Left = 912
      Top = 32
      Width = 130
      Height = 25
      AutoSize = False
      Caption = 'PID2:COOL'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Inspection: TLabel
      Left = 752
      Top = 56
      Width = 300
      Height = 25
      AutoSize = False
      Caption = 'Inspection: 1 (OR done inspection)'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object ColorButton1: TColorButton
      Left = 208
      Top = 8
      Width = 145
      Height = 113
      Caption = 'Pass'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -48
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = ColorButton1Click
      BackColor = clLime
      ForeColor = clBlack
      HoverColor = clLime
    end
  end
  object PC1: TPageControl
    Left = 0
    Top = 169
    Width = 1544
    Height = 569
    ActivePage = TS3
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object TS3: TTabSheet
      Caption = 'MA Defect'
      ImageIndex = 2
      object DefectBox: TScrollBox
        Left = 0
        Top = 0
        Width = 969
        Height = 538
        HorzScrollBar.Increment = 115
        HorzScrollBar.Tracking = True
        VertScrollBar.Increment = 49
        VertScrollBar.Tracking = True
        Align = alLeft
        BevelInner = bvSpace
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        object BitBtn1: TBitBtn
          Left = 8
          Top = 8
          Width = 120
          Height = 120
          Hint = '111'
          Caption = 'Ve sinh'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = BitBtn1Click
        end
        object BitBtn2: TBitBtn
          Left = 144
          Top = 8
          Width = 120
          Height = 120
          Hint = '112'
          Caption = 'Cao keo'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn1Click
        end
        object BitBtn3: TBitBtn
          Left = 280
          Top = 8
          Width = 120
          Height = 120
          Hint = '121'
          Caption = 'Dau chi'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = BitBtn1Click
        end
        object BitBtn4: TBitBtn
          Left = 416
          Top = 8
          Width = 120
          Height = 120
          Hint = '131'
          Caption = 'Discoloration, unmatched color'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = BitBtn1Click
        end
        object BitBtn5: TBitBtn
          Left = 552
          Top = 8
          Width = 120
          Height = 120
          Hint = '141'
          Caption = 'Damaged, x-ray, bubble on foxing'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = BitBtn1Click
        end
        object BitBtn6: TBitBtn
          Left = 688
          Top = 8
          Width = 120
          Height = 120
          Hint = '142'
          Caption = 'Damaged, x-ray, bubble on toe cap, outsole'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnClick = BitBtn1Click
        end
        object BitBtn7: TBitBtn
          Left = 824
          Top = 8
          Width = 120
          Height = 120
          Hint = '143'
          Caption = 'No eyelets, damaged eyelets and peel off paint'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          OnClick = BitBtn1Click
        end
        object BitBtn8: TBitBtn
          Left = 8
          Top = 136
          Width = 120
          Height = 120
          Hint = '161'
          Caption = 'Loi khac'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          OnClick = BitBtn1Click
        end
        object BitBtn9: TBitBtn
          Left = 144
          Top = 136
          Width = 120
          Height = 120
          Hint = '211'
          Caption = 'Heel/ vamp off center'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          OnClick = BitBtn1Click
        end
        object BitBtn10: TBitBtn
          Left = 280
          Top = 136
          Width = 120
          Height = 120
          Hint = '212'
          Caption = 'Cao thap got'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
          OnClick = BitBtn1Click
        end
        object BitBtn11: TBitBtn
          Left = 416
          Top = 136
          Width = 120
          Height = 120
          Hint = '213'
          Caption = 'Mui lon nho'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
          OnClick = BitBtn1Click
        end
        object BitBtn12: TBitBtn
          Left = 552
          Top = 136
          Width = 120
          Height = 120
          Hint = '214'
          Caption = 'Mis-aligned attaching components'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
          OnClick = BitBtn1Click
        end
        object BitBtn13: TBitBtn
          Left = 688
          Top = 136
          Width = 120
          Height = 120
          Hint = '221'
          Caption = 'Incorrect dimension'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
          OnClick = BitBtn1Click
        end
        object BitBtn14: TBitBtn
          Left = 823
          Top = 136
          Width = 120
          Height = 120
          Hint = '231'
          Caption = 'Deformation (bumps/ uneven looking/ crooked/banana shoes)'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
          OnClick = BitBtn1Click
        end
        object BitBtn15: TBitBtn
          Left = 8
          Top = 264
          Width = 120
          Height = 120
          Hint = '241'
          Caption = 'Wrinkle (upper, colar, tongue,..)'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 14
          OnClick = BitBtn1Click
        end
        object BitBtn16: TBitBtn
          Left = 144
          Top = 264
          Width = 120
          Height = 120
          Hint = '411'
          Caption = 'Incorrect sizing'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 15
          OnClick = BitBtn1Click
        end
        object BitBtn17: TBitBtn
          Left = 280
          Top = 264
          Width = 120
          Height = 120
          Hint = '421'
          Caption = 'Sai de trung'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 16
          OnClick = BitBtn1Click
        end
        object BitBtn18: TBitBtn
          Left = 416
          Top = 264
          Width = 120
          Height = 120
          Hint = '431'
          Caption = 'X-ray (insole, heel counter, lining)'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 17
          OnClick = BitBtn1Click
        end
        object BitBtn19: TBitBtn
          Left = 552
          Top = 264
          Width = 120
          Height = 120
          Hint = '444'
          Caption = 'Bubble on rubber'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 18
          OnClick = BitBtn1Click
        end
        object BitBtn20: TBitBtn
          Left = 688
          Top = 264
          Width = 120
          Height = 120
          Hint = '446'
          Caption = 'Loi soi'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 19
          OnClick = BitBtn1Click
        end
        object BitBtn21: TBitBtn
          Left = 823
          Top = 264
          Width = 120
          Height = 120
          Hint = 'AR11'
          Caption = 'Ho keo talon'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 20
          OnClick = BitBtn1Click
        end
        object BitBtn22: TBitBtn
          Left = 8
          Top = 392
          Width = 120
          Height = 120
          Hint = 'AR12'
          Caption = 'Delamination at heel logo, outsole'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 21
          OnClick = BitBtn1Click
        end
        object BitBtn23: TBitBtn
          Left = 144
          Top = 392
          Width = 120
          Height = 120
          Hint = 'AR21'
          Caption = 'Broken, loose, skip stitch, run off stitch'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 22
          OnClick = BitBtn1Click
        end
        object BitBtn24: TBitBtn
          Left = 280
          Top = 392
          Width = 120
          Height = 120
          Hint = 'AR31'
          Caption = 'Rach'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 23
          OnClick = BitBtn1Click
        end
        object BitBtn25: TBitBtn
          Left = 416
          Top = 392
          Width = 120
          Height = 120
          Hint = 'AR41'
          Caption = 'Yellowing upper'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 24
          OnClick = BitBtn1Click
        end
        object BitBtn26: TBitBtn
          Left = 552
          Top = 392
          Width = 120
          Height = 120
          Hint = 'AR47'
          Caption = 'Sai chi'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 25
          OnClick = BitBtn1Click
        end
        object BitBtn27: TBitBtn
          Left = 688
          Top = 392
          Width = 120
          Height = 120
          Hint = '446'
          Caption = 'Quet xi khong deu'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 26
          OnClick = BitBtn1Click
        end
        object BitBtn28: TBitBtn
          Left = 823
          Top = 392
          Width = 120
          Height = 120
          Hint = 'AR11'
          Caption = 'Khong in,in sai,in hu'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 27
          OnClick = BitBtn1Click
        end
        object BitBtn29: TBitBtn
          Left = 8
          Top = 520
          Width = 120
          Height = 120
          Hint = 'AR12'
          Caption = 'Delamination at heel logo, outsole'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 28
          OnClick = BitBtn1Click
        end
        object BitBtn30: TBitBtn
          Left = 144
          Top = 520
          Width = 120
          Height = 120
          Hint = 'AR21'
          Caption = 'Broken, loose, skip stitch, run off stitch'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 29
          OnClick = BitBtn1Click
        end
        object BitBtn31: TBitBtn
          Left = 280
          Top = 520
          Width = 120
          Height = 120
          Hint = 'AR31'
          Caption = 'Tearing'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 30
          OnClick = BitBtn1Click
        end
        object BitBtn32: TBitBtn
          Left = 416
          Top = 520
          Width = 120
          Height = 120
          Hint = 'AR41'
          Caption = 'Yellowing upper'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 31
          OnClick = BitBtn1Click
        end
        object BitBtn33: TBitBtn
          Left = 552
          Top = 520
          Width = 120
          Height = 120
          Hint = 'AR47'
          Caption = 'Wrong thread'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 32
          OnClick = BitBtn1Click
        end
        object BitBtn34: TBitBtn
          Left = 688
          Top = 520
          Width = 120
          Height = 120
          Hint = '446'
          Caption = 'Weaving mark'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 33
          OnClick = BitBtn1Click
        end
        object BitBtn35: TBitBtn
          Left = 823
          Top = 520
          Width = 120
          Height = 120
          Hint = 'AR11'
          Caption = 'Delamination at foxing'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 34
          OnClick = BitBtn1Click
        end
        object BitBtn36: TBitBtn
          Left = 8
          Top = 648
          Width = 120
          Height = 120
          Hint = 'AR12'
          Caption = 'Delamination at heel logo, outsole'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 35
          Visible = False
          OnClick = BitBtn1Click
        end
      end
      object Panel10: TPanel
        Left = 969
        Top = 0
        Width = 945
        Height = 538
        Align = alLeft
        TabOrder = 1
        object Image8: TImage
          Left = 455
          Top = 13
          Width = 57
          Height = 49
          Center = True
          Picture.Data = {
            0A544A504547496D616765480E0000FFD8FFE000104A46494600010101004800
            480000FFE202284943435F50524F46494C450001010000021800000000043000
            006D6E74725247422058595A2000000000000000000000000061637370000000
            000000000000000000000000000000000000000000000000010000F6D6000100
            000000D32D000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000964657363000000
            F0000000747258595A00000164000000146758595A0000017800000014625859
            5A0000018C0000001472545243000001A00000002867545243000001A0000000
            2862545243000001A00000002877747074000001C80000001463707274000001
            DC0000003C6D6C756300000000000000010000000C656E555300000058000000
            1C00730052004700420000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000058595A20000000
            0000006FA2000038F50000039058595A2000000000000062990000B785000018
            DA58595A2000000000000024A000000F840000B6CF7061726100000000000400
            00000266660000F2A700000D59000013D000000A5B000000000000000058595A
            20000000000000F6D6000100000000D32D6D6C75630000000000000001000000
            0C656E5553000000200000001C0047006F006F0067006C006500200049006E00
            63002E00200032003000310036FFDB0043000A07070807060A0808080B0A0A0B
            0E18100E0D0D0E1D15161118231F2524221F2221262B372F2629342921223041
            3134393B3E3E3E252E4449433C48373D3E3BFFDB0043010A0B0B0E0D0E1C1010
            1C3B2822283B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B
            3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3BFFC000110800A000A0
            03012200021101031101FFC4001B000100020301010000000000000000000000
            04050103060207FFC40044100001030301040606070506070000000001000203
            04051121123141510613142271811532426191F0335262A1B1C1D123344372F1
            07246393A2E12547537585B2C3FFC40014010100000000000000000000000000
            000000FFC40014110100000000000000000000000000000000FFDA000C030100
            02110311003F00FAD64F34C9E6888193CD3279A22064F34C9E6B0A04F756093A
            8A48DD5337266E1E682C3279AD13575353E92CEC691C3393F051DB6CB8D6F7AB
            6ABA861FE145BFCCFF00552E9EC96FA7C629C48EFAD277BFD904175F6976B663
            6CD29FB0DFD567D2B39F52DB54E1FCA7F4576D6358DD96343472030BD20A2F4A
            CEDF5EDB54D1FCA7F446DF6936B66412C47EDB7F457ABCBD8C91BB2F6870E446
            5057C35B4F51F453B1C79675F82DD93CD6BA8B1DBEA327A811BBEB47DDC796E5
            11F6EB95177A92A7B4463F872EFF0023FD104FC9E6993CD40A7BAC6F93A9A963
            A9A61ECBF407CD4F40C9E6993CD1103279A0273BD106F40444405AE79E3A788C
            B2B835A38949E78E9E174B2BB0D6850A8E8E4BB4A2B2B5A5B4E3E8A13C7DE507
            98E2ABBD1DA25D4D45FEA93E7E72AE2968E9E8A3EAE08C30713C4F895B800000
            0600E0B280888808888088880888823D5D0D3D747B13C61DC8F11E0553BDB576
            53DF2EA8A3CFADED31740B0E68734B5C0107420F1410629A39E31244E0E6BB71
            0BDAADAAA592CD31AAA505D4AE3FB58BEAFBC29F14AC9E26CB1BB69AE190507B
            41BD106F4058DCB2ABEEB33CB63A283E9AA0ECF80E3F3E283C4319BD57173BF7
            2A73A0FF00A8EF9F9D55F0000C018016AA4A68E8E9990463BAC1BF99E256E404
            44404444044440444404444044441873439A5AE00823041E2A81CC365AF0CC9E
            C7507BB9F61DF3F3A2E8147AEA4657523E07FB4343C8F02835A0DEA05AAA1EF8
            5D4D3693539D8703C47053C6F40502D2DEDB72A8AF76AC8CF5517E67E79ADD70
            9BB3D04D203821B81E2740A459E9C535AE066357376DDE275413511101111011
            60B9A0804804EE195940444404444044582E6B7D6701E25065111011110525C5
            9D8AF1055B748EA3F67278F03F87C14F1BD6BBE53F68B54D81DE8C6D8F7637FD
            D95E68A6ED1490CB9C973467C78A0877BCBE9E1801D6599ADF9FB95E80000068
            02A2B8EB71B6B7FC6CFC0857C808888382B2544D67BF565749238D05C2E9514D
            2E4E9148243B0EF703923E0A7B6E0FB5D574BEB9A369D4EE8DEC07767AA18FBD
            4CA1B13AA6CF76B7DC222C656575448C3904ECB9F96B863C8A8360B15CE7A4BE
            535F62D87576CC5D635C0F581ACD8DB183C700EA827507452D93DBE396E74E2B
            AB27607CD513125E5C464EC9F640E18C2DBD1A9E76BAE16BA899F3BADD51D5C7
            23CE5CE8DCD0E6E4F1201C67DCB551DCEED6EA38E86B2C95555510B431B35316
            18E50340EC9702DCF1C8533A3F6EA9A286A6A6BB63B6574C6799AC390CD006B0
            1E38006BE28345F0917FE8F8077D4C99FF0029CB9DAD964B774F6BEF21EE1053
            4B4D0D4373A08A48F05DE4E0D2BA8BB515454DE2CD3C31ED474D3BDF2BB23BA0
            C6E00FC48515B647D5DDBA44DAC888A4B8C70B237E477B119048E583CD050F49
            E692E5D26A7958F70A6B5D6D340307474AF782EF83401E6AFBA565D5C686C31B
            883709B33169C16C2CEF3F5E19D079A8D51D199686C74343445F57232E5154CF
            2BC80E7F7F2E71F01F82DDE817DD7A455B70B936A218E36B69E8C4550E8C960D
            5CECB08D0B8EE3C9062C1719287A375B4F524BEA2CBD644FCFB6D60CB0F9B70B
            CDB6C76DA9B3C575BEC7155D4D444269A6AA396C608CE1B9D1A06782CB3A3A68
            2FB276664D2DBEE54AE86B0C9317B9AE1EAB897124E412D59A3A8B859EDECB55
            C2CF535F1C2DEAA39E9831ED958341B4D241071BF820D37186D94DD0ABCB2D15
            6D9A0EA5EED965475AD88ECEE1A9C0D338F7A8B6EA7E8AEC52B85A2AFAFC30ED
            F62A8C6D69AE718DFC56C6D9ABA4B1F48C32DFD99D71C9A6A6DA60701B01BAE0
            E0648E6AD692EB708A9A081FD1DB802C63585DB70E3418CFD220BC44441E5EC1
            246E63B73810552589C7B098DDBE390B7F3FCD5EAA2B5776A6B99C1B507F13FA
            20C5C74B95B5DFE363E242BE5437ACC7041381AC5335CAF41C8C8DC83288B456
            D5C541453D5CE711411BA471F701941B83812402091BFDC8082320823DCB86B1
            435366BA5BEE9565C0DFC385503B992B897C7E1A12D57162FF00865FAE7653A4
            6F776CA61F65E7BE0783BF141D0E4671919E481C09201048DFEE5CBDBEB2292B
            EF5D26A877F77A669A680FD88F5791E2EFC157D8A0A8B25D6DF72AA7387A7DAE
            15409D193125F1FF00A496A0EE32338C8CEFC2020EE20AA0FF0098DFF88FFEC9
            D0EFDCAE3FF73A9FFDD05FEE4043864104730A8FA5D512B6D02DF4CEC54DCA46
            D2C64700EF59DE4DCAD1D178C5A2BAE1D1DC9EAE99C27A5DAE313F8793B23CD0
            743D6301C6DB73CB2BD1200C9381CCAF9FD08B476BBD9AFE8F545C65F494F896
            2A2EB703234DAE077FC56D797BBFB28ADDA976C6CBF61A5FB4E89BB7A309E606
            883BC5E0CB18382F683E2917D0B3F942E1281B6735976EDDD1E9AE12FA4A7FDB
            3287AE18CEEDAFC9077A0823208239859512D829C5BA114B48EA48707620745D
            5966BF57829680A8AD5AD5573F83AA0FE27F5576F70631CF7681A32551D89A7B
            1191DBE590BBF2FC9048B8C3D7DBE68C0C9D9C8F11AA9368A8ED36B81F9D4376
            4F88D16540B3BBB1DC2A6DEED1AE3D6C5E1C7E7DC82ED537496DF5377A4A7B74
            4CCD34F3B7B5BF680C44DD48E792401A2B9441CC5D7A156E7DB65F4740F8AB63
            1B74EF351210D7B756E85D8E1859E905BEF1554D4173B640D6DD606398F8DCF0
            06CBDB870CE7070704782E991073359D1E98F47EDBD1FA766D52EDB056C9B78E
            E0EF3BDE4B9DCB9AC5D7A156F7DB6536C85F157440494CF350F3B323756FACE2
            3863CD74E8828E9A8ABA4E9545749E9C451BAD62178DB07665DBDA2DD0EBE3B9
            41B57A72CC2B601627D4B25AD9A6648DAA8DA0B5CEC8D095D5220E6A7B34FD20
            BDC55378A2743494D4D88A1EBF5EB5C7BC72C39D0003CD1FD1A65AEF36FB8D9A
            9DC0B5E62AA63A673B6A270DFDE3EC900E02E951072D6E17BB3D45CE3658DD53
            1D4D7CB511C82AA3682D7631A139E0BC54582E4FE89DE29DCC8DD5D7295F3753
            1BFBAC248EE8271C06F5D6220A5A6B95E4BE28A5E8EC91B090D749DAE23B2389
            C03AA836F37BB44D718D9637D4C73D74B3B246D4C6DCB5C74D09CF05D4220D14
            734F3D2B24A9A534B2BB3B51178796EBA6A343A6BE6B7A220AFBDD4767B54C73
            DE78D81E7FED95E2861ECF470C4460B5A33E3C547B9BBB6DDA9E89BAB21FDA49
            E3C07CF353C6F4055D7589ECEAEBA01FB5A7393EF6F1F9F1562B040230464141
            229AA23ABA664F19CB5E33E1EE5B550534A6CB5C6190FF00739CE58E3EC395F2
            0CA222022220222202222022220222202D15954CA2A57CF26E68D0733C02DC48
            0092700715432C86F55E00FDCA9CFF0098EF9F9D507BB540F11BEAE7FA6A83B4
            7DC382B01BD61646F4044441AAA29E3AA85D14A32D77DDEF51286BA4B6CA286B
            9D98F74331DD8E45582D5514F155446295BB4D3F720B059541154D5D9488E60E
            A8A3E0F1EB315CD3D5435710920903DA7970F141B91110111101111011110160
            900649C00B554D5C14717593C818DE19DE7C02A6926ABBD1D968753D1713ED48
            83D5656497698D151B88A71F4B30E3EE0A6C10474F0B6289B86B46890411D3C4
            2289A1AD1C16C4041BD106F4044440444418201182320AAF96D5B12F5F4329A6
            9790F54F92B144101B77ACA3EEDC290B9A3F8B0EA3E1FD14EA7BBD05481B152C
            07EABCEC9FBD65459ADD4739CC94ECCF31A1FB905A8208C8390B2A87D0914673
            0544F09FB2F4F47568F56ED3F9E4FE682F960900649C0F7AA2F47569F5AED3F9
            647E69E8485E733CF3CC7ED3D058D45E282981DBA9638FD56778FDCA0BAED5D5
            9DDA0A531B0FF166FC87F55BA1B7D253EB1C0C04712327E2549415F0DA9A65EB
            EB65754CDF6BD51E4A7EE594404444041BD106F41FFFD9}
          Proportional = True
          Stretch = True
          Visible = False
        end
        object Panel11: TPanel
          Left = 1
          Top = 1
          Width = 943
          Height = 24
          Align = alTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object Panel12: TPanel
          Left = 1
          Top = 25
          Width = 943
          Height = 200
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Shape1: TShape
            Left = 0
            Top = 199
            Width = 943
            Height = 1
            Align = alBottom
          end
          object Image9: TImage
            Left = 201
            Top = 0
            Width = 200
            Height = 199
            Align = alLeft
            Center = True
            Proportional = True
            Stretch = True
          end
          object Image10: TImage
            Left = 0
            Top = 0
            Width = 200
            Height = 199
            Align = alLeft
            Center = True
            Proportional = True
            Stretch = True
          end
          object Shape2: TShape
            Left = 200
            Top = 0
            Width = 1
            Height = 199
            Align = alLeft
          end
        end
        object Panel13: TPanel
          Left = 1
          Top = 225
          Width = 943
          Height = 200
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object Shape5: TShape
            Left = 200
            Top = 0
            Width = 1
            Height = 199
            Align = alLeft
          end
          object Shape6: TShape
            Left = 0
            Top = 199
            Width = 943
            Height = 1
            Align = alBottom
          end
          object Image11: TImage
            Left = 201
            Top = 0
            Width = 200
            Height = 199
            Align = alLeft
            Center = True
            Proportional = True
            Stretch = True
          end
          object Image12: TImage
            Left = 0
            Top = 0
            Width = 200
            Height = 199
            Align = alLeft
            Center = True
            Proportional = True
            Stretch = True
          end
        end
        object Panel14: TPanel
          Left = 1
          Top = 425
          Width = 943
          Height = 200
          Align = alTop
          TabOrder = 3
          object Image13: TImage
            Left = 1
            Top = 1
            Width = 200
            Height = 198
            Align = alLeft
            Center = True
            Proportional = True
            Stretch = True
          end
          object Shape3: TShape
            Left = 201
            Top = 1
            Width = 1
            Height = 198
            Align = alLeft
          end
          object Image14: TImage
            Left = 202
            Top = 1
            Width = 200
            Height = 198
            Align = alLeft
            Center = True
            Proportional = True
            Stretch = True
          end
        end
      end
    end
    object TS4: TTabSheet
      Caption = 'Image1'
      ImageIndex = 3
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1536
        Height = 538
        Align = alClient
        TabOrder = 0
        object Image7: TImage
          Left = 455
          Top = 13
          Width = 57
          Height = 49
          Center = True
          Picture.Data = {
            0A544A504547496D616765480E0000FFD8FFE000104A46494600010101004800
            480000FFE202284943435F50524F46494C450001010000021800000000043000
            006D6E74725247422058595A2000000000000000000000000061637370000000
            000000000000000000000000000000000000000000000000010000F6D6000100
            000000D32D000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000964657363000000
            F0000000747258595A00000164000000146758595A0000017800000014625859
            5A0000018C0000001472545243000001A00000002867545243000001A0000000
            2862545243000001A00000002877747074000001C80000001463707274000001
            DC0000003C6D6C756300000000000000010000000C656E555300000058000000
            1C00730052004700420000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000058595A20000000
            0000006FA2000038F50000039058595A2000000000000062990000B785000018
            DA58595A2000000000000024A000000F840000B6CF7061726100000000000400
            00000266660000F2A700000D59000013D000000A5B000000000000000058595A
            20000000000000F6D6000100000000D32D6D6C75630000000000000001000000
            0C656E5553000000200000001C0047006F006F0067006C006500200049006E00
            63002E00200032003000310036FFDB0043000A07070807060A0808080B0A0A0B
            0E18100E0D0D0E1D15161118231F2524221F2221262B372F2629342921223041
            3134393B3E3E3E252E4449433C48373D3E3BFFDB0043010A0B0B0E0D0E1C1010
            1C3B2822283B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B
            3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3BFFC000110800A000A0
            03012200021101031101FFC4001B000100020301010000000000000000000000
            04050103060207FFC40044100001030301040606070506070000000001000203
            04051121123141510613142271811532426191F0335262A1B1C1D123344372F1
            07246393A2E12547537585B2C3FFC40014010100000000000000000000000000
            000000FFC40014110100000000000000000000000000000000FFDA000C030100
            02110311003F00FAD64F34C9E6888193CD3279A22064F34C9E6B0A04F756093A
            8A48DD5337266E1E682C3279AD13575353E92CEC691C3393F051DB6CB8D6F7AB
            6ABA861FE145BFCCFF00552E9EC96FA7C629C48EFAD277BFD904175F6976B663
            6CD29FB0DFD567D2B39F52DB54E1FCA7F4576D6358DD96343472030BD20A2F4A
            CEDF5EDB54D1FCA7F446DF6936B66412C47EDB7F457ABCBD8C91BB2F6870E446
            5057C35B4F51F453B1C79675F82DD93CD6BA8B1DBEA327A811BBEB47DDC796E5
            11F6EB95177A92A7B4463F872EFF0023FD104FC9E6993CD40A7BAC6F93A9A963
            A9A61ECBF407CD4F40C9E6993CD1103279A0273BD106F40444405AE79E3A788C
            B2B835A38949E78E9E174B2BB0D6850A8E8E4BB4A2B2B5A5B4E3E8A13C7DE507
            98E2ABBD1DA25D4D45FEA93E7E72AE2968E9E8A3EAE08C30713C4F895B800000
            0600E0B280888808888088880888823D5D0D3D747B13C61DC8F11E0553BDB576
            53DF2EA8A3CFADED31740B0E68734B5C0107420F1410629A39E31244E0E6BB71
            0BDAADAAA592CD31AAA505D4AE3FB58BEAFBC29F14AC9E26CB1BB69AE190507B
            41BD106F4058DCB2ABEEB33CB63A283E9AA0ECF80E3F3E283C4319BD57173BF7
            2A73A0FF00A8EF9F9D55F0000C018016AA4A68E8E9990463BAC1BF99E256E404
            44404444044440444404444044441873439A5AE00823041E2A81CC365AF0CC9E
            C7507BB9F61DF3F3A2E8147AEA4657523E07FB4343C8F02835A0DEA05AAA1EF8
            5D4D3693539D8703C47053C6F40502D2DEDB72A8AF76AC8CF5517E67E79ADD70
            9BB3D04D203821B81E2740A459E9C535AE066357376DDE275413511101111011
            60B9A0804804EE195940444404444044582E6B7D6701E25065111011110525C5
            9D8AF1055B748EA3F67278F03F87C14F1BD6BBE53F68B54D81DE8C6D8F7637FD
            D95E68A6ED1490CB9C973467C78A0877BCBE9E1801D6599ADF9FB95E80000068
            02A2B8EB71B6B7FC6CFC0857C808888382B2544D67BF565749238D05C2E9514D
            2E4E9148243B0EF703923E0A7B6E0FB5D574BEB9A369D4EE8DEC07767AA18FBD
            4CA1B13AA6CF76B7DC222C656575448C3904ECB9F96B863C8A8360B15CE7A4BE
            535F62D87576CC5D635C0F581ACD8DB183C700EA827507452D93DBE396E74E2B
            AB27607CD513125E5C464EC9F640E18C2DBD1A9E76BAE16BA899F3BADD51D5C7
            23CE5CE8DCD0E6E4F1201C67DCB551DCEED6EA38E86B2C95555510B431B35316
            18E50340EC9702DCF1C8533A3F6EA9A286A6A6BB63B6574C6799AC390CD006B0
            1E38006BE28345F0917FE8F8077D4C99FF0029CB9DAD964B774F6BEF21EE1053
            4B4D0D4373A08A48F05DE4E0D2BA8BB515454DE2CD3C31ED474D3BDF2BB23BA0
            C6E00FC48515B647D5DDBA44DAC888A4B8C70B237E477B119048E583CD050F49
            E692E5D26A7958F70A6B5D6D340307474AF782EF83401E6AFBA565D5C686C31B
            883709B33169C16C2CEF3F5E19D079A8D51D199686C74343445F57232E5154CF
            2BC80E7F7F2E71F01F82DDE817DD7A455B70B936A218E36B69E8C4550E8C960D
            5CECB08D0B8EE3C9062C1719287A375B4F524BEA2CBD644FCFB6D60CB0F9B70B
            CDB6C76DA9B3C575BEC7155D4D444269A6AA396C608CE1B9D1A06782CB3A3A68
            2FB276664D2DBEE54AE86B0C9317B9AE1EAB897124E412D59A3A8B859EDECB55
            C2CF535F1C2DEAA39E9831ED958341B4D241071BF820D37186D94DD0ABCB2D15
            6D9A0EA5EED965475AD88ECEE1A9C0D338F7A8B6EA7E8AEC52B85A2AFAFC30ED
            F62A8C6D69AE718DFC56C6D9ABA4B1F48C32DFD99D71C9A6A6DA60701B01BAE0
            E0648E6AD692EB708A9A081FD1DB802C63585DB70E3418CFD220BC44441E5EC1
            246E63B73810552589C7B098DDBE390B7F3FCD5EAA2B5776A6B99C1B507F13FA
            20C5C74B95B5DFE363E242BE5437ACC7041381AC5335CAF41C8C8DC83288B456
            D5C541453D5CE711411BA471F701941B83812402091BFDC8082320823DCB86B1
            435366BA5BEE9565C0DFC385503B992B897C7E1A12D57162FF00865FAE7653A4
            6F776CA61F65E7BE0783BF141D0E4671919E481C09201048DFEE5CBDBEB2292B
            EF5D26A877F77A669A680FD88F5791E2EFC157D8A0A8B25D6DF72AA7387A7DAE
            15409D193125F1FF00A496A0EE32338C8CEFC2020EE20AA0FF0098DFF88FFEC9
            D0EFDCAE3FF73A9FFDD05FEE4043864104730A8FA5D512B6D02DF4CEC54DCA46
            D2C64700EF59DE4DCAD1D178C5A2BAE1D1DC9EAE99C27A5DAE313F8793B23CD0
            743D6301C6DB73CB2BD1200C9381CCAF9FD08B476BBD9AFE8F545C65F494F896
            2A2EB703234DAE077FC56D797BBFB28ADDA976C6CBF61A5FB4E89BB7A309E606
            883BC5E0CB18382F683E2917D0B3F942E1281B6735976EDDD1E9AE12FA4A7FDB
            3287AE18CEEDAFC9077A0823208239859512D829C5BA114B48EA48707620745D
            5966BF57829680A8AD5AD5573F83AA0FE27F5576F70631CF7681A32551D89A7B
            1191DBE590BBF2FC9048B8C3D7DBE68C0C9D9C8F11AA9368A8ED36B81F9D4376
            4F88D16540B3BBB1DC2A6DEED1AE3D6C5E1C7E7DC82ED537496DF5377A4A7B74
            4CCD34F3B7B5BF680C44DD48E792401A2B9441CC5D7A156E7DB65F4740F8AB63
            1B74EF351210D7B756E85D8E1859E905BEF1554D4173B640D6DD606398F8DCF0
            06CBDB870CE7070704782E991073359D1E98F47EDBD1FA766D52EDB056C9B78E
            E0EF3BDE4B9DCB9AC5D7A156F7DB6536C85F157440494CF350F3B323756FACE2
            3863CD74E8828E9A8ABA4E9545749E9C451BAD62178DB07665DBDA2DD0EBE3B9
            41B57A72CC2B601627D4B25AD9A6648DAA8DA0B5CEC8D095D5220E6A7B34FD20
            BDC55378A2743494D4D88A1EBF5EB5C7BC72C39D0003CD1FD1A65AEF36FB8D9A
            9DC0B5E62AA63A673B6A270DFDE3EC900E02E951072D6E17BB3D45CE3658DD53
            1D4D7CB511C82AA3682D7631A139E0BC54582E4FE89DE29DCC8DD5D7295F3753
            1BFBAC248EE8271C06F5D6220A5A6B95E4BE28A5E8EC91B090D749DAE23B2389
            C03AA836F37BB44D718D9637D4C73D74B3B246D4C6DCB5C74D09CF05D4220D14
            734F3D2B24A9A534B2BB3B51178796EBA6A343A6BE6B7A220AFBDD4767B54C73
            DE78D81E7FED95E2861ECF470C4460B5A33E3C547B9BBB6DDA9E89BAB21FDA49
            E3C07CF353C6F4055D7589ECEAEBA01FB5A7393EF6F1F9F1562B040230464141
            229AA23ABA664F19CB5E33E1EE5B550534A6CB5C6190FF00739CE58E3EC395F2
            0CA222022220222202222022220222202D15954CA2A57CF26E68D0733C02DC48
            0092700715432C86F55E00FDCA9CFF0098EF9F9D507BB540F11BEAE7FA6A83B4
            7DC382B01BD61646F4044441AAA29E3AA85D14A32D77DDEF51286BA4B6CA286B
            9D98F74331DD8E45582D5514F155446295BB4D3F720B059541154D5D9488E60E
            A8A3E0F1EB315CD3D5435710920903DA7970F141B91110111101111011110160
            900649C00B554D5C14717593C818DE19DE7C02A6926ABBD1D968753D1713ED48
            83D5656497698D151B88A71F4B30E3EE0A6C10474F0B6289B86B46890411D3C4
            2289A1AD1C16C4041BD106F4044440444418201182320AAF96D5B12F5F4329A6
            9790F54F92B144101B77ACA3EEDC290B9A3F8B0EA3E1FD14EA7BBD05481B152C
            07EABCEC9FBD65459ADD4739CC94ECCF31A1FB905A8208C8390B2A87D0914673
            0544F09FB2F4F47568F56ED3F9E4FE682F960900649C0F7AA2F47569F5AED3F9
            647E69E8485E733CF3CC7ED3D058D45E282981DBA9638FD56778FDCA0BAED5D5
            9DDA0A531B0FF166FC87F55BA1B7D253EB1C0C04712327E2549415F0DA9A65EB
            EB65754CDF6BD51E4A7EE594404444041BD106F41FFFD9}
          Proportional = True
          Stretch = True
          Visible = False
        end
        object Panel4: TPanel
          Left = 1
          Top = 1
          Width = 1534
          Height = 24
          Align = alTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object Panel2: TPanel
          Left = 1
          Top = 25
          Width = 1534
          Height = 776
          Align = alTop
          TabOrder = 1
          object Shape4: TShape
            Left = 1
            Top = 1
            Width = 1
            Height = 774
            Align = alLeft
          end
          object Image1: TImage
            Left = 2
            Top = 1
            Width = 1531
            Height = 774
            Align = alClient
            Center = True
            Proportional = True
            Stretch = True
          end
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Image2'
      ImageIndex = 2
      object Image2: TImage
        Left = 0
        Top = 24
        Width = 1785
        Height = 514
        Align = alLeft
        Center = True
        Proportional = True
        Stretch = True
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1536
        Height = 24
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Image3'
      ImageIndex = 3
      object Image3: TImage
        Left = 0
        Top = 24
        Width = 1536
        Height = 514
        Align = alClient
        Center = True
        Proportional = True
        Stretch = True
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 1536
        Height = 24
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Image4'
      ImageIndex = 4
      object Image4: TImage
        Left = 0
        Top = 24
        Width = 1825
        Height = 514
        Align = alLeft
        Center = True
        Proportional = True
        Stretch = True
      end
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 1536
        Height = 24
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Image5'
      ImageIndex = 5
      object Image5: TImage
        Left = 0
        Top = 24
        Width = 1833
        Height = 514
        Align = alLeft
        Center = True
        Proportional = True
        Stretch = True
      end
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 1536
        Height = 24
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Image6'
      ImageIndex = 6
      object Image6: TImage
        Left = 0
        Top = 24
        Width = 1536
        Height = 514
        Align = alClient
        Center = True
        Proportional = True
        Stretch = True
      end
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 1536
        Height = 24
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object QNGReason: TQuery
    DatabaseName = 'DB'
    Left = 72
    Top = 313
  end
  object QSearch: TQuery
    DatabaseName = 'DB'
    Left = 104
    Top = 313
  end
  object QUpdate: TQuery
    DatabaseName = 'DB'
    Left = 136
    Top = 313
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 200
    Top = 313
  end
end
