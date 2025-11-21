object AnyStockDep_Det_Det: TAnyStockDep_Det_Det
  Left = 513
  Top = 289
  Width = 568
  Height = 381
  Caption = 'AnyStockDep_Det_Det'
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
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 552
    Height = 342
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
    ParentFont = False
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
        Width = 43
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'DepID'
        Footers = <>
        Width = 92
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footer.FieldName = 'Qty'
        Footer.ValueType = fvtSum
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'DepMemo'
        Footers = <>
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'SB'
        Footers = <>
        Width = 72
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select Detail.*,IsNull(BDepartment.DepName,'#39'Stock'#39') as DepName,I' +
        'sNull(BDepartment.DepMemo,'#39#24235#23384#39') as DepMemo from ('
      'Select CKBH,CLBH,DepID,Qty,'#39'1.LastRem'#39' as SB'
      'from KCCLMONTH_BDepartment'
      'where KCYEAR='#39'2023'#39' and KCMONTH='#39'02'#39
      '      and KCCLMONTH_BDepartment.CKBH='#39'VTXX'#39' '
      #9'  and KCCLMONTH_BDepartment.CLBH='#39'X101000003'#39' '
      'Union all'
      
        'Select KCRK.CKBH,KCRKS.CLBH,IsNull(SGDH.DepID,IsNull(CGZLSS.Memo' +
        ','#39'ZZZZZZZZZZ'#39')) as DepID,Sum(IsNull(KCRKSS.Qty, KCRKS.Qty)) as Q' +
        'ty,'#39'2.RKQty'#39' as SB'
      'from KCRK'
      'left join KCRKS on KCRK.RKNO=KCRKS.RKNO'
      
        'left join KCRKSS on KCRKSS.RKNO=KCRKS.RKNO and KCRKSS.CLBH=KCRKS' +
        '.CLBH and KCRKSS.CGBH=KCRKS.CGBH and KCRKSS.RKSB=KCRKS.RKSB'
      'left join SGDH on SGDH.SGNO=KCRKSS.CGBH'
      
        'left join CGZLSS on CGZLSS.CGNO=KCRK.ZSNO and CGZLSS.ZLBH=KCRKSS' +
        '.CGBH  and CGZLSS.CLBH=KCRKSS.CLBH and CGZLSS.XXCC=KCRKSS.SIZE a' +
        'nd CGZLSS.Stage='#39'TVu'#39' '
      
        'where  Convert(smalldatetime,convert(varchar,KCRK.USERDATE,111))' +
        ' between '
      #9#9#9' '#39'2023/03/01'#39' and '#39'2023/03/30'#39' '
      '        and KCRK.CKBH='#39'VTXX'#39' and KCRKS.CLBH is not null'
      #9'       and KCRKS.CLBH='#39'X101000003'#39' '
      
        'Group by KCRK.CKBH,KCRKS.CLBH,IsNull(SGDH.DepID,IsNull(CGZLSS.Me' +
        'mo,'#39'ZZZZZZZZZZ'#39')) '
      'Union all'
      
        'Select KCLL.CKBH,KCLLS.CLBH,KCLL.DepID,Sum(-1* KCLLS.Qty) as Qty' +
        ' ,'#39'3.LLQty'#39' as SB'
      'from KCLL'
      'left join KCLLS on KCLL.LLNO=KCLLS.LLNO'
      
        'where  KCLL.CFMID<>'#39'NO'#39' and Convert(smalldatetime,convert(varcha' +
        'r,KCLL.CFMDATE,111)) between '
      #9#9#9' '#39'2023/03/01'#39' and '#39'2023/03/30'#39' '
      '        and KCLL.CKBH='#39'VTXX'#39' and KCLLS.CLBH is not null'
      #9'       and KCLLS.CLBH='#39'X101000003'#39' '
      'Group by  KCLL.CKBH,KCLLS.CLBH,KCLL.DepID   '
      'Union all '
      
        'Select KCLL_Dep_DB.CKBH,KCLL_Dep_DBS.CLBH,KCLL_Dep_DBS.DepID,-1*' +
        'Sum(KCLL_Dep_DBS.Qty) as Qty,'#39'4.Du Out Qty'#39' as SB'
      'from KCLL_Dep_DB'
      'left join KCLL_Dep_DBS on KCLL_Dep_DB.DBNO=KCLL_Dep_DBS.DBNO'
      
        'where  KCLL_Dep_DB.CFMID<>'#39'NO'#39' and Convert(smalldatetime,convert' +
        '(varchar,KCLL_Dep_DB.CFMDATE,111)) between '
      #9#9#9' '#39'2023/03/01'#39' and '#39'2023/03/30'#39' '
      
        '        and KCLL_Dep_DB.CKBH='#39'VTXX'#39' and KCLL_Dep_DBS.CLBH is not' +
        ' null'
      #9'       and KCLL_Dep_DBS.CLBH='#39'X101000003'#39' '
      'Group by KCLL_Dep_DB.CKBH,KCLL_Dep_DBS.CLBH,KCLL_Dep_DBS.DepID  '
      'Union all '
      
        'Select KCLL_Dep_DB.CKBH,KCLL_Dep_DBS.CLBH,KCLL_Dep_DBS.DepID1  a' +
        's DepID,Sum(KCLL_Dep_DBS.Qty) as Qty,'#39'5.Du In Qty'#39' as SB'
      'from KCLL_Dep_DB'
      'left join KCLL_Dep_DBS on KCLL_Dep_DB.DBNO=KCLL_Dep_DBS.DBNO'
      
        'where  KCLL_Dep_DB.CFMID<>'#39'NO'#39' and Convert(smalldatetime,convert' +
        '(varchar,KCLL_Dep_DB.CFMDATE,111)) between '
      #9#9#9' '#39'2023/03/01'#39' and '#39'2023/03/30'#39' '
      
        '        and KCLL_Dep_DB.CKBH='#39'VTXX'#39' and KCLL_Dep_DBS.CLBH is not' +
        ' null'
      #9'       and KCLL_Dep_DBS.CLBH='#39'X101000003'#39' '
      
        'Group by KCLL_Dep_DB.CKBH,KCLL_Dep_DBS.CLBH,KCLL_Dep_DBS.DepID1 ' +
        ') Detail'
      'left join BDepartment on BDepartment.ID=Detail.DepID')
    Left = 208
    Top = 80
    object Query1CKBH: TStringField
      DisplayWidth = 7
      FieldName = 'CKBH'
      FixedChar = True
    end
    object Query1CLBH: TStringField
      DisplayWidth = 12
      FieldName = 'CLBH'
      FixedChar = True
      Size = 30
    end
    object Query1DepID: TStringField
      DisplayWidth = 14
      FieldName = 'DepID'
      FixedChar = True
    end
    object Query1Qty: TFloatField
      DisplayWidth = 5
      FieldName = 'Qty'
    end
    object Query1DepName: TStringField
      DisplayWidth = 14
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object Query1DepMemo: TStringField
      DisplayWidth = 21
      FieldName = 'DepMemo'
      FixedChar = True
      Size = 50
    end
    object Query1SB: TStringField
      FieldName = 'SB'
      FixedChar = True
      Size = 12
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 240
    Top = 80
  end
end
