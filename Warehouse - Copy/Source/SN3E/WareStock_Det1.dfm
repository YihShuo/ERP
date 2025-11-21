object WareStock_Det: TWareStock_Det
  Left = 373
  Top = 235
  Width = 822
  Height = 375
  Caption = 'WareStock_Det'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 806
    Height = 337
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
        FieldName = 'RKNO'
        Footers = <>
        Title.Caption = #26448#26009'|RKNO'
        Width = 86
      end
      item
        EditButtons = <>
        FieldName = 'CGBH'
        Footers = <>
        Title.Caption = #26448#26009'|CGBH'
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'RKSB'
        Footers = <>
        Title.Caption = #26448#26009'|RKSB'
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'CLDH'
        Footer.FieldName = 'CLDH'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = #26448#26009'|MatNo'
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'CNO'
        Footers = <>
        Title.Caption = #28023#38364#26009#34399'|Custom'
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'RKQty'
        Footer.FieldName = 'RKQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #20837#24235'|Nhap Qty'
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'UsdQty'
        Footer.FieldName = 'UsdQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #25976#37327'|UseQty'
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'RemQty'
        Footer.FieldName = 'RemQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #25976#37327'|Qty'
      end
      item
        EditButtons = <>
        FieldName = 'HGLB'
        Footers = <>
        Title.Caption = #39006#21029'|HGLB'
      end
      item
        EditButtons = <>
        FieldName = 'Declaretion'
        Footers = <>
        Title.Caption = #22577#38364#21934'|To Khai'
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'Export'
        Footers = <>
        Title.Caption = #39006#21029'|Export'
        Width = 51
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from ('
      
        'select '#39'00000000000'#39' as RKNO,KCCLMONTH.CLBH as CLDH,'#39'ZZZZ'#39' as CG' +
        'BH,'#39'ZZZZ'#39' as RKSB,null as CNO,null as HGLB,null as Declaretion,n' +
        'ull as Export,Sum(KCCLMONTH.QTY) as RKQty,Sum(IsNull(KCRKCX.RKQt' +
        'y,0)) as UsdQty,Sum(KCCLMONTH.Qty)-Sum(IsNull(KCRKCX.RKQty,0)) a' +
        's RemQty from KCCLMONTH'
      
        'left join  (select RKNO,CLDH,CGBH,RKSB,CKBH,Sum(RKQty) as RKQty ' +
        'from  KCRKCX where KCRKCX.RKNO='#39'00000000000'#39'  and KCRKCX.CLDH='#39'A' +
        '010001421'#39' and KCRKCX.RKSB='#39'ZZZZ'#39' and KCRKCX.CGBH='#39'ZZZZ'#39' and KCR' +
        'KCX.CKBH='#39'VA12'#39' Group by RKNO,CLDH,CGBH,RKSB,CKBH  ) KCRKCX on K' +
        'CRKCX.RKNO='#39'00000000000'#39' '
      
        '            and KCRKCX.CLDH=KCCLMONTH.CLBH and KCRKCX.CGBH='#39'ZZZZ' +
        #39' and KCRKCX.RKSB='#39'ZZZZ'#39' and KCRKCX.CKBH=KCCLMONTH.CKBH'
      
        'where KCCLMONTH.KCYEAR='#39'2017'#39' and KCCLMONTH.KCMONTH='#39'05'#39' and KCC' +
        'LMONTH.CKBH='#39'VA12'#39' and KCCLMONTH.CLBH = '#39'A010001421'#39' '
      
        'Group by KCCLMONTH.CLBH having Sum(KCCLMONTH.Qty)-Sum(IsNull(KCR' +
        'KCX.RKQty,0))>0'
      'union all'
      
        'Select  KCRKS.RKNO,KCRKS.CLBH as CLDH,KCRKS.CGBH,KCRKS.RKSB,KCRK' +
        'S.CNO,KCRK.HGLB,Max(KCPK.Declaretion) as Declaretion,Max(KCPK.Ex' +
        'port) as Export,Sum(KCRKS.Qty) as RKQty,Sum(IsNull(KCRKCX.RKQty,' +
        '0)) as UsdQty,Sum(KCRKS.Qty)-Sum(IsNull(KCRKCX.RKQty,0)) as RemQ' +
        'ty '
      'from KCRKS'
      'inner join KCRK on KCRK.RKNO=KCRKS.RKNO'
      'left join KCPK on KCPK.PKNO=KCRK.RKNO'
      
        'left join (select RKNO,CLDH,CGBH,RKSB,Sum(RKQty) as RKQty from  ' +
        'KCRKCX where KCRKCX.CLDH='#39'A010001421'#39' and KCRKCX.RKSB<>'#39'JGRK'#39' Gr' +
        'oup by RKNO,CLDH,CGBH,RKSB  )  '
      
        '           KCRKCX on KCRKCX.RKNO=KCRKS.RKNO and KCRKCX.CLDH=KCRK' +
        'S.CLBH and KCRKCX.CGBH=KCRKS.CGBH and KCRKCX.RKSB=KCRKS.RKSB'
      
        'where KCRK.USERDATE>='#39'2017/06/01'#39' and KCRK.CKBH='#39'VA12'#39'   and KCR' +
        'KS.CLBH = '#39'A010001421'#39' '
      
        'Group by KCRKS.RKNO,KCRKS.CLBH,KCRKS.CGBH,KCRKS.RKSB,KCRKS.CNO,K' +
        'CRK.HGLB'
      'having Sum(KCRKS.Qty)-Sum(IsNull(KCRKCX.RKQty,0))>0'
      'Union all'
      
        'select JGZLS.JGNO,JGZLS.CLBH as CLDH,JGZLS.ZMLB as CGBH,'#39'JGRK'#39' a' +
        's RKSB,null as CNO,'#39'GC'#39' as HGLB,null as Declaretion,null as Expo' +
        'rt,Sum(JGZLS.Qty) as RKQty,Sum(IsNull(KCRKCX.RKQty,0)) as UsdQty' +
        ',Sum(JGZLS.Qty)-Sum(IsNull(KCRKCX.RKQty,0)) as RemQty from JGZLS'
      'inner join JGZL on JGZL.JGNO=JGZLS.JGNO'
      
        'left join (select RKNO,CLDH,CGBH,RKSB,Sum(RKQty) as RKQty from  ' +
        'KCRKCX where KCRKCX.CLDH='#39'A010001421'#39'and KCRKCX.RKSB='#39'JGRK'#39'  Gro' +
        'up by RKNO,CLDH,CGBH,RKSB  )   '
      
        '           KCRKCX on KCRKCX.RKNO=JGZLS.JGNO and KCRKCX.CLDH=JGZL' +
        'S.CLBH and KCRKCX.CGBH=JGZLS.ZMLB and KCRKCX.RKSB='#39'JGRK'#39
      
        'where JGZLS.ZMLB='#39'ZZZZZZZZZZ'#39' and JGZL.CFMID1<>'#39'NO'#39' and JGZL.CKB' +
        'H='#39'VA12'#39' and JGZL.CFMDATE1>='#39'2017/06/01'#39' '
      'Group by JGZLS.JGNO,JGZLS.CLBH,JGZLS.ZMLB '
      'having Sum(JGZLS.Qty)-Sum(IsNull(KCRKCX.RKQty,0))>0 '
      ') KCRKS'
      'where CLDH='#39'A010001421'#39' and IsNull(CNO,'#39#39')='#39#39)
    Left = 85
    Top = 213
    object Query1RKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object Query1CLDH: TStringField
      FieldName = 'CLDH'
      FixedChar = True
      Size = 15
    end
    object Query1CGBH: TStringField
      FieldName = 'CGBH'
      FixedChar = True
      Size = 15
    end
    object Query1RKSB: TStringField
      FieldName = 'RKSB'
      FixedChar = True
      Size = 4
    end
    object Query1CNO: TStringField
      FieldName = 'CNO'
      FixedChar = True
      Size = 40
    end
    object Query1HGLB: TStringField
      FieldName = 'HGLB'
      FixedChar = True
      Size = 5
    end
    object Query1RKQty: TCurrencyField
      FieldName = 'RKQty'
      DisplayFormat = '#0.00'
    end
    object Query1UsdQty: TCurrencyField
      FieldName = 'UsdQty'
      DisplayFormat = '#0.00'
    end
    object Query1RemQty: TCurrencyField
      FieldName = 'RemQty'
      DisplayFormat = '#0.00'
    end
    object Query1Declaretion: TStringField
      FieldName = 'Declaretion'
      FixedChar = True
      Size = 50
    end
    object Query1Export: TStringField
      FieldName = 'Export'
      FixedChar = True
      Size = 5
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 85
    Top = 245
  end
end
