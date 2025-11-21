object TWShippingOrderList: TTWShippingOrderList
  Left = 327
  Top = 245
  Width = 1163
  Height = 508
  Caption = 'TWShippingOrderList'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
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
    Width = 1155
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label4: TLabel
      Left = 35
      Top = 45
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Con_No.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 235
      Top = 45
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Logo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btnQuery: TButton
      Left = 464
      Top = 37
      Width = 78
      Height = 28
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnQueryClick
    end
    object btnExcel: TButton
      Left = 550
      Top = 37
      Width = 78
      Height = 28
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnExcelClick
    end
    object Con_NOEdit: TEdit
      Left = 108
      Top = 41
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Con_DateCK: TCheckBox
      Left = 16
      Top = 12
      Width = 89
      Height = 17
      Caption = 'Con_Date'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 3
    end
    object DTP1: TDateTimePicker
      Left = 108
      Top = 7
      Width = 97
      Height = 24
      Date = 43409.628376527780000000
      Time = 43409.628376527780000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DTP2: TDateTimePicker
      Left = 212
      Top = 8
      Width = 101
      Height = 24
      Date = 43409.628376527780000000
      Time = 43409.628376527780000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object LogoEdit: TEdit
      Left = 308
      Top = 41
      Width = 121
      Height = 24
      CharCase = ecUpperCase
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
    Top = 73
    Width = 1155
    Height = 404
    Align = alClient
    DataSource = DS_INVOICE_M
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
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'con_date'
        Footers = <>
        Title.Caption = 'Con_date'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'con_no'
        Footers = <>
        Title.Caption = 'Con_no'
        Width = 89
      end
      item
        EditButtons = <>
        FieldName = 'XH'
        Footers = <>
        Title.Caption = 'Item'
      end
      item
        EditButtons = <>
        FieldName = 'clpm'
        Footer.FieldName = 'clpm'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = 'Name'
        Width = 329
      end
      item
        EditButtons = <>
        FieldName = 'dwbh'
        Footers = <>
        Title.Caption = 'Unit'
      end
      item
        EditButtons = <>
        FieldName = 'ck_qty'
        Footers = <>
        Title.Caption = 'Q/ctn.'
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'ctn'
        Footers = <>
        Title.Caption = 'Ctns'
        Width = 38
      end
      item
        EditButtons = <>
        FieldName = 'Quantity'
        Footers = <>
        Width = 51
      end
      item
        EditButtons = <>
        FieldName = 'No_SE'
        Footers = <>
        Title.Caption = 'C/NO'
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'nw'
        Footers = <>
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'tnw'
        Footers = <>
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'gw'
        Footers = <>
        Width = 41
      end
      item
        EditButtons = <>
        FieldName = 'tgw'
        Footers = <>
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'py_dj'
        Footers = <>
        Title.Caption = 'Unit-Price'
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'py_tdj'
        Footers = <>
        Title.Caption = 'Amount'
        Width = 54
      end
      item
        EditButtons = <>
        FieldName = 'Memo'
        Footers = <>
        Title.Caption = 'Note'
        Width = 285
      end
      item
        EditButtons = <>
        FieldName = 'pp'
        Footers = <>
        Title.Caption = 'Logo'
        Width = 104
      end
      item
        EditButtons = <>
        FieldName = 'pzbh'
        Footers = <>
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'made'
        Footers = <>
        Width = 60
      end>
  end
  object INVOICETW: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select HGZL.con_date,hgzls.con_no,hgzls.XH, hgzls.clpm,hgzls.dwb' +
        'h,hgzls.ck_qty,'
      
        '       Case when hgzls.ctn<>0 then hgzls.ctn else null end ctn ,' +
        'case when hgzls.ctn<>0 then hgzls.ck_qty*hgzls.ctn else hgzls.ck' +
        '_qty end Quantity,'
      
        #9'      hgzls.no_s,hgzls.No_e,case when hgzls.ctn<>0 then hgzls.m' +
        'ark+'#39' '#39'+Convert(varchar,hgzls.no_s)+'#39'-'#39'+hgzls.mark+'#39' '#39'+convert(v' +
        'archar,hgzls.no_e) else null  end as No_SE,'
      
        #9'      case when hgzls.nw<>0 then hgzls.nw else null end as nw,c' +
        'ase when hgzls.nw<>0 then hgzls.nw*hgzls.ctn else null end as tn' +
        'w, '
      
        #9'      case when hgzls.gw<>0 then hgzls.gw else null end as gw,c' +
        'ase when hgzls.nw<>0 then hgzls.gw*hgzls.ctn else null end as tg' +
        'w, '
      
        '            hgzls.py_dj,hgzls.py_dj*(case when hgzls.ctn<>0 then' +
        ' hgzls.ck_qty*hgzls.ctn else hgzls.ck_qty end) as py_tdj,exzl.ex' +
        'lb,'
      
        #9'      Case when exzl.exlb='#39'A'#39' then exzls.CLDH+exzls.wide+hgzls.' +
        'memo else clzl.zwpm+hgzls.memo end as Memo,'
      
        #9'      EXZLS.pp,EXZLS.pzbh,EXZLS.made,hgzls.clbh,EXZLS.cldh as e' +
        'x_cldh'
      'FROM hgzls  '
      'LEFT JOIN HGZL ON hgzls.con_no = hgzl.con_no '
      
        'LEFT JOIN EXZLS  ON substring(hgzls.clbh,1,10) = EXZLS.exno and ' +
        'substring(hgzls.clbh,11,3) = EXZLS.xh '
      'LEFT JOIN clzl  ON EXZLS.cldh = clzl.cldh '
      'LEFT JOIN exzl  ON EXZLS.exno = exzl.exno '
      'where 1=1 '
      ' and hgzls.con_no like '#39'1110610-6A1%'#39' '
      ' and HGZL.CQDH in ('#39'FNG'#39','#39'FNS'#39')'
      'ORDER BY HGZL.con_date,hgzls.con_no , hgzls.xh')
    Left = 256
    Top = 168
    object INVOICETWcon_date: TStringField
      FieldName = 'con_date'
      FixedChar = True
      Size = 8
    end
    object INVOICETWcon_no: TStringField
      FieldName = 'con_no'
      FixedChar = True
    end
    object INVOICETWXH: TStringField
      FieldName = 'XH'
      FixedChar = True
      Size = 4
    end
    object INVOICETWclpm: TStringField
      FieldName = 'clpm'
      FixedChar = True
      Size = 200
    end
    object INVOICETWdwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object INVOICETWck_qty: TFloatField
      FieldName = 'ck_qty'
    end
    object INVOICETWctn: TSmallintField
      FieldName = 'ctn'
    end
    object INVOICETWQuantity: TFloatField
      FieldName = 'Quantity'
    end
    object INVOICETWNo_SE: TStringField
      FieldName = 'No_SE'
      FixedChar = True
      Size = 75
    end
    object INVOICETWnw: TFloatField
      FieldName = 'nw'
    end
    object INVOICETWtnw: TFloatField
      FieldName = 'tnw'
    end
    object INVOICETWgw: TFloatField
      FieldName = 'gw'
    end
    object INVOICETWtgw: TFloatField
      FieldName = 'tgw'
    end
    object INVOICETWpy_dj: TFloatField
      FieldName = 'py_dj'
    end
    object INVOICETWpy_tdj: TFloatField
      FieldName = 'py_tdj'
    end
    object INVOICETWMemo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 255
    end
    object INVOICETWpp: TStringField
      FieldName = 'pp'
      FixedChar = True
    end
    object INVOICETWexlb: TStringField
      FieldName = 'exlb'
      FixedChar = True
      Size = 1
    end
    object INVOICETWNo_e: TSmallintField
      FieldName = 'No_e'
    end
    object INVOICETWno_s: TSmallintField
      FieldName = 'no_s'
    end
    object INVOICETWpzbh: TStringField
      FieldName = 'pzbh'
      FixedChar = True
      Size = 100
    end
    object INVOICETWmade: TStringField
      FieldName = 'made'
      FixedChar = True
    end
    object INVOICETWclbh: TStringField
      FieldName = 'clbh'
      FixedChar = True
      Size = 13
    end
    object INVOICETWex_cldh: TStringField
      FieldName = 'ex_cldh'
      FixedChar = True
      Size = 200
    end
  end
  object DS_INVOICE_M: TDataSource
    DataSet = INVOICETW
    Left = 288
    Top = 168
  end
end
