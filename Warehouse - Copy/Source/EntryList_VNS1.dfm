object EntryList_VNS: TEntryList_VNS
  Left = 225
  Top = 210
  Width = 1386
  Height = 500
  BorderIcons = [biSystemMenu]
  Caption = 'EntryList_VNS'
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
    Width = 1370
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
      Top = 13
      Width = 71
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
      Top = 13
      Width = 73
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
      Left = 403
      Top = 12
      Width = 86
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'OrdNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 584
      Top = 13
      Width = 88
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
      Left = 839
      Top = 5
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
      Left = 72
      Top = 8
      Width = 129
      Height = 28
      CharCase = ecUpperCase
      Color = 12320767
      Enabled = False
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 275
      Top = 8
      Width = 129
      Height = 28
      Color = 12320767
      ReadOnly = True
      TabOrder = 2
    end
    object Button2: TButton
      Left = 930
      Top = 5
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
    object OrderEdit: TEdit
      Left = 489
      Top = 7
      Width = 96
      Height = 28
      Color = clWhite
      TabOrder = 4
    end
    object MatEdit: TEdit
      Left = 673
      Top = 7
      Width = 96
      Height = 28
      Color = clWhite
      TabOrder = 5
    end
    object CheckBox1: TCheckBox
      Left = 772
      Top = 17
      Width = 62
      Height = 17
      Caption = 'No ok'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 1370
    Height = 412
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
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = 'MatNo'
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
        FieldName = 'ZLBH'
        Footers = <>
        Title.Caption = 'OrderNo'
        Width = 90
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
        FieldName = 'CFMDate'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'KCBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = 'MatName'
        Width = 300
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
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'HGBH1'
        Footers = <>
        Title.Caption = 'HaiQuan1'
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'HGBH_TC1'
        Footers = <>
        Title.Caption = 'HaiQuan_TC1'
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'HGBH_HD1'
        Footers = <>
        Title.Caption = 'MaHoaDon1'
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'HGBH_NQ'
        Footers = <>
        Title.Caption = 'HaiQuan_NQ'
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'HGBH_NKNQ'
        Footers = <>
        Title.Caption = 'HaiQuan_NKNQ'
        Width = 110
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 528
    Top = 136
  end
  object Query1: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select CGZLS.CGNO,CGZLS.CLBH,CGZLS.USPrice,CGZLS.VNPrice,'
      'max(CGZLSS.CFMDate) as CFMDate,CGZL.ZSBH,CLZL.YWPM,CGZLSS.ZLBH,'
      
        ' isnull(sum(CGZLSS.qty),0) as Qty, CLZL.DWBH,KCZLS.KCBH,CGZLS.Qt' +
        'y as okQty,CLHG.HGBH,CLHD.HGBH as HGBH_HD,CLTC.HGBH as HGBH_TC,C' +
        'LNKNQ.HGBH as HGBH_NKNQ'
      'from CGZLS'
      'left join CLZL on CLZL.CLDH=CGZLS.CLBH'
      'left join CGZL on CGZL.CGNO=CGZLS.CGNO'
      'left join KCZLS on KCZLS.CLBH=CGZLS.CLBH'
      
        'left join CGZLSS on CGZL.CGNO=CGZLSS.CGNO and CGZLSS.CLBH=CGZLS.' +
        'CLBH'
      'left join clhg on cgzls.clbh=clhg.CLBH'
      'left join clhd on cgzls.clbh=clhd.clbh'
      'left join cltc on cgzls.clbh=cltc.clbh'
      'left join CLNKNQ on CLNKNQ.CLBH=CGZLS.CLBH'
      'where CGZLS.CGNO like '#39'2020111%'#39
      'group by CGZLS.CGNO,CGZLS.CLBH,CGZLSS.ZLBH,CGZL.ZSBH,CLZL.YWPM, '
      
        'CLZL.DWBH,KCZLS.KCBH,CGZLS.Qty,CGZLS.USPrice,CGZLS.VNPrice,CLHG.' +
        'HGBH,CLHD.HGBH,CLTC.HGBH,CLNKNQ.HGBH'
      '')
    UpdateObject = UpdateSQL1
    Left = 496
    Top = 136
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
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1USPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.0000'
    end
    object Query1VNPrice: TCurrencyField
      FieldName = 'VNPrice'
      DisplayFormat = '##,#0'
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object Query1okQty: TCurrencyField
      FieldName = 'okQty'
      DisplayFormat = '##,#0.00'
    end
    object Query1CFMDate: TDateTimeField
      FieldName = 'CFMDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1ZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object Query1KCBH: TStringField
      FieldName = 'KCBH'
      FixedChar = True
      Size = 6
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
    object Query1HGBH1: TStringField
      FieldName = 'HGBH1'
      Size = 40
    end
    object Query1HGBH_HD1: TStringField
      FieldName = 'HGBH_HD1'
      Size = 40
    end
    object Query1HGBH_TC1: TStringField
      FieldName = 'HGBH_TC1'
      Size = 40
    end
    object Query1HGBH_NQ: TStringField
      FieldName = 'HGBH_NQ'
      Size = 40
    end
    object Query1HGBH_NKNQ: TStringField
      FieldName = 'HGBH_NKNQ'
      FixedChar = True
      Size = 40
    end
    object Query1CWBH: TStringField
      FieldName = 'CWBH'
    end
  end
  object TmpQry: TQuery
    DatabaseName = 'DB'
    Left = 456
    Top = 136
  end
  object UpdateSQL1: TUpdateSQL
    Left = 496
    Top = 168
  end
  object tempQ: TQuery
    DatabaseName = 'DB'
    DataSource = EntryList.DS3
    Left = 456
    Top = 168
  end
end
