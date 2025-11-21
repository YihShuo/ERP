object ApplyTotalConfirm2: TApplyTotalConfirm2
  Left = 239
  Top = 249
  Width = 1386
  Height = 607
  Caption = 'Apply Total Permit'
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
  object Splitter1: TSplitter
    Left = 0
    Top = 209
    Width = 1370
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object DBGrid3: TDBGridEh
    Left = 0
    Top = 0
    Width = 1370
    Height = 209
    Align = alTop
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
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
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGrid3DblClick
    OnDrawColumnCell = DBGrid3DrawColumnCell
    Columns = <
      item
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
        Title.Caption = #36984#21462'|YN'
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'SGNO'
        Footer.FieldName = 'SGNO'
        Footer.ValueType = fvtCount
        Footers = <>
        ReadOnly = True
        Title.Caption = #30003#36092#21934#34399'|SGNO'
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'DepID'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Lean'#21934#20301'|DepID'
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'LB'
        Footers = <>
        Title.Caption = #39006#22411'|LB'
        Width = 33
      end
      item
        EditButtons = <>
        FieldName = 'Budget_chk'
        Footers = <>
        ReadOnly = True
        Title.Caption = #36039#26412#25903#20986'|Capex'
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'Customer_Account'
        Footers = <>
        ReadOnly = True
        Title.Caption = #23458#25142#25480#27402#25505#36092'|TA'
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'Uniform'
        Footers = <>
        ReadOnly = True
        Title.Caption = #21046#26381#25505#36092'|Uniform'
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Lean'#21934#20301'|DepName'
        Width = 105
      end
      item
        EditButtons = <>
        FieldName = 'SGDate'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30003#36092#26085#26399'|SGDATE'
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'Memo'
        Footers = <>
        PickList.Strings = (
          #27599#26376#36774#20844#23460#35531#36092#26126#32048'DU TINH DAT MUA VAN PHONG  PHAM')
        ReadOnly = True
        Title.Caption = #20633#35387'|Memo'
        Width = 347
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'CFMMemo'
        Footers = <>
        Title.Caption = #23529#26680'|CFMMemo'
        Width = 273
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        ReadOnly = True
        Title.Caption = #20351#29992#32773'|USERID'
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'USERDate'
        Footers = <>
        ReadOnly = True
        Title.Caption = #26085#26399'|USERDATE'
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'CHKID'
        Footers = <>
        Title.Caption = #23529#26680'ID|CHKID'
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'CHKDate'
        Footers = <>
        Title.Caption = #23529#26680#26085#26399'|CHKDate'
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'CFMID'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30906#35469'ID|CFMID'
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30906#35469#26085#26399'|CFMDate'
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'CFMID1'
        Footers = <>
        Title.Caption = #26680#20934'ID|CFMID1'
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate1'
        Footers = <>
        Title.Caption = #26680#20934#26085#26399'|CFMDate1'
        Width = 75
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 212
    Width = 1370
    Height = 356
    Align = alClient
    TabOrder = 1
    object Splitter2: TSplitter
      Left = 1
      Top = 473
      Width = 1368
      Height = 3
      Cursor = crVSplit
      Align = alTop
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 1368
      Height = 88
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 17
        Width = 36
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'From:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 173
        Top = 17
        Width = 20
        Height = 16
        Caption = 'To:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 432
        Top = 16
        Width = 48
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'SGNo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 328
        Top = 16
        Width = 25
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'LB:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object LBName: TLabel
        Left = 350
        Top = 39
        Width = 300
        Height = 20
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
      object Label6: TLabel
        Left = 648
        Top = 56
        Width = 569
        Height = 20
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 72
        Top = 56
        Width = 545
        Height = 20
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Button1: TButton
        Left = 761
        Top = 12
        Width = 72
        Height = 33
        Caption = 'Search '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = Button1Click
      end
      object Button3: TButton
        Left = 833
        Top = 12
        Width = 80
        Height = 33
        Caption = 'Confirm'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = Button3Click
      end
      object DTP1: TDateTimePicker
        Left = 46
        Top = 14
        Width = 120
        Height = 25
        Date = 39255.000000000000000000
        Format = 'yyyy/MM/dd'
        Time = 39255.000000000000000000
        TabOrder = 2
      end
      object DTP2: TDateTimePicker
        Left = 202
        Top = 14
        Width = 120
        Height = 25
        Date = 39255.000000000000000000
        Format = 'yyyy/MM/dd'
        Time = 39255.000000000000000000
        TabOrder = 3
      end
      object Edit1: TEdit
        Left = 483
        Top = 14
        Width = 163
        Height = 29
        AutoSelect = False
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'VNI-Times'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object Button2: TButton
        Left = 995
        Top = 12
        Width = 75
        Height = 33
        Caption = 'Save'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = Button2Click
      end
      object Button4: TButton
        Left = 1069
        Top = 12
        Width = 74
        Height = 33
        Caption = 'Reset'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = Button4Click
      end
      object CheckBox1: TCheckBox
        Left = 650
        Top = 9
        Width = 103
        Height = 17
        Caption = 'Show Confirm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object Button5: TButton
        Left = 913
        Top = 12
        Width = 84
        Height = 33
        Caption = 'Confirm All'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnClick = Button5Click
      end
      object LBCombo: TComboBox
        Left = 358
        Top = 14
        Width = 73
        Height = 24
        ItemHeight = 16
        TabOrder = 9
        OnChange = LBComboChange
        Items.Strings = (
          ''
          '01'
          '02'
          '03'
          '04'
          '09')
      end
      object DTP3: TDateTimePicker
        Left = 1274
        Top = 6
        Width = 102
        Height = 24
        Date = 39255.000000000000000000
        Format = 'yyyy/MM/dd'
        Time = 39255.000000000000000000
        TabOrder = 10
        Visible = False
      end
      object DTP4: TDateTimePicker
        Left = 1274
        Top = 38
        Width = 102
        Height = 24
        Date = 39255.000000000000000000
        Format = 'yyyy/MM/dd'
        Time = 39255.000000000000000000
        TabOrder = 11
        Visible = False
      end
      object CheckBox2: TCheckBox
        Left = 650
        Top = 27
        Width = 103
        Height = 17
        Caption = #24050#36864#21934
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
      end
      object Button6: TButton
        Left = 1165
        Top = 12
        Width = 74
        Height = 33
        Caption = #21462#22238#36864#21934
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #26032#32048#26126#39636
        Font.Style = []
        ParentFont = False
        TabOrder = 13
        OnClick = Button6Click
      end
    end
    object dbgrid4: TDBGridEh
      Left = 1
      Top = 89
      Width = 1368
      Height = 384
      Align = alTop
      DataSource = DS2
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
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
      SumList.Active = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      Columns = <
        item
          EditButtons = <>
          FieldName = 'CLBH'
          Footer.FieldName = 'CLBH'
          Footer.ValueType = fvtCount
          Footers = <>
          ReadOnly = True
          Title.Caption = #26448#26009#32232#34399'|CLBH'
          Width = 85
        end
        item
          EditButtons = <>
          FieldName = 'dwbh'
          Footers = <>
          ReadOnly = True
          Title.Caption = #21934#20301'|DWBH'
          Width = 63
        end
        item
          EditButtons = <>
          FieldName = 'YWPM'
          Footers = <>
          ReadOnly = True
          Title.Caption = #21697#38917#21517#31281'|YWPM'
          Width = 260
        end
        item
          EditButtons = <>
          FieldName = 'ZWPM'
          Footers = <>
          ReadOnly = True
          Title.Caption = #21697#38917#20013#25991'|ZWPM'
          Width = 265
        end
        item
          Color = clYellow
          EditButtons = <>
          FieldName = 'Qty'
          Footer.FieldName = 'Qty'
          Footer.ValueType = fvtSum
          Footers = <>
          ReadOnly = True
          Title.Caption = #25976#37327'|Qty'
          Width = 57
        end
        item
          EditButtons = <>
          FieldName = 'DepQty'
          Footers = <>
          Title.Caption = #24235#23384#25976#37327'|DepQty'
          Width = 58
        end
        item
          EditButtons = <>
          FieldName = 'ZZZQty'
          Footers = <>
          Title.Caption = #24235#23384#25976#37327'|ZZZQty'
          Width = 48
        end
        item
          EditButtons = <>
          FieldName = 'VNPrice'
          Footers = <>
          ReadOnly = True
          Title.Caption = #36234#30462#21934#20729'|VNPrice'
        end
        item
          EditButtons = <>
          FieldName = 'USPrice'
          Footers = <>
          ReadOnly = True
          Title.Caption = #32654#37329#21934#20729'|USPrice'
        end
        item
          EditButtons = <>
          FieldName = 'ACCVN'
          Footer.FieldName = 'ACCVN'
          Footer.ValueType = fvtSum
          Footers = <>
          ReadOnly = True
          Title.Caption = #36234#30462#32317#37329#38989'|ACCVN'
        end
        item
          EditButtons = <>
          FieldName = 'ACCUS'
          Footer.FieldName = 'ACCUS'
          Footer.ValueType = fvtSum
          Footers = <>
          ReadOnly = True
          Title.Caption = #32654#37329#32317#37329#38989'|ACCUS'
        end
        item
          Color = clYellow
          EditButtons = <>
          FieldName = 'YQdate'
          Footers = <>
          ReadOnly = True
          Title.Caption = #20132#26399'|YQDate'
          Width = 65
        end
        item
          EditButtons = <>
          FieldName = 'Memo'
          Footers = <>
          ReadOnly = True
          Title.Caption = #20633#35387'|Memo'
          Width = 103
        end
        item
          EditButtons = <>
          FieldName = 'ZSDH'
          Footers = <>
          ReadOnly = True
          Title.Caption = #24288#21830'|ZSDH'
          Width = 67
        end
        item
          EditButtons = <>
          FieldName = 'zsywjc'
          Footers = <>
          ReadOnly = True
          Title.Caption = #24288#21830#21517#31281'|ZSYWJC'
          Width = 126
        end
        item
          EditButtons = <>
          FieldName = 'USERID'
          Footers = <>
          ReadOnly = True
          Title.Caption = #20351#29992#32773'|USERID'
          Width = 55
        end
        item
          EditButtons = <>
          FieldName = 'USERDate'
          Footers = <>
          ReadOnly = True
          Title.Caption = #20351#29992#32773#26085#26399'|USERDATE'
          Width = 83
        end>
    end
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 476
      Width = 1368
      Height = 328
      Align = alClient
      DataSource = DS3
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -12
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      ParentFont = False
      SumList.Active = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      Visible = False
      Columns = <
        item
          EditButtons = <>
          FieldName = 'ID'
          Footers = <>
          Title.Caption = 'Lean'#21934#20301'|ID'
          Width = 76
        end
        item
          EditButtons = <>
          FieldName = #24180#24230'|YM'
          Footers = <>
          Width = 62
        end
        item
          EditButtons = <>
          FieldName = #23395#21029'|Season'
          Footers = <>
          Width = 50
        end
        item
          EditButtons = <>
          FieldName = #38917#30446'|Items'
          Footers = <>
          Width = 243
        end
        item
          EditButtons = <>
          FieldName = 'Qty'
          Footers = <>
          Title.Caption = #25976#37327'|Qty'
          Width = 61
        end
        item
          EditButtons = <>
          FieldName = 'US_Price'
          Footers = <>
          Title.Caption = #21934#20729'|US_Price'
        end
        item
          EditButtons = <>
          FieldName = 'US_Total'
          Footers = <>
          Title.Caption = #32317#20729'|US_Total'
        end
        item
          EditButtons = <>
          FieldName = 'Need_Month'
          Footers = <>
          Title.Caption = #38656#27714#26376#20221'|Need_Month'
          Width = 82
        end
        item
          EditButtons = <>
          FieldName = 'Need_Season'
          Footers = <>
          Title.Caption = #38656#27714#23395#31680'|Need_Season'
          Width = 86
        end
        item
          EditButtons = <>
          FieldName = 'Memo'
          Footers = <>
          Title.Caption = #20633#35387'|Memo'
          Width = 332
        end>
    end
  end
  object DBMemo1: TDBMemo
    Left = 784
    Top = 24
    Width = 409
    Height = 153
    DataField = 'Memo'
    DataSource = DS1
    Enabled = False
    TabOrder = 2
    Visible = False
  end
  object SGMas: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select SGDH.SGNO, SGDH.GSBH, SGDH.DepID, SGDH.LB, SGDH.Memo, SGD' +
        'H.SGDate, SGDH.USERID, SGDH.USERDate, SGDH.CFMID, SGDH.CFMDate, ' +
        'SGDH.CFMMemo , SGDH.CFMID1, SGDH.CFMDate1, Convert(bit,'#39'0'#39') as Y' +
        'N, '
      
        '       BDepartment.DepMemo as DepName,BDepartment.DepMemo,SGDH.C' +
        'HKID,SGDH.CHKDate,SGDH.flowflag,SGDH.Budget_chk,SGDH.Customer_Ac' +
        'count,SGDH.Uniform'
      'from SGDH '
      'left join BDepartment on BDepartment.ID=SGDH.DepID '
      
        'where SGDH.CFMID<>'#39'NO'#39' and convert(smalldatetime,convert(varchar' +
        ',SGDH.USERDATE,111)) between '
      '      '#39'2022/12/17'#39' '
      '         and '
      '      '#39'2023/01/06'#39' '
      '      and SGDH.CFMID1='#39'NO'#39
      'order by SGNO DESC')
    UpdateObject = UpMas
    Left = 340
    Top = 123
    object SGMasSGNO: TStringField
      FieldName = 'SGNO'
      Origin = 'DB.SGDH.SGNO'
      FixedChar = True
      Size = 11
    end
    object SGMasLB: TStringField
      FieldName = 'LB'
      Origin = 'DB.SGDH.Memo'
      FixedChar = True
      Size = 2
    end
    object SGMasGSBH: TStringField
      FieldName = 'GSBH'
      Origin = 'DB.SGDH.GSBH'
      FixedChar = True
      Size = 4
    end
    object SGMasDepID: TStringField
      FieldName = 'DepID'
      Origin = 'DB.SGDH.DepID'
      FixedChar = True
      Size = 10
    end
    object SGMasSGDate: TDateTimeField
      FieldName = 'SGDate'
      Origin = 'DB.SGDH.SGDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SGMasDepName: TStringField
      FieldName = 'DepName'
      Origin = 'DB.BDepartment.DepName'
      FixedChar = True
      Size = 50
    end
    object SGMasDepMemo: TStringField
      FieldName = 'DepMemo'
      Origin = 'DB.BDepartment.DepMemo'
      FixedChar = True
      Size = 50
    end
    object SGMasMemo: TStringField
      FieldName = 'Memo'
      Origin = 'DB.SGDH.Memo'
      FixedChar = True
      Size = 50
    end
    object SGMasUSERDate: TDateTimeField
      FieldName = 'USERDate'
      Origin = 'DB.SGDH.USERDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SGMasUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.SGDH.USERID'
      FixedChar = True
      Size = 15
    end
    object SGMasCHKID: TStringField
      FieldName = 'CHKID'
      FixedChar = True
      Size = 15
    end
    object SGMasCHKDate: TDateTimeField
      FieldName = 'CHKDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SGMasCFMDate: TDateTimeField
      FieldName = 'CFMDate'
      Origin = 'DB.SGDH.CFMDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SGMasCFMID: TStringField
      FieldName = 'CFMID'
      Origin = 'DB.SGDH.CFMID'
      FixedChar = True
      Size = 15
    end
    object SGMasCFMMemo: TStringField
      FieldName = 'CFMMemo'
      Origin = 'DB.SGDH.CFMDate1'
      FixedChar = True
      Size = 50
    end
    object SGMasCFMDate1: TDateTimeField
      FieldName = 'CFMDate1'
      Origin = 'DB.SGDH.CFMDate1'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SGMasCFMID1: TStringField
      FieldName = 'CFMID1'
      Origin = 'DB.SGDH.CFMID1'
      FixedChar = True
      Size = 15
    end
    object SGMasYN: TBooleanField
      FieldName = 'YN'
    end
    object SGMasflowflag: TStringField
      FieldName = 'flowflag'
      FixedChar = True
      Size = 1
    end
    object SGMasBudget_chk: TBooleanField
      FieldName = 'Budget_chk'
    end
    object SGMasCustomer_Account: TBooleanField
      FieldName = 'Customer_Account'
    end
    object SGMasUniform: TBooleanField
      FieldName = 'Uniform'
    end
  end
  object DS1: TDataSource
    DataSet = SGMas
    Left = 375
    Top = 124
  end
  object UpMas: TUpdateSQL
    ModifySQL.Strings = (
      'update SGDH'
      'Set'
      '  CHKID =:CHKID,'
      '  CFMID =:CFMID,'
      '  CFMMemo =:CFMMemo,'
      '  CFMID1 =:CFMID1,'
      '  CFMDATE1 =:CFMDATE1,'
      '  Flowflag=:Flowflag'
      'where'
      '  SGNO =:OLD_SGNO')
    InsertSQL.Strings = (
      'insert into SGDH'
      
        '  (SGNO, GSBH, DepID, Memo, SGDate ,USERID, USERDATE, CFMID, CFM' +
        'DATE, YN)'
      'values'
      
        '  (:SGNO, :GSBH, :DepID, :Memo, :SGDate, :USERID, :USERDATE, :CF' +
        'MID, :CFMDATE, :YN)')
    DeleteSQL.Strings = (
      'delete from SGDH'
      'where'
      '  SGNO = :OLD_SGNO')
    Left = 340
    Top = 157
  end
  object SGDet: TQuery
    AfterOpen = SGDetAfterOpen
    OnCalcFields = SGDetCalcFields
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'select SGDHS.SGNO,SGDHS.CLBH,SGDHS.SGQty,SGDHS.Qty,SGDHS.USPrice' +
        ',SGDHS.VNPrice,SGDHS.YQdate,SGDHS.Memo,SGDHS.BJNO'
      '       ,SGDHS.USERDate,SGDHS.USERID,SGDHS.YN'
      
        '       ,CLZL.YWPM,CLZL.ZWPM,ZSZL.ZSDH,ZSZL.zsywjc,CLZL.dwbh,LBZL' +
        'S.ZWSM'
      
        #9'     ,IsNull((Select Sum(Qty) from KCCLDAY_BDepartment where De' +
        'pID=SGDH.DepID and SGDHS.CLBH=CLBH),0.0) as DepQty'
      
        #9'     ,IsNull((Select Sum(Qty) from KCCLDAY_BDepartment where De' +
        'pID='#39'ZZZZZZZZZZ'#39' and SGDHS.CLBH=CLBH),0.0) as ZZZQty'
      '       ,SGDHS.YM,SGDHS.Season,SGDHS.Serno'
      'from SGDHS'
      'left join SGDH on SGDH.SGNO=SGDHS.SGNO'
      'left join CLZL on CLZL.CLDH = SGDHS.CLBH'
      'Left join CGBJ on CGBJ.BJNO=SGDHS.BJNO'
      'left join ZSZL on ZSZL.ZSDH = CGBJ.ZSBH'
      'Left join LBZLS on LBZLS.LBDH=CLZL.dwbh and LBZLS.LB='#39'02'#39
      'where SGDHS.SGNO=:SGNO'
      'order by SGDHS.SGNO'
      ''
      '')
    Left = 490
    Top = 126
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'SGNO'
        ParamType = ptUnknown
        Size = 12
      end>
    object SGDetSGNO: TStringField
      FieldName = 'SGNO'
      FixedChar = True
      Size = 11
    end
    object SGDetCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object SGDetYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object SGDetZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object SGDetSGQty: TFloatField
      FieldName = 'SGQty'
    end
    object SGDetQty: TFloatField
      FieldName = 'Qty'
    end
    object SGDetUSPrice: TFloatField
      FieldName = 'USPrice'
    end
    object SGDetVNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object SGDetACCVN: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ACCVN'
      Calculated = True
    end
    object SGDetACCUS: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ACCUS'
      Calculated = True
    end
    object SGDetYQdate: TDateTimeField
      FieldName = 'YQdate'
      DisplayFormat = 'yy/mm/dd'
    end
    object SGDetMemo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 30
    end
    object SGDetBJNO: TStringField
      FieldName = 'BJNO'
      FixedChar = True
      Size = 11
    end
    object SGDetZSDH: TStringField
      FieldName = 'ZSDH'
      FixedChar = True
      Size = 6
    end
    object SGDetzsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object SGDetdwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object SGDetZWSM: TStringField
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 50
    end
    object SGDetDepQty: TCurrencyField
      FieldName = 'DepQty'
      DisplayFormat = '0.00'
    end
    object SGDetZZZQty: TCurrencyField
      FieldName = 'ZZZQty'
      DisplayFormat = '0.00'
    end
    object SGDetUSERDate: TDateTimeField
      FieldName = 'USERDate'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object SGDetUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object SGDetYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object SGDetYM: TStringField
      FieldName = 'YM'
      FixedChar = True
      Size = 50
    end
    object SGDetSeason: TStringField
      FieldName = 'Season'
      FixedChar = True
      Size = 2
    end
    object SGDetSerno: TIntegerField
      FieldName = 'Serno'
    end
  end
  object DS2: TDataSource
    DataSet = SGDet
    Left = 518
    Top = 125
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 232
    Top = 123
  end
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    Left = 336
    Top = 88
    object SelectAll1: TMenuItem
      Caption = 'Select All'
      OnClick = SelectAll1Click
    end
    object CancelALl1: TMenuItem
      Caption = 'Cancel All'
      OnClick = CancelALl1Click
    end
  end
  object QCapex: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select Top 1 *'
      'from SGDH_CapexS'
      ''
      '')
    Left = 608
    Top = 128
    object Query1ID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 10
    end
    object Query1YM: TStringField
      FieldName = 'YM'
      FixedChar = True
      Size = 50
    end
    object Query1Season: TStringField
      FieldName = 'Season'
      FixedChar = True
      Size = 2
    end
    object Query1Serno: TIntegerField
      FieldName = 'Serno'
    end
    object Query1Items: TStringField
      FieldName = 'Items'
      FixedChar = True
      Size = 100
    end
    object Query1Qty: TFloatField
      FieldName = 'Qty'
    end
    object Query1US_Price: TFloatField
      FieldName = 'US_Price'
    end
    object Query1US_Total: TFloatField
      FieldName = 'US_Total'
    end
    object Query1Memo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 255
    end
    object QCapexNeed_Month: TStringField
      FieldName = 'Need_Month'
      FixedChar = True
      Size = 2
    end
    object QCapexNeed_Season: TStringField
      FieldName = 'Need_Season'
      FixedChar = True
      Size = 50
    end
    object QCapexPay_Month: TStringField
      FieldName = 'Pay_Month'
      FixedChar = True
      Size = 2
    end
  end
  object DS3: TDataSource
    DataSet = QCapex
    Left = 640
    Top = 128
  end
end
