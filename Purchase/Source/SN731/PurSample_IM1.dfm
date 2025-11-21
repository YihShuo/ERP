object PurSample_IM: TPurSample_IM
  Left = 279
  Top = 247
  Width = 983
  Height = 500
  BorderIcons = [biSystemMenu]
  Caption = 'PurSample_IM'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 975
    Height = 81
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 216
      Top = 14
      Width = 43
      Height = 16
      Caption = 'MatNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 12
      Top = 48
      Width = 62
      Height = 16
      Caption = 'MatName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 9
      Top = 12
      Width = 65
      Height = 16
      Caption = 'Merge NO:'
    end
    object Label4: TLabel
      Left = 334
      Top = 48
      Width = 35
      Height = 16
      Caption = 'Supp:'
    end
    object Button1: TButton
      Left = 554
      Top = 41
      Width = 73
      Height = 33
      Caption = 'Query'
      TabOrder = 4
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 75
      Top = 45
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = Edit2KeyPress
    end
    object EDIT1: TEdit
      Left = 261
      Top = 10
      Width = 196
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = EDIT1KeyPress
    end
    object Edit3: TEdit
      Left = 163
      Top = 45
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyPress = Edit3KeyPress
    end
    object Edit4: TEdit
      Left = 243
      Top = 45
      Width = 81
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Button2: TButton
      Left = 637
      Top = 2
      Width = 57
      Height = 33
      Caption = 'Baby'
      TabOrder = 5
      Visible = False
      OnClick = Button2Click
    end
    object CB2: TCheckBox
      Left = 466
      Top = 21
      Width = 65
      Height = 17
      Caption = 'Mother'
      TabOrder = 6
    end
    object Button3: TButton
      Left = 552
      Top = 2
      Width = 75
      Height = 33
      Caption = 'Copy'
      TabOrder = 7
      OnClick = Button3Click
    end
    object Edit7: TEdit
      Left = 77
      Top = 9
      Width = 132
      Height = 24
      Color = clYellow
      TabOrder = 8
    end
    object Edit9: TEdit
      Left = 372
      Top = 45
      Width = 149
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 9
      OnKeyPress = Edit8KeyPress
    end
    object Button4: TButton
      Left = 520
      Top = 42
      Width = 17
      Height = 31
      Caption = '...'
      TabOrder = 10
      OnClick = Button4Click
    end
    object CKmine: TCheckBox
      Left = 466
      Top = 4
      Width = 65
      Height = 17
      Caption = 'Mine'
      Checked = True
      State = cbChecked
      TabOrder = 11
    end
    object Edit8: TEdit
      Left = 636
      Top = 45
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 12
      Visible = False
      OnKeyPress = Edit8KeyPress
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 81
    Width = 975
    Height = 388
    Align = alClient
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
    FooterRowCount = 1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
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
        FieldName = 'CLBH'
        Footers = <
          item
            FieldName = 'CLBH'
            ValueType = fvtCount
          end>
        Title.Caption = 'Mat No'
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = 'Mat Name'
        Width = 333
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = 'Part ID'
        Width = 46
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Footers = <>
        Title.Caption = 'Usage'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'okQty'
        Footers = <>
        Title.Caption = 'PO Qty'
      end
      item
        EditButtons = <>
        FieldName = 'CSBH'
        Footers = <>
        Title.Caption = 'SuppNO'
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        Title.Caption = 'Supplier'
      end
      item
        EditButtons = <>
        FieldName = 'YPZLBH'
        Footers = <>
        Title.Caption = 'MergoNo'
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 128
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select distinct YPZLZLS2.YPZLBH,YPZLZLS2.CLBH,YPZLZLS2.CLSL,'
      'CLZL.YWPM,CLZL.DWBH,CGZLSS.Qty as okQty , CSBH, ZSZL.ZSYWJC  '
      'from YPZLZLS2 left join CLZL on CLZL.CLDH=YPZLZLs2.CLBH'
      'left join ZSZL on ZSZL.ZSDH=YPZLZLs2.CSBH'
      
        'left join CGZLSS on CGZLSS.ZLBH=YPZLZLS2.YPZLBH and CGZLSS.CLBH=' +
        'YPZLZLS2.CLBH'
      'where 1=2')
    Left = 424
    Top = 160
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
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
    object Query1CLSL: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '#,##0.0'
    end
    object Query1okQty: TCurrencyField
      FieldName = 'okQty'
      DisplayFormat = '#,##0.0'
    end
    object Query1CSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object Query1ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Query1YPZLBH: TStringField
      FieldName = 'YPZLBH'
      FixedChar = True
      Size = 15
    end
  end
  object tmpQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select distinct YPZLZLS2.YPZLBH,YPZLZLS2.CLBH,YPZLZLS2.CLSL,'
      'CLZL.YWPM,CLZL.DWBH,CGZLSS.Qty as okQty , CSBH, ZSZL.ZSYWJC  '
      'from YPZLZLS2 left join CLZL on CLZL.CLDH=YPZLZLs2.CLBH'
      'left join ZSZL on ZSZL.ZSDH=YPZLZLs2.CSBH'
      
        'left join CGZLSS on CGZLSS.ZLBH=YPZLZLS2.YPZLBH and CGZLSS.CLBH=' +
        'YPZLZLS2.CLBH'
      'where 1=2')
    Left = 456
    Top = 160
  end
end
