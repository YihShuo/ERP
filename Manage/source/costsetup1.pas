unit costsetup1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBCtrls, Grids, DBGrids, ExtCtrls, DBTables, StdCtrls;

type
  Tcostsetup = class(TForm)
    getdata: TQuery;
    Panel1: TPanel;
    costlist: TDBGrid;
    DataSource1: TDataSource;
    getdataCostYear: TStringField;
    getdataCostMon: TStringField;
    getdataCostDep: TStringField;
    getdataCostTotP: TFloatField;
    getdataCostTotO: TFloatField;
    getdataCostAvgP: TFloatField;
    getdataCostAvgO: TFloatField;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    cby: TComboBox;
    cbm: TComboBox;
    adddata: TQuery;
    Button3: TButton;
    upsql: TUpdateSQL;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cbyClick(Sender: TObject);
    procedure cbmClick(Sender: TObject);
    procedure getdataAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  costsetup: Tcostsetup;

implementation

{$R *.dfm}




procedure Tcostsetup.Button2Click(Sender: TObject);
begin
with adddata do
  getdata.CachedUpdates:=false;
  begin
    adddata.active:=false;
    adddata.sql.Clear;
    adddata.sql.add('select * from costset where  ');
    adddata.sql.add(' costyear='+''''+cby.Text+''''+' and ');
    adddata.sql.add('costmon='+''''+cbm.Text+''''+' and ');
    adddata.sql.add('costdep='+''''+'X'+'''');
    //memo1.text:=sql.text;
    adddata.active:=true;
    if adddata.Eof then
    begin
      adddata.Active:=false;
      adddata.sql.Clear;
      adddata.sql.add('INSERT INTO costset (costyear, costmon, costdep) ');
      adddata.sql.add(' values ('+''''+cby.Text+''''+','+''''+cbm.Text+''''+','+''''+'X'+''''+')');
      //memo1.text:=sql.text;
      adddata.Active:=true;
    end;
    //getdata.Active:=false;
    //getdata.active:=true;
    //getdata.CachedUpdates:=true;
    //getdata.Edit;
  end;
end;

procedure Tcostsetup.Button3Click(Sender: TObject);
begin
with getdata do
  begin
    active:=false;
    sql.Clear;
    sql.add('select * from  costset ');
    sql.add('where costyear = '+''''+cby.Text+'''');
    sql.add('      and costmon = '+''''+cbm.Text+'''');
    active:=true;
    getdata.CachedUpdates:=true;
  end;
button1.Enabled:=true;
end;

procedure Tcostsetup.Button1Click(Sender: TObject);
begin
  getdata.First;
  while  not getdata.Eof do
  begin
    getdata.Edit;
    with adddata do
    begin
      active:=false;
      sql.Clear;
      sql.add('select isnull(sum(Qty),1) as inqty,kcbh from YWCP ');
      sql.add('           where year(InDate)=  '+''''+cby.Text+'''');
      sql.add('      and month(InDate) = '+''''+cbm.Text+'''');
      sql.add('      and kcbh = '+''''+costlist.Fields[2].Value+'''');
      sql.add('      group by kcbh');
      active:=true;
      if not adddata.Eof then
        begin
          costlist.Fields[5].Value:=(costlist.Fields[3].Value/adddata.FieldByName('inqty').Value);
          costlist.Fields[6].Value:=(costlist.Fields[4].Value/adddata.FieldByName('inqty').Value);
        end
      else
        begin
          costlist.Fields[5].Value:=0;
          costlist.Fields[6].Value:=0;
        end;
    end;

    upsql.Apply(ukmodify);
    getdata.Next;
  end;
end;

procedure Tcostsetup.FormDestroy(Sender: TObject);
begin
   costsetup:=nil;
end;

procedure Tcostsetup.cbyClick(Sender: TObject);
begin
  button1.Enabled:=false;
end;

procedure Tcostsetup.cbmClick(Sender: TObject);
begin
  button1.Enabled:=false;
end;

procedure Tcostsetup.getdataAfterInsert(DataSet: TDataSet);
begin
  costlist.Fields[0].Value:=cby.Text;
  costlist.Fields[1].Value:=cbm.Text;
  costlist.Fields[2].Value:='XX';
  costlist.Fields[3].Value:=0;
  costlist.Fields[4].Value:=0;
  costlist.Fields[5].Value:=0;
  costlist.Fields[6].Value:=0;
  upsql.Apply(ukinsert);
end;

end.
