object QHWH2CNO_HQNO: TQHWH2CNO_HQNO
  Left = 543
  Top = 424
  Width = 1084
  Height = 462
  Caption = 'QHWH2CNO_HQNO'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1076
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 34
      Width = 80
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'BUYNO:'
    end
    object Label3: TLabel
      Left = 0
      Top = 9
      Width = 79
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CGNO'
    end
    object Label6: TLabel
      Left = 205
      Top = 7
      Width = 79
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SupID:'
    end
    object Label4: TLabel
      Left = 205
      Top = 34
      Width = 79
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Vendor:'
    end
    object Label2: TLabel
      Left = 625
      Top = 12
      Width = 15
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = '~'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object BUYNOEdit: TEdit
      Left = 81
      Top = 31
      Width = 120
      Height = 24
      TabOrder = 0
    end
    object CGNOEdit: TEdit
      Left = 81
      Top = 6
      Width = 120
      Height = 24
      TabOrder = 1
    end
    object ZSYWJCEdit: TEdit
      Left = 289
      Top = 32
      Width = 144
      Height = 24
      TabOrder = 2
    end
    object ZSBHEdit: TEdit
      Left = 289
      Top = 5
      Width = 144
      Height = 24
      TabOrder = 3
    end
    object Button1: TButton
      Left = 744
      Top = 33
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 4
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 744
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Copy'
      TabOrder = 5
      OnClick = Button2Click
    end
    object CheckBox1: TCheckBox
      Left = 437
      Top = 12
      Width = 92
      Height = 14
      Caption = 'From'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 6
    end
    object DTP1: TDateTimePicker
      Left = 530
      Top = 7
      Width = 90
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object DTP2: TDateTimePicker
      Left = 651
      Top = 7
      Width = 87
      Height = 24
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object CheckBox2: TCheckBox
      Left = 438
      Top = 38
      Width = 259
      Height = 14
      Caption = 'Not yet HQNO'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 9
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 65
    Width = 1076
    Height = 366
    Align = alClient
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
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CGNO'
        Footers = <>
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Footers = <>
        Width = 81
      end
      item
        EditButtons = <>
        FieldName = 'XXCC'
        Footers = <>
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'zsywjc'
        Footers = <>
        Width = 98
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Width = 580
      end
      item
        EditButtons = <>
        FieldName = 'dwbh'
        Footers = <>
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'CQDH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'YQDate'
        Footers = <>
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'ETADate'
        Footers = <>
        Width = 94
      end
      item
        EditButtons = <>
        FieldName = 'HQNO'
        Footers = <>
      end>
  end
  object Query1: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'Select  BY_QWHS2.*,ZSZL.zsywjc,CLZL.ywpm,CLZL.dwbh,CLZL.CQDH,CGZ' +
        'LS.VNPrice,CGZLS.USPrice,CGZLS.YQDate,CGZLS.CFMDate as ETADate'
      'from BY_QWHS2'
      
        'Left join CGZLS on CGZLS.CGNO=BY_QWHS2.CGNO and CGZLS.CLBH=BY_QW' +
        'HS2.CLBH'
      'left join CGZL on BY_QWHS2.CGNO=CGZL.CGNO'
      'left join CLZL on CLZL.CLDH=BY_QWHS2.CLBH'
      'left join ZSZL on ZSZL.ZSDH=CGZL.ZSBH')
    UpdateObject = UpdQry
    Left = 216
    Top = 81
    object Query1STNO: TStringField
      FieldName = 'STNO'
      FixedChar = True
      Size = 11
    end
    object Query1CGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
    end
    object Query1XXCC: TStringField
      FieldName = 'XXCC'
      FixedChar = True
      Size = 6
    end
    object Query1Stage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 5
    end
    object Query1UserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 15
    end
    object Query1UserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object Query1HQNO: TStringField
      FieldName = 'HQNO'
      FixedChar = True
      Size = 11
    end
    object Query1CFMID: TStringField
      FieldName = 'CFMID'
      FixedChar = True
      Size = 15
    end
    object Query1CFMDate: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query1zsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
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
    object Query1CQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object Query1VNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object Query1USPrice: TFloatField
      FieldName = 'USPrice'
    end
    object Query1YQDate: TDateTimeField
      FieldName = 'YQDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query1ETADate: TDateTimeField
      FieldName = 'ETADate'
      DisplayFormat = 'YYYY/MM/DD'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 216
    Top = 113
  end
  object UpdQry: TUpdateSQL
    ModifySQL.Strings = (
      'update BY_QWHSS'
      'Set'
      '  CGNO =:CGNO,'
      '  UserID=:UserID,'
      '  UserDate=:UserDate'
      'where'
      '  STNO =:OLD_STNO'
      '  and CGNO =:OLD_CGNO'
      '')
    InsertSQL.Strings = (
      'Insert into BY_QWHSS'
      '   (STNO, CGNO , UserID, UserDate, YN)'
      'values'
      '   (:STNO, :CGNO, :UserID, :UserDate, :YN)')
    DeleteSQL.Strings = (
      'Delete from BY_QWHSS'
      'where'
      '  STNO =:OLD_STNO'
      '  and CGNO =:OLD_CGNO')
    Left = 216
    Top = 148
  end
end
