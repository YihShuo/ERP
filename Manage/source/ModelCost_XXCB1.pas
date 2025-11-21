unit ModelCost_XXCB1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DBTables, DB, GridsEh, DBGridEh,math,ehlibbde;

type
  TModelCost_XXCB = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    Query1BWBH: TStringField;
    Query1YWSM: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1CLSL: TFloatField;
    Query1USPrice: TCurrencyField;
    Query1USACC: TFloatField;
    Query1ZWPM: TStringField;
    Query1ZWSM: TStringField;
    Query1XieXing: TStringField;
    Query1SheHao: TStringField;
    DS1: TDataSource;
    UpCWXXCBS: TUpdateSQL;
    PopupMenu1: TPopupMenu;
    Calculate1: TMenuItem;
    CalculateAll1: TMenuItem;
    Qtemp: TQuery;
    XXZLS: TQuery;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure Calculate1Click(Sender: TObject);
    procedure CalculateAll1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ModelCost_XXCB: TModelCost_XXCB;

implementation

uses main1,ModelCost1;

{$R *.dfm}

procedure TModelCost_XXCB.FormDestroy(Sender: TObject);
begin
ModelCost_XXCB:=nil;
end;

procedure TModelCost_XXCB.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
query1.Active:=false;
Qtemp.Active:=false;
XXZLS.active:=false;
end;

procedure TModelCost_XXCB.FormCreate(Sender: TObject);
begin
  XXZLS.Active:=true;
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('if object_id('+''''+'tempdb..#PF'+''''+') is not null  ');
    sql.add('begin   drop table #PF end   ');
    sql.add('select XieXing,SheHao,CQDH,'+''''+'               '+''''+' as CLDH, convert(numeric(18,1),0) as Qty ');
    sql.add('into #PF from '+main.LIY_DD+'.dbo.XXZLS ');
    sql.add('where XieXing='+''''+'AAAAABBBBB'+'''');
    execsql;
    while not XXZLS.Eof do
      begin
      try
        if XXZLS.FieldByName('XH').value='A' then
          begin
            active:=false;
            sql.Clear;
            sql.add('insert into #PF ');
            sql.add('select  XieXing,SheHao,CQDH,'+''''+XXZLS.fieldbyname('CLDH').value+''''+' as CLDH,avg(G01) as Qty ');
            sql.add('from '+main.LIY_DD+'.dbo.XXZLS1 ')  ;
            sql.add('where XieXing='+''''+XXZLS.fieldbyname('XieXing').Value+'''');
            sql.add('      and SheHao='+''''+XXZLS.fieldbyname('SheHao').value+'''');
            sql.add('      and CQDH='+''''+XXZLS.fieldbyname('CQDH').value+'''');
            sql.add('      and G01 is not null ');
            sql.add('group by XieXing,SheHao,CQDH ');
            execsql;
          end;
        except
        end;

        try
        if XXZLS.FieldByName('XH').value='B' then
          begin    
            active:=false;
            sql.Clear;  
            sql.add('insert into #PF ');
            sql.add('select  XieXing,SheHao,CQDH,'+''''+XXZLS.fieldbyname('CLDH').value+''''+' as CLDH,avg(G02) as Qty ');
            sql.add('from '+main.LIY_DD+'.dbo.XXZLS1 ')  ;
            sql.add('where XieXing='+''''+XXZLS.fieldbyname('XieXing').Value+'''');
            sql.add('      and SheHao='+''''+XXZLS.fieldbyname('SheHao').value+'''');
            sql.add('      and CQDH='+''''+XXZLS.fieldbyname('CQDH').value+'''');
            sql.add('      and G02 is not null ');
            sql.add('group by XieXing,SheHao,CQDH ');
            execsql;
          end;
        except
        end;

        try
        if XXZLS.FieldByName('XH').value='C' then
          begin
            active:=false;
            sql.Clear;
            sql.add('insert into #PF ');
            sql.add('select  XieXing,SheHao,CQDH,'+''''+XXZLS.fieldbyname('CLDH').value+''''+' as CLDH,avg(G03) as Qty ');
            sql.add('from '+main.LIY_DD+'.dbo.XXZLS1 ')  ;
            sql.add('where XieXing='+''''+XXZLS.fieldbyname('XieXing').Value+'''');
            sql.add('      and SheHao='+''''+XXZLS.fieldbyname('SheHao').value+'''');
            sql.add('      and CQDH='+''''+XXZLS.fieldbyname('CQDH').value+'''');
            sql.add('      and G03 is not null ');
            sql.add('group by XieXing,SheHao,CQDH ');
            execsql;
          end;  
        except
        end;

        try
        if XXZLS.FieldByName('XH').value='D' then
          begin    
            active:=false;
            sql.Clear;
            sql.add('insert into #PF ');
            sql.add('select  XieXing,SheHao,CQDH,'+''''+XXZLS.fieldbyname('CLDH').value+''''+' as CLDH,avg(G04) as Qty ');
            sql.add('from '+main.LIY_DD+'.dbo.XXZLS1 ')  ;
            sql.add('where XieXing='+''''+XXZLS.fieldbyname('XieXing').Value+'''');
            sql.add('      and SheHao='+''''+XXZLS.fieldbyname('SheHao').value+'''');
            sql.add('      and CQDH='+''''+XXZLS.fieldbyname('CQDH').value+'''');
            sql.add('      and G04 is not null ');
            sql.add('group by XieXing,SheHao,CQDH ');
            execsql;
          end; 
        except
        end;

        try
        if XXZLS.FieldByName('XH').value='E' then
          begin  
            active:=false;
            sql.Clear;
            sql.add('insert into #PF ');
            sql.add('select  XieXing,SheHao,CQDH,'+''''+XXZLS.fieldbyname('CLDH').value+''''+' as CLDH,avg(G05) as Qty ');
            sql.add('from '+main.LIY_DD+'.dbo.XXZLS1 ')  ;
            sql.add('where XieXing='+''''+XXZLS.fieldbyname('XieXing').Value+'''');
            sql.add('      and SheHao='+''''+XXZLS.fieldbyname('SheHao').value+'''');
            sql.add('      and CQDH='+''''+XXZLS.fieldbyname('CQDH').value+'''');
            sql.add('      and G05 is not null ');
            sql.add('group by XieXing,SheHao,CQDH ');
            execsql;
          end;  
        except
        end;

        try
        if XXZLS.FieldByName('XH').value='F' then
          begin 
            active:=false;
            sql.Clear;
            sql.add('insert into #PF ');
            sql.add('select  XieXing,SheHao,CQDH,'+''''+XXZLS.fieldbyname('CLDH').value+''''+' as CLDH,avg(G06) as Qty ');
            sql.add('from '+main.LIY_DD+'.dbo.XXZLS1 ')  ;
            sql.add('where XieXing='+''''+XXZLS.fieldbyname('XieXing').Value+'''');
            sql.add('      and SheHao='+''''+XXZLS.fieldbyname('SheHao').value+'''');
            sql.add('      and CQDH='+''''+XXZLS.fieldbyname('CQDH').value+'''');
            sql.add('      and G06 is not null ');
            sql.add('group by XieXing,SheHao,CQDH ');
            execsql;
          end; 
        except
        end;

        try
        if XXZLS.FieldByName('XH').value='G' then
          begin  
            active:=false;
            sql.Clear;
            sql.add('insert into #PF ');
            sql.add('select  XieXing,SheHao,CQDH,'+''''+XXZLS.fieldbyname('CLDH').value+''''+' as CLDH,avg(G07) as Qty ');
            sql.add('from '+main.LIY_DD+'.dbo.XXZLS1 ')  ;
            sql.add('where XieXing='+''''+XXZLS.fieldbyname('XieXing').Value+'''');
            sql.add('      and SheHao='+''''+XXZLS.fieldbyname('SheHao').value+'''');
            sql.add('      and CQDH='+''''+XXZLS.fieldbyname('CQDH').value+'''');
            sql.add('      and G07 is not null ');
            sql.add('group by XieXing,SheHao,CQDH ');
            execsql;
          end;
        except
        end;

        try
        if XXZLS.FieldByName('XH').value='H' then
          begin 
            active:=false;
            sql.Clear;
            sql.add('insert into #PF ');
            sql.add('select  XieXing,SheHao,CQDH,'+''''+XXZLS.fieldbyname('CLDH').value+''''+' as CLDH,avg(G08) as Qty ');
            sql.add('from '+main.LIY_DD+'.dbo.XXZLS1 ')  ;
            sql.add('where XieXing='+''''+XXZLS.fieldbyname('XieXing').Value+'''');
            sql.add('      and SheHao='+''''+XXZLS.fieldbyname('SheHao').value+'''');
            sql.add('      and CQDH='+''''+XXZLS.fieldbyname('CQDH').value+'''');
            sql.add('      and G08 is not null ');
            sql.add('group by XieXing,SheHao,CQDH ');
            execsql;
          end; 
        except
        end;

        try
        if XXZLS.FieldByName('XH').value='I' then
          begin  
            active:=false;
            sql.Clear;
            sql.add('insert into #PF ');
            sql.add('select  XieXing,SheHao,CQDH,'+''''+XXZLS.fieldbyname('CLDH').value+''''+' as CLDH,avg(G09) as Qty ');
            sql.add('from '+main.LIY_DD+'.dbo.XXZLS1 ')  ;
            sql.add('where XieXing='+''''+XXZLS.fieldbyname('XieXing').Value+'''');
            sql.add('      and SheHao='+''''+XXZLS.fieldbyname('SheHao').value+'''');
            sql.add('      and CQDH='+''''+XXZLS.fieldbyname('CQDH').value+'''');
            sql.add('      and G09 is not null ');
            sql.add('group by XieXing,SheHao,CQDH ');
            execsql;
          end; 
        except
        end;

        try
        if XXZLS.FieldByName('XH').value='J' then
          begin    
            active:=false;
            sql.Clear;
            sql.add('insert into #PF ');
            sql.add('select  XieXing,SheHao,CQDH,'+''''+XXZLS.fieldbyname('CLDH').value+''''+' as CLDH,avg(G10) as Qty ');
            sql.add('from '+main.LIY_DD+'.dbo.XXZLS1 ')  ;
            sql.add('where XieXing='+''''+XXZLS.fieldbyname('XieXing').Value+'''');
            sql.add('      and SheHao='+''''+XXZLS.fieldbyname('SheHao').value+'''');
            sql.add('      and CQDH='+''''+XXZLS.fieldbyname('CQDH').value+'''');
            sql.add('      and G10 is not null ');
            sql.add('group by XieXing,SheHao,CQDH ');
            execsql;
          end;
        except
        end;

        try
        if XXZLS.FieldByName('XH').value='K' then
          begin     
            active:=false;
            sql.Clear;
            sql.add('insert into #PF ');
            sql.add('select  XieXing,SheHao,CQDH,'+''''+XXZLS.fieldbyname('CLDH').value+''''+' as CLDH,avg(G11) as Qty ');
            sql.add('from '+main.LIY_DD+'.dbo.XXZLS1 ')  ;
            sql.add('where XieXing='+''''+XXZLS.fieldbyname('XieXing').Value+'''');
            sql.add('      and SheHao='+''''+XXZLS.fieldbyname('SheHao').value+'''');
            sql.add('      and CQDH='+''''+XXZLS.fieldbyname('CQDH').value+'''');
            sql.add('      and G11 is not null ');
            sql.add('group by XieXing,SheHao,CQDH ');
            execsql;
          end; 
        except
        end;

        try
        if XXZLS.FieldByName('XH').value='L' then
          begin  
            active:=false;
            sql.Clear;
            sql.add('insert into #PF ');
            sql.add('select  XieXing,SheHao,CQDH,'+''''+XXZLS.fieldbyname('CLDH').value+''''+' as CLDH,avg(G12) as Qty ');
            sql.add('from '+main.LIY_DD+'.dbo.XXZLS1 ')  ;
            sql.add('where XieXing='+''''+XXZLS.fieldbyname('XieXing').Value+'''');
            sql.add('      and SheHao='+''''+XXZLS.fieldbyname('SheHao').value+'''');
            sql.add('      and CQDH='+''''+XXZLS.fieldbyname('CQDH').value+'''');
            sql.add('      and G12 is not null ');
            sql.add('group by XieXing,SheHao,CQDH ');
            execsql;
          end; 
        except
        end;

        try
        if XXZLS.FieldByName('XH').value='M' then
          begin   
            active:=false;
            sql.Clear;
            sql.add('insert into #PF ');
            sql.add('select  XieXing,SheHao,CQDH,'+''''+XXZLS.fieldbyname('CLDH').value+''''+' as CLDH,avg(G13) as Qty ');
            sql.add('from '+main.LIY_DD+'.dbo.XXZLS1 ')  ;
            sql.add('where XieXing='+''''+XXZLS.fieldbyname('XieXing').Value+'''');
            sql.add('      and SheHao='+''''+XXZLS.fieldbyname('SheHao').value+'''');
            sql.add('      and CQDH='+''''+XXZLS.fieldbyname('CQDH').value+'''');
            sql.add('      and G13 is not null ');
            sql.add('group by XieXing,SheHao,CQDH ');
            execsql;
          end; 
        except
        end;

        try
        if XXZLS.FieldByName('XH').value='N' then
          begin  
            active:=false;
            sql.Clear;
            sql.add('insert into #PF ');
            sql.add('select  XieXing,SheHao,CQDH,'+''''+XXZLS.fieldbyname('CLDH').value+''''+' as CLDH,avg(G14) as Qty ');
            sql.add('from '+main.LIY_DD+'.dbo.XXZLS1 ')  ;
            sql.add('where XieXing='+''''+XXZLS.fieldbyname('XieXing').Value+'''');
            sql.add('      and SheHao='+''''+XXZLS.fieldbyname('SheHao').value+'''');
            sql.add('      and CQDH='+''''+XXZLS.fieldbyname('CQDH').value+'''');
            sql.add('      and G14 is not null ');
            sql.add('group by XieXing,SheHao,CQDH ');
            execsql;
          end;
        except
        end;

        try
        if XXZLS.FieldByName('XH').value='O' then
          begin  
            active:=false;
            sql.Clear;
            sql.add('insert into #PF ');
            sql.add('select  XieXing,SheHao,CQDH,'+''''+XXZLS.fieldbyname('CLDH').value+''''+' as CLDH,avg(G15) as Qty ');
            sql.add('from '+main.LIY_DD+'.dbo.XXZLS1 ')  ;
            sql.add('where XieXing='+''''+XXZLS.fieldbyname('XieXing').Value+'''');
            sql.add('      and SheHao='+''''+XXZLS.fieldbyname('SheHao').value+'''');
            sql.add('      and CQDH='+''''+XXZLS.fieldbyname('CQDH').value+'''');
            sql.add('      and G15 is not null ');
            sql.add('group by XieXing,SheHao,CQDH ');
            execsql;
          end;  
        except
        end;

        XXZLS.Next;
      end;
  end;
  //showmessage('aaa');
  query1.Active:=true;
end;

procedure TModelCost_XXCB.Query1CalcFields(DataSet: TDataSet);
begin 
with query1 do
  begin
    fieldbyname('USACC').Value:=fieldbyname('USPrice').Value*fieldbyname('CLSL').Value;
  end;
end;

procedure TModelCost_XXCB.Query1NewRecord(DataSet: TDataSet);
begin

abort;
end;

procedure TModelCost_XXCB.Calculate1Click(Sender: TObject);
var bm:Tbookmark;
i:integer;
Qty:real;
bookmarklist:tbookmarklisteh;
begin
Qty:=0;
if (not query1.Active) then
  begin
    abort;
  end;
if (Query1.recordcount<1) then
  begin
    abort;
  end;
with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('delete CWXXCBS ');
    sql.add('where XieXing='+''''+ModelCost.CWXXCB.fieldbyname('XieXing').value+'''');
    sql.add('      and SheHao= '+''''+ModelCost.CWXXCB.fieldbyname('SheHao').value+'''');  
    sql.add('      and SB='+''''+'2'+'''');
    execsql;
  end;
query1.disablecontrols;
bm:=query1.getbookmark;
bookmarklist:=dbgrideh1.selectedrows;
if bookmarklist.count>0 then
  begin
    try
      for i:=0 to bookmarklist.count-1 do
        begin
          query1.gotobookmark(pointer(bookmarklist[i]));
          if not query1.FieldByName('USACC').IsNull then
            begin
              Qty:=Qty+query1.FieldByName('USACC').value;
              UpCWXXCBS.apply(ukinsert);
            end;
        end;
      ModelCost.CWXXCB.edit;
      ModelCost.CWXXCB.fieldbyname('XXCB').value:=roundto(Qty,-2)  ;
      ModelCost.CWXXCB.post;
    finally
      begin
        query1.gotobookmark(bm);
        query1.freebookmark(bm);
        query1.enablecontrols;
        showmessage('You have finish copy!');
      end;
    end;
  end;

end;

procedure TModelCost_XXCB.CalculateAll1Click(Sender: TObject);
var  Qty:real;
begin
Qty:=0;
if (not query1.Active) then
  begin
    abort;
  end;
if (Query1.recordcount<1) then
  begin
    abort;
  end;  
with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('delete CWXXCBS ');
    sql.add('where XieXing='+''''+ModelCost.CWXXCB.fieldbyname('XieXing').value+'''');
    sql.add('      and SheHao= '+''''+ModelCost.CWXXCB.fieldbyname('SheHao').value+'''');
    sql.add('      and SB='+''''+'2'+'''');
    execsql;
  end;
with query1 do
  begin
    first;
    while not eof do
      begin
        if not query1.FieldByName('USACC').IsNull then
          begin
            Qty:=Qty+query1.FieldByName('USACC').value;
            UpCWXXCBS.apply(ukinsert);
          end;
        next;
      end;
  end;
ModelCost.CWXXCB.edit;
ModelCost.CWXXCB.fieldbyname('XXCB').value:=roundto(Qty,-2)  ;
ModelCost.CWXXCB.post;

end;

end.
