object Adjusting: TAdjusting
  Left = 666
  Top = 265
  Width = 561
  Height = 390
  Caption = 'Adjusting'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel
    Left = 3
    Top = 10
    Width = 60
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'FKBH:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 0
    Top = 48
    Width = 81
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'ZSBH:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = -1
    Top = 85
    Width = 85
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'USD Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 220
    Top = 85
    Width = 102
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Cheng To'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 0
    Top = 138
    Width = 81
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'VND Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 213
    Top = 139
    Width = 110
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Cheng To'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 7
    Top = 178
    Width = 194
    Height = 16
    AutoSize = False
    Caption = 'Adjusting'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 186
    Top = 10
    Width = 68
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'DJNO:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 363
    Top = 9
    Width = 76
    Height = 16
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'CLBH:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBEdit9: TDBEdit
    Left = 63
    Top = 8
    Width = 121
    Height = 24
    CharCase = ecUpperCase
    Color = 15987699
    DataField = 'FKBH'
    DataSource = PayableLit.DS3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object DBEdit3: TDBEdit
    Left = 83
    Top = 47
    Width = 121
    Height = 24
    CharCase = ecUpperCase
    Color = 15987699
    DataField = 'ZSBH'
    DataSource = PayableLit.DS3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object DBEdit6: TDBEdit
    Left = 209
    Top = 47
    Width = 259
    Height = 24
    CharCase = ecUpperCase
    Color = 15987699
    DataField = 'ZSYWJC'
    DataSource = PayableLit.DS3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object DBEdit1: TDBEdit
    Left = 85
    Top = 83
    Width = 134
    Height = 24
    Color = 15987699
    DataField = 'USACC'
    DataSource = PayableLit.DS4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 85
    Top = 136
    Width = 134
    Height = 24
    Color = 15987699
    DataField = 'VNACC'
    DataSource = PayableLit.DS4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object Button1: TButton
    Left = 106
    Top = 314
    Width = 75
    Height = 25
    Caption = 'Save'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 235
    Top = 314
    Width = 75
    Height = 25
    Caption = 'Print'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 362
    Top = 314
    Width = 75
    Height = 25
    Caption = 'Close'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = Button3Click
  end
  object Edit1: TEdit
    Left = 324
    Top = 83
    Width = 121
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object Edit2: TEdit
    Left = 325
    Top = 136
    Width = 121
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
  object DBEdit2: TDBEdit
    Left = 255
    Top = 8
    Width = 105
    Height = 24
    CharCase = ecUpperCase
    Color = 15987699
    DataField = 'DJNO'
    DataSource = PayableLit.DS4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 10
  end
  object DBEdit5: TDBEdit
    Left = 441
    Top = 7
    Width = 105
    Height = 24
    CharCase = ecUpperCase
    Color = 15987699
    DataField = 'CLBH'
    DataSource = PayableLit.DS4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 11
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 200
    Width = 511
    Height = 105
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
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'fkbh'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'FKBH'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 116
      end
      item
        EditButtons = <>
        FieldName = 'zsbh'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'ZSBH'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'usqty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'USQty'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'cwhl'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'CWHL'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'vnqty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'VNQty'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 96
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = PayableLit.DS3
    SQL.Strings = (
      'select * from adjusting'
      'where fkbh=:fkbh')
    UpdateObject = upq1
    Left = 416
    Top = 128
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'FKBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object Query1fkbh: TStringField
      FieldName = 'fkbh'
      Origin = 'DB.adjusting.fkbh'
      FixedChar = True
      Size = 15
    end
    object Query1zsbh: TStringField
      FieldName = 'zsbh'
      Origin = 'DB.adjusting.zsbh'
      FixedChar = True
      Size = 6
    end
    object Query1cgbh: TStringField
      FieldName = 'cgbh'
      Origin = 'DB.adjusting.cgbh'
      FixedChar = True
      Size = 15
    end
    object Query1clbh: TStringField
      FieldName = 'clbh'
      Origin = 'DB.adjusting.clbh'
      FixedChar = True
      Size = 30
    end
    object Query1qty: TFloatField
      FieldName = 'qty'
      Origin = 'DB.adjusting.qty'
    end
    object Query1usqty: TFloatField
      FieldName = 'usqty'
      Origin = 'DB.adjusting.usqty'
      DisplayFormat = '#,##0.00'
    end
    object Query1cwhl: TCurrencyField
      FieldName = 'cwhl'
      Origin = 'DB.adjusting.cwhl'
    end
    object Query1vnqty: TCurrencyField
      FieldName = 'vnqty'
      Origin = 'DB.adjusting.vnqty'
    end
    object Query1userdate: TDateTimeField
      FieldName = 'userdate'
      Origin = 'DB.adjusting.userdate'
    end
    object Query1userid: TStringField
      FieldName = 'userid'
      Origin = 'DB.adjusting.userid'
      FixedChar = True
      Size = 15
    end
    object Query1DJLX: TStringField
      FieldName = 'DJLX'
      Origin = 'DB.adjusting.DJLX'
      FixedChar = True
      Size = 2
    end
    object Query1DJNO: TStringField
      FieldName = 'DJNO'
      Origin = 'DB.adjusting.DJNO'
      FixedChar = True
      Size = 15
    end
    object Query1DJDate: TDateTimeField
      FieldName = 'DJDate'
      Origin = 'DB.adjusting.DJDate'
    end
  end
  object upq1: TUpdateSQL
    ModifySQL.Strings = (
      'update adjusting'
      'set'
      '  fkbh = :fkbh,'
      '  zsbh = :zsbh,'
      '  cgbh = :cgbh,'
      '  clbh = :clbh,'
      '  qty = :qty,'
      '  usqty = :usqty,'
      '  cwhl = :cwhl,'
      '  vnqty = :vnqty,'
      '  userdate = :userdate,'
      '  userid = :userid,'
      '  DJDate=:DJDate'
      'where'
      '  fkbh = :OLD_fkbh and'
      '  zsbh = :OLD_zsbh and'
      '  DJLX=:OLD_DJLX and'
      '  DJNO=:OLD_DJNO and'
      '  CGBH=:OLD_CGBH and'
      '  CLBH=:OLD_CLBH')
    InsertSQL.Strings = (
      'insert into adjusting'
      
        '  (fkbh, zsbh, DJLX,DJNO,cgbh, clbh, qty, usqty, cwhl, vnqty, us' +
        'erdate, userid,DJDate)'
      'values'
      
        '  (:fkbh, :zsbh, :DJLX,:DJNO,'#39'Adjusting'#39', :clbh, 0, :usqty, :cwh' +
        'l, :vnqty, :userdate, '
      '   :userid,:DJDate)')
    DeleteSQL.Strings = (
      'delete from adjusting'
      'where'
      '  fkbh = :OLD_fkbh and'
      '  zsbh = :OLD_zsbh and'
      '  DJLX=:OLD_DJLX and'
      '  DJNO=:OLD_DJNO and'
      '  CGBH=:OLD_CGBH and'
      '  CLBH=:OLD_CLBH')
    Left = 416
    Top = 168
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 416
    Top = 88
  end
  object dq: TQuery
    DatabaseName = 'DB'
    Left = 40
    Top = 312
  end
end
