object ScanScreenDep: TScanScreenDep
  Left = 311
  Top = 183
  Width = 824
  Height = 500
  Caption = 'ScanScreenDep'
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
    Width = 816
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
      Left = 16
      Top = 16
      Width = 418
      Height = 29
      Caption = 'Please select the list of department:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 512
      Top = 32
      Width = 48
      Height = 20
      Caption = 'GXLB:'
    end
    object BitBtn1: TBitBtn
      Left = 704
      Top = 4
      Width = 49
      Height = 49
      Caption = 'Close'
      TabOrder = 0
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
    object CBX4: TComboBox
      Left = 576
      Top = 24
      Width = 73
      Height = 28
      Style = csDropDownList
      ItemHeight = 20
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 816
    Height = 409
    Align = alClient
    BorderWidth = 8
    Color = clTeal
    TabOrder = 1
    object DBGrid1: TDBGridEh
      Left = 545
      Top = 9
      Width = 262
      Height = 391
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
      FooterRowCount = 1
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ParentFont = False
      ReadOnly = True
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'DEPNO'
          Footers = <
            item
              FieldName = 'DEPNO'
              ValueType = fvtCount
            end>
          Width = 93
        end
        item
          EditButtons = <>
          FieldName = 'DEPNAME'
          Footers = <>
          Width = 90
        end
        item
          EditButtons = <>
          FieldName = 'GXLB'
          Footers = <>
          Width = 50
        end>
    end
    object Panel3: TPanel
      Left = 393
      Top = 9
      Width = 152
      Height = 391
      Align = alLeft
      Color = clTeal
      TabOrder = 1
      object Bevel1: TBevel
        Left = 24
        Top = 16
        Width = 113
        Height = 345
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
    object DBGrid2: TDBGridEh
      Left = 9
      Top = 9
      Width = 384
      Height = 391
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
          Width = 54
        end
        item
          EditButtons = <>
          FieldName = 'ID'
          Footers = <>
          Title.Caption = 'DepNo'
          Width = 93
        end
        item
          EditButtons = <>
          FieldName = 'DepName'
          Footers = <>
          Width = 94
        end
        item
          EditButtons = <>
          FieldName = 'DepMemo'
          Footers = <>
          Width = 111
        end>
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from BDepartment'
      'order by ID')
    UpdateObject = UpdateSQL1
    Left = 120
    Top = 193
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
      Origin = 'DB.BDepartment.GSBH'
      FixedChar = True
      Size = 4
    end
    object Query1ID: TStringField
      FieldName = 'ID'
      Origin = 'DB.BDepartment.ID'
      FixedChar = True
      Size = 10
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      Origin = 'DB.BDepartment.DepName'
      FixedChar = True
      Size = 50
    end
    object Query1DepMemo: TStringField
      FieldName = 'DepMemo'
      Origin = 'DB.BDepartment.DepMemo'
      FixedChar = True
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 160
    Top = 193
  end
  object Query2: TQuery
    SQL.Strings = (
      'select *'
      'from DepNo'
      'order by DepNo')
    UpdateObject = UpdateSQL2
    Left = 512
    Top = 185
    object Query2DEPNO: TStringField
      FieldName = 'DEPNO'
      Size = 10
    end
    object Query2DEPNAME: TStringField
      FieldName = 'DEPNAME'
      Size = 50
    end
    object Query2GXLB: TStringField
      FieldName = 'GXLB'
      Size = 1
    end
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 544
    Top = 185
  end
  object UpdateSQL2: TUpdateSQL
    ModifySQL.Strings = (
      'update DepNo'
      'set'
      '  DEPNO = :DEPNO,'
      '  DEPNAME = :DEPNAME,'
      '  GXLB = :GXLB'
      'where'
      '  DEPNO = :OLD_DEPNO and'
      '  DEPNAME = :OLD_DEPNAME and'
      '  GXLB = :OLD_GXLB')
    InsertSQL.Strings = (
      'insert into DepNo'
      '  (DEPNO, DEPNAME, GXLB)'
      'values'
      '  (:DEPNO, :DEPNAME, :GXLB)')
    DeleteSQL.Strings = (
      'delete from DepNo'
      'where'
      '  DEPNO = :OLD_DEPNO and'
      '  DEPNAME = :OLD_DEPNAME and'
      '  GXLB = :OLD_GXLB')
    Left = 584
    Top = 185
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update BDepartment'
      'set'
      '  ID = :ID,'
      '  GSBH = :GSBH,'
      '  DepName = :DepName,'
      '  DepMemo = :DepMemo,'
      '  ProYN = :ProYN,'
      '  Worker_Qty = :Worker_Qty,'
      '  UserID = :UserID,'
      '  UserDate = :UserDate,'
      '  YN = :YN,'
      '  GXLB = :GXLB'
      'where'
      '  ID = :OLD_ID and'
      '  GSBH = :OLD_GSBH and'
      '  DepName = :OLD_DepName and'
      '  DepMemo = :OLD_DepMemo and'
      '  ProYN = :OLD_ProYN and'
      '  Worker_Qty = :OLD_Worker_Qty and'
      '  UserID = :OLD_UserID and'
      '  UserDate = :OLD_UserDate and'
      '  YN = :OLD_YN and'
      '  GXLB = :OLD_GXLB')
    InsertSQL.Strings = (
      'insert into BDepartment'
      
        '  (ID, GSBH, DepName, DepMemo, ProYN, Worker_Qty, UserID, UserDa' +
        'te, YN, '
      '   GXLB)'
      'values'
      
        '  (:ID, :GSBH, :DepName, :DepMemo, :ProYN, :Worker_Qty, :UserID,' +
        ' :UserDate, '
      '   :YN, :GXLB)')
    DeleteSQL.Strings = (
      'delete from BDepartment'
      'where'
      '  ID = :OLD_ID and'
      '  GSBH = :OLD_GSBH and'
      '  DepName = :OLD_DepName and'
      '  DepMemo = :OLD_DepMemo and'
      '  ProYN = :OLD_ProYN and'
      '  Worker_Qty = :OLD_Worker_Qty and'
      '  UserID = :OLD_UserID and'
      '  UserDate = :OLD_UserDate and'
      '  YN = :OLD_YN and'
      '  GXLB = :OLD_GXLB')
    Left = 120
    Top = 233
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 440
    Top = 16
  end
end
