object EntryList_Sample: TEntryList_Sample
  Left = 233
  Top = 337
  Width = 1730
  Height = 477
  BorderIcons = [biSystemMenu]
  Caption = 'EntryList_Sample'
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1714
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 28
      Top = 16
      Width = 42
      Height = 16
      Alignment = taRightJustify
      Caption = 'CGNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 200
      Top = 16
      Width = 96
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
      Left = 404
      Top = 8
      Width = 89
      Height = 33
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 72
      Top = 11
      Width = 129
      Height = 28
      Color = 12320767
      ReadOnly = True
      TabOrder = 1
      OnKeyPress = Edit2KeyPress
    end
    object Button2: TButton
      Left = 505
      Top = 7
      Width = 89
      Height = 33
      Caption = 'Copy'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button2Click
    end
    object MatEdit: TEdit
      Left = 297
      Top = 11
      Width = 96
      Height = 28
      Color = clWhite
      TabOrder = 3
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 1714
    Height = 389
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
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CGNO'
        Footers = <>
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = 'MatNo'
        Width = 96
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
        Width = 99
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'okQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 65
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
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = 'MatName'
        Width = 276
      end
      item
        EditButtons = <>
        FieldName = 'HGBH'
        Footers = <>
        Title.Caption = 'HaiQuan'
        Width = 100
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
        Title.Caption = 'Ma Hoa Don'
        Width = 100
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
        Width = 108
      end
      item
        EditButtons = <>
        FieldName = 'HGBH_KD'
        Footers = <>
        Title.Caption = 'HaiQuan_KD'
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'HGBH_KD1'
        Footers = <>
        Title.Caption = 'HaiQuan_KD1'
        Width = 90
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
      'left join CLHG on CLHG.CLBH=CGZLS.CLBH'
      'left join CLHD on CLHD.CLBH=CGZLS.CLBH'
      'left join CLTC on CLTC.CLBH=CGZLS.CLBH'
      'left join CLNKNQ on CLNKNQ.CLBH=CGZLS.CLBH'
      'where cgzls.cgno like '#39'202012%'#39
      'group by CGZLS.CGNO,CGZLS.CLBH,CGZLSS.ZLBH,CGZL.ZSBH,CLZL.YWPM, '
      
        'CLZL.DWBH,KCZLS.KCBH,CGZLS.Qty,CGZLS.USPrice,CGZLS.VNPrice,CLHG.' +
        'HGBH,CLHD.HGBH,CLTC.HGBH,CLNKNQ.HGBH')
    Left = 424
    Top = 160
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
    object Query1USPrice: TFloatField
      FieldName = 'USPrice'
    end
    object Query1VNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object Query1CFMDate: TDateTimeField
      FieldName = 'CFMDate'
    end
    object Query1ZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1KCBH: TStringField
      FieldName = 'KCBH'
      FixedChar = True
      Size = 10
    end
    object Query1okQty: TCurrencyField
      FieldName = 'okQty'
      DisplayFormat = '##,#0.00'
    end
    object Query1CNO: TStringField
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
    object Query1HGBH_KD: TStringField
      FieldName = 'HGBH_KD'
      Size = 40
    end
    object Query1HGBH_KD1: TStringField
      FieldName = 'HGBH_KD1'
      Size = 40
    end
    object Query1CWBH: TStringField
      FieldName = 'CWBH'
    end
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 392
    Top = 160
  end
end
