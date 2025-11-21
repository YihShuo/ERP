unit ScanPerHourPPHDet1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, DBTables, Comobj, Menus;

type
  TScanPerHourPPHDet = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1SMNO: TFloatField;
    Query1YSBH: TStringField;
    Query1GXLB: TStringField;
    Query1ScanDate: TDateTimeField;
    Query1Qty: TIntegerField;
    Query1USERID: TStringField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanPerHourPPHDet: TScanPerHourPPHDet;

implementation
  uses ScanPerHourPPH1,FunUnit;
{$R *.dfm}

procedure TScanPerHourPPHDet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TScanPerHourPPHDet.FormDestroy(Sender: TObject);
begin
  ScanPerHourPPHDet:=nil;
end;

procedure TScanPerHourPPHDet.FormCreate(Sender: TObject);
begin
  //
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select SMZL.SMNO,SMDD.YSBH,SMDDSS.GXLB,SMZL.ScanDate,SMZL.CTS*SMDDSS.Qty as Qty,SMZL.USERID    ');
    SQL.Add('from (select SMNO,CODEBAR,CTS,DepNO,ScanDate,USERID from SMZL where SMZL.ScanDate>='''+formatdatetime('yyyy/MM/dd',Date())+' 00:00:00'' union all select SMNO,CODEBAR,CTS,DepNO,ScanDate,USERID from SMZLOld) SMZL ');
    SQL.Add('left join SMDDSS on SMDDSS.CodeBar=SMZL.CodeBar');
    SQL.Add('left join SMDD on SMDD.DDBH=SMDDSS.DDBH and SMDD.GXLB=SMDDSS.GXLB ');
    SQL.Add('left join BDepartment on Bdepartment.ID=SMZL.DepNo');
    SQL.Add('where  Convert(smalldatetime,convert(varchar,SMZL.ScanDate,111)) ='''+ScanPerHourPPH.HourRep.FieldByName('ScanDate').AsString+''' ');
    SQL.Add('      and SMDDSS.GXLB='''+ScanPerHourPPH.HourRep.FieldByName('GXLB').AsString+'''');
    SQL.Add('      and SMDDSS.DDBH like '''+ScanPerHourPPH.HourRep.FieldByName('YSBH').AsString+'%'' ');
    SQL.Add('      and BDepartment.DepName = '''+ScanPerHourPPH.HourRep.FieldByName('DepName').AsString+''' ');
    SQL.Add('order by  SMZL.SCANDate ');
    Active:=true;
  end;
  //
end;

procedure TScanPerHourPPHDet.N1Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  Query1.active  then
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
        for   i:=0   to   Query1.fieldcount-1   do
        begin
          eclApp.Cells(1,i+1):=Query1.fields[i].FieldName;
        end;
        Query1.First;
        j:=2;
        while   not   Query1.Eof   do
        begin
          for   i:=0   to  Query1.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=Query1.Fields[i].Value;
          end;
          Query1.Next;
          inc(j);
        end;
         //add outline
        for i:=1 to 4 do
        begin
          eclApp.range[eclApp.cells[1,1],eclApp.cells[j-1,11]].borders[i].linestyle:=1;
        end;
       eclapp.columns.autofit;
       showmessage('Succeed');
       eclApp.Visible:=True;
    except
    on  F:Exception   do
      showmessage(F.Message);
    end;
  end;

end;

end.

