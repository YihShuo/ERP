object LYV_LastborrowCFM: TLYV_LastborrowCFM
  Left = 248
  Top = 287
  Width = 1055
  Height = 475
  Caption = 'LYV_LastborrowCFM'
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
  object pnl1: TPanel
    Left = 0
    Top = 217
    Width = 1047
    Height = 47
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object lbl1: TLabel
      Left = 110
      Top = 16
      Width = 22
      Height = 16
      Caption = 'TO'
    end
    object lbl2: TLabel
      Left = 239
      Top = 16
      Width = 43
      Height = 16
      Caption = 'LLNO:'
    end
    object btn1: TButton
      Left = 494
      Top = 8
      Width = 82
      Height = 33
      Caption = 'Search '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 581
      Top = 8
      Width = 82
      Height = 33
      Caption = 'Confirm'
      TabOrder = 1
      OnClick = btn2Click
    end
    object btn3: TButton
      Left = 669
      Top = 8
      Width = 82
      Height = 33
      Caption = 'Cancel'
      TabOrder = 2
      OnClick = btn3Click
    end
    object dtpDTP1: TDateTimePicker
      Left = 6
      Top = 12
      Width = 100
      Height = 24
      Date = 39284.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677295636570000000
      TabOrder = 3
    end
    object dtpDTP2: TDateTimePicker
      Left = 134
      Top = 12
      Width = 100
      Height = 24
      Date = 39284.677664201390000000
      Format = 'yyyy/MM/dd'
      Time = 39284.677664201390000000
      TabOrder = 4
    end
    object edt1: TEdit
      Left = 283
      Top = 12
      Width = 114
      Height = 24
      TabOrder = 5
    end
    object CB1: TCheckBox
      Left = 408
      Top = 16
      Width = 89
      Height = 17
      Caption = 'Confirmd'
      TabOrder = 6
    end
    object btn4: TButton
      Left = 759
      Top = 8
      Width = 82
      Height = 33
      Caption = 'Excel'
      TabOrder = 7
      OnClick = btn4Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 1047
    Height = 217
    Align = alTop
    DataSource = dsDS3
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
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
    Columns = <
      item
        EditButtons = <>
        FieldName = 'LLNO'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'DepID'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Width = 131
      end
      item
        EditButtons = <>
        FieldName = 'PlanDate'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
      end>
  end
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 264
    Width = 1047
    Height = 180
    Align = alClient
    DataSource = ds1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = 'MatNo'
        Width = 77
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = 'Last Name'
        Width = 146
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = 'Unit'
      end
      item
        EditButtons = <>
        FieldName = 'SIZ'
        Footers = <>
      end
      item
        Color = clMoneyGreen
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'KCQty'
        Footers = <>
      end
      item
        EditButtons = <>
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        Footers = <>
        Visible = False
      end
      item
        EditButtons = <>
        Footers = <>
        Visible = False
      end>
  end
  object dsDS3: TDataSource
    DataSet = qryDelMas
    Left = 300
    Top = 84
  end
  object qryDelMas: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select LTLL.*,BDepartment.DepName '
      'from LTLL '
      'left join BDepartment on LTLL.DepID=BDepartment.ID  '
      'left join KCCK on KCCK.CKBH=LTLL.CKBH '
      'where LTLL.SB='#39'L'#39' '
      'and LTLL.YN='#39'1'#39'  '
      
        'and convert(smalldatetime,convert(varchar,LTLL.USERDATE,111)) be' +
        'tween '#39'2018/02/01'#39
      'and '#39'2018/02/08'#39
      'and LTLL.LLNO like '#39'%'#39
      'and LTLL.GSBH='#39'VA12'#39
      'order by LTLL.LLNO')
    UpdateObject = updtsqlUpMas
    Left = 260
    Top = 84
    object TDelMasLLNO: TStringField
      FieldName = 'LLNO'
      Origin = 'DB.LTLL.LLNO'
      FixedChar = True
      Size = 11
    end
    object TDelMasGSBH: TStringField
      FieldName = 'GSBH'
      Origin = 'DB.LTLL.GSBH'
      FixedChar = True
      Size = 4
    end
    object TDelMasCKBH: TStringField
      FieldName = 'CKBH'
      Origin = 'DB.LTLL.CKBH'
      FixedChar = True
      Size = 4
    end
    object TDelMasDepID: TStringField
      FieldName = 'DepID'
      Origin = 'DB.LTLL.DepID'
      FixedChar = True
      Size = 10
    end
    object dtmfldDelMasUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.LTLL.USERDATE'
    end
    object TDelMasUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.LTLL.USERID'
      FixedChar = True
      Size = 15
    end
    object dtmfldDelMasCFMDate: TDateTimeField
      FieldName = 'CFMDate'
      Origin = 'DB.LTLL.CFMDate'
    end
    object TDelMasCFMID: TStringField
      FieldName = 'CFMID'
      Origin = 'DB.LTLL.CFMID'
      FixedChar = True
      Size = 15
    end
    object TDelMasSB: TStringField
      FieldName = 'SB'
      Origin = 'DB.LTLL.SB'
      FixedChar = True
      Size = 1
    end
    object TDelMasYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.LTLL.YN'
      FixedChar = True
      Size = 1
    end
    object intgrfldDelMasPMARK: TIntegerField
      FieldName = 'PMARK'
      Origin = 'DB.LTLL.PMARK'
    end
    object TDelMasDepName: TStringField
      FieldName = 'DepName'
      Origin = 'DB.BDepartment.DepName'
      FixedChar = True
      Size = 50
    end
    object qryDelMasPlanDate: TDateTimeField
      FieldName = 'PlanDate'
      Origin = 'DB.LTLL.PlanDate'
    end
    object qryDelMasMEMO: TStringField
      FieldName = 'MEMO'
      Origin = 'DB.LTLL.MEMO'
      FixedChar = True
    end
  end
  object updtsqlUpMas: TUpdateSQL
    ModifySQL.Strings = (
      'update LTLL'
      'set'
      '  LLNO = :LLNO,'
      '  GSBH = :GSBH,'
      '  CKBH = :CKBH,'
      '  DepID = :DepID,'
      '  USERDATE = :USERDATE,'
      '  USERID = :USERID,'
      '  CFMDate = :CFMDate,'
      '  CFMID = :CFMID,'
      '  SB = :SB,'
      '  YN = :YN,'
      '  PMARK = :PMARK,'
      '  PlanDate = :PlanDate'
      'where'
      '  LLNO = :OLD_LLNO')
    InsertSQL.Strings = (
      'insert into LTLL'
      
        '  (LLNO, GSBH, CKBH, DepID, USERDATE, USERID, CFMDate, CFMID, SB' +
        ', YN, PMARK, '
      '   PlanDate)'
      'values'
      
        '  (:LLNO, :GSBH, :CKBH, :DepID, :USERDATE, :USERID, :CFMDate, :C' +
        'FMID, :SB, '
      '   :YN, :PMARK, :PlanDate)')
    DeleteSQL.Strings = (
      'delete from LTLL'
      'where'
      '  LLNO = :OLD_LLNO')
    Left = 260
    Top = 123
  end
  object qryDelDet: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    DataSource = dsDS3
    RequestLive = True
    SQL.Strings = (
      'if object_id('#39'tempdb..#CLZLKC_Last'#39') is not null  '
      'begin   drop table #CLZLKC_Last end   '
      
        'select NowKC.CKBH,NowKC.CLBH,NowKC.SIZ,IsNull(NowKC.NowRKQty,0)-' +
        'IsNull(LL.LLQty,0) as Qty,LastKC.LastRem,RK.RKQty,LL.LLQty into ' +
        '#CLZLKC_Last from ('
      '  select CKBH,CLBH,SIZ,Sum(RKQty) as NowRKQty from ('
      
        '  select LTRK.CKBH,LTRKSS.CLBH,LTRKSS.SIZ,SUM(LTRKSS.Qty) as RKQ' +
        'ty from LTRKSS,LTRK '
      
        '  where LTRKSS.RKNO=LTRK.RKNO  and LTRK.CKBH='#39'LAST'#39' and convert(' +
        'smalldatetime,convert(varchar,LTRK.UserDate,111)) between '#39'2016/' +
        '08/01'#39' and '#39'2016/08/12'#39' '
      '  Group by LTRK.CKBH,LTRKSS.CLBH,LTRKSS.SIZ '
      '  Union All '
      
        '  select CKBH,CLBH,SIZ,QTY as LastRem from Lastmonth where CKBH=' +
        #39'LAST'#39' and KCYEAR='#39'2016'#39' and KCMonth='#39'07'#39' ) as tmpRKTLFL '
      '  group by CKBH,CLBH,SIZ ) as NowKC'
      'left join ( '
      
        '   select CKBH,CLBH,SIZ,QTY as LastRem from Lastmonth where CKBH' +
        '='#39'LAST'#39' and KCYEAR='#39'2016'#39' and KCMonth='#39'07'#39' ) as LastKC on NowKC.' +
        'CKBH=LastKC.CKBH and NowKC.CLBH=LastKC.CLBH and NowKC.SIZ=LastKC' +
        '.SIZ'
      'left join ( '
      
        '  select LTRK.CKBH,LTRKSS.CLBH,LTRKSS.SIZ,SUM(LTRKSS.Qty) as RKQ' +
        'ty from LTRKSS,LTRK '
      
        '  where LTRKSS.RKNO=LTRK.RKNO  and LTRK.CKBH='#39'LAST'#39' and convert(' +
        'smalldatetime,convert(varchar,LTRK.UserDate,111)) between '#39'2016/' +
        '08/01'#39' and '#39'2016/08/12'#39' '
      
        '  Group by LTRK.CKBH,LTRKSS.CLBH,LTRKSS.SIZ  ) RK on NowKC.CKBH=' +
        'RK.CKBH and NowKC.CLBH=RK.CLBH and NowKC.SIZ=RK.SIZ'
      'left join ( '
      
        '   select LTLL.CKBH,LTLLSS.CLBH,LTLLSS.SIZ,SUM(LTLLSS.Qty) as LL' +
        'Qty from LTLLSS,LTLL '
      
        '   where LTLLSS.LLNO=LTLL.LLNO  and LTLL.CFMID<>'#39'NO'#39' and LTLL.CK' +
        'BH='#39'LAST'#39' and convert(smalldatetime,convert(varchar,LTLL.UserDat' +
        'e,111)) between '#39'2016/08/01'#39' and '#39'2016/08/12'#39' '
      
        '   Group by LTLL.CKBH,LTLLSS.CLBH,LTLLSS.SIZ ) LL on NowKC.CKBH=' +
        'LL.CKBH and NowKC.CLBH=LL.CLBH and NowKC.SIZ=LL.SIZ'
      
        'select LTLLSS.*,CLZL.CLDH,CLZL.YWPM,CLZL.DWBH,#CLZLKC_Last.Qty a' +
        's KCQty '
      'from LTLLSS'
      'left join CLZL on LTLLSS.CLBH=CLZL.CLDH '
      
        'left join #CLZLKC_Last on #CLZLKC_Last.CLBH=LTLLSS.CLBH and  #CL' +
        'ZLKC_Last.SIZ=LTLLSS.SIZ '
      'where LTLLSS.LLNO=:LLNO '
      'order by LTLLSS.siz')
    UpdateObject = updtsql1
    Left = 292
    Top = 324
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'LLNO'
        ParamType = ptUnknown
        Size = 12
      end>
  end
  object updtsql1: TUpdateSQL
    ModifySQL.Strings = (
      'update LTLLSS'
      'set'
      '  Qty = :Qty'
      'where'
      '  LLNO = :OLD_LLNO and'
      '  CLBH = :OLD_CLBH and'
      '  SIZ = :OLD_SIZ  and'
      '  ZLBH= :OLD_ZLBH')
    InsertSQL.Strings = (
      'insert into LTLLSS'
      '  (LLNO, CLBH, ZLBH, SIZ, Qty, USERDate, USERID, YN, LCRY)'
      'values'
      
        '  (:LLNO, :CLBH, :ZLBH, :SIZ, :Qty, :USERDate, :USERID, :YN, :LC' +
        'RY)')
    DeleteSQL.Strings = (
      'delete from LTLLSS'
      'where'
      '  LLNO = :OLD_LLNO and'
      '  CLBH = :OLD_CLBH and'
      '  SIZ = :OLD_SIZ  and'
      '  ZLBH= :OLD_ZLBH')
    Left = 292
    Top = 356
  end
  object ds1: TDataSource
    DataSet = qryDelDet
    Left = 332
    Top = 324
  end
  object qry2: TQuery
    DatabaseName = 'DB'
    Left = 380
    Top = 324
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'if object_id('#39'tempdb..#CLZLKC_Last'#39') is not null  '
      'begin   drop table #CLZLKC_Last end   '
      
        'select NowKC.CKBH,NowKC.CLBH,NowKC.SIZ,IsNull(NowKC.NowRKQty,0)-' +
        'IsNull(LL.LLQty,0) as Qty,LastKC.LastRem,RK.RKQty,LL.LLQty into ' +
        '#CLZLKC_Last from ('
      '  select CKBH,CLBH,SIZ,Sum(RKQty) as NowRKQty from ('
      
        '  select LTRK.CKBH,LTRKSS.CLBH,LTRKSS.SIZ,SUM(LTRKSS.Qty) as RKQ' +
        'ty from LTRKSS,LTRK '
      
        '  where LTRKSS.RKNO=LTRK.RKNO  and LTRK.CKBH='#39'LAST'#39' and convert(' +
        'smalldatetime,convert(varchar,LTRK.UserDate,111)) between '#39'2016/' +
        '08/01'#39' and '#39'2016/08/12'#39' '
      '  Group by LTRK.CKBH,LTRKSS.CLBH,LTRKSS.SIZ '
      '  Union All '
      
        '  select CKBH,CLBH,SIZ,QTY as LastRem from Lastmonth where CKBH=' +
        #39'LAST'#39' and KCYEAR='#39'2016'#39' and KCMonth='#39'07'#39' ) as tmpRKTLFL '
      '  group by CKBH,CLBH,SIZ ) as NowKC'
      'left join ( '
      
        '   select CKBH,CLBH,SIZ,QTY as LastRem from Lastmonth where CKBH' +
        '='#39'LAST'#39' and KCYEAR='#39'2016'#39' and KCMonth='#39'07'#39' ) as LastKC on NowKC.' +
        'CKBH=LastKC.CKBH and NowKC.CLBH=LastKC.CLBH and NowKC.SIZ=LastKC' +
        '.SIZ'
      'left join ( '
      
        '  select LTRK.CKBH,LTRKSS.CLBH,LTRKSS.SIZ,SUM(LTRKSS.Qty) as RKQ' +
        'ty from LTRKSS,LTRK '
      
        '  where LTRKSS.RKNO=LTRK.RKNO  and LTRK.CKBH='#39'LAST'#39' and convert(' +
        'smalldatetime,convert(varchar,LTRK.UserDate,111)) between '#39'2016/' +
        '08/01'#39' and '#39'2016/08/12'#39' '
      
        '  Group by LTRK.CKBH,LTRKSS.CLBH,LTRKSS.SIZ  ) RK on NowKC.CKBH=' +
        'RK.CKBH and NowKC.CLBH=RK.CLBH and NowKC.SIZ=RK.SIZ'
      'left join ( '
      
        '   select LTLL.CKBH,LTLLSS.CLBH,LTLLSS.SIZ,SUM(LTLLSS.Qty) as LL' +
        'Qty from LTLLSS,LTLL '
      
        '   where LTLLSS.LLNO=LTLL.LLNO  and LTLL.CFMID<>'#39'NO'#39' and LTLL.CK' +
        'BH='#39'LAST'#39' and convert(smalldatetime,convert(varchar,LTLL.UserDat' +
        'e,111)) between '#39'2016/08/01'#39' and '#39'2016/08/12'#39' '
      
        '   Group by LTLL.CKBH,LTLLSS.CLBH,LTLLSS.SIZ ) LL on NowKC.CKBH=' +
        'LL.CKBH and NowKC.CLBH=LL.CLBH and NowKC.SIZ=LL.SIZ'
      
        'select LTLLSS.*,CLZL.CLDH,CLZL.YWPM,CLZL.DWBH,#CLZLKC_Last.Qty a' +
        's KCQty '
      'from LTLLSS'
      'left join CLZL on LTLLSS.CLBH=CLZL.CLDH '
      
        'left join #CLZLKC_Last on #CLZLKC_Last.CLBH=LTLLSS.CLBH and  #CL' +
        'ZLKC_Last.SIZ=LTLLSS.SIZ '
      'where LTLLSS.LLNO=:LLNO '
      'order by LTLLSS.siz')
    Left = 228
    Top = 324
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'LLNO'
        ParamType = ptUnknown
        Size = 12
      end>
    object StringField1: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object StringField2: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object StringField3: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object StringField4: TStringField
      FieldName = 'SIZ'
      FixedChar = True
      Size = 6
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '#,##0.0'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'USERDate'
    end
    object StringField5: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object StringField6: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object StringField7: TStringField
      FieldName = 'CLDH'
      FixedChar = True
      Size = 10
    end
    object StringField8: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object StringField9: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object StringField10: TStringField
      FieldName = 'LCRY'
      Origin = 'LIY_ERP.LTLLSS.LCRY'
      FixedChar = True
      Size = 2
    end
    object FloatField1: TFloatField
      FieldName = 'KCQty'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 336
    Top = 360
    object Qtyrevise1: TMenuItem
      Caption = 'Qty revise'
      OnClick = Qtyrevise1Click
    end
  end
end
