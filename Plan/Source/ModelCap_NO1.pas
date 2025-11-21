unit ModelCap_NO1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls,
  comobj;

type
  TModelCap_NO = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Label2: TLabel;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1XieXing: TStringField;
    Query1XieMing: TStringField;
    Query1DAOMH: TStringField;
    Query1KFJC: TStringField;
    Query1GXLB: TStringField;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ModelCap_NO: TModelCap_NO;

implementation

uses main1;

{$R *.dfm}

procedure TModelCap_NO.Button1Click(Sender: TObject);
begin

with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct XXZL.XieXing,max(XXZL.XieMing) as XieMing,max(XXZL.DAOMH) as DAOMH,KFZL.KFJC,SCBBS.GXLB ');
    sql.add('from SCBBS');
    sql.add('left join SCBB on SCBB.ProNO=SCBBS.PRONO ');
    sql.add('left join SCGXDY on SCGXDY.GXLB=SCBBS.GXLB ');
    sql.add('left join DDZL on SCBBS.SCBH=DDZL.ZLBH ');
    sql.add('left join XXZL on XXZl.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao ');
    sql.add('left join KFZL on KFZL.KFDH=XXZL.KHDH ');
    sql.add('where not exists(select SCXXCL.XieXing from SCXXCL where SCXXCL.XieXing=XXZl.XieXing and SCXXCL.GXLB=SCBBS.GXLB)');
    sql.add('      and convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
    sql.add('         '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''' ) ;
    sql.add('      and SCGXDY.GX  in ('+''''+'C'+''''+','+''''+'S'+''''+','+''''+'A'+''''+')');
    sql.add('group by XXZL.XieXing,KFZL.KFJC,SCBBS.GXLB');
    sql.add('order by KFZL.KFJC,XXZL.XieXing');
    active:=true;
  end;

end;

procedure TModelCap_NO.FormCreate(Sender: TObject);
begin
DTP1.Date:=date-7;
DTP2.date:=Date;
end;

procedure TModelCap_NO.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
 begin
  if  query1.active  then
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
        for   i:=0   to   query1.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
          end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
          begin
            for   i:=0   to  query1.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=query1.Fields[i].Value;
            end;
          query1.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;


end;

procedure TModelCap_NO.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=Cafree;
end;

procedure TModelCap_NO.FormDestroy(Sender: TObject);
begin
modelcap_no:=nil;
end;

procedure TModelCap_NO.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
