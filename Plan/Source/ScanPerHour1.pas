unit ScanPerHour1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls,comobj;

type
  TScanPerHour = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Button1: TButton;
    DTP1: TDateTimePicker;
    Edit1: TEdit;
    CB1: TComboBox;
    Label3: TLabel;
    DBGridEh1: TDBGridEh;
    HourRep: TQuery;
    DS1: TDataSource;
    Qtemp: TQuery;
    Label4: TLabel;
    CBX3: TComboBox;
    Label7: TLabel;
    CheckBox1: TCheckBox;
    Button5: TButton;
    DTP2: TDateTimePicker;
    DTP3: TDateTimePicker;
    DTP4: TDateTimePicker;
    Label8: TLabel;
    Edit2: TEdit;
    Label11: TLabel;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanPerHour: TScanPerHour;
  NDate:TDate;

implementation

uses main1, FunUnit, ScanChiTiet1;

{$R *.dfm}

procedure TScanPerHour.FormDestroy(Sender: TObject);
begin
ScanPerHour:=nil;
end;

procedure TScanPerHour.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TScanPerHour.FormCreate(Sender: TObject);
var i:integer;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select GSDH from BGSZL order by GSDH');
    active:=true;
    for i:=1 to recordcount do
      begin
        CB1.Items.Add(fieldbyname('GSDH').asstring);
        next;
      end;
    CB1.Text:=main.edit2.Text;
    active:=false;
    sql.Clear;
    sql.add('select convert(smalldatetime,convert(varchar,getdate(),111)) as NDate');
    active:=true;
    NDate:=fieldbyname('NDate').value;
    active:=false;
    sql.Clear;
    sql.add('select distinct GX from SCGXDY order by GX');
    active:=true;
    for i:=1 to recordcount do
      begin
        CBX3.Items.Add(fieldbyname('GX').asstring);
        next;
      end;
    active:=false;
  end;
DTP1.Date:=NDate;
DTP3.Date:=NDate;
end;

procedure TScanPerHour.Button1Click(Sender: TObject);
var i:word;
begin
  HourRep.Active:=false;
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct datepart(hour,SMZL.ScanDate) as Hours ');
    sql.add('from SMZL ');
    sql.add('left join SMDDSS on SMDDSS.CODEBAR=SMZL.CODEBAR ');
    sql.add('left join BDepartment on BDepartment.ID=SMZL.DepNO ');
    sql.add('where BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.Add('      and BDepartment.ID like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('      and convert(smalldatetime,convert(varchar,SMZL.ScanDate,121)) between'  +''''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP2.datetime)+''' and '+''''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP4.datetime)+''' ');
    sql.add('      and BDepartment.GSBH='+''''+CB1.Text+'''');
    if CBX3.itemindex<>0 then
    begin
        sql.add('      and SMDDSS.GXLB='+''''+CBX3.Text+'''');
    end;
    sql.add('order by datepart(hour,SMZL.ScanDate) ');
    //memo1.text:=sql.text;
    active:=true;
    if recordcount=0 then
    begin
        showmessage('No out Put today.');
        abort;
    end;
  end;

  with HourRep do
  begin
    active:=false;
    sql.clear;
    sql.add('select PerHours.dates,PerHours.DepNo,PerHours.DepName,PerHours.GXLB,SCBZCL.PlanQty ,PerDay.TotQty, (PerDay.TotQty-SCBZCL.PlanQty) as Variance');
    // 20230520 add percent
    sql.add('       ,(PerDay.TotQty*100/SCBZCL.PlanQty) as Person');
     while not QTemp.eof do
     begin
         sql.add(',sum(case  when Hours='+''''+Qtemp.FieldByName('Hours').asstring+'''');
         sql.add(' then Qty  end) as '+''''+Qtemp.FieldByName('Hours').asstring+'''');
         QTemp.Next;
     end;
    sql.add('from (select convert(varchar,SMZL.ScanDate,111) as Dates,SMZL.DepNO,BDepartment.DepName,SMDDSS.GXLB,datepart(Hour,SMZL.ScanDate) as Hours,sum(SMZL.CTS*SMDDSS.Qty) as Qty ');
    sql.add('      from SMZL ');
    sql.add('      left join BDepartment on BDepartment.ID=SMZL.DepNO ');
    sql.add('      left join SMDDSS on SMDDSS.CODEBAR=SMZL.CODEBAR ');
    if checkbox1.Checked then
    begin
        sql.add('left join smdd on smdd.ddbh=smddss.ddbh and smdd.gxlb=smddss.gxlb');
        sql.add('left join ddzl on smdd.ysbh = ddzl.ddbh');
    end;
    sql.add('      where BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.Add('            and BDepartment.ID like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('            and BDepartment.GSBH='+''''+CB1.Text+'''');
    if CBX3.itemindex<>0 then
    begin
        sql.add('        and SMDDSS.GXLB='+''''+CBX3.Text+'''');
    end;
    if checkbox1.Checked then
    begin
       sql.add('and substring(ddzl.ddbh,1,2)<>''ZS''');
    end;
    sql.add('            and SMZL.ScanDate between   convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP2.datetime)+''') and convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP4.datetime)+''') ');
    sql.add('      group by convert(varchar,SMZL.ScanDate,111),SMZL.DepNO,BDepartment.DepName,SMDDSS.GXLB,datepart(Hour,SMZL.ScanDate) ');
    sql.add('      union ');
    sql.add('      select convert(varchar,SMZL.ScanDate,111) as Dates,'+''''+'zTot'+''''+' as DepNo,'+''''+'zTot'+''''+' as DepName,SMDDSS.GXLB,datepart(Hour,SMZL.ScanDate) as Hours,sum(SMZL.CTS*SMDDSS.Qty) as Qty ');
    sql.add('      from SMZL ');
    sql.add('      left join BDepartment on BDepartment.ID=SMZL.DepNO ');
    sql.add('      left join SMDDSS on SMDDSS.CODEBAR=SMZL.CODEBAR ');
    if checkbox1.Checked then
        begin
        sql.add('left join smdd on smdd.ddbh=smddss.ddbh and smdd.gxlb=smddss.gxlb');
        sql.add('left join ddzl on smdd.ysbh = ddzl.ddbh');
        end;
    sql.add('      where BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.Add('            and BDepartment.ID like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('            and BDepartment.GSBH='+''''+CB1.Text+'''');
    if CBX3.itemindex<>0 then
      begin
        sql.add('        and SMDDSS.GXLB='+''''+CBX3.Text+'''');
      end;
    if checkbox1.Checked then
       begin
       sql.add('and substring(ddzl.ddbh,1,2)<>''ZS''');
       end;
    sql.add('            and SMZL.ScanDate between convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP2.datetime)+''') and convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP4.datetime)+''') ');
    sql.add('      group by convert(varchar,SMZL.ScanDate,111),datepart(Hour,SMZL.ScanDate),SMDDSS.GXLB ');
    sql.add('     ) PerHours '); 
    sql.add('left join (select convert(varchar,SMZL.ScanDate,111) as Dates,SMZL.DepNO,SMDDSS.GXLB,sum(SMZL.CTS*SMDDSS.Qty) as TotQty ');
    sql.add('           from SMZL ');
    sql.add('           left join BDepartment on BDepartment.ID=SMZL.DepNO ');
    sql.add('           left join SMDDSS on SMDDSS.CODEBAR=SMZL.CODEBAR ');
    if checkbox1.Checked then
        begin
        sql.add('left join smdd on smdd.ddbh=smddss.ddbh and smdd.gxlb=smddss.gxlb');
        sql.add('left join ddzl on smdd.ysbh = ddzl.ddbh');
        end;
    sql.add('           where BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.Add('                 and BDepartment.ID like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('                 and BDepartment.GSBH='+''''+CB1.Text+'''');
    if CBX3.itemindex<>0 then
      begin
        sql.add('             and SMDDSS.GXLB='+''''+CBX3.Text+'''');
      end;
    if checkbox1.Checked then
       begin
       sql.add('and substring(ddzl.ddbh,1,2)<>''ZS''');
       end;
    sql.add('                 and SMZL.ScanDate between convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP2.datetime)+''') and convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP4.datetime)+''') ');
    sql.add('           group by convert(varchar,SMZL.ScanDate,111),SMZL.DepNO,SMDDSS.GXLB ');
    sql.add('           union ');
    sql.add('           select convert(varchar,SMZL.ScanDate,111) as Dates,'+''''+'zTot'+''''+' as DepNo,SMDDSS.GXLB,sum(SMZL.CTS*SMDDSS.Qty) as TotQty ');
    sql.add('           from SMZL ');
    sql.add('           left join BDepartment on BDepartment.ID=SMZL.DepNO ');
    sql.add('           left join SMDDSS on SMDDSS.CODEBAR=SMZL.CODEBAR ');
    if checkbox1.Checked then
        begin
        sql.add('left join smdd on smdd.ddbh=smddss.ddbh and smdd.gxlb=smddss.gxlb');
        sql.add('left join ddzl on smdd.ysbh = ddzl.ddbh');
        end;
    sql.add('           where BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.Add('                 and BDepartment.ID like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('                 and BDepartment.GSBH='+''''+CB1.Text+'''');
    if CBX3.itemindex<>0 then
      begin
        sql.add('             and SMDDSS.GXLB='+''''+CBX3.Text+'''');
      end;
    if checkbox1.Checked then
       begin
       sql.add('and substring(ddzl.ddbh,1,2)<>''ZS''');
       end;
    sql.add('                 and SMZL.ScanDate between convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP2.datetime)+''') and convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP4.datetime)+''') ');
    sql.add('           group by convert(varchar,SMZL.ScanDate,111),SMDDSS.GXLB ');
    sql.add('          ) PerDay on PerDay.DepNO=PerHours.DepNO and PerDay.GXLB=PerHours.GXLB and PerDay.Dates=PerHours.Dates');
    sql.add('left join (select convert(varchar,SCBZCL.BZDate,111) as Dates,SCBZCL.DepNo,Bdepartment.GXLB,SCBZCL.Qty as PlanQty ');
    sql.add('           from SCBZCL ');
    sql.add('           left join BDepartment on BDepartment.ID=SCBZCL.DepNo ');
    sql.add('           where BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.Add('                 and BDepartment.ID like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('                 and BDepartment.GSBH='+''''+CB1.Text+'''');
    sql.Add('                 and BDepartment.ProYN=1 ');//20131219 weston 修改
    sql.add('                 and SCBZCL.BZDate between convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP2.datetime)+''') and convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP4.datetime)+''') ');
    sql.add('           union ');
    sql.add('           select convert(varchar,SCBZCL.BZDate,111) as Dates,'+''''+'zTot'+''''+' as DepNo,Bdepartment.GXLB,sum(SCBZCL.Qty) as PlanQty ');
    sql.add('           from SCBZCL ');
    sql.add('           left join BDepartment on BDepartment.ID=SCBZCL.DepNo ');
    sql.add('           where BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.Add('                 and BDepartment.ID like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('                 and BDepartment.GSBH='+''''+CB1.Text+'''');
    sql.Add('                 and BDepartment.ProYN=1 ');//20131219 weston 修改
    sql.add('                 and SCBZCL.BZDate between convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP2.datetime)+''') and convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP4.datetime)+''') ');
    sql.add('                 and SCBZCL.DepNo in (select distinct smzl.depno from smzl inner join smddss on smzl.codebar=smddss.codebar where smddss.gxlb in(''C'',''S'',''A'',''O'') ') ;
    sql.Add('                                      and smzl.scandate between convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+' '+formatdatetime('hh:mm:ss',DTP2.datetime)+''') and convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+' '+formatdatetime('hh:mm:ss',DTP4.datetime)+''') ');
    sql.add('           )group by convert(varchar,SCBZCL.BZDate,111),Bdepartment.GXLB ');
    sql.add('           ) SCBZCL on SCBZCL.DepNo=PerHours.DepNO and SCBZCL.GXLB=PerHours.GXLB and SCBZCL.Dates=PerHours.Dates');
    sql.add('group by PerHours.dates,PerHours.DepNo,PerHours.DepName,PerHours.GXLB,SCBZCL.PlanQty,PerDay.TotQty ');
    //sql.add('order by PerHours.GXLB,PerHours.DepNo,PerHours.DepName,SCBZCL.PlanQty,PerDay.TotQty ');
    sql.add('order by PerHours.GXLB,RIGHT(PerHours.DepName,2),SCBZCL.PlanQty,PerDay.TotQty ');
    //funcobj.WriteErrorLog(sql.Text);

   { field   :=   TIntegerField.Create(nil);
    field.DataSet   :=   HourRep;
    field.FieldName   :=   'Tot';
    field.FieldKind   :=   fkCalculated;}
    //memo2.text:=sql.text;
    active:=true;
  end;   
  with DBGrideh1 do
   begin
     columns[0].Width:=70;
     columns[0].title.caption:='日期|Dates';
     columns[1].Width:=85;
     columns[1].title.caption:='部門編號|DepNo';
     columns[2].Width:=105;
     columns[2].title.caption:='部門名稱|DepName';
     columns[3].Width:=35;
     columns[3].title.caption:='工序|'+columns[3].title.caption;
     columns[4].Width:=70;
     columns[4].title.caption:='目標|'+columns[4].title.caption;
     columns[5].Width:=70;
     columns[5].title.caption:='合計|'+columns[5].title.caption;
     columns[6].Width:=70;
     columns[6].title.caption:='差異數|'+columns[6].title.caption;
     Tfloatfield(HourRep.Fields[4]).displayformat:='##,#0' ;
     columns[7].title.caption:='比率|'+columns[7].title.caption;
     Tfloatfield(HourRep.Fields[7]).displayformat:='#,##0.0%' ;
     for i:=8 to HourRep.FieldCount-1 do
       begin
         Tfloatfield(HourRep.Fields[i]).displayformat:='##,#0' ;
         columns[i].Width:=55;
         columns[i].Title.Caption:='整   點   時   間|'+columns[i].Title.Caption;
       end; 
   end;
end;

procedure TScanPerHour.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
  var i:integer;
begin
for i:=5 to HourRep.FieldCount-1 do
  begin
    if i=trunc(i/2)*2 then
      begin
        dbgrideh1.columns[i].Color:=$00FFF0F0;
      end;
  end;
if ( (HourRep.FieldByName('PlanQty').value*0.95<=HourRep.FieldByName('TotQty').value)
                              and (not HourRep.FieldByName('PlanQty').isnull) )   then
  begin
    dbgrideh1.canvas.font.color:=clblue;
  end;  
end;

procedure TScanPerHour.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if HourRep.FieldByName('DepNo').value='zTot' then
  begin
    dbgrideh1.canvas.brush.Color:=$00FCCBCD;
    DBGrideh1.DefaultDrawColumnCell(Rect,DataCol,Column, State);
  end;

end;


procedure TScanPerHour.Button5Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
 begin
  if  HourRep.active  then
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
        for   i:=0   to   HourRep.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=HourRep.fields[i].FieldName;
          end;

        HourRep.First;
        j:=2;
        while   not   HourRep.Eof   do
          begin
            for   i:=0   to  HourRep.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=HourRep.Fields[i].Value;
            end;
          HourRep.Next;
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


procedure TScanPerHour.Button6Click(Sender: TObject);
begin
//showmessage(datetimetostr(DTP2.datetime));
showmessage(formatdatetime('hh:mm:ss',DTP2.DateTime));
end;

procedure TScanPerHour.DBGridEh1DblClick(Sender: TObject);
var Pt: TPoint;
    Coord: TGridCoord;
    ClickCol: Integer;
begin
  Pt := DBGridEh1.ScreenToClient(Mouse.CursorPos);
  Coord := DBGridEh1.MouseCoord(Pt.X, Pt.Y);
  ClickCol := Coord.X;
  //ShowMessage('You clicked column ' + IntToStr(ClickCol));
  if (ClickCol<8) or (HourRep.FieldByName('DepNo').value='zTot') then
  begin
    abort;
  end else
  begin
    if ScanChiTiet=nil then
      ScanChiTiet:=TScanChiTiet.Create(self);
    ScanChiTiet.Hours:=ScanPerHour.HourRep.Fields[ClickCol-1].FieldName;
    ScanChiTiet.GXLB:=ScanPerHour.HourRep.FieldByName('GXLB').AsString;
    ScanChiTiet.DepName:=ScanPerHour.HourRep.FieldByName('DepName').AsString;
    ScanChiTiet.Dates:=ScanPerHour.HourRep.FieldByName('Dates').AsString;
    ScanChiTiet.GSBH:=ScanPerHour.CB1.Text;
    ScanChiTiet.btnQueryClick(nil);
    ScanChiTiet.Show;
  end;
end;

end.
