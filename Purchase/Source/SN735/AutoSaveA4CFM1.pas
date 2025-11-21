unit AutoSaveA4CFM1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, StdCtrls, Buttons, ComCtrls,
  ExtCtrls;

type
  TAutoSaveA4CFM = class(TForm)
    Panel11: TPanel;
    Label36: TLabel;
    Label37: TLabel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    DBGridEh8: TDBGridEh;
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Query1: TQuery;
    UpdateSQL1: TUpdateSQL;
    UpdateSQL2: TUpdateSQL;
    Query2: TQuery;
    Label1: TLabel;
    Edit1: TEdit;
    Query2CLDH: TStringField;
    Query2ywpm: TStringField;
    Query2A4Comfirm: TStringField;
    Query2TrackingA4Comfirm: TStringField;
    Query2DateA4Comfirm: TDateTimeField;
    Query2Signer: TStringField;
    Query2cgzl_color2clbh: TStringField;
    Query1CLDH: TStringField;
    Query1ywpm: TStringField;
    Query1A4Comfirm: TStringField;
    Query1TrackingA4Comfirm: TStringField;
    Query1DateA4Comfirm: TDateTimeField;
    Query1Signer: TStringField;
    Query1cgzl_color2clbh: TStringField;
    TIMEQRY: TQuery;
    procedure BB1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AutoSaveA4CFM: TAutoSaveA4CFM;

implementation

{$R *.dfm}

procedure TAutoSaveA4CFM.BB1Click(Sender: TObject);
begin
  with Query1 do
  begin
     active:=false;
     sql.Clear;
     sql.add('select CLZL.CLDH,CLZL.ywpm,cgzl_color2.A4Comfirm,cgzl_color2.TrackingA4Comfirm,');
     sql.add('cgzl_color2.DateA4Comfirm,cgzl_color2.Signer,cgzl_color2.CLBH as  cgzl_color2clbh');
     sql.add('From (');
     sql.add('select CLDH,CLLB,SUBSTRING(CLZL.ywpm,5,200)as ywpm from CLZL');
     sql.add('where CLDH='''+edit1.text+'''');
     sql.add(') aa');
     sql.add('left join CLZL on aa.CLLB=CLZL.CLLB and CLZL.ywpm like ''%''+aa.ywpm');
     sql.add('left join cgzl_color2 on cgzl_color2.CLBH=CLZL.CLDH');   
     sql.add('order by CLZL.CLDH');
     //   showmessage(sql.text);
     active:=true;
  end;

  with Query2 do
  begin
     active:=false;
     sql.Clear;
     sql.add('select CLZL.CLDH,CLZL.ywpm,cgzl_color2.A4Comfirm,cgzl_color2.TrackingA4Comfirm,');
     sql.add('cgzl_color2.DateA4Comfirm,cgzl_color2.Signer,cgzl_color22.CLBH as  cgzl_color2clbh');
     sql.add('From (');     
     sql.add('select CLDH,CLLB,SUBSTRING(CLZL.ywpm,5,200)as ywpm from CLZL');
     sql.add('where CLDH='''+edit1.text+'''');
     sql.add(') aa');
     sql.add('left join CLZL on aa.CLLB=CLZL.CLLB and CLZL.ywpm like ''%''+aa.ywpm');
     sql.add('left join cgzl_color2 on cgzl_color2.CLBH=aa.CLDH');
     sql.add('left join cgzl_color2 cgzl_color22 on cgzl_color22.CLBH=CLZL.CLDH');
     sql.add('order by CLZL.CLDH');

        //showmessage(sql.text);
     active:=true;
  end;
end;

procedure TAutoSaveA4CFM.BB2Click(Sender: TObject);
var i:integer;
begin
    if Query1.Active=false then
      exit;
     Query1.requestlive:=true;
     Query1.cachedupdates:=true;    
     Query1.First;
      for i:=1 to Query1.RecordCount do
        begin
            if  (query1.FieldByName('cgzl_color2clbh').isnull)  then
                with timeqry do
                begin
                  active:=false;
                  sql.Clear;
                  sql.Add(' insert cgzl_color2 (CLBH) values(');
                  sql.Add(' '''+query1.fieldbyname('CLDH').AsString+'''');
                  sql.Add(')');
                  //showmessage(SQL.text);
                  execsql;
                end;
          UpdateSQL1.apply(ukmodify);
          Query1.next;
        end;
end;

procedure TAutoSaveA4CFM.BB3Click(Sender: TObject);
var i:integer;
begin
    if Query2.Active=false then
      exit;
     Query2.requestlive:=true;
     Query2.cachedupdates:=true;
     Query2.First;
      for i:=1 to Query2.RecordCount do
        begin
            if  (Query2.FieldByName('cgzl_color2clbh').isnull)  then
                with timeqry do
                begin
                  active:=false;
                  sql.Clear;
                  sql.Add(' insert cgzl_color2 (CLBH) values(');
                  sql.Add(' '''+query2.fieldbyname('CLDH').AsString+'''');
                  sql.Add(')');
                  //showmessage(SQL.text);
                  execsql;
                end;
          UpdateSQL2.apply(ukmodify);
          Query2.next;
        end;
end;

end.
