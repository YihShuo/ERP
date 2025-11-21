object ShippingUsage: TShippingUsage
  Left = 292
  Top = 240
  Width = 1495
  Height = 514
  Caption = 'ShippingUsage'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object PC1: TPageControl
    Left = 0
    Top = 0
    Width = 1479
    Height = 475
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'DINH MUC HQ'
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1471
        Height = 113
        Align = alTop
        TabOrder = 0
        object Label2: TLabel
          Left = 55
          Top = 11
          Width = 29
          Height = 16
          Caption = 'RY#:'
        end
        object Label1: TLabel
          Left = 39
          Top = 43
          Width = 45
          Height = 16
          Caption = 'Ma HQ:'
        end
        object Label3: TLabel
          Left = 36
          Top = 75
          Width = 47
          Height = 16
          Caption = 'Ghi chu:'
        end
        object Button1: TButton
          Left = 491
          Top = 22
          Width = 89
          Height = 33
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = Button1Click
        end
        object RY: TEdit
          Left = 89
          Top = 8
          Width = 376
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 1
          OnKeyUp = RYKeyUp
        end
        object Button2: TButton
          Left = 587
          Top = 22
          Width = 89
          Height = 33
          Caption = 'Excel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = Button2Click
        end
        object MaHQ: TEdit
          Left = 89
          Top = 40
          Width = 376
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 3
          OnKeyUp = MaHQKeyUp
        end
        object Button4: TButton
          Left = 745
          Top = 20
          Width = 89
          Height = 33
          Caption = 'Import'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = Button4Click
        end
        object Memo: TEdit
          Left = 89
          Top = 72
          Width = 376
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 5
          OnKeyUp = MaHQKeyUp
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 113
        Width = 1471
        Height = 331
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
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DDBH'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'RY'
          end
          item
            EditButtons = <>
            FieldName = 'CNO'
            Footers = <>
            Title.Caption = 'MA HQ'
          end
          item
            EditButtons = <>
            FieldName = 'Usage'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'DM 1 DOI'
          end
          item
            EditButtons = <>
            FieldName = 'Pairs'
            Footers = <>
            Title.Caption = 'SO DOI'
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'TONG LUONG DINH MUC'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'KCLLS_CNO'
            Footers = <>
            Title.Caption = 'MA HQ KHO XUAT'
          end
          item
            EditButtons = <>
            FieldName = 'KCLLS_Qty'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'TONG KHO XUAT'
            Width = 105
          end
          item
            EditButtons = <>
            FieldName = 'Memo'
            Footers = <>
            Title.Caption = 'GHI CHU'
            Width = 120
          end>
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select HG_Usage.DDBH,HG_Usage.CNO,HG_Usage.Usage,HG_Usage.Pairs,' +
        'HG_Usage.Qty,KCLLS.CNO as KCLLS_CNO,KCLLS.Qty as KCLLS_Qty'
      'from HG_Usage '
      'left join (select kclls.SCBH,CNO,sum(qty) as Qty '
      #9#9#9'from kclls_1416 kclls left join kcll_1416 KCll'
      #9#9#9'on kclls.LLNO=kcll.LLNO'
      #9#9#9'where KCLL.CFMID<>'#39'NO'#39'  and kclls.SCBH like '#39'AL1511-126'#39
      
        #9#9#9'group by kclls.SCBH,CNO) KCLLS on HG_Usage.DDBH=KCLLS.SCBH an' +
        'd HG_Usage.CNO=KCLLS.CNO'
      'where HG_Usage.DDBH like '#39'AL1511-126'#39)
    Left = 237
    Top = 213
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.HG_Usage.DDBH'
      FixedChar = True
    end
    object Query1CNO: TStringField
      FieldName = 'CNO'
      Origin = 'DB.HG_Usage.CNO'
      FixedChar = True
      Size = 15
    end
    object Query1Usage: TFloatField
      FieldName = 'Usage'
      Origin = 'DB.HG_Usage.Usage'
      DisplayFormat = '##,#0.0000000'
    end
    object Query1Pairs: TFloatField
      FieldName = 'Pairs'
      Origin = 'DB.HG_Usage.Pairs'
    end
    object Query1Qty: TFloatField
      FieldName = 'Qty'
      Origin = 'DB.HG_Usage.Qty'
      DisplayFormat = '##,#0.00'
    end
    object Query1KCLLS_CNO: TStringField
      FieldName = 'KCLLS_CNO'
      FixedChar = True
      Size = 15
    end
    object Query1KCLLS_Qty: TFloatField
      FieldName = 'KCLLS_Qty'
      DisplayFormat = '##,#0.000000'
    end
    object Query1Memo: TStringField
      FieldName = 'Memo'
      Size = 50
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 237
    Top = 245
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select KCRK.*,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH from ('
      
        'select IsNull(DOCNO,'#39#39') as DOCNO,IsNull(Declaretion,'#39#39') as Decla' +
        'retion,Export,CLDH,CNO,Sum(RKQty) as Qty, '
      
        '        Sum(Case when KCRK.HGLB='#39'NK'#39' then RKQty else 0 end ) as ' +
        'NK, '
      
        '        Sum(Case when KCRK.HGLB='#39'TC'#39' then RKQty else 0 end ) as ' +
        'TC, '
      
        '        Sum(Case when KCRK.HGLB='#39'HD'#39' then RKQty else 0 end ) as ' +
        'HD, '
      
        '        Sum(Case when KCRK.HGLB='#39'KD'#39' then RKQty else 0 end ) as ' +
        'KD, '
      
        '        Sum(Case when KCRK.HGLB='#39'XT'#39' then RKQty else 0 end ) as ' +
        'XT, '
      
        '        Sum(Case when KCRK.HGLB='#39'GC'#39' then RKQty else 0 end ) as ' +
        'GC, '
      
        '        Sum(Case when KCRK.HGLB='#39'ZZZZ'#39' then RKQty else 0 end ) a' +
        's ZZ  '
      'from ('
      'select * from ('
      
        'Select  KCRKS.RKNO,KCRKS.CLBH as CLDH,KCRKS.CGBH,KCRKS.RKSB,KCRK' +
        'S.CNO,Max(KCRK.DOCNO) as DOCNO, Max(KCPK.Declaretion) as Declare' +
        'tion,Max(KCPK.Export) as Export,IsNull(KCRK.HGLB,'#39'ZZZZ'#39') as HGLB' +
        ',Sum(KCRKS.Qty) as RKQty'
      'from KCRKS'
      'inner join KCRK on KCRK.RKNO=KCRKS.RKNO'
      'left join KCPK  on KCPK.PKNO=KCRK.RKNO '
      
        'where KCRK.USERDATE>='#39'2017/06/01'#39' and KCRK.CKBH='#39'VA12'#39'  and KCPK' +
        '.Declaretion=:Declaretion and KCRKS.CLBH like '#39'%'#39' '
      'and KCRK.USERDATE>='#39'2021/04/05'#39' and KCRK.USERDATE<'#39'2021/05/05'#39' '
      'and KCRKS.CLBH like '#39'%'#39' '
      
        'Group by KCRKS.RKNO,KCRKS.CLBH,KCRKS.CGBH,KCRKS.RKSB,KCRKS.CNO,K' +
        'CRK.HGLB'
      ') KCRKS'
      'where KCRKS.CLDH like '#39'%'#39'  ) KCRK'
      'Group by DOCNO,Declaretion,Export,CLDH,CNO ) KCRK'
      'Left join CLZL on CLZL.CLDH=KCRK.CLDH'
      
        'where KCRK.Declaretion<>'#39#39' and KCRK.DOCNO=:DOCNO  and KCRK.Decla' +
        'retion=:Declaretion and KCRK.CNO=:CNO'
      ''
      '')
    Left = 381
    Top = 215
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'Declaretion'
        ParamType = ptUnknown
        Size = 51
      end
      item
        DataType = ftFixedChar
        Name = 'DOCNO'
        ParamType = ptUnknown
        Size = 31
      end
      item
        DataType = ftFixedChar
        Name = 'Declaretion'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'CNO'
        ParamType = ptUnknown
        Size = 41
      end>
    object StringField1: TStringField
      DisplayWidth = 13
      FieldName = 'Declaretion'
      FixedChar = True
      Size = 50
    end
    object StringField2: TStringField
      DisplayWidth = 5
      FieldName = 'Export'
      FixedChar = True
      Size = 5
    end
    object StringField3: TStringField
      DisplayWidth = 12
      FieldName = 'CLDH'
      FixedChar = True
      Size = 15
    end
    object StringField11: TStringField
      FieldName = 'JHDH'
      Size = 10
    end
    object StringField12: TStringField
      DisplayWidth = 7
      FieldName = 'CNO'
      FixedChar = True
      Size = 40
    end
    object CurrencyField1: TCurrencyField
      DisplayWidth = 6
      FieldName = 'Qty'
      DisplayFormat = '#0.00'
    end
    object CurrencyField2: TCurrencyField
      DisplayWidth = 6
      FieldName = 'NK'
      DisplayFormat = '#0.00'
    end
    object CurrencyField3: TCurrencyField
      FieldName = 'TC'
      DisplayFormat = '#0.00'
    end
    object CurrencyField4: TCurrencyField
      DisplayWidth = 7
      FieldName = 'HD'
      DisplayFormat = '#0.00'
    end
    object CurrencyField5: TCurrencyField
      DisplayWidth = 6
      FieldName = 'KD'
      DisplayFormat = '#0.00'
    end
    object CurrencyField6: TCurrencyField
      DisplayWidth = 6
      FieldName = 'XT'
      DisplayFormat = '#0.00'
    end
    object CurrencyField7: TCurrencyField
      DisplayWidth = 7
      FieldName = 'GC'
      DisplayFormat = '#0.00'
    end
    object CurrencyField15: TCurrencyField
      DisplayWidth = 10
      FieldName = 'ZZ'
      DisplayFormat = '#0.00'
    end
    object StringField13: TStringField
      DisplayWidth = 200
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object StringField14: TStringField
      DisplayWidth = 200
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object StringField15: TStringField
      DisplayWidth = 4
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
  end
end
