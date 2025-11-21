object CGZL2CNO_CGNO: TCGZL2CNO_CGNO
  Left = 596
  Top = 357
  Width = 868
  Height = 487
  Caption = 'CGZL2CNO_CGNO'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 860
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
      Left = 617
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
      Left = 436
      Top = 12
      Width = 85
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
      Left = 522
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
      Left = 643
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
      Left = 437
      Top = 38
      Width = 171
      Height = 14
      Caption = 'Not yet STNO'
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
    object CheckBox3: TCheckBox
      Left = 622
      Top = 38
      Width = 123
      Height = 14
      Caption = 'Bouned Vendor'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 10
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 65
    Width = 860
    Height = 391
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
        Footer.FieldName = 'CGNO'
        Footer.ValueType = fvtCount
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'zsywjc'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CGDate'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'STNO'
        Footers = <>
      end>
  end
  object Query1: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'Select CGZL.CGNO,ZSZL.zsywjc,CGZL.CGDate,BY_QWHSS.STNO'
      'from CGZL'
      'left join ZSZL on ZSZL.ZSDH=CGZL.ZSBH'
      'left join BY_QWHSS on BY_QWHSS.CGNO=CGZL.CGNO'
      'where 1=2')
    UpdateObject = UpdQry
    Left = 216
    Top = 81
    object Query1CGNO: TStringField
      DisplayWidth = 11
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object Query1zsywjc: TStringField
      DisplayWidth = 20
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object Query1CGDate: TDateTimeField
      DisplayWidth = 18
      FieldName = 'CGDate'
    end
    object Query1STNO: TStringField
      DisplayWidth = 15
      FieldName = 'STNO'
      FixedChar = True
      Size = 11
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
