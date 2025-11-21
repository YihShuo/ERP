object EntryList_VN: TEntryList_VN
  Left = 329
  Top = 219
  Width = 1099
  Height = 500
  BorderIcons = [biSystemMenu]
  Caption = 'EntryList_VN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1091
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 17
      Width = 80
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SuppID:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 200
      Top = 17
      Width = 84
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CGNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 416
      Top = 16
      Width = 83
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 584
      Top = 7
      Width = 89
      Height = 33
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object EDIT1: TEdit
      Left = 80
      Top = 13
      Width = 121
      Height = 28
      CharCase = ecUpperCase
      Color = 12320767
      Enabled = False
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 284
      Top = 12
      Width = 129
      Height = 28
      Color = 12320767
      ReadOnly = True
      TabOrder = 2
      OnKeyPress = Edit2KeyPress
    end
    object Button2: TButton
      Left = 683
      Top = 6
      Width = 89
      Height = 33
      Caption = 'Copy'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button2Click
    end
    object MatEdit: TEdit
      Left = 500
      Top = 11
      Width = 81
      Height = 28
      Color = clWhite
      TabOrder = 4
      OnKeyPress = Edit2KeyPress
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 1091
    Height = 420
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CGNO'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'ZSBH'
        Footers = <>
        Title.Caption = 'SuppID'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = 'MatNo'
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = 'MatName'
        Width = 400
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = 'Unit'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'okQty'
        Footer.ValueType = fvtSum
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
        Width = 186
      end
      item
        EditButtons = <>
        FieldName = 'HGBH'
        Footers = <>
        Title.Caption = 'HaiQuan'
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'HGBH_TC'
        Footers = <>
        Title.Caption = 'HaiQuan_TC'
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'HGBH_HD'
        Footers = <>
        Title.Caption = 'MaHoaDon'
        Width = 75
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 416
    Top = 208
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select CGZLS.*,CGZL.ZSBH,CLZL.YWPM,'
      
        '           CLZL.DWBH,KCZLS.KCBH,100.0 as okQty,CLHG.HGBH,CLHD.HG' +
        'BH as HGBH_HD,CLTC.HGBH as HGBH_TC'
      'from CGZLS'
      'left join CLZL on CLZL.CLDH=CGZLS.CLBH'
      'left join CGZL on CGZL.CGNO=CGZLS.CGNO'
      'left join KCZLS on KCZLS.CLBH=CGZLS.CLBH'
      'left join CLHG on CGZLS.CLBH=CLHG.CLBH'
      'left join CLHD on CGZLS.CLBH=CLHD.CLBH'
      'left join CLTC on CGZLS.CLBH=CLTC.CLBH')
    Left = 416
    Top = 176
    object Query1ZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
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
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object Query1USPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.0000'
    end
    object Query1VNPrice: TCurrencyField
      FieldName = 'VNPrice'
      DisplayFormat = '##,#0'
    end
    object Query1Memo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 100
    end
    object Query1KCBH: TStringField
      FieldName = 'KCBH'
      FixedChar = True
      Size = 6
    end
    object Query1okQty: TFloatField
      FieldName = 'okQty'
      DisplayFormat = '##,#0.00'
    end
    object Query1HGBH: TStringField
      FieldName = 'HGBH'
      FixedChar = True
      Size = 40
    end
    object Query1HGBH_HD: TStringField
      FieldName = 'HGBH_HD'
      FixedChar = True
      Size = 40
    end
    object Query1HGBH_TC: TStringField
      FieldName = 'HGBH_TC'
      FixedChar = True
      Size = 40
    end
  end
  object TmpQry: TQuery
    DatabaseName = 'DB'
    Left = 384
    Top = 176
  end
  object tempQ: TQuery
    DatabaseName = 'DB'
    DataSource = EntryList.DS3
    Left = 384
    Top = 208
  end
end
