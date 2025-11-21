object CopyLimit: TCopyLimit
  Left = 331
  Top = 217
  Width = 845
  Height = 460
  BorderIcons = [biSystemMenu]
  Caption = 'CopyLimit'
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 837
    Height = 57
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 32
      Width = 59
      Height = 20
      Caption = 'User ID:'
    end
    object Label3: TLabel
      Left = 496
      Top = 32
      Width = 59
      Height = 20
      Caption = 'User ID:'
    end
    object CBX1: TComboBox
      Left = 88
      Top = 24
      Width = 89
      Height = 28
      Style = csDropDownList
      DropDownCount = 10
      ItemHeight = 20
      ItemIndex = 0
      TabOrder = 0
      Text = '16664'
      OnChange = CBX1Change
      Items.Strings = (
        '16664')
    end
    object BitBtn1: TBitBtn
      Left = 704
      Top = 4
      Width = 49
      Height = 49
      Caption = 'Close'
      TabOrder = 1
      OnClick = BitBtn1Click
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
    object CBX2: TComboBox
      Left = 560
      Top = 24
      Width = 81
      Height = 28
      Style = csDropDownList
      DropDownCount = 10
      ItemHeight = 20
      ItemIndex = 0
      TabOrder = 2
      Text = '01'
      OnChange = CBX2Change
      Items.Strings = (
        '01')
    end
    object Button2: TButton
      Left = 392
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Button2'
      TabOrder = 3
      Visible = False
      OnClick = Button2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 837
    Height = 369
    Align = alClient
    BorderWidth = 8
    Color = clTeal
    TabOrder = 1
    object DBGrid1: TDBGridEh
      Left = 497
      Top = 9
      Width = 331
      Height = 351
      Align = alClient
      DataSource = DataSource2
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
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'GSBH'
          Footers = <>
          Width = 47
        end
        item
          EditButtons = <>
          FieldName = 'MKNAME'
          Footers = <>
          Width = 77
        end
        item
          EditButtons = <>
          FieldName = 'FORMID'
          Footers = <>
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = 'FORMNAME'
          Footers = <>
          Width = 105
        end>
    end
    object Panel3: TPanel
      Left = 345
      Top = 9
      Width = 152
      Height = 351
      Align = alLeft
      Color = clTeal
      TabOrder = 1
      object Bevel1: TBevel
        Left = 24
        Top = 16
        Width = 113
        Height = 281
        Style = bsRaised
      end
      object Button7: TButton
        Left = 40
        Top = 120
        Width = 81
        Height = 41
        Caption = 'COPY >>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = Button7Click
      end
    end
    object DBGrid2: TDBGridEh
      Left = 9
      Top = 9
      Width = 336
      Height = 351
      Align = alLeft
      DataSource = DataSource1
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
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'GSBH'
          Footers = <>
          Width = 47
        end
        item
          EditButtons = <>
          FieldName = 'MKNAME'
          Footers = <>
          Width = 77
        end
        item
          EditButtons = <>
          FieldName = 'FORMID'
          Footers = <>
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = 'FORMNAME'
          Footers = <>
          Width = 105
        end>
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select BLimits.*,BLimit.MKNAME ,BLimit.FORMNAME from BLimits'
      
        'left join BLimit on BLimit.MKID=BLimits.MKID and BLimit.FORMID=B' +
        'Limits.FORMID'
      'where BLimits.USERID='#39'16664'#39
      'order by BLimits.GSBH,BLimits.MKID,BLimitS.FORMID')
    UpdateObject = UpdateSQL1
    Left = 120
    Top = 193
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
      Origin = 'DB.BLimits.GSBH'
      FixedChar = True
      Size = 4
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.BLimits.USERID'
      FixedChar = True
      Size = 10
    end
    object Query1MKID: TStringField
      FieldName = 'MKID'
      Origin = 'DB.BLimits.MKID'
      FixedChar = True
      Size = 2
    end
    object Query1FORMID: TStringField
      DisplayWidth = 7
      FieldName = 'FORMID'
      Origin = 'DB.BLimits.FORMID'
      FixedChar = True
      Size = 7
    end
    object Query1SUSERID: TStringField
      FieldName = 'SUSERID'
      Origin = 'DB.BLimits.SUSERID'
      FixedChar = True
      Size = 10
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.BLimits.USERDATE'
    end
    object Query1MKNAME: TStringField
      FieldName = 'MKNAME'
      Origin = 'DB.BLimit.MKNAME'
      FixedChar = True
      Size = 15
    end
    object Query1FORMNAME: TStringField
      FieldName = 'FORMNAME'
      Origin = 'DB.BLimit.FORMNAME'
      FixedChar = True
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 160
    Top = 193
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select BLimits.*,BLimit.MKNAME ,BLimit.FORMNAME from BLimits'
      
        'left join BLimit on BLimit.MKID=BLimits.MKID and BLimit.FORMID=B' +
        'Limits.FORMID'
      'where BLimits.USERID='#39'16664'#39
      'order by BLimits.GSBH,BLimits.MKID,BLimitS.FORMID')
    UpdateObject = UpdateSQL2
    Left = 512
    Top = 185
    object Query2GSBH: TStringField
      FieldName = 'GSBH'
      Origin = 'DB.BLimits.GSBH'
      FixedChar = True
      Size = 4
    end
    object Query2USERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.BLimits.USERID'
      FixedChar = True
      Size = 10
    end
    object Query2MKID: TStringField
      FieldName = 'MKID'
      Origin = 'DB.BLimits.MKID'
      FixedChar = True
      Size = 2
    end
    object Query2FORMID: TStringField
      DisplayWidth = 7
      FieldName = 'FORMID'
      Origin = 'DB.BLimits.FORMID'
      FixedChar = True
      Size = 7
    end
    object Query2SUSERID: TStringField
      FieldName = 'SUSERID'
      Origin = 'DB.BLimits.SUSERID'
      FixedChar = True
      Size = 10
    end
    object Query2USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.BLimits.USERDATE'
    end
    object Query2MKNAME: TStringField
      FieldName = 'MKNAME'
      Origin = 'DB.BLimit.MKNAME'
      FixedChar = True
      Size = 15
    end
    object Query2FORMNAME: TStringField
      FieldName = 'FORMNAME'
      Origin = 'DB.BLimit.FORMNAME'
      FixedChar = True
    end
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 544
    Top = 185
  end
  object UpdateSQL2: TUpdateSQL
    ModifySQL.Strings = (
      'update BLimits'
      'set'
      '  GSBH = :GSBH,'
      '  USERID = :USERID,'
      '  MKID = :MKID,'
      '  FORMID = :FORMID,'
      '  SUSERID = :SUSERID,'
      '  USERDATE = :USERDATE'
      'where'
      '  GSBH = :OLD_GSBH and'
      '  USERID = :OLD_USERID and'
      '  MKID = :OLD_MKID and'
      '  FORMID = :OLD_FORMID')
    InsertSQL.Strings = (
      'insert into BLimits'
      '  (GSBH, USERID, MKID, FORMID, SUSERID, USERDATE)'
      'values'
      '  (:GSBH, :USERID, :MKID, :FORMID, :SUSERID, :USERDATE)')
    DeleteSQL.Strings = (
      'delete from BLimits'
      'where'
      '  GSBH = :OLD_GSBH and'
      '  USERID = :OLD_USERID and'
      '  MKID = :OLD_MKID and'
      '  FORMID = :OLD_FORMID')
    Left = 584
    Top = 185
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update BLimits'
      'set'
      '  GSBH = :GSBH,'
      '  USERID = :USERID,'
      '  MKID = :MKID,'
      '  FORMID = :FORMID,'
      '  SUSERID = :SUSERID,'
      '  USERDATE = :USERDATE'
      'where'
      '  GSBH = :OLD_GSBH and'
      '  USERID = :OLD_USERID and'
      '  MKID = :OLD_MKID and'
      '  FORMID = :OLD_FORMID')
    InsertSQL.Strings = (
      'insert into BLimits'
      '  (GSBH, USERID, MKID, FORMID, SUSERID, USERDATE)'
      'values'
      '  (:GSBH, :USERID, :MKID, :FORMID, :SUSERID, :USERDATE)')
    DeleteSQL.Strings = (
      'delete from BLimits'
      'where'
      '  GSBH = :OLD_GSBH and'
      '  USERID = :OLD_USERID and'
      '  MKID = :OLD_MKID and'
      '  FORMID = :OLD_FORMID')
    Left = 120
    Top = 233
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    Left = 528
    Top = 24
  end
end
