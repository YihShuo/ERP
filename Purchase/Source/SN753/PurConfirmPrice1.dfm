object PurConfirmPrice: TPurConfirmPrice
  Left = 317
  Top = 104
  Width = 1460
  Height = 766
  Caption = 'PurConfirmPrice'
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
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 0
    Width = 1913
    Height = 193
    Align = alTop
    DataSource = DS3
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
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    VTitleMargin = 0
    Columns = <
      item
        EditButtons = <>
        FieldName = 'RKNO'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 86
      end
      item
        EditButtons = <>
        FieldName = 'ZSBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'ID'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Supplier'
        Title.TitleButton = True
        Width = 110
      end
      item
        EditButtons = <>
        FieldName = 'ZSNO'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Pur NO'
        Title.TitleButton = True
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'User Date'
        Title.TitleButton = True
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'User'
        Title.TitleButton = True
        Width = 48
      end
      item
        EditButtons = <>
        FieldName = 'CFMDATE'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'CFM Date'
        Title.TitleButton = True
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'CFMID'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'CFM ID'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'W.H'
        Title.TitleButton = True
        Width = 45
      end
      item
        Color = 11927551
        EditButtons = <>
        FieldName = 'DOCNO'
        Footers = <>
        Title.TitleButton = True
        Width = 110
      end
      item
        EditButtons = <>
        FieldName = 'MZSDH'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'ID'
        Title.TitleButton = True
      end
      item
        EditButtons = <>
        FieldName = 'MZSYWJC'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Payment Agent'
        Title.TitleButton = True
        Width = 99
      end
      item
        EditButtons = <>
        FieldName = 'PurConfirm'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Confirm'
        Width = 47
      end
      item
        Color = 11927551
        EditButtons = <>
        FieldName = 'Payment'
        Footers = <>
        PickList.Strings = (
          ''
          'Polo')
        Width = 100
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 193
    Width = 1913
    Height = 38
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 94
      Top = 11
      Width = 11
      Height = 16
      Caption = '~'
    end
    object Label2: TLabel
      Left = 196
      Top = 11
      Width = 43
      Height = 16
      Caption = 'RKNO'
    end
    object Label3: TLabel
      Left = 348
      Top = 11
      Width = 37
      Height = 16
      Caption = 'Supp'
    end
    object Button1: TButton
      Left = 586
      Top = 5
      Width = 57
      Height = 29
      Caption = 'Search '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
    object ConfrimBtn: TButton
      Left = 647
      Top = 5
      Width = 79
      Height = 29
      Caption = 'Confirm'
      TabOrder = 3
      OnClick = ConfrimBtnClick
    end
    object DTP1: TDateTimePicker
      Left = 5
      Top = 7
      Width = 88
      Height = 24
      Date = 39284.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677295636570000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DTP2: TDateTimePicker
      Left = 105
      Top = 7
      Width = 88
      Height = 24
      Date = 39284.677664201390000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677664201390000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Edit1: TEdit
      Left = 238
      Top = 7
      Width = 100
      Height = 24
      TabOrder = 6
    end
    object Edit2: TEdit
      Left = 385
      Top = 7
      Width = 92
      Height = 24
      TabOrder = 7
    end
    object Edit_Password: TEdit
      Left = 903
      Top = 8
      Width = 74
      Height = 24
      PasswordChar = '*'
      TabOrder = 8
      Visible = False
    end
    object Chk_Copy: TCheckBox
      Left = 988
      Top = 9
      Width = 141
      Height = 17
      Caption = 'Copy ERP Price'
      TabOrder = 9
    end
    object RadioGroup1: TRadioGroup
      Left = 757
      Top = 1
      Width = 134
      Height = 32
      Columns = 4
      ItemIndex = 0
      Items.Strings = (
        '1'
        '2'
        '3'
        '4')
      TabOrder = 0
      Visible = False
    end
    object RadixCK: TCheckBox
      Left = 738
      Top = 13
      Width = 16
      Height = 17
      TabOrder = 10
      Visible = False
    end
    object Chk_Mine: TCheckBox
      Left = 482
      Top = 3
      Width = 53
      Height = 17
      Caption = 'Mine'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object Chk_UnConfirm: TCheckBox
      Left = 482
      Top = 18
      Width = 93
      Height = 17
      Caption = 'UnConfirm'
      TabOrder = 11
    end
  end
  object DBGrid_Prod: TDBGridEh
    Left = 0
    Top = 231
    Width = 1913
    Height = 503
    Align = alClient
    DataSource = DS4
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = 16371647
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
    ParentFont = False
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    OnColExit = DBGrid_ProdColExit
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <
          item
            FieldName = 'CLBH'
            ValueType = fvtCount
          end>
        ReadOnly = True
        Title.Caption = 'Mat ID'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'PaQty'
        Footers = <
          item
            FieldName = 'PaQty'
            ValueType = fvtSum
          end>
        ReadOnly = True
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        ReadOnly = True
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <
          item
            FieldName = 'USPrice'
            ValueType = fvtAvg
          end>
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'USACC'
        Footers = <
          item
            FieldName = 'USACC'
            ValueType = fvtSum
          end>
        Width = 55
      end
      item
        ButtonStyle = cbsEllipsis
        EditButtons = <>
        FieldName = 'CWHL'
        Footers = <>
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <
          item
            FieldName = 'VNPrice'
            ValueType = fvtAvg
          end>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'VNACC'
        Footers = <
          item
            FieldName = 'VNACC'
            ValueType = fvtSum
          end>
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Material Name'
        Title.TitleButton = True
        Width = 297
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Unit'
        Width = 43
      end
      item
        EditButtons = <>
        FieldName = 'RKSB'
        Footers = <>
        ReadOnly = True
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'CGBH'
        Footers = <>
        ReadOnly = True
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'DOCNO'
        Footers = <>
        ReadOnly = True
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'VNPriceCT'
        Footers = <>
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'CARTON_'
        Footers = <>
        ReadOnly = True
      end
      item
        EditButtons = <>
        FieldName = 'LENGTH'
        Footers = <>
        ReadOnly = True
      end
      item
        EditButtons = <>
        FieldName = 'WIDTH'
        Footers = <>
        ReadOnly = True
      end
      item
        EditButtons = <>
        FieldName = 'HEIGHT'
        Footers = <>
        ReadOnly = True
      end
      item
        EditButtons = <>
        FieldName = 'MEMO'
        Footers = <>
        Width = 243
      end>
  end
  object DBGridEh_RD: TDBGridEh
    Left = 0
    Top = 734
    Width = 1913
    Height = 168
    Align = alBottom
    DataSource = DS4
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = 16371647
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
    ParentFont = False
    SumList.Active = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Visible = False
    VTitleMargin = 0
    OnColExit = DBGrid_ProdColExit
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <
          item
            FieldName = 'CLBH'
            ValueType = fvtCount
          end>
        ReadOnly = True
        Title.Caption = 'Mat ID'
        Title.TitleButton = True
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        ReadOnly = True
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Unit'
        Title.TitleButton = True
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'CWHL'
        Footers = <>
        Title.Caption = 'Rate'
        Title.TitleButton = True
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <
          item
            FieldName = 'USPrice'
            ValueType = fvtAvg
          end>
        Title.Caption = 'USD|Price'
        Title.TitleButton = True
        Width = 53
      end
      item
        Color = clSilver
        EditButtons = <>
        FieldName = 'ERP_USPrice_'
        Footers = <>
        Title.Caption = 'USD|ERP'
        Title.TitleButton = True
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'USACC'
        Footers = <
          item
            FieldName = 'USACC'
            ValueType = fvtSum
          end>
        Title.Caption = 'USD|Amount'
        Title.TitleButton = True
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <
          item
            FieldName = 'VNPrice'
            ValueType = fvtAvg
          end>
        Title.Caption = 'VND|Price'
        Title.TitleButton = True
        Width = 60
      end
      item
        Color = clSilver
        DisplayFormat = '#####0.#0'
        EditButtons = <>
        FieldName = 'ERP_VNPrice_'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'VND|ERP'
        Title.TitleButton = True
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'VNACC'
        Footers = <
          item
            FieldName = 'VNACC'
            ValueType = fvtSum
          end>
        Title.Caption = 'VND|Amount'
        Title.TitleButton = True
        Width = 59
      end
      item
        Color = clBlack
        EditButtons = <>
        Footers = <>
        Width = 3
      end
      item
        EditButtons = <>
        FieldName = 'HandCarry_USPrice'
        Footers = <>
        Title.Caption = 'Hand Carry|US Price'
      end
      item
        EditButtons = <>
        FieldName = 'HandCarry_USACC'
        Footers = <>
        Title.Caption = 'Hand Carry|Amount'
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Material Name'
        Title.TitleButton = True
        Width = 297
      end
      item
        EditButtons = <>
        FieldName = 'RKSB'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'TP'
        Title.TitleButton = True
        Width = 25
      end
      item
        Color = clMoneyGreen
        EditButtons = <>
        FieldName = 'Season'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Sea.'
        Title.TitleButton = True
        Width = 34
      end
      item
        Color = clMoneyGreen
        EditButtons = <>
        FieldName = 'Purpose'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Pur.'
        Title.TitleButton = True
        Width = 30
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'FreeQty_'
        Footers = <>
        Title.Caption = 'ACT_FreeQty'
        Width = 86
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'Charge_'
        Footers = <>
        Title.Caption = 'ACT_Charge'
        Width = 86
      end
      item
        Color = clMoneyGreen
        EditButtons = <>
        FieldName = 'FreeQty1'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Free Qty'
        Title.TitleButton = True
        Visible = False
        Width = 32
      end
      item
        Color = clMoneyGreen
        EditButtons = <>
        FieldName = 'Charge1'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Charge % '
        Title.TitleButton = True
        Visible = False
        Width = 46
      end
      item
        Color = clMoneyGreen
        EditButtons = <>
        FieldName = 'FreeQty_2'
        Footers = <>
        Title.Caption = 'Free Qty2'
        Width = 43
      end
      item
        Color = clMoneyGreen
        EditButtons = <>
        FieldName = 'Charge_2'
        Footers = <>
        Title.Caption = 'Charge2 %'
      end
      item
        Color = clMoneyGreen
        EditButtons = <>
        FieldName = 'Q_USPrice_'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Quotation|USD'
        Title.TitleButton = True
        Width = 49
      end
      item
        Color = clMoneyGreen
        EditButtons = <>
        FieldName = 'Q_VNPrice_'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Quotation|VND'
        Title.TitleButton = True
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'MEMO'
        Footers = <>
        Title.TitleButton = True
        Width = 152
      end
      item
        EditButtons = <>
        FieldName = 'CGBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Pur NO'
        Title.TitleButton = True
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'DOCNO'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'PaQty'
        Footers = <
          item
            FieldName = 'PaQty'
            ValueType = fvtSum
          end>
        ReadOnly = True
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'CGDATE'
        Footers = <>
        Title.Caption = 'Pur Date'
        Title.TitleButton = True
        Width = 70
      end>
  end
  object Panel2: TPanel
    Left = 1608
    Top = 231
    Width = 305
    Height = 671
    Caption = 'Panel2'
    TabOrder = 4
    object Memo1: TMemo
      Left = 1
      Top = 1
      Width = 303
      Height = 669
      Align = alClient
      Color = clMenuBar
      Font.Charset = ANSI_CHARSET
      Font.Color = 14822282
      Font.Height = -16
      Font.Name = #24494#36575#27491#40657#39636
      Font.Style = []
      Lines.Strings = (
        '-------------------------------------'
        #31243#24335#20027#35201#21151#33021#35498#26126
        ''
        #20027#35201#29992#26044#25505#36092#30906#35469#20729#26684#65292#20808#20837#24235#26448#26009
        #30906#35469#25976#37327#26368#24460#20877#30001#25505#36092#30906#35469#37329#38989
        #36039#26009#20358#28304' Warehouse N211'#26448#26009#20837#24235
        ''
        '-------------------------------------'
        #36039#26009#31721#36984#25805#20316#35498#26126
        ''
        'RkNo: '#20837#24235#21934#34399
        'Supp: '#20379#25033#21830
        'Mine: '#33258#24049
        'Un Confirm: '#28961#30906#35469
        ''
        '-------------------------------------'
        #37325#40670#27396#20301#35498#26126
        ''
        'Supplier: '#20379#25033#21830
        'PurNo: '#25505#36092#21934#34399
        'CFMID: '#30906#35469#20154#21729
        'WH: '#20489#24235#32232#34399
        'DOCNO: '#36914#21475#35330#36092#32232#34399
        'MatID: '#26448#26009#32232#34399
        'PaQty: '#25505#36092#37329#38989
        'QTY: '#32317#37329#38989
        'USPrice: '#32654#37329#20184#27454#21934#20729
        'USACC : '#32654#37329#37329#38989
        'CWHL: '#21295#29575
        'VNPrice: '#36234#30462#20184#27454#21934#20729
        'Material Name: '#26448#26009#21517#31281
        'Unit: '#39006#22411
        'RKSB: '#20837#24235#20998#39006
        'CGBH: '#25505#36092#32232#34399
        'CATRON: '#22806#31665
        'LENGTH: '#38263
        'WIDTH: '#23532
        'HEIGHT: '#39640
        'MeMo: '#35498#26126
        ''
        '-------------------------------------')
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object EnMas: TQuery
    CachedUpdates = True
    OnNewRecord = EnMasNewRecord
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'select KCRK.*,ZSZL.ZSYWJC,ZSZL_DEV.MZSDH , (SELECT A.ZSYWJC FROM' +
        ' ZSZL A WHERE A.ZSDH=ZSZL_DEV.MZSDH) AS MZSYWJC,PurConfirm,CGZL.' +
        'ZSBH as PurZSBH'
      'from KCRK'
      'left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH '
      'left join ZSZL_DEV on ZSZL.ZSDH=ZSZL_DEV.ZSDH '
      'left join KCCK on KCCK.CKBH=KCRK.CKBH '
      'Left join CGZL on CGZL.CGNO=KCRK.ZSNO'
      'where  '
      ' KCRK.CKBH<>'#39'PT'#39' and KCRK.CFMID='#39'NO'#39'  '
      ' and ISNULL(KCRK.PurConfirm,'#39#39')<>'#39'Y'#39' '
      
        'and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) be' +
        'tween'#39'2014/11/22'#39
      'and '#39'2014/12/12'#39
      'and (KCRK.GSBH='#39'CDC'#39') '
      'order by KCRK.RKNO')
    UpdateObject = UpMas
    Left = 324
    Top = 132
    object EnMasRKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object EnMasZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object EnMasZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object EnMasZSNO: TStringField
      FieldName = 'ZSNO'
      FixedChar = True
    end
    object EnMasUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object EnMasUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object EnMasCFMID: TStringField
      FieldName = 'CFMID'
      FixedChar = True
      Size = 15
    end
    object EnMasCFMDATE: TDateTimeField
      FieldName = 'CFMDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object EnMasYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object EnMasGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object EnMasCKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object EnMasDOCNO: TStringField
      FieldName = 'DOCNO'
      FixedChar = True
    end
    object EnMasMZSDH: TStringField
      FieldName = 'MZSDH'
      FixedChar = True
      Size = 6
    end
    object EnMasMZSYWJC: TStringField
      FieldName = 'MZSYWJC'
      FixedChar = True
    end
    object EnMasPurConfirm: TStringField
      FieldName = 'PurConfirm'
      FixedChar = True
      Size = 1
    end
    object EnMasPayment: TStringField
      FieldName = 'Payment'
      FixedChar = True
    end
    object EnMasPurZSBH: TStringField
      FieldName = 'PurZSBH'
      FixedChar = True
      Size = 6
    end
  end
  object UpMas: TUpdateSQL
    ModifySQL.Strings = (
      'update KCRK'
      'set'
      '  CFMID = :CFMID,'
      '  CFMDATE = :CFMDATE,'
      '  PurConfirm=:PurConfirm,'
      '  DOCNO=:DOCNO,'
      '  Payment=:Payment'
      'where'
      '  RKNO = :OLD_RKNO')
    InsertSQL.Strings = (
      'insert into KCRK'
      '  (CFMID, CFMDATE)'
      'values'
      '  (:CFMID, :CFMDATE)')
    DeleteSQL.Strings = (
      'delete from KCRK'
      'where'
      '  RKNO = :OLD_RKNO')
    Left = 324
    Top = 164
  end
  object DS3: TDataSource
    DataSet = EnMas
    Left = 324
    Top = 100
  end
  object EnDet: TQuery
    CachedUpdates = True
    AfterOpen = EnDetAfterOpen
    OnCalcFields = EnDetCalcFields
    OnNewRecord = EnDetNewRecord
    DatabaseName = 'DB'
    DataSource = DS3
    RequestLive = True
    SQL.Strings = (
      'select  '
      'KCRKS.RKNO '
      ',KCRKS.CLBH    '
      ',KCRKS.CGBH        '
      ',KCRKS.RKSB '
      ',KCRKS.Qty    '
      ',KCRKS.PaQty   '
      ',KCRKS.USPrice   '
      ',KCRKS.USACC    '
      ',KCRKS.HandCarry_USPrice   '
      ',KCRKS.HandCarry_USACC    '
      ',KCRKS.VNPrice   '
      ',KCRKS.VNACC     '
      ',KCRKS.CWHL     '
      ',KCRKS.CostID    '
      ',KCRKS.USERID     '
      ',KCRKS.USERDATE   '
      ',KCRKS.YN        '
      ',KCRKS.FKZT      '
      ',KCRKS.DOCNO      '
      ',KCRKS.VNPriceCT   '
      ',KCRKS.RKMEMO     '
      ',KCRKS.CNO        '
      ',KCRKS.MEMO       '
      
        ',CLZL.YWPM,CLZL.DWBH,LENGTH,WIDTH,HEIGHT,CGZL.Season,CGZL.Purpos' +
        'e ,CGZL.CGDATE   '
      'from KCRKS       '
      'left join CLZL on CLZL.CLDH=KCRKS.CLBH    '
      'left join YWWX2 on YWWX2.CLBH=KCRKS.CLBH      '
      'left join CGZL on CGZL.CGNO=KCRKS.CGBH      '
      'left join kcrk on kcrk.rkno = kcrks.rkno'
      'where KCRKS.RKNO='#39'20151100056'#39'             '
      'order by KCRKS.CGBH,KCRKS.CLBH'
      '')
    UpdateObject = UPDet
    Left = 468
    Top = 136
    object EnDetRKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object EnDetCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object EnDetYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object EnDetDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object EnDetCGBH: TStringField
      FieldName = 'CGBH'
      FixedChar = True
      Size = 15
    end
    object EnDetRKSB: TStringField
      FieldName = 'RKSB'
      FixedChar = True
      Size = 2
    end
    object EnDetPaQty: TCurrencyField
      FieldName = 'PaQty'
      DisplayFormat = '#,##0.00'
    end
    object EnDetQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object EnDetUSPrice: TCurrencyField
      FieldName = 'USPrice'
      OnChange = EnDetUSPriceChange
      DisplayFormat = '##,#0.0000'
    end
    object EnDetUSACC: TCurrencyField
      FieldName = 'USACC'
      DisplayFormat = '##,#0.00'
    end
    object EnDetVNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object EnDetVNACC: TCurrencyField
      FieldName = 'VNACC'
    end
    object EnDetCostID: TStringField
      FieldName = 'CostID'
      FixedChar = True
      Size = 10
    end
    object EnDetUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object EnDetUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object EnDetYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object EnDetDOCNO: TStringField
      FieldName = 'DOCNO'
      FixedChar = True
    end
    object EnDetCARTON_: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CARTON_'
      Calculated = True
    end
    object EnDetLENGTH: TFloatField
      FieldName = 'LENGTH'
    end
    object EnDetWIDTH: TFloatField
      FieldName = 'WIDTH'
    end
    object EnDetHEIGHT: TFloatField
      FieldName = 'HEIGHT'
    end
    object EnDetVNACC1: TFloatField
      FieldKind = fkCalculated
      FieldName = 'VNACC1'
      Calculated = True
    end
    object EnDetVNPriceCT: TFloatField
      FieldName = 'VNPriceCT'
      OnChange = EnDetVNPriceCTChange
    end
    object EnDetMEMO: TStringField
      FieldName = 'MEMO'
      FixedChar = True
      Size = 200
    end
    object EnDetSeason: TStringField
      FieldName = 'Season'
      FixedChar = True
    end
    object EnDetPurpose: TStringField
      FieldName = 'Purpose'
      FixedChar = True
      Size = 15
    end
    object EnDetFreeQty_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'FreeQty_'
      currency = False
      Calculated = True
    end
    object EnDetCharge_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Charge_'
      DisplayFormat = '##%'
      currency = False
      Calculated = True
    end
    object EnDetQ_USPrice_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Q_USPrice_'
      currency = False
      Calculated = True
    end
    object EnDetQ_VNPrice_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Q_VNPrice_'
      currency = False
      Calculated = True
    end
    object EnDetERP_USPrice_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ERP_USPrice_'
      currency = False
      Calculated = True
    end
    object EnDetERP_VNPrice_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ERP_VNPrice_'
      currency = False
      Calculated = True
    end
    object EnDetCGDATE: TDateTimeField
      FieldName = 'CGDATE'
    end
    object EnDetHandCarry_USPrice: TCurrencyField
      FieldName = 'HandCarry_USPrice'
      OnChange = EnDetHandCarry_USPriceChange
      currency = False
    end
    object EnDetHandCarry_USACC: TCurrencyField
      FieldName = 'HandCarry_USACC'
      currency = False
    end
    object EnDetFreeQty_2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'FreeQty_2'
      Calculated = True
    end
    object EnDetCharge_2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Charge_2'
      DisplayFormat = '##%'
      Calculated = True
    end
    object EnDetFreeQty1: TFloatField
      FieldKind = fkCalculated
      FieldName = 'FreeQty1'
      Calculated = True
    end
    object EnDetCharge1: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Charge1'
      DisplayFormat = '##%'
      Calculated = True
    end
    object EnDetCWHL: TCurrencyField
      FieldName = 'CWHL'
    end
  end
  object UPDet: TUpdateSQL
    ModifySQL.Strings = (
      'update KCRKS'
      'set'
      '  USPrice = :USPrice,'
      '  USACC = :USACC,'
      '  HandCarry_USPrice = :HandCarry_USPrice,'
      '  HandCarry_USACC = :HandCarry_USACC,'
      '  VNPrice = :VNPrice,'
      '  VNACC = :VNACC,'
      '  VNPriceCT = :VNPriceCT,'
      '  cwhl = :cwhl'
      ''
      ''
      ''
      'where'
      '  RKNO = :OLD_RKNO and'
      '  CLBH = :OLD_CLBH and'
      '  CGBH = :OLD_CGBH and'
      '  RKSB = :OLD_RKSB')
    InsertSQL.Strings = (
      'insert into KCRKS'
      '  (USPrice, USACC, VNPrice, VNACC, CWHL)'
      'values'
      '  (:USPrice, :USACC, :VNPrice, :VNACC, :CWHL)')
    DeleteSQL.Strings = (
      'delete from KCRKS'
      'where'
      '  RKNO = :OLD_RKNO and'
      '  CLBH = :OLD_CLBH and'
      '  CGBH = :OLD_CGBH and'
      '  RKSB = :OLD_RKSB')
    Left = 468
    Top = 165
  end
  object DS4: TDataSource
    DataSet = EnDet
    Left = 468
    Top = 108
  end
  object PopupMenu1: TPopupMenu
    Left = 152
    Top = 96
    object EXCEL1: TMenuItem
      Caption = 'EXCEL'
      OnClick = EXCEL1Click
    end
  end
  object DS4Sum: TDataSource
    Left = 612
    Top = 132
  end
  object Qry_zszlSamplePayment: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select  CR1_FreeQty as FreeQty1, CR1_FreeQty as Charge1,CR1_Free' +
        'Qty2 as FreeQty2,CR1_Charge2 as Charge2'
      
        '          ,convert(money,0) as  FreeQty,  convert(money,0) as Ch' +
        'arge    ,  convert(money,0) as Charge_        '
      'from zszlSamplePayment'
      'where 1=2'
      '')
    Left = 664
    Top = 136
    object Qry_zszlSamplePaymentFreeQty: TCurrencyField
      FieldName = 'FreeQty'
      Origin = 'DB.zszlSamplePayment.CR1_FreeQty'
    end
    object Qry_zszlSamplePaymentCharge: TCurrencyField
      FieldName = 'Charge'
      Origin = 'DB.zszlSamplePayment.CR1_FreeQty'
    end
    object Qry_zszlSamplePaymentFreeQty2: TCurrencyField
      FieldName = 'FreeQty2'
      Origin = 'DB.zszlSamplePayment.CR1_FreeQty2'
    end
    object Qry_zszlSamplePaymentCharge2: TCurrencyField
      FieldName = 'Charge2'
      Origin = 'DB.zszlSamplePayment.CR1_Charge2'
    end
    object Qry_zszlSamplePaymentFreeQty1: TCurrencyField
      FieldName = 'FreeQty1'
    end
    object Qry_zszlSamplePaymentCharge1: TCurrencyField
      FieldName = 'Charge1'
    end
    object Qry_zszlSamplePaymentCharge_: TCurrencyField
      FieldName = 'Charge_'
    end
  end
  object Qry_MaterialPrice: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select  SamplePrice,SamplePriceVN'
      'from MaterialMOQ'
      'where 1=2'
      '')
    Left = 704
    Top = 136
    object Qry_MaterialPriceSamplePrice: TCurrencyField
      FieldName = 'SamplePrice'
      Origin = 'DB.MaterialMOQ.SamplePrice'
    end
    object Qry_MaterialPriceSamplePriceVN: TCurrencyField
      FieldName = 'SamplePriceVN'
      Origin = 'DB.MaterialMOQ.SamplePriceVN'
    end
  end
  object Qry_SamplePayment_Unit: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select  CR1_FreeQty as FreeQty, CR1_FreeQty as Charge'
      'from zszlSamplePayment'
      'where 1=2'
      '')
    Left = 744
    Top = 136
    object CurrencyField5: TCurrencyField
      FieldName = 'FreeQty'
      Origin = 'DB.zszlSamplePayment.CR1_FreeQty'
    end
    object CurrencyField6: TCurrencyField
      FieldName = 'Charge'
      Origin = 'DB.zszlSamplePayment.CR1_FreeQty'
    end
  end
end
