object AnyStockDep_Det: TAnyStockDep_Det
  Left = 561
  Top = 293
  Width = 590
  Height = 427
  Caption = 'AnyStockDep_Det'
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
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 582
    Height = 396
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
    PopupMenu = PopupMenu1
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
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select KCCLMONTH_Dep.*,IsNull(Bdepartment.DepName,'#39'Stock'#39') as De' +
        'pName,IsNull(Bdepartment.DepMemo,'#39#24235#23384#39') as DepMemorom'
      'from ('
      'Select CKBH, CLBH, DepID, Sum(Convert(float,Qty)) as Qty  from ('
      'Select CKBH,CLBH,DepID,Qty,'#39'1'#39' as SB'
      'from KCCLMONTH_BDepartment'
      'where KCYEAR='#39'2023'#39' and KCMONTH='#39'02'#39
      'Union all'
      
        'Select KCRK.CKBH,KCRKS.CLBH,IsNull(SGDH.DepID,'#39'ZZZZZZZZZZ'#39') as D' +
        'epID,Sum(IsNull(KCRKSS.Qty, KCRKS.Qty)) as Qty,'#39'2'#39' as SB'
      'from KCRK'
      'left join KCRKS on KCRK.RKNO=KCRKS.RKNO'
      'left join KCRKSS on KCRKSS.RKNO=KCRKS.RKNO'
      'left join SGDH on SGDH.SGNO=KCRKSS.CGBH'
      
        'where  Convert(smalldatetime,convert(varchar,KCRK.USERDATE,111))' +
        ' between '#39'2023/03/01'#39' and '#39'2023/03/31'#39
      
        '        and KCRK.CKBH in ('#39'VTXX'#39','#39'VTXY'#39','#39'VTXZ'#39') and KCRKS.CLBH i' +
        's not null'
      'Group by KCRK.CKBH,KCRKS.CLBH,IsNull(SGDH.DepID,'#39'ZZZZZZZZZZ'#39')'
      'Union all'
      
        'Select KCLL.CKBH,KCLLS.CLBH,KCLL.DepID,Sum(-1* KCLLS.Qty) as Qty' +
        ' ,'#39'3'#39' as SB'
      'from KCLL'
      'left join KCLLS on KCLL.LLNO=KCLLS.LLNO'
      
        'where  KCLL.CFMID<>'#39'NO'#39' and Convert(smalldatetime,convert(varcha' +
        'r,KCLL.CFMDATE,111)) between '#39'2023/03/01'#39' and '#39'2023/03/31'#39
      
        '        and KCLL.CKBH in ('#39'VTXX'#39','#39'VTXY'#39','#39'VTXZ'#39') and KCLLS.CLBH i' +
        's not null'
      'Group by  KCLL.CKBH,KCLLS.CLBH,KCLL.DepID   )  KCCLMONTH_Dep'
      'Group by CKBH, CLBH, DepID ) KCCLMONTH_Dep'
      'Left join BDepartment on BDepartment.ID=KCCLMONTH_Dep.DepID')
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
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 240
    Top = 80
  end
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    Left = 208
    Top = 120
    object Excel1: TMenuItem
      Caption = 'Detail'
      OnClick = Excel1Click
    end
  end
end
