unit PurchaseKPI_Supp1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, StdCtrls, DB, DBTables,Comobj;

type
  TPurchaseKPI_Supp = class(TForm)
    Panel1: TPanel;
    DBGridEh12: TDBGridEh;
    SuppQry: TQuery;
    DataSource1: TDataSource;
    SuppQryZSDH: TStringField;
    SuppQryZSJC: TStringField;
    SuppQryYN: TStringField;
    SuppQryPayZSDH: TStringField;
    SuppQryPayZSJC: TStringField;
    SuppQryPayYN: TStringField;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PurchaseKPI_Supp: TPurchaseKPI_Supp;

implementation
  uses main1;
{$R *.dfm}

procedure TPurchaseKPI_Supp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action:=CaFree;
end;

procedure TPurchaseKPI_Supp.FormDestroy(Sender: TObject);
begin
  PurchaseKPI_Supp:=nil;
end;

procedure TPurchaseKPI_Supp.Button1Click(Sender: TObject);
begin
   with SuppQry do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select ZSZL.ZSDH,ZSZL.ZSJC,ZSZL.YN ,IsNull(Pay.ZSDH,ZSZl.ZSDH) as PayZSDH,IsNull(Pay.ZSJC,ZSZL.ZSJC) as PayZSJC,case when IsNull(Pay.YN,ZSZL.YN)=''1'' then ''TW'' else ''VN'' end as PayYN from ZSZL');
     SQL.Add('left join ZSZL_DEV on ZSZL_DEV.ZSDH=ZSZL.ZSDH ');
     SQL.Add('left join ZSZL Pay on ZSZL_DEV.ZSDH_TW=Pay.ZSDH ');
     SQL.Add('where  ZSZL_DEV.GSBH='''+main.Edit2.Text+'''  ');
     if Edit1.Text<>'' then
     SQL.Add('and ZSZL_DEV.ZSDH like '''+Edit1.Text+'%'' ');
     if Edit2.Text<>'' then
     SQL.Add('and ZSZL.ZSJC like ''%'+Edit1.Text+'%'' ');
     Active:=true;
   end;
end;

procedure TPurchaseKPI_Supp.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if  SuppQry.active  then
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
          for   i:=0  to  SuppQry.fieldcount-1   do
          begin
            eclApp.Cells(1,i+1):=SuppQry.fields[i].FieldName;
          end;

          SuppQry.First;
          j:=2;
          while   not   SuppQry.Eof   do
          begin
              for   i:=0   to  SuppQry.fieldcount-1  do
              begin
                eclApp.Cells(j,i+1):=SuppQry.Fields[i].Value;
              end;
            SuppQry.Next;
            inc(j);
          end;
          eclapp.columns.autofit;
          showmessage('Succeed');
          eclApp.Visible:=True;
      except
          on   F:Exception   do
            showmessage(F.Message);
      end;
    end;

end;

end.
