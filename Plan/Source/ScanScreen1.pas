unit ScanScreen1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, PrnDbgeh, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls,
  ExtCtrls,dateutils,math;

type
  TScanScreen = class(TForm)     
    Panel1: TPanel;
    Edit11: TEdit;
    L1: TLabel;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit23: TEdit;
    Edit22: TEdit;
    Edit24: TEdit;
    Edit21: TEdit;
    L2: TLabel;
    L3: TLabel;
    Edit31: TEdit;
    Edit32: TEdit;
    Edit33: TEdit;
    Edit34: TEdit;
    L4: TLabel;
    Edit41: TEdit;
    Edit42: TEdit;
    Edit43: TEdit;
    Edit44: TEdit;
    L5: TLabel;
    Edit51: TEdit;
    Edit52: TEdit;
    Edit53: TEdit;
    Edit54: TEdit;
    Panel2: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    DailyRep: TQuery;
    Button1: TButton;
    Timer1: TTimer;
    DepNO: TQuery;
    DepNODEPNO: TStringField;
    DepNODEPNAME: TStringField;
    Qtemp: TQuery;
    Button2: TButton;
    DailyRepDepNo: TStringField;
    DailyRepDepName: TStringField;
    DailyRepBDEDesigner1: TIntegerField;
    DailyRepBDEDesigner2: TIntegerField;
    DailyRepBFB: TIntegerField;
    L6: TLabel;
    Edit61: TEdit;
    Edit62: TEdit;
    Edit63: TEdit;
    Edit64: TEdit;
    L7: TLabel;
    Edit71: TEdit;
    Edit72: TEdit;
    Edit73: TEdit;
    Edit74: TEdit;
    L8: TLabel;
    Edit81: TEdit;
    Edit82: TEdit;
    Edit83: TEdit;
    Edit84: TEdit;
    DepNOGXLB: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DailyRepCalcFields(DataSet: TDataSet);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanScreen: TScanScreen;
  Button1Time, Button2Time:Tdate;
  YN,leftYN:word;

implementation

{$R *.dfm}

procedure TScanScreen.FormDestroy(Sender: TObject);
begin
ScanScreen:=nil;
end;

procedure TScanScreen.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TScanScreen.FormCreate(Sender: TObject);
begin
SetWindowLong(Edit12.Handle,GWL_STYLE,GetWindowLong(Edit12.Handle,GWL_STYLE) or Es_right);
SetWindowLong(Edit13.Handle,GWL_STYLE,GetWindowLong(Edit13.Handle,GWL_STYLE) or Es_right);
SetWindowLong(Edit14.Handle,GWL_STYLE,GetWindowLong(Edit14.Handle,GWL_STYLE) or Es_right);  
SetWindowLong(Edit22.Handle,GWL_STYLE,GetWindowLong(Edit22.Handle,GWL_STYLE) or Es_right);
SetWindowLong(Edit23.Handle,GWL_STYLE,GetWindowLong(Edit23.Handle,GWL_STYLE) or Es_right);
SetWindowLong(Edit24.Handle,GWL_STYLE,GetWindowLong(Edit24.Handle,GWL_STYLE) or Es_right);  
SetWindowLong(Edit32.Handle,GWL_STYLE,GetWindowLong(Edit32.Handle,GWL_STYLE) or Es_right);
SetWindowLong(Edit33.Handle,GWL_STYLE,GetWindowLong(Edit33.Handle,GWL_STYLE) or Es_right);
SetWindowLong(Edit34.Handle,GWL_STYLE,GetWindowLong(Edit34.Handle,GWL_STYLE) or Es_right);
SetWindowLong(Edit42.Handle,GWL_STYLE,GetWindowLong(Edit42.Handle,GWL_STYLE) or Es_right);
SetWindowLong(Edit43.Handle,GWL_STYLE,GetWindowLong(Edit43.Handle,GWL_STYLE) or Es_right);
SetWindowLong(Edit44.Handle,GWL_STYLE,GetWindowLong(Edit44.Handle,GWL_STYLE) or Es_right);
SetWindowLong(Edit52.Handle,GWL_STYLE,GetWindowLong(Edit52.Handle,GWL_STYLE) or Es_right);
SetWindowLong(Edit53.Handle,GWL_STYLE,GetWindowLong(Edit53.Handle,GWL_STYLE) or Es_right);
SetWindowLong(Edit54.Handle,GWL_STYLE,GetWindowLong(Edit54.Handle,GWL_STYLE) or Es_right);
SetWindowLong(Edit62.Handle,GWL_STYLE,GetWindowLong(Edit62.Handle,GWL_STYLE) or Es_right);
SetWindowLong(Edit63.Handle,GWL_STYLE,GetWindowLong(Edit63.Handle,GWL_STYLE) or Es_right);
SetWindowLong(Edit64.Handle,GWL_STYLE,GetWindowLong(Edit64.Handle,GWL_STYLE) or Es_right);
SetWindowLong(Edit72.Handle,GWL_STYLE,GetWindowLong(Edit72.Handle,GWL_STYLE) or Es_right);
SetWindowLong(Edit73.Handle,GWL_STYLE,GetWindowLong(Edit73.Handle,GWL_STYLE) or Es_right);
SetWindowLong(Edit74.Handle,GWL_STYLE,GetWindowLong(Edit74.Handle,GWL_STYLE) or Es_right);
SetWindowLong(Edit82.Handle,GWL_STYLE,GetWindowLong(Edit82.Handle,GWL_STYLE) or Es_right);
SetWindowLong(Edit83.Handle,GWL_STYLE,GetWindowLong(Edit83.Handle,GWL_STYLE) or Es_right);
SetWindowLong(Edit84.Handle,GWL_STYLE,GetWindowLong(Edit84.Handle,GWL_STYLE) or Es_right);


button1click(nil);   
button2click(nil);

end;

procedure TScanScreen.Button1Click(Sender: TObject);
var m,n:word;
begin
DepNo.active:=false;
DepNo.active:=true;
with Qtemp do
  begin
    active:=false;
    sql.Clear;  
    sql.add('if object_id('+''''+'tempdb..#DailyRep'+''''+') is not null  ');
    sql.add('   begin   drop table #DailyRep end   ');
    sql.add('select DepNo,1 as SB,Qty ');
    sql.add('into  #DailyRep from SCBZCL ');
    sql.add('where DepNo='+''''+DepNo.fieldbyname('DepNo').Value+'''');
    sql.add('      and convert(varchar,getdate(),111)=convert(varchar,BZDate,111)');

    sql.Add('insert into  #DailyRep ');
    sql.add('select SMZL.DepNo,2 as SB,sum(SMZL.CTS*SMDDSS.Qty) as Qty');
    sql.add('from SMZL ');
    sql.add('left join SMDDSS on SMDDSS.CODEBAR=SMZL.CODEBAR ');
    sql.add('where SMZL.DepNO='+''''+DepNo.fieldbyname('DepNo').Value+'''');
    sql.add('      and SMDDSS.GXLB='+''''+ DepNo.fieldbyname('GXLB').Value+'''');
    sql.add('      and convert(varchar,SMZL.ScanDate,111)=convert(varchar,getdate(),111) ');
    sql.add('group by SMZL.DepNo');     
    execsql;
    DepNo.Next;
    while not DepNo.Eof do
      begin
        active:=false;
        sql.Clear;
        sql.add('insert into #DailyRep ');
        sql.add('select DepNo,1 as SB,Qty ');
        sql.add('from SCBZCL ');
        sql.add('where DepNo='+''''+DepNo.fieldbyname('DepNo').Value+'''');
        sql.add('      and convert(varchar,getdate(),111)=convert(varchar,BZDate,111)');
        sql.Add('insert into  #DailyRep ');
        sql.add('select SMZL.DepNo,2 as SB,sum(SMZL.CTS*SMDDSS.Qty) as Qty');
        sql.add('from SMZL ');
        sql.add('left join SMDDSS on SMDDSS.CODEBAR=SMZL.CODEBAR ');
        sql.add('where SMZL.DepNO='+''''+DepNo.fieldbyname('DepNo').Value+'''');
        sql.add('      and SMDDSS.GXLB='+''''+ DepNo.fieldbyname('GXLB').Value+'''');
        sql.add('      and convert(varchar,SMZL.ScanDate,111)=convert(varchar,getdate(),111) ');  
        sql.add('group by SMZL.DepNo');
        execsql;
        DepNo.Next;
      end;
  end; 
with DailyRep do
  begin
    active:=false;
    sql.Clear;
    sql.add('select #DailyRep.DepNo,Bdepartment.DepName ');
    sql.add(',sum(case  when SB=1');
    sql.add(' then Qty else 0 end) as '+''''+'1'+'''');
    sql.add(',sum(case  when SB=2');
    sql.add(' then Qty else 0 end) as '+''''+'2'+'''');
    sql.add('from #DailyRep ');
    sql.add('left join BDepartment on BDepartment.ID=#DailyRep.DepNo');
    sql.add('group by #DailyRep.DepNo,Bdepartment.DepName ');
    sql.add('order by #DailyRep.DepNo,Bdepartment.DepName ');
    active:=true;
    first;
  end;
//Button1time:=now;
DivMod(DailyRep.RecordCount,8,m,n);
if n<>0 then
  YN:=m +1
    else
      YN:=m;
leftYN:=YN;
button1time:=now;

end;

procedure TScanScreen.Button2Click(Sender: TObject);
begin
Button2Time:=now;
 //   showmessage(inttostr(secondsbetween(now,button1time)));
edit11.Text:='';
edit12.Text:='';
edit13.Text:='';
edit14.Text:='';
edit21.Text:='';
edit22.Text:='';
edit23.Text:='';
edit24.Text:='';
edit31.Text:='';
edit32.Text:='';
edit33.Text:='';
edit34.Text:='';
edit41.Text:='';
edit42.Text:='';
edit43.Text:='';
edit44.Text:='';
edit51.Text:='';
edit52.Text:='';
edit53.Text:='';
edit54.Text:='';
edit61.Text:='';
edit62.Text:='';
edit63.Text:='';
edit64.Text:='';
edit71.Text:='';
edit72.Text:='';
edit73.Text:='';
edit74.Text:='';
edit81.Text:='';
edit82.Text:='';
edit83.Text:='';
edit84.Text:='';

  begin
    if not DailyRep.Eof then
      begin
        edit11.Text:=DailyRep.fieldbyname('DepName').Value;
        edit12.Text:=DailyRep.fieldbyname('1').Value;
        edit13.Text:=DailyRep.fieldbyname('2').Value;
        edit14.Text:=DailyRep.fieldbyname('BFB').asstring+' %';
        if DailyRep.fieldbyname('BFB').Value<95 then
            edit14.font.Color:=clred
              else
                edit14.font.Color:=clgreen;
        DailyRep.next;
      end;
    if not DailyRep.Eof then
      begin
        edit21.Text:=DailyRep.fieldbyname('DepName').Value;
        edit22.Text:=DailyRep.fieldbyname('1').Value;
        edit23.Text:=DailyRep.fieldbyname('2').Value;
        edit24.Text:=DailyRep.fieldbyname('BFB').asstring+' %';
        if DailyRep.fieldbyname('BFB').Value<95 then
            edit24.font.Color:=clred
              else
                edit24.font.Color:=clgreen;

        DailyRep.next;
      end;
    if not DailyRep.Eof then
      begin
        edit31.Text:=DailyRep.fieldbyname('DepName').Value;
        edit32.Text:=DailyRep.fieldbyname('1').Value;
        edit33.Text:=DailyRep.fieldbyname('2').Value;
        edit34.Text:=DailyRep.fieldbyname('BFB').asstring+' %';
        if DailyRep.fieldbyname('BFB').Value<95 then
            edit34.font.Color:=clred
              else
                edit34.font.Color:=clgreen;
        DailyRep.next;
      end ;
    if not DailyRep.Eof then
      begin
        edit41.Text:=DailyRep.fieldbyname('DepName').Value;
        edit42.Text:=DailyRep.fieldbyname('1').Value;
        edit43.Text:=DailyRep.fieldbyname('2').Value;
        edit44.Text:=DailyRep.fieldbyname('BFB').Value;
        edit44.Text:=DailyRep.fieldbyname('BFB').asstring+' %';
        if DailyRep.fieldbyname('BFB').Value<95 then
            edit44.font.Color:=clred
              else
                edit44.font.Color:=clgreen;
        DailyRep.next;
      end;
    if not DailyRep.Eof then
      begin
        edit51.Text:=DailyRep.fieldbyname('DepName').Value;
        edit52.Text:=DailyRep.fieldbyname('1').Value;
        edit53.Text:=DailyRep.fieldbyname('2').Value;
        edit54.Text:=DailyRep.fieldbyname('BFB').asstring+' %';
        if DailyRep.fieldbyname('BFB').Value<95 then
            edit54.font.Color:=clred
              else
                edit54.font.Color:=clgreen;
        DailyRep.next;
      end;  
    if not DailyRep.Eof then
      begin
        edit61.Text:=DailyRep.fieldbyname('DepName').Value;
        edit62.Text:=DailyRep.fieldbyname('1').Value;
        edit63.Text:=DailyRep.fieldbyname('2').Value;
        edit64.Text:=DailyRep.fieldbyname('BFB').asstring+' %';
        if DailyRep.fieldbyname('BFB').Value<95 then
            edit64.font.Color:=clred
              else
                edit64.font.Color:=clgreen;
        DailyRep.next;
      end;
    if not DailyRep.Eof then
      begin
        edit71.Text:=DailyRep.fieldbyname('DepName').Value;
        edit72.Text:=DailyRep.fieldbyname('1').Value;
        edit73.Text:=DailyRep.fieldbyname('2').Value;
        edit74.Text:=DailyRep.fieldbyname('BFB').asstring+' %';
        if DailyRep.fieldbyname('BFB').Value<95 then
            edit74.font.Color:=clred
              else
                edit74.font.Color:=clgreen;
        DailyRep.next;
      end;
    if not DailyRep.Eof then
      begin
        edit81.Text:=DailyRep.fieldbyname('DepName').Value;
        edit82.Text:=DailyRep.fieldbyname('1').Value;
        edit83.Text:=DailyRep.fieldbyname('2').Value;
        edit84.Text:=DailyRep.fieldbyname('BFB').asstring+' %';
        if DailyRep.fieldbyname('BFB').Value<95 then
            edit84.font.Color:=clred
              else
                edit84.font.Color:=clgreen;
        DailyRep.next;
      end;
    abort;
  end;

end;

procedure TScanScreen.DailyRepCalcFields(DataSet: TDataSet);
begin
with DailyRep do
  begin
    if fieldbyname('1').Value>0 then
      begin
        fieldbyname('BFB').Value:=fieldbyname('2').Value*100/fieldbyname('1').Value;
      end
      else
        begin
          fieldbyname('BFB').Value:=0;
        end;
  end;
end;

procedure TScanScreen.Timer1Timer(Sender: TObject);
begin
if secondsbetween(now,button1time)>600 then
  begin   
    button1click(nil);
    button2click(nil);
  end;
if secondsbetween(now,button2time)>20   then
  begin
    if LeftYN >1 then
      begin
        leftYN:=leftYN-1;
        button2click(nil);
      end
      else
        begin
          LeftYN:=YN;
          DailyRep.First;
          button2click(nil);
        end;
  end;
end;

end.
