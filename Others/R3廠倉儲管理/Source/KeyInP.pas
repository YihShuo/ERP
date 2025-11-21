unit KeyInP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, ExtCtrls, Grids, DBGrids;

type
  Tkeyin = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    workidcb: TComboBox;
    tempq: TQuery;
    Query: TButton;
    b2: TButton;
    workplansedit: TQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    workplanseditworkid: TStringField;
    workplanseditsno: TIntegerField;
    workplanseditmjbh: TStringField;
    workplanseditenglishname: TStringField;
    workplanseditqty: TIntegerField;
    workplanseditoldqty: TIntegerField;
    wpsu: TUpdateSQL;
    Query1: TQuery;
    workplanseditsize: TStringField;
    workplanseditcts: TIntegerField;
    workplansedittotqty: TIntegerField;
    workplanseditcolorno: TStringField;
    Label2: TLabel;
    CLassCB: TComboBox;
    workplanseditcodebar: TStringField;
    scq: TQuery;
    scqWorkID: TStringField;
    scqSize: TStringField;
    scqClass: TStringField;
    scqInOut: TStringField;
    scqscanDate: TDateTimeField;
    scqQty: TIntegerField;
    scqUpdateDate: TDateTimeField;
    scqUserID: TStringField;
    upwwdhsds: TUpdateSQL;
    DataSource2: TDataSource;
    scansum: TQuery;
    scansumworkid: TStringField;
    scansumclass: TStringField;
    scansumsize: TStringField;
    scansuminout: TStringField;
    scansumscandate: TDateTimeField;
    scansumqty: TIntegerField;
    updateq: TQuery;
    workplanseditpbarcode: TIntegerField;
    Memo1: TMemo;
    procedure QueryClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure workplanseditctsChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  keyin: Tkeyin;

implementation

uses mailP;

{$R *.dfm}

procedure Tkeyin.QueryClick(Sender: TObject);
begin
  if classcb.ItemIndex=-1 then
  begin
    showmessage('Pls select Class first.');
    abort;
  end;
  b2.Visible:=true;
  with workplansedit do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select workid,sno,size,mjbh,workplans.colorno,colorclass.englishname,qty,okqty as oldqty ');
    sql.Add(',0 as cts,0 as totqty,codebar,pbarcode from workplans ');
    sql.Add('left join colorclass on workplans.colorno=colorclass.colorno ');
    sql.Add('where (case  when sno='+''''+'1'+''''+' then (pbarcode*12) else qty end) > okqty ');
    if workidcb.Text<>'ALL' then
      sql.Add('and workid='+''''+workidcb.Text+'''');
    active:=true;
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
end;

procedure Tkeyin.FormClose(Sender: TObject; var Action: TCloseAction);
var i:integer;
begin
  scansum.Active:=true;
  with updateq do
  begin
    if scansum.RecordCount > 0 then
    begin
      for i :=1 to scansum.RecordCount do
      begin
        scq.active:=true;
        if scq.RecordCount > 0 then
        begin
          scq.requestlive:=true;
          scq.cachedupdates:=true;
          scq.edit;
          scq.FieldByName('qty').Value:=scq.FieldByName('qty').Value+scansum.FieldByName('qty').Value;
          upwwdhsds.apply(ukmodify);
        end
        else
        begin
          scq.Insert;
          scq.FieldByName('workid').Value:=scansum.FieldByName('workid').Value;
          scq.FieldByName('size').Value:=scansum.FieldByName('size').Value;
          scq.FieldByName('class').Value:=scansum.FieldByName('class').Value;
          scq.FieldByName('inout').Value:=scansum.FieldByName('inout').Value;
          scq.FieldByName('scandate').Value:=scansum.FieldByName('scandate').Value;
          scq.FieldByName('qty').Value:=scansum.FieldByName('qty').Value;
          scq.FieldByName('updatedate').Value:=now;
          scq.FieldByName('userid').Value:=main.Edit1.Text;
          upwwdhsds.apply(ukinsert);
        end;
        scansum.next;
      end;
      updateq.SQL.Clear;
      updateq.SQL.Add('update workscan set yn = '+''''+'Y'+'''');
      updateq.SQL.add(' where yn='+''''+ 'N'+''''+' and inout='+''''+'I'+'''');
      updateq.ExecSQL;
    end
    else
    begin
      showmessage('No Data Cheng');
    end;
  end;
  action:=cafree;
  keyin:=nil;
end;

procedure Tkeyin.FormCreate(Sender: TObject);
var i:integer;
begin
  tempq.Active:=true;
  with tempq do
  begin
    tempq.First;
    workidcb.Items.Clear;
    workidCB.Items.Add('ALL');

    for i:=1 to recordcount do
      begin
        workidCB.Items.Add(fieldbyname('workid').asstring);
        next;
      end;
    workidCB.ItemIndex:=0;
  end;
  tempq.Active:=false;
end;

procedure Tkeyin.b2Click(Sender: TObject);
var i,j:integer;

begin
  with workplansedit do
  begin
//    workplansedit.requestlive:=true;
//    workplansedit.cachedupdates:=true;
//    workplansedit.edit;
    workplansedit.First;
    for i:=1 to workplansedit.RecordCount do
    begin
      edit;
      if fieldbyname('CTS').Value > 0 then
      begin
        if fieldbyname('sno').Value=1 then
          fieldbyname('OLDQty').Value:=fieldbyname('OLDQty').Value+fieldbyname('CTS').Value*12
        else
          fieldbyname('OLDQty').Value:=fieldbyname('qty').Value;
        wpsu.Apply(ukmodify);

        for j:=1 to fieldbyname('CTS').Value do
        begin
          query1.SQL.Clear;
          query1.sql.add('INSERT INTO WorkScan ' );
          query1.sql.add('VALUES ('+''''+fieldbyname('codebar').Value+''''+',');
          query1.sql.add('getdate(),'+''''+'I'+''''+',');
          query1.sql.Add('  '''+inttostr(classcb.itemindex)+''''+',');
          query1.sql.Add('  '''+main.Edit1.Text+''''+',');
          if fieldbyname('sno').Value = 1 then
            query1.sql.add('12,null)')
          else
            query1.sql.add(inttostr(fieldbyname('qty').Value)+',null)');
          //memo1.text:=query1.sql.text;
          query1.ExecSQL;
        end;
      end;
      next;
    end;
    active:=false;
    active:=true;
  end;
end;

procedure Tkeyin.workplanseditctsChange(Sender: TField);
begin
  with workplansedit do
  begin
    if fieldbyname('sno').Value=1 then
    begin
      fieldbyname('TotQty').Value:=fieldbyname('OLDQty').Value+fieldbyname('CTS').Value*12;
      if fieldbyname('TotQty').Value > fieldbyname('pbarcode').Value*12  then
      begin
        showmessage('Cts is Over Count');
        fieldbyname('TotQty').Value:=0;
        fieldbyname('cts').Value:=0;
      end;
    end
    else
    begin
      fieldbyname('TotQty').Value:=fieldbyname('OLDQty').Value+fieldbyname('CTS').Value*fieldbyname('qty').Value;
      if fieldbyname('TotQty').Value > fieldbyname('Qty').Value  then
      begin
        showmessage('Cts is Over Count');
        fieldbyname('TotQty').Value:=0;
        fieldbyname('cts').Value:=0;
      end;
    end;
  end;
end;

end.
