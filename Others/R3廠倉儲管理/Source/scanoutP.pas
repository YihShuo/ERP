unit scanoutP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  Tscanout = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    CLassCB: TComboBox;
    Edit1: TEdit;
    Button1: TButton;
    DBGrid1: TDBGrid;
    Query1: TQuery;
    DataSource1: TDataSource;
    UpdataQuery: TQuery;
    cqsmdd: TQuery;
    UpdateSQL1: TUpdateSQL;
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
    Query1ysbh: TStringField;
    Query1size: TStringField;
    Query1OLDqty: TIntegerField;
    Query1okcts: TIntegerField;
    Query1newcts: TIntegerField;
    Query1Totqty: TIntegerField;
    Query1qty: TIntegerField;
    Query1cts: TIntegerField;
    cqsmddDDBH: TStringField;
    cqsmddGXLB: TStringField;
    cqsmddXXCC: TStringField;
    cqsmddXH: TStringField;
    cqsmddCODEBAR: TStringField;
    cqsmddQty: TIntegerField;
    cqsmddCTS: TIntegerField;
    cqsmddokCTS: TIntegerField;
    cqsmddUSERDate: TDateTimeField;
    cqsmddUSERID: TStringField;
    cqsmddYN: TStringField;
    cqsmddysbh: TStringField;
    upsmdd: TQuery;
    Query1codebar: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure Query1newctsChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  scanout: Tscanout;

implementation

uses mailP;

{$R *.dfm}

procedure Tscanout.FormClose(Sender: TObject; var Action: TCloseAction);
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
      updateq.SQL.add(' where yn='+''''+ 'N'+''''+' and inout='+''''+'O'+'''');
      updateq.ExecSQL;
    end
    else
    begin
      showmessage('No Data Cheng');
    end;
  end;
  action:=cafree;
  scanout:=nil;
end;

procedure Tscanout.FormCreate(Sender: TObject);
begin
  query1.Active:=true;
  {tempq.Active:=true;
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
  tempq.Active:=false;}
end;

procedure Tscanout.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    if classcb.ItemIndex <= 0 then
    begin
      showmessage('Pls select Class first.');
      edit1.Text:='';
      abort;
    end;

    with cqsmdd do
    begin
      active:=false;
      Params.Items[0].AsString :=edit1.text;
      active:=true;
      UpdataQuery.Active:=false;
      updataquery.SQL.Clear;
      updataquery.SQL.Add('select * from workplanss where ddbh='+''''+fieldbyname('ysbh').Value+'''');
      updataquery.active:=true;
      if (recordcount>0) and (updataquery.RecordCount>0) then
      begin
        if fieldbyname('cts').Value > fieldbyname('OKcts').Value then
        begin
          if query1.Locate('CODEBAR',edit1.text,[]) then
          begin
            query1.Edit;
            query1.FieldByName('newcts').Value:=query1.FieldByName('newcts').Value+1;
            query1.Post;
          end
          else
          begin
            query1.Insert;
            query1.fieldbyname('ysbh').value:=cqsmdd.FieldByName('ddbh').Value;
            query1.fieldbyname('size').value:=cqsmdd.FieldByName('xxcc').Value;
            query1.fieldbyname('oldqty').value:=cqsmdd.FieldByName('qty').Value*cqsmdd.FieldByName('OKCTS').Value;
            query1.fieldbyname('OKCTS').value:=cqsmdd.FieldByName('OKCTS').Value;
            query1.FieldByName('CTS').Value:=cqsmdd.FieldByName('CTS').Value;
            query1.fieldbyname('newcts').value:=1;
            query1.post;
            {¼g¤JWorkPlans ©M WorkScan}
            updataquery.active:=false;
            updataquery.sql.Clear;
            UpdataQuery.sql.add('INSERT INTO WorkScan ' );
            updataquery.sql.add('VALUES ('+''''+edit1.Text+''''+',');
            updataquery.sql.add('getdate(),'+''''+'O'+''''+',');
            updataquery.sql.Add('  '''+inttostr(classcb.itemindex)+''''+',');
            updataquery.sql.Add('  '''+main.Edit1.Text+''''+',');
            updataquery.sql.add(inttostr(cqsmdd.fieldbyname('Qty').Value)+',null)');
            updataquery.ExecSQL;

            upsmdd.active:=false;
            upsmdd.SQL.Clear;
            upsmdd.sql.Add('update smddss ');
            upsmdd.sql.add('set okcts=okcts+1 ');
            upsmdd.sql.Add('where codebar='+''''+edit1.text+'''');
            //memo1.text:=updataquery.sql.text;
            upsmdd.ExecSQL;
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
  end;
end;

procedure Tscanout.Button1Click(Sender: TObject);
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
      updateq.SQL.add(' where yn='+''''+ 'N'+''''+' and inout='+''''+'O'+'''');
      updateq.ExecSQL;
    end
    else
    begin
      showmessage('No Data Cheng');
    end;
  end;
end;

procedure Tscanout.Query1newctsChange(Sender: TField);
begin
  with Query1 do
  begin
    fieldbyname('TotQty').Value:=fieldbyname('OLDQty').Value+fieldbyname('newCTS').Value*fieldbyname('qty').Value;
    showmessage( fieldbyname('OLDQty').Value+fieldbyname('newCTS').Value*fieldbyname('qty').Value );
    if fieldbyname('cts').Value < (fieldbyname('oKcts').Value+fieldbyname('newcts').Value)  then
    begin
      showmessage('Cts is Over Count');
      query1.delete;
      abort;
    end;
  end;
end;

end.
