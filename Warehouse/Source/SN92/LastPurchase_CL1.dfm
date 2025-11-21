object LastPurchase_CL: TLastPurchase_CL
  Left = 311
  Top = 167
  Width = 688
  Height = 354
  Caption = 'LastPurchase_CL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 672
    Height = 44
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 212
      Top = 12
      Width = 51
      Height = 20
      Caption = 'MatNo:'
    end
    object Label2: TLabel
      Left = 411
      Top = 12
      Width = 58
      Height = 20
      Caption = 'LastNO:'
    end
    object lbl2: TLabel
      Left = 22
      Top = 9
      Width = 45
      Height = 20
      Caption = 'RKNO'
    end
    object Button1: TButton
      Left = 591
      Top = 8
      Width = 73
      Height = 28
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object MatNoEdit: TEdit
      Left = 270
      Top = 9
      Width = 105
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 0
      Text = 'VD'
    end
    object MatNMEdit: TEdit
      Left = 475
      Top = 8
      Width = 97
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object RKNOEdit: TEdit
      Left = 70
      Top = 7
      Width = 123
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 3
    end
  end
  object dbgrdh1: TDBGridEh
    Left = 0
    Top = 44
    Width = 672
    Height = 272
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
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = dbgrdh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'RKNO'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 91
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = 'MatNO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 86
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Title.Caption = 'Mat Name'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 384
      end
      item
        EditButtons = <>
        FieldName = 'dwbh'
        Footers = <>
        Title.Caption = 'Unit'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 51
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
      
        'select IsNull(KCRK.RKNO,'#39'ZZZZZZZZZZ'#39') as RKNO,KCRK.GSBH,CLZL.cld' +
        'h,CLZL.ywpm,CLZL.dwbh from CLZL '
      'left join KCRKS on KCRKS.CLBH=CLZL.CLDH'
      'left join KCRK on KCRK.RKNO=KCRKS.RKNO'
      'where CLZL.CLDH like '#39'VD%'#39)
    Left = 424
    Top = 160
    object Query1RKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
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
  end
end
