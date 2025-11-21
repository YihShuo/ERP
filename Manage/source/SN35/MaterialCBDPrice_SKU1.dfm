object MaterialCBDPrice_SKU: TMaterialCBDPrice_SKU
  Left = 396
  Top = 204
  BorderStyle = bsDialog
  Caption = 'MaterialCBDPrice_SKU'
  ClientHeight = 274
  ClientWidth = 560
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 49
    Width = 560
    Height = 225
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
    FooterFont.Height = -16
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Article'
        Footer.FieldName = 'Article'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 93
      end
      item
        EditButtons = <>
        FieldName = 'XieXing'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Shehao'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'BWBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CSBH'
        Footers = <>
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 560
    Height = 49
    Align = alTop
    TabOrder = 1
    object Label12: TLabel
      Left = 8
      Top = 16
      Width = 75
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
    object Label2: TLabel
      Left = 200
      Top = 15
      Width = 59
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
    object Button1: TButton
      Left = 448
      Top = 13
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 0
      OnClick = Button1Click
    end
    object CLBHEdit: TEdit
      Left = 85
      Top = 12
      Width = 109
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object SupIDEdit: TEdit
      Left = 261
      Top = 11
      Width = 109
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
  end
  object CLZLQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        ' select XXZL.Article,XXZLS.XieXing,XXZLS.Shehao,XXZLS.BWBH,XXZLS' +
        '.CLBH,XXZLS.CSBH,XXZLS.BWLB,XXZLS.USERDATE'
      ' from XXZLS '
      
        ' left join XXZL on XXZLS.XieXing=XXZL.XieXing and XXZLS.SheHao=X' +
        'XZL.SheHao'
      
        ' where XXZL.JiJie like '#39'%'#39' and XXZL.KHDH='#39'036'#39' and XXZLS.CSBH li' +
        'ke '#39'JNG%'#39
      ' union all '
      
        ' select XXZL.Article,XXZLS.XieXing,XXZLS.Shehao,XXZLS.BWBH,CLZHZ' +
        'L.CLDH1 as CLBH,CLZHZL.ZSDH as CSBH,XXZLS.BWLB,CLZHZL.USERDATE'
      ' from XXZLS '
      ' inner join CLZHZL on CLZHZL.CLDH=XXZLS.CLBH'
      
        ' left join XXZL on XXZLS.XieXing=XXZL.XieXing and XXZLS.SheHao=X' +
        'XZL.SheHao  '
      
        ' where XXZL.JiJie like'#39'%'#39' and XXZL.KHDH='#39'036'#39' and CLZHZL.ZSDH li' +
        'ke '#39'JNG%'#39
      ' union all '
      
        ' select XXZLS.Article,XXZLS.XieXing,XXZLS.Shehao,XXZLS.BWBH,CLZH' +
        'ZL.CLDH1 as CLBH,CLZHZL.ZSDH as CSBH,XXZLS.BWLB,CLZHZL.USERDATE ' +
        ' from ('
      
        ' select XXZL.Article,XXZLS.XieXing,XXZLS.Shehao,XXZLS.BWBH,CLZHZ' +
        'L.CLDH1 as CLBH,XXZLS.BWLB '
      ' from XXZLS '
      ' inner join CLZHZL on CLZHZL.CLDH=XXZLS.CLBH '
      
        '  left join XXZL on XXZLS.XieXing=XXZL.XieXing and XXZLS.SheHao=' +
        'XXZL.SheHao  '
      ' where XXZL.JiJie like '#39'%'#39' and XXZL.KHDH='#39'036'#39' ) XXZLS '
      ' inner join CLZHZL on CLZHZL.CLDH=XXZLS.CLBH  '
      ' where CLZHZL.ZSDH like '#39'JNG%'#39)
    Left = 284
    Top = 112
    object CLZLQryArticle: TStringField
      DisplayWidth = 15
      FieldName = 'Article'
      FixedChar = True
    end
    object CLZLQryXieXing: TStringField
      DisplayWidth = 15
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object CLZLQryShehao: TStringField
      DisplayWidth = 7
      FieldName = 'Shehao'
      FixedChar = True
      Size = 5
    end
    object CLZLQryBWBH: TStringField
      DisplayWidth = 7
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object CLZLQryCLBH: TStringField
      DisplayWidth = 15
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object CLZLQryCSBH: TStringField
      DisplayWidth = 8
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object CLZLQryBWLB: TStringField
      DisplayWidth = 5
      FieldName = 'BWLB'
      FixedChar = True
      Size = 1
    end
    object CLZLQryUSERDATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'USERDATE'
    end
  end
  object DS1: TDataSource
    DataSet = CLZLQry
    Left = 284
    Top = 144
  end
end
