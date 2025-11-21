USE xu2
GO
--//[1] Create Linkserver
Exec sp_addlinkedserver
   @server='tyxuanDB', --//linkserver name.
   @srvproduct='', --//一般描述
   @provider='SQLOLEDB', --//OLEDB Provider name, check BOL for more providers
   @datasrc=' 192.168.23.9', --//遠端Server Name  192.168.11.100\sql2k8
   @catalog='LIY_ERP' --//default database for linkserver
GO

--//[2]Add linked server login
Exec sp_addlinkedsrvlogin
@useself='false', --//false=使用遠端使用者/密碼登入
 --//true=使用本地端使用者/密碼連線遠端SERVER                        
@rmtsrvname='tyxuanDB', --//Linked server name
@rmtuser='tyx' , --//遠端登入使用者
@rmtpassword='tyx' --//遠端登入使用者密碼
GO

----------------------------------------------料品基本資料
truncate table a0pdtr
insert into a0pdtr (fdati, fdaus ,fpdno ,fpdna ,fpdun , fiono)
select 
       replace(convert(varchar(8), Getdate(), 112)+convert(varchar(8), Getdate(), 114), ':','') as fdati
	   ,'SYSTEM' as fdaus
	   ,CLZL.cldh as fpdno
	   ,CLZL.ywpm as fpdna
	   ,IsNull(CLZL.dwbh,'') as fpdun
	   ,'原料' as fiono
from tyxuanDB.LIY_ERP.dbo.CLZL as CLZL
where IsNull(CLZL.ywpm,'')<>'' 

select top 100 * from a0pdtr

select * from a0pdtr
---------------------------------------------成品
insert into a0pdtr (fdati, fdaus ,fpdno ,fpdna ,fpdun , fiono)
select 
       replace(convert(varchar(8), Getdate(), 112)+convert(varchar(8), Getdate(), 114), ':','') as fdati
	   ,'SYSTEM' as fdaus  
       ,XXZL.XieXing+XXZL.SheHao as fpdno
	   ,XXZL.ARTICLE as fpdna
	   ,'PRS' as fpdun
	   ,'成品' as fiono
from 
(
select XXZL.* from (
Select XXZL.XieXing,XXZL.SheHao,XXZL.ARTICLE
from tyxuanDB.LIY_ERP.dbo.XXZL XXZL
where XXZL.KHDH='036' ) XXZL
) XXZL

select * from a0pdtr
select COUNT(*) from a0pdtr where fiono='成品'
select COUNT(*) from a0pdtr where fiono='原料'
---------------------------------------------對象(供應商)+客戶+員工
truncate table a0cbtr 
insert into a0cbtr (fdati, fdaus ,fcbno ,fcbna ,fcbfn ,fboss ,fcoma ,ftel1 ,ffax1 ,fidno ,fcuno ,fadd1 ,fadd2 ,fadd3, fcbty, ftaxs, fcrty, fenda)
select 
       replace(convert(varchar(8), Getdate(), 112)+convert(varchar(8), Getdate(), 114), ':','') as fdati
	   ,'SYSTEM' as fdaus
	   ,ZSZL.zsdh as fcbno
	   ,IsNull(ZSZL.zsjc,'') as fcbna
	   ,IsNull(ZSZL.zsqm,'') as fcbfn
	   ,IsNull(ZSZL.fzr,'') as fboss
	   ,IsNull(ZSZL.llr,'') as fcoma
	   ,IsNull(ZSZL.dh,'') as ftel1
	   ,IsNull(ZSZL.cz,'') as ffax1
	   ,IsNull(ZSZL.tybh,'') as fidno
	   ,IsNull(ZSZL.bb,'') as fcuno
	   ,IsNull(ZSZL.fpdz,'') as fadd1
	   ,IsNull(ZSZL.fpdz,'') as fadd2
	   ,IsNull(ZSZL.yjdz,'') as fadd3
	   ,'供應商'  as fcbty
	   ,6 as ftaxs
	   ,'應付' as fcrty
	   ,31 as fenda
from tyxuanDB.LIY_ERP.dbo.ZSZL as ZSZL
where IsNull(ZSZL.TYJH,'')<>'Y'

insert into a0cbtr (fdati, fdaus ,fcbno ,fcbna ,fcbfn ,fboss ,fcoma ,ftel1 ,ffax1 ,fidno ,fcuno ,fadd1 ,fadd2 ,fadd3, fcbty, ftaxs, fcrty, fenda)
select 
       replace(convert(varchar(8), Getdate(), 112)+convert(varchar(8), Getdate(), 114), ':','') as fdati
	   ,'SYSTEM' as fdaus
	   ,KFZL.kfdh as fcbno
	   ,IsNull(KFZL.kfjc,'') as fcbna
	   ,IsNull(KFZL.kfqm,'') as fcbfn
	   ,IsNull(KFZL.fzr,'') as fboss
	   ,IsNull(KFZL.llr1,'') as fcoma
	   ,IsNull(KFZL.dh,'') as ftel1
	   ,IsNull(KFZL.cz,'') as ffax1
	   ,IsNull(KFZL.tybh,'') as fidno
	   ,IsNull(KFZL.bb,'') as fcuno
	   ,IsNull(KFZL.fpdz,'') as fadd1
	   ,IsNull(KFZL.fpdz,'') as fadd2
	   ,IsNull(KFZL.yjdz,'') as fadd3
	   ,'客戶'  as fcbty
	   ,6 as ftaxs
	   ,'應收' as fcrty
	   ,31 as fenda
from tyxuanDB.LIY_ERP.dbo.KFZL as KFZL

insert into a0cbtr (fdati, fdaus ,fcbno ,fcbna ,fcbfn ,fboss ,fcoma ,ftel1 ,ffax1 ,fidno ,fcuno ,fadd1 ,fadd2 ,fadd3, fcbty, ftaxs, fcrty, fenda)
select 
       replace(convert(varchar(8), Getdate(), 112)+convert(varchar(8), Getdate(), 114), ':','') as fdati
	   ,'SYSTEM' as fdaus
	   ,Busers.USERID as fcbno
	   ,'' as fcbna
	   ,Busers.USERNAME as fcbfn
	   ,'' as fboss
	   ,'' as fcoma
	   ,'' as ftel1
	   ,'' as ffax1
	   ,'' as fidno
	   ,''as fcuno
	   ,'' as fadd1
	   ,'' as fadd2
	   ,'' as fadd3
	   ,'員工'  as fcbty
	   ,6 as ftaxs
	   ,'應付' as fcrty
	   ,31 as fenda
from tyxuanDB.LIY_ERP.dbo.BUsers as Busers

select * from a0cbtr where fcbty='供應商'
select * from a0cbtr where fcbty='客戶'
select * from a0cbtr where fcbty='員工'

--------------------------------------------------部門基本資料+廠別
truncate table a0detr
insert into a0detr (fdati, fdaus, fdeno, fdena) 
select 
       replace(convert(varchar(8), Getdate(), 112)+convert(varchar(8), Getdate(), 114), ':','') as fdati
	   ,'SYSTEM' as fdaus
	   ,BDepartment.ID as fdeno
	   ,BDepartment.DepName as fdena
from tyxuanDB.LIY_ERP.dbo.BDepartment as BDepartment  

insert into a0detr (fdati, fdaus, fdeno, fdena) 
select 
       replace(convert(varchar(8), Getdate(), 112)+convert(varchar(8), Getdate(), 114), ':','') as fdati
	   ,'SYSTEM' as fdaus
	   ,bgszl.gsdh as fdeno
	   ,bgszl.gszwqm as fdena
from  tyxuanDB.LIY_ERP.dbo.bgszl
select * from a0detr 

-------------------------------------------------幣別基本資料
truncate table a0cutr
insert into a0cutr (fdati, fdaus, fcuno, fcuna) 
select 
       replace(convert(varchar(8), Getdate(), 112)+convert(varchar(8), Getdate(), 114), ':','') as fdati
	   ,'SYSTEM' as fdaus
	   ,LBZLS.lbdh as fcuno
	   ,LBZLS.ywsm as fcuna         
from tyxuanDB.LIY_ERP.dbo.LBZLS LBZLS
where LBZLS.lb='01'

select * from a0cutr
-------------------------------------------------製程基本資料
truncate table ct01tr
insert into ct01tr (fdati, fdaus, fstno, fstna) 
select top 100
       replace(convert(varchar(8), Getdate(), 112)+convert(varchar(8), Getdate(), 114), ':','') as fdati
	   ,'SYSTEM' as fdaus
       ,SCGXDY.GXLB as fstno
	   ,SCGXDY.CMEMO as fstna
from (select GXLB,Max(CMEMO) as CMEMO from tyxuanDB.LIY_ERP.dbo.SCGXDY Group by GXLB ) SCGXDY
select * from ct01tr
------------------------------------------------BOM 產品結構

truncate table c15tr
insert into c15tr (fdati, fdaus, fpdno, fdate,funiq, fsequ,fpdna, fpdun, fpdn1, fpdu1, favus, fdeve) 
select 
       replace(convert(varchar(8), Getdate(), 112)+convert(varchar(8), Getdate(), 114), ':','') as fdati
	   ,'SYSTEM' as fdaus  
       ,XXZLS.XieXing+XXZLS.SheHao as fpdno
	   ,Convert(varchar,XXZLS.USERDATE,111) as fdate
	   ,XXZLS.BWBH as funiq
	   ,XXZLS.fsequ
	   ,IsNull(XXZLS.ARTICLE,'') as fpdna
	   ,'PRS' as fpdun
	   ,IsNull(XXZLS.CLBH,'') as fpdn1
	   ,IsNull(XXZLS.dwbh,'') as fpdu1
	   ,IsNull(XXZLS.CLSL,0.0) as favus
	   ,XXZLS.LOSS as fdeve
from 
(
select  XXZLS.*,ROW_NUMBER() over (PARTITION BY XieXing,SheHao ORDER BY CLBH desc) as fsequ from (
Select XXZLS.XieXing,XXZLS.SheHao,XXZLS.USERDATE,CLZL.dwbh,XXZLS.CLSL,XXZLS.LOSS,XXZL.ARTICLE,XXZLS.BWBH,XXZLS.CLBH
from tyxuanDB.LIY_ERP.dbo.XXZLS XXZLS
left join tyxuanDB.LIY_ERP.dbo.XXZL on XXZL.XieXing=XXZLS.XieXing and XXZL.SheHao=XXZLS.SheHao
left join tyxuanDB.LIY_ERP.dbo.CLZL on CLZL.cldh=XXZLS.CLBH
where XXZL.KHDH='036' ) XXZLS
) XXZLS
        
select * from c15tr where fpdno='CON12SJC740101' and fsequ=1
select COUNT(*) from c15tr
----------------------------------------------進貨單 原材料入庫進貨
truncate table c14tr
truncate table c14trmode

delete from c14tr where fiono='01'
delete from c14trmode where fiono='01'

Declare @fdati_R  smalldatetime
set @fdati_R  =Getdate()
insert into c14tr (fdati, fdaus, fiono, fdate, flino, fsequ, fdeno, fdena, fcbno, fcbna, fcuno, frava, fcbo1, fcba1, fpdno, fpdpr, fbaqu, fpdu2, fcumo, fsamo, flin1, fodmo, ftaxs) 
select 
       replace(convert(varchar(8), @fdati_R, 112)+convert(varchar(8), @fdati_R, 114), ':','') as fdati
	   ,'SYSTEM' as fdaus 
	   ,'01' as fiono
	   ,Convert(varchar,KCRKS.RKUSERDATE,111) as fdate
	   ,KCRKS.RKNO as flino
	   ,KCRKS.fsequ as fsequ
	   ,IsNull(KCRKS.GSBH,'') as fdeno
	   ,IsNull(KCRKS.gszwqm,'') as fdena
	   ,IsNull(KCRKS.ZSBH,'') as fcbno
	   ,IsNull(KCRKS.zsjc,'') as fcbna
	   ,case when KCRKS.USPrice is not null then 'USD' else 'VND' end  as fcuno
	   ,case when KCRKS.USPrice is not null then  KCRKS.CWHL else 1 end as frava
	   ,IsNull(KCRKS.CGUSERID,'') as fcbo1
	   ,IsNull(KCRKS.CGUSERNAME,'') as fcba1
	   ,KCRKS.CLBH as fpdno
	   ,case when KCRKS.USPrice is not null then KCRKS.USPrice else KCRKS.VNPrice end as fpdpr
	   ,KCRKS.Qty as fbaqu
	   ,KCRKS.dwbh as fpdu2
	   ,case when KCRKS.USPrice is not null then KCRKS.USACC else KCRKS.VNACC  end  as fcumo
	   ,case when KCRKS.USPrice is not null then KCRKS.VNACC else KCRKS.VNACC  end  as fsamo
	   ,KCRKS.ZSNO as flin1
	   ,IsNull(KCRKS.ExchACC,0) as fodmo	  
	   ,6 as ftaxs 
from 
(
select  KCRKS.*,ROW_NUMBER() over (PARTITION BY RKNO ORDER BY CLBH desc) as fsequ from (
select KCRKS.RKNO,KCRK.GSBH,bgszl.gszwqm,KCRK.ZSBH,KCRK.ZSNO,zszl.zsjc ,KCRK.USERDATE as RKUSERDATE,KCRKS.CLBH,KCRKS.CWHL,cgzl.USERID as CGUSERID,Busers.USERNAME as CGUSERNAME,CLZL.dwbh,Sum(KCRKS.Qty) as Qty,Max(KCRKS.VNPrice) as VNPrice,Max(KCRKS.USPrice) as USPrice,Sum(KCRKS.VNACC) as VNACC,Sum(KCRKS.USACC) as USACC,Sum(KCRKS.ExchACC) as ExchACC
from tyxuanDB.LIY_ERP.dbo.KCRKS KCRKS
left join tyxuanDB.LIY_ERP.dbo.KCRK KCRK on KCRK.RKNO=KCRKS.RKNO
left join tyxuanDB.LIY_ERP.dbo.CLZL CLZL on CLZL.cldh=KCRKS.CLBH 
left join tyxuanDB.LIY_ERP.dbo.bgszl bgszl on bgszl.gsdh=KCRK.GSBH
left join tyxuanDB.LIY_ERP.dbo.zszl zszl on zszl.zsdh=KCRK.ZSBH   
left join tyxuanDB.LIY_ERP.dbo.cgzl cgzl on cgzl.CGNO=KCRK.ZSNO
left join tyxuanDB.LIY_ERP.dbo.Busers Busers on Busers.USERID=cgzl.USERID
where KCRK.CFMID<>'NO' and KCRK.YN='5' and CLZL.cldh is not null  
      and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between '2020/4/1' and '2020/5/31'
	  --and KCRK.YN_Date>GetDate()-2 and KCRK.RKNO collate  Chinese_Taiwan_Stroke_BIN not in (select flino from c14trmode where fiono='01') 
Group by KCRKS.RKNO,KCRK.GSBH,bgszl.gszwqm,KCRK.ZSBH,KCRK.ZSNO,zszl.zsjc,KCRK.USERDATE ,KCRKS.CLBH,CLZL.dwbh,KCRKS.CWHL,cgzl.USERID,Busers.USERNAME ) KCRKS
) KCRKS



insert into c14trmode(fdati, fdaus, fiono, fdate, flino, fmode) 
select 
       replace(convert(varchar(8), @fdati_R, 112)+convert(varchar(8), @fdati_R, 114), ':','') as fdati
	   ,'SYSTEM' as fdaus 
	   ,'01' as fiono
	   ,Convert(varchar,KCRKS.YN_Date,111) as fdate
	   ,KCRKS.RKNO as flino
	   ,'N' as fmode
from 
(
select KCRK.RKNO,KCRK.YN_Date
from tyxuanDB.LIY_ERP.dbo.KCRK KCRK
left join tyxuanDB.LIY_ERP.dbo.KCRKS KCRKS on KCRK.RKNO=KCRKS.RKNO
left join tyxuanDB.LIY_ERP.dbo.CLZL CLZL on CLZL.cldh=KCRKS.CLBH 
where KCRK.CFMID<>'NO' and KCRK.YN='5' and CLZL.cldh is not null 
     and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between '2020/4/1' and '2020/5/31'
Group by KCRK.RKNO,KCRK.YN_Date
) KCRKS
select COUNT(*) from c14tr where fiono='01'
select COUNT(*) from c14trmode where fiono='01'
select * from c14tr where fiono='01' and flino='20200402623'
select * from c14trmode where fiono='01' and fmode='M'
--delete from c14trmode where fiono='01' and fmode='M'

select * from c14trmode,c14tr 
where c14tr.fiono='01' and c14tr.fdati=c14trmode.fdati and c14tr.flino=c14trmode.flino and c14trmode.fmode='N'
     and c14tr.flino not in (select flino from c14trmode where c14trmode.fiono='01' and c14trmode.fmode='D' )
select * from tyxuanDB.LIY_ERP.dbo.KCRK where RKNO='20200402623'

select * from c14trmode where fiono='01'
----------------------------------------------------------------------加工入庫
delete from c14tr where fiono='99'
delete from c14trmode where fiono='99'

Declare @fdati_J  smalldatetime
set @fdati_J  =Getdate()

insert into c14tr (fdati, fdaus, fiono, fdate, flino, fsequ, fdeno, fdena, fcbno, fcbna, fcuno, frava, fcbo1, fcba1, fpdno, fpdpr, fbaqu, fpdu2, fcumo, fsamo, flin1) 
select 
       replace(convert(varchar(8), @fdati_J , 112)+convert(varchar(8), @fdati_J , 114), ':','') as fdati
	   ,'SYSTEM' as fdaus 
	   ,'99' as fiono
	   ,Convert(varchar,JGZLS.JGUSERDATE,111) as fdate
	   ,JGZLS.JGNO as flino
	   ,JGZLS.fsequ as fsequ
	   ,JGZLS.GSBH as fdeno
	   ,JGZLS.gszwqm as fdena
	   ,IsNull(JGZLS.ZSBH,'') as fcbno
	   ,IsNull(JGZLS.zsjc,'') as fcbna
	   ,'VND' as fcuno
	   ,JGZLS.CWHL as frava
	   ,IsNull(JGZLS.CGUSERID,'')  as fcbo1
	   ,IsNull(JGZLS.CGUSERNAME,'')  as fcba1
	   ,JGZLS.CLBH as fpdno
	   ,JGZLS.VNPrice as fpdpr
	   ,JGZLS.Qty as fbaqu
	   ,JGZLS.dwbh as fpdu2
	   ,JGZLS.USACC as fcumo
	   ,JGZLS.VNACC as fsamo
	   ,JGZLS.ZSNO as flin1	   
from 
(
select JGZLS.*,ROW_NUMBER() over (PARTITION BY JGNO ORDER BY CLBH desc) as fsequ from (
select JGZLS.JGNO,JGZL.GSBH,bgszl.gszwqm,JGZL.ZSBH,null as ZSNO,zszl.zsjc ,JGZL.CFMDate1 as JGUSERDATE,JGZLS.CLBH,JGZLS.CWHL,null as CGUSERID,null as CGUSERNAME,CLZL.dwbh,Sum(JGZLS.Qty) as Qty,null as VNPrice,null as VNACC,null as USACC
from tyxuanDB.LIY_ERP.dbo.JGZLS JGZLS
left join tyxuanDB.LIY_ERP.dbo.JGZL JGZL on JGZL.JGNO=JGZLS.JGNO
left join tyxuanDB.LIY_ERP.dbo.CLZL CLZL on CLZL.cldh=JGZLS.CLBH  
left join tyxuanDB.LIY_ERP.dbo.bgszl bgszl on bgszl.gsdh=JGZL.GSBH
left join tyxuanDB.LIY_ERP.dbo.zszl zszl on zszl.zsdh=JGZL.ZSBH   
where JGZL.CFMID1<>'NO' and JGZL.YN='5' and JGZLS.ZMLB='ZZZZZZZZZZ' 
      and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between '2020/3/1' and '2020/3/31' --and JGZL.GSBH='VA12'
Group by JGZLS.JGNO,JGZL.GSBH,bgszl.gszwqm,JGZL.ZSBH,zszl.zsjc,JGZL.CFMDate1,JGZLS.CLBH,JGZLS.CWHL,CLZL.dwbh ) JGZLS
) JGZLS


insert into c14trmode(fdati, fdaus, fiono, fdate, flino, fmode) 
select 
       replace(convert(varchar(8), @fdati_J, 112)+convert(varchar(8), @fdati_J, 114), ':','') as fdati
	   ,'SYSTEM' as fdaus 
	   ,'99' as fiono
	   ,Convert(varchar,JGZLS.JGUSERDATE,111) as fdate
	   ,JGZLS.JGNO as flino
	   ,'N' as fmode
from 
(
select JGZLS.JGNO,JGZL.CFMDate1 as JGUSERDATE
from tyxuanDB.LIY_ERP.dbo.JGZL JGZL
left join tyxuanDB.LIY_ERP.dbo.JGZLS JGZLS on JGZL.JGNO=JGZLS.JGNO
where JGZL.CFMID1<>'NO' and JGZL.YN='5' and JGZLS.ZMLB='ZZZZZZZZZZ'
      and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between '2020/3/1' and '2020/3/31'
Group by JGZLS.JGNO,JGZL.CFMDate1
) JGZLS

select * from c14tr
select * from c14trmode

---------------------------------------------------------------------領料單
delete from c14tr where fiono='54'
delete from c14trmode where fiono='54'

Declare @fdati_L  smalldatetime
set @fdati_L  =Getdate()

insert into c14tr (fdati, fdaus, fiono, fdate, flino, fsequ, fdeno, fdena, fcbo1, fcba1, fpdn1, fpda1, fpdno, fbaqu, flin5) 
select 
       replace(convert(varchar(8), @fdati_L, 112)+convert(varchar(8), @fdati_L, 114), ':','') as fdati
	   ,'SYSTEM' as fdaus 
	   ,'54' as fiono
	   ,Convert(varchar,KCLLS.LLUSERDATE,111) as fdate
	   ,KCLLS.LLNO as flino
	   ,KCLLS.fsequ as fsequ
	   ,IsNull(KCLLS.DepID,'') as fdeno
	   ,IsNull(KCLLS.DepName,'') as fdena
	   ,IsNull(KCLLS.USERID,'') as fcbo1
	   ,IsNull(KCLLS.USERNAME,'') as fcba1
	   ,IsNull(KCLLS.fpdn1,'') as fpdn1
	   ,IsNull(KCLLS.fpda1,'') as fpda1
	   ,IsNull(KCLLS.CLBH,'') as fpdno
	   ,KCLLS.Qty as fbaqu
	   ,KCLLS.SCBH as flin5
from 
(
select KCLLS.*,ROW_NUMBER() over (PARTITION BY LLNO ORDER BY CLBH,SCBH desc) as fsequ from (
select KCLLS.LLNO,KCLL.DepID,BDepartment.DepName,KCLL.CFMDate as LLUSERDATE,KCLL.USERID,Busers.USERNAME,KCLLS.CLBH,Sum(KCLLS.Qty) as Qty,KCLL.SCBH,DDZL.XieXing+DDZL.SheHao as fpdn1,DDZL.ARTICLE as fpda1 
from tyxuanDB.LIY_ERP.dbo.KCLLS KCLLS 
left join tyxuanDB.LIY_ERP.dbo.KCLL KCLL on KCLL.LLNO=KCLLS.LLNO
left join tyxuanDB.LIY_ERP.dbo.CLZL CLZL on CLZL.cldh=KCLLS.CLBH
left join tyxuanDB.LIY_ERP.dbo.DDZL DDZL on DDZL.DDBH=KCLLS.SCBH
left join tyxuanDB.LIY_ERP.dbo.BDepartment  BDepartment on BDepartment.ID=KCLL.DepID
left join tyxuanDB.LIY_ERP.dbo.Busers Busers on Busers.USERID=KCLLS.USERID 
where KCLL.CFMID<>'NO' and KCLL.YN='5'  and CLZL.cldh is not null
      and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between '2020/4/1' and '2020/5/31' 
Group by KCLLS.LLNO,KCLL.DepID,BDepartment.DepName,KCLL.CFMDate,KCLL.USERID,Busers.USERNAME,KCLLS.CLBH,KCLL.SCBH,DDZL.XieXing,DDZL.XieXing+DDZL.SheHao,DDZL.ARTICLE ) KCLLS
) KCLLS


insert into c14trmode(fdati, fdaus, fiono, fdate, flino, fmode) 
select 
       replace(convert(varchar(8), @fdati_L, 112)+convert(varchar(8), @fdati_L, 114), ':','') as fdati
	   ,'SYSTEM' as fdaus 
	   ,'54' as fiono
	   ,Convert(varchar,KCLLS.YN_Date,111) as fdate
	   ,KCLLS.LLNO as flino
	   ,'N' as fmode
from 
(
select KCLLS.LLNO,KCLL.YN_Date
from tyxuanDB.LIY_ERP.dbo.KCLLS KCLLS 
left join tyxuanDB.LIY_ERP.dbo.KCLL KCLL on KCLL.LLNO=KCLLS.LLNO
left join tyxuanDB.LIY_ERP.dbo.CLZL CLZL on CLZL.cldh=KCLLS.CLBH
where KCLL.CFMID<>'NO' and KCLL.YN='5' and CLZL.cldh is not null
      and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between '2020/4/1' and '2020/5/31'
Group by KCLLS.LLNO,KCLL.YN_Date
) KCLLS

select COUNT(*) from c14tr where fiono='54' 
select COUNT(*) from c14trmode where fiono='54'

select *  from c14tr where fiono='54' 
select * from c14trmode where fiono='54' order by fdati

select * from c14trmode,c14tr 
where c14tr.fiono='54' and c14tr.fdati=c14trmode.fdati and c14tr.flino=c14trmode.flino and c14trmode.fmode='N'
          and c14tr.flino not in (select flino from c14trmode where c14trmode.fiono='54' and c14trmode.fmode='D' )
-----------------------------------------------------------------繳庫單 成品入庫
delete from c14tr where fiono='03'
delete from c14trmode where fiono='03'

Declare @fdati_I  smalldatetime
set @fdati_I  =Getdate()

insert into c14tr (fdati, fdaus, fiono, fdate, flino, fsequ, fdeno, fdena, fcbo1, fcba1, fpdno, fpdna, fpdu2, fbaqu, flin5) 
select 
       replace(convert(varchar(8), @fdati_I, 112)+convert(varchar(8), @fdati_I, 114), ':','') as fdati
	   ,'SYSTEM' as fdaus 
	   ,'03' as fiono
	   ,Convert(varchar,YWCP.INDATE,111) as fdate
	   ,YWCP.DDBH as flino
	   ,YWCP.CARTONNO as fsequ
	   ,IsNull(YWCP.DepNO,'') as fdeno
	   ,IsNull(YWCP.DepName,'') as fdena
	   ,IsNull(YWCP.USERID,'') as fcbo1
	   ,IsNull(YWCP.USERNAME,'') as fcba1
	   ,IsNull(YWCP.fpdno,'') as fpdno
	   ,IsNull(YWCP.fpdna,'') as fpdna
	   ,'PRS' as fpdu2
	   ,YWCP.Qty as fbaqu
	   ,IsNull(YWCP.DDBH,'') as flin5
from 
(
select YWCP.*,ROW_NUMBER() over (PARTITION BY DDBH ORDER BY DDBH desc) as fsequ from (
select YWCP.DDBH,YWCP.CARTONNO,Max(YWCP.DepNO) as DepNO,Max(BDepartment.DepName) as DepName,YWCP.INDATE,Max(YWCP.USERID) as USERID,Max(Busers.USERNAME) as USERNAME,Sum(YWCP.Qty) as Qty,DDZL.Pairs,DDZL.XieXing+DDZL.SheHao as fpdno,DDZL.ARTICLE as fpdna
from tyxuanDB.LIY_ERP.dbo.YWCP YWCP 
left join tyxuanDB.LIY_ERP.dbo.YWDD on YWDD.DDBH=YWCP.DDBH
left join tyxuanDB.LIY_ERP.dbo.DDZL on DDZL.DDBH=YWDD.YSBH 
left join tyxuanDB.LIY_ERP.dbo.BDepartment  BDepartment on BDepartment.ID=YWCP.DepNO
left join tyxuanDB.LIY_ERP.dbo.Busers Busers on Busers.USERID=YWCP.USERID 
where convert(smalldatetime,convert(varchar,YWCP.INDATE,111)) between '2020/5/6' and '2020/5/6' and YWCP.Qty>0
Group by YWCP.DDBH,YWCP.CARTONNO,YWCP.INDATE,DDZL.XieXing+DDZL.SheHao,DDZL.ARTICLE ,DDZL.Pairs ) YWCP
) YWCP

insert into c14trmode(fdati, fdaus, fiono, fdate, flino, fmode) 
select 
       replace(convert(varchar(8), @fdati_I, 112)+convert(varchar(8), @fdati_I, 114), ':','') as fdati
	   ,'SYSTEM' as fdaus 
	   ,'03' as fiono
	   ,Convert(varchar,YWCP.INDATE,111) as fdate
	   ,YWCP.DDBH as flino
	   ,'N' as fmode
from 
(
select YWCP.DDBH,Max(YWCP.INDATE) as INDATE
from tyxuanDB.LIY_ERP.dbo.YWCP YWCP 
where convert(smalldatetime,convert(varchar,YWCP.INDATE,111)) between '2020/4/1' and '2020/5/31' and YWCP.Qty>0
Group by YWCP.DDBH
) YWCP

select COUNT(*) from c14tr where fiono='03'
select COUNT(*) from c14trmode where fiono='03'

select * from c14tr where fiono='03'
select * from c14trmode where fiono='03' and flino='Y2005-0234'   fdate='2020/05/05' 
select * from c14trmode,c14tr 
where c14tr.fiono='03' and c14tr.fdati=c14trmode.fdati and c14tr.flino=c14trmode.flino and c14trmode.fmode='N'
          and c14tr.flino not in (select flino from c14trmode where c14trmode.fiono='03' and c14trmode.fmode='D' )
select  distinct flino,fsequ from c14tr where c14tr.fiono='03' and convert(smalldatetime,convert(varchar,fdate,111)) between '2020/5/6' and '2020/5/6'          
-----------------------------------------------------------------製令工單

truncate table pr15tr
truncate table pr15trmode

Declare @fdati_ZL  smalldatetime
set @fdati_ZL  =Getdate()

insert into pr15tr(fdati, fdaus, fiono, fdate, fsequ, flino, fdeno, fdena, fstno, fdat5, finda, fquan, frela ) 
select 
       replace(convert(varchar(8), @fdati_ZL, 112)+convert(varchar(8), @fdati_ZL, 114), ':','') as fdati
	   ,'SYSTEM' as fdaus 
	   ,'03' as fiono
	   ,Convert(varchar,SMDD.USERDate,111) as fdate
	   ,SMDD.fsequ as fsequ
	   ,IsNull(SMDD.YSBH,'') as flino
	   ,IsNull(SMDD.DepNO,'') as fdeno
	   ,IsNull(SMDD.DepName,'') as fdena
	   ,IsNull(SMDD.GXLB,'') as fstno
	   ,Convert(varchar,SMDD.PlanDate,111)  as fdat5
	   ,Convert(varchar,SMDD.PlanEDate,111)  as finda
	   ,SMDD.Qty as fquan
	   ,IsNull(SMDD.YSBH,'') as frela
from 
(
select SMDD.*,ROW_NUMBER() over (PARTITION BY YSBH ORDER BY GXLB desc) as fsequ from (
select SMDD.YSBH,SMDD.GXLB,SMDD.DepNO,BDepartment.DepName,Min(PlanDate) as PlanDate,Max(PlanEdate) as PlanEDate,Sum(Qty) as Qty,SMDD.USERDate
from tyxuanDB.LIY_ERP.dbo.SMDD SMDD
left join tyxuanDB.LIY_ERP.dbo.BDepartment BDepartment on BDepartment.ID=SMDD.DepNO
where SMDD.GXLB in ('C','S','A') and SMDD.PlanDate is not null and SMDD.PlanEdate is not null
     and convert(smalldatetime,convert(varchar,SMDD.USERDate,111)) between '2020/4/1' and '2020/5/31' 
Group by SMDD.YSBH,SMDD.GXLB,SMDD.DepNO,BDepartment.DepName,SMDD.USERDate  ) SMDD
) SMDD


insert into pr15trmode(fdati, fdaus, fiono, fdate, flino, fmode) 
select 
       replace(convert(varchar(8), @fdati_ZL, 112)+convert(varchar(8), @fdati_ZL, 114), ':','') as fdati
	   ,'SYSTEM' as fdaus 
	   ,'03' as fiono
	   ,Convert(varchar,SMDD.USERDate,111) as fdate
	   ,SMDD.YSBH as flino
	   ,'N' as fmode
from 
(
select SMDD.YSBH,Max(SMDD.USERDate) as USERDate
from tyxuanDB.LIY_ERP.dbo.SMDD SMDD
where SMDD.GXLB in ('C','S','A') and SMDD.PlanDate is not null and SMDD.PlanEdate is not null
     and convert(smalldatetime,convert(varchar,SMDD.USERDate,111)) between '2020/4/1' and '2020/5/31' 
Group by SMDD.YSBH
) SMDD

select COUNT(*) from pr15tr 
select COUNT(*) from pr15trmode 

select * from pr15tr
select * from pr15trmode
----------------------------------------------------------------------日報表
truncate table pr13tr
truncate table pr13trmode

Declare @fdati_SB  smalldatetime
set @fdati_SB  =Getdate()

insert into pr13tr(fdati, fdaus, fiono, fdate, fsequ, flino, fdeno, fdena, fstno, frela, fquan, fdat1, fdat2 ) 
select 
       replace(convert(varchar(8), @fdati_SB, 112)+convert(varchar(8), @fdati_SB, 114), ':','') as fdati
	   ,'SYSTEM' as fdaus 
	   ,'03' as fiono
	   ,Convert(varchar,SCBBS.SCDate,111) as fdate
	   ,SCBBS.fsequ as fsequ
	   ,IsNull(SCBBS.ProNo,'') as flino
	   ,IsNull(SCBBS.DepNo,'') as fdeno
	   ,IsNull(SCBBS.DepName,'') as fdena
	   ,IsNull(SCBBS.GXLB,'') as fstno
	   ,IsNull(SCBBS.SCBH,'') as frela
	   ,SCBBS.Qty as fquan
	   ,Convert(varchar,SCBBS.SCDate,111) as fdat1
	   ,Convert(varchar,SCBBS.SCDate,111) as fdat2
from 
(
select SCBBS.*,ROW_NUMBER() over (PARTITION BY ProNo ORDER BY GXLB desc) as fsequ from (
select SCBBS.SCBH,SCBB.SCDate  ,SCBB.DepNo,BDepartment.DepName,SCBBS.GXLB,SCBB.ProNo,SCBBS.Qty
from tyxuanDB.LIY_ERP.dbo.SCBB SCBB
left join tyxuanDB.LIY_ERP.dbo.SCBBS SCBBS on SCBB.ProNo=SCBBS.ProNo
left join tyxuanDB.LIY_ERP.dbo.BDepartment BDepartment on BDepartment.ID=SCBB.DepNo
where SCBBS.GXLB in ('C','S','A')  and convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between '2020/4/1' and '2020/5/10' 
  ) SCBBS
) SCBBS



insert into pr13trmode(fdati, fdaus, fiono, fdate, flino, fmode) 
select 
       replace(convert(varchar(8), @fdati_SB, 112)+convert(varchar(8), @fdati_SB, 114), ':','') as fdati
	   ,'SYSTEM' as fdaus 
	   ,'03' as fiono
	   ,Convert(varchar,SCBBS.USERDATE,111) as fdate
	   ,SCBBS.ProNo as flino
	   ,'N' as fmode
from (
select SCBBS.ProNo,Max(SCBB.USERDATE) as USERDATE 
from tyxuanDB.LIY_ERP.dbo.SCBB SCBB
left join tyxuanDB.LIY_ERP.dbo.SCBBS SCBBS on SCBB.ProNo=SCBBS.ProNo
where SCBBS.GXLB in ('C','S','A')  and convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between '2020/4/1' and '2020/5/10'
Group by SCBBS.ProNo ) SCBBS

select COUNT(*) from pr13tr
select COUNT(*) from pr13trmode

select * from pr13tr
select * from pr13trmode
-------------------------------------------------------------------銷貨單
delete from c14tr where fiono='52'
delete from c14trmode where fiono='52'

Declare @fdati_Ex  smalldatetime
set @fdati_Ex =Getdate()

insert into c14tr (fdati, fdaus, fiono, fdate, flino, fsequ, fcuno, ftaxs, fdeno, fdena, fpdpr, fbaqu, fpdu2, fcumo, fcbpu, flin1, fpdno, fcbno, fcbna) 
select 
       replace(convert(varchar(8), @fdati_Ex, 112)+convert(varchar(8), @fdati_Ex, 114), ':','') as fdati
	   ,'SYSTEM' as fdaus 
	   ,'52' as fiono
	   ,Convert(varchar,INVOICE_D.UserDate,111) as fdate
	   ,INVOICE_D.INV_NO as flino
	   ,INVOICE_D.PACK_NO as fsequ
	   ,'USD' as fcuno
	   ,6 as ftaxs
	   ,'VTX' as fdeno
	   ,'億春總公司' as fdena
	   ,INVOICE_D.UNIT_PRICE as fpdpr
	   ,INVOICE_D.PAIRS as fbaqu
	   ,'PRS' as fpdu2
	   ,INVOICE_D.AMOUNT as fcumo
	   ,IsNull(INVOICE_D.PO,'') as fcbpu
	   ,IsNull(INVOICE_D.RYNO,'') as flin1 
	   ,IsNull(INVOICE_D.fpdno,'') as fpdno
	   ,IsNull(INVOICE_D.KHBH,'') as fcbno
	   ,IsNull(INVOICE_D.kfjc,'') as fcbna 
from (
select INV_NO,RYNO,convert(int,PACK_NO) as PACK_NO,PO,PAIRS,UNIT_PRICE,AMOUNT,UserDate,DDZL.XieXing+DDZL.SheHao as fpdno,DDZL.KHBH,KFZL.kfjc
from tyxuanDB.LIY_ERP.dbo.INVOICE_D INVOICE_D
left join tyxuanDB.LIY_ERP.dbo.DDZL DDZL on DDZL.DDBH=INVOICE_D.RYNO
left join tyxuanDB.LIY_ERP.dbo.KFZL KFZL on DDZL.KHBH=KFZL.kfdh
where convert(smalldatetime,convert(varchar,INVOICE_D.UserDate,111)) between '2020/5/6' and '2020/5/6'
) INVOICE_D


insert into c14trmode(fdati, fdaus, fiono, fdate, flino, fmode) 
select 
       replace(convert(varchar(8), @fdati_Ex, 112)+convert(varchar(8), @fdati_Ex, 114), ':','') as fdati
	   ,'SYSTEM' as fdaus 
	   ,'52' as fiono
	   ,Convert(varchar,INVOICE_D.UserDate,111) as fdate
	   ,INVOICE_D.INV_NO as flino
	   ,'N' as fmode
from 
(
select INV_NO,Max(UserDate) as UserDate
from tyxuanDB.LIY_ERP.dbo.INVOICE_D INVOICE_D
where convert(smalldatetime,convert(varchar,INVOICE_D.UserDate,111)) between '2020/4/1' and '2020/5/31'
Group by INV_NO
) INVOICE_D

select COUNT(*) from  c14tr where fiono='52'
select COUNT(*) from c14trmode where fiono='52'

select * from  c14tr where fiono='52'
select * from c14trmode where fiono='52'

select * from c14trmode,c14tr 
where c14tr.fiono='52' and c14tr.fdati=c14trmode.fdati and c14tr.flino=c14trmode.flino and c14trmode.fmode='N'
          and c14tr.flino not in (select flino from c14trmode where c14trmode.fiono='52' and c14trmode.fmode='M' )
-------------------------------------------------------------------------------------
Exec sp_droplinkedsrvlogin 'tyxuanDB',Null 
Exec sp_dropserver 'tyxuanDB','droplogins'



