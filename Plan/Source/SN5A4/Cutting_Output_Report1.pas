unit Cutting_Output_Report1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, DB, DBTables, GridsEh, DBGridEh, Comobj,
  Menus, PrnDbgeh;
type
  TCutting_Output_Report = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Label10: TLabel;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit1: TEdit;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    DBGrid2: TDBGridEh;
    PrintDBGridEh1: TPrintDBGridEh;
    PopupMenu1: TPopupMenu;
    NN2: TMenuItem;
    QTemp: TQuery;
    Query1: TQuery;
    DS1: TDataSource;
    query2: TQuery;
    DS2: TDataSource;
    Query3: TQuery;
    DS3: TDataSource;
    Dbgrid1: TDBGridEh;
    Query1DLNO: TStringField;
    Query1Plandate: TStringField;
    Query1DepName: TStringField;
    Query1CutNum: TIntegerField;
    Query1okCutNum: TIntegerField;
    Dbgrid3: TDBGridEh;
    query2DLNO: TStringField;
    query2ZLBH: TStringField;
    query2BWBH: TStringField;
    query2SIZE: TStringField;
    query2CLBH: TStringField;
    query2Qty: TIntegerField;
    query2XXCC: TStringField;
    query2CutNum: TIntegerField;
    query2okCutNum: TIntegerField;
    query2USERID: TStringField;
    query2USERDATE: TDateTimeField;
    query2ScanUser: TStringField;
    query2ScanDate: TDateTimeField;
    query2YN: TStringField;
    query2DAOMH: TStringField;
    query2xxcc_1: TStringField;
    query2zwsm: TStringField;
    query2ywsm: TStringField;
    Query3SIZE: TStringField;
    Query3Qty: TIntegerField;
    Query3DDBH: TStringField;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Dbgrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Dbgrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
    procedure NN2Click(Sender: TObject);
  private
    { Private declarations }
  procedure ExportExcel(Query:TQuery);
  public
    { Public declarations }
  end;

var
  Cutting_Output_Report: TCutting_Output_Report;
  NDate:TDate;
implementation

{$R *.dfm}

procedure TCutting_Output_Report.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;
//

procedure TCutting_Output_Report.FormCreate(Sender: TObject);
begin
with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').value;
    active:=true;
    active:=false;
  end;
DTP1.Date:=NDate-7;
DTP2.date:=NDate;
end;
//

procedure TCutting_Output_Report.ExportExcel(Query:TQuery);
var eclApp,WorkBook:olevariant;
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
          for  i:=0  to  Query.fieldcount-1   do
          begin
            eclApp.Cells(1,i+1):=Query.fields[i].FieldName;
          end;
          Query.First;
          j:=2;
          while   not   Query.Eof   do
          begin
            for   i:=0   to  Query.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=Query.Fields[i].Value;
            end;
            Query.Next;
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
//

procedure TCutting_Output_Report.FormDestroy(Sender: TObject);
begin
Cutting_Output_Report:=nil;
end;
//

procedure TCutting_Output_Report.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('SELECT CutDispatch.DLNO,convert(varchar,CutDispatch.plandate,111) AS Plandate, BDepartment.DepName,CutDispatchS.CutNum,CutDispatchS.okCutNum');
    SQL.Add('from CutDispatch');
    SQL.Add('Left join  ( ');
    SQL.Add('select CutDispatchS.DLNO,Sum(CutNum) as CutNum,SUM(okCutNum) as okCutNum from CutDispatchS');
    SQL.Add('INNER JOIN CutDispatch on CutDispatchS.DLNO=CutDispatch.DLNO');
    SQL.Add('LEFT JOIN BDepartment ON BDepartment.ID = CutDispatch.DepID');
    SQL.Add('where CutDispatch.PlanDate between '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''' ');
    if (Edit1.Text<>'') then
    SQL.Add('    and BDepartment.DepName like ''%'+Edit1.Text+'%'' ');
    SQL.Add('Group by CutDispatchS.DLNO ) CutDispatchS on CutDispatchS.DLNO=CutDispatch.DLNO');
    SQL.Add('LEFT JOIN BDepartment ON BDepartment.ID = CutDispatch.DepID');
    SQL.Add('where CutDispatch.PlanDate between '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''' ');
    SQL.Add('    and BDepartment.DepName like ''%'+Edit1.Text+'%'' ');
    Active:=true;
    query2.Active:=true;
    query3.Active:=true;
  end;
end;
//

procedure TCutting_Output_Report.Dbgrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin

  if (query1.FieldByName('CutNum').AsInteger>0) and (query1.FieldByName('CutNum').AsInteger <= query1.FieldByName('okCutNum').AsInteger) then
  begin
    DBGrid1.Canvas.Font.Color := clGreen;
    DBGrid1.DefaultDrawColumnCell(Rect, Datacol, Column, State);
  end;
end;
//

procedure TCutting_Output_Report.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (query2.FieldByName('CutNum').AsInteger>0) and (query2.FieldByName('CutNum').AsInteger <= query2.FieldByName('okCutNum').AsInteger) then
  begin
    DBGrid2.Canvas.Font.Color := clGreen;
    DBGrid2.DefaultDrawColumnCell(Rect, Datacol, Column, State);
  end;
 end;
//

procedure TCutting_Output_Report.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (query2.FieldByName('CutNum').AsInteger>0) and (query2.FieldByName('CutNum').AsInteger <= query2.FieldByName('okCutNum').AsInteger) then
  begin
    DBGrid3.Canvas.Font.Color := clGreen;
    DBGrid3.DefaultDrawColumnCell(Rect, Datacol, Column, State);
  end;
 end;
//
procedure TCutting_Output_Report.Button2Click(Sender: TObject);
begin
  ExportExcel(Query1);
end;
//

procedure TCutting_Output_Report.NN2Click(Sender: TObject);
begin
  ExportExcel(Query2);
end;

end.
//
