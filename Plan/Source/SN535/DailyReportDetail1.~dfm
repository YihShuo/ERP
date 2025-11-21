object DailyReportDetail: TDailyReportDetail
  Left = 335
  Top = 187
  Width = 859
  Height = 480
  Caption = 'DailyReportDetail'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 843
    Height = 73
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 38
      Width = 32
      Height = 16
      Caption = 'Date:'
    end
    object Label5: TLabel
      Left = 176
      Top = 38
      Width = 76
      Height = 20
      Caption = 'DepName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 373
      Top = 38
      Width = 41
      Height = 16
      Caption = 'GSBH:'
    end
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 137
      Height = 20
      AutoSize = False
      Caption = #29983#29986#26085#22577#34920
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 373
      Top = 24
      Width = 41
      Height = 16
      AutoSize = False
      Caption = #24288#21029':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 176
      Top = 24
      Width = 73
      Height = 16
      AutoSize = False
      Caption = #37096#38272#21517#31281':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #26032#32048#26126#39636
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 517
      Top = 16
      Width = 81
      Height = 41
      Hint = #39023#31034#26597#35426
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
    object DTP1: TDateTimePicker
      Left = 56
      Top = 32
      Width = 97
      Height = 24
      Date = 39219.355266736120000000
      Format = 'yyyy/MM/dd'
      Time = 39219.355266736120000000
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 256
      Top = 32
      Width = 105
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object CB1: TComboBox
      Left = 421
      Top = 32
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      ItemHeight = 16
      TabOrder = 3
      Text = 'VTX'
    end
    object Button2: TButton
      Left = 616
      Top = 16
      Width = 81
      Height = 41
      Caption = 'EXCEL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = Button2Click
    end
    object CBHuman: TCheckBox
      Left = 712
      Top = 32
      Width = 113
      Height = 17
      Caption = 'Human System'
      TabOrder = 5
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 843
    Height = 368
    Align = alClient
    DataSource = DataSource1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDrawColumnCell = DBGridEh1DrawColumnCell
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'set ansi_nulls on '
      'set ansi_warnings on'
      ''
      'if object_id('#39'tempdb..#Scbbdata'#39') is not null'
      ' begin   drop table #Scbbdata end                  '
      
        'select convert(varchar,SCBB.SCDate,111) as SCDate ,SCBB.DepNo,SC' +
        'BBS.GXLB,BDepartment.DepName,'
      
        '       isnull(sum(Convert(float,SCBBS.Qty)),0) as Qty,isnull(SCB' +
        'ZCL.Qty,0) as bzQty,Convert(float,SCRL.SCGS) as SCGS,RSCQ.SDGS,i' +
        'snull(sum(SCBBS.Qty),0)/SCRL.SCGS  as AvgQty'
      'into #Scbbdata from SCBB '
      'left join SCBBS on  SCBB.ProNo=SCBBS.ProNo'
      'left join BDepartment on BDepartment.ID=SCBB.DepNo  '
      
        'left join SCBZCL on SCBZCL.BZDate=SCBB.SCDate and SCBZCL.DepNo=S' +
        'CBB.DepNo'
      'left join DDZL on DDZl.DDBH=SCBBS.SCBH '
      
        'left join SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.GXLB=' +
        'SCBBS.GXLB and SCXXCL.BZLB=SCBBS.BZLB'
      
        'left join SCRL on convert(varchar,convert(smalldatetime,SCRL.SCY' +
        'EAR+'#39'/'#39'+SCRL.SCMONTH+'#39'/'#39'+SCRL.SCDay))'
      '                         =convert(varchar,SCBB.SCDate)  '
      '                  and SCRL.DepNO=SCBB.DepNO '
      
        'left join  RSCQ on convert(varchar,RSCQ.RSDate,111)=convert(varc' +
        'har,SCBB.SCDate,111) and RSCQ.DepNo=SCBB.DepNo'
      
        'where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) b' +
        'etween '
      
        '       (convert(smalldatetime,convert(varchar,GETDATE(),111))-1)' +
        ' and (convert(smalldatetime,convert(varchar,GETDATE(),111))-1)'
      '       and SCBB.GSBH ='#39'VA12'#39
      '       and (SCBBS.GXLB='#39'A'#39' or SCBBS.GXLB='#39'C'#39' or SCBBS.GXLB='#39'S'#39')'
      
        'Group by convert(varchar,SCBB.SCDate,111) ,SCBB.DepNo,SCBBS.GXLB' +
        ',BDepartment.DepName ,SCBZCL.Qty,RSCQ.SDGS,SCRL.SCGS'
      '                  '
      '-- '
      
        'select DepName as '#39#21934#20301#39',dv_dilam as '#39#21047#21345#19978#29677#20154#25976#39',SCGS as '#39#19978#29677#26178#38291#39',RY1 a' +
        's '#39#35330#21934'1'#39',RY2 as '#39#35330#21934'2'#39',RY3 as '#39#35330#21934'3'#39',RY4 as '#39#35330#21934'4'#39',RY5 as '#39#35330#21934'5'#39',RY6 ' +
        'as '#39#35330#21934'6'#39',RY7 as '#39#35330#21934'7'#39',RY8 as '#39#35330#21934'8'#39' ,RY9 as '#39#35330#21934'9'#39',RY10 as '#39#35330#21934'10'#39',' +
        'RY11 as '#39#35330#21934'11'#39',RY12 as '#39#35330#21934'12'#39',RY13 as '#39#35330#21934'13'#39',RY14 as '#39#35330#21934'14'#39',RY15' +
        ' as '#39#35330#21934'15'#39',RY16 as '#39#35330#21934'16'#39',RY17 as '#39#35330#21934'17'#39',RY18 as '#39#35330#21934'18'#39',RY19 as ' +
        #39#35330#21934'19'#39',RY20 as '#39#35330#21934'20'#39',RY21 as '#39#35330#21934'21'#39',RY22 as '#39#35330#21934'22'#39',RY23 as '#39#35330#21934'2' +
        '3'#39',RY24 as '#39#35330#21934'24'#39',RY25 as '#39#35330#21934'25'#39','
      
        '       Qty1 as '#39#29986#37327'1'#39',Qty2 as '#39#29986#37327'2'#39',Qty3 as '#39#29986#37327'3'#39',Qty4 as '#39#29986#37327'4'#39',Q' +
        'ty5 as '#39#29986#37327'5'#39',Qty6 as '#39#29986#37327'6'#39',Qty7 as '#39#29986#37327'7'#39',Qty8 as '#39#29986#37327'8'#39',Qty9 as '#39 +
        #29986#37327'9'#39',Qty10 as '#39#29986#37327'10'#39',Qty11 as '#39#29986#37327'11'#39',Qty12 as '#39#29986#37327'12'#39',Qty13 as '#39#29986 +
        #37327'13'#39',Qty14 as '#39#29986#37327'14'#39',Qty15 as '#39#29986#37327'15'#39',Qty16 as '#39#29986#37327'16'#39',Qty17 as '#39#29986 +
        #37327'17'#39',Qty18 as '#39#29986#37327'18'#39',Qty19 as '#39#29986#37327'19'#39',Qty20 as '#39#29986#37327'20'#39',Qty21 as '#39#29986 +
        #37327'21'#39',Qty22 as '#39#29986#37327'22'#39',Qty23 as '#39#29986#37327'23'#39',Qty24 as '#39#29986#37327'24'#39',Qty25 as '#39#29986 +
        #37327'25'#39','
      
        '       BzQty as '#39#30446#27161#29986#37327#39',Qty as '#39#23526#38555#29986#37327#39',LackQty as '#39'DELAY'#39',Rate as ' +
        #39#36948#25104#29575#39' ,AvgQty as '#39#24179#22343#19968#23567#26178#38617#25976#39',Substring(convert(varchar,GETDATE()-1' +
        ',111),6,5) as '#39#29983#29986#26085#39
      '   from ( '
      
        'select SCBB.SCDate,SCBB.GXLB ,SCBB.DepNo ,SCBB.DepName ,#HumData' +
        '.dv_dilam ,SCBB.Qty ,SCBB.bzQty ,SCBB.Qty-SCBB.BzQty as LackQty,'
      
        '      (case when SCBB.bzQty <> 0 then Convert(varchar,round(SCBB' +
        '.Qty/convert(float,SCBB.BzQty)*100,0))+'#39'%'#39' end) Rate,SCGS,round(' +
        'AvgQty,0) as AvgQty,'
      
        '      RYList.RY1,RYList.RY2,RYList.RY3,RYList.RY4,RYList.RY5,RYL' +
        'ist.RY6,RYList.RY7,RYList.RY8,RYList.RY9,RYList.RY10,RYList.RY11' +
        ',RYList.RY12,RYList.RY13,RYList.RY14,RYList.RY15,RYList.RY16,RYL' +
        'ist.RY17,RYList.RY18,RYList.RY19,RYList.RY20,RYList.RY21,RYList.' +
        'RY22,RYList.RY23,RYList.RY24,RYList.RY25,'
      
        '      RYList.Qty1,RYList.Qty2,RYList.Qty3,RYList.Qty4,RYList.Qty' +
        '5,RYList.Qty6,RYList.Qty7,RYList.Qty8,RYList.Qty9,RYList.Qty10,R' +
        'YList.Qty11,RYList.Qty12,RYList.Qty13,RYList.Qty14,RYList.Qty15,' +
        'RYList.Qty16,RYList.Qty17,RYList.Qty18,RYList.Qty19,RYList.Qty20' +
        ',RYList.Qty21,RYList.Qty22,RYList.Qty23,RYList.Qty24,RYList.Qty2' +
        '5  from ('
      ''
      'select * from #Scbbdata where #Scbbdata.GXLB='#39'C'#39
      'Union all '
      
        'select SCDate ,'#39'zTotal'#39' as DepNo,'#39'C'#39' as GXLB,'#39'zTotal'#39' as  DepNam' +
        'e,'
      
        '       isnull(sum(Qty),0) as Qty,isnull(sum(bzQty),0) as bzQty,n' +
        'ull as SCGS,null as SDGS,isnull(sum(Qty),0)/isnull(sum(SCGS),0) ' +
        ' as AvgQty'
      'from #Scbbdata where #Scbbdata.GXLB='#39'C'#39
      'Group by SCDate '
      'Union all '
      'select * from #Scbbdata where #Scbbdata.GXLB='#39'S'#39
      'Union all '
      
        'select SCDate ,'#39'zTotal'#39' as DepNo,'#39'S'#39' as GXLB,'#39'zTotal'#39' as  DepNam' +
        'e,'
      
        '       isnull(sum(Qty),0) as Qty,isnull(sum(bzQty),0) as bzQty,n' +
        'ull as SCGS,null as SDGS,isnull(sum(Qty),0)/isnull(sum(SCGS),0) ' +
        ' as AvgQty'
      'from #Scbbdata where #Scbbdata.GXLB='#39'S'#39
      'Group by SCDate '
      'Union all '
      'select * from #Scbbdata where #Scbbdata.GXLB='#39'A'#39
      'Union all '
      
        'select SCDate ,'#39'zTotal'#39' as DepNo,'#39'A'#39' as GXLB,'#39'zTotal'#39' as  DepNam' +
        'e,'
      
        '       isnull(sum(Qty),0) as Qty,isnull(sum(bzQty),0) as bzQty,n' +
        'ull as SCGS,null as SDGS,isnull(sum(Qty),0)/isnull(sum(SCGS),0) ' +
        ' as AvgQty'
      'from #Scbbdata where #Scbbdata.GXLB='#39'A'#39
      'Group by SCDate '
      ''
      ') SCBB'
      'left join ('
      'select SCDate,DepNo,'
      '  Max(Case when RYNo=1 then SCBH end) as RY1, '
      '  Max(Case when RYNo=2 then SCBH end) as RY2,'
      '  Max(Case when RYNo=3 then SCBH end) as RY3,'
      '  Max(Case when RYNo=4 then SCBH end) as RY4,'
      '  Max(Case when RYNo=5 then SCBH end) as RY5,'
      '  Max(Case when RYNo=6 then SCBH end) as RY6,'
      '  Max(Case when RYNo=7 then SCBH end) as RY7,'
      '  Max(Case when RYNo=8 then SCBH end) as RY8,'
      '  Max(Case when RYNo=9 then SCBH end) as RY9,'
      '  Max(Case when RYNo=10 then SCBH end) as RY10,'
      '  Max(Case when RYNo=11 then SCBH end) as RY11,'
      '  Max(Case when RYNo=12 then SCBH end) as RY12,'
      '  Max(Case when RYNo=13 then SCBH end) as RY13,'
      '  Max(Case when RYNo=14 then SCBH end) as RY14,'
      '  Max(Case when RYNo=15 then SCBH end) as RY15,'
      '  Max(Case when RYNo=16 then SCBH end) as RY16,'
      '  Max(Case when RYNo=17 then SCBH end) as RY17,'
      '  Max(Case when RYNo=18 then SCBH end) as RY18,'
      '  Max(Case when RYNo=19 then SCBH end) as RY19,'
      '  Max(Case when RYNo=20 then SCBH end) as RY20,'
      '  Max(Case when RYNo=21 then SCBH end) as RY21,'
      '  Max(Case when RYNo=22 then SCBH end) as RY22,'
      '  Max(Case when RYNo=23 then SCBH end) as RY23,'
      '  Max(Case when RYNo=24 then SCBH end) as RY24,'
      '  Max(Case when RYNo=25 then SCBH end) as RY25,'
      '  Max(Case when RYNo=1 then Convert(float,Qty) end) as Qty1,'
      '  Max(Case when RYNo=2 then Convert(float,Qty) end) as Qty2,'
      '  Max(Case when RYNo=3 then Convert(float,Qty) end) as Qty3,'
      '  Max(Case when RYNo=4 then Convert(float,Qty) end) as Qty4,'
      '  Max(Case when RYNo=5 then Convert(float,Qty) end) as Qty5,'
      '  Max(Case when RYNo=6 then Convert(float,Qty) end) as Qty6,'
      '  Max(Case when RYNo=7 then Convert(float,Qty) end) as Qty7,'
      '  Max(Case when RYNo=8 then Convert(float,Qty) end) as Qty8,'
      '  Max(Case when RYNo=9 then Convert(float,Qty) end) as Qty9,'
      '  Max(Case when RYNo=10 then Convert(float,Qty) end) as Qty10,'
      '  Max(Case when RYNo=11 then Convert(float,Qty) end) as Qty11,'
      '  Max(Case when RYNo=12 then Convert(float,Qty) end) as Qty12,'
      '  Max(Case when RYNo=13 then Convert(float,Qty) end) as Qty13,'
      '  Max(Case when RYNo=14 then Convert(float,Qty) end) as Qty14,'
      '  Max(Case when RYNo=15 then Convert(float,Qty) end) as Qty15,'
      '  Max(Case when RYNo=16 then Convert(float,Qty) end) as Qty16,'
      '  Max(Case when RYNo=17 then Convert(float,Qty) end) as Qty17,'
      '  Max(Case when RYNo=18 then Convert(float,Qty) end) as Qty18,'
      '  Max(Case when RYNo=19 then Convert(float,Qty) end) as Qty19,'
      '  Max(Case when RYNo=20 then Convert(float,Qty) end) as Qty20,'
      '  Max(Case when RYNo=21 then Convert(float,Qty) end) as Qty21,'
      '  Max(Case when RYNo=22 then Convert(float,Qty) end) as Qty22,'
      '  Max(Case when RYNo=23 then Convert(float,Qty) end) as Qty23,'
      '  Max(Case when RYNo=24 then Convert(float,Qty) end) as Qty24,'
      '  Max(Case when RYNo=25 then Convert(float,Qty) end) as Qty25'
      'from ('
      
        'select *,ROW_NUMBER() over (PARTITION BY SCDATE,DepNo ORDER BY S' +
        'CDATE,DepNo,SCBH Asc) as  RYNo from ('
      
        'select convert(varchar,SCBB.SCDate,111) as SCDate ,SCBB.DepNo,SC' +
        'BBS.SCBH,isnull(sum(Convert(float,SCBBS.Qty)),0)  as Qty'
      'from SCBB'
      'left join SCBBS on  SCBB.ProNo=SCBBS.ProNo'
      
        'left join  RSCQ on convert(varchar,RSCQ.RSDate,111)=convert(varc' +
        'har,SCBB.SCDate,111) and RSCQ.DepNo=SCBB.DepNo'
      
        'where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) b' +
        'etween '
      
        '       (convert(smalldatetime,convert(varchar,GETDATE(),111))-1)' +
        ' and (convert(smalldatetime,convert(varchar,GETDATE(),111))-1)'
      '       and SCBB.GSBH ='#39'VA12'#39
      '       and (SCBBS.GXLB='#39'A'#39' or SCBBS.GXLB='#39'S'#39' or SCBBS.GXLB='#39'C'#39' )'
      
        '       Group by convert(varchar,SCBB.SCDate,111)  ,SCBB.DepNo,SC' +
        'BBS.SCBH'
      '       ) SCBBS ) SCBBS'
      
        '   Group by   SCDate,DepNo  ) RYList on RYList.SCDate=SCBB.SCDat' +
        'e and RYList.DepNo=SCBB.DepNO '
      'left join BDepartment on BDepartment.ID = SCBB.DepNo'
      
        'left join #HumData  on #HumData.dv_ma COLLATE DATABASE_DEFAULT =' +
        'BDepartment.ID_HRM COLLATE DATABASE_DEFAULT'
      '--'
      '   ) Scbbs'
      'order by GXLB,DepName')
    Left = 160
    Top = 136
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 208
    Top = 136
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 160
    Top = 176
  end
  object ExeQuery: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'if  not exists(select *  from   master..sysservers  where  srvna' +
        'me= '#39'HumanDB'#39')'
      'Exec sp_addlinkedserver'
      '   @server='#39'HumanDB'#39','
      '   @srvproduct='#39#39','
      '   @provider='#39'SQLOLEDB'#39','
      '   @datasrc='#39' 192.168.23.12'#39','
      '   @catalog='#39'P0104-TYXUAN'#39)
    Left = 208
    Top = 176
  end
  object Qtemp1: TQuery
    DatabaseName = 'DB'
    Left = 248
    Top = 136
  end
end
