object RYCheckM_Det: TRYCheckM_Det
  Left = 275
  Top = 196
  Width = 726
  Height = 500
  Caption = 'RYCheckM_Det'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 20
  object Label8: TLabel
    Left = 808
    Top = 32
    Width = 66
    Height = 20
    Caption = 'No Finish'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 874
    Height = 81
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 89
      Height = 20
      Caption = 'Department:'
    end
    object Label2: TLabel
      Left = 256
      Top = 24
      Width = 39
      Height = 20
      Caption = 'Date:'
    end
    object Label3: TLabel
      Left = 432
      Top = 24
      Width = 18
      Height = 20
      Caption = 'To'
    end
    object Edit1: TEdit
      Left = 304
      Top = 24
      Width = 121
      Height = 28
      ReadOnly = True
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 456
      Top = 24
      Width = 121
      Height = 28
      CharCase = ecUpperCase
      ReadOnly = True
      TabOrder = 1
    end
    object Button1: TButton
      Left = 600
      Top = 24
      Width = 105
      Height = 33
      Caption = 'Exit'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit3: TEdit
      Left = 120
      Top = 24
      Width = 121
      Height = 28
      ReadOnly = True
      TabOrder = 3
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 81
    Width = 874
    Height = 368
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -16
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    Columns = <
      item
        EditButtons = <>
        FieldName = 'SCBH'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 112
      end
      item
        EditButtons = <>
        FieldName = 'xieming'
        Footers = <>
        Width = 172
      end
      item
        EditButtons = <>
        FieldName = 'article'
        Footers = <>
        Width = 151
      end
      item
        EditButtons = <>
        FieldName = 'ProQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'pairs'
        Footer.ValueType = fvtSum
        Footers = <>
      end>
  end
  object Query1: TQuery
    AfterOpen = Query1AfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select SCBBS.SCBH,sum(isnull(SCBBS.Qty,0)) as ProQty,ddzl.articl' +
        'e,xxzl.xieming,max(ddzl.pairs) as pairs'
      'from SCBB'
      'left join SCBBS on SCBBS.ProNO=SCBB.ProNO'
      'left join SCSJ on SCSJ.XH=SCBB.SJXH'
      'left join zlzl on zlzl.zlbh=SCBBS.SCBH'
      'left join ddzl on ddzl.ddbh=zlzl.ddbh'
      'left join xxzl on xxzl.article=ddzl.article'
      'where ddzl.khbh='#39'0038'#39' and SCBBS.GXLB='#39'C+S'#39' '
      'group by SCBBS.SCBH,ddzl.article,xxzl.xieming'
      '')
    Left = 496
    Top = 160
    object Query1SCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object Query1ProQty: TFloatField
      FieldName = 'ProQty'
    end
    object Query1article: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object Query1xieming: TStringField
      FieldName = 'xieming'
      FixedChar = True
      Size = 50
    end
    object Query1pairs: TIntegerField
      FieldName = 'pairs'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 536
    Top = 160
  end
end
