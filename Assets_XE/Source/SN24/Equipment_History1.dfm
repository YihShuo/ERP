object Equipment_History: TEquipment_History
  Left = 0
  Top = 0
  Caption = 'Equipment_History'
  ClientHeight = 464
  ClientWidth = 945
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 945
    Height = 464
    Align = alClient
    DataSource = DS1
    DynProps = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterRowCount = 1
    FooterParams.Color = clWindow
    ParentFont = False
    SumList.Active = True
    TabOrder = 0
    TitleParams.MultiTitle = True
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'LLNO'
        Footer.FieldName = 'LLNO'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = #21934#25818#34399#30908'|LLNO'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Title.Caption = #21934#25818#35498#26126'|YWSM'
        Width = 186
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ZWSM'
        Footers = <>
        Title.Caption = #21934#25818#35498#26126#20013#25991'|ZWSM'
        Width = 94
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TSID'
        Footers = <>
        Title.Caption = 'NO'#34399'|TSID'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TSBH'
        Footers = <>
        Title.Caption = #36001#29986#32232#34399'|TSBH'
        Width = 82
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DepID'
        Footers = <>
        Title.Caption = #20301#32622'|DepID'
        Width = 56
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Title.Caption = #20301#32622'|DepName'
        Width = 81
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DepID_Memo'
        Footers = <>
        Title.Caption = #20301#32622'|DepID_Memo'
        Width = 116
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.Caption = #25976#37327'|Qty'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'JDTS'
        Footers = <>
        Title.Caption = #20511#20986#24288#22806#36215#35350'|JDTS'
        Width = 65
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'JDTSDep'
        Footers = <>
        Title.Caption = #20511#20986#24288#22806#36215#35350'|JDTSDep'
        Width = 106
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'JDBDATE'
        Footers = <>
        Title.Caption = #20511#20986#24288#22806#36215#35350'|JDBDATE'
        Width = 73
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'JDEDATE'
        Footers = <>
        Title.Caption = #20511#20986#24288#22806#36215#35350'|JDEDATE'
        Width = 72
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'JRTS'
        Footers = <>
        Title.Caption = #24288#22806#20511#20837#36215#35350'|JRTS'
        Width = 60
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'JRTSDep'
        Footers = <>
        Title.Caption = #24288#22806#20511#20837#36215#35350'|JRTSDep'
        Width = 159
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'JRBDATE'
        Footers = <>
        Title.Caption = #24288#22806#20511#20837#36215#35350'|JRBDATE'
        Width = 82
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'JREDATE'
        Footers = <>
        Title.Caption = #24288#22806#20511#20837#36215#35350'|JREDATE'
        Width = 83
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'STATUS'
        Footers = <>
        Title.Caption = #29376#24907'|STATUS'
        Width = 32
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CFMDATE_LL'
        Footers = <>
        Title.Caption = #21934#25818#26085#26399'|CFMDATE_LL'
        Width = 114
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CFMID_LL'
        Footers = <>
        Title.Caption = #21934#25818'ID|CFMID_LL'
        Width = 46
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object TSCDQry: TQuery
    DatabaseName = 'DB'
    DataSource = EquipmentList.DS1
    SQL.Strings = (
      'Select * from ('
      
        '  Select TSCD.TSID,TSCD.TSBH,TSCD.DepID,TSCD_BDepartment.DepName' +
        ',TSCD.DepID_Memo,TSCD.JDTS,JDTS_Dep.DepName as JDTSDep,TSCD.JDBD' +
        'ATE,TSCD.JDEDATE,TSCD.JRTS,JRTS_Dep.DepName as JRTSDep,TSCD.JRBD' +
        'ATE,TSCD.JREDATE,TSCD.STATUS,TSCD.LLNO,TSCD.CFMDATE_LL,TSCD.CFMI' +
        'D_LL'
      
        '         ,CAST(dbo.fSignsToNoSigns(TSCD_LB.YWSM) AS VARCHAR(200)' +
        ') as YWSM,TSCD_LB.ZWSM, TSCD_KCLLS.Qty'
      '  from TSCD_History TSCD'
      
        '  --left join TSCD_KCLLS on TSCD.TSID=TSCD_KCLLS.TSID and TSCD.L' +
        'LNO=TSCD_KCLLS.LLNO'
      '  --Left join TSCD_KCLL on TSCD_KCLL.LLNO=TSCD_KCLLS.LLNO'
      
        '  left join (select TSCD_KCLLS.TSID,TSCD_KCLLS.LLNO, TSCD_KCLLS.' +
        'Qty,TSCD_KCLL.LB from TSCD_KCLLS left join TSCD_KCLL on TSCD_KCL' +
        'L.LLNO=TSCD_KCLLS.LLNO where TSCD_KCLL.LB='#39'LLLLLLLLLL'#39
      #9#9#9'Union all'
      
        #9#9#9'select TSCD_KCLLS.TSID,TSCD_KCLLS.LLNO, TSCD_KCLLS.Qty,TSCD_K' +
        'CLL.LB from TSCD_KCBBS TSCD_KCLLS left join TSCD_KCBB TSCD_KCLL ' +
        'on TSCD_KCLL.LLNO=TSCD_KCLLS.LLNO'
      #9#9#9'Union all'
      
        #9#9#9'select TSCD_KCLLS.TSID,TSCD_KCLLS.LLNO, TSCD_KCLLS.Qty,TSCD_K' +
        'CLL.LB from TSCD_KCDDS TSCD_KCLLS left join TSCD_KCDD TSCD_KCLL ' +
        'on TSCD_KCLL.LLNO=TSCD_KCLLS.LLNO'
      #9#9#9'Union all'
      
        #9#9#9'select TSCD_KCLLS.TSID,TSCD_KCLLS.LLNO, TSCD_KCLLS.Qty,TSCD_K' +
        'CLL.LB from TSCD_KCCCS TSCD_KCLLS left join TSCD_KCCC TSCD_KCLL ' +
        'on TSCD_KCLL.LLNO=TSCD_KCLLS.LLNO'
      #9#9#9'Union all'
      
        #9#9#9'select TSCD_KCLLS.TSID,TSCD_KCLLS.LLNO, TSCD_KCLLS.Qty,TSCD_K' +
        'CLL.LB from TSCD_KCSSS TSCD_KCLLS left join TSCD_KCSS TSCD_KCLL ' +
        'on TSCD_KCLL.LLNO=TSCD_KCLLS.LLNO'
      #9#9#9'Union all'
      
        #9#9#9'select TSCD_KCLLS.TSID,TSCD_KCLLS.LLNO, TSCD_KCLLS.Qty,TSCD_K' +
        'CLL.LB from TSCD_KCTTS TSCD_KCLLS left join TSCD_KCTT TSCD_KCLL ' +
        'on TSCD_KCLL.LLNO=TSCD_KCLLS.LLNO'
      #9#9#9'Union all'
      
        #9#9#9'select TSCD_KCLLS.TSID,TSCD_KCLLS.LLNO, TSCD_KCLLS.Qty,TSCD_K' +
        'CLL.LB from TSCD_KCRRS TSCD_KCLLS left join TSCD_KCRR TSCD_KCLL ' +
        'on TSCD_KCLL.LLNO=TSCD_KCLLS.LLNO'
      #9#9#9'Union all'
      
        #9#9#9'select TSCD_KCLLS.TSID,TSCD_KCLLS.LLNO, TSCD_KCLLS.Qty,TSCD_K' +
        'CLL.LB from TSCD_KCFFS TSCD_KCLLS left join TSCD_KCFF TSCD_KCLL ' +
        'on TSCD_KCLL.LLNO=TSCD_KCLLS.LLNO'
      #9#9#9'Union all'
      
        #9#9#9'select TSCD_KCLLS.TSID,TSCD_KCLLS.LLNO, TSCD_KCLLS.Qty,TSCD_K' +
        'CLL.LB from TSCD_KCHHS TSCD_KCLLS left join TSCD_KCHH TSCD_KCLL ' +
        'on TSCD_KCLL.LLNO=TSCD_KCLLS.LLNO'
      #9#9#9'Union all'
      
        #9#9#9'select TSCD_KCLLS.TSID,TSCD_KCLLS.LLNO, TSCD_KCLLS.Qty,TSCD_K' +
        'CLL.LB from TSCD_KCMMS TSCD_KCLLS left join TSCD_KCMM TSCD_KCLL ' +
        'on TSCD_KCLL.LLNO=TSCD_KCLLS.LLNO'
      
        #9#9#9') TSCD_KCLLS on  TSCD.TSID=TSCD_KCLLS.TSID and TSCD.LLNO=TSCD' +
        '_KCLLS.LLNO'
      '  Left join TSCD_LB on TSCD_LB.LB=TSCD_KCLLS.LB'
      '  Left join TSCD_BDepartment on TSCD_BDepartment.ID=TSCD.DepID'
      '  left join TSCD_BDepartment JDTS_Dep on JDTS_Dep.ID=TSCD.JDTS'
      '  left join TSCD_BDepartment JRTS_Dep on JRTS_Dep.ID=TSCD.JRTS'
      '  where TSCD.TSID=:TSID'
      '  Union all'
      
        '  Select TSCD.TSID,TSCD.TSBH,TSCD.DepID,TSCD_BDepartment.DepName' +
        ',TSCD.DepID_Memo,TSCD.JDTS,JDTS_Dep.DepName as JDTSDep,TSCD.JDBD' +
        'ATE,TSCD.JDEDATE,TSCD.JRTS,JRTS_Dep.DepName as JRTSDep,TSCD.JRBD' +
        'ATE,TSCD.JREDATE,TSCD.STATUS,TSCD.LLNO,TSCD.CFMDATE_LL,TSCD.CFMI' +
        'D_LL'
      
        '         ,CAST(dbo.fSignsToNoSigns(TSCD_LB.YWSM) AS VARCHAR(200)' +
        ') as YWSM,TSCD_LB.ZWSM,  TSCD_KCLLS.Qty'
      '  from TSCD'
      
        '  --left join TSCD_KCLLS on TSCD.TSID=TSCD_KCLLS.TSID and TSCD.L' +
        'LNO=TSCD_KCLLS.LLNO'
      '  --Left join TSCD_KCLL on TSCD_KCLL.LLNO=TSCD_KCLLS.LLNO'
      
        '  left join (select TSCD_KCLLS.TSID,TSCD_KCLLS.LLNO, TSCD_KCLLS.' +
        'Qty,TSCD_KCLL.LB from TSCD_KCLLS left join TSCD_KCLL on TSCD_KCL' +
        'L.LLNO=TSCD_KCLLS.LLNO where TSCD_KCLL.LB='#39'LLLLLLLLLL'#39
      #9#9#9'Union all'
      
        #9#9#9'select TSCD_KCLLS.TSID,TSCD_KCLLS.LLNO, TSCD_KCLLS.Qty,TSCD_K' +
        'CLL.LB from TSCD_KCBBS TSCD_KCLLS left join TSCD_KCBB TSCD_KCLL ' +
        'on TSCD_KCLL.LLNO=TSCD_KCLLS.LLNO'
      #9#9#9'Union all'
      
        #9#9#9'select TSCD_KCLLS.TSID,TSCD_KCLLS.LLNO, TSCD_KCLLS.Qty,TSCD_K' +
        'CLL.LB from TSCD_KCDDS TSCD_KCLLS left join TSCD_KCDD TSCD_KCLL ' +
        'on TSCD_KCLL.LLNO=TSCD_KCLLS.LLNO'
      #9#9#9'Union all'
      
        #9#9#9'select TSCD_KCLLS.TSID,TSCD_KCLLS.LLNO, TSCD_KCLLS.Qty,TSCD_K' +
        'CLL.LB from TSCD_KCCCS TSCD_KCLLS left join TSCD_KCCC TSCD_KCLL ' +
        'on TSCD_KCLL.LLNO=TSCD_KCLLS.LLNO'
      #9#9#9'Union all'
      
        #9#9#9'select TSCD_KCLLS.TSID,TSCD_KCLLS.LLNO, TSCD_KCLLS.Qty,TSCD_K' +
        'CLL.LB from TSCD_KCSSS TSCD_KCLLS left join TSCD_KCSS TSCD_KCLL ' +
        'on TSCD_KCLL.LLNO=TSCD_KCLLS.LLNO'
      #9#9#9'Union all'
      
        #9#9#9'select TSCD_KCLLS.TSID,TSCD_KCLLS.LLNO, TSCD_KCLLS.Qty,TSCD_K' +
        'CLL.LB from TSCD_KCTTS TSCD_KCLLS left join TSCD_KCTT TSCD_KCLL ' +
        'on TSCD_KCLL.LLNO=TSCD_KCLLS.LLNO'
      #9#9#9'Union all'
      
        #9#9#9'select TSCD_KCLLS.TSID,TSCD_KCLLS.LLNO, TSCD_KCLLS.Qty,TSCD_K' +
        'CLL.LB from TSCD_KCRRS TSCD_KCLLS left join TSCD_KCRR TSCD_KCLL ' +
        'on TSCD_KCLL.LLNO=TSCD_KCLLS.LLNO'
      #9#9#9'Union all'
      
        #9#9#9'select TSCD_KCLLS.TSID,TSCD_KCLLS.LLNO, TSCD_KCLLS.Qty,TSCD_K' +
        'CLL.LB from TSCD_KCFFS TSCD_KCLLS left join TSCD_KCFF TSCD_KCLL ' +
        'on TSCD_KCLL.LLNO=TSCD_KCLLS.LLNO'
      #9#9#9'Union all'
      
        #9#9#9'select TSCD_KCLLS.TSID,TSCD_KCLLS.LLNO, TSCD_KCLLS.Qty,TSCD_K' +
        'CLL.LB from TSCD_KCHHS TSCD_KCLLS left join TSCD_KCHH TSCD_KCLL ' +
        'on TSCD_KCLL.LLNO=TSCD_KCLLS.LLNO'
      #9#9#9'Union all'
      
        #9#9#9'select TSCD_KCLLS.TSID,TSCD_KCLLS.LLNO, TSCD_KCLLS.Qty,TSCD_K' +
        'CLL.LB from TSCD_KCMMS TSCD_KCLLS left join TSCD_KCMM TSCD_KCLL ' +
        'on TSCD_KCLL.LLNO=TSCD_KCLLS.LLNO'
      
        #9#9#9') TSCD_KCLLS on  TSCD.TSID=TSCD_KCLLS.TSID and TSCD.LLNO=TSCD' +
        '_KCLLS.LLNO'
      '  Left join TSCD_LB on TSCD_LB.LB=TSCD_KCLLS.LB'
      '  Left join TSCD_BDepartment on TSCD_BDepartment.ID=TSCD.DepID'
      '  left join TSCD_BDepartment JDTS_Dep on JDTS_Dep.ID=TSCD.JDTS'
      '  left join TSCD_BDepartment JRTS_Dep on JRTS_Dep.ID=TSCD.JRTS'
      '  where TSCD.TSID=:TSID'
      ') TSCD'
      'where  LLNO is not null'
      
        'group by TSID,TSBH,DepID,DepName,DepID_Memo,JDTS,JDTSDep,JDBDATE' +
        ',JDEDATE,JRTS,JRTSDep,JRBDATE,JREDATE,STATUS,LLNO,CFMDATE_LL,CFM' +
        'ID_LL,YWSM,ZWSM,Qty'
      'order by LLNO')
    Left = 316
    Top = 132
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TSID'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TSID'
        ParamType = ptUnknown
      end>
    object TSCDQryTSID: TStringField
      FieldName = 'TSID'
      FixedChar = True
      Size = 11
    end
    object TSCDQryTSBH: TStringField
      FieldName = 'TSBH'
      FixedChar = True
      Size = 15
    end
    object TSCDQryDepID: TStringField
      FieldName = 'DepID'
      FixedChar = True
      Size = 10
    end
    object TSCDQryDepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object TSCDQryDepID_Memo: TStringField
      FieldName = 'DepID_Memo'
      FixedChar = True
    end
    object TSCDQryJDTS: TStringField
      FieldName = 'JDTS'
      FixedChar = True
      Size = 10
    end
    object TSCDQryJDTSDep: TStringField
      FieldName = 'JDTSDep'
      FixedChar = True
      Size = 50
    end
    object TSCDQryJDBDATE: TStringField
      FieldName = 'JDBDATE'
      FixedChar = True
      Size = 12
    end
    object TSCDQryJDEDATE: TStringField
      FieldName = 'JDEDATE'
      FixedChar = True
      Size = 12
    end
    object TSCDQryJRTS: TStringField
      FieldName = 'JRTS'
      FixedChar = True
      Size = 10
    end
    object TSCDQryJRTSDep: TStringField
      FieldName = 'JRTSDep'
      FixedChar = True
      Size = 50
    end
    object TSCDQryJRBDATE: TStringField
      FieldName = 'JRBDATE'
      FixedChar = True
      Size = 12
    end
    object TSCDQryJREDATE: TStringField
      FieldName = 'JREDATE'
      FixedChar = True
      Size = 12
    end
    object TSCDQrySTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 2
    end
    object TSCDQryLLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 11
    end
    object TSCDQryCFMDATE_LL: TDateTimeField
      FieldName = 'CFMDATE_LL'
    end
    object TSCDQryCFMID_LL: TStringField
      FieldName = 'CFMID_LL'
      FixedChar = True
      Size = 10
    end
    object TSCDQryYWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 200
    end
    object TSCDQryZWSM: TStringField
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 50
    end
    object TSCDQryQty: TFloatField
      FieldName = 'Qty'
    end
  end
  object DS1: TDataSource
    DataSet = TSCDQry
    Left = 316
    Top = 180
  end
end
