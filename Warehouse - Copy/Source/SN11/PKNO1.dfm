object PKNO: TPKNO
  Left = 635
  Top = 625
  Width = 1098
  Height = 440
  Caption = 'PKNO'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1082
    Height = 105
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
      Width = 62
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Mat ID:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 202
      Top = 14
      Width = 62
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'HGLB:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 548
      Top = 60
      Width = 16
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
    object Label4: TLabel
      Left = 393
      Top = 56
      Width = 62
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RKDate:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 13
      Top = 56
      Width = 49
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RKNO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 186
      Top = 56
      Width = 76
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Declaretion:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 394
      Top = 18
      Width = 62
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CKBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 628
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
      TabOrder = 1
      OnClick = Button1Click
    end
    object EDIT1: TEdit
      Left = 66
      Top = 10
      Width = 109
      Height = 28
      CharCase = ecUpperCase
      Color = clScrollBar
      Enabled = False
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 266
      Top = 9
      Width = 62
      Height = 28
      CharCase = ecUpperCase
      Color = clScrollBar
      Enabled = False
      TabOrder = 2
    end
    object DTP1: TDateTimePicker
      Left = 461
      Top = 54
      Width = 89
      Height = 24
      Date = 39284.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677295636570000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DTP2: TDateTimePicker
      Left = 571
      Top = 54
      Width = 89
      Height = 24
      Date = 39284.677664201390000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677664201390000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object Edit3: TEdit
      Left = 66
      Top = 51
      Width = 107
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 5
    end
    object Edit4: TEdit
      Left = 266
      Top = 51
      Width = 107
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 6
    end
    object Edit5: TEdit
      Left = 460
      Top = 12
      Width = 62
      Height = 28
      CharCase = ecUpperCase
      Color = clScrollBar
      Enabled = False
      TabOrder = 7
    end
    object chk1: TCheckBox
      Left = 528
      Top = 16
      Width = 97
      Height = 17
      Caption = 'No OK'
      Checked = True
      State = cbChecked
      TabOrder = 8
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 105
    Width = 1082
    Height = 296
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
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
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
        FieldName = 'PKNO'
        Footers = <>
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'Declaretion'
        Footers = <>
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Title.Caption = 'Material Name'
        Width = 250
      end
      item
        EditButtons = <>
        FieldName = 'ckbh'
        Footers = <>
        Title.Caption = 'CKBH'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'hglb'
        Footers = <>
        Title.Caption = 'HGLB'
      end
      item
        EditButtons = <>
        FieldName = 'zsywjc'
        Footers = <>
        Title.Caption = 'Supplier Name'
        Width = 250
      end
      item
        EditButtons = <>
        FieldName = 'Qty_In'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Qty_Out'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Lack_Qty'
        Footers = <>
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 248
    Top = 168
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kcrks.*,Qty_In-isnull(qty_out,0)  as Lack_Qty'
      'from ('
      
        'select KCPK.PKNO,KCPK.Declaretion,kcrks.clbh,kcrk.ckbh,kcrk.hglb' +
        ',zsywjc,kcrks.Qty as Qty_In,sum(kcpkll.Qty) as Qty_Out'
      
        'from (select kcrks.rkno,kcrks.clbh,sum(kcrks.qty) as Qty from kc' +
        'rks group by kcrks.rkno,kcrks.clbh)kcrks '
      'left join kcrk on kcrks.rkno=kcrk.rkno'
      
        'left join kcpkll on kcpkll.PKNO=KCRK.RKNO and KCPKLL.CLBH=KCRKS.' +
        'CLBH'
      
        'left join kclls on kcpkll.LLNO=kclls.llno and kcpkll.CLBH=kclls.' +
        'CLBH '
      
        'left join kcll on kclls.llno=kcll.llno and kcll.ckbh=kcrk.CKBH a' +
        'nd kclls.HGLB=kcrk.HGLB and kclls.CLBH=KCPKLL.CLBH'
      'left join KCPK on kcrk.RKNO=kcpk.PKNO'
      'left join zszl on kcrk.ZSBH=zszl.zsdh'
      
        'where kcrks.clbh='#39'P210030266'#39' and kcrk.HGLB='#39'TC1'#39'  and kcrk.ckbh' +
        '='#39'CDC'#39' and kcrk.RKNO='#39'20231203020'#39
      
        'group by KCPK.PKNO,KCPK.Declaretion,kcrks.CLBH,kcrk.CKBH,kcrk.HG' +
        'LB,zsywjc,kcrks.Qty ) KCRKS'
      'where isnull(qty_out,0)<Qty_In'
      '')
    Left = 248
    Top = 208
    object Query1PKNO: TStringField
      FieldName = 'PKNO'
      FixedChar = True
      Size = 11
    end
    object Query1Declaretion: TStringField
      FieldName = 'Declaretion'
      FixedChar = True
      Size = 50
    end
    object Query1clbh: TStringField
      FieldName = 'clbh'
      FixedChar = True
      Size = 15
    end
    object Query1ywpm: TStringField
      FieldName = 'ywpm'
      Size = 200
    end
    object Query1ckbh: TStringField
      FieldName = 'ckbh'
      FixedChar = True
      Size = 4
    end
    object Query1hglb: TStringField
      FieldName = 'hglb'
      FixedChar = True
      Size = 5
    end
    object Query1zsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object Query1Qty_In: TCurrencyField
      FieldName = 'Qty_In'
    end
    object Query1Qty_Out: TCurrencyField
      FieldName = 'Qty_Out'
    end
    object Query1Lack_Qty: TCurrencyField
      FieldName = 'Lack_Qty'
    end
  end
end
