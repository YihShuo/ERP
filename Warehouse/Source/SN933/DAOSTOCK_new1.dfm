object DAOstock: TDAOstock
  Left = 405
  Top = 204
  Width = 1242
  Height = 477
  Caption = 'DAOstock'
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
  object panel2: TPanel
    Left = 0
    Top = 64
    Width = 1226
    Height = 75
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Visible = False
    object lbl1: TLabel
      Left = 204
      Top = 12
      Width = 65
      Height = 16
      Caption = 'Mat Name:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 28
      Top = 15
      Width = 46
      Height = 16
      Caption = 'Mat No:'
    end
    object Label4: TLabel
      Left = 8
      Top = 43
      Width = 66
      Height = 16
      Caption = 'StockDate:'
    end
    object Label2: TLabel
      Left = 230
      Top = 41
      Width = 39
      Height = 16
      Caption = 'CKBH:'
    end
    object EditMatNo: TEdit
      Left = 76
      Top = 11
      Width = 115
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object btn1: TButton
      Left = 704
      Top = 19
      Width = 62
      Height = 44
      Caption = 'Query1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btn1Click
    end
    object EditMatNM: TEdit
      Left = 274
      Top = 9
      Width = 127
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object DTP1: TDateTimePicker
      Left = 77
      Top = 40
      Width = 116
      Height = 24
      Date = 39289.406377673610000000
      Format = 'yyyy/MM/dd'
      Time = 39289.406377673610000000
      TabOrder = 3
      OnChange = DTP1Change
    end
    object CBX1: TComboBox
      Left = 274
      Top = 37
      Width = 127
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 4
      Items.Strings = (
        'All')
    end
    object GroupBox1: TGroupBox
      Left = 408
      Top = 27
      Width = 289
      Height = 33
      TabOrder = 5
      object RB1: TRadioButton
        Left = 8
        Top = 10
        Width = 73
        Height = 17
        Caption = 'All size'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = RB1Click
      end
      object RB2: TRadioButton
        Left = 88
        Top = 10
        Width = 93
        Height = 17
        Caption = 'Single size'
        TabOrder = 1
        OnClick = RB2Click
      end
      object RB3: TRadioButton
        Left = 184
        Top = 10
        Width = 93
        Height = 17
        Caption = 'Range size'
        TabOrder = 2
        OnClick = RB3Click
      end
    end
    object CheckBox1: TCheckBox
      Left = 784
      Top = 32
      Width = 73
      Height = 17
      Caption = 'Total>0'
      Checked = True
      State = cbChecked
      TabOrder = 6
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1226
    Height = 64
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object LastMonth: TLabel
      Left = 390
      Top = 34
      Width = 438
      Height = 25
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BB1: TBitBtn
      Left = 17
      Top = 7
      Width = 57
      Height = 49
      Caption = 'Query'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
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
      Left = 74
      Top = 7
      Width = 57
      Height = 49
      Hint = 'Save Current'
      Caption = 'Monthly'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BB2Click
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
    object bbt6: TBitBtn
      Left = 160
      Top = 7
      Width = 57
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Excel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = bbt6Click
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
    object btn_Print_Kho: TBitBtn
      Left = 303
      Top = 7
      Width = 65
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Print_Kho'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btn_Print_KhoClick
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
    object btn_Print_Tong: TBitBtn
      Left = 226
      Top = 7
      Width = 69
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Print_Tong'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btn_Print_TongClick
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
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 139
    Width = 1226
    Height = 299
    ActivePage = TabSheet2
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object TabSheet2: TTabSheet
      Caption = 'DAO Toan'#20840#37096
      ImageIndex = 1
      object dbgrdh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 1218
        Height = 268
        Align = alClient
        DataSource = ds2
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        FrozenCols = 2
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDrawColumnCell = dbgrdh2DrawColumnCell
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <
              item
                FieldName = 'CLBH'
                ValueType = fvtCount
              end>
            Title.Caption = #26028#20992#26009#34399'|MatNo'
            Width = 79
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Title.Caption = #26028#20992#21517#31281'|MatName'
            Width = 131
          end
          item
            EditButtons = <>
            FieldName = 'Total'
            Footers = <
              item
                FieldName = 'Total'
                ValueType = fvtSum
              end>
            Title.Caption = #32317#25976'|Total'
            Width = 61
          end>
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'DAO Kho'#24235#23384
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object dbgrdh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1226
        Height = 276
        Align = alClient
        DataSource = ds1
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        FrozenCols = 2
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = pm1
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDrawColumnCell = dbgrdh1DrawColumnCell
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <
              item
                FieldName = 'CLBH'
                ValueType = fvtCount
              end>
            Title.Caption = #26028#20992#26009#34399'|MatNo'
            Width = 79
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Title.Caption = #26028#20992#21517#31281'|MatName'
            Width = 131
          end
          item
            EditButtons = <>
            FieldName = 'Total'
            Footers = <
              item
                FieldName = 'Total'
                ValueType = fvtSum
              end>
            Title.Caption = #32317#25976'|Total'
            Width = 61
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'DAO Ra'#20511#20986
      ImageIndex = 2
      object dbgrdh3: TDBGridEh
        Left = 0
        Top = 0
        Width = 1226
        Height = 276
        Align = alClient
        DataSource = ds3
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        FrozenCols = 3
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DepName'
            Footers = <>
            Title.Caption = #32218#21029'|DepName'
            Width = 69
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <
              item
                FieldName = 'CLBH'
                ValueType = fvtCount
              end>
            Title.Caption = #26028#20992#26009#34399'|MatNo'
            Width = 79
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Title.Caption = #26028#20992#21517#31281'|MatName'
            Width = 131
          end
          item
            EditButtons = <>
            FieldName = 'Total'
            Footers = <
              item
                FieldName = 'Total'
                ValueType = fvtSum
              end>
            Title.Caption = #32317#25976'|Total'
            Width = 61
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'DAO Bao Phe('#22577#24290')'
      ImageIndex = 3
      object dbgrdh4: TDBGridEh
        Left = 0
        Top = 0
        Width = 1226
        Height = 276
        Align = alClient
        DataSource = ds4
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        FrozenCols = 2
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = pm1
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDrawColumnCell = dbgrdh4DrawColumnCell
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <
              item
                FieldName = 'CLBH'
                ValueType = fvtCount
              end>
            Title.Caption = #26028#20992#26009#34399'|MatNo'
            Width = 79
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Title.Caption = #26028#20992#21517#31281'|MatName'
            Width = 131
          end
          item
            EditButtons = <>
            FieldName = 'Total'
            Footers = <
              item
                FieldName = 'Total'
                ValueType = fvtSum
              end>
            Title.Caption = #32317#25976'|Total'
            Width = 61
          end>
      end
    end
  end
  object qry1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'if object_id('#39'tempdb..#CLZLKC_Last'#39') is not null  '
      'begin   drop table #CLZLKC_Last end   '
      
        'select NowKC.CKBH,NowKC.CLBH,NowKC.SIZ,IsNull(NowKC.NowRKQty,0)-' +
        'IsNull(LL.LLQty,0) as Qty,LastKC.LastRem,RK.RKQty,LL.LLQty into ' +
        '#CLZLKC_Last from ('
      '  select CKBH,CLBH,SIZ,Sum(RKQty) as NowRKQty from ('
      
        '  select LTRK.CKBH,LTRKSS.CLBH,LTRKSS.SIZ,SUM(LTRKSS.Qty) as RKQ' +
        'ty from LTRKSS,LTRK '
      
        '  where LTRKSS.RKNO=LTRK.RKNO and LTRK.SFL in ('#39'1'#39','#39'2'#39') and LTRK' +
        '.CKBH in (Select CKBH from LastKCCK where LB='#39'03'#39' and GSBH='#39'VA12' +
        #39') and convert(smalldatetime,convert(varchar,LTRK.UserDate,111))' +
        ' between '#39'2024/06/01'#39' and '#39'2024/06/12'#39' '
      '  and LTRK.CKBH='#39'DKU1'#39' '
      '  Group by LTRK.CKBH,LTRKSS.CLBH,LTRKSS.SIZ '
      '  Union All '
      
        '  select CKBH,CLBH,SIZ,QTY as LastRem from Lastmonth where KCYEA' +
        'R='#39'2024'#39' and KCMonth='#39'05'#39'  and CKBH in (Select CKBH from LastKCC' +
        'K where LB='#39'03'#39' and GSBH='#39'VA12'#39')  '
      '  and CKBH='#39'DKU1'#39' '
      '  ) as tmpRKTLFL '
      '  group by CKBH,CLBH,SIZ ) as NowKC'
      'left join ( '
      
        '   select CKBH,CLBH,SIZ,QTY as LastRem from Lastmonth where KCYE' +
        'AR='#39'2024'#39' and KCMonth='#39'05'#39'  and CKBH in (Select CKBH from LastKC' +
        'CK where LB='#39'03'#39' and GSBH='#39'VA12'#39')  '
      '  and CKBH='#39'DKU1'#39' '
      
        '   ) as LastKC on NowKC.CKBH=LastKC.CKBH and NowKC.CLBH=LastKC.C' +
        'LBH and NowKC.SIZ=LastKC.SIZ'
      'left join ( '
      
        '  select LTRK.CKBH,LTRKSS.CLBH,LTRKSS.SIZ,SUM(LTRKSS.Qty) as RKQ' +
        'ty from LTRKSS,LTRK '
      
        '  where LTRKSS.RKNO=LTRK.RKNO and LTRK.SFL in ('#39'1'#39','#39'2'#39') and LTRK' +
        '.CKBH in (Select CKBH from LastKCCK where LB='#39'03'#39' and GSBH='#39'VA12' +
        #39') and convert(smalldatetime,convert(varchar,LTRK.UserDate,111))' +
        ' between '#39'2024/06/01'#39' and '#39'2024/06/12'#39' '
      '  and LTRK.CKBH='#39'DKU1'#39'  '
      
        '  Group by LTRK.CKBH,LTRKSS.CLBH,LTRKSS.SIZ  ) RK on NowKC.CKBH=' +
        'RK.CKBH and NowKC.CLBH=RK.CLBH and NowKC.SIZ=RK.SIZ'
      'left join ( '
      
        '   select LTLL.CKBH,LTLLSS.CLBH,LTLLSS.SIZ,SUM(LTLLSS.Qty) as LL' +
        'Qty from LTLLSS,LTLL '
      
        '   where LTLLSS.LLNO=LTLL.LLNO  and LTLL.CFMID<>'#39'NO'#39' and LTLL.SF' +
        'L in ('#39'1'#39','#39'2'#39') and LTLL.CKBH in (Select CKBH from LastKCCK where' +
        ' LB='#39'03'#39' and GSBH='#39'VA12'#39')   and convert(smalldatetime,convert(va' +
        'rchar,LTLL.CFMDate,111)) between '#39'2024/06/01'#39' and '#39'2024/06/12'#39' '
      ' and LTLL.CKBH='#39'DKU1'#39' '
      
        '   Group by LTLL.CKBH,LTLLSS.CLBH,LTLLSS.SIZ ) LL on NowKC.CKBH=' +
        'LL.CKBH and NowKC.CLBH=LL.CLBH and NowKC.SIZ=LL.SIZ'
      '      '
      'select #CLZLKC_Last.CLBH,CLZL.YWPM, SUM(Qty) as Total,'
      '   Max(case when SIZ='#39' 10.5'#39' then Qty end) as '#39'[ 10.5]'#39', '
      '   Max(case when SIZ='#39' 11.0'#39' then Qty end) as '#39'[ 11.0]'#39', '
      '   Max(case when SIZ='#39' 11.5'#39' then Qty end) as '#39'[ 11.5]'#39', '
      '   Max(case when SIZ='#39' 12.0'#39' then Qty end) as '#39'[ 12.0]'#39', '
      '   Max(case when SIZ='#39' 12.5'#39' then Qty end) as '#39'[ 12.5]'#39', '
      '   Max(case when SIZ='#39' 13.0'#39' then Qty end) as '#39'[ 13.0]'#39', '
      '   Max(case when SIZ='#39' 13.5'#39' then Qty end) as '#39'[ 13.5]'#39', '
      '   Max(case when SIZ='#39'01.0'#39' then Qty end) as '#39'[01.0]'#39', '
      '   Max(case when SIZ='#39'01.5'#39' then Qty end) as '#39'[01.5]'#39', '
      '   Max(case when SIZ='#39'02.0'#39' then Qty end) as '#39'[02.0]'#39', '
      '   Max(case when SIZ='#39'02.5'#39' then Qty end) as '#39'[02.5]'#39', '
      '   Max(case when SIZ='#39'03.0'#39' then Qty end) as '#39'[03.0]'#39', '
      '   Max(case when SIZ='#39'03.5'#39' then Qty end) as '#39'[03.5]'#39', '
      '   Max(case when SIZ='#39'04.0'#39' then Qty end) as '#39'[04.0]'#39', '
      '   Max(case when SIZ='#39'04.5'#39' then Qty end) as '#39'[04.5]'#39', '
      '   Max(case when SIZ='#39'05.0'#39' then Qty end) as '#39'[05.0]'#39', '
      '   Max(case when SIZ='#39'05.5'#39' then Qty end) as '#39'[05.5]'#39', '
      '   Max(case when SIZ='#39'06.0'#39' then Qty end) as '#39'[06.0]'#39', '
      '   Max(case when SIZ='#39'06.5'#39' then Qty end) as '#39'[06.5]'#39', '
      '   Max(case when SIZ='#39'07.0'#39' then Qty end) as '#39'[07.0]'#39', '
      '   Max(case when SIZ='#39'07.5'#39' then Qty end) as '#39'[07.5]'#39', '
      '   Max(case when SIZ='#39'08.0'#39' then Qty end) as '#39'[08.0]'#39', '
      '   Max(case when SIZ='#39'08.5'#39' then Qty end) as '#39'[08.5]'#39', '
      '   Max(case when SIZ='#39'09.0'#39' then Qty end) as '#39'[09.0]'#39', '
      '   Max(case when SIZ='#39'09.5'#39' then Qty end) as '#39'[09.5]'#39', '
      '   Max(case when SIZ='#39'10.0'#39' then Qty end) as '#39'[10.0]'#39', '
      '   Max(case when SIZ='#39'10.5'#39' then Qty end) as '#39'[10.5]'#39', '
      '   Max(case when SIZ='#39'11.0'#39' then Qty end) as '#39'[11.0]'#39', '
      '   Max(case when SIZ='#39'11.5'#39' then Qty end) as '#39'[11.5]'#39', '
      '   Max(case when SIZ='#39'12.0'#39' then Qty end) as '#39'[12.0]'#39', '
      '   Max(case when SIZ='#39'12.5'#39' then Qty end) as '#39'[12.5]'#39', '
      '   Max(case when SIZ='#39'13.0'#39' then Qty end) as '#39'[13.0]'#39', '
      '   Max(case when SIZ='#39'13.5'#39' then Qty end) as '#39'[13.5]'#39', '
      '   Max(case when SIZ='#39'14.0'#39' then Qty end) as '#39'[14.0]'#39', '
      '   Max(case when SIZ='#39'14.5'#39' then Qty end) as '#39'[14.5]'#39', '
      '   Max(case when SIZ='#39'15.0'#39' then Qty end) as '#39'[15.0]'#39', '
      '   Max(case when SIZ='#39'15.5'#39' then Qty end) as '#39'[15.5]'#39', '
      '   Max(case when SIZ='#39'16.0'#39' then Qty end) as '#39'[16.0]'#39', '
      '   Max(case when SIZ='#39'17.0'#39' then Qty end) as '#39'[17.0]'#39', '
      '   Max(case when SIZ='#39'18.0'#39' then Qty end) as '#39'[18.0]'#39', '
      '   Max(case when SIZ='#39'ZZZ'#39' then Qty end) as '#39'[ZZZ]'#39', '
      
        '   Max(case when SIZ='#39'01.0-01.5'#39' then Qty end) as '#39'[01.0-01.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'01.0-13.0'#39' then Qty end) as '#39'[01.0-13.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'01.5-03.0'#39' then Qty end) as '#39'[01.5-03.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'02.0-02.5'#39' then Qty end) as '#39'[02.0-02.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'02.0-03.0'#39' then Qty end) as '#39'[02.0-03.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'02.0-04.0'#39' then Qty end) as '#39'[02.0-04.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'02.0-10.0'#39' then Qty end) as '#39'[02.0-10.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'03.0-03.5'#39' then Qty end) as '#39'[03.0-03.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'03.0-04.0'#39' then Qty end) as '#39'[03.0-04.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'03.0-04.5'#39' then Qty end) as '#39'[03.0-04.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'03.0-05.0'#39' then Qty end) as '#39'[03.0-05.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'03.0-06.0'#39' then Qty end) as '#39'[03.0-06.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'03.0-07.0'#39' then Qty end) as '#39'[03.0-07.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'03.0-13.0'#39' then Qty end) as '#39'[03.0-13.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'03.0-13.5'#39' then Qty end) as '#39'[03.0-13.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'03.0-16.0'#39' then Qty end) as '#39'[03.0-16.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'03.0-18.0'#39' then Qty end) as '#39'[03.0-18.0]'#39',' +
        ' '
      '   Max(case when SIZ='#39'03.0-8.5'#39' then Qty end) as '#39'[03.0-8.5]'#39', '
      
        '   Max(case when SIZ='#39'03.5-05.0'#39' then Qty end) as '#39'[03.5-05.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'03.5-07.0'#39' then Qty end) as '#39'[03.5-07.0]'#39',' +
        ' '
      '   Max(case when SIZ='#39'03-05.5'#39' then Qty end) as '#39'[03-05.5]'#39', '
      '   Max(case when SIZ='#39'03-06.5'#39' then Qty end) as '#39'[03-06.5]'#39', '
      '   Max(case when SIZ='#39'03-07.5'#39' then Qty end) as '#39'[03-07.5]'#39', '
      
        '   Max(case when SIZ='#39'04.0-04.5'#39' then Qty end) as '#39'[04.0-04.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'04.0-05.0'#39' then Qty end) as '#39'[04.0-05.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'04.0-05.5'#39' then Qty end) as '#39'[04.0-05.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'04.0-06.0'#39' then Qty end) as '#39'[04.0-06.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'04.5-05.0'#39' then Qty end) as '#39'[04.5-05.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'04.5-05.5'#39' then Qty end) as '#39'[04.5-05.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'04.5-06.0'#39' then Qty end) as '#39'[04.5-06.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'04.5-06.5'#39' then Qty end) as '#39'[04.5-06.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'04.5-07.5'#39' then Qty end) as '#39'[04.5-07.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'04.5-10.5'#39' then Qty end) as '#39'[04.5-10.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'04.5-13.0'#39' then Qty end) as '#39'[04.5-13.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'05.0-05.5'#39' then Qty end) as '#39'[05.0-05.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'05.0-06.0'#39' then Qty end) as '#39'[05.0-06.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'05.0-06.5'#39' then Qty end) as '#39'[05.0-06.5]'#39',' +
        ' '
      '   Max(case when SIZ='#39'05.0-7.0'#39' then Qty end) as '#39'[05.0-7.0]'#39', '
      
        '   Max(case when SIZ='#39'05.5-06.5'#39' then Qty end) as '#39'[05.5-06.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'05.5-07.0'#39' then Qty end) as '#39'[05.5-07.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'05.5-07.5'#39' then Qty end) as '#39'[05.5-07.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'06.0-06.5'#39' then Qty end) as '#39'[06.0-06.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'06.0-07.0'#39' then Qty end) as '#39'[06.0-07.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'06.0-08.5'#39' then Qty end) as '#39'[06.0-08.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'06.5-07.0'#39' then Qty end) as '#39'[06.5-07.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'06.5-07.5'#39' then Qty end) as '#39'[06.5-07.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'06.5-08.0'#39' then Qty end) as '#39'[06.5-08.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'07.0-07.5'#39' then Qty end) as '#39'[07.0-07.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'07.0-08.0'#39' then Qty end) as '#39'[07.0-08.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'07.0-08.5'#39' then Qty end) as '#39'[07.0-08.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'07.0-09.0'#39' then Qty end) as '#39'[07.0-09.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'07.0-09.5'#39' then Qty end) as '#39'[07.0-09.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'07.0-10.0'#39' then Qty end) as '#39'[07.0-10.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'07.0-10.5'#39' then Qty end) as '#39'[07.0-10.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'07.0-13.0'#39' then Qty end) as '#39'[07.0-13.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'07.5-08.0'#39' then Qty end) as '#39'[07.5-08.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'07.5-08.5'#39' then Qty end) as '#39'[07.5-08.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'08.0-08.5'#39' then Qty end) as '#39'[08.0-08.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'08.0-09.0'#39' then Qty end) as '#39'[08.0-09.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'08.0-13.0'#39' then Qty end) as '#39'[08.0-13.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'08.5-09.0'#39' then Qty end) as '#39'[08.5-09.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'08.5-09.5'#39' then Qty end) as '#39'[08.5-09.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'08.5-10.0'#39' then Qty end) as '#39'[08.5-10.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'09.0-09.5'#39' then Qty end) as '#39'[09.0-09.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'09.0-10.0'#39' then Qty end) as '#39'[09.0-10.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'09.0-10.5'#39' then Qty end) as '#39'[09.0-10.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'09.0-11.5'#39' then Qty end) as '#39'[09.0-11.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'09.0-13.0'#39' then Qty end) as '#39'[09.0-13.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'09.0-16.0'#39' then Qty end) as '#39'[09.0-16.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'09.5-10.0'#39' then Qty end) as '#39'[09.5-10.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'10.0-10.5'#39' then Qty end) as '#39'[10.0-10.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'10.0-11.0'#39' then Qty end) as '#39'[10.0-11.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'10.0-11.5'#39' then Qty end) as '#39'[10.0-11.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'10.0-12.0'#39' then Qty end) as '#39'[10.0-12.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'10.0-13.0'#39' then Qty end) as '#39'[10.0-13.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'10.5-03.0'#39' then Qty end) as '#39'[10.5-03.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'10.5-07.0'#39' then Qty end) as '#39'[10.5-07.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'10.5-11.0'#39' then Qty end) as '#39'[10.5-11.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'10.5-11.5'#39' then Qty end) as '#39'[10.5-11.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'10.5-12.0'#39' then Qty end) as '#39'[10.5-12.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'10.5-12.5'#39' then Qty end) as '#39'[10.5-12.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'10.5-13.0'#39' then Qty end) as '#39'[10.5-13.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'11.0-11.5'#39' then Qty end) as '#39'[11.0-11.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'11.0-12.0'#39' then Qty end) as '#39'[11.0-12.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'11.0-13.0'#39' then Qty end) as '#39'[11.0-13.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'11.0-13.5'#39' then Qty end) as '#39'[11.0-13.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'11.0-14.0'#39' then Qty end) as '#39'[11.0-14.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'11.5-12.0'#39' then Qty end) as '#39'[11.5-12.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'12.0-01.0'#39' then Qty end) as '#39'[12.0-01.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'12.0-12.5'#39' then Qty end) as '#39'[12.0-12.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'12.0-13.0'#39' then Qty end) as '#39'[12.0-13.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'12.0-14.0'#39' then Qty end) as '#39'[12.0-14.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'12.5-01.0'#39' then Qty end) as '#39'[12.5-01.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'13.0-13.5'#39' then Qty end) as '#39'[13.0-13.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'13.0-14.0'#39' then Qty end) as '#39'[13.0-14.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'13.0-15.0'#39' then Qty end) as '#39'[13.0-15.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'14.0-16.0'#39' then Qty end) as '#39'[14.0-16.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'15.0-16.0'#39' then Qty end) as '#39'[15.0-16.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'15.0-18.0'#39' then Qty end) as '#39'[15.0-18.0]'#39',' +
        ' '
      '     CLZL.CQDH,CLZL.DWBH '
      'from #CLZLKC_Last  '
      'left join CLZL on CLZL.cldh=#CLZLKC_Last.CLBH  where 1=2 '
      'Group by #CLZLKC_Last.CLBH,CLZL.YWPM,CLZL.CQDH,CLZL.DWBH'
      '')
    Left = 198
    Top = 192
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 200
    Top = 223
  end
  object pm1: TPopupMenu
    Left = 197
    Top = 256
    object S1: TMenuItem
      Caption = 'Detail'
      OnClick = S1Click
    end
  end
  object dlgSave1: TSaveDialog
    Filter = 
      'Excel File(*.xls)|*.xls|CSV(comma split)(*.csv)|*.csv|Web Page(*' +
      '.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt'
    InitialDir = 'c:\'
    Left = 197
    Top = 289
  end
  object Qtemp1: TQuery
    DatabaseName = 'DB'
    Left = 165
    Top = 192
  end
  object qry2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'if object_id('#39'tempdb..#CLZLKC_LastK'#39') is not null  '
      'begin   drop table #CLZLKC_LastK end   '
      
        'select NowKC.CKBH,NowKC.CLBH,NowKC.SIZ,IsNull(NowKC.NowRKQty,0)-' +
        'IsNull(LL.LLQty,0) as Qty into #CLZLKC_LastK from ('
      '  select CKBH,CLBH,SIZ,Sum(RKQty) as NowRKQty from ('
      
        '  select LTRK.CKBH,LTRKSS.CLBH,LTRKSS.SIZ,SUM(LTRKSS.Qty) as RKQ' +
        'ty from LTRKSS,LTRK '
      
        '  where LTRKSS.RKNO=LTRK.RKNO and LTRK.SFL='#39'2'#39'  and LTRK.CKBH in' +
        ' (Select CKBH from LastKCCK where LB='#39'03'#39' and GSBH='#39'VA12'#39') and c' +
        'onvert(smalldatetime,convert(varchar,LTRK.UserDate,111)) between' +
        ' '#39'2024/06/01'#39' and '#39'2024/06/13'#39' '
      ' and LTRK.CKBH='#39'DKU1'#39' '
      '  Group by LTRK.CKBH,LTRKSS.CLBH,LTRKSS.SIZ '
      '  Union All '
      
        '  select CKBH,CLBH,SIZ,QTY as LastRem from Lastmonth where KCYEA' +
        'R='#39'2024'#39' and KCMonth='#39'05'#39'  and CKBH in (Select CKBH+'#39'#L'#39' from La' +
        'stKCCK where LB='#39'03'#39' and GSBH='#39'VA12'#39')   '
      ' and CKBH='#39'DKU1#L'#39' '
      '  ) as tmpRKTLFL '
      '  group by CKBH,CLBH,SIZ ) as NowKC'
      'left join ( '
      
        '   select LTLL.CKBH,LTLLSS.CLBH,LTLLSS.SIZ,SUM(LTLLSS.Qty) as LL' +
        'Qty from LTLLSS,LTLL '
      
        '   where LTLLSS.LLNO=LTLL.LLNO  and LTLL.CFMID<>'#39'NO'#39' and LTLL.SF' +
        'L='#39'2'#39' and LTLL.CKBH in (Select CKBH from LastKCCK where LB='#39'03'#39' ' +
        'and GSBH='#39'VA12'#39')   and convert(smalldatetime,convert(varchar,LTL' +
        'L.CFMDate,111)) between '#39'2024/06/01'#39' and '#39'2024/06/13'#39' '
      ' and LTLL.CKBH='#39'DKU1'#39' '
      
        '   Group by LTLL.CKBH,LTLLSS.CLBH,LTLLSS.SIZ ) LL on NowKC.CKBH=' +
        'LL.CKBH and NowKC.CLBH=LL.CLBH and NowKC.SIZ=LL.SIZ'
      'select #CLZLKC_LastK.CLBH,CLZL.YWPM, SUM(Qty) as Total,'
      '   Max(case when SIZ='#39' 10.5'#39' then Qty end) as '#39'[ 10.5]'#39', '
      '   Max(case when SIZ='#39' 11.0'#39' then Qty end) as '#39'[ 11.0]'#39', '
      '   Max(case when SIZ='#39' 11.5'#39' then Qty end) as '#39'[ 11.5]'#39', '
      '   Max(case when SIZ='#39' 12.0'#39' then Qty end) as '#39'[ 12.0]'#39', '
      '   Max(case when SIZ='#39' 12.5'#39' then Qty end) as '#39'[ 12.5]'#39', '
      '   Max(case when SIZ='#39' 13.0'#39' then Qty end) as '#39'[ 13.0]'#39', '
      '   Max(case when SIZ='#39' 13.5'#39' then Qty end) as '#39'[ 13.5]'#39', '
      '   Max(case when SIZ='#39'01.0'#39' then Qty end) as '#39'[01.0]'#39', '
      '   Max(case when SIZ='#39'01.5'#39' then Qty end) as '#39'[01.5]'#39', '
      '   Max(case when SIZ='#39'02.0'#39' then Qty end) as '#39'[02.0]'#39', '
      '   Max(case when SIZ='#39'02.5'#39' then Qty end) as '#39'[02.5]'#39', '
      '   Max(case when SIZ='#39'03.0'#39' then Qty end) as '#39'[03.0]'#39', '
      '   Max(case when SIZ='#39'03.5'#39' then Qty end) as '#39'[03.5]'#39', '
      '   Max(case when SIZ='#39'04.0'#39' then Qty end) as '#39'[04.0]'#39', '
      '   Max(case when SIZ='#39'04.5'#39' then Qty end) as '#39'[04.5]'#39', '
      '   Max(case when SIZ='#39'05.0'#39' then Qty end) as '#39'[05.0]'#39', '
      '   Max(case when SIZ='#39'05.5'#39' then Qty end) as '#39'[05.5]'#39', '
      '   Max(case when SIZ='#39'06.0'#39' then Qty end) as '#39'[06.0]'#39', '
      '   Max(case when SIZ='#39'06.5'#39' then Qty end) as '#39'[06.5]'#39', '
      '   Max(case when SIZ='#39'07.0'#39' then Qty end) as '#39'[07.0]'#39', '
      '   Max(case when SIZ='#39'07.5'#39' then Qty end) as '#39'[07.5]'#39', '
      '   Max(case when SIZ='#39'08.0'#39' then Qty end) as '#39'[08.0]'#39', '
      '   Max(case when SIZ='#39'08.5'#39' then Qty end) as '#39'[08.5]'#39', '
      '   Max(case when SIZ='#39'09.0'#39' then Qty end) as '#39'[09.0]'#39', '
      '   Max(case when SIZ='#39'09.5'#39' then Qty end) as '#39'[09.5]'#39', '
      '   Max(case when SIZ='#39'10.0'#39' then Qty end) as '#39'[10.0]'#39', '
      '   Max(case when SIZ='#39'10.5'#39' then Qty end) as '#39'[10.5]'#39', '
      '   Max(case when SIZ='#39'11.0'#39' then Qty end) as '#39'[11.0]'#39', '
      '   Max(case when SIZ='#39'11.5'#39' then Qty end) as '#39'[11.5]'#39', '
      '   Max(case when SIZ='#39'12.0'#39' then Qty end) as '#39'[12.0]'#39', '
      '   Max(case when SIZ='#39'12.5'#39' then Qty end) as '#39'[12.5]'#39', '
      '   Max(case when SIZ='#39'13.0'#39' then Qty end) as '#39'[13.0]'#39', '
      '   Max(case when SIZ='#39'13.5'#39' then Qty end) as '#39'[13.5]'#39', '
      '   Max(case when SIZ='#39'14.0'#39' then Qty end) as '#39'[14.0]'#39', '
      '   Max(case when SIZ='#39'14.5'#39' then Qty end) as '#39'[14.5]'#39', '
      '   Max(case when SIZ='#39'15.0'#39' then Qty end) as '#39'[15.0]'#39', '
      '   Max(case when SIZ='#39'15.5'#39' then Qty end) as '#39'[15.5]'#39', '
      '   Max(case when SIZ='#39'16.0'#39' then Qty end) as '#39'[16.0]'#39', '
      '   Max(case when SIZ='#39'17.0'#39' then Qty end) as '#39'[17.0]'#39', '
      '   Max(case when SIZ='#39'18.0'#39' then Qty end) as '#39'[18.0]'#39', '
      '   Max(case when SIZ='#39'ZZZ'#39' then Qty end) as '#39'[ZZZ]'#39', '
      
        '   Max(case when SIZ='#39'01.0-01.5'#39' then Qty end) as '#39'[01.0-01.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'01.0-13.0'#39' then Qty end) as '#39'[01.0-13.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'01.5-03.0'#39' then Qty end) as '#39'[01.5-03.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'02.0-02.5'#39' then Qty end) as '#39'[02.0-02.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'02.0-03.0'#39' then Qty end) as '#39'[02.0-03.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'02.0-04.0'#39' then Qty end) as '#39'[02.0-04.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'02.0-10.0'#39' then Qty end) as '#39'[02.0-10.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'03.0-03.5'#39' then Qty end) as '#39'[03.0-03.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'03.0-04.0'#39' then Qty end) as '#39'[03.0-04.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'03.0-04.5'#39' then Qty end) as '#39'[03.0-04.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'03.0-05.0'#39' then Qty end) as '#39'[03.0-05.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'03.0-06.0'#39' then Qty end) as '#39'[03.0-06.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'03.0-07.0'#39' then Qty end) as '#39'[03.0-07.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'03.0-13.0'#39' then Qty end) as '#39'[03.0-13.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'03.0-13.5'#39' then Qty end) as '#39'[03.0-13.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'03.0-16.0'#39' then Qty end) as '#39'[03.0-16.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'03.0-18.0'#39' then Qty end) as '#39'[03.0-18.0]'#39',' +
        ' '
      '   Max(case when SIZ='#39'03.0-8.5'#39' then Qty end) as '#39'[03.0-8.5]'#39', '
      
        '   Max(case when SIZ='#39'03.5-05.0'#39' then Qty end) as '#39'[03.5-05.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'03.5-07.0'#39' then Qty end) as '#39'[03.5-07.0]'#39',' +
        ' '
      '   Max(case when SIZ='#39'03-05.5'#39' then Qty end) as '#39'[03-05.5]'#39', '
      '   Max(case when SIZ='#39'03-06.5'#39' then Qty end) as '#39'[03-06.5]'#39', '
      '   Max(case when SIZ='#39'03-07.5'#39' then Qty end) as '#39'[03-07.5]'#39', '
      
        '   Max(case when SIZ='#39'04.0-04.5'#39' then Qty end) as '#39'[04.0-04.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'04.0-05.0'#39' then Qty end) as '#39'[04.0-05.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'04.0-05.5'#39' then Qty end) as '#39'[04.0-05.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'04.0-06.0'#39' then Qty end) as '#39'[04.0-06.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'04.5-05.0'#39' then Qty end) as '#39'[04.5-05.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'04.5-05.5'#39' then Qty end) as '#39'[04.5-05.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'04.5-06.0'#39' then Qty end) as '#39'[04.5-06.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'04.5-06.5'#39' then Qty end) as '#39'[04.5-06.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'04.5-07.5'#39' then Qty end) as '#39'[04.5-07.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'04.5-10.5'#39' then Qty end) as '#39'[04.5-10.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'04.5-13.0'#39' then Qty end) as '#39'[04.5-13.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'05.0-05.5'#39' then Qty end) as '#39'[05.0-05.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'05.0-06.0'#39' then Qty end) as '#39'[05.0-06.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'05.0-06.5'#39' then Qty end) as '#39'[05.0-06.5]'#39',' +
        ' '
      '   Max(case when SIZ='#39'05.0-7.0'#39' then Qty end) as '#39'[05.0-7.0]'#39', '
      
        '   Max(case when SIZ='#39'05.5-06.5'#39' then Qty end) as '#39'[05.5-06.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'05.5-07.0'#39' then Qty end) as '#39'[05.5-07.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'05.5-07.5'#39' then Qty end) as '#39'[05.5-07.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'06.0-06.5'#39' then Qty end) as '#39'[06.0-06.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'06.0-07.0'#39' then Qty end) as '#39'[06.0-07.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'06.0-08.5'#39' then Qty end) as '#39'[06.0-08.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'06.5-07.0'#39' then Qty end) as '#39'[06.5-07.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'06.5-07.5'#39' then Qty end) as '#39'[06.5-07.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'06.5-08.0'#39' then Qty end) as '#39'[06.5-08.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'07.0-07.5'#39' then Qty end) as '#39'[07.0-07.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'07.0-08.0'#39' then Qty end) as '#39'[07.0-08.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'07.0-08.5'#39' then Qty end) as '#39'[07.0-08.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'07.0-09.0'#39' then Qty end) as '#39'[07.0-09.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'07.0-09.5'#39' then Qty end) as '#39'[07.0-09.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'07.0-10.0'#39' then Qty end) as '#39'[07.0-10.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'07.0-10.5'#39' then Qty end) as '#39'[07.0-10.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'07.0-13.0'#39' then Qty end) as '#39'[07.0-13.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'07.5-08.0'#39' then Qty end) as '#39'[07.5-08.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'07.5-08.5'#39' then Qty end) as '#39'[07.5-08.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'08.0-08.5'#39' then Qty end) as '#39'[08.0-08.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'08.0-09.0'#39' then Qty end) as '#39'[08.0-09.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'08.0-13.0'#39' then Qty end) as '#39'[08.0-13.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'08.5-09.0'#39' then Qty end) as '#39'[08.5-09.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'08.5-09.5'#39' then Qty end) as '#39'[08.5-09.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'08.5-10.0'#39' then Qty end) as '#39'[08.5-10.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'09.0-09.5'#39' then Qty end) as '#39'[09.0-09.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'09.0-10.0'#39' then Qty end) as '#39'[09.0-10.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'09.0-10.5'#39' then Qty end) as '#39'[09.0-10.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'09.0-11.5'#39' then Qty end) as '#39'[09.0-11.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'09.0-13.0'#39' then Qty end) as '#39'[09.0-13.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'09.0-16.0'#39' then Qty end) as '#39'[09.0-16.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'09.5-10.0'#39' then Qty end) as '#39'[09.5-10.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'10.0-10.5'#39' then Qty end) as '#39'[10.0-10.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'10.0-11.0'#39' then Qty end) as '#39'[10.0-11.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'10.0-11.5'#39' then Qty end) as '#39'[10.0-11.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'10.0-12.0'#39' then Qty end) as '#39'[10.0-12.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'10.0-13.0'#39' then Qty end) as '#39'[10.0-13.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'10.5-03.0'#39' then Qty end) as '#39'[10.5-03.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'10.5-07.0'#39' then Qty end) as '#39'[10.5-07.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'10.5-11.0'#39' then Qty end) as '#39'[10.5-11.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'10.5-11.5'#39' then Qty end) as '#39'[10.5-11.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'10.5-12.0'#39' then Qty end) as '#39'[10.5-12.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'10.5-12.5'#39' then Qty end) as '#39'[10.5-12.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'10.5-13.0'#39' then Qty end) as '#39'[10.5-13.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'11.0-11.5'#39' then Qty end) as '#39'[11.0-11.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'11.0-12.0'#39' then Qty end) as '#39'[11.0-12.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'11.0-13.0'#39' then Qty end) as '#39'[11.0-13.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'11.0-13.5'#39' then Qty end) as '#39'[11.0-13.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'11.0-14.0'#39' then Qty end) as '#39'[11.0-14.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'11.5-12.0'#39' then Qty end) as '#39'[11.5-12.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'12.0-01.0'#39' then Qty end) as '#39'[12.0-01.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'12.0-12.5'#39' then Qty end) as '#39'[12.0-12.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'12.0-13.0'#39' then Qty end) as '#39'[12.0-13.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'12.0-14.0'#39' then Qty end) as '#39'[12.0-14.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'12.5-01.0'#39' then Qty end) as '#39'[12.5-01.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'13.0-13.5'#39' then Qty end) as '#39'[13.0-13.5]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'13.0-14.0'#39' then Qty end) as '#39'[13.0-14.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'13.0-15.0'#39' then Qty end) as '#39'[13.0-15.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'14.0-16.0'#39' then Qty end) as '#39'[14.0-16.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'15.0-16.0'#39' then Qty end) as '#39'[15.0-16.0]'#39',' +
        ' '
      
        '   Max(case when SIZ='#39'15.0-18.0'#39' then Qty end) as '#39'[15.0-18.0]'#39',' +
        ' '
      'CLZL.CQDH,CLZL.DWBH '
      'from #CLZLKC_LastK  '
      'left join CLZL on CLZL.cldh=#CLZLKC_LastK.CLBH where 1=2 '
      'Group by #CLZLKC_LastK.CLBH,CLZL.YWPM,CLZL.CQDH,CLZL.DWBH'
      '')
    Left = 254
    Top = 192
  end
  object ds2: TDataSource
    DataSet = qry2
    Left = 253
    Top = 223
  end
  object LastSizQ: TQuery
    DatabaseName = 'DB'
    Left = 165
    Top = 224
  end
  object qry3: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'if object_id('#39'tempdb..#CLZLKC_Last'#39') is not null  '
      'begin   drop table #CLZLKC_Last end   '
      
        'select NowKC.CKBH,NowKC.CLBH,NowKC.SIZ,IsNull(NowKC.NowRKQty,0)-' +
        'IsNull(LL.LLQty,0) as Qty,LastKC.LastRem,RK.RKQty,LL.LLQty into ' +
        '#CLZLKC_Last from ('
      '  select CKBH,CLBH,SIZ,Sum(RKQty) as NowRKQty from ('
      
        '  select LTRK.CKBH,LTRKSS.CLBH,LTRKSS.SIZ,SUM(LTRKSS.Qty) as RKQ' +
        'ty from LTRKSS,LTRK '
      
        '  where LTRKSS.RKNO=LTRK.RKNO  and LTRK.CKBH='#39'VA12'#39' and convert(' +
        'smalldatetime,convert(varchar,LTRK.UserDate,111)) between '#39'2016/' +
        '08/01'#39' and '#39'2016/08/10'#39
      '  Group by LTRK.CKBH,LTRKSS.CLBH,LTRKSS.SIZ '
      '  Union All '
      
        '  select CKBH,CLBH,SIZ,QTY as LastRem from Lastmonth where CKBH=' +
        #39'VA12'#39' and KCYEAR='#39'2016'#39' and KCMonth='#39'07'#39' ) as tmpRKTLFL '
      '  group by CKBH,CLBH,SIZ ) as NowKC'
      'left join ( '
      
        '   select CKBH,CLBH,SIZ,QTY as LastRem from Lastmonth where CKBH' +
        '='#39'VA12'#39' and KCYEAR='#39'2016'#39' and KCMonth='#39'07'#39' ) as LastKC on NowKC.' +
        'CKBH=LastKC.CKBH and NowKC.CLBH=LastKC.CLBH and NowKC.SIZ=LastKC' +
        '.SIZ'
      'left join ( '
      
        '  select LTRK.CKBH,LTRKSS.CLBH,LTRKSS.SIZ,SUM(LTRKSS.Qty) as RKQ' +
        'ty from LTRKSS,LTRK '
      
        '  where LTRKSS.RKNO=LTRK.RKNO  and LTRK.CKBH='#39'VA12'#39' and convert(' +
        'smalldatetime,convert(varchar,LTRK.UserDate,111)) between '#39'2016/' +
        '08/01'#39' and '#39'2016/08/10'#39
      
        '  Group by LTRK.CKBH,LTRKSS.CLBH,LTRKSS.SIZ  ) RK on NowKC.CKBH=' +
        'RK.CKBH and NowKC.CLBH=RK.CLBH and NowKC.SIZ=RK.SIZ'
      'left join ( '
      
        '   select LTLL.CKBH,LTLLSS.CLBH,LTLLSS.SIZ,SUM(LTLLSS.Qty) as LL' +
        'Qty from LTLLSS,LTLL '
      
        '   where LTLLSS.LLNO=LTLL.LLNO  and LTLL.CFMID<>'#39'NO'#39' and LTLL.CK' +
        'BH='#39'VA12'#39' and convert(smalldatetime,convert(varchar,LTLL.UserDat' +
        'e,111)) between '#39'2016/08/01'#39' and '#39'2016/08/10'#39
      
        '   Group by LTLL.CKBH,LTLLSS.CLBH,LTLLSS.SIZ ) LL on NowKC.CKBH=' +
        'LL.CKBH and NowKC.CLBH=LL.CLBH and NowKC.SIZ=LL.SIZ'
      'select #CLZLKC_Last.CLBH,CLZL.YWPM, '
      '   case when SIZ='#39' 10.5'#39' then Qty end as '#39'[ 10.5]'#39', '
      '   case when SIZ='#39' 11.0'#39' then Qty end as '#39'[ 11.0]'#39', '
      '   case when SIZ='#39' 11.5'#39' then Qty end as '#39'[ 11.5]'#39', '
      '   case when SIZ='#39' 12.0'#39' then Qty end as '#39'[ 12.0]'#39', '
      '   case when SIZ='#39' 12.5'#39' then Qty end as '#39'[ 12.5]'#39', '
      '   case when SIZ='#39' 13.0'#39' then Qty end as '#39'[ 13.0]'#39', '
      '   case when SIZ='#39' 13.5'#39' then Qty end as '#39'[ 13.5]'#39', '
      '   case when SIZ='#39'01.0'#39' then Qty end as '#39'[01.0]'#39', '
      '   case when SIZ='#39'01.5'#39' then Qty end as '#39'[01.5]'#39', '
      '   case when SIZ='#39'02.0'#39' then Qty end as '#39'[02.0]'#39', '
      '   case when SIZ='#39'02.5'#39' then Qty end as '#39'[02.5]'#39', '
      '   case when SIZ='#39'03.0'#39' then Qty end as '#39'[03.0]'#39', '
      '   case when SIZ='#39'03.5'#39' then Qty end as '#39'[03.5]'#39', '
      '   case when SIZ='#39'04.0'#39' then Qty end as '#39'[04.0]'#39', '
      '   case when SIZ='#39'04.5'#39' then Qty end as '#39'[04.5]'#39', '
      '   case when SIZ='#39'05.0'#39' then Qty end as '#39'[05.0]'#39', '
      '   case when SIZ='#39'05.5'#39' then Qty end as '#39'[05.5]'#39', '
      '   case when SIZ='#39'06.0'#39' then Qty end as '#39'[06.0]'#39', '
      '   case when SIZ='#39'06.5'#39' then Qty end as '#39'[06.5]'#39', '
      '   case when SIZ='#39'07.0'#39' then Qty end as '#39'[07.0]'#39', '
      '   case when SIZ='#39'07.5'#39' then Qty end as '#39'[07.5]'#39', '
      '   case when SIZ='#39'08.0'#39' then Qty end as '#39'[08.0]'#39', '
      '   case when SIZ='#39'08.5'#39' then Qty end as '#39'[08.5]'#39', '
      '   case when SIZ='#39'09.0'#39' then Qty end as '#39'[09.0]'#39', '
      '   case when SIZ='#39'09.5'#39' then Qty end as '#39'[09.5]'#39', '
      '   case when SIZ='#39'10.0'#39' then Qty end as '#39'[10.0]'#39', '
      '   case when SIZ='#39'10.5'#39' then Qty end as '#39'[10.5]'#39', '
      '   case when SIZ='#39'11.0'#39' then Qty end as '#39'[11.0]'#39', '
      '   case when SIZ='#39'11.5'#39' then Qty end as '#39'[11.5]'#39', '
      '   case when SIZ='#39'12.0'#39' then Qty end as '#39'[12.0]'#39', '
      '   case when SIZ='#39'12.5'#39' then Qty end as '#39'[12.5]'#39', '
      '   case when SIZ='#39'13.0'#39' then Qty end as '#39'[13.0]'#39', '
      '   case when SIZ='#39'13.5'#39' then Qty end as '#39'[13.5]'#39', '
      '   case when SIZ='#39'14.0'#39' then Qty end as '#39'[14.0]'#39', '
      '   case when SIZ='#39'15.0'#39' then Qty end as '#39'[15.0]'#39', '
      '   case when SIZ='#39'16.0'#39' then Qty end as '#39'[16.0]'#39', '
      '   case when SIZ='#39'17.0'#39' then Qty end as '#39'[17.0]'#39', '
      '   case when SIZ='#39'18.0'#39' then Qty end as '#39'[18.0]'#39', '
      'CLZL.CQDH '
      'from #CLZLKC_Last  '
      'left join CLZL on CLZL.cldh=#CLZLKC_Last.CLBH'
      '')
    Left = 312
    Top = 192
  end
  object ds3: TDataSource
    DataSet = qry3
    Left = 309
    Top = 223
  end
  object ds4: TDataSource
    DataSet = qry4
    Left = 379
    Top = 223
  end
  object qry4: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'if object_id('#39'tempdb..#CLZLKC_Last'#39') is not null  '
      'begin   drop table #CLZLKC_Last end   '
      
        'select NowKC.CKBH,NowKC.CLBH,NowKC.SIZ,IsNull(NowKC.NowRKQty,0)-' +
        'IsNull(LL.LLQty,0) as Qty,LastKC.LastRem,RK.RKQty,LL.LLQty into ' +
        '#CLZLKC_Last from ('
      '  select CKBH,CLBH,SIZ,Sum(RKQty) as NowRKQty from ('
      
        '  select LTRK.CKBH,LTRKSS.CLBH,LTRKSS.SIZ,SUM(LTRKSS.Qty) as RKQ' +
        'ty from LTRKSS,LTRK '
      
        '  where LTRKSS.RKNO=LTRK.RKNO  and LTRK.CKBH='#39'VA12'#39' and convert(' +
        'smalldatetime,convert(varchar,LTRK.UserDate,111)) between '#39'2016/' +
        '08/01'#39' and '#39'2016/08/10'#39
      '  Group by LTRK.CKBH,LTRKSS.CLBH,LTRKSS.SIZ '
      '  Union All '
      
        '  select CKBH,CLBH,SIZ,QTY as LastRem from Lastmonth where CKBH=' +
        #39'VA12'#39' and KCYEAR='#39'2016'#39' and KCMonth='#39'07'#39' ) as tmpRKTLFL '
      '  group by CKBH,CLBH,SIZ ) as NowKC'
      'left join ( '
      
        '   select CKBH,CLBH,SIZ,QTY as LastRem from Lastmonth where CKBH' +
        '='#39'VA12'#39' and KCYEAR='#39'2016'#39' and KCMonth='#39'07'#39' ) as LastKC on NowKC.' +
        'CKBH=LastKC.CKBH and NowKC.CLBH=LastKC.CLBH and NowKC.SIZ=LastKC' +
        '.SIZ'
      'left join ( '
      
        '  select LTRK.CKBH,LTRKSS.CLBH,LTRKSS.SIZ,SUM(LTRKSS.Qty) as RKQ' +
        'ty from LTRKSS,LTRK '
      
        '  where LTRKSS.RKNO=LTRK.RKNO  and LTRK.CKBH='#39'VA12'#39' and convert(' +
        'smalldatetime,convert(varchar,LTRK.UserDate,111)) between '#39'2016/' +
        '08/01'#39' and '#39'2016/08/10'#39
      
        '  Group by LTRK.CKBH,LTRKSS.CLBH,LTRKSS.SIZ  ) RK on NowKC.CKBH=' +
        'RK.CKBH and NowKC.CLBH=RK.CLBH and NowKC.SIZ=RK.SIZ'
      'left join ( '
      
        '   select LTLL.CKBH,LTLLSS.CLBH,LTLLSS.SIZ,SUM(LTLLSS.Qty) as LL' +
        'Qty from LTLLSS,LTLL '
      
        '   where LTLLSS.LLNO=LTLL.LLNO  and LTLL.CFMID<>'#39'NO'#39' and LTLL.CK' +
        'BH='#39'VA12'#39' and convert(smalldatetime,convert(varchar,LTLL.UserDat' +
        'e,111)) between '#39'2016/08/01'#39' and '#39'2016/08/10'#39
      
        '   Group by LTLL.CKBH,LTLLSS.CLBH,LTLLSS.SIZ ) LL on NowKC.CKBH=' +
        'LL.CKBH and NowKC.CLBH=LL.CLBH and NowKC.SIZ=LL.SIZ'
      'select #CLZLKC_Last.CLBH,CLZL.YWPM, '
      '   case when SIZ='#39' 10.5'#39' then Qty end as '#39'[ 10.5]'#39', '
      '   case when SIZ='#39' 11.0'#39' then Qty end as '#39'[ 11.0]'#39', '
      '   case when SIZ='#39' 11.5'#39' then Qty end as '#39'[ 11.5]'#39', '
      '   case when SIZ='#39' 12.0'#39' then Qty end as '#39'[ 12.0]'#39', '
      '   case when SIZ='#39' 12.5'#39' then Qty end as '#39'[ 12.5]'#39', '
      '   case when SIZ='#39' 13.0'#39' then Qty end as '#39'[ 13.0]'#39', '
      '   case when SIZ='#39' 13.5'#39' then Qty end as '#39'[ 13.5]'#39', '
      '   case when SIZ='#39'01.0'#39' then Qty end as '#39'[01.0]'#39', '
      '   case when SIZ='#39'01.5'#39' then Qty end as '#39'[01.5]'#39', '
      '   case when SIZ='#39'02.0'#39' then Qty end as '#39'[02.0]'#39', '
      '   case when SIZ='#39'02.5'#39' then Qty end as '#39'[02.5]'#39', '
      '   case when SIZ='#39'03.0'#39' then Qty end as '#39'[03.0]'#39', '
      '   case when SIZ='#39'03.5'#39' then Qty end as '#39'[03.5]'#39', '
      '   case when SIZ='#39'04.0'#39' then Qty end as '#39'[04.0]'#39', '
      '   case when SIZ='#39'04.5'#39' then Qty end as '#39'[04.5]'#39', '
      '   case when SIZ='#39'05.0'#39' then Qty end as '#39'[05.0]'#39', '
      '   case when SIZ='#39'05.5'#39' then Qty end as '#39'[05.5]'#39', '
      '   case when SIZ='#39'06.0'#39' then Qty end as '#39'[06.0]'#39', '
      '   case when SIZ='#39'06.5'#39' then Qty end as '#39'[06.5]'#39', '
      '   case when SIZ='#39'07.0'#39' then Qty end as '#39'[07.0]'#39', '
      '   case when SIZ='#39'07.5'#39' then Qty end as '#39'[07.5]'#39', '
      '   case when SIZ='#39'08.0'#39' then Qty end as '#39'[08.0]'#39', '
      '   case when SIZ='#39'08.5'#39' then Qty end as '#39'[08.5]'#39', '
      '   case when SIZ='#39'09.0'#39' then Qty end as '#39'[09.0]'#39', '
      '   case when SIZ='#39'09.5'#39' then Qty end as '#39'[09.5]'#39', '
      '   case when SIZ='#39'10.0'#39' then Qty end as '#39'[10.0]'#39', '
      '   case when SIZ='#39'10.5'#39' then Qty end as '#39'[10.5]'#39', '
      '   case when SIZ='#39'11.0'#39' then Qty end as '#39'[11.0]'#39', '
      '   case when SIZ='#39'11.5'#39' then Qty end as '#39'[11.5]'#39', '
      '   case when SIZ='#39'12.0'#39' then Qty end as '#39'[12.0]'#39', '
      '   case when SIZ='#39'12.5'#39' then Qty end as '#39'[12.5]'#39', '
      '   case when SIZ='#39'13.0'#39' then Qty end as '#39'[13.0]'#39', '
      '   case when SIZ='#39'13.5'#39' then Qty end as '#39'[13.5]'#39', '
      '   case when SIZ='#39'14.0'#39' then Qty end as '#39'[14.0]'#39', '
      '   case when SIZ='#39'15.0'#39' then Qty end as '#39'[15.0]'#39', '
      '   case when SIZ='#39'16.0'#39' then Qty end as '#39'[16.0]'#39', '
      '   case when SIZ='#39'17.0'#39' then Qty end as '#39'[17.0]'#39', '
      '   case when SIZ='#39'18.0'#39' then Qty end as '#39'[18.0]'#39', '
      'CLZL.CQDH '
      'from #CLZLKC_Last  '
      'left join CLZL on CLZL.cldh=#CLZLKC_Last.CLBH'
      '')
    Left = 379
    Top = 191
  end
end
