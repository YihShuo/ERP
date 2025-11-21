object ZlQuery: TZlQuery
  Left = 550
  Top = 232
  Width = 1073
  Height = 515
  Caption = 'ZlQuery'
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
  object Label9: TLabel
    Left = 20
    Top = 64
    Width = 69
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = #38928#35336#20132#26399':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 200
    Top = 64
    Width = 20
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'To:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1057
    Height = 129
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 92
      Width = 121
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = #29289#26009#20195#34399'(Material No):'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 272
      Top = 92
      Width = 137
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = #29289#26009#21517#31281'(Material Name):'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 272
      Top = 40
      Width = 20
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'To:'
    end
    object Label7: TLabel
      Left = 2
      Top = 12
      Width = 61
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'BUYNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 152
      Top = 12
      Width = 113
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = #35330#21934#32232#34399'(Order No):'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 344
      Top = 12
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SKU#:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 408
      Top = 40
      Width = 113
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = #20986#36008#29376#27841'(Shipping?):'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 272
      Top = 64
      Width = 20
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'To:'
    end
    object Label13: TLabel
      Left = 680
      Top = 38
      Width = 113
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = #35330#36092#29376#27841'(Purchase?):'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 552
      Top = 12
      Width = 119
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = #24288#21830#32232#34399'(Vendor No):'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 784
      Top = 12
      Width = 137
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = #24288#21830#31777#31281'(Vendor Name):'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 416
      Top = 63
      Width = 105
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = #35330#21934#29376#27841'(Order?):'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 792
      Top = 88
      Width = 57
      Height = 30
      Caption = 'Query'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 416
      Top = 88
      Width = 113
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object EDIT1: TEdit
      Left = 144
      Top = 88
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edit3: TEdit
      Left = 528
      Top = 88
      Width = 113
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 641
      Top = 88
      Width = 112
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Button2: TButton
      Left = 860
      Top = 88
      Width = 57
      Height = 30
      Caption = 'EXCEL'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = Button2Click
    end
    object DTP1: TDateTimePicker
      Left = 168
      Top = 36
      Width = 97
      Height = 21
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object DTP2: TDateTimePicker
      Left = 304
      Top = 36
      Width = 97
      Height = 21
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object CheckBox1: TCheckBox
      Left = 16
      Top = 38
      Width = 147
      Height = 17
      Caption = #38928#35336#20132#26399'(Delivery date):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object BuyNoEdit: TEdit
      Left = 64
      Top = 8
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 9
    end
    object DDBHEdit: TEdit
      Left = 272
      Top = 8
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 10
    end
    object SKU: TEdit
      Left = 424
      Top = 8
      Width = 129
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
    end
    object chuhuo: TComboBox
      Left = 527
      Top = 35
      Width = 130
      Height = 21
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ItemHeight = 13
      ItemIndex = 0
      ParentFont = False
      TabOrder = 12
      Items.Strings = (
        ''
        #24050#20986#36008'(Shipping)'
        #26410#20986#36008'(not Shipping)')
    end
    object dinggou: TComboBox
      Left = 799
      Top = 35
      Width = 130
      Height = 21
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ItemHeight = 13
      ItemIndex = 0
      ParentFont = False
      TabOrder = 13
      Items.Strings = (
        ''
        #26410#35330#36092'(not Purchase)')
    end
    object quxiao: TComboBox
      Left = 527
      Top = 61
      Width = 146
      Height = 21
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ItemHeight = 13
      ItemIndex = 0
      ParentFont = False
      TabOrder = 14
      Items.Strings = (
        ''
        #21462#28040#35330#21934'(Cancel Order)'
        #26410#21462#28040#35330#21934'(not Cancel) ')
    end
    object NotInCK: TCheckBox
      Left = 1048
      Top = 11
      Width = 145
      Height = 15
      Caption = #19981#21253#21547'BX,BB,BZ '#35330#21934
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 15
      Visible = False
    end
    object Edit7: TEdit
      Left = 922
      Top = 8
      Width = 113
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 16
    end
    object Edit5: TEdit
      Left = 671
      Top = 8
      Width = 113
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 17
    end
    object CheckBox3: TCheckBox
      Left = 696
      Top = 63
      Width = 273
      Height = 15
      Caption = #19981#21253#21547'J,W'#38283#38957#29289#26009'(Not incloud J,W Material)'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 18
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 129
    Width = 1057
    Height = 347
    Align = alClient
    DataSource = DS1
    EvenRowColor = cl3DLight
    FixedColor = clMenuBar
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
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind]
    ParentFont = False
    SumList.Active = True
    SumList.VirtualRecords = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.TitleButton = True
        Visible = False
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Footers = <>
        Title.Caption = #35330#21934#32232#34399'|Order No'
        Title.TitleButton = True
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'PO#'
        Footers = <>
        Title.TitleButton = True
        Width = 86
      end
      item
        EditButtons = <>
        FieldName = 'BUY'#21029
        Footers = <>
        Title.Caption = 'BUY'#21029'|Buy No'
        Title.TitleButton = True
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footers = <>
        Title.Caption = #35330#21934#38617#25976'|Pairs'
        Title.TitleButton = True
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'SKU#'
        Footers = <>
        Title.TitleButton = True
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = 'GENDER'
        Footers = <>
        Title.Caption = #24615#21029'|Gender'
        Title.TitleButton = True
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'Dest'
        Footers = <>
        Title.Caption = #37559#21806#22320'|Country'
        Title.TitleButton = True
        Width = 81
      end
      item
        EditButtons = <>
        FieldName = 'DDRQ'
        Footers = <>
        Title.Caption = #25509#21934#26085#26399'|Order No'
        Title.TitleButton = True
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'ShipDate'
        Footers = <>
        Title.Caption = #38928#35336#20132#26399'|Delivery Date'
        Title.TitleButton = True
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'xh'
        Footers = <>
        Title.Caption = #38917#27425'|Item'
        Title.TitleButton = True
        Width = 32
      end
      item
        EditButtons = <>
        FieldName = 'BWBH'
        Footers = <>
        Title.Caption = #37096#20301#32232#34399'|Part'
        Title.TitleButton = True
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'BWSM'
        Footers = <>
        Title.Caption = #37096#20301#21517#31281'|Part Name'
        Title.TitleButton = True
        Width = 201
      end
      item
        EditButtons = <>
        FieldName = 'FLEX_CODE'
        Footers = <>
        Title.TitleButton = True
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = #26448#26009#32232#34399'|Material No'
        Title.TitleButton = True
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'zwpm'
        Footers = <>
        Title.Caption = #26448#26009#20013#25991'|Material Name(C)'
        Title.TitleButton = True
        Width = 157
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Title.Caption = #26448#26009#33521#25991'|Material Name(E)'
        Width = 146
      end
      item
        EditButtons = <>
        FieldName = 'dwbh'
        Footers = <>
        Title.Caption = #21934#20301#33521#25991'|Unit(E)'
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'dwzwsm'
        Footers = <>
        Title.Caption = #21934#20301#20013#25991'|Unit(C)'
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'ZMLB'
        Footers = <>
        Title.Caption = #21152#24037#27597#26448'|Process Material'
        Title.TitleButton = True
        Width = 110
      end
      item
        EditButtons = <>
        FieldName = 'size'
        Footers = <>
        Title.TitleButton = True
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #29694#38656#27714#37327'|Demand Qty'
        Title.TitleButton = True
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #29992#37327'|Usage'
        Title.TitleButton = True
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'PurQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #25505#36092#25976#37327'|Purchase Qty'
        Title.TitleButton = True
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'RKQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #25910#36008#25976#37327'|Receipt Qty'
        Title.TitleButton = True
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'WriteoffQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #27798#37559#25976#37327'|Pre order'
        Title.TitleButton = True
      end
      item
        EditButtons = <>
        FieldName = 'RikuQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #21033#24235#25976#37327'|Use Stock'
        Title.TitleButton = True
        Width = 71
      end
      item
        EditButtons = <>
        FieldName = 'LLQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #30332#26009#25976#37327'|Picking Qty'
        Title.TitleButton = True
      end
      item
        EditButtons = <>
        FieldName = 'FeedingQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #35036#26009#25976#37327'|Additional Qty'
        Title.TitleButton = True
        Width = 91
      end
      item
        EditButtons = <>
        FieldName = 'CSBH'
        Footers = <>
        Title.Caption = #24288#21830#32232#34399'|Vendor No'
        Title.TitleButton = True
        Width = 71
      end
      item
        EditButtons = <>
        FieldName = 'zsjc'
        Footers = <>
        Title.Caption = #24288#21830#21517#31281'|Vendor Name'
        Title.TitleButton = True
        Width = 129
      end>
  end
  object CheckBox2: TCheckBox
    Left = 16
    Top = 64
    Width = 145
    Height = 17
    Caption = #25509#21934#26085#26399'(Order date):'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object DTP3: TDateTimePicker
    Left = 168
    Top = 62
    Width = 97
    Height = 21
    Date = 39255.000000000000000000
    Format = 'yyyy/MM/dd'
    Time = 39255.000000000000000000
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object DTP4: TDateTimePicker
    Left = 304
    Top = 62
    Width = 97
    Height = 21
    Date = 39255.000000000000000000
    Format = 'yyyy/MM/dd'
    Time = 39255.000000000000000000
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        '/*SELECT ddzl.GSBH as '#24288#21029',ZLZLS2.ZLBH as '#35330#21934#32232#34399', DDZL.KHPO AS PO#, ' +
        'DDZL.BUYNO AS BUY'#21029', DDZL.Pairs AS  '#35330#21934#38617#25976', xxzl.ARTICLE AS SKU#, x' +
        'xzl.GENDER as '#24615#21029',LBZLS.zwsm AS '#37559#21806#22320', DDZL.DDRQ AS '#25509#21934#26085#26399' , DDZL.Shi' +
        'pDate as '#38928#35336#20132#26399' ,ZLZLS2.xh as '#38917#27425', ZLZLS2.BWBH as '#37096#20301#32232#34399', bwzl.zwsm a' +
        's '#37096#20301#21517#31281','
      
        'CLZL_FLEX.cldhflex as FLEX_CODE,ZLZLS2.CSBH AS '#24288#21830#32232#34399',zszl.zsjc AS' +
        ' '#24288#21830#21517#31281',(ZLZLS2.CLSL - case ZLZLS2.ZMLB when '#39'Y'#39' then ISNULL(JGZLS' +
        'S.Qty,0)  else ISNULL(CGZLSS.Qty,0) '#9' end - ISNULL(CGYGUSES.QTY,' +
        '0)  - ISNULL(CGKCUSES.QTY,0) ) as '#29694#38656#27714#37327','
      
        'ZLZLS2.CLBH as '#26448#26009#32232#34399',clzl.zwpm as '#26448#26009#20013#25991',clzl.ywpm as '#26448#26009#33521#25991',clzl.dwb' +
        'h as '#21934#20301#33521#25991',clzl.dwzwsm as '#21934#20301#20013#25991','
      'ZLZLS2.ZMLB as '#21152#24037#27597#26448',ZLZLS2.SIZE as size, ZLZLS2.CLSL as '#29992#37327','
      'case ZLZLS2.ZMLB'
      '     when '#39'Y'#39' then ISNULL(JGZLSS.Qty,0)'
      #9' else ISNULL(CGZLSS.Qty,0)'
      #9' end'
      ' as '#25505#36092#25976#37327','
      ' case ZLZLS2.ZMLB'
      '     when '#39'Y'#39' then ISNULL(JGZLSS.Qty2,0)'
      #9' else ISNULL(KCRKSs.qty,0)'
      #9' end'
      ' as '#25910#36008#25976#37327','
      'ISNULL(CGYGUSES.QTY,0) as '#27798#37559#25976#37327','
      'ISNULL(CGKCUSES.QTY,0) as '#21033#24235#25976#37327','
      'ISNULL(KCLLSS.qty,0) AS '#30332#26009#25976#37327' ,'
      'ISNULL(SCBLSS.qty,0) AS '#35036#26009#25976#37327
      '*/'
      
        'SELECT ddzl.GSBH ,ZLZLS2.ZLBH , DDZL.KHPO AS PO#, DDZL.BUYNO , D' +
        'DZL.Pairs , xxzl.ARTICLE AS SKU#, xxzl.GENDER ,LBZLS.zwsm as Des' +
        't, DDZL.DDRQ , DDZL.ShipDate  ,ZLZLS2.xh , ZLZLS2.BWBH , bwzl.zw' +
        'sm as BWSM,'
      
        'CLZL_FLEX.cldhflex as FLEX_CODE,ZLZLS2.CSBH ,zszl.zsjc ,(ZLZLS2.' +
        'CLSL - case ZLZLS2.ZMLB when '#39'Y'#39' then ISNULL(JGZLSS.Qty,0)  else' +
        ' ISNULL(CGZLSS.Qty,0) '#9' end - ISNULL(CGYGUSES.QTY,0)  - ISNULL(C' +
        'GKCUSES.QTY,0) ) as Qty,'
      'ZLZLS2.CLBH ,clzl.zwpm ,clzl.ywpm ,clzl.dwbh ,clzl.dwzwsm ,'
      'ZLZLS2.ZMLB ,ZLZLS2.SIZE as size, ZLZLS2.CLSL ,'
      'case ZLZLS2.ZMLB'
      '     when '#39'Y'#39' then ISNULL(JGZLSS.Qty,0)'
      #9' else ISNULL(CGZLSS.Qty,0)'
      #9' end'
      ' as PurQty,'
      ' case ZLZLS2.ZMLB'
      '     when '#39'Y'#39' then ISNULL(JGZLSS.Qty2,0)'
      #9' else ISNULL(KCRKSs.qty,0)'
      #9' end'
      ' as RKQty,'
      'ISNULL(CGYGUSES.QTY,0) as WriteoffQty,'
      'ISNULL(CGKCUSES.QTY,0) as RikuQty,'
      'ISNULL(KCLLSS.qty,0) AS LLQty ,'
      'ISNULL(SCBLSS.qty,0) AS FeedingQty'
      ''
      'FROM ZLZLS2 '
      
        'LEFT JOIN (select ZLBH,BWBH,CLBH,XXCC,ISNULL(sum(ISNULL(CGZLSS.Q' +
        'ty,0)),0) as qty from CGZLSS group by  ZLBH,BWBH,CLBH,XXCC) CGZL' +
        'SS '
      
        'on CGZLSS.CLBH=zlzls2.CLBH and CGZLSS.ZLBH=zlzls2.ZLBH and CGZLS' +
        'S.XXCC=zlzls2.SIZE and CGZLSS.BWBH=zlzls2.BWBH   --'
      
        'LEFT JOIN (select CGBH,CLBH,BWBH,SIZE,ISNULL(sum(ISNULL(KCRKSs.Q' +
        'ty,0)),0) as qty from KCRKSs group by  CGBH,BWBH,CLBH,SIZE) KCRK' +
        'Ss '
      
        'on KCRKSs.CLBH=zlzls2.CLBH and KCRKSs.CGBH=zlzls2.ZLBH and KCRKS' +
        's.SIZE=zlzls2.SIZE and KCRKSs.BWBH=zlzls2.BWBH '
      
        'LEFT JOIN (select KCLLSS.SCBH,KCLLSS.BWBH,KCLLSS.CLBH,isnull(KCL' +
        'LSS.SIZE,'#39'ZZZZZZ'#39') AS SIZE, ISNULL(sum(ISNULL(KCLLSS.Qty,0)),0) ' +
        'as qty from KCLLSS group by  KCLLSS.SCBH,KCLLSS.BWBH,KCLLSS.CLBH' +
        ',KCLLSS.SIZE) KCLLSS'
      
        'on KCLLSS.CLBH=zlzls2.CLBH and KCLLSS.SCBH=zlzls2.ZLBH and KCLLS' +
        'S.SIZE=zlzls2.SIZE and KCLLSS.BWBH=zlzls2.BWBH '
      
        'LEFT JOIN (select JGZLSS.ZLBH,JGZLSS.BWBH,JGZLSS.CLBH,isnull(JGZ' +
        'LSS.SIZE,'#39'ZZZZZZ'#39') AS SIZE, ISNULL(sum(ISNULL(JGZLSS.Qty,0)),0) ' +
        'as qty,0 as qty2'
      #9#9#9'from JGZLSS'
      #9#9#9'LEFT JOIN JGZL on JGZL.JGNO=JGZLSS.JGNO'
      #9#9#9'where JGZL.CFMID2 ='#39'NO'#39
      #9#9#9'group by JGZLSS.ZLBH,JGZLSS.BWBH,JGZLSS.CLBH,JGZLSS.SIZE '
      #9#9#9'union all'
      
        #9#9#9'select JGZLSS.ZLBH,JGZLSS.BWBH,JGZLSS.CLBH,isnull(JGZLSS.SIZE' +
        ','#39'ZZZZZZ'#39') AS SIZE, ISNULL(sum(ISNULL(JGZLSS.Qty,0)),0) as qty,I' +
        'SNULL(sum(ISNULL(JGZLSS.Qty,0)),0) as qty2'
      #9#9#9'from JGZLSS'
      #9#9#9'LEFT JOIN JGZL on JGZL.JGNO=JGZLSS.JGNO'
      #9#9#9'where JGZL.CFMID2 <> '#39'NO'#39
      
        #9#9#9'group by JGZLSS.ZLBH,JGZLSS.BWBH,JGZLSS.CLBH,JGZLSS.SIZE ) JG' +
        'ZLSS'
      
        'on JGZLSS.CLBH=zlzls2.CLBH and JGZLSS.ZLBH=zlzls2.ZLBH and JGZLS' +
        'S.SIZE=zlzls2.SIZE and JGZLSS.BWBH=zlzls2.BWBH '
      
        'LEFT JOIN (select SCBL.ZLBH,SCBLS.BWBH,SCBLS.CLBH,isnull(SCBLSS.' +
        'SIZE,'#39'ZZZZZZ'#39') AS SIZE, ISNULL(sum(ISNULL(SCBLS.Qty,0)),0) as qt' +
        'y FROM  SCBLS'
      #9#9#9'LEFT JOIN SCBL ON SCBL.BLNO=SCBLS.BLNO'
      
        #9#9#9'LEFT JOIN SCBLSS  ON SCBLS.BLNO=SCBLSS.BLNO AND SCBLS.BWBH=SC' +
        'BLSS.BWBH AND SCBLS.CLBH=SCBLSS.CLBH  '
      
        #9#9#9'group by  SCBL.ZLBH,SCBLS.BWBH,SCBLS.CLBH,SCBLSS.SIZE) SCBLSS' +
        ' '
      
        'on SCBLSS.CLBH=zlzls2.CLBH and SCBLSS.ZLBH=zlzls2.ZLBH and SCBLS' +
        'S.SIZE=zlzls2.SIZE and SCBLSS.BWBH=zlzls2.BWBH '
      ''
      
        'LEFT JOIN (select ZLBH,BWBH,CLBH,SIZE,ISNULL(sum(ISNULL(Qty,0)),' +
        '0) as qty from CGKCUSES  group by ZLBH,BWBH,CLBH,SIZE ) CGKCUSES'
      
        'on CGKCUSES.CLBH=zlzls2.CLBH and CGKCUSES.ZLBH=zlzls2.ZLBH and C' +
        'GKCUSES.SIZE=zlzls2.SIZE and CGKCUSES.BWBH=zlzls2.BWBH '
      ''
      
        'LEFT JOIN (select ZLBH,BWBH,CLBH,SIZE,ISNULL(sum(ISNULL(Qty,0)),' +
        '0) as qty from CGYGUSES  group by ZLBH,BWBH,CLBH,SIZE ) CGYGUSES'
      
        'on CGYGUSES.CLBH=zlzls2.CLBH and CGYGUSES.ZLBH=zlzls2.ZLBH and C' +
        'GYGUSES.SIZE=zlzls2.SIZE and CGYGUSES.BWBH=zlzls2.BWBH '
      'LEFT JOIN DDZL  on zlzls2.ZLBH=DDZL.ZLBH'
      'LEFT JOIN LBZLS on DDZL.DDGB=LBZLS.lbdh'
      'LEFT JOIN bwzl  on ZLZLS2.BWBH=bwzl.bwdh'
      'LEFT JOIN clzl  on ZLZLS2.CLBH=clzl.cldh'
      'LEFT JOIN CLZL_FLEX  on ZLZLS2.CLBH=CLZL_FLEX.cldh'
      'LEFT JOIN zszl  on ZLZLS2.CSBH=zszl.zsdh'
      
        'LEFT JOIN xxzl  on DDZL.XieXing = xxzl.XieXing and DDZL.SheHao=x' +
        'xzl.SheHao and DDZL.ARTICLE=xxzl.ARTICLE'
      'WHERE ZLZLS2.ZLBH like '#39'BY220%'#39
      'AND ddzl.GSBH='#39'B07U'#39
      'and DDZL.BUYNO like '#39'2022%'#39
      'and  LBZLS.lb = '#39'06'#39' '
      'and ZLZLS2.CLBH  like '#39'P900000662%'#39
      'and clzl.zwpm like '#39'%'#39
      'AND xxzl.ARTICLE LIKE '#39'%'#39
      'order by ZLZLS2.ZLBH,ZLZLS2.BWBH,ZLZLS2.xh,ZLZLS2.ZMLB desc')
    Left = 424
    Top = 240
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1BUYNO: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
    object Query1Pairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Query1GENDER: TStringField
      FieldName = 'GENDER'
      FixedChar = True
      Size = 10
    end
    object Query1DDRQ: TDateTimeField
      FieldName = 'DDRQ'
    end
    object Query1ShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object Query1xh: TStringField
      FieldName = 'xh'
      FixedChar = True
      Size = 3
    end
    object Query1BWBH: TStringField
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object Query1CSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object Query1zsjc: TStringField
      FieldName = 'zsjc'
      FixedChar = True
    end
    object Query1Qty: TFloatField
      FieldName = 'Qty'
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object Query1zwpm: TStringField
      FieldName = 'zwpm'
      FixedChar = True
      Size = 200
    end
    object Query1ywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object Query1dwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object Query1dwzwsm: TStringField
      FieldName = 'dwzwsm'
      FixedChar = True
    end
    object Query1ZMLB: TStringField
      FieldName = 'ZMLB'
      FixedChar = True
      Size = 1
    end
    object Query1CLSL: TFloatField
      FieldName = 'CLSL'
    end
    object Query1PurQty: TCurrencyField
      FieldName = 'PurQty'
    end
    object Query1RKQty: TFloatField
      FieldName = 'RKQty'
    end
    object Query1WriteoffQty: TCurrencyField
      FieldName = 'WriteoffQty'
    end
    object Query1RikuQty: TCurrencyField
      FieldName = 'RikuQty'
    end
    object Query1LLQty: TFloatField
      FieldName = 'LLQty'
    end
    object Query1FeedingQty: TCurrencyField
      FieldName = 'FeedingQty'
    end
    object Query1PO: TStringField
      FieldName = 'PO#'
      FixedChar = True
      Size = 30
    end
    object Query1SKU: TStringField
      FieldName = 'SKU#'
      FixedChar = True
    end
    object Query1Dest: TStringField
      FieldName = 'Dest'
      FixedChar = True
      Size = 50
    end
    object Query1BWSM: TStringField
      FieldName = 'BWSM'
      FixedChar = True
      Size = 40
    end
    object Query1FLEX_CODE: TStringField
      FieldName = 'FLEX_CODE'
      FixedChar = True
      Size = 15
    end
    object Query1size: TStringField
      FieldName = 'size'
      FixedChar = True
      Size = 6
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 208
  end
end
