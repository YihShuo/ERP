object OrderImport_DD: TOrderImport_DD
  Left = 393
  Top = 249
  Width = 1106
  Height = 494
  Caption = 'OrderImport_DD'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Splitter1: TSplitter
    Left = 919
    Top = 73
    Width = 5
    Height = 390
    Align = alRight
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1098
    Height = 73
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 12
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DDBH:'
    end
    object Label6: TLabel
      Left = 357
      Top = 45
      Width = 28
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'To'
    end
    object Label2: TLabel
      Left = 362
      Top = 11
      Width = 68
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'GSBH:'
    end
    object Label3: TLabel
      Left = 0
      Top = 43
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Customer:'
    end
    object Edit1: TEdit
      Left = 72
      Top = 8
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Button1: TButton
      Left = 508
      Top = 33
      Width = 75
      Height = 33
      Caption = 'QUERY'
      TabOrder = 5
      OnClick = Button1Click
    end
    object DTP1: TDateTimePicker
      Left = 250
      Top = 41
      Width = 105
      Height = 24
      Date = 40017.359212777780000000
      Format = 'yyyy/MM/dd'
      Time = 40017.359212777780000000
      TabOrder = 1
    end
    object DTP2: TDateTimePicker
      Left = 385
      Top = 40
      Width = 105
      Height = 24
      Date = 40017.359212777780000000
      Format = 'yyyy/MM/dd'
      Time = 40017.359212777780000000
      TabOrder = 2
    end
    object CBX4: TComboBox
      Left = 432
      Top = 8
      Width = 57
      Height = 24
      ItemHeight = 16
      TabOrder = 4
    end
    object Edit2: TEdit
      Left = 72
      Top = 40
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object rbShipdate: TRadioButton
      Left = 176
      Top = 44
      Width = 73
      Height = 17
      Caption = 'CSD:'
      Checked = True
      TabOrder = 6
      TabStop = True
    end
    object rbBuyno: TRadioButton
      Left = 178
      Top = 10
      Width = 71
      Height = 17
      Caption = 'BuyNo:'
      TabOrder = 7
    end
    object BuyNoEdit: TEdit
      Left = 250
      Top = 6
      Width = 109
      Height = 24
      TabOrder = 8
    end
    object CheckBox2: TCheckBox
      Left = 512
      Top = 8
      Width = 177
      Height = 17
      Caption = 'Only show tot yet cycle'
      TabOrder = 9
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 924
    Top = 73
    Width = 174
    Height = 390
    Align = alRight
    DataSource = DS2
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ZLCC'
        Footers = <
          item
            FieldName = 'ZLCC'
            ValueType = fvtCount
          end>
        Width = 39
      end
      item
        EditButtons = <>
        FieldName = 'XXCC'
        Footers = <>
        Width = 38
      end
      item
        EditButtons = <>
        FieldName = 'QTY'
        Footers = <
          item
            FieldName = 'QTY'
            ValueType = fvtSum
          end>
        Width = 52
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 919
    Height = 390
    Align = alClient
    TabOrder = 2
    object DBGrid2: TDBGridEh
      Left = 1
      Top = 209
      Width = 917
      Height = 180
      Align = alClient
      DataSource = DSDetail
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
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
      PopupMenu = PopupMenu1
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      OnCellClick = DBGrid2CellClick
      OnColExit = DBGrid2ColExit
      OnKeyPress = DBGrid2KeyPress
    end
    object DBGrid1: TDBGridEh
      Left = 1
      Top = 1
      Width = 917
      Height = 128
      Align = alTop
      DataSource = DS1
      Flat = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FrozenCols = 1
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = #26032#32048#26126#39636
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      OnGetCellParams = DBGrid1GetCellParams
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          EditButtons = <>
          FieldName = 'ZLBH'
          Footers = <>
          Title.TitleButton = True
          Width = 81
        end
        item
          EditButtons = <>
          FieldName = 'GSBH'
          Footers = <>
          Width = 44
        end
        item
          EditButtons = <>
          FieldName = 'Article'
          Footers = <>
          Title.TitleButton = True
          Width = 113
        end
        item
          EditButtons = <>
          FieldName = 'XieMing'
          Footers = <>
          Title.TitleButton = True
          Width = 160
        end
        item
          EditButtons = <>
          FieldName = 'ShipDate'
          Footers = <>
          Title.Caption = 'CSD'
          Title.TitleButton = True
          Width = 72
        end
        item
          EditButtons = <>
          FieldName = 'Qty'
          Footers = <>
          Width = 57
        end
        item
          EditButtons = <>
          FieldName = 'DAOMH'
          Footers = <>
          Width = 104
        end
        item
          EditButtons = <>
          FieldName = 'KFJC'
          Footers = <>
          Width = 88
        end
        item
          EditButtons = <>
          FieldName = 'BZCL'
          Footers = <>
          Title.Caption = 'Std Qty'
        end>
    end
    object pnlShow: TPanel
      Left = 1
      Top = 129
      Width = 917
      Height = 80
      Align = alTop
      BevelOuter = bvNone
      Color = cl3DLight
      TabOrder = 2
      object Shape2: TShape
        Left = 201
        Top = 3
        Width = 296
        Height = 68
        Brush.Color = clSkyBlue
        Pen.Color = 12615808
        Shape = stRoundRect
      end
      object Label5: TLabel
        Left = 351
        Top = 14
        Width = 6
        Height = 16
        Caption = '/'
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label7: TLabel
        Left = 500
        Top = 14
        Width = 9
        Height = 16
        Caption = '='
        Color = cl3DLight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label10: TLabel
        Left = 209
        Top = 14
        Width = 73
        Height = 20
        Alignment = taCenter
        AutoSize = False
        Caption = 'Total Qty'
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label11: TLabel
        Left = 361
        Top = 14
        Width = 61
        Height = 20
        Alignment = taCenter
        AutoSize = False
        Caption = 'Std Qty'
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label12: TLabel
        Left = 512
        Top = 11
        Width = 41
        Height = 20
        Alignment = taCenter
        AutoSize = False
        Caption = 'tua '
        Color = cl3DLight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Shape1: TShape
        Left = 37
        Top = 18
        Width = 124
        Height = 40
        Brush.Color = 12615808
        Pen.Color = 12615808
        Shape = stRoundRect
      end
      object Label8: TLabel
        Left = 352
        Top = 43
        Width = 53
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Pack'
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label9: TLabel
        Left = 412
        Top = 43
        Width = 9
        Height = 16
        Caption = '='
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label4: TLabel
        Left = 57
        Top = 30
        Width = 73
        Height = 20
        Alignment = taCenter
        AutoSize = False
        Caption = 'Empty'
        Color = 12615808
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object edtKey: TEdit
        Left = 426
        Top = 10
        Width = 63
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Text = 'Qty'
        OnExit = edtKeyExit
      end
      object edtTotal: TEdit
        Left = 286
        Top = 10
        Width = 57
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        Text = 'Total'
      end
      object lblKq: TEdit
        Left = 555
        Top = 11
        Width = 51
        Height = 24
        Color = 8716287
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        Text = '1'
      end
      object btnCalculate: TBitBtn
        Left = 609
        Top = 9
        Width = 93
        Height = 30
        Caption = 'Calculate'
        Enabled = False
        TabOrder = 3
        OnClick = DBGrid1DblClick
        Glyph.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          20000000000000090000C40E0000C40E00000000000000000000000000000000
          0000000000002121218A222222F7222222FE222222FF222222FF222222FE2222
          22FF222222FF222222FF222222FE222222FF222222FE222222FF222222FF2222
          22FE222222FF222222F72121218A000000000000000000000000000000000000
          000021212133242424FE252525FF252525FE252525FF252525FF252525FE2525
          25FF252525FF252525FF252525FE252525FF252525FE252525FF252525FF2525
          25FE252525FF252525FF242424FE222222330000000000000000000000000000
          00002424244A262626FE262626FE262626FE262626FE262626FE262626FE2626
          26FE262626FE262626FE262626FE262626FE262626FE262626FE262626FE2626
          26FE262626FE262626FE262626FE2424244A0000000000000000000000000000
          00002626264A272727FF272727FF272727FE6F6F6FFF7B7B7BFF464646FE2727
          27FF2E2E2EFF777777FF7A7A7AFE383838FF272727FE273628FF2B6A2EFF2A67
          2EFE272B27FF272727FF272727FE2626264A0000000000000000000000000000
          00002727274A282828FF282828FF333333FEF8F8F8FFF9F9F9FF9C9C9CFE2828
          28FF585858FFF9F9F9FFF9F9F9FE787878FF282828FE2E6E32FF38D541FF38D5
          41FE2B4B2DFF282828FF282828FE2727274A0000000000000000000000000000
          00002828284A292929FE292929FE2E2E2EFED4D4D4FEE1E1E1FE7F7F7FFE2929
          29FE464646FEDDDDDDFEE0E0E0FE606060FE292929FE307134FE3CD745FE3CD7
          45FE2D4D2FFE292929FE292929FE2828284A0000000000000000000000000000
          00002929294A2A2A2AFF2A2A2AFF2A2A2AFE292929FF292929FF2A2A2AFE2A2A
          2AFF2A2A2AFF292929FF292929FE2A2A2AFF2A2A2AFE337237FF40D949FF40D9
          49FE2E4E30FF2A2A2AFF2A2A2AFE2929294A0000000000000000000000000000
          00002A2A2A4A2B2B2BFF2B2B2BFF2D2D2DFE9F9F9FFFACACACFF626262FE2B2B
          2BFF3B3B3BFFA8A8A8FFABABABFE4C4C4CFF2A2A2AFE357339FF44DB4EFF44DB
          4EFE305032FF2B2B2BFF2A2A2AFE2A2A2A4A0000000000000000000000000000
          00002B2B2B4A2B2B2BFE2B2B2BFE373737FEF9F9F9FEF9F9F9FEA0A0A0FE2B2B
          2BFE5D5D5DFEF9F9F9FEF9F9F9FE7C7C7CFE2B2B2BFE37753BFE48DD52FE48DD
          52FE315133FE2B2B2BFE2B2B2BFE2B2B2B4A0000000000000000000000000000
          00002C2C2C4A2C2C2CFF2C2C2CFF2F2F2FFEA6A6A6FFB3B3B3FF676767FE2C2C
          2CFF3E3E3EFFAFAFAFFFB2B2B2FE505050FF2C2C2CFE324E34FF41A147FF409D
          46FE2F3A2FFF2C2C2CFF2C2C2CFE2C2C2C4A0000000000000000000000000000
          00002D2D2D4A2D2D2DFF2D2D2DFF2D2D2DFE2C2C2CFF2C2C2CFF2D2D2DFE2D2D
          2DFF2D2D2DFF2C2C2CFF2C2C2CFE2D2D2DFF2D2D2DFE2D2D2DFF2D2D2DFF2D2D
          2DFE2D2D2DFF2D2D2DFF2D2D2DFE2D2D2D4A0000000000000000000000000000
          00002E2E2E4A2E2E2EFF2E2E2EFF333333FED1D1D1FFDFDFDFFF7F7F7FFE2E2E
          2EFF494949FFDADADAFFDDDDDDFE616161FF2E2E2EFE666666FFDEDEDEFFDADA
          DAFE464646FF2E2E2EFF2E2E2EFE2E2E2E4A0000000000000000000000000000
          00002F2F2F4A2F2F2FFE2F2F2FFE3A3A3AFEF9F9F9FEF9F9F9FEA1A1A1FE2F2F
          2FFE5F5F5FFEF9F9F9FEF9F9F9FE7E7E7EFE2F2F2FFE828282FEF9F9F9FEF9F9
          F9FE595959FE2F2F2FFE2F2F2FFE2F2F2F4A0000000000000000000000000000
          00003030304A303030FF303030FF303030FE7A7A7AFF878787FF505050FE3030
          30FF373737FF838383FF868686FE424242FF303030FE434343FF868686FF8282
          82FE363636FF303030FF303030FE3030304A0000000000000000000000000000
          00003030304A313131FE313131FE313131FE313131FE313131FE313131FE3131
          31FE313131FE313131FE313131FE313131FE313131FE313131FE313131FE3131
          31FE313131FE313131FE313131FE3131314A0000000000000000000000000000
          00003131314A323232FF323232FF323232FE323232FF323232FF323232FE3232
          32FF323232FF323232FF323232FE323232FF323232FE323232FF323232FF3232
          32FE323232FF323232FF323232FE3131314A0000000000000000000000000000
          00003232324A333333FF333333FF333333FE515151FF696969FF696969FE6969
          69FF696969FF696969FF696969FE696969FF696969FE696969FF696969FF5757
          57FE333333FF333333FF333333FE3232324A0000000000000000000000000000
          00003333334A343434FE343434FE393939FEDFDFDFFEE5E5E5FEE5E5E5FEE5E5
          E5FEE5E5E5FEE5E5E5FEE5E5E5FEE5E5E5FEE5E5E5FEB3B3B3FEBBBBBBFEE3E3
          E3FE474747FE343434FE343434FE3333334A0000000000000000000000000000
          00003434344A353535FF353535FF3F3F3FFEECECECFFECECECFFECECECFEECEC
          ECFFECECECFFECECECFFECECECFEECECECFFECECECFEC6C6C6FFC8C8C8FFECEC
          ECFE535353FF353535FF353535FE3434344A0000000000000000000000000000
          00003535354A363636FF363636FF3C3C3CFEEEEEEEFFF3F3F3FFF3F3F3FEF3F3
          F3FFF3F3F3FFF3F3F3FFF3F3F3FEF3F3F3FFF3F3F3FEC0C0C0FFC8C8C8FFF2F2
          F2FE4B4B4BFF363636FF363636FE3535354A0000000000000000000000000000
          00003636364A363636FE363636FE363636FE5D5D5DFE797979FE797979FE7979
          79FE797979FE797979FE797979FE797979FE797979FE797979FE797979FE6464
          64FE363636FE363636FE363636FE3636364A0000000000000000000000000000
          00003737374A373737FF373737FF373737FE373737FF373737FF373737FE3737
          37FF373737FF373737FF373737FE373737FF373737FE373737FF373737FF3737
          37FE373737FF373737FF373737FE3737374A0000000000000000000000000000
          000037373733383838FE383838FF383838FE383838FF383838FF383838FE3838
          38FF383838FF383838FF383838FE383838FF383838FE383838FF383838FF3838
          38FE383838FF383838FF383838FE383838330000000000000000000000000000
          0000000000003939398A393939F7393939FE393939FE393939FE393939FE3939
          39FE393939FE393939FE393939FE393939FE393939FE393939FE393939FE3939
          39FE393939FE393939F73939398A000000000000000000000000}
      end
      object RB1: TRadioButton
        Left = 13
        Top = 31
        Width = 17
        Height = 17
        TabOrder = 4
      end
      object RB2: TRadioButton
        Left = 171
        Top = 29
        Width = 17
        Height = 17
        Checked = True
        TabOrder = 5
        TabStop = True
      end
      object CheckBox1: TCheckBox
        Left = 504
        Top = 48
        Width = 105
        Height = 17
        Caption = 'YL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object btnPaste: TBitBtn
        Left = 611
        Top = 41
        Width = 90
        Height = 30
        Caption = 'Paste'
        Enabled = False
        TabOrder = 7
        OnClick = btnPasteClick
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
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
          FF08F7070707070707F7B7B7B7B7B7B7B70707FFFFFFF6FFFFF7B7B7B7B7B7B7
          B70707F6F6F6F6F6FFF7B7B7B7B7B7B7B70707F6F6F6F6F6FFF7B7B7B7B7B7B7
          B70707F6F6F6F6F6FFF7B7B7B7B7B7B7B70707F6F6F6F6F6FFF7B7B7B7B7B7B7
          B70707F6F6F6F608F6F7B7B7B7B7B7B7B70707F6F6FFF707F7F7B7B7B7B7B7B7
          B70707FFFFFFF7F6A4FFB7B7B7B7B7B7B708A4F7F7F7A4A4FFF6B7B7B7B7B7B7
          B7080808080808F6F6F6B7B7B7BFBFBFBFBFBFBFBFB7B7BFFFF6B7B708A4ACAC
          A4ACACA4F5BFB7BFFFF6B7B7079BA4A4A4A4A49BF7B7B708FFF6F6F6F607079B
          FFA4070708F6F6F6F6F6F6F6F6FFF6A4A4A4F6FFF6F6F6F6F6F6}
      end
      object btnExcel: TBitBtn
        Left = 712
        Top = 20
        Width = 49
        Height = 49
        Hint = 'Modify Current'
        Caption = 'Excel'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnClick = btnExcelClick
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
      object EditPairs: TEdit
        Left = 426
        Top = 40
        Width = 63
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
        Text = '6'
      end
    end
  end
  object DS1: TDataSource
    DataSet = SpecMas
    Left = 464
    Top = 123
  end
  object SpecMas: TQuery
    AfterOpen = SpecMasAfterOpen
    AfterScroll = SpecMasAfterScroll
    DatabaseName = 'DB'
    SQL.Strings = (
      'select DDZL.ZLBH,DDZL.XieXing,DDZL.SheHao, XXZL.XieMing,  '
      
        '       DDZL.Article,DDZL.ShipDate,XXZL.CCGB as XXCC,DDZL.CCGB as' +
        ' DDCC ,'
      
        '       DDZL.Pairs as Qty,KFZL.KFJC,GSBH ,SMDD.YSBH,XXZL.DAOMH,SC' +
        'XXCL.BZCL'
      'from DDZL '
      
        'left join XXZL on XXZL.XieXIng=DDZl.XieXIng and XXZl.SheHao=DDZl' +
        '.SheHao'
      
        'left join SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.GXLB=' +
        #39'A'#39' '
      'left join KFZL on KFZl.KFDH=DDZL.KHBH '
      'left join (select distinct YSBH from SMDD,DDZL  '
      
        '             where DDZL.DDBH=SMDD.YSBH and DDZL.DDBH like '#39'Y1605' +
        '-0037%'#39
      
        '             and convert(smalldatetime,convert(varchar,DDZl.Ship' +
        'Date,111)) between '
      '      '#39'2016/05/06'#39' and '#39'2016/06/05'#39
      '          ) SMDD on SMDD.YSBH=DDZL.ZLBH '
      
        'where convert(smalldatetime,convert(varchar,DDZl.ShipDate,111)) ' +
        'between '
      '      '#39'2016/05/06'#39' and '#39'2016/06/05'#39
      '      and DDZl.ZLBH like '#39'Y1605-0037%'#39
      '      and DDZL.GSBH='#39'VA12'#39
      '      and KFZL.KFJC like '#39'%%'#39
      'order by DDZL.DDBH')
    Left = 432
    Top = 121
    object SpecMasZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object SpecMasXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object SpecMasSheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object SpecMasArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object SpecMasXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object SpecMasShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object SpecMasDDCC: TStringField
      FieldName = 'DDCC'
      FixedChar = True
      Size = 1
    end
    object SpecMasXXCC: TStringField
      FieldName = 'XXCC'
      FixedChar = True
      Size = 1
    end
    object SpecMasQty: TIntegerField
      FieldName = 'Qty'
      DisplayFormat = '##,#0'
    end
    object SpecMasGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object SpecMasKFJC: TStringField
      FieldName = 'KFJC'
      FixedChar = True
    end
    object SpecMasDAOMH: TStringField
      FieldName = 'DAOMH'
      FixedChar = True
      Size = 15
    end
    object SpecMasYSBH: TStringField
      FieldName = 'YSBH'
      FixedChar = True
      Size = 15
    end
    object SpecMasBZCL: TIntegerField
      FieldName = 'BZCL'
    end
  end
  object XXGX: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select XXGX.*,XXZL.XieMing,XXZL.Article,XXZL.DAOMH,SCGXDY.MEMO'
      'from XXGX'
      
        'left join DDZL on DDZL.XieXing=XXGX.XieXing and XXGX.SheHao=DDZL' +
        '.SheHao'
      
        'left join XXZL on XXZL.XieXing=XXGX.XieXing and XXZl.SheHao=XXGX' +
        '.SheHao'
      'left join SCGXDY on SCGXDY.GX=XXGX.GXLB and len(SCGXDY.GXLB)=1 '
      'where DDZL.ZLBH=:ZLBH'
      'order by XXGX.SCCX')
    Left = 304
    Top = 120
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'ZLBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object XXGXXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object XXGXSheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object XXGXGXLB: TStringField
      FieldName = 'GXLB'
      FixedChar = True
      Size = 1
    end
    object XXGXMEMO: TStringField
      FieldName = 'MEMO'
      FixedChar = True
      Size = 50
    end
    object XXGXSCCX: TStringField
      FieldName = 'SCCX'
      FixedChar = True
      Size = 1
    end
    object XXGXUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object XXGXUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object XXGXXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object XXGXArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object XXGXDAOMH: TStringField
      FieldName = 'DAOMH'
      FixedChar = True
      Size = 15
    end
  end
  object ZLZLS: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'select ZLZLS.*'
      'from ZLZLS'
      'where ZLZLS.ZLBH=:ZLBH'
      'order by ZLZLS.XXCC DESC')
    Left = 536
    Top = 121
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ZLBH'
        ParamType = ptUnknown
      end>
    object ZLZLSZLBH: TStringField
      FieldName = 'ZLBH'
      Origin = 'DB.ZLZLS.ZLBH'
      FixedChar = True
      Size = 15
    end
    object ZLZLSZLCC: TStringField
      FieldName = 'ZLCC'
      Origin = 'DB.ZLZLS.ZLCC'
      FixedChar = True
      Size = 6
    end
    object ZLZLSXXCC: TStringField
      FieldName = 'XXCC'
      Origin = 'DB.ZLZLS.XXCC'
      FixedChar = True
      Size = 6
    end
    object ZLZLSQTY: TIntegerField
      FieldName = 'QTY'
      Origin = 'DB.ZLZLS.QTY'
      DisplayFormat = '##,#0'
    end
  end
  object DS2: TDataSource
    DataSet = ZLZLS
    Left = 568
    Top = 124
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 272
    Top = 120
  end
  object UpdateSQL2: TUpdateSQL
    Left = 280
    Top = 320
  end
  object ProdDetail: TQuery
    CachedUpdates = True
    AfterOpen = ProdDetailAfterOpen
    AfterInsert = ProdDetailAfterInsert
    BeforeScroll = ProdDetailBeforeScroll
    DatabaseName = 'DB'
    DataSource = DS1
    RequestLive = True
    UpdateObject = UpdateSQL2
    Left = 312
    Top = 320
  end
  object DSDetail: TDataSource
    DataSet = ProdDetail
    Left = 344
    Top = 320
  end
  object PopupMenu1: TPopupMenu
    Left = 248
    Top = 321
    object N1: TMenuItem
      Caption = 'Switch Production Order'
      Enabled = False
      OnClick = N1Click
    end
  end
end
