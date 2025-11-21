object ExtraCon: TExtraCon
  Left = 186
  Top = 188
  Width = 1499
  Height = 549
  Caption = 'ExtraCon'
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
    Top = 185
    Width = 1483
    Height = 48
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 160
      Top = 16
      Width = 33
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'TO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 320
      Top = 16
      Width = 80
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'JGNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 16
      Width = 39
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'From'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 558
      Top = 8
      Width = 97
      Height = 33
      Caption = 'Search '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 659
      Top = 8
      Width = 97
      Height = 33
      Caption = 'Confirm'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 761
      Top = 8
      Width = 97
      Height = 33
      Caption = 'Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button3Click
    end
    object DTP1: TDateTimePicker
      Left = 56
      Top = 13
      Width = 105
      Height = 24
      Date = 42401.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 42401.677295636570000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DTP2: TDateTimePicker
      Left = 208
      Top = 13
      Width = 105
      Height = 24
      Date = 42794.677664201390000000
      Format = 'yyyy/MM/dd'
      Time = 42794.677664201390000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object Edit1: TEdit
      Left = 407
      Top = 13
      Width = 137
      Height = 24
      TabOrder = 5
    end
    object Button4: TButton
      Left = 1095
      Top = 7
      Width = 110
      Height = 33
      Caption = 'Manager Confirm'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 982
      Top = 7
      Width = 107
      Height = 33
      Caption = 'Manager Search '
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = Button5Click
    end
    object CheckBox1: TCheckBox
      Left = 864
      Top = 16
      Width = 121
      Height = 17
      Caption = 'Show Confirm'
      Enabled = False
      TabOrder = 8
    end
    object Button6: TButton
      Left = 1207
      Top = 7
      Width = 75
      Height = 33
      Caption = 'Confirm All'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = Button6Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 233
    Width = 1483
    Height = 277
    Align = alClient
    TabOrder = 1
    object DBGridEh1: TDBGridEh
      Left = 1189
      Top = 1
      Width = 293
      Height = 275
      Align = alRight
      DataSource = DSOrder
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
      ParentFont = False
      PopupMenu = PopupMenu2
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'ZLBH'
          Footers = <>
          ReadOnly = True
          Width = 75
        end
        item
          EditButtons = <>
          FieldName = 'CLSL'
          Footer.ValueType = fvtSum
          Footers = <>
          ReadOnly = True
          Width = 50
        end
        item
          EditButtons = <>
          FieldName = 'Qty'
          Footer.ValueType = fvtSum
          Footers = <>
          ReadOnly = True
          Width = 50
        end
        item
          EditButtons = <>
          FieldName = 'TempQty'
          Footers = <>
          Visible = False
        end>
    end
    object DBGridEh3: TDBGridEh
      Left = 1
      Top = 1
      Width = 1188
      Height = 275
      Align = alClient
      DataSource = DS4
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -12
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'CLBH'
          Footers = <>
          Width = 99
        end
        item
          EditButtons = <>
          FieldName = 'YWPM'
          Footers = <>
          Width = 194
        end
        item
          EditButtons = <>
          FieldName = 'DWBH'
          Footers = <>
          Width = 46
        end
        item
          Color = clYellow
          EditButtons = <>
          FieldName = 'Qty'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'YQDate'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'KCBH'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'Memo'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'KCQty'
          Footers = <>
        end>
    end
  end
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 0
    Width = 1483
    Height = 185
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
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'JGNO'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = 'ZSBH'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 101
      end
      item
        EditButtons = <>
        FieldName = 'JGDate'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 81
      end
      item
        EditButtons = <>
        FieldName = 'JGLX'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 68
      end
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'CFMID1'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate1'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate2'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 91
      end
      item
        EditButtons = <>
        FieldName = 'CFMID3'
        Footers = <>
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate3'
        Footers = <>
        Width = 109
      end
      item
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 42
      end>
  end
  object JGMas: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select JGZL.*,ZSZL.ZSYWJC'
      'from JGZL'
      'left join ZSZL on ZSZL.ZSDH=JGZL.ZSBH')
    UpdateObject = UpMas
    Left = 119
    Top = 319
    object JGMasJGNO: TStringField
      FieldName = 'JGNO'
      FixedChar = True
      Size = 11
    end
    object JGMasZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object JGMasZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object JGMasJGDate: TDateTimeField
      FieldName = 'JGDate'
      DisplayFormat = 'yy/MM/dd'
    end
    object JGMasJGLX: TStringField
      FieldName = 'JGLX'
      FixedChar = True
      Size = 1
    end
    object JGMasUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object JGMasCFMID1: TStringField
      FieldName = 'CFMID1'
      FixedChar = True
      Size = 15
    end
    object JGMasCFMDate1: TDateTimeField
      FieldName = 'CFMDate1'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object JGMasCFMDate2: TDateTimeField
      FieldName = 'CFMDate2'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object JGMasYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object JGMasGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object JGMasCKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object JGMasUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object JGMasCFMID2: TStringField
      FieldName = 'CFMID2'
      FixedChar = True
      Size = 15
    end
    object JGMasCFMID3: TStringField
      FieldName = 'CFMID3'
      FixedChar = True
      Size = 15
    end
    object JGMasCFMDate3: TDateTimeField
      FieldName = 'CFMDate3'
    end
  end
  object DS3: TDataSource
    DataSet = JGMas
    Left = 119
    Top = 287
  end
  object UpMas: TUpdateSQL
    ModifySQL.Strings = (
      'update JGZL'
      'set'
      '  CFMID1 = :CFMID1,'
      '  CFMDate1 = :CFMDate1,'
      '  CFMID2 = :CFMID2'
      'where'
      '  JGNO = :OLD_JGNO')
    InsertSQL.Strings = (
      'insert into JGZL'
      '  (CFMID1, CFMDate1, CFMID2)'
      'values'
      '  (:CFMID1, :CFMDate1, :CFMID2)')
    DeleteSQL.Strings = (
      'delete from JGZL'
      'where'
      '  JGNO = :OLD_JGNO')
    Left = 119
    Top = 351
  end
  object UPDet: TUpdateSQL
    ModifySQL.Strings = (
      'update JGZLS'
      'set'
      '  Qty = :Qty,'
      '  Memo = :Memo'
      'where'
      '  JGNO = :OLD_JGNO and'
      '  CLBH = :OLD_CLBH and'
      '  ZMLB = :OLD_ZMLB'
      ''
      '')
    InsertSQL.Strings = (
      'insert into JGZLS'
      '  (Qty, Memo)'
      'values'
      '  (:Qty, :Memo)')
    DeleteSQL.Strings = (
      'delete from JGZLS'
      'where'
      '  JGNO = :OLD_JGNO and'
      '  CLBH = :OLD_CLBH and'
      '  ZMLB = :OLD_ZMLB')
    Left = 83
    Top = 351
  end
  object JGDet: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    DataSource = DS3
    RequestLive = True
    SQL.Strings = (
      
        'select JGZLS.*,CLZL.YWPM,CLZL.DWBH,KCZLS.KCBH,JGZL.CKBH,KCZLS.KC' +
        'Qty'
      'from JGZLS'
      'left join JGZL on JGZL.JGNO=JGZLS.JGNO'
      'left join CLZL on CLZL.CLDH=JGZLS.CLBH'
      
        'left join  KCZLS on KCZLS.CLBH=JGZLS.CLBH and KCZLS.CKBH=JGZL.CK' +
        'BH'
      'where JGZLS.JGNO=:JGNO'
      'and JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39
      'order by JGZLS.CLBH')
    UpdateObject = UPDet
    Left = 84
    Top = 319
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'JGNO'
        ParamType = ptUnknown
        Size = 12
      end>
    object JGDetJGNO: TStringField
      FieldName = 'JGNO'
      FixedChar = True
      Size = 11
    end
    object JGDetCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object JGDetZMLB: TStringField
      FieldName = 'ZMLB'
      FixedChar = True
      Size = 15
    end
    object JGDetQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.0000'
    end
    object JGDetUSPrice: TCurrencyField
      FieldName = 'USPrice'
    end
    object JGDetMemo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 100
    end
    object JGDetBJNO: TStringField
      FieldName = 'BJNO'
      FixedChar = True
      Size = 11
    end
    object JGDetYQDate: TDateTimeField
      FieldName = 'YQDate'
      DisplayFormat = 'yy/MM/dd'
    end
    object JGDetCFMDate: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'yy/MM/dd'
    end
    object JGDetUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yy/MM/dd'
    end
    object JGDetUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object JGDetYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object JGDetYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object JGDetDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object JGDetKCBH: TStringField
      FieldName = 'KCBH'
      FixedChar = True
      Size = 6
    end
    object JGDetUSACC: TCurrencyField
      FieldName = 'USACC'
      DisplayFormat = '##,#0.0000'
    end
    object JGDetVNPrice: TFloatField
      FieldName = 'VNPrice'
      DisplayFormat = '##,#0'
    end
    object JGDetVNACC: TFloatField
      FieldName = 'VNACC'
      DisplayFormat = '##,#0'
    end
    object JGDetCKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object JGDetKCQty: TCurrencyField
      FieldName = 'KCQty'
      DisplayFormat = '##,#0.0000'
    end
  end
  object DS4: TDataSource
    DataSet = JGDet
    Left = 84
    Top = 287
  end
  object PopupMenu1: TPopupMenu
    Left = 16
    Top = 320
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 48
    Top = 320
  end
  object JGS: TQuery
    DatabaseName = 'DB'
    DataSource = DS4
    SQL.Strings = (
      'select *,convert(float,0)as TempQty'
      'from JGZLSS'
      'left join DDZL on DDZL.DDBH = JGZLSS.ZLBH'
      'where JGNO=:JGNO'
      'and CLBH=:CLBH'
      'order by  JGZLSS.ZLBH')
    UpdateObject = UpOrder
    Left = 155
    Top = 321
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'JGNO'
        ParamType = ptUnknown
        Size = 12
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object JGSJGNO: TStringField
      FieldName = 'JGNO'
      Origin = 'DB.JGZLSS.JGNO'
      FixedChar = True
      Size = 11
    end
    object JGSZLBH: TStringField
      FieldName = 'ZLBH'
      Origin = 'DB.JGZLSS.ZLBH'
      FixedChar = True
      Size = 15
    end
    object JGSCLSL: TCurrencyField
      FieldName = 'CLSL'
      Origin = 'DB.JGZLSS.CLSL'
      DisplayFormat = '##,#0.0000'
    end
    object JGSQty: TCurrencyField
      FieldName = 'Qty'
      Origin = 'DB.JGZLSS.Qty'
      DisplayFormat = '##,#0.0000'
    end
    object JGSCLBH: TStringField
      FieldName = 'CLBH'
      Origin = 'DB.JGZLSS.CLBH'
      FixedChar = True
      Size = 15
    end
    object JGSUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.JGZLSS.USERDATE'
    end
    object JGSUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.JGZLSS.USERID'
      FixedChar = True
      Size = 15
    end
    object JGSTempQty: TFloatField
      FieldName = 'TempQty'
      DisplayFormat = '##,#0.0000'
    end
  end
  object UpOrder: TUpdateSQL
    ModifySQL.Strings = (
      'update JGZLSS'
      'set Qty=:Qty'
      'where '
      '  JGNO = :OLD_JGNO and'
      '  CLBH = :OLD_CLBH and '
      '  ZLBH=:OLD_ZLBH')
    Left = 155
    Top = 353
  end
  object DSOrder: TDataSource
    DataSet = JGS
    Left = 155
    Top = 289
  end
  object PopupMenu2: TPopupMenu
    Left = 15
    Top = 352
    object Modify: TMenuItem
      Caption = 'Modify'
      OnClick = ModifyClick
    end
    object Auto: TMenuItem
      Caption = 'Auto'
      Enabled = False
      OnClick = AutoClick
    end
    object Save: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = SaveClick
    end
    object Cancel: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = CancelClick
    end
  end
end
