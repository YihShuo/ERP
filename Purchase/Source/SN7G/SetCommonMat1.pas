unit SetCommonMat1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Buttons, DBTables, StdCtrls, Grids, DBGrids, ExtCtrls,comobj,
  Menus, GridsEh, DBGridEh;

type
  TSetCommonMat = class(TForm)
    Panel2: TPanel;
    DBGrid1: TDBGridEh;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    DS1: TDataSource;
    Query1: TQuery;
    UpSQL1: TUpdateSQL;
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    bbt5: TBitBtn;
    bbt6: TBitBtn;
    Query1USERDate: TDateTimeField;
    Query1USERID: TStringField;
    Query1YN: TStringField;
    Query1GSBH: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1Remark: TStringField;
    Query1DWBH: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure bbt6Click(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure BB3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SetCommonMat: TSetCommonMat;

implementation

uses main1, SetMaterial1;

{$R *.dfm}

procedure TSetCommonMat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action:=Cafree;
end;

procedure TSetCommonMat.BB1Click(Sender: TObject);
begin
  panel3.Visible:=true;
end;


procedure TSetCommonMat.BB2Click(Sender: TObject);
begin
  with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
  end;
  bb5.enabled:=true;
  bb6.enabled:=true;
  DBGrid1.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TSetCommonMat.BB4Click(Sender: TObject);
begin
  with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    query1.edit;
  end;
  bb5.enabled:=true;
  bb6.enabled:=true;
end;

procedure TSetCommonMat.BB5Click(Sender: TObject);
var i:integer;
begin
  try
    query1.first;
    for i:=1 to query1.RecordCount do
    begin
      case query1.updatestatus of
        usinserted:
          begin
            if query1.fieldbyname('CLBH').isnull then
            begin
              query1.delete;
            end else
            begin
               query1.edit;
               query1.FieldByName('GSBH').Value :=main.Edit2.text;
               query1.FieldByName('USERDATE').Value:=date;
               query1.FieldByName('USERID').Value:=main.edit1.text;
               Query1.FieldByName('YN').Value:='1';
               upsql1.apply(ukinsert);
            end;
          end;
        usmodified:
          begin
             if query1.fieldbyname('YN').value='0' then
             begin
               upsql1.Apply(ukdelete);
             end else
             begin
               query1.edit;
               query1.FieldByName('USERDATE').Value:=date;
               query1.FieldByName('USERID').Value:=main.edit1.text;
               upsql1.apply(ukmodify);
             end;
          end;
      end;
      query1.next;
    end;
    query1.active:=false;
    query1.cachedupdates:=false;
    query1.requestlive:=false;
    query1.active:=true;
    bb5.enabled:=false;
    bb6.enabled:=false;
    DBGrid1.columns[0].ButtonStyle:=cbsNone;
  except
  Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
end;

end;

procedure TSetCommonMat.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    sql.clear;
    sql.add(' Select CGNoNeedUseStock.*,YWPM,DWBH ');
    sql.Add(' From CGNoNeedUseStock ');
    sql.Add(' Left join CLZL on CGNoNeedUseStock.CLBH = CLZL.CLDH ');
    sql.Add(' Where 1=1 ');
    if edit1.Text <> '' then
      sql.add(' and CLBH like '''+edit1.Text+'%'' ');
    if edit2.Text <> '' then
      sql.add(' and YWPM like ''%'+edit2.Text+'%'' ');
    sql.add(' Order by CLBH');
    active:=true;
  end;
  panel3.visible:=false;
  bb2.enabled:=true;
  bb3.enabled:=true;
  bbt6.Enabled:=true;
end;

procedure TSetCommonMat.BB6Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.enabled:=false;
  DBGrid1.columns[0].ButtonStyle:=cbsNone;
end;


procedure TSetCommonMat.bbt6Click(Sender: TObject);
var
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
      showmessage('Succeed.');
      eclApp.Visible:=True;

      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
  end;
end;

procedure TSetCommonMat.FormDestroy(Sender: TObject);
begin
  SetCommonMat:=nil;
end;

procedure TSetCommonMat.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

  if query1.FieldByName('YN').value='0' then
  begin
    dbgrid1.canvas.font.color:=clred;
    //dbgrid4.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;


procedure TSetCommonMat.DBGrid1EditButtonClick(Sender: TObject);
begin
  if DBGrid1.selectedfield.fieldname='CLBH' then
  begin
    SetMaterial:=TSetMaterial.create(self);
    SetMaterial.show;
  end;
end;

procedure TSetCommonMat.BB3Click(Sender: TObject);
begin
  with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  bb5.enabled:=true;
  bb6.enabled:=true;
  DBGrid1.columns[0].ButtonStyle:=cbsNone;
end;

end.
