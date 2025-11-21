object MatMoSonQuery: TMatMoSonQuery
  Left = 386
  Top = 310
  Width = 1070
  Height = 500
  Caption = 'MatMoSonQuery'
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
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 48
    Width = 1062
    Height = 249
    Align = alTop
    DataSource = DS1
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
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnEditButtonClick = DBGridEh1EditButtonClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLDH'
        Footers = <>
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 275
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Width = 274
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Width = 54
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 297
    Width = 1062
    Height = 1
    Align = alTop
    TabOrder = 1
  end
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 298
    Width = 1062
    Height = 171
    Align = alClient
    DataSource = DS2
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
    PopupMenu = POP1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnEditButtonClick = DBGridEh2EditButtonClick
    OnGetCellParams = DBGridEh2GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'cldh1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Width = 253
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Width = 261
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'ccq'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ccq1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
      end
      item
        Color = 12189695
        EditButtons = <>
        FieldName = 'syl'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Width = 56
      end>
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1062
    Height = 48
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label1: TLabel
      Left = 0
      Top = 17
      Width = 104
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MotherNO:'
    end
    object Label2: TLabel
      Left = 232
      Top = 17
      Width = 104
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'EngName:'
    end
    object Label3: TLabel
      Left = 456
      Top = 17
      Width = 96
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'TWName:'
    end
    object Edit2: TEdit
      Left = 104
      Top = 14
      Width = 129
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 336
      Top = 14
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 560
      Top = 14
      Width = 113
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Button2: TButton
      Left = 696
      Top = 8
      Width = 75
      Height = 33
      Caption = 'QUERY'
      TabOrder = 3
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 784
      Top = 7
      Width = 75
      Height = 33
      Caption = 'EXCEL'
      TabOrder = 4
      OnClick = Button1Click
    end
  end
  object ZHMas: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'select distinct CLZHZL.CLDH ,CLZL.ZWPM,CLZL.YWPM,CLZL.DWBH,CLZHZ' +
        'L.USERID'
      'from CLZHZL'
      'left join CLZl on CLZl.CLDH=CLZHZL.CLDH')
    UpdateObject = UpSQL1
    Left = 72
    Top = 376
    object ZHMasCLDH: TStringField
      FieldName = 'CLDH'
      FixedChar = True
      Size = 10
    end
    object ZHMasZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object ZHMasYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object ZHMasDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object ZHMasUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
  end
  object DS1: TDataSource
    DataSet = ZHMas
    Left = 72
    Top = 344
  end
  object UpSQL1: TUpdateSQL
    Left = 72
    Top = 408
  end
  object ZHDet: TQuery
    AfterInsert = ZHDetAfterInsert
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'select CLZHZL.*,CLZl.YWPM,CLZL.ZWPM,CLZL.DWBH'
      'from CLZHZL'
      'left join CLZL on CLZl.CLDH=CLZHZL.CLDH1'
      'where CLZHZL.CLDH=:CLDH')
    UpdateObject = UpSQL2
    Left = 108
    Top = 376
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLDH'
        ParamType = ptUnknown
        Size = 11
      end>
    object ZHDetcldh: TStringField
      FieldName = 'cldh'
      FixedChar = True
      Size = 10
    end
    object ZHDetcldh1: TStringField
      FieldName = 'cldh1'
      FixedChar = True
      Size = 10
    end
    object ZHDetccq: TStringField
      FieldName = 'ccq'
      FixedChar = True
      Size = 6
    end
    object ZHDetccq1: TStringField
      FieldName = 'ccq1'
      FixedChar = True
      Size = 6
    end
    object ZHDetsyl: TFloatField
      FieldName = 'syl'
    end
    object ZHDetzsdh: TStringField
      FieldName = 'zsdh'
      FixedChar = True
      Size = 6
    end
    object ZHDetUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object ZHDetUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object ZHDetYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object ZHDetYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object ZHDetZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object ZHDetDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
  end
  object UpSQL2: TUpdateSQL
    ModifySQL.Strings = (
      'update CLZHZL'
      'set'
      '  cldh = :cldh,'
      '  cldh1 = :cldh1,'
      '  ccq = :ccq,'
      '  ccq1 = :ccq1,'
      '  syl = :syl,'
      '  zsdh = :zsdh,'
      '  USERID = :USERID,'
      '  USERDATE = :USERDATE,'
      '  YN = :YN'
      'where'
      '  cldh = :OLD_cldh and'
      '  cldh1 = :OLD_cldh1')
    InsertSQL.Strings = (
      'insert into CLZHZL'
      '  (cldh, cldh1, ccq, ccq1, syl, zsdh, USERID, USERDATE, YN)'
      'values'
      
        '  (:cldh, :cldh1, :ccq, :ccq1, :syl, :zsdh, :USERID, :USERDATE, ' +
        ':YN)')
    DeleteSQL.Strings = (
      'delete from CLZHZL'
      'where'
      '  cldh = :OLD_cldh and'
      '  cldh1 = :OLD_cldh1')
    Left = 108
    Top = 408
  end
  object DS2: TDataSource
    DataSet = ZHDet
    Left = 108
    Top = 344
  end
  object POP1: TPopupMenu
    Left = 8
    Top = 344
    object N1: TMenuItem
      Caption = 'Insert'
      Enabled = False
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = 'Modify'
      Enabled = False
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = 'Delete'
      Enabled = False
      OnClick = N3Click
    end
  end
  object tempQ: TQuery
    DatabaseName = 'DB'
    Left = 40
    Top = 344
  end
end
