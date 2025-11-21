unit ScanOut1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh, DBGridEh;

type
  TScanOut = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    cqsmdd: TQuery;
    cqsmddDDBH: TStringField;
    cqsmddGXLB: TStringField;
    cqsmddXXCC: TStringField;
    cqsmddXH: TStringField;
    cqsmddQty: TIntegerField;
    cqsmddCTS: TIntegerField;
    cqsmddokCTS: TIntegerField;
    cqsmddUSERDate: TDateTimeField;
    cqsmddUSERID: TStringField;
    cqsmddYN: TStringField;
    cqsmddysbh: TStringField;
    UpdateSQL1: TUpdateSQL;
    Query1: TQuery;
    Query1ysbh: TStringField;
    Query1size: TStringField;
    Query1OLDqty: TIntegerField;
    Query1okcts: TIntegerField;
    Query1newcts: TIntegerField;
    Query1Totqty: TIntegerField;
    Query1qty: TIntegerField;
    Query1cts: TIntegerField;
    Query1codebar: TStringField;
    DataSource1: TDataSource;
    UpdataQuery: TQuery;
    cqsmddDepNO: TStringField;
    DBGridEh1: TDBGridEh;
    cqsmddCODEBAR: TStringField;
    cqsmddGJCC: TStringField;
    CLassCB: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Query1newctsChange(Sender: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure UpdateWorkwhsds();
  end;

var
  ScanOut: TScanOut;

implementation

uses main1, Fununit;

{$R *.dfm}
//
procedure TScanOut.UpdateWorkwhsds();
begin
 try
  //
  with UpdataQuery do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('insert into '+main.LIY_DD+'.dbo.workwhsds ');
    SQL.Add('select workscan.workid,workscan.size,workscan.class,workscan.inout,workscan.scandate,workscan.qty,GETDATE() as UserDate,'''+main.Edit1.Text+''' as UserID from  (      ');
    SQL.Add('select workid,class,size,inout');
    SQL.Add('	,convert(smalldatetime,convert(varchar,workscan.scandate,111)) as scandate');
    SQL.Add('	,sum(workscan.qty) as qty ');
    SQL.Add('from '+main.LIY_DD+'.dbo.workscan workscan');
    SQL.Add('left join (select workid,size,codebar from '+main.LIY_DD+'.dbo.workplans  Group by workid,size,codebar ) workplans on workplans.codebar=left(workscan.codebar,(CHARINDEX(''-'',workscan.codebar)-1)) ');
    SQL.Add('where workscan.yn = ''N'' and inout=''O'' and convert(smalldatetime,convert(varchar,workscan.scandate,111)) between '''+FormatDateTime('YYYY-MM-DD',Date()-1)+''' and '''+FormatDateTime('YYYY-MM-DD',Date())+''' ');
    SQL.Add('group by workid,size,class,inout,convert(smalldatetime,convert(varchar,workscan.scandate,111)) )  workscan');
    SQL.Add('where not exists (');
    SQL.Add('  select * from '+main.LIY_DD+'.dbo.workwhsds workwhsds ');
    SQL.Add('  where workwhsds.WorkID=workscan.WorkID and workwhsds.size=workscan.size and workwhsds.Class=workscan.Class ');
    SQL.Add('        and workwhsds.InOut=workscan.InOut and convert(smalldatetime,convert(varchar,workwhsds.scandate,111))=workscan.scandate )');
    SQL.Add('        and workscan.workid is not null ');
    //funcObj.WriteErrorLog(sql.Text);
    ExecSQL();
  end;
  //
  with UpdataQuery do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Update '+main.LIY_DD+'.dbo.workwhsds Set Qty=workscan.qty,UpdateDate=GETDATE(),UserID='''+main.Edit1.Text+''' ');
    SQL.Add('from (');
    SQL.Add('select workscan.workid,workscan.size,workscan.class,workscan.inout,workscan.scandate,workscan.qty,GETDATE() as UserDate,'''+main.Edit1.Text+''' as UserID  from  (      ');
    SQL.Add('select workid,class,size,inout');
    SQL.Add('	,convert(smalldatetime,convert(varchar,workscan.scandate,111)) as scandate');
    SQL.Add('	,sum(workscan.qty) as qty ');
    SQL.Add('from '+main.LIY_DD+'.dbo.workscan workscan');
    SQL.Add('left join (select workid,size,codebar from '+main.LIY_DD+'.dbo.workplans  Group by workid,size,codebar ) workplans on workplans.codebar=left(workscan.codebar,(CHARINDEX(''-'',workscan.codebar)-1)) ');
    SQL.Add('where inout=''O'' and convert(smalldatetime,convert(varchar,workscan.scandate,111)) between '''+FormatDateTime('YYYY-MM-DD',Date()-1)+''' and '''+FormatDateTime('YYYY-MM-DD',Date())+'''   ');
    SQL.Add('group by workid,size,class,inout,convert(smalldatetime,convert(varchar,workscan.scandate,111)) )  workscan');
    SQL.Add('where  exists (');
    SQL.Add('  select * from '+main.LIY_DD+'.dbo.workwhsds workwhsds ');
    SQL.Add('  where workwhsds.WorkID=workscan.WorkID and workwhsds.size=workscan.size and workwhsds.Class=workscan.Class ');
    SQL.Add('        and workwhsds.InOut=workscan.InOut and convert(smalldatetime,convert(varchar,workwhsds.scandate,111))=workscan.scandate )');
    SQL.Add('        and workscan.workid is not null ) workscan where '+main.LIY_DD+'.dbo.workwhsds.WorkID=workscan.WorkID and '+main.LIY_DD+'.dbo.workwhsds.size=workscan.size and '+main.LIY_DD+'.dbo.workwhsds.Class=workscan.Class ');
    SQL.Add('        and '+main.LIY_DD+'.dbo.workwhsds.InOut=workscan.InOut and convert(smalldatetime,convert(varchar,'+main.LIY_DD+'.dbo.workwhsds.scandate,111))=workscan.scandate ');
    //funcObj.WriteErrorLog(sql.Text);
    ExecSQL();
  end;
  //
 except
   on E:Exception do
   begin
     funcObj.WriteErrorLog(datetimetostr(now)+' Error:'+E.Message);
   end;
 end;
  with UpdataQuery do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('update '+main.LIY_DD+'.dbo.workscan set yn=''Y'' ');
    SQL.add(' where yn=''N'' and inout=''O'' and convert(smalldatetime,convert(varchar,'+main.LIY_DD+'.dbo.workscan.scandate,111)) between '''+FormatDateTime('YYYY-MM-DD',Date()-1)+''' and '''+FormatDateTime('YYYY-MM-DD',Date())+''' ');
    ExecSQL;
  end;
  //
end;
//

procedure TScanOut.Button1Click(Sender: TObject);
begin
  UpdateWorkwhsds();
end;

procedure TScanOut.Edit1KeyPress(Sender: TObject; var Key: Char);
var workplans_barcode:string;
begin
  if key=#13 then
  begin
    if classcb.ItemIndex <= -1 then
    begin
      showmessage('Pls select Class first.');
      edit1.Text:='';
      abort;
    end;
    //以量產SMDDSS 訂單找底廠workplan派工單號，會有問題。如果底廠訂單重複派工單出問題
    with cqsmdd do
    begin
      active:=false;
      Params.Items[0].AsString :=edit1.text;
      active:=true;
      UpdataQuery.Active:=false;
      //檢查R3大底
      updataquery.SQL.Clear;
      updataquery.SQL.Add('select workplans.Codebar from '+main.LIY_DD+'.dbo.workplans workplans,'+main.LIY_DD+'.dbo.workplanss workplanss  ');
      updataquery.SQL.Add('where workplans.WorkID=workplanss.WorkID  ');
      updataquery.SQL.Add('      and workplanss.ddbh='''+fieldbyname('YSBH').AsString+''' and workplans.Size='''+fieldbyname('GJCC').AsString+''' ');
      //showmessage(updataquery.SQL.Text);
      updataquery.active:=true;
      if (recordcount>0) and (updataquery.RecordCount>0) then
      begin
        //ERP條碼
        workplans_barcode:=updataquery.FieldByName('Codebar').AsString+'-';
        if fieldbyname('cts').Value > fieldbyname('OKcts').Value then
        begin
          if query1.Locate('CODEBAR',edit1.text,[]) then
          begin
            query1.Edit;
            query1.FieldByName('newcts').Value:=query1.FieldByName('newcts').Value+1;
            query1.fieldbyname('Totqty').value:=cqsmdd.FieldByName('qty').Value*(cqsmdd.FieldByName('OKCTS').Value+1);
            query1.Post;
          end else
          begin
            query1.Insert;
            query1.fieldbyname('ysbh').value:=cqsmdd.FieldByName('ddbh').Value;
            query1.fieldbyname('size').value:=cqsmdd.FieldByName('xxcc').Value;
            query1.fieldbyname('oldqty').value:=cqsmdd.FieldByName('qty').Value*cqsmdd.FieldByName('OKCTS').Value;
            query1.fieldbyname('OKCTS').value:=cqsmdd.FieldByName('OKCTS').Value;
            query1.FieldByName('CTS').Value:=cqsmdd.FieldByName('CTS').Value;
            query1.FieldByName('CODEBAR').Value:=cqsmdd.FieldByName('CODEBAR').Value;
            query1.fieldbyname('Totqty').value:=cqsmdd.FieldByName('qty').Value*(cqsmdd.FieldByName('OKCTS').Value+1);
            query1.fieldbyname('newcts').value:=1;
            query1.post;
          end;
          //R3 Scan barcode{寫入WorkPlans 和 WorkScan}
          updataquery.active:=false;
          updataquery.sql.Clear;
          UpdataQuery.sql.add('INSERT INTO '+main.LIY_DD+'.dbo.WorkScan ' );
          updataquery.sql.add('VALUES ('+''''+workplans_barcode+''''+',');
          updataquery.sql.add('getdate(),'+''''+'O'+''''+',');
          updataquery.sql.Add('  '''+inttostr(classcb.itemindex)+''''+',');
          updataquery.sql.Add('  '''+main.Edit1.Text+''''+',');
          updataquery.sql.add(inttostr(cqsmdd.fieldbyname('Qty').Value)+',''N'')');
          updataquery.ExecSQL;
          //ERP Scan barcode
          updataquery.active:=false;
          updataquery.SQL.Clear;
          updataquery.sql.Add('insert into SMZL ');
          updataquery.sql.add('(CODEBAR, CTS, DepNO, ScanDate, USERDATE, USERID, YN,SB) ');
          updataquery.sql.add('values('+''''+edit1.Text+''''+',1,');
          updataquery.sql.add('          '''+cqsmdd.fieldbyname('DepNO').AsString+''''+',getdate(),getdate(),' );
          updataquery.sql.add('          '''+main.edit1.Text+''''+','+''''+'1'+''''+',null)');
          updataquery.sql.Add('update smddss ');
          updataquery.sql.add('set okcts=okcts+1 ');
          updataquery.sql.Add('where codebar='+''''+edit1.text+'''');
          //memo1.text:=updataquery.sql.text;
          updataquery.ExecSQL;

          edit1.Text:='';
        end else
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
      active:=false;
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

procedure TScanOut.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //UpdateWorkwhsds();
  action:=cafree;
  scanout:=nil;
end;

procedure TScanOut.FormCreate(Sender: TObject);
begin
  //
  Query1.Active:=true;
  with cqsmdd do
  begin
    Active:=false;
    SQL.clear;
    SQL.Add('select smddss.*,XXGJS.GJCC,smdd.ysbh,SMDD.DepNO  from  smddss ');
    SQL.Add('left join smdd on smddss.ddbh=smdd.ddbh and smddss.gxlb=smdd.gxlb ');
    SQL.Add('left join DDZL on DDZL.DDBH=smdd.YSBH ');
    SQL.Add('left join  XXGJS on DDZL.XieXing=XXGJS.XieXing and XXGJS.GJLB=''101'' and XXGJS.XXCC=smddss.XXCC ');
    SQL.Add('where codebar=:codebar ');
  end;
  //
end;


end.
