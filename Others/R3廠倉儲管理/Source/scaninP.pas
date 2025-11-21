unit scaninP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBTables, DB, Grids, DBGrids, ExtCtrls,strutils;

type
  TScanIn = class(TForm)
    Panel1: TPanel;
    Query1: TQuery;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    CLassCB: TComboBox;
    Label1: TLabel;
    scansum: TQuery;
    Edit1: TEdit;
    Button1: TButton;
    UpdataQuery: TQuery;
    checkquery: TQuery;
    UpdateSQL1: TUpdateSQL;
    Query1WorkID: TStringField;
    Query1Sno: TIntegerField;
    Query1Mjbh: TStringField;
    Query1Size: TStringField;
    Query1Qty: TIntegerField;
    Query1OKQTY: TIntegerField;
    Query1new: TIntegerField;
    Query1englishname: TStringField;
    Query1codebar: TStringField;
    scq: TQuery;
    updateq: TQuery;
    DataSource2: TDataSource;
    scansumworkid: TStringField;
    scansumclass: TStringField;
    scansumsize: TStringField;
    scansuminout: TStringField;
    scansumscandate: TDateTimeField;
    scansumqty: TIntegerField;
    upwwdhsds: TUpdateSQL;
    scqWorkID: TStringField;
    scqSize: TStringField;
    scqClass: TStringField;
    scqInOut: TStringField;
    scqscanDate: TDateTimeField;
    scqQty: TIntegerField;
    scqUpdateDate: TDateTimeField;
    scqUserID: TStringField;
    checkcode: TQuery;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanIn: TScanIn;

implementation

uses mailP;

{$R *.dfm}

procedure TScanIn.Edit1KeyPress(Sender: TObject; var Key: Char);
var i:integer;
begin
  if key=#13 then
  begin
    if classcb.ItemIndex=-1 then
    begin
      showmessage('Pls select Class first.');
      edit1.Text:='';
      abort;
    end;
    checkcode.active:=false;
    checkcode.Params.Items[0].asstring:=edit1.Text;
    checkcode.Active:=true;
    i:=checkcode.recordcount;
    //showmessage checkcode.RecordCount;
    if checkcode.RecordCount = 0 then
    begin
      with checkquery do
      begin
        active:=false;
        //i:=(pos('-',edit1.text)-1);
        Params.Items[0].AsString :=LeftStr(edit1.text,(pos('-',edit1.text)-1));
        //showmessage( LeftStr(edit1.text,i));
        active:=true;
        if recordcount>0 then
        begin
          if fieldbyname('PQty').Value > fieldbyname('OKQty').Value then
          begin
            if query1.Locate('CODEBAR',edit1.text,[]) then
            begin
              query1.Edit;
              if fieldbyname('sno').Value = 1 then
                query1.FieldByName('new').Value:=query1.FieldByName('new').Value+12
              else
                query1.FieldByName('new').Value:=checkquery.fieldbyname('Qty').Value;

              query1.Post;
            end
            else
            begin
              query1.Insert;
              query1.fieldbyname('workid').value:=checkquery.FieldByName('workid').Value;
              query1.fieldbyname('sno').value:=checkquery.FieldByName('sno').Value;
              query1.fieldbyname('mjbh').value:=checkquery.FieldByName('mjbh').Value;
              query1.fieldbyname('englishname').value:=checkquery.FieldByName('englishname').Value;
              query1.fieldbyname('size').value:=checkquery.FieldByName('size').Value;
              query1.fieldbyname('Qty').value:=checkquery.FieldByName('Qty').Value;
              query1.fieldbyname('okqty').value:=checkquery.FieldByName('okqty').Value;
              if fieldbyname('sno').Value = 1 then
                query1.FieldByName('new').Value:=12
              else
                query1.FieldByName('new').Value:=checkquery.fieldbyname('Qty').Value;

              query1.post;
              {¼g¤JWorkPlans ©M WorkScan}
              updataquery.active:=false;
              updataquery.sql.Clear;
              UpdataQuery.sql.add('INSERT INTO WorkScan ' );
              updataquery.sql.add('VALUES ('+''''+edit1.Text+''''+',');
              updataquery.sql.add('getdate(),'+''''+'I'+''''+',');
              updataquery.sql.Add('  '''+inttostr(classcb.itemindex)+''''+',');
              updataquery.sql.Add('  '''+main.Edit1.Text+''''+',');
              if fieldbyname('sno').Value = 1 then
                updataquery.sql.add('12,null)')
              else
                updataquery.sql.add(checkquery.fieldbyname('Qty').Value+',null)');
              updataquery.ExecSQL;

              updataquery.active:=false;
              updataquery.SQL.Clear;
              updataquery.sql.Add('update workplans ');
              if fieldbyname('sno').Value = 1 then
                updataquery.sql.add('set okqty='+inttostr(checkquery.fieldbyname('okQty').Value+12) )
              else
                updataquery.sql.add('set okqty=qty ');

              updataquery.sql.Add('where codebar='+''''+LeftStr(edit1.text,(pos('-',edit1.text)-1))+'''');
              //memo1.text:=updataquery.sql.text;

              updataquery.ExecSQL;
            end;
            edit1.Text:='';
          end
          else
          begin
            showmessage('More than Order Qty.'+#39+'Don hang du so luong tua');
            edit1.Text:='';
          end;
      end
      else
      begin
        showmessage('BarCode is Error,'+#39+'  xin gap can bo doi tem ma vach');
        edit1.Text:='';
      end;
    end;
    end
    else
    begin
      showmessage('BarCode is Scaned');
      edit1.Text:='';
    end;
  end;
end;

procedure TScanIn.FormClose(Sender: TObject; var Action: TCloseAction);
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
  ScanIn:=nil;  
end;

procedure TScanIn.FormCreate(Sender: TObject);
begin
  query1.Active:=true;
end;

procedure TScanIn.FormDestroy(Sender: TObject);
begin
ScanIn:=nil;
end;

procedure TScanIn.Button1Click(Sender: TObject);
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
end;

end.
