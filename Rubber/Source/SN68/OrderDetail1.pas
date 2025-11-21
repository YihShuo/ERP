unit OrderDetail1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, DBTables, ExtCtrls, StdCtrls;

type
  TOrderDetail = class(TForm)
    ScanQry: TQuery;
    DS: TDataSource;
    DBGridEh1: TDBGridEh;
    ScanQryprono: TFloatField;
    ScanQrycodebar: TStringField;
    ScanQryscandate: TDateTimeField;
    ScanQryInOut: TStringField;
    ScanQryclass: TStringField;
    ScanQryUserid: TStringField;
    ScanQryqty: TIntegerField;
    ScanQryyn: TStringField;
    ScanQryCa: TStringField;
    ScanQryMJBH: TStringField;
    ScanQryEnglishName: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    Size:string;
    SCANDate1:string;
    SCANDate2:string;
    ScanIorO:string;
    CodeBar:string;
    { Public declarations }
    procedure ScaninDetailData();
  end;

var
  OrderDetail: TOrderDetail;

implementation
  uses DailyScanInStock1, main1, FunUnit;
{$R *.dfm}

procedure TOrderDetail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TOrderDetail.FormDestroy(Sender: TObject);
begin
  OrderDetail:=nil;
end;

procedure TOrderDetail.ScaninDetailData();
begin

  with ScanQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select case when workscan.Class=0 then ''Ca 1''  ');
    SQL.Add('            when workscan.Class=1 then ''Ca 2''  ');
    SQL.Add('            when workscan.Class=2 then ''Ca 3'' end as Ca, ');
    SQL.Add('       workscan.MJBH,colorclass.EnglishName,  workscan.* ');
    SQL.Add('from '+main.LIY_DD+'.dbo.workscan workscan');
    SQL.Add('left join '+main.LIY_DD+'.dbo.colorclass	colorclass  on colorclass.ColorNo=workscan.ColorNo ');
    SQL.Add('where workscan.InOut='''+ScanIorO+'''  and workscan.scandate between '''+FormatDateTime('YYYY/MM/DD',strtodate(SCANDate1))+' 07:00:00''  and '''+FormatDateTime('YYYY/MM/DD',strtodate(SCANDate2))+' 07:00:00''  ');
    SQL.Add('      and workscan.mjbh=:MJBH ');
    SQL.Add('      and colorclass.EnglishName=:EnglishName ');
    SQL.Add('      and workscan.Class=:CA ');
//    SQL.Add('      and workscan.SIZE='''+SIZE+'''');
    if CodeBar<>'' then
    SQL.Add(' and  workscan.codebar like ''%'+CodeBar+'%'' ');
    SQL.Add('order by workscan.codebar');
    //FuncObj.WriteErrorLog(sql.Text);
    //showmessage(SQL.Text);
    Active:=true;
  end;

end;

end.
