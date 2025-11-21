unit YWCPKT1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls;

type
  TYWCPKTForm = class(TForm)
    Fy: TQuery;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  YWCPKTForm: TYWCPKTForm;
  textfilevar:textfile;
  tempstr:string;
  a,susername,spassword,sline,pp:string;
implementation

{$R *.dfm}





procedure TYWCPKTForm.FormShow(Sender: TObject);
begin



  with fy do
  begin
  active:=false;
  sql.clear;
  sql.Add('IF NOT EXISTS (SELECT * from ywcp_kt where QDate= (convert(varchar(10), GETDATE(),102)))');                        //32033表示:因為目前億春Database每天的總庫存數與客人那邊的資料有32033雙的差異,所以還是以客人那邊的為主
  sql.Add('Insert into ywcp_Kt(QDate,Qty,UserID,UserDate) select convert(varchar(10), GETDATE(),102),sum(isnull(ywcp.Qty,0))+32033,''ERP'', GETDATE() from ywcp');
  sql.Add('left join YWDD  with (nolock) on YWDD.DDBH=YWCP.DDBH');
  sql.Add('left join DDZL  with (nolock) on YWDD.YSBH=DDZl.DDBH');
  sql.Add('left join LBZLS  with (nolock) on LBZLS.LB=''06'' and LBZLS.LBDH=DDZL.DDGB');
  sql.Add('left join KFZL  with (nolock) on KFZL.KFDH=DDZL.KHBH');
  sql.Add('where (YWCP.CARTONBAR like ''Y%'') and YWCP.SB=''1'' and ddzl.ddbh<>''Y1402-0093'' ');//業務單位說Y1402-0093,不算在總庫存量內

  fy.ExecSQL();
  end;
   Application.Terminate();
end;

end.
