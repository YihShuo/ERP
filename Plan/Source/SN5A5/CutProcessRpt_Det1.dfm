object CutProcessRpt_Det: TCutProcessRpt_Det
  Left = 545
  Top = 351
  Width = 699
  Height = 401
  Caption = 'CutProcessRpt_Det'
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
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 0
    Width = 691
    Height = 370
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
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ImeName = 'Chinese (Traditional) - New Phonetic'
    ParentFont = False
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = #35330#21934#32232#34399'|ZLBH'
      end
      item
        EditButtons = <>
        FieldName = 'GCBWBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = #21152#24037#32232#34399'|GCBWBH'
        Width = 57
      end
      item
        EditButtons = <>
        FieldName = 'SIZE'
        Footers = <>
        Title.Caption = #23610#30908'|SIZE'
      end
      item
        EditButtons = <>
        FieldName = 'zwsm'
        Footers = <>
        ReadOnly = True
        Title.Caption = #21152#24037#20013#25991'|zwsm'
        Width = 194
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footer.FieldName = 'Qty'
        Footer.ValueType = fvtSum
        Footers = <>
        ReadOnly = True
        Title.Caption = #38617#25976'|Pairs'
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'DQty'
        Footer.FieldName = 'DQty'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = #25976#37327'|Qty'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'PlanDate'
        Footers = <>
        ReadOnly = True
        Title.Caption = #35336#30059'|PlanDate'
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'RPlanDate'
        Footers = <>
        ReadOnly = True
        Title.Caption = #19978#32218'|RDate'
        Width = 51
      end
      item
        EditButtons = <>
        FieldName = 'ywsm'
        Footers = <>
        ReadOnly = True
        Title.Caption = #21152#24037#33521#25991'|ywsm'
        Width = 137
      end>
  end
  object CutProcListDetQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select ZL_GC.ZLBH,ZL_GC.GCBWBH,ZL_GC.SIZE,ZL_GC.ywsm,ZL_GC.zwsm,' +
        'ZL_GC.Qty,ZL_GC.DQty,DATEADD (day,-1*PDays,convert(smalldatetime' +
        ',SCZLDate.ADate)) as PlanDate,'
      
        '       convert(smalldatetime,ZL_GC.RPlanDate) as RPlanDate,ZL_GC' +
        '.Levels,ZL_GC.PDays,ZL_GC.Qty1Day,SCZLDate.ADate from ('
      
        #9'Select ZL_GC.ZLBH,ZL_GC.GCBWBH,ZL_GC.SIZE,KT_SOPCutS_GCBW.ywsm,' +
        'KT_SOPCutS_GCBW.zwsm,SUM(ZL_GCAll.Qty) as Qty,IsNull(GC.DQty,0) ' +
        'as DQty,'
      
        '        KT_SOPCutS_GCBW.Qty1Day,convert(varchar,GC.RPlanDate,111' +
        ') as  RPlanDate,ZL_GC.PDays ,ZL_GC.levels '
      #9'from CutDispatchZL_GC ZL_GC'
      
        ' left join (select distinct ZLBH,GCBWBH,SIZE,Qty from CutDispatc' +
        'hZL_GC where CutDispatchZL_GC.ZLBH in (Select ZLBH from SCZLDate' +
        ',BDepartment where SCZLDate.Assemble=BDepartment.ID and SCZLDate' +
        '.GSBH='#39'VA12'#39' and SCZLDate.ZLBH = '#39'Y1902-0252'#39'  and  convert(smal' +
        'ldatetime,convert(varchar,SCZLDate.ADate,111)) between '#39'2019/06/' +
        '28'#39' and '#39'2019/07/12'#39' ) ) ZL_GCALL on ZL_GC.ZLBH=ZL_GCAll.ZLBH an' +
        'd ZL_GC.GCBWBH=ZL_GCALL.GCBWBH and ZL_GC.SIZE=ZL_GCALL.SIZE '
      
        #9'left join KT_SOPCutS_GCBW on KT_SOPCutS_GCBW.GCBWDH=ZL_GC.GCBWB' +
        'H '
      #9'left join ('
      
        #9'  Select CutDispatchS_GC.ZLBH,CutDispatchS_GC.GCBWBH,CutDispatc' +
        'hS_GC.SIZE,CutDispatchS_GC.BWBH,SUM(case when CutDispatch_GC.CFM' +
        'ID<>'#39'NO'#39' then Qty else 0 end) as DQty,MIN(CutDispatch_GC.PlanDat' +
        'e) as RPlanDate from CutDispatchS_GC'
      
        #9'  Left join CutDispatch_GC on CutDispatchS_GC.DLNO=CutDispatch_' +
        'GC.DLNO'
      
        #9'  where CutDispatchS_GC.ZLBH in (Select ZLBH from SCZLDate,BDep' +
        'artment where SCZLDate.Assemble=BDepartment.ID and SCZLDate.GSBH' +
        '='#39'VA12'#39' and SCZLDate.ZLBH = '#39'Y1902-0252'#39'  and  convert(smalldate' +
        'time,convert(varchar,SCZLDate.ADate,111)) between '#39'2019/06/28'#39' a' +
        'nd '#39'2019/07/12'#39' )'
      '         and CutDispatchS_GC.GCBWBH='#39'0G01'#39' '
      
        #9'       group  by CutDispatchS_GC.ZLBH,CutDispatchS_GC.GCBWBH,Cu' +
        'tDispatchS_GC.SIZE,CutDispatchS_GC.BWBH'#9
      
        #9') GC on ZL_GC.ZLBH=GC.ZLBH and ZL_GC.GCBWBH=GC.GCBWBH and ZL_GC' +
        '.SIZE=GC.SIZE and ZL_GC.BWBH=GC.BWBH'
      
        #9'where len(ZL_GC.levels)>0  and ZL_GC.ZLBH in (Select ZLBH from ' +
        'SCZLDate,BDepartment where SCZLDate.Assemble=BDepartment.ID and ' +
        'SCZLDate.GSBH='#39'VA12'#39' and SCZLDate.ZLBH = '#39'Y1902-0252'#39'  and  conv' +
        'ert(smalldatetime,convert(varchar,SCZLDate.ADate,111)) between '#39 +
        '2019/06/28'#39' and '#39'2019/07/12'#39' ) '
      '         and ZL_GC.GCBWBH='#39'0G01'#39' '
      
        #9'Group by ZL_GC.ZLBH,ZL_GC.GCBWBH,ZL_GC.SIZE,ZL_GC.PDays,KT_SOPC' +
        'utS_GCBW.ywsm ,KT_SOPCutS_GCBW.zwsm,KT_SOPCutS_GCBW.Qty1Day,GC.D' +
        'Qty,GC.RPlanDate,ZL_GC.levels ) ZL_GC'
      #9'left join SCZLDate on SCZLDate.ZLBH=ZL_GC.ZLBH')
    Left = 400
    Top = 168
    object CutProcListDetQryZLBH: TStringField
      DisplayWidth = 11
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object CutProcListDetQryGCBWBH: TStringField
      DisplayWidth = 5
      FieldName = 'GCBWBH'
      FixedChar = True
      Size = 4
    end
    object CutProcListDetQryzwsm: TStringField
      DisplayWidth = 17
      FieldName = 'zwsm'
      FixedChar = True
      Size = 40
    end
    object CutProcListDetQryywsm: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 40
    end
    object CutProcListDetQryPlanDate: TDateTimeField
      DisplayWidth = 11
      FieldName = 'PlanDate'
      DisplayFormat = 'MM/DD'
    end
    object CutProcListDetQryRPlanDate: TDateTimeField
      FieldName = 'RPlanDate'
      DisplayFormat = 'MM/DD'
    end
    object CutProcListDetQryADate: TDateTimeField
      FieldName = 'ADate'
      DisplayFormat = 'MM/DD'
    end
    object CutProcListDetQryLevels: TStringField
      FieldName = 'Levels'
      FixedChar = True
      Size = 10
    end
    object CutProcListDetQryPDays: TIntegerField
      FieldName = 'PDays'
    end
    object CutProcListDetQryQty1Day: TFloatField
      FieldName = 'Qty1Day'
    end
    object CutProcListDetQrySIZE: TStringField
      FieldName = 'SIZE'
      FixedChar = True
      Size = 6
    end
    object CutProcListDetQryQty: TIntegerField
      FieldName = 'Qty'
    end
    object CutProcListDetQryDQty: TIntegerField
      FieldName = 'DQty'
    end
  end
  object DS1: TDataSource
    DataSet = CutProcListDetQry
    Left = 400
    Top = 200
  end
end
