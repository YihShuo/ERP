object ShoeTestReport: TShoeTestReport
  Left = 314
  Top = 217
  Width = 1438
  Height = 678
  Caption = 'ShoeTestReport'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
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
  TextHeight = 13
  object background: TPanel
    Left = 0
    Top = 0
    Width = 1422
    Height = 639
    Align = alClient
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 787
      Top = 113
      Height = 525
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 1420
      Height = 112
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label5: TLabel
        Left = 353
        Top = 16
        Width = 47
        Height = 16
        Caption = 'TestNO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 629
        Top = 16
        Width = 37
        Height = 16
        Caption = 'Article'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 778
        Top = 16
        Width = 37
        Height = 16
        Caption = 'SCBH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 95
        Top = 17
        Width = 32
        Height = 16
        Caption = 'Date:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 232
        Top = 17
        Width = 9
        Height = 20
        Caption = '~'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 485
        Top = 16
        Width = 26
        Height = 16
        Caption = 'SR#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Button1: TButton
        Left = 928
        Top = 9
        Width = 60
        Height = 28
        Caption = 'Query'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = Button1Click
      end
      object TestNoEdit: TEdit
        Left = 406
        Top = 10
        Width = 68
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object ArticleEdit: TEdit
        Left = 672
        Top = 10
        Width = 98
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object SCBHEdit: TEdit
        Left = 819
        Top = 10
        Width = 98
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object BBD: TBitBtn
        Left = 1074
        Top = 2
        Width = 55
        Height = 40
        Caption = 'Download'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
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
      object GSBHCombo: TComboBox
        Left = 11
        Top = 15
        Width = 73
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 16
        ParentFont = False
        TabOrder = 5
        Text = 'GSBHCombo'
        Items.Strings = (
          'CDC'
          'VA12'
          'CBY')
      end
      object DTP1: TDateTimePicker
        Left = 132
        Top = 13
        Width = 93
        Height = 24
        Date = 44223.587242442130000000
        Time = 44223.587242442130000000
        TabOrder = 6
      end
      object DTP2: TDateTimePicker
        Left = 248
        Top = 12
        Width = 89
        Height = 24
        Date = 44223.587242442130000000
        Time = 44223.587242442130000000
        TabOrder = 7
      end
      object SREdit: TEdit
        Left = 528
        Top = 9
        Width = 98
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object Button2: TButton
        Left = 1000
        Top = 9
        Width = 60
        Height = 28
        Caption = 'Excel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnClick = Button2Click
      end
      object GroupBox1: TGroupBox
        Left = 8
        Top = 48
        Width = 401
        Height = 57
        Caption = 'Tracking'
        TabOrder = 10
        object Label7: TLabel
          Left = 2
          Top = 24
          Width = 40
          Height = 16
          Caption = 'TestID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object TestReason: TLabel
          Left = 129
          Top = 24
          Width = 40
          Height = 16
          Caption = 'TestID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object TestCombo: TComboBox
          Left = 51
          Top = 21
          Width = 70
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 0
          OnChange = TestComboChange
          Items.Strings = (
            ''
            'G32'
            'G48')
        end
        object Button3: TButton
          Left = 205
          Top = 17
          Width = 84
          Height = 28
          Caption = 'Excel Fail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = Button3Click
        end
        object Button4: TButton
          Left = 301
          Top = 17
          Width = 84
          Height = 28
          Caption = 'Excel Pass'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = Button4Click
        end
      end
    end
    object Panel2: TPanel
      Left = 790
      Top = 113
      Width = 631
      Height = 525
      Align = alClient
      TabOrder = 1
      object DBGridEh1: TDBGridEh
        Left = 1
        Top = 227
        Width = 629
        Height = 297
        Align = alClient
        DataSource = DS2
        Flat = False
        Font.Charset = DEFAULT_CHARSET
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
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'TestNO'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'TestID'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'TestReason'
            Footers = <>
            Width = 98
          end
          item
            EditButtons = <>
            FieldName = 'Result'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'FailureReason'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Comment'
            Footers = <>
            Width = 83
          end
          item
            EditButtons = <>
            FieldName = 'Sampleroom'
            Footers = <>
            Title.Caption = 'Sample room'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'Materialteam'
            Footers = <>
            Title.Caption = 'Material team'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'Outsolefactory'
            Footers = <>
            Title.Caption = 'Outsole factory'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'Rubberfactory'
            Footers = <>
            Title.Caption = 'Rubber factory'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'Printingfacory'
            Footers = <>
            Title.Caption = 'Printing facory'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'Remark'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'UserDate'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'UserID'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'ApprovedUserID'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Standard'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'InspectedID'
            Footers = <>
          end>
      end
      object Panel8: TPanel
        Left = 1
        Top = 1
        Width = 629
        Height = 226
        Align = alTop
        TabOrder = 1
        object Edit29: TEdit
          Left = 349
          Top = 7
          Width = 169
          Height = 28
          BiDiMode = bdLeftToRight
          Color = clScrollBar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 0
          Text = 'Test Item'
        end
        object Edit30: TEdit
          Left = 14
          Top = 7
          Width = 169
          Height = 28
          Color = clScrollBar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = 'Method'
        end
        object Edit31: TEdit
          Left = 183
          Top = 7
          Width = 169
          Height = 28
          Color = clScrollBar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Text = 'Standard'
        end
        object Edit32: TEdit
          Left = 351
          Top = 59
          Width = 169
          Height = 28
          Color = clScrollBar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Text = 'Result'
        end
        object DBEditEh26: TDBEditEh
          Left = 349
          Top = 33
          Width = 168
          Height = 28
          DataField = 'TestReason'
          DataSource = DS2
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          Visible = True
        end
        object DBEditEh27: TDBEditEh
          Left = 183
          Top = 33
          Width = 168
          Height = 28
          DataField = 'Standard'
          DataSource = DS2
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          Visible = True
        end
        object DBEditEh28: TDBEditEh
          Left = 351
          Top = 85
          Width = 168
          Height = 28
          DataField = 'Result'
          DataSource = DS2
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          Visible = True
        end
        object Edit33: TEdit
          Left = 13
          Top = 59
          Width = 169
          Height = 28
          BiDiMode = bdLeftToRight
          Color = clScrollBar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 7
          Text = 'Comment'
        end
        object DBEditEh29: TDBEditEh
          Left = 182
          Top = 59
          Width = 168
          Height = 28
          DataField = 'Comment'
          DataSource = DS2
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          Visible = True
        end
        object Edit34: TEdit
          Left = 13
          Top = 85
          Width = 169
          Height = 28
          BiDiMode = bdLeftToRight
          Color = clScrollBar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 9
          Text = 'Failure Reason'
        end
        object DBEditEh30: TDBEditEh
          Left = 182
          Top = 85
          Width = 168
          Height = 28
          DataField = 'FailureReason'
          DataSource = DS2
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          Visible = True
        end
        object DBEditEh31: TDBEditEh
          Left = 96
          Top = 119
          Width = 105
          Height = 28
          DataField = 'UserID'
          DataSource = DS2
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          Visible = True
        end
        object Edit35: TEdit
          Left = 12
          Top = 119
          Width = 85
          Height = 28
          BiDiMode = bdLeftToRight
          Color = clScrollBar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 12
          Text = 'Tested By'
        end
        object Edit36: TEdit
          Left = 213
          Top = 119
          Width = 98
          Height = 28
          BiDiMode = bdLeftToRight
          Color = clScrollBar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 13
          Text = 'Inspected By'
        end
        object DBEditEh32: TDBEditEh
          Left = 311
          Top = 119
          Width = 130
          Height = 28
          DataField = 'InspectedID'
          DataSource = DS2
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
          Visible = True
        end
        object Edit37: TEdit
          Left = 14
          Top = 151
          Width = 98
          Height = 28
          BiDiMode = bdLeftToRight
          Color = clScrollBar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 15
          Text = 'Approved By'
        end
        object DBEditEh33: TDBEditEh
          Left = 119
          Top = 151
          Width = 131
          Height = 28
          DataField = 'ApprovedUserID'
          DataSource = DS2
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 16
          Visible = True
        end
        object DBEditEh34: TDBEditEh
          Left = 14
          Top = 33
          Width = 168
          Height = 28
          DataField = 'TestID'
          DataSource = DS2
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 17
          Visible = True
        end
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 113
      Width = 786
      Height = 525
      Align = alLeft
      TabOrder = 2
      object Panel4: TPanel
        Left = 1
        Top = 89
        Width = 784
        Height = 144
        Align = alTop
        TabOrder = 0
        object Edit3: TEdit
          Left = 13
          Top = 7
          Width = 169
          Height = 28
          Color = clScrollBar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = 'Factory'
        end
        object Edit4: TEdit
          Left = 13
          Top = 33
          Width = 169
          Height = 28
          Color = clScrollBar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = 'Production Line'
        end
        object Edit5: TEdit
          Left = 13
          Top = 59
          Width = 169
          Height = 28
          Color = clScrollBar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Text = 'Style Name'
        end
        object Edit7: TEdit
          Left = 397
          Top = 7
          Width = 164
          Height = 28
          Color = clScrollBar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Text = 'Size'
        end
        object Edit8: TEdit
          Left = 397
          Top = 33
          Width = 164
          Height = 28
          Color = clScrollBar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          Text = 'CustomerP.O.'
        end
        object DBEditEh1: TDBEditEh
          Left = 184
          Top = 7
          Width = 195
          Height = 28
          DataField = 'Factory'
          DataSource = DS1
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          Visible = True
        end
        object DBEditEh2: TDBEditEh
          Left = 184
          Top = 34
          Width = 195
          Height = 28
          DataField = 'ProductionLine'
          DataSource = DS1
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          Visible = True
        end
        object DBEditEh3: TDBEditEh
          Left = 184
          Top = 59
          Width = 195
          Height = 28
          DataField = 'xieming'
          DataSource = DS1
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          Visible = True
        end
        object DBEditEh4: TDBEditEh
          Left = 562
          Top = 7
          Width = 211
          Height = 28
          DataField = 'siz'
          DataSource = DS1
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          Visible = True
        end
        object DBEditEh5: TDBEditEh
          Left = 562
          Top = 34
          Width = 211
          Height = 28
          DataField = 'CustomerPO'
          DataSource = DS1
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          Visible = True
        end
        object Edit14: TEdit
          Left = 13
          Top = 111
          Width = 169
          Height = 28
          Color = clScrollBar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          Text = 'Color'
        end
        object Edit15: TEdit
          Left = 13
          Top = 85
          Width = 169
          Height = 28
          Color = clScrollBar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          Text = 'SR#'
        end
        object Edit16: TEdit
          Left = 397
          Top = 111
          Width = 164
          Height = 28
          Color = clScrollBar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
          Text = 'Date of Manufacturing'
        end
        object Edit17: TEdit
          Left = 397
          Top = 85
          Width = 164
          Height = 28
          Color = clScrollBar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
          Text = 'Category'
        end
        object Edit18: TEdit
          Left = 397
          Top = 59
          Width = 164
          Height = 28
          Color = clScrollBar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
          Text = 'Ship To'
        end
        object DBEditEh11: TDBEditEh
          Left = 184
          Top = 110
          Width = 195
          Height = 28
          DataField = 'YSSM'
          DataSource = DS1
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 15
          Visible = True
        end
        object DBEditEh12: TDBEditEh
          Left = 184
          Top = 85
          Width = 195
          Height = 28
          DataField = 'Devcode'
          DataSource = DS1
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 16
          Visible = True
        end
        object DBEditEh13: TDBEditEh
          Left = 562
          Top = 59
          Width = 211
          Height = 28
          DataField = 'ShipTO'
          DataSource = DS1
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 17
          Visible = True
        end
        object DBEditEh14: TDBEditEh
          Left = 562
          Top = 85
          Width = 211
          Height = 28
          DataField = 'Category'
          DataSource = DS1
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 18
          Visible = True
        end
        object DBEditEh15: TDBEditEh
          Left = 562
          Top = 110
          Width = 211
          Height = 28
          DataField = 'DateofManufacturing'
          DataSource = DS1
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 19
          Visible = True
        end
      end
      object Panel5: TPanel
        Left = 1
        Top = 1
        Width = 784
        Height = 88
        Align = alTop
        TabOrder = 1
        object Edit9: TEdit
          Left = 13
          Top = 7
          Width = 169
          Height = 28
          Color = clScrollBar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = 'Applicant Department'
        end
        object Edit10: TEdit
          Left = 13
          Top = 33
          Width = 169
          Height = 28
          Color = clScrollBar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = 'Test Purpose'
        end
        object Edit11: TEdit
          Left = 13
          Top = 59
          Width = 169
          Height = 28
          Color = clScrollBar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Text = 'Received Date'
        end
        object Edit12: TEdit
          Left = 397
          Top = 7
          Width = 164
          Height = 28
          Color = clScrollBar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Text = 'Applicant'
        end
        object Edit13: TEdit
          Left = 397
          Top = 33
          Width = 164
          Height = 28
          Color = clScrollBar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          Text = 'Report CC To'
        end
        object DBEditEh6: TDBEditEh
          Left = 183
          Top = 7
          Width = 196
          Height = 28
          DataField = 'Applicant1'
          DataSource = DS1
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          Visible = True
        end
        object DBEditEh7: TDBEditEh
          Left = 183
          Top = 34
          Width = 196
          Height = 28
          DataField = 'TestPurpose'
          DataSource = DS1
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          Visible = True
        end
        object DBEditEh8: TDBEditEh
          Left = 183
          Top = 59
          Width = 196
          Height = 28
          DataField = 'ReceiveDate'
          DataSource = DS1
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          Visible = True
        end
        object DBEditEh9: TDBEditEh
          Left = 562
          Top = 7
          Width = 210
          Height = 28
          DataField = 'Applicant2'
          DataSource = DS1
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          Visible = True
        end
        object DBEditEh10: TDBEditEh
          Left = 562
          Top = 34
          Width = 210
          Height = 28
          DataField = 'ReportCCto'
          DataSource = DS1
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          Visible = True
        end
        object Edit19: TEdit
          Left = 397
          Top = 60
          Width = 164
          Height = 28
          Color = clScrollBar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          Text = 'Article'
        end
        object DBEditEh16: TDBEditEh
          Left = 562
          Top = 61
          Width = 210
          Height = 28
          DataField = 'Article'
          DataSource = DS1
          EditButtons = <>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          Visible = True
        end
      end
      object DBGridEh2: TDBGridEh
        Left = 1
        Top = 233
        Width = 784
        Height = 291
        Align = alClient
        DataSource = DS1
        Flat = False
        Font.Charset = DEFAULT_CHARSET
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
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'TestNo'
            Footers = <>
            Width = 88
          end
          item
            EditButtons = <>
            FieldName = 'scbh'
            Footers = <>
            Title.Caption = 'SCBH'
            Width = 95
          end
          item
            EditButtons = <>
            FieldName = 'Devcode'
            Footers = <>
            Title.Caption = 'SR#'
            Width = 153
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            Width = 83
          end
          item
            EditButtons = <>
            FieldName = 'reportNO'
            Footers = <>
            Width = 148
          end
          item
            EditButtons = <>
            FieldName = 'Result'
            Footers = <>
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'Userdate'
            Footers = <>
            Width = 74
          end
          item
            EditButtons = <>
            FieldName = 'CKBH'
            Footers = <>
            Width = 53
          end
          item
            EditButtons = <>
            FieldName = 'GSBH'
            Footers = <>
            Width = 53
          end>
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'Select Lab_shoetest.TestNo,Lab_shoetest.scbh,KFXXZL.Devcode,lab_' +
        'shoetest.reportNO,IsNull(Lab_shoetestS.Result,'#39'Release'#39') as Resu' +
        'lt ,lab_shoetest.Userdate,lab_shoetest.GSBH '
      
        '       ,Lab_shoetest.Applicant1,Lab_shoetest.Applicant2,Lab_shoe' +
        'test.TestPurpose,Lab_shoetest.ReportCCto,Lab_shoetest.ReceiveDat' +
        'e  '
      
        '       ,Lab_shoetest.Factory,shoetest.siz,Lab_shoetest.Productio' +
        'nLine,Lab_shoetest.CustomerPO,kfxxzl.xieming,Lab_shoetest.ShipTo'
      
        '       ,kfxxzl.Category,kfxxzl.YSSM,Lab_shoetest.DateofManufactu' +
        'ring,XXZL.Article  '
      'from Lab_shoetest'
      'Left join shoetest on shoetest.testno=lab_shoetest.scbh'
      'left join DDZL on ddzl.ddbh=lab_shoetest.scbh'
      
        'Left join KFXXZL on KFXXZL.XieXing=DDZL.XieXing and KFXXZL.SheHa' +
        'o=DDZL.SheHao'
      
        'Left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao '
      'Left join ('
      
        '   Select TestNo,Max(Result) as Result from Lab_shoetestS where ' +
        'Result='#39'Rejected'#39' Group by TestNo'
      '   ) Lab_shoetestS on Lab_shoetestS.TestNo=Lab_shoetest.TestNo'
      'where Lab_shoetest.YN is null'
      '      and Lab_shoetest.Gsbh='#39'VA12'#39' ')
    Left = 137
    Top = 393
    object Query1TestNo: TStringField
      FieldName = 'TestNo'
      FixedChar = True
      Size = 11
    end
    object Query1scbh: TStringField
      FieldName = 'scbh'
      FixedChar = True
      Size = 15
    end
    object Query1Devcode: TStringField
      FieldName = 'Devcode'
      FixedChar = True
    end
    object Query1reportNO: TStringField
      FieldName = 'reportNO'
      FixedChar = True
      Size = 100
    end
    object Query1Result: TStringField
      FieldName = 'Result'
      FixedChar = True
      Size = 10
    end
    object Query1Userdate: TDateTimeField
      FieldName = 'Userdate'
    end
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
    end
    object Query1Applicant1: TStringField
      FieldName = 'Applicant1'
      FixedChar = True
      Size = 10
    end
    object Query1Applicant2: TStringField
      FieldName = 'Applicant2'
      FixedChar = True
      Size = 10
    end
    object Query1TestPurpose: TStringField
      FieldName = 'TestPurpose'
      FixedChar = True
    end
    object Query1ReportCCto: TStringField
      FieldName = 'ReportCCto'
      FixedChar = True
      Size = 10
    end
    object Query1ReceiveDate: TDateTimeField
      FieldName = 'ReceiveDate'
    end
    object Query1Factory: TStringField
      FieldName = 'Factory'
      FixedChar = True
      Size = 10
    end
    object Query1siz: TStringField
      FieldName = 'siz'
      FixedChar = True
      Size = 6
    end
    object Query1ProductionLine: TStringField
      FieldName = 'ProductionLine'
      FixedChar = True
    end
    object Query1CustomerPO: TStringField
      FieldName = 'CustomerPO'
      FixedChar = True
    end
    object Query1xieming: TStringField
      FieldName = 'xieming'
      FixedChar = True
      Size = 50
    end
    object Query1ShipTo: TStringField
      FieldName = 'ShipTo'
      FixedChar = True
    end
    object Query1Category: TStringField
      FieldName = 'Category'
      FixedChar = True
      Size = 10
    end
    object Query1YSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 50
    end
    object Query1DateofManufacturing: TDateTimeField
      FieldName = 'DateofManufacturing'
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 137
    Top = 365
  end
  object Query2: TQuery
    DatabaseName = 'dB'
    DataSource = DS1
    SQL.Strings = (
      
        'select lab_shoetests.TestNO,lab_shoetests.TestID,lab_shoetests.R' +
        'esult,lab_shoetests.Comment,lab_shoetests.FailureReason,'
      
        '       lab_shoetests.Remark,lab_shoetests.UserDate,lab_shoetests' +
        '.UserID,lab_shoetests.ApprovedUserID,lab_shoetests.Standard,lab_' +
        'shoetests.InspectedID,'
      
        '       Lab_TestReason.TestReason,lab_shoetests.FilePath,Samplero' +
        'om,Materialteam,Outsolefactory,Rubberfactory,Printingfacory '
      'from lab_shoetests '
      
        'Left join Lab_TestReason on Lab_TestReason.TestID=lab_shoetests.' +
        'TestID and Lab_TestReason.GSBH='#39'VA12'#39
      'where TestNO=:TestNo')
    Left = 184
    Top = 394
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'TestNo'
        ParamType = ptUnknown
        Size = 12
      end>
    object Query2TestNO: TStringField
      DisplayWidth = 11
      FieldName = 'TestNO'
      Origin = 'DB.lab_shoetests.TestNO'
      FixedChar = True
      Size = 11
    end
    object Query2TestID: TStringField
      DisplayWidth = 7
      FieldName = 'TestID'
      Origin = 'DB.lab_shoetests.TestID'
      FixedChar = True
    end
    object Query2Result: TStringField
      DisplayWidth = 10
      FieldName = 'Result'
      Origin = 'DB.lab_shoetests.Result'
      FixedChar = True
    end
    object Query2Comment: TStringField
      DisplayWidth = 14
      FieldName = 'Comment'
      Origin = 'DB.lab_shoetests.Comment'
      FixedChar = True
      Size = 200
    end
    object Query2FailureReason: TStringField
      DisplayWidth = 16
      FieldName = 'FailureReason'
      Origin = 'DB.lab_shoetests.FailureReason'
      FixedChar = True
      Size = 200
    end
    object Query2Remark: TStringField
      DisplayWidth = 13
      FieldName = 'Remark'
      Origin = 'DB.lab_shoetests.Remark'
      FixedChar = True
      Size = 200
    end
    object Query2UserDate: TDateTimeField
      DisplayWidth = 10
      FieldName = 'UserDate'
      Origin = 'DB.lab_shoetests.UserDate'
    end
    object Query2UserID: TStringField
      DisplayWidth = 7
      FieldName = 'UserID'
      Origin = 'DB.lab_shoetests.UserID'
      FixedChar = True
      Size = 50
    end
    object Query2ApprovedUserID: TStringField
      DisplayWidth = 17
      FieldName = 'ApprovedUserID'
      Origin = 'DB.lab_shoetests.ApprovedUserID'
      FixedChar = True
      Size = 50
    end
    object Query2Standard: TStringField
      DisplayWidth = 10
      FieldName = 'Standard'
      Origin = 'DB.lab_shoetests.Standard'
      FixedChar = True
      Size = 200
    end
    object Query2InspectedID: TStringField
      DisplayWidth = 14
      FieldName = 'InspectedID'
      Origin = 'DB.lab_shoetests.InspectedID'
      FixedChar = True
      Size = 50
    end
    object Query2TestReason: TStringField
      FieldName = 'TestReason'
      Origin = 'DB.Lab_TestReason.TestReason'
      FixedChar = True
      Size = 200
    end
    object Query2FilePath: TStringField
      FieldName = 'FilePath'
      Origin = 'DB.lab_shoetests.FilePath'
      FixedChar = True
      Size = 255
    end
    object Query2Sampleroom: TBooleanField
      FieldName = 'Sampleroom'
    end
    object Query2Materialteam: TBooleanField
      FieldName = 'Materialteam'
    end
    object Query2Outsolefactory: TBooleanField
      FieldName = 'Outsolefactory'
    end
    object Query2Rubberfactory: TBooleanField
      FieldName = 'Rubberfactory'
    end
    object Query2Printingfacory: TBooleanField
      FieldName = 'Printingfacory'
    end
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 186
    Top = 363
  end
  object tmpQuery: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'Select Lab_shoetest.TestNo,Lab_shoetest.scbh,KFXXZL.Devcode,lab_' +
        'shoetest.reportNO,IsNull(Lab_shoetestS.Result,'#39'Release'#39') as Resu' +
        'lt ,lab_shoetest.Userdate,lab_shoetest.GSBH '
      
        '       ,Lab_shoetest.Applicant1,Lab_shoetest.Applicant2,Lab_shoe' +
        'test.TestPurpose,Lab_shoetest.ReportCCto,Lab_shoetest.ReceiveDat' +
        'e  '
      
        '       ,Lab_shoetest.Factory,shoetest.siz,Lab_shoetest.Productio' +
        'nLine,Lab_shoetest.CustomerPO,kfxxzl.xieming,Lab_shoetest.ShipTo'
      
        '       ,kfxxzl.Category,kfxxzl.YSSM,Lab_shoetest.DateofManufactu' +
        'ring,XXZL.Article  '
      'from Lab_shoetest'
      'Left join shoetest on shoetest.testno=lab_shoetest.scbh'
      'left join DDZL on ddzl.ddbh=lab_shoetest.scbh'
      
        'Left join KFXXZL on KFXXZL.XieXing=DDZL.XieXing and KFXXZL.SheHa' +
        'o=DDZL.SheHao'
      
        'Left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao '
      'Left join ('
      
        '   Select TestNo,Max(Result) as Result from Lab_shoetestS where ' +
        'Result='#39'Rejected'#39' Group by TestNo'
      '   ) Lab_shoetestS on Lab_shoetestS.TestNo=Lab_shoetest.TestNo'
      'where Lab_shoetest.YN is null'
      '      and Lab_shoetest.Gsbh='#39'VA12'#39' ')
    Left = 97
    Top = 393
  end
  object Query3: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      
        'Select Lab_shoetest.TestNo,Lab_shoetest.scbh,KFXXZL.Devcode,lab_' +
        'shoetest.reportNO,IsNull(Lab_shoetestS.Result,'#39'Release'#39') as Resu' +
        'lt ,lab_shoetest.Userdate,lab_shoetest.GSBH '
      
        '       ,Lab_shoetest.Applicant1,Lab_shoetest.Applicant2,Lab_shoe' +
        'test.TestPurpose,Lab_shoetest.ReportCCto,Lab_shoetest.ReceiveDat' +
        'e  '
      
        '       ,Lab_shoetest.Factory,shoetest.siz,Lab_shoetest.Productio' +
        'nLine,Lab_shoetest.CustomerPO,kfxxzl.xieming,Lab_shoetest.ShipTo'
      
        '       ,kfxxzl.Category,kfxxzl.YSSM,Lab_shoetest.DateofManufactu' +
        'ring,XXZL.Article  '
      'from Lab_shoetest'
      'Left join shoetest on shoetest.testno=lab_shoetest.scbh'
      'left join DDZL on ddzl.ddbh=lab_shoetest.scbh'
      
        'Left join KFXXZL on KFXXZL.XieXing=DDZL.XieXing and KFXXZL.SheHa' +
        'o=DDZL.SheHao'
      
        'Left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao '
      'Left join ('
      
        '   Select TestNo,Max(Result) as Result from Lab_shoetestS where ' +
        'Result='#39'Rejected'#39' Group by TestNo'
      '   ) Lab_shoetestS on Lab_shoetestS.TestNo=Lab_shoetest.TestNo'
      'where Lab_shoetest.YN is null'
      '      and Lab_shoetest.Gsbh='#39'VA12'#39' ')
    Left = 233
    Top = 393
    object Query3TestNO: TStringField
      FieldName = 'TestNO'
    end
    object Query3GSBH: TStringField
      FieldName = 'GSBH'
    end
    object Query3SCBH: TStringField
      FieldName = 'SCBH'
    end
    object Query3Devcode: TStringField
      FieldName = 'Devcode'
    end
    object Query3USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object Query3TestID: TStringField
      FieldName = 'TestID'
    end
    object Query3JiJie: TStringField
      FieldName = 'JiJie'
    end
    object Query3XieMing: TStringField
      FieldName = 'XieMing'
      Size = 50
    end
    object Query3article: TStringField
      FieldName = 'article'
    end
    object Query3YSSM: TStringField
      FieldName = 'YSSM'
      Size = 50
    end
    object Query3YPCC: TStringField
      FieldName = 'YPCC'
    end
    object Query3KFLX: TStringField
      FieldName = 'KFLX'
    end
    object Query3FailureReason: TStringField
      FieldName = 'FailureReason'
      Size = 200
    end
    object Query3Comment: TStringField
      FieldName = 'Comment'
      Size = 200
    end
    object Query3Remark: TStringField
      FieldName = 'Remark'
      Size = 200
    end
    object Query3Result: TStringField
      FieldName = 'Result'
    end
    object Query3FD: TStringField
      FieldName = 'FD'
    end
    object Query3Sampleroom: TBooleanField
      FieldName = 'Sampleroom'
    end
    object Query3Materialteam: TBooleanField
      FieldName = 'Materialteam'
    end
    object Query3Outsolefactory: TBooleanField
      FieldName = 'Outsolefactory'
    end
    object Query3Rubberfactory: TBooleanField
      FieldName = 'Rubberfactory'
    end
    object Query3Printingfacory: TBooleanField
      FieldName = 'Printingfacory'
    end
    object Query3KFJD: TStringField
      FieldName = 'KFJD'
    end
    object Query3DevType: TStringField
      FieldName = 'DevType'
    end
  end
  object DS3: TDataSource
    DataSet = Query3
    Left = 234
    Top = 363
  end
end
