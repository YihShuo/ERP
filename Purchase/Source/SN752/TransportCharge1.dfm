object TransportCharge: TTransportCharge
  Left = 405
  Top = 161
  Width = 1677
  Height = 712
  Caption = 'TransportCharge'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
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
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1669
    Height = 685
    Align = alClient
    TabOrder = 0
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 1667
      Height = 683
      Align = alClient
      TabOrder = 0
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 1665
        Height = 50
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 327
          Top = 3
          Width = 18
          Height = 16
          Caption = 'Bill'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 296
          Top = 28
          Width = 50
          Height = 16
          Caption = 'Supplier'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 471
          Top = 28
          Width = 58
          Height = 16
          Caption = 'Transport'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 624
          Top = 4
          Width = 13
          Height = 13
          Caption = 'To'
        end
        object BB2: TBitBtn
          Left = 2
          Top = 1
          Width = 49
          Height = 49
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
          OnClick = BB2Click
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
        object BB3: TBitBtn
          Left = 50
          Top = 1
          Width = 49
          Height = 49
          Hint = 'Delete one Record'
          Caption = 'Delete'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BB3Click
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
        object BB4: TBitBtn
          Left = 98
          Top = 1
          Width = 49
          Height = 49
          Hint = 'Modify Current'
          Caption = 'Modify'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BB4Click
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
          Left = 146
          Top = 1
          Width = 49
          Height = 49
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
          OnClick = BB5Click
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
          Left = 194
          Top = 1
          Width = 49
          Height = 49
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
          OnClick = BB6Click
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
          Left = 242
          Top = 1
          Width = 49
          Height = 49
          Hint = 'Exit Current Form'
          Caption = 'Exit'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = BB7Click
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
        object Edit_Bill: TEdit
          Left = 348
          Top = 1
          Width = 103
          Height = 21
          AutoSelect = False
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object Edit_Supplier: TEdit
          Left = 348
          Top = 25
          Width = 104
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 7
        end
        object Button1: TButton
          Left = 815
          Top = 10
          Width = 72
          Height = 23
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          OnClick = Button1Click
        end
        object Check: TCheckBox
          Left = 750
          Top = 2
          Width = 51
          Height = 17
          Caption = 'Mine'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 9
        end
        object CB_Transport: TComboBox
          Left = 534
          Top = 25
          Width = 65
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 10
          Items.Strings = (
            ''
            'DHL'
            'AIR'
            'H/C'
            'SEA')
        end
        object CheckBox5: TCheckBox
          Left = 484
          Top = 4
          Width = 46
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Date'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 11
        end
        object DTP1: TDateTimePicker
          Left = 534
          Top = 0
          Width = 89
          Height = 24
          Date = 39846.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 39846.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
        end
        object DTP2: TDateTimePicker
          Left = 643
          Top = 0
          Width = 89
          Height = 24
          Date = 39846.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 39846.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
        end
      end
      object DBGrid3: TDBGridEh
        Left = 1
        Top = 51
        Width = 1665
        Height = 631
        Align = alClient
        DataSource = DS_BOMReceive
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
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = Pop_Master
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 2
        OnGetCellParams = DBGrid3GetCellParams
        Columns = <
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'TC_NO'
            Footers = <
              item
                FieldName = 'ReceiveNO'
                ValueType = fvtCount
              end>
            ReadOnly = True
            Title.Caption = 'NO'
            Title.TitleButton = True
            Width = 84
          end
          item
            ButtonStyle = cbsNone
            Color = 8454143
            EditButtons = <>
            FieldName = 'Date'
            Footers = <>
            Title.TitleButton = True
            Width = 72
          end
          item
            ButtonStyle = cbsNone
            EditButtons = <>
            FieldName = 'Supplier'
            Footers = <>
            Title.TitleButton = True
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'Bill'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'Estimate_Amount'
            Footers = <
              item
                FieldName = 'Estimate_Amount'
                ValueType = fvtSum
              end>
            Title.Caption = 'Amount|Estimate'
            Title.TitleButton = True
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'Actual_Amount'
            Footers = <
              item
                FieldName = 'Actual_Amount'
                ValueType = fvtSum
              end>
            Title.Caption = 'Amount|Actual'
            Title.TitleButton = True
            Width = 48
          end
          item
            EditButtons = <>
            FieldName = 'PrePaid'
            Footers = <>
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'Weight'
            Footers = <>
            Title.Caption = 'Weight (kg)'
            Title.TitleButton = True
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'Transport'
            Footers = <>
            PickList.Strings = (
              'DHL'
              'AIR'
              'H/C'
              'SEA')
            Title.TitleButton = True
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'Country'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.TitleButton = True
            Width = 103
          end
          item
            EditButtons = <>
            FieldName = 'Remark'
            Footers = <>
            Title.TitleButton = True
            Width = 217
          end
          item
            ButtonStyle = cbsNone
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'USERDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'User Date'
            Title.TitleButton = True
            Width = 74
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'User'
            Title.TitleButton = True
            Width = 47
          end>
      end
      object Panel2: TPanel
        Left = 1528
        Top = 52
        Width = 393
        Height = 900
        Caption = 'Panel2'
        TabOrder = 2
        object Memo1: TMemo
          Left = 1
          Top = 1
          Width = 391
          Height = 898
          Align = alClient
          Color = clMenuBar
          Font.Charset = ANSI_CHARSET
          Font.Color = 14822282
          Font.Height = -16
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          Lines.Strings = (
            '--------------------------------------------------'
            #31243#24335#20027#35201#21151#33021#35498#26126
            ''
            #20027#35201#29992#26044#36939#36664#36027#30340#36664#20837
            ''
            '--------------------------------------------------'
            #36039#26009#31721#36984#25805#20316#35498#26126
            ''
            'Bill: '#24288#21830
            'Supplier: '#20379#25033#21830
            'Transport: '#36939#36664
            ''
            '--------------------------------------------------'
            #37325#40670#27396#20301#35498#26126
            ''
            'Amount'#8594'Estimate: '#20272#35336#30340#37327
            'Amount'#8594'Actual: '#23526#38555#30340#37327
            'PrePaid: '#38928#20184
            'Weight(kg): '#37325#37327'('#20844#26020')'
            'Transport: '#36939#36664
            'Remark: '#20633#35387
            ''
            '--------------------------------------------------')
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 792
    Top = 480
  end
  object Qry_TransportCharge: TQuery
    AfterOpen = Qry_TransportChargeAfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'select TransportCharge.*'
      'from TransportCharge'
      'where 1=2'
      '')
    UpdateObject = UpMas
    Left = 76
    Top = 156
    object Qry_TransportChargeTC_NO: TStringField
      FieldName = 'TC_NO'
      Origin = 'DB.TransportCharge.TC_NO'
      FixedChar = True
      Size = 12
    end
    object Qry_TransportChargeGSBH: TStringField
      FieldName = 'GSBH'
      Origin = 'DB.TransportCharge.GSBH'
      FixedChar = True
      Size = 4
    end
    object Qry_TransportChargeDate: TDateTimeField
      FieldName = 'Date'
      Origin = 'DB.TransportCharge.Date'
    end
    object Qry_TransportChargeSupplier: TStringField
      FieldName = 'Supplier'
      Origin = 'DB.TransportCharge.Supplier'
      FixedChar = True
    end
    object Qry_TransportChargeBill: TStringField
      FieldName = 'Bill'
      Origin = 'DB.TransportCharge.Bill'
      FixedChar = True
    end
    object Qry_TransportChargeEstimate_Amount: TCurrencyField
      FieldName = 'Estimate_Amount'
      Origin = 'DB.TransportCharge.Estimate_Amount'
      currency = False
    end
    object Qry_TransportChargeActual_Amount: TCurrencyField
      FieldName = 'Actual_Amount'
      Origin = 'DB.TransportCharge.Actual_Amount'
      currency = False
    end
    object Qry_TransportChargeTransport: TStringField
      FieldName = 'Transport'
      Origin = 'DB.TransportCharge.Transport'
      FixedChar = True
      Size = 12
    end
    object Qry_TransportChargeCountry: TStringField
      FieldName = 'Country'
      Origin = 'DB.TransportCharge.Country'
      FixedChar = True
    end
    object Qry_TransportChargeRemark: TStringField
      FieldName = 'Remark'
      Origin = 'DB.TransportCharge.Remark'
      FixedChar = True
      Size = 200
    end
    object Qry_TransportChargeUSERDate: TDateTimeField
      FieldName = 'USERDate'
      Origin = 'DB.TransportCharge.USERDate'
    end
    object Qry_TransportChargeUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.TransportCharge.USERID'
      FixedChar = True
      Size = 15
    end
    object Qry_TransportChargeYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.TransportCharge.YN'
      FixedChar = True
      Size = 1
    end
    object Qry_TransportChargePrePaid: TCurrencyField
      FieldName = 'PrePaid'
      Origin = 'DB.TransportCharge.PrePaid'
      currency = False
    end
    object Qry_TransportChargeWeight: TCurrencyField
      FieldName = 'Weight'
      Origin = 'DB.TransportCharge.Weight'
      currency = False
    end
  end
  object UpMas: TUpdateSQL
    ModifySQL.Strings = (
      'update TransportCharge'
      'set'
      '  TC_NO = :TC_NO,'
      '  GSBH = :GSBH,'
      '  Date = :Date,'
      '  Supplier = :Supplier,'
      '  Bill = :Bill,'
      '  Estimate_Amount = :Estimate_Amount,'
      '  Actual_Amount = :Actual_Amount,'
      '  PrePaid = :PrePaid,'
      '  Weight = :Weight,'
      '  Transport = :Transport,'
      '  Country = :Country,'
      '  Remark = :Remark,'
      '  USERDate = :USERDate,'
      '  USERID = :USERID,'
      '  YN = :YN'
      'where'
      '  TC_NO = :OLD_TC_NO')
    InsertSQL.Strings = (
      'insert into TransportCharge'
      
        '  (TC_NO, GSBH, Date, Supplier, Bill, Estimate_Amount, Actual_Am' +
        'ount, PrePaid,'
      '   Weight, Transport, Country, Remark, USERDate, USERID, YN)'
      'values'
      
        '  (:TC_NO, :GSBH, :Date, :Supplier, :Bill, :Estimate_Amount, :Ac' +
        'tual_Amount, :PrePaid, '
      
        '   :Weight, :Transport, :Country, :Remark, :USERDate, :USERID, :' +
        'YN)')
    DeleteSQL.Strings = (
      'delete from TransportCharge'
      'where'
      '  TC_NO = :OLD_TC_NO')
    Left = 76
    Top = 188
  end
  object DS_BOMReceive: TDataSource
    DataSet = Qry_TransportCharge
    Left = 76
    Top = 124
  end
  object BDelRec: TQuery
    DatabaseName = 'DB'
    Left = 760
    Top = 480
  end
  object qry1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 824
    Top = 480
  end
  object Pop_Master: TPopupMenu
    Left = 76
    Top = 220
    object Excel2: TMenuItem
      Caption = 'Excel'
      OnClick = Excel2Click
    end
  end
end
