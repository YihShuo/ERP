object ApplyTotalCheck: TApplyTotalCheck
  Left = 224
  Top = 292
  Width = 1571
  Height = 602
  Caption = 'Apply Total Review'
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
    Top = 241
    Width = 1563
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object DBGrid3: TDBGridEh
    Left = 0
    Top = 0
    Width = 1563
    Height = 241
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
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
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
        FieldName = 'DepName'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Lean'#21934#20301'|DepName'
        Width = 103
      end
      item
        EditButtons = <>
        FieldName = 'DepMemo'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Lean'#21934#20301#20013#25991'|DepMemo'
        Width = 98
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
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'CFMID'
        Footers = <>
        ReadOnly = True
        Title.Caption = #30906#35469'ID|CFMID'
        Width = 71
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
        Width = 82
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
    Top = 244
    Width = 1563
    Height = 327
    Align = alClient
    TabOrder = 1
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 1561
      Height = 63
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
        Top = 25
        Width = 35
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
        Left = 165
        Top = 25
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
        Left = 424
        Top = 24
        Width = 47
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
        Left = 320
        Top = 25
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
      object Label4: TLabel
        Left = 607
        Top = 24
        Width = 72
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'DepName:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Button1: TButton
        Left = 924
        Top = 16
        Width = 80
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
        Left = 1003
        Top = 16
        Width = 78
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
        Left = 38
        Top = 22
        Width = 120
        Height = 24
        Date = 39255.000000000000000000
        Format = 'yyyy/MM/dd'
        Time = 39255.000000000000000000
        TabOrder = 2
      end
      object DTP2: TDateTimePicker
        Left = 194
        Top = 22
        Width = 120
        Height = 24
        Date = 39255.000000000000000000
        Format = 'yyyy/MM/dd'
        Time = 39255.000000000000000000
        TabOrder = 3
      end
      object Edit1: TEdit
        Left = 475
        Top = 19
        Width = 132
        Height = 26
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
        Left = 1163
        Top = 16
        Width = 73
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
        Left = 1236
        Top = 16
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
        Left = 817
        Top = 25
        Width = 104
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
        Left = 1080
        Top = 16
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
        Left = 350
        Top = 22
        Width = 73
        Height = 24
        ItemHeight = 16
        TabOrder = 9
        Items.Strings = (
          '01'
          '02'
          '03')
      end
      object Edit2: TEdit
        Left = 681
        Top = 19
        Width = 133
        Height = 26
        AutoSelect = False
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'VNI-Times'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
    end
    object dbgrid4: TDBGridEh
      Left = 1
      Top = 64
      Width = 1561
      Height = 262
      Align = alClient
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
          Width = 388
        end
        item
          EditButtons = <>
          FieldName = 'ZWPM'
          Footers = <>
          ReadOnly = True
          Title.Caption = #21697#38917#20013#25991'|ZWPM'
          Width = 337
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
  end
  object SGMas: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    SQL.Strings = (
      'select SGDH.*,BDepartment.DepName,BDepartment.DepMemo'
      'from SGDH'
      'left join  BDepartment on BDepartment.ID=SGDH.DepID'
      'where SGDH.CFMID='#39'NO'#39
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
      DisplayFormat = 'yyyy/mm/dd'
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
      DisplayFormat = 'yyyy/mm/dd'
    end
    object SGMasUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.SGDH.USERID'
      FixedChar = True
      Size = 15
    end
    object SGMasflowflag: TStringField
      FieldName = 'flowflag'
      Origin = 'DB.SGDH.flowflag'
      FixedChar = True
      Size = 1
    end
    object SGMasCHKDate: TDateTimeField
      FieldName = 'CHKDate'
      Origin = 'DB.SGDH.CHKDate'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object SGMasCHKID: TStringField
      FieldName = 'CHKID'
      Origin = 'DB.SGDH.CHKID'
      FixedChar = True
      Size = 15
    end
    object SGMasCFMDate: TDateTimeField
      FieldName = 'CFMDate'
      Origin = 'DB.SGDH.CFMDate'
      DisplayFormat = 'yyyy/mm/dd'
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
      DisplayFormat = 'yyyy/mm/dd'
    end
    object SGMasCFMID1: TStringField
      FieldName = 'CFMID1'
      Origin = 'DB.SGDH.CFMID1'
      FixedChar = True
      Size = 15
    end
    object SGMasYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.SGDH.YN'
      FixedChar = True
      Size = 1
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
      '  CFMMemo =:CFMMemo,'
      '  CHKID =:CHKID,'
      '  CHKDATE =:CHKDATE,'
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
    OnCalcFields = SGDetCalcFields
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'select SGDHS.SGNO,SGDHS.CLBH,SGDHS.SGQty,SGDHS.Qty,SGDHS.USPrice' +
        ',SGDHS.VNPrice,SGDHS.YQdate,SGDHS.Memo,SGDHS.BJNO'
      '       ,SGDHS.USERDate,SGDHS.USERID,SGDHS.YN'
      
        '       ,CLZL.YWPM,CLZL.ZWPM,ZSZL.ZSDH,ZSZL.zsywjc,CLZL.dwbh,LBZL' +
        'S.ZWSM'
      'from SGDHS'
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
    object SGDetUSERDate: TDateTimeField
      FieldName = 'USERDate'
      DisplayFormat = 'yyyy/mm/dd'
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
end
