unit CostSheet_CBD1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls, Comobj;

type
  TCostSheet_CBD = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    Panel2: TPanel;
    Order_LB: TLabel;
    ABC_LB: TLabel;
    Order_ED: TEdit;
    Button1: TButton;
    Article_ED: TEdit;
    DB1: TDBGridEh;
    UpSQL1: TUpdateSQL;
    Qry1: TQuery;
    DS1: TDataSource;
    TmpQry: TQuery;
    Qry1DDBH: TStringField;
    Qry1CBD_Mat: TFloatField;
    Qry1CBD_Lab: TFloatField;
    Qry1Num_Lab: TIntegerField;
    Qry1UserID: TStringField;
    Qry1YN: TStringField;
    Qry1ARTICLE: TStringField;
    Qry1BUYNO: TStringField;
    bbt6: TBitBtn;
    bbt7: TBitBtn;
    OpenDialog: TOpenDialog;
    Qry1UserDate: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure bbt7Click(Sender: TObject);
    procedure DB1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CostSheet_CBD: TCostSheet_CBD;

implementation

uses main1, FunUnit;
  
{$R *.dfm}

procedure TCostSheet_CBD.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TCostSheet_CBD.FormDestroy(Sender: TObject);
begin
  CostSheet_CBD:=nil;
end;

procedure TCostSheet_CBD.Button1Click(Sender: TObject);
begin
  with Qry1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select DDZL_CBD_Cost.*,DDZL.ARTICLE,DDZL.BUYNO ');
    SQL.Add('from LIY_TYXUAN.dbo.DDZL_CBD_Cost DDZL_CBD_Cost  ');
    SQL.Add('Left join DDZL on DDZL.DDBH=DDZL_CBD_Cost.DDBH  ');
    SQL.Add('where 1=1 ');
    if Order_ED.Text<>'' then
    SQL.Add(' and DDZL.DDBH like '''+Order_ED.Text+'%'' ');
    if Article_ED.Text<>'' then
    SQL.Add(' and DDZL.Article like ''%'+Article_ED.Text+'%'' ');
    SQL.Add('Order by DDZL.DDBH ');
    Active:=true;
  end;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  bbt6.Enabled:=true;
end;

procedure TCostSheet_CBD.BB2Click(Sender: TObject);
begin
  with Qry1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TCostSheet_CBD.BB3Click(Sender: TObject);
begin
  with Qry1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TCostSheet_CBD.BB4Click(Sender: TObject);
begin
  with Qry1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TCostSheet_CBD.BB6Click(Sender: TObject);
begin
  with Qry1 do
  begin
    requestlive:=false;
    cachedupdates:=false;
    active:=false;
    active:=true;
  end;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
end;

procedure TCostSheet_CBD.BB5Click(Sender: TObject);
var i:integer;
begin
 try
  Qry1.first;
  for i:=1 to Qry1.RecordCount do
  begin
      case Qry1.updatestatus of
        usinserted:
          begin
            Qry1.Edit;
            Qry1.FieldByName('USERID').Value:=main.edit1.text;
            Qry1.FieldByName('USERDATE').Value:=Date();
            Qry1.FieldByName('YN').Value:='1';
            upSQL1.apply(ukinsert);
          end;
        usmodified:
          begin
            if (Qry1.FieldByName('YN').value = 0) then
            begin
              UpSQL1.Apply(ukDelete);
            end else
            begin
              Qry1.Edit;
              Qry1.FieldByName('USERID').Value:=main.edit1.text;
              Qry1.FieldByName('USERDATE').Value:=Date();
              upSQL1.apply(ukmodify);
            end;
          end;
    end;
    Qry1.Next;
   end;
 except
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
 end;
  Qry1.active:=false;
  Qry1.cachedupdates:=false;
  Qry1.requestlive:=false;
  Qry1.active:=true;
  BB5.enabled:=false;
  BB6.enabled:=false;
end;

procedure TCostSheet_CBD.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  Qry1.active  then
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
        for  i:=0  to  Qry1.fieldcount-1   do
        begin
          eclApp.Cells(1,i+1):=Qry1.fields[i].FieldName;
        end;

        Qry1.First;
        j:=2;
        while   not   Qry1.Eof   do
        begin
          for   i:=0   to  Qry1.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=Qry1.Fields[i].Value;
          end;
          Qry1.Next;
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

procedure TCostSheet_CBD.bbt7Click(Sender: TObject);
var
  ExcelApp: Variant;
  DDBH,CBD_Mat,CBD_Lab,Num_Lab : String;
  index:integer;
begin
  if OpenDialog.Execute then
  begin

    ExcelApp:=CreateOleObject('Excel.Application');
    ExcelApp.WorkBooks.Open(OpenDialog.FileName);
    ExcelApp.WorkSheets[1].Activate;
    index:=2;
    DDBH:=ExcelApp.Cells[index,1].Value;
    CBD_Mat:=ExcelApp.Cells[index,3].Value;
    CBD_Lab:=ExcelApp.Cells[index,4].Value;
    Num_Lab:=ExcelApp.Cells[index,5].Value;
    if trim(CBD_Mat)='' then CBD_Mat:='1';
    if trim(CBD_Lab)='' then CBD_Lab:='1';
    if trim(Num_Lab)='' then Num_Lab:='1';
    while ((trim(DDBH)<>''))  do
    begin
      with TmpQry do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('IF NOT EXISTS (Select DDBH from LIY_TYXUAN.dbo.DDZL_CBD_Cost where DDBH='''+DDBH+''')');
        SQL.Add('Begin');
        SQL.Add('  Insert into LIY_TYXUAN.dbo.DDZL_CBD_Cost (DDBH, CBD_Mat, CBD_Lab, Num_Lab, UserID, UserDate, YN) Values ('''+DDBH+''','+CBD_Mat+','+CBD_Lab+','+Num_Lab+','''+main.Edit1.Text+''',GetDate(),''1'')');
        SQL.Add('End Else');
        SQL.Add('Begin');
        SQL.Add('  Update LIY_TYXUAN.dbo.DDZL_CBD_Cost Set CBD_Mat='+CBD_Mat+',CBD_Lab='+CBD_Lab+',Num_Lab='+Num_Lab+',UserID='''+main.Edit1.Text+''' ,UserDate=GetDate() where DDBH='''+DDBH+''' ');
        SQL.Add('End');
        FuncObj.WriteErrorLog(SQL.Text);
        ExecSQL();
      end;
      index:=index+1;
      DDBH:=ExcelApp.Cells[index,1].Value;
      CBD_Mat:=ExcelApp.Cells[index,3].Value;
      CBD_Lab:=ExcelApp.Cells[index,4].Value;
      Num_Lab:=ExcelApp.Cells[index,5].Value;
      if trim(CBD_Mat)='' then CBD_Mat:='1';
      if trim(CBD_Lab)='' then CBD_Lab:='1';
      if trim(Num_Lab)='' then Num_Lab:='1';
    end;

    ExcelApp.WorkBooks.Close;
    ExcelApp.Quit;
    Showmessage('Finish');
  end;

end;

procedure TCostSheet_CBD.DB1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if Qry1.FieldByName('YN').value='0' then
  begin
    DB1.canvas.font.color:=clred;
    DB1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

end.
