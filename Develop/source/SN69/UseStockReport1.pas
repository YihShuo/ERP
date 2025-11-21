unit UseStockReport1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids, Mask, DBCtrls, Buttons,
  ExtCtrls, DB, DBTables, GridsEh, DBGridEh, Menus, comobj, ADODB, DBGridEhImpExp, ShellAPI;

type
  TUseStockReport = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Query1: TQuery;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Button1: TButton;
    Button2: TButton;
    dtp4: TDateTimePicker;
    Label9: TLabel;
    dtp3: TDateTimePicker;
    userdatecheck: TCheckBox;
    temp: TQuery;
    Query1gsbh: TStringField;
    Query1clbh: TStringField;
    Query1PurQty: TCurrencyField;
    Query1StockQty: TCurrencyField;
    Query1ywpm: TStringField;
    Query1zwpm: TStringField;
    Query1dwbh: TStringField;
    Query1dwzwsm: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    NDate:TDate;  
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UseStockReport: TUseStockReport;

implementation

uses main1;

{$R *.dfm}

procedure TUseStockReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action:=caFree;
end;

procedure TUseStockReport.FormDestroy(Sender: TObject);
begin
  UseStockReport:=nil;
end;

procedure TUseStockReport.FormCreate(Sender: TObject);
begin
 with temp do
  begin
    Active:=false;
    Sql.Clear;
    Sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
  end;
  DTP3.Date:=Date()-30;
  DTP4.Date:=Date();
end;

procedure TUseStockReport.Button1Click(Sender: TObject);
begin
 with query1 do
       begin
       active:=false;
       sql.Clear;
       SQL.Add('select cgzl.gsbh,cgzl.clbh,isnull(cgzl.PurQty,0) PurQty,isnull(cgzl.StockQty,0) StockQty,clzl.ywpm,clzl.zwpm,clzl.dwbh,clzl.dwzwsm from (');
       SQL.Add('select cgzl.gsbh,cgzls.clbh,sum(cgzls.qty) PurQty,cgkcuse.Qty StockQty  from cgzl');
       SQL.Add('left join cgzls on cgzl.cgno=cgzls.cgno');
       SQL.Add('full outer join (select cgkcuse.clbh,sum(qty) as qty  from cgkcuse');
       SQL.Add('			where gsbh='''+main.edit2.text+'''');
        if userdatecheck.Checked then
        begin
          SQL.Add(' and cgkcuse.userdate between');
           sql.add(' convert(datetime,'''+formatdatetime('yyyy-MM-dd',DTP3.Date)+''')');
           sql.add(' and  ');
           sql.add(' convert(datetime,'''+formatdatetime('yyyy-MM-dd',DTP4.Date)+''')');
         end;
       SQL.Add('			group by cgkcuse.clbh)cgkcuse on cgkcuse.clbh=cgzls.clbh');
       SQL.Add('where cgzl.gsbh='''+main.edit2.text+'''');
        if userdatecheck.Checked then
        begin
          SQL.Add(' and cgzl.userdate between');
           sql.add(' convert(datetime,'''+formatdatetime('yyyy-MM-dd',DTP3.Date)+''')');
           sql.add(' and  ');
           sql.add(' convert(datetime,'''+formatdatetime('yyyy-MM-dd',DTP4.Date)+''')');
        end;
       SQL.Add('group by cgzl.gsbh,cgzls.clbh,cgkcuse.Qty)cgzl');
       SQL.Add('left join clzl on clzl.cldh=cgzl.clbh where cgzl.clbh is not null');
       active:=true;
      end;
end;
procedure TUseStockReport.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
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
      showmessage('Succeed');
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

end.
