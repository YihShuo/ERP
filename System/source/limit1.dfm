object limit: Tlimit
  Left = 392
  Top = 206
  Width = 736
  Height = 486
  BorderIcons = [biSystemMenu]
  Caption = 'limit'
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
    Width = 728
    Height = 105
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 26
      Top = 42
      Width = 59
      Height = 20
      Caption = 'User ID:'
    end
    object Label2: TLabel
      Left = 194
      Top = 9
      Width = 46
      Height = 20
      Caption = 'Name:'
    end
    object Label3: TLabel
      Left = 179
      Top = 39
      Width = 64
      Height = 20
      Caption = 'Program:'
    end
    object Label4: TLabel
      Left = 13
      Top = 12
      Width = 71
      Height = 20
      Caption = 'Company:'
    end
    object MsgLabel: TLabel
      Left = 184
      Top = 77
      Width = 345
      Height = 20
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object CBX1: TComboBox
      Left = 88
      Top = 37
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
    object Edit1: TEdit
      Left = 244
      Top = 8
      Width = 233
      Height = 26
      Color = cl3DLight
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 640
      Top = 4
      Width = 49
      Height = 49
      Caption = 'Close'
      TabOrder = 2
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
      Left = 248
      Top = 36
      Width = 225
      Height = 28
      Style = csDropDownList
      DropDownCount = 10
      ItemHeight = 20
      ItemIndex = 0
      TabOrder = 3
      Text = '01'
      OnChange = CBX2Change
      Items.Strings = (
        '01')
    end
    object Button2: TButton
      Left = 600
      Top = 64
      Width = 89
      Height = 33
      Caption = 'QUERY'
      TabOrder = 4
      OnClick = Button2Click
    end
    object CBX3: TComboBox
      Left = 88
      Top = 7
      Width = 89
      Height = 28
      Style = csDropDownList
      DropDownCount = 6
      ItemHeight = 20
      ItemIndex = 0
      TabOrder = 5
      Text = 'VTX'
      OnChange = CBX3Change
      Items.Strings = (
        'VTX')
    end
    object UserID: TEdit
      Left = 88
      Top = 72
      Width = 89
      Height = 28
      TabOrder = 6
      OnKeyDown = UserIDKeyDown
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 105
    Width = 728
    Height = 350
    Align = alClient
    BorderWidth = 8
    Color = clTeal
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 9
      Top = 9
      Width = 288
      Height = 332
      Align = alLeft
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
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
          Expanded = False
          FieldName = 'FORMID'
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FORMNAME'
          Width = 194
          Visible = True
        end>
    end
    object Panel3: TPanel
      Left = 297
      Top = 9
      Width = 152
      Height = 332
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
      object Button1: TButton
        Left = 40
        Top = 144
        Width = 81
        Height = 25
        Caption = 'Add One >'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = Button1Click
      end
      object Button3: TButton
        Left = 40
        Top = 240
        Width = 81
        Height = 25
        Caption = '< Remove'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = Button3Click
      end
      object Button7: TButton
        Left = 40
        Top = 56
        Width = 81
        Height = 25
        Caption = 'Modify'
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
    object DBGrid2: TDBGrid
      Left = 449
      Top = 9
      Width = 270
      Height = 332
      Align = alClient
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
          Expanded = False
          FieldName = 'FORMID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FORMNAME'
          Width = 167
          Visible = True
        end>
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from BLimit')
    UpdateObject = UpdateSQL1
    Left = 120
    Top = 193
    object Query1FORMID: TStringField
      DisplayWidth = 7
      FieldName = 'FORMID'
      Origin = 'DB.BLimit.FORMID'
      FixedChar = True
      Size = 7
    end
    object Query1FORMNAME: TStringField
      FieldName = 'FORMNAME'
      Origin = 'DB.BLimit.FORMNAME'
      FixedChar = True
      Size = 50
    end
    object Query1MKID: TStringField
      FieldName = 'MKID'
      Origin = 'DB.BLimit.MKID'
      FixedChar = True
      Size = 2
    end
    object Query1MKNAME: TStringField
      FieldName = 'MKNAME'
      Origin = 'DB.BLimit.MKNAME'
      FixedChar = True
      Size = 15
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
      'where BLimit.MKNAME='#39'BOM'#39
      'order by BLimitS.FORMID')
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
      Size = 50
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
    Left = 120
    Top = 233
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    Left = 528
    Top = 24
  end
end
