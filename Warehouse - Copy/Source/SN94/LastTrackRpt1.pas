unit LastTrackRpt1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ComCtrls, StdCtrls, ExtCtrls, DB, DBTables,comobj;

type
  TLastTrackRpt = class(TForm)
    DepIDQry: TQuery;
    DS1: TDataSource;
    QTemp: TQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    panel2: TPanel;
    lbl1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    EditMatNo: TEdit;
    btn1: TButton;
    EditMatNM: TEdit;
    DTP3: TDateTimePicker;
    Edit1: TEdit;
    Button1: TButton;
    DBGridEh3: TDBGridEh;
    Panel1: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit2: TEdit;
    Button2: TButton;
    Edit3: TEdit;
    DTP1: TDateTimePicker;
    Edit4: TEdit;
    Button3: TButton;
    DBGridEh1: TDBGridEh;
    DepNMQry: TQuery;
    DS3: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure DBGridEh3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
    procedure ExportExcel(Obj:TQuery);
  public
    { Public declarations }
  end;

var
  LastTrackRpt: TLastTrackRpt;

implementation

uses main1,FunUnit;

{$R *.dfm}

procedure TLastTrackRpt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TLastTrackRpt.FormDestroy(Sender: TObject);
begin
   LastTrackRpt:=nil;
end;

procedure TLastTrackRpt.FormCreate(Sender: TObject);
begin
   DTP1.Date:=Now;
   DTP3.Date:=Now;
end;

procedure TLastTrackRpt.btn1Click(Sender: TObject);
var i,j,k:word;
begin
   with Qtemp do
   begin
      active:=false;
      sql.Clear;
      sql.Add('select SIZ');
      sql.Add('from LTLLSS left join LTLL on LTLLSS.LLNO=LTLL.LLNO');
      sql.Add('where convert(smalldatetime,convert(varchar,PlanDate,111))='+''''+datetostr(DTP1.Date)+''''+' ');
      sql.add('group by SIZ ');
      sql.Add('order by SIZ');
      active:=true;
   end;
   if Qtemp.RecordCount>0 then
   begin
     with DepNMQry do
     begin
        active:=false;
        sql.Clear;
        sql.Add('select LTLL.PlanDate,LTLL.DepName,LTLL.CLBH,LTLL.YWPM,');
        for i:=0 to Qtemp.RecordCount-1 do
        begin
          SQL.Add('   isnull(sum(case when SIZ='''+Qtemp.FieldByName('SIZ').AsString+''' then Qty end),0) as ''['+Qtemp.FieldByName('SIZ').AsString+']'', ');
          QTemp.Next;
        end;
        sql.Add('sum(LTLL.Qty)as Total');
        sql.Add('from (select LTLL.PlanDate,Bdepartment.DepName,LTLLS.CLBH,CLZL.YWPM,LTLLSS.SIZ,Sum(LTLLSS.Qty) as Qty');
        sql.Add('      from LTLL');
        sql.Add('      left join LTLLS on LTLL.LLNO=LTLLS.LLNO');
        sql.Add('      left join LTLLSS on LTLLS.LLNO=LTLLSS.LLNO and LTLLS.CLBH=LTLLSS.CLBH');
        sql.Add('      left join CLZL on CLZL.CLDH=LTLLS.CLBH');
        sql.Add('      left join Bdepartment on Bdepartment.ID=LTLL.DepID');
        sql.Add('      where isnull(LTLL.flowflag,'''') <>''X'' and convert(smalldatetime,convert(varchar,PlanDate,111))='''+datetostr(DTP3.Date)+''' and Bdepartment.ID is not null ');
        sql.Add('      Group by LTLL.PlanDate,Bdepartment.DepName,CLZL.YWPM,LTLLS.CLBH,LTLLSS.SIZ');
        sql.Add('      union all');
        sql.Add('      select T1.PlanDate,T1.DepName,T1.YWPM,T1.CLBH,T1.SIZ,T1.Total');
        sql.Add('      from(select LTLL.PlanDate,''Total''as DepName,''Total''as YWPM,''Total''as CLBH,LTLLSS.SIZ,Sum(LTLLSS.Qty) as Total ');
        sql.Add('           from LTLL');
        sql.Add('           left join LTLLS on LTLL.LLNO=LTLLS.LLNO');
        sql.Add('           left join LTLLSS on LTLLS.LLNO=LTLLSS.LLNO and LTLLS.CLBH=LTLLSS.CLBH');
        sql.Add('           left join CLZL on CLZL.CLDH=LTLLS.CLBH');
        sql.Add('           left join Bdepartment on Bdepartment.ID=LTLL.DepID');
        sql.Add('           where isnull(LTLL.flowflag,'''') <>''X'' and convert(smalldatetime,convert(varchar,PlanDate,111))='''+datetostr(DTP3.Date)+''' and Bdepartment.ID is not null');
        sql.Add('           Group by LTLL.PlanDate,LTLLSS.SIZ)T1');
        sql.Add('      Group by T1.PlanDate,T1.DepName,T1.YWPM,T1.CLBH,T1.SIZ,T1.Total)LTLL');
        sql.Add('where convert(smalldatetime,convert(varchar,PlanDate,111))='+''''+datetostr(DTP3.Date)+''''+' ');
        sql.Add('and LTLL.CLBH like '''+EditMatNo.Text+'%''');
        sql.Add('and LTLL.YWPM like '''+EditMatNM.Text+'%''');
        sql.Add('and LTLL.DepName like '+''''+'%'+edit1.Text+'%'+'''');
        sql.Add('Group by LTLL.PlanDate,LTLL.DepName,LTLL.YWPM,LTLL.CLBH');
        //funcObj.WriteErrorLog(sql.Text);
        active:=true;
     end;
     with DBGridEh3 do
     begin
        columns[0].Width:=80;
        columns[0].title.caption:='日期|PlanDate';
        columns[1].Width:=90;
        columns[1].title.caption:='單位|DepName';
        columns[2].Width:=80;
        columns[2].title.caption:='楦頭ID|LastID';
        columns[3].Width:=80;
        columns[3].title.caption:='楦頭名稱|LastName';
        for j:=4 to DepNMQry.FieldCount-1 do
          begin
           columns[j].Width:=50;
           columns[j].Title.Caption:='SIZE|'+columns[j].Title.Caption;
          end;
        for k:=DepNMQry.FieldCount-1 to DepNMQry.FieldCount-1 do
         begin
           columns[k].Width:=50;
           columns[k].Title.Caption:='小計|Total';
           columns[k].font.style:=[fsbold];
         end;
     end;
   end;
   Qtemp.Active:=false;
end;

procedure TLastTrackRpt.DBGridEh3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if trim(DepNMQry.FieldByName('DepName').Value)='Total' then
  begin
      dbgrideh3.canvas.brush.Color:=$00FCCBCD;
      DBGridEh3.DefaultDrawColumnCell(Rect,DataCol,Column, State);
  end;
end;

//Export Excel
procedure TLastTrackRpt.ExportExcel(Obj:TQuery);
var eclApp,WorkBook:olevariant;
    i,j,k:integer;
begin
    if  Obj.active  then
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
          eclapp.ActiveSheet.Range['A1:Z1'].Merge;
          eclApp.Cells(1,1):='BAO BIEU CHI TIET LANH PHOM CUA CAC DON VI';
          eclapp.ActiveSheet.Range['A2:Z2'].Merge;
          eclApp.Cells(2,1):='各楦頭領用單';
          eclapp.ActiveSheet.Range['R3:V3'].Merge;
          eclApp.Cells(3,18):='Ngay 日期:'+formatdatetime('yyyy/MM/dd',DTP1.date);


          eclApp.ActiveSheet.Rows[1].Font.Size:= 16;
          eclApp.ActiveSheet.Rows[1].Font.Bold := True;
          eclApp.ActiveSheet.Rows[1].HorizontalAlignment := $FFFFEFF4;
          eclApp.ActiveSheet.Rows[2].Font.Size:= 16;
          eclApp.ActiveSheet.Rows[2].Font.Bold := True;
          eclApp.ActiveSheet.Rows[2].HorizontalAlignment := $FFFFEFF4;

          for   i:=0   to   Obj.fieldcount-1   do
          begin
            eclApp.Cells(5,i+1):=Obj.fields[i].FieldName;
          end;

          Obj.First;
          j:=6;
          while   not   Obj.Eof   do
            begin
              for   i:=0   to  Obj.fieldcount-1  do
              begin
                eclApp.Cells(j,i+1):=Obj.Fields[i].Value;
              end;
            if  Obj.FieldByName('DepName').Value='Total' then
                eclApp.Range[eclApp.Cells[j,1],eclApp.Cells[j,i]].interior.color:=clyellow;
            Obj.Next;
            inc(j);
            end;
          //  add outline
          for k:=1 to 4 do
            begin
              eclApp.range[eclApp.cells[5,1],eclApp.cells[j-1,i]].borders[k].linestyle:=1;
            end;
         //

         if eclApp.ActiveSheet.cells[5,2].value='DepName' then
             eclApp.cells(5,2):='DON VI';
         if eclApp.ActiveSheet.cells[5,3].value='YWPM' then
             eclApp.cells(5,3):='MA PHOM';
         eclapp.ActiveSheet.Columns[1].Hidden:=true;
         eclapp.ActiveSheet.Columns[4].Hidden:=true;

         eclapp.columns.autofit;
         showmessage('Succeed');
         eclApp.Visible:=True;
      except
          on   F:Exception   do
            showmessage(F.Message);
      end;
    end;

end;

//
procedure TLastTrackRpt.Button1Click(Sender: TObject);
begin
  ExportExcel(DepNMQry);
end;
procedure TLastTrackRpt.Button2Click(Sender: TObject);
var i,j,k:word;
begin
   with Qtemp do
   begin
      active:=false;
      sql.Clear;
      sql.Add('select SIZ');
      sql.Add('from LTLLSS left join LTLL on LTLLSS.LLNO=LTLL.LLNO');
      sql.Add('where convert(smalldatetime,convert(varchar,PlanDate,111))='+''''+datetostr(DTP1.Date)+''''+' ');
      sql.add('group by SIZ ');
      sql.Add('order by SIZ');
      active:=true;
   end;
   if Qtemp.RecordCount>0 then
   begin
     with DepIDQry do
     begin
        active:=false;
        sql.Clear;
        sql.Add('select LTLL.PlanDate,LTLL.DepID as DepName,LTLL.CLBH,LTLL.YWPM,');
        for i:=0 to Qtemp.RecordCount-1 do
        begin
          SQL.Add('   isnull(sum(case when SIZ='''+Qtemp.FieldByName('SIZ').AsString+''' then Qty end),0) as ''['+Qtemp.FieldByName('SIZ').AsString+']'', ');
          QTemp.Next;
        end;
        sql.Add('sum(LTLL.Qty)as Total');
        sql.Add('from (select LTLL.PlanDate,LTLL.DepID,LTLLS.CLBH,CLZL.YWPM,LTLLSS.SIZ,Sum(LTLLSS.Qty) as Qty');
        sql.Add('      from LTLL');
        sql.Add('      left join LTLLS on LTLL.LLNO=LTLLS.LLNO');
        sql.Add('      left join LTLLSS on LTLLS.LLNO=LTLLSS.LLNO and LTLLS.CLBH=LTLLSS.CLBH');
        sql.Add('      left join CLZL on CLZL.CLDH=LTLLS.CLBH');
        sql.Add('      where isnull(LTLL.flowflag,'''') <>''X'' and convert(smalldatetime,convert(varchar,PlanDate,111))='''+datetostr(DTP1.Date)+'''  ');
        sql.Add('      Group by LTLL.PlanDate,LTLL.DepID,CLZL.YWPM,LTLLS.CLBH,LTLLSS.SIZ');
        sql.Add('      union all');
        sql.Add('      select T1.PlanDate,T1.DepID,T1.YWPM,T1.CLBH,T1.SIZ,T1.Total');
        sql.Add('      from(select LTLL.PlanDate,''Total''as DepID,''Total''as YWPM,''Total''as CLBH,LTLLSS.SIZ,Sum(LTLLSS.Qty) as Total ');
        sql.Add('           from LTLL');
        sql.Add('           left join LTLLS on LTLL.LLNO=LTLLS.LLNO');
        sql.Add('           left join LTLLSS on LTLLS.LLNO=LTLLSS.LLNO and LTLLS.CLBH=LTLLSS.CLBH');
        sql.Add('           left join CLZL on CLZL.CLDH=LTLLS.CLBH');
        sql.Add('           where isnull(LTLL.flowflag,'''') <>''X'' and convert(smalldatetime,convert(varchar,PlanDate,111))='''+datetostr(DTP1.Date)+''' ');
        sql.Add('           Group by LTLL.PlanDate,LTLLSS.SIZ)T1');
        sql.Add('      Group by T1.PlanDate,T1.DepID,T1.YWPM,T1.CLBH,T1.SIZ,T1.Total)LTLL');
        sql.Add('where convert(smalldatetime,convert(varchar,PlanDate,111))='+''''+datetostr(DTP1.Date)+''''+' ');
        sql.Add('and LTLL.CLBH like '''+Edit2.Text+'%''');
        sql.Add('and LTLL.YWPM like '''+Edit3.Text+'%''');
        sql.Add('and LTLL.DepID like '+''''+'%'+Edit4.Text+'%'+'''');
        sql.Add('Group by LTLL.PlanDate,LTLL.DepID,LTLL.YWPM,LTLL.CLBH');
        active:=true;
     end;
     with DBGridEh1 do
     begin
        columns[0].Width:=80;
        columns[0].title.caption:='日期|PlanDate';
        columns[1].Width:=90;
        columns[1].title.caption:='單位|DepName';
        columns[2].Width:=80;
        columns[2].title.caption:='楦頭ID|LastID';
        columns[3].Width:=80;
        columns[3].title.caption:='楦頭名稱|LastName';

        for j:=4 to DepIDQry.FieldCount-1 do
          begin
           columns[j].Width:=50;
           columns[j].Title.Caption:='SIZE|'+columns[j].Title.Caption;
          end;
        for k:=DepIDQry.FieldCount-1 to DepIDQry.FieldCount-1 do
         begin
           columns[k].Width:=50;
           columns[k].Title.Caption:='小計|Total';
           columns[k].font.style:=[fsbold];
         end;
     end;
   end;
   Qtemp.Active:=false;

end;

procedure TLastTrackRpt.Button3Click(Sender: TObject);
begin
  ExportExcel(DepIDQry);
end;

procedure TLastTrackRpt.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if trim(DepIDQry.FieldByName('DepName').Value)='Total' then
  begin
      DBGridEh1.canvas.brush.Color:=$00FCCBCD;
      DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column, State);
  end;
end;

end.
end.
