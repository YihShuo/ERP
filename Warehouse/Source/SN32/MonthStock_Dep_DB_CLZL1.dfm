object MonthStock_Dep_DB_CLZL: TMonthStock_Dep_DB_CLZL
  Left = 479
  Top = 334
  Width = 812
  Height = 489
  Caption = 'MonthStock_Dep_DB_CLZL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 804
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
      Left = 8
      Top = 14
      Width = 78
      Height = 20
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
      Left = 208
      Top = 14
      Width = 101
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 592
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
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 312
      Top = 11
      Width = 129
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 88
      Top = 11
      Width = 121
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit3: TEdit
      Left = 456
      Top = 11
      Width = 129
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 3
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 804
    Height = 409
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
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
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
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 180
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Width = 108
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Width = 47
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
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 104
    Top = 72
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select KCCLMONTH_Dep.CKBH,KCCLMONTH_Dep.CLBH,KCCLMONTH_Dep.DepID' +
        ',Sum(KCCLMONTH_Dep.Qty) as Qty,IsNull(Bdepartment.DepName,'#39'Stock' +
        #39') as DepName,IsNull(Bdepartment.DepMemo,'#39#24235#23384#39') as DepMemo,CLZL.Y' +
        'WPM,CLZL.ZWPM,CLZL.DWBH'
      'from ('
      
        'Select CKBH, CLBH, Case when Qty<0 then '#39'ZZZZZZZZZZ'#39' else DepID ' +
        'end as DepID, Qty from ('#9
      'Select CKBH, CLBH, DepID, Sum(Convert(float,Qty)) as Qty  from ('
      'Select CKBH,CLBH,DepID,Qty,'#39'1'#39' as SB'
      'from KCCLMONTH_BDepartment'
      'where KCYEAR='#39'2023'#39' and KCMONTH='#39'01'#39
      '        and KCCLMONTH_BDepartment.CKBH='#39'VTXX'#39' '
      #9'       and KCCLMONTH_BDepartment.CLBH='#39'X101000003'#39' '
      'Union all'
      
        'Select KCRK.CKBH,KCRKS.CLBH,IsNull(SGDH.DepID,IsNull(CGZLSS.Memo' +
        ','#39'ZZZZZZZZZZ'#39')) as DepID,Sum(IsNull(KCRKSS.Qty, KCRKS.Qty)) as Q' +
        'ty,'#39'2'#39' as SB'
      'from KCRK'
      'left join KCRKS on KCRK.RKNO=KCRKS.RKNO'
      'left join KCRKSS on KCRKSS.RKNO=KCRKS.RKNO'
      'left join SGDH on SGDH.SGNO=KCRKSS.CGBH'
      
        'left join CGZLSS on CGZLSS.CGNO=KCRK.ZSNO and CGZLSS.ZLBH=KCRKSS' +
        '.CGBH  and CGZLSS.CLBH=KCRKSS.CLBH and CGZLSS.XXCC=KCRKSS.SIZE a' +
        'nd CGZLSS.Stage='#39'TVu'#39' '
      
        'where  Convert(smalldatetime,convert(varchar,KCRK.USERDATE,111))' +
        ' between '
      #9#9#9' '#39'2023/02/01'#39' and '#39'2023/02/28'#39' '
      '        and KCRK.CKBH='#39'VTXX'#39' and KCRKS.CLBH is not null'
      #9'       and KCRKS.CLBH='#39'X101000003'#39' '
      
        'Group by KCRK.CKBH,KCRKS.CLBH,IsNull(SGDH.DepID,IsNull(CGZLSS.Me' +
        'mo,'#39'ZZZZZZZZZZ'#39')) '
      'Union all'
      
        'Select KCLL.CKBH,KCLLS.CLBH,KCLL.DepID,Sum(-1* KCLLS.Qty) as Qty' +
        ' ,'#39'3'#39' as SB'
      'from KCLL'
      'left join KCLLS on KCLL.LLNO=KCLLS.LLNO'
      
        'where  KCLL.CFMID<>'#39'NO'#39' and Convert(smalldatetime,convert(varcha' +
        'r,KCLL.CFMDATE,111)) between '
      #9#9#9' '#39'2023/02/01'#39' and '#39'2023/02/28'#39' '
      '        and KCLL.CKBH='#39'VTXX'#39' and KCLLS.CLBH is not null'
      #9'       and KCLLS.CLBH='#39'X101000003'#39' '
      'Group by  KCLL.CKBH,KCLLS.CLBH,KCLL.DepID   '
      'Union all '
      
        'Select KCLL_Dep_DB.CKBH,KCLL_Dep_DBS.CLBH,KCLL_Dep_DBS.DepID,-1*' +
        'Sum(KCLL_Dep_DBS.Qty) as Qty,'#39'4'#39' as SB'
      'from KCLL_Dep_DB'
      'left join KCLL_Dep_DBS on KCLL_Dep_DB.DBNO=KCLL_Dep_DBS.DBNO'
      
        'where  KCLL_Dep_DB.CFMID<>'#39'NO'#39' and Convert(smalldatetime,convert' +
        '(varchar,KCLL_Dep_DB.CFMDATE,111)) between '
      #9#9#9' '#39'2023/02/01'#39' and '#39'2023/02/28'#39' '
      
        '        and KCLL_Dep_DB.CKBH='#39'VTXX'#39' and KCLL_Dep_DBS.CLBH is not' +
        ' null'
      #9'       and KCLL_Dep_DBS.CLBH='#39'X101000003'#39' '
      'Group by KCLL_Dep_DB.CKBH,KCLL_Dep_DBS.CLBH,KCLL_Dep_DBS.DepID  '
      'Union all '
      
        'Select KCLL_Dep_DB.CKBH,KCLL_Dep_DBS.CLBH,KCLL_Dep_DBS.DepID1  a' +
        's DepID,Sum(KCLL_Dep_DBS.Qty) as Qty,'#39'5'#39' as SB'
      'from KCLL_Dep_DB'
      'left join KCLL_Dep_DBS on KCLL_Dep_DB.DBNO=KCLL_Dep_DBS.DBNO'
      
        'where  KCLL_Dep_DB.CFMID<>'#39'NO'#39' and Convert(smalldatetime,convert' +
        '(varchar,KCLL_Dep_DB.CFMDATE,111)) between '
      #9#9#9' '#39'2023/02/01'#39' and '#39'2023/02/28'#39' '
      
        '        and KCLL_Dep_DB.CKBH='#39'VTXX'#39' and KCLL_Dep_DBS.CLBH is not' +
        ' null'
      #9'       and KCLL_Dep_DBS.CLBH='#39'X101000003'#39' '
      
        'Group by KCLL_Dep_DB.CKBH,KCLL_Dep_DBS.CLBH,KCLL_Dep_DBS.DepID1 ' +
        ' )  KCCLMONTH_Dep'
      'Group by CKBH, CLBH, DepID ) KCCLMONTH_Dep  ) KCCLMONTH_Dep'
      'Left join BDepartment on BDepartment.ID=KCCLMONTH_Dep.DepID'
      'Left join CLZL on CLZL.CLDH=KCCLMONTH_Dep.CLBH'
      
        'Group by KCCLMONTH_Dep.CKBH,KCCLMONTH_Dep.CLBH,KCCLMONTH_Dep.Dep' +
        'ID,Bdepartment.DepName,Bdepartment.DepMemo,CLZL.YWPM,CLZL.ZWPM,C' +
        'LZL.DWBH')
    Left = 104
    Top = 104
    object Query1CKBH: TStringField
      DisplayWidth = 6
      FieldName = 'CKBH'
      FixedChar = True
    end
    object Query1CLBH: TStringField
      DisplayWidth = 11
      FieldName = 'CLBH'
      FixedChar = True
      Size = 30
    end
    object Query1DepID: TStringField
      DisplayWidth = 12
      FieldName = 'DepID'
      FixedChar = True
    end
    object Query1Qty: TFloatField
      DisplayWidth = 5
      FieldName = 'Qty'
    end
    object Query1DepName: TStringField
      DisplayWidth = 10
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object Query1DepMemo: TStringField
      DisplayWidth = 11
      FieldName = 'DepMemo'
      FixedChar = True
      Size = 50
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
  end
end
