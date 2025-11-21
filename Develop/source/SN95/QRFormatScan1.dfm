object QRFormatScan: TQRFormatScan
  Left = 192
  Top = 125
  Width = 1157
  Height = 480
  Caption = 'QR_Scan'
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
  object PC1: TPageControl
    Left = 0
    Top = 0
    Width = 1141
    Height = 441
    ActivePage = TS1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnChange = PC1Change
    object TS1: TTabSheet
      Caption = 'MOVE OUT'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1133
        Height = 72
        Align = alTop
        BevelOuter = bvLowered
        Color = 14737600
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object Label5: TLabel
          Left = 10
          Top = 10
          Width = 95
          Height = 24
          AutoSize = False
          Caption = 'Label QR:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 794
          Top = 10
          Width = 487
          Height = 47
          AutoSize = False
          Caption = 'MOVE OUT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LLBarCodeEdit: TEdit
          Left = 105
          Top = 8
          Width = 536
          Height = 57
          AutoSize = False
          BevelOuter = bvRaised
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -27
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnKeyPress = LLBarCodeEditKeyPress
        end
        object BitBtn2: TBitBtn
          Left = 656
          Top = 11
          Width = 50
          Height = 49
          Caption = 'Query'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn2Click
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
        object BT1: TBitBtn
          Left = 723
          Top = 11
          Width = 50
          Height = 49
          Hint = 'Cancel'
          Caption = 'Delete'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BT1Click
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
      end
      object Panel1: TPanel
        Left = 0
        Top = 72
        Width = 1133
        Height = 57
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Visible = False
        object Label4: TLabel
          Left = 616
          Top = 20
          Width = 20
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'To:'
        end
        object Label3: TLabel
          Left = 476
          Top = 19
          Width = 34
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'From:'
        end
        object Label9: TLabel
          Left = 328
          Top = 19
          Width = 38
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'ID:'
        end
        object Label2: TLabel
          Left = 161
          Top = 19
          Width = 53
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Dept:'
        end
        object Label1: TLabel
          Left = 8
          Top = 20
          Width = 46
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'SCNO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Button1: TButton
          Left = 808
          Top = 11
          Width = 81
          Height = 33
          Caption = 'QUERY'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Button1Click
        end
        object CB1: TCheckBox
          Left = 744
          Top = 19
          Width = 57
          Height = 17
          Caption = 'Mine'
          Checked = True
          State = cbChecked
          TabOrder = 1
        end
        object DTP2: TDateTimePicker
          Left = 640
          Top = 16
          Width = 97
          Height = 24
          Date = 39255.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 39255.000000000000000000
          TabOrder = 2
        end
        object DTP1: TDateTimePicker
          Left = 512
          Top = 16
          Width = 97
          Height = 24
          Date = 39255.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 39255.000000000000000000
          TabOrder = 3
        end
        object Edit3: TEdit
          Left = 368
          Top = 16
          Width = 81
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object Edit2: TEdit
          Left = 216
          Top = 16
          Width = 105
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object Edit1: TEdit
          Left = 56
          Top = 16
          Width = 105
          Height = 24
          AutoSelect = False
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 129
        Width = 1133
        Height = 281
        Align = alClient
        DataSource = DS1
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 14737600
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ParentFont = False
        SumList.Active = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'SKU'
            Footers = <>
            Title.Color = clMoneyGreen
            Width = 110
          end
          item
            EditButtons = <>
            FieldName = 'SR'
            Footers = <>
            Title.Color = clMoneyGreen
            Width = 180
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Color = clMoneyGreen
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'Name'
            Footers = <>
            Title.Color = clMoneyGreen
            Width = 220
          end
          item
            EditButtons = <>
            FieldName = 'ID'
            Footers = <>
            Title.Color = clMoneyGreen
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'Dept'
            Footers = <>
            Title.Color = clMoneyGreen
            Width = 180
          end
          item
            EditButtons = <>
            FieldName = 'Purpose'
            Footers = <>
            Title.Color = clMoneyGreen
            Width = 350
          end
          item
            EditButtons = <>
            FieldName = 'ScanMoveDate'
            Footers = <>
            Title.Caption = 'MOVE OUT DATE'
            Title.Color = clMoneyGreen
          end
          item
            EditButtons = <>
            FieldName = 'IDScanMove'
            Footers = <>
            Title.Caption = 'PERSON ON DUTY '
            Title.Color = clMoneyGreen
            Width = 130
          end>
      end
    end
    object TS2: TTabSheet
      Caption = 'RECEIVE'
      ImageIndex = 1
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1133
        Height = 72
        Align = alTop
        BevelOuter = bvLowered
        Color = 14737600
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object Label6: TLabel
          Left = 10
          Top = 10
          Width = 95
          Height = 24
          AutoSize = False
          Caption = 'Label QR:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 794
          Top = 10
          Width = 487
          Height = 47
          AutoSize = False
          Caption = 'RECEIVE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RRBarCodeEdit: TEdit
          Left = 105
          Top = 8
          Width = 536
          Height = 57
          AutoSize = False
          BevelOuter = bvRaised
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -27
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnKeyPress = RRBarCodeEditKeyPress
        end
        object BitBtn1: TBitBtn
          Left = 656
          Top = 11
          Width = 50
          Height = 49
          Caption = 'Query'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn1Click
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
        object BitBtn3: TBitBtn
          Left = 723
          Top = 11
          Width = 50
          Height = 49
          Hint = 'Cancel'
          Caption = 'Delete'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BitBtn3Click
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
      end
      object Panel4: TPanel
        Left = 0
        Top = 72
        Width = 1133
        Height = 57
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Visible = False
        object Label7: TLabel
          Left = 616
          Top = 20
          Width = 20
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'To:'
        end
        object Label8: TLabel
          Left = 476
          Top = 19
          Width = 34
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'From:'
        end
        object Label10: TLabel
          Left = 328
          Top = 19
          Width = 38
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'ID:'
        end
        object Label11: TLabel
          Left = 161
          Top = 19
          Width = 53
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Dept:'
        end
        object Label12: TLabel
          Left = 8
          Top = 20
          Width = 46
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'SCNO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Button2: TButton
          Left = 808
          Top = 11
          Width = 81
          Height = 33
          Caption = 'QUERY'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Button2Click
        end
        object CB2: TCheckBox
          Left = 744
          Top = 19
          Width = 57
          Height = 17
          Caption = 'Mine'
          Checked = True
          State = cbChecked
          TabOrder = 1
        end
        object DTP4: TDateTimePicker
          Left = 640
          Top = 16
          Width = 97
          Height = 24
          Date = 39255.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 39255.000000000000000000
          TabOrder = 2
        end
        object DTP3: TDateTimePicker
          Left = 512
          Top = 16
          Width = 97
          Height = 24
          Date = 39255.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 39255.000000000000000000
          TabOrder = 3
        end
        object Edit6: TEdit
          Left = 368
          Top = 16
          Width = 81
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object Edit5: TEdit
          Left = 216
          Top = 16
          Width = 105
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object Edit4: TEdit
          Left = 56
          Top = 16
          Width = 105
          Height = 24
          AutoSelect = False
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
      end
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 129
        Width = 1133
        Height = 281
        Align = alClient
        DataSource = DS2
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 14737600
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ParentFont = False
        SumList.Active = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'SKU'
            Footers = <>
            Title.Color = clMoneyGreen
            Width = 110
          end
          item
            EditButtons = <>
            FieldName = 'SR'
            Footers = <>
            Title.Color = clMoneyGreen
            Width = 180
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Color = clMoneyGreen
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'Name'
            Footers = <>
            Title.Color = clMoneyGreen
            Width = 220
          end
          item
            EditButtons = <>
            FieldName = 'ID'
            Footers = <>
            Title.Color = clMoneyGreen
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'Dept'
            Footers = <>
            Title.Color = clMoneyGreen
            Width = 180
          end
          item
            EditButtons = <>
            FieldName = 'Purpose'
            Footers = <>
            Title.Color = clMoneyGreen
            Width = 350
          end
          item
            EditButtons = <>
            FieldName = 'ScanReDate'
            Footers = <>
            Title.Caption = 'RECEIVE DATE'
            Title.Color = clMoneyGreen
          end
          item
            EditButtons = <>
            FieldName = 'IDScanRe'
            Footers = <>
            Title.Caption = 'PERSON ON DUTY '
            Title.Color = clMoneyGreen
            Width = 130
          end
          item
            EditButtons = <>
            FieldName = 'Returnn'
            Footers = <>
            Title.Caption = 'RETURN'
            Title.Color = clMoneyGreen
            Width = 60
          end>
      end
    end
  end
  object Move: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from ShoeTestScanS'
      'where SCNO=:SCNO'
      'order by SKU')
    Left = 244
    Top = 276
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SCNO'
        ParamType = ptUnknown
      end>
    object StringField1: TStringField
      FieldName = 'SCNO'
    end
    object StringField2: TStringField
      FieldName = 'SKU'
    end
    object StringField3: TStringField
      FieldName = 'SR'
    end
    object IntegerField1: TIntegerField
      FieldName = 'Qty'
    end
    object MoveName: TStringField
      FieldName = 'Name'
      Size = 40
    end
    object MoveID: TStringField
      FieldName = 'ID'
    end
    object MoveDept: TStringField
      FieldName = 'Dept'
      Size = 40
    end
    object MovePurpose: TStringField
      FieldName = 'Purpose'
      Size = 200
    end
    object StringField6: TStringField
      FieldName = 'IDScanMove'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'ScanMoveDate'
    end
    object Movebarcode: TStringField
      FieldName = 'barcode'
      Size = 40
    end
  end
  object DS1: TDataSource
    DataSet = Move
    Left = 284
    Top = 276
  end
  object Re: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from ShoeTestScanS'
      'where SCNO=:SCNO'
      'order by SKU')
    Left = 412
    Top = 268
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SCNO'
        ParamType = ptUnknown
      end>
    object StringField10: TStringField
      FieldName = 'SCNO'
    end
    object StringField11: TStringField
      FieldName = 'SKU'
    end
    object StringField12: TStringField
      FieldName = 'SR'
    end
    object IntegerField2: TIntegerField
      FieldName = 'Qty'
    end
    object StringField13: TStringField
      FieldName = 'Name'
      Size = 40
    end
    object StringField14: TStringField
      FieldName = 'ID'
    end
    object StringField15: TStringField
      FieldName = 'Dept'
      Size = 40
    end
    object StringField16: TStringField
      FieldName = 'Purpose'
      Size = 200
    end
    object StringField17: TStringField
      FieldName = 'barcode'
      ReadOnly = True
    end
    object BooleanField3: TBooleanField
      FieldName = 'RON'
    end
    object BooleanField4: TBooleanField
      FieldName = 'Returnn'
      ReadOnly = True
    end
    object StringField19: TStringField
      FieldName = 'IDScanMove'
    end
    object StringField20: TStringField
      FieldName = 'IDScanRe'
    end
    object DateTimeField5: TDateTimeField
      FieldName = 'ScanReDate'
    end
  end
  object DS2: TDataSource
    DataSet = Re
    Left = 452
    Top = 268
  end
  object UpTemp: TQuery
    DatabaseName = 'DB'
    Left = 588
    Top = 350
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 324
    Top = 350
  end
end
