object CPD_ZLBH: TCPD_ZLBH
  Left = 589
  Top = 356
  Width = 856
  Height = 416
  Caption = 'CPD_ZLBH'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 840
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 47
      Top = 40
      Width = 41
      Height = 28
      AutoSize = False
      Caption = 'ZLBH:'
      Layout = tlCenter
    end
    object Label1: TLabel
      Left = 197
      Top = 38
      Width = 68
      Height = 28
      AutoSize = False
      Caption = 'GCBWBH:'
      Layout = tlCenter
    end
    object Label4: TLabel
      Left = 365
      Top = 38
      Width = 49
      Height = 28
      AutoSize = False
      Caption = 'YWSM'
      Layout = tlCenter
    end
    object Label3: TLabel
      Left = 196
      Top = 11
      Width = 17
      Height = 16
      Caption = 'To'
    end
    object ZLBHEdit: TEdit
      Left = 93
      Top = 41
      Width = 97
      Height = 24
      TabOrder = 0
    end
    object Button1: TButton
      Left = 528
      Top = 39
      Width = 89
      Height = 28
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object GCBWBHEdit: TEdit
      Left = 269
      Top = 40
      Width = 81
      Height = 24
      TabOrder = 2
    end
    object Button2: TButton
      Left = 529
      Top = 6
      Width = 89
      Height = 28
      Caption = 'Copy'
      TabOrder = 3
      OnClick = Button2Click
    end
    object CheckBox1: TCheckBox
      Left = 624
      Top = 46
      Width = 105
      Height = 17
      Caption = 'Qty>DQty'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object YWSMEdit: TEdit
      Left = 413
      Top = 38
      Width = 105
      Height = 24
      TabOrder = 5
    end
    object PlanDateCK: TCheckBox
      Left = 10
      Top = 11
      Width = 81
      Height = 17
      Caption = 'PlanDate:'
      Checked = True
      State = cbChecked
      TabOrder = 6
    end
    object DTP1: TDateTimePicker
      Left = 93
      Top = 8
      Width = 97
      Height = 24
      Date = 39983.610104166670000000
      Format = 'yyyy/MM/dd'
      Time = 39983.610104166670000000
      TabOrder = 7
    end
    object DTP2: TDateTimePicker
      Left = 222
      Top = 7
      Width = 97
      Height = 24
      Date = 39983.610104166670000000
      Format = 'yyyy/MM/dd'
      Time = 39983.610104166670000000
      TabOrder = 8
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 840
    Height = 304
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Footers = <>
        Width = 77
      end
      item
        EditButtons = <>
        FieldName = 'GCBWBH'
        Footers = <>
        Width = 68
      end
      item
        EditButtons = <>
        FieldName = 'ywsm'
        Footers = <>
        Width = 127
      end
      item
        EditButtons = <>
        FieldName = 'zwsm'
        Footers = <>
        Width = 174
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footers = <>
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'TmpQty'
        Footers = <>
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'OkQty'
        Footers = <>
        Width = 44
      end
      item
        EditButtons = <>
        FieldName = 'PlanDate'
        Footers = <>
        Width = 65
      end
      item
        EditButtons = <>
        FieldName = 'RPlanDate'
        Footers = <>
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'ADate'
        Footers = <>
        Width = 67
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 80
    Top = 120
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        '   select ZL_GC.ZLBH,ZL_GC.GCBWBH,ZL_GC.ywsm,ZL_GC.zwsm,ZL_GC.Pa' +
        'irs,ZL_GC.TmpQty,ZL_GC.OkQty,DATEADD (day,-1*PDays,convert(small' +
        'datetime,SCZLDate.ADate)) as PlanDate,'
      
        '        convert(smalldatetime,ZL_GC.RPlanDate) as RPlanDate,ZL_G' +
        'C.Levels,ZL_GC.PDays,ZL_GC.Qty1Day,SCZLDate.ADate from ('
      
        #9'Select ZL_GC.ZLBH,ZL_GC.GCBWBH,KT_SOPCutS_GCBW.ywsm,KT_SOPCutS_' +
        'GCBW.zwsm,SUM(ZL_GCAll.Qty) as Pairs,IsNull(GC.TmpQty,0) as TmpQ' +
        'ty,IsNull(GC.OkQty,0) as OkQty,KT_SOPCutS_GCBW.Qty1Day,convert(v' +
        'archar,GC.RPlanDate,111) as  RPlanDate,ZL_GC.PDays ,ZL_GC.levels' +
        ' '
      #9'from CutDispatchZL_GC ZL_GC'
      
        '    left join (select distinct ZLBH,GCBWBH,SIZE,Qty from CutDisp' +
        'atchZL_GC where CutDispatchZL_GC.ZLBH in (Select ZLBH from SCZLD' +
        'ate,BDepartment where SCZLDate.Assemble=BDepartment.ID and SCZLD' +
        'ate.GSBH='#39'VA12'#39' and SCZLDate.ZLBH like '#39'%'#39'  and  convert(smallda' +
        'tetime,convert(varchar,SCZLDate.ADate,111)) between '#39'2019/06/28'#39 +
        ' and '#39'2019/07/12'#39' ) ) ZL_GCALL on ZL_GC.ZLBH=ZL_GCAll.ZLBH and Z' +
        'L_GC.GCBWBH=ZL_GCALL.GCBWBH and ZL_GC.SIZE=ZL_GCALL.SIZE '
      
        #9'left join KT_SOPCutS_GCBW on KT_SOPCutS_GCBW.GCBWDH=ZL_GC.GCBWB' +
        'H '
      #9'left join ('
      
        #9'  Select CutDispatchS_GC.ZLBH,CutDispatchS_GC.GCBWBH,CutDispatc' +
        'hS_GC.BWBH,SUM(Qty) as TmpQty,SUM(case when CutDispatch_GC.CFMID' +
        '<>'#39'NO'#39' then Qty else 0 end) as OkQty,MIN(CutDispatch_GC.PlanDate' +
        ') as RPlanDate from CutDispatchS_GC'
      
        #9'  Left join CutDispatch_GC on CutDispatchS_GC.DLNO=CutDispatch_' +
        'GC.DLNO'
      
        #9'  where CutDispatchS_GC.ZLBH in (Select ZLBH from SCZLDate,BDep' +
        'artment where SCZLDate.Assemble=BDepartment.ID and SCZLDate.GSBH' +
        '='#39'VA12'#39' and SCZLDate.ZLBH like '#39'%'#39'  and  convert(smalldatetime,c' +
        'onvert(varchar,SCZLDate.ADate,111)) between '#39'2019/06/28'#39' and '#39'20' +
        '19/07/12'#39' )'
      
        #9'       group  by CutDispatchS_GC.ZLBH,CutDispatchS_GC.GCBWBH,Cu' +
        'tDispatchS_GC.BWBH'#9
      
        #9') GC on ZL_GC.ZLBH=GC.ZLBH and ZL_GC.GCBWBH=GC.GCBWBH and ZL_GC' +
        '.BWBH=GC.BWBH'
      
        #9'where len(ZL_GC.levels)>0  and ZL_GC.ZLBH in (Select ZLBH from ' +
        'SCZLDate,BDepartment where SCZLDate.Assemble=BDepartment.ID and ' +
        'SCZLDate.GSBH='#39'VA12'#39' and SCZLDate.ZLBH like '#39'%'#39'  and  convert(sm' +
        'alldatetime,convert(varchar,SCZLDate.ADate,111)) between '#39'2019/0' +
        '6/28'#39' and '#39'2019/07/12'#39' ) '
      
        #9'Group by ZL_GC.ZLBH,ZL_GC.GCBWBH,ZL_GC.PDays,KT_SOPCutS_GCBW.yw' +
        'sm ,KT_SOPCutS_GCBW.zwsm,KT_SOPCutS_GCBW.Qty1Day,GC.TmpQty,GC.Ok' +
        'Qty,GC.RPlanDate,ZL_GC.levels ) ZL_GC'
      #9'left join SCZLDate on SCZLDate.ZLBH=ZL_GC.ZLBH'
      #9'where Pairs>TmpQty')
    Left = 80
    Top = 152
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1GCBWBH: TStringField
      FieldName = 'GCBWBH'
      FixedChar = True
      Size = 6
    end
    object Query1ywsm: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 40
    end
    object Query1zwsm: TStringField
      FieldName = 'zwsm'
      FixedChar = True
      Size = 40
    end
    object Query1Pairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Query1TmpQty: TIntegerField
      FieldName = 'TmpQty'
    end
    object Query1OkQty: TIntegerField
      FieldName = 'OkQty'
    end
    object Query1PlanDate: TDateTimeField
      FieldName = 'PlanDate'
      DisplayFormat = 'MM/DD'
    end
    object Query1RPlanDate: TDateTimeField
      FieldName = 'RPlanDate'
      DisplayFormat = 'MM/DD'
    end
    object Query1Levels: TStringField
      FieldName = 'Levels'
      FixedChar = True
      Size = 10
    end
    object Query1PDays: TIntegerField
      FieldName = 'PDays'
    end
    object Query1Qty1Day: TFloatField
      FieldName = 'Qty1Day'
    end
    object Query1ADate: TDateTimeField
      FieldName = 'ADate'
      DisplayFormat = 'MM/DD'
    end
  end
  object TmpQry: TQuery
    DatabaseName = 'DB'
    Left = 48
    Top = 119
  end
end
