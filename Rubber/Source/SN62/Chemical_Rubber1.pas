unit Chemical_Rubber1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, PrnDbgeh, DB, GridsEh, DBGridEh, ComCtrls, StdCtrls, comobj,
  ExtCtrls;

type
  TChemical_Rubber = class(TForm)
    Panel1: TPanel;
    RubberPage: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet4: TTabSheet;
    Label1: TLabel;
    DTP1: TDateTimePicker;
    Label4: TLabel;
    DTP2: TDateTimePicker;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    DBGridEh4: TDBGridEh;
    Master: TQuery;
    RubberIn: TQuery;
    ChemicalIn: TQuery;
    RubberOut: TQuery;
    DSMaster: TDataSource;
    DSChemicalIn: TDataSource;
    DSRubberIn: TDataSource;
    DSRubberOut: TDataSource;
    MasterNgay: TStringField;
    MasterQtyChemical: TCurrencyField;
    MasterQtyRubberIn: TFloatField;
    MasterQtyRubberOut: TFloatField;
    ChemicalInNgay: TStringField;
    ChemicalInCLBH: TStringField;
    ChemicalInywpm: TStringField;
    ChemicalInQTyChemical: TCurrencyField;
    RubberInNgay: TStringField;
    RubberInCLDH: TStringField;
    RubberInQtyRubberIn: TFloatField;
    RubberOutNgay: TStringField;
    RubberOutcldh: TStringField;
    RubberOutQtyRubberOut: TFloatField;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    AppDir:string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Chemical_Rubber: TChemical_Rubber;

implementation

uses main1;

{$R *.dfm}

procedure TChemical_Rubber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action:=cafree;
end;

procedure TChemical_Rubber.FormDestroy(Sender: TObject);
begin
  Chemical_Rubber:=nil;
end;

procedure TChemical_Rubber.FormCreate(Sender: TObject);
var myYear, myMonth, myDay : Word;
begin
  DecodeDate(Date(), myYear, myMonth, myDay);
  DTP1.Date:=EncodeDate(myYear, myMonth, 1);
  DTP2.Date:=now;
  AppDir:=ExtractFilePath(Application.ExeName);
end;

procedure TChemical_Rubber.Button1Click(Sender: TObject);
begin
  if RubberPage.ActivePageIndex=0 then
  begin
    with Master do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select tmp.Ngay,isnull(ChemicalIn.QTyChemical,0) as QtyChemical,isnull(RubbeIn.QtyRubberIn,0)as QtyRubberIn,');
      sql.Add('isnull(RubberOut.QtyRubberOut,0)as QtyRubberOut');
      sql.Add('from	(select distinct temp.Ngay as Ngay');
      sql.Add('      from (select distinct CONVERT(varchar,userdate,112) as Ngay');
      sql.Add('       		from kcll');
      sql.Add('   		    where GSBH='''+main.Edit2.Text+''' and  CONVERT(varchar,userdate,112) between ');
      sql.add('           '''+formatdatetime('yyyymmdd',dtp1.Date)+''' and  '''+formatdatetime('yyyymmdd',dtp2.Date)+''' ');
      sql.Add('           and KCLL.SCBH=''RRRRRRRRRR''');
      sql.add(' 		  union all');
      sql.add(' 		  select distinct KSRQ as Ngay');
      sql.Add('   		from '+main.LIY_DD+'.dbo.KSYD');
      sql.add('   		where CQDH='''+main.Edit2.Text+''' and  KSRQ between');
      sql.add('       '''+formatdatetime('yyyymmdd',dtp1.Date)+''' and  '''+formatdatetime('yyyymmdd',dtp2.Date)+'''');
      sql.add('   		union all');
      sql.add('   		select distinct LLRQ');
      sql.add('   		from '+main.LIY_DD+'.dbo.LLZL');
      sql.add('   		where CQDH='''+main.Edit2.Text+''' and  LLRQ between');
      sql.add('       '''+formatdatetime('yyyymmdd',dtp1.Date)+''' and  '''+formatdatetime('yyyymmdd',dtp2.Date)+'''');
      sql.add('   		) temp)tmp');
      sql.add('left join (select convert(varchar,KCLL.USERDATE,112) as Ngay,SUM(isnull(kclls.qty,0)) as QTyChemical');
      sql.add('       		from KCLLS inner join KCLL on KCLLS.LLNO=KCLL.LLNO');
      sql.add('       		where kcll.GSBH='''+main.Edit2.Text+''' and convert(varchar,KCLL.USERDATE,112) between');
      sql.add('           '''+formatdatetime('yyyymmdd',dtp1.Date)+''' and  '''+formatdatetime('yyyymmdd',dtp2.Date)+'''');
      sql.Add('           and KCLL.SCBH=''RRRRRRRRRR''');
      sql.add('       		and KCLL.YN=''5''');
      sql.add('       		group by convert(varchar,KCLL.USERDATE,112)) ChemicalIn on ChemicalIn.Ngay=tmp.Ngay');
      sql.add('left join (select KSYD.KSRQ as Ngay,SUM(ISNULL(KSYDS.SL,0)) as QtyRubberIn');
      sql.Add('     			from '+main.LIY_DD+'.dbo.KSYD  KSYD inner join '+main.LIY_DD+'.dbo.KSYDs KSYDs');
      sql.Add('  			    on KSYD.DGLB=KSYDS.DGLB and KSYD.CQDH=KSYDS.CQDH and KSYD.KSDH=KSYDS.KSDH');
      sql.add('     			where KSYD.CQDH='''+main.Edit2.Text+'''	and KSYD.KSRQ between');
      sql.add('           '''+formatdatetime('yyyymmdd',dtp1.Date)+''' and  '''+formatdatetime('yyyymmdd',dtp2.Date)+'''');
      sql.Add('           and KSYD.LYLB in (''F'',''A'') and KSYD.DGLB=''I''');
      sql.add('     			group by KSYD.KSRQ) RubbeIn on RubbeIn.Ngay=tmp.Ngay');
      sql.add('left join (select LLZL.LLRQ  as Ngay,SUM(ISNULL(LLZLS.KGS_LL,0)) as QtyRubberOut');
      sql.add('     			from '+main.LIY_DD+'.dbo.LLZL  LLZL inner join '+main.LIY_DD+'.dbo.LLZLS LLZLS');
      sql.add('     			on LLZL.LLBH =LLZLS.LLBH and LLZL.CQDH=LLZLS.CQDH');
      sql.add('     			where LLZL.CQDH='''+main.Edit2.Text+''' and LLZL.LLRQ between');
      sql.add('           '''+formatdatetime('yyyymmdd',dtp1.Date)+''' and  '''+formatdatetime('yyyymmdd',dtp2.Date)+'''');
      sql.Add('     			and LLZL.CFM=''Y''');
      sql.add('     			group by LLZL.LLRQ ) RubberOut on RubberOut.Ngay=tmp.Ngay');
      sql.add('           order by tmp.Ngay');
      active:=true;
    end;
  end;
  if RubberPage.ActivePageIndex=1 then
  begin
    with ChemicalIn do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select convert(varchar,KCLL.USERDATE,112) as Ngay,KCLLS.CLBH,clzl.ywpm,sum(isnull(kclls.qty,0)) as QTyChemical');
      sql.Add('from KCLLS inner join KCLL on KCLLS.LLNO=KCLL.LLNO');
      sql.Add('inner join clzl on KCLLS.CLBH=clzl.cldh');
      sql.Add('where kcll.GSBH='''+main.Edit2.Text+''' and convert(varchar,KCLL.USERDATE,112) between');
      sql.add(''''+formatdatetime('yyyymmdd',dtp1.Date)+''' and  '''+formatdatetime('yyyymmdd',dtp2.Date)+'''');
      sql.Add('and KCLL.SCBH=''RRRRRRRRRR''');
      sql.Add('and KCLL.YN=''5''');
      sql.Add('group by convert(varchar,KCLL.USERDATE,112),KCLLS.CLBH,clzl.ywpm');
      sql.Add('order by convert(varchar,KCLL.USERDATE,112),KCLLS.CLBH');
      active:=true;
    end;
  end;
  if RubberPage.ActivePageIndex=2 then
  begin
    with RubberIn do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select KSYD.KSRQ as Ngay,CLDH,SUM(ISNULL(KSYDS.SL,0)) as QtyRubberIn');
      sql.Add('from '+main.LIY_DD+'.dbo.KSYD  KSYD inner join '+main.LIY_DD+'.dbo.KSYDs KSYDs');
      sql.Add('on KSYD.DGLB=KSYDS.DGLB and KSYD.CQDH=KSYDS.CQDH and KSYD.KSDH=KSYDS.KSDH');
      sql.Add('where KSYD.CQDH='''+main.Edit2.Text+''' and KSYD.KSRQ between');
      sql.add(''''+formatdatetime('yyyymmdd',dtp1.Date)+''' and  '''+formatdatetime('yyyymmdd',dtp2.Date)+'''');
      sql.Add('and KSYD.LYLB in (''F'',''A'') and KSYD.DGLB=''I''');
      sql.Add('group by KSYD.KSRQ,cldh');
      sql.Add('order by KSYD.KSRQ,CLDH');
      active:=true;
    end;
  end;
  if RubberPage.ActivePageIndex=3 then
  begin
    with RubberOut do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select LLZL.LLRQ as Ngay,LLZLS.cldh,sum(ISNULL(LLZLS.KGS_LL,0)) as QtyRubberOut');
      sql.Add('from '+main.LIY_DD+'.dbo.LLZL  LLZL inner join '+main.LIY_DD+'.dbo.LLZLS LLZLS');
      sql.Add('on LLZL.LLBH =LLZLS.LLBH and LLZL.CQDH=LLZLS.CQDH');
      sql.Add('where LLZL.CQDH='''+main.Edit2.Text+''' and LLZL.LLRQ between');
      sql.add(''''+formatdatetime('yyyymmdd',dtp1.Date)+''' and  '''+formatdatetime('yyyymmdd',dtp2.Date)+'''');
      sql.Add('and LLZL.CFM=''Y''');
      sql.Add('group by LLZL.LLRQ,LLZLS.cldh');
      sql.Add('order by LLZL.LLRQ,LLZLS.cldh');
      active:=true;
    end;
  end;
end;

procedure TChemical_Rubber.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j,k,Voffset,Hoffset,index:integer;
begin
  if RubberPage.ActivePageIndex=0 then
  begin
    //
    if FileExists(AppDir+'Additional\report_rubber.xls')=false  then
    begin
     if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
     CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\report_rubber.xls'),Pchar(AppDir+'Additional\report_rubber.xls'),false);
     end;
    if FileExists(AppDir+'Additional\report_rubber.xls') then
    begin
        try
          eclApp:=CreateOleObject('Excel.Application');
          WorkBook:=CreateOleObject('Excel.Sheet');
        except
          Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
          Exit;
        end;
        try
          eclApp.WorkBooks.Open(AppDir+'Additional\report_rubber.xls');
          eclApp.WorkSheets[1].Activate;
          eclApp.Cells(2,2):=formatdatetime('yyyy/MM/dd',DTP1.date)+'~';
          eclApp.Cells(2,3):=formatdatetime('yyyy/MM/dd',DTP2.date);
          index:=0;
          Hoffset:=1;
          Voffset:=5;

          Master.First;
          for i:=1 to Master.RecordCount do
          begin
            eclApp.Cells(Voffset+index,1):=inttostr(i);
            eclApp.Cells(Voffset+index,2):=Master.FieldByName('Ngay').Value;
            eclApp.Cells(Voffset+index,3):=Master.FieldByName('QtyChemical').Value;
            eclApp.Cells(Voffset+index,6):=Master.FieldByName('QtyRubberIn').Value;
            eclApp.Cells(Voffset+index,7):=Master.FieldByName('QtyRubberOut').Value;
            Master.Next;
            inc(index);
          end;
            eclApp.Range[eclApp.Cells[i+4,1],eclApp.Cells[i+4,2]].merge;
            eclApp.Cells(i+4,1):='¦X­p TC:';
            eclApp.Cells[i+4,3].Formula:='=SUM(R5C3:R'+inttostr(i+3)+'C3)';
            eclApp.Cells[i+4,6].Formula:='=SUM(R5C6:R'+inttostr(i+3)+'C6)';
            eclApp.Cells[i+4,7].Formula:='=SUM(R5C7:R'+inttostr(i+3)+'C7)';
           // add outline
            for k:=1 to 4 do
            begin
               eclApp.range[eclApp.cells[5,1],eclApp.cells[i+4,9]].borders[k].linestyle:=1;
            end;
          //


          showmessage('Succeed');
          eclApp.Visible:=True;
        except
            on   F:Exception   do
              showmessage(F.Message);
        end;
      end;
     //
  end;

  if RubberPage.ActivePageIndex=1 then
  begin
    if  ChemicalIn.active  then
    begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
          WorkBook:=eclApp.workbooks.Add;
          for   i:=0   to   ChemicalIn.fieldcount-1   do
            begin
                eclApp.Cells(1,i+1):=ChemicalIn.fields[i].FieldName;
            end;

          ChemicalIn.First;
          j:=2;
          while   not   ChemicalIn.Eof   do
            begin
              for   i:=0   to  ChemicalIn.fieldcount-1  do
              begin
                eclApp.Cells(j,i+1):=ChemicalIn.Fields[i].Value;
              end;
            ChemicalIn.Next;
            inc(j);
            end;
         eclapp.columns.autofit;
         showmessage('Succeed');
         eclApp.Visible:=True;
      except
          on   F:Exception   do
            showmessage(F.Message);
      end;
    end;
  end;

  if RubberPage.ActivePageIndex=2 then
  begin
    if  RubberIn.active  then
    begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
          WorkBook:=eclApp.workbooks.Add;
          for   i:=0   to   RubberIn.fieldcount-1   do
            begin
                eclApp.Cells(1,i+1):=RubberIn.fields[i].FieldName;
            end;

          RubberIn.First;
          j:=2;
          while   not   RubberIn.Eof   do
            begin
              for   i:=0   to  RubberIn.fieldcount-1  do
              begin
                eclApp.Cells(j,i+1):=RubberIn.Fields[i].Value;
              end;
            RubberIn.Next;
            inc(j);
            end;
         eclapp.columns.autofit;
         showmessage('Succeed');
         eclApp.Visible:=True;
      except
          on   F:Exception   do
            showmessage(F.Message);
      end;
    end;
  end;

  if RubberPage.ActivePageIndex=3 then
  begin
    if  RubberOut.active  then
    begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
          WorkBook:=eclApp.workbooks.Add;
          for   i:=0   to   RubberOut.fieldcount-1   do
            begin
                eclApp.Cells(1,i+1):=RubberOut.fields[i].FieldName;
            end;

          RubberOut.First;
          j:=2;
          while   not   RubberOut.Eof   do
            begin
              for   i:=0   to  RubberOut.fieldcount-1  do
              begin
                eclApp.Cells(j,i+1):=RubberOut.Fields[i].Value;
              end;
            RubberOut.Next;
            inc(j);
            end;
         eclapp.columns.autofit;
         showmessage('Succeed');
         eclApp.Visible:=True;
      except
          on   F:Exception   do
            showmessage(F.Message);
      end;
    end;
  end;

end;

end.
