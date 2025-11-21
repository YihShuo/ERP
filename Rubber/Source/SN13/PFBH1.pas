unit PFBH1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls,comobj;

type
  TPFBH = class(TForm)
    Panel1: TPanel;
    Label18: TLabel;
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
    bbt6: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    Query1PFBH1: TStringField;
    Query1PFBH2: TStringField;
    Query1YN: TStringField;
    DataSource1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PFBH: TPFBH;

implementation

uses main1;

{$R *.dfm}

procedure TPFBH.BB1Click(Sender: TObject);
begin
  Panel2.Visible:=true;
end;

procedure TPFBH.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select * from '+main.LIY_DD+'.dbo.PFMAP PFMAP');
    sql.add('where PFBH1 like '''+'%'+ edit1.Text+'%'+'''');
    sql.add('and PFBH2 like '''+'%'+ edit2.Text+'%'+'''');
    sql.add('order by PFBH1');
    active:=true;
  end;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
end;

procedure TPFBH.BBT1Click(Sender: TObject);
begin
  Query1.First;
end;

procedure TPFBH.BBT2Click(Sender: TObject);
begin
  Query1.Prior;
end;

procedure TPFBH.BBT3Click(Sender: TObject);
begin
  Query1.Next;
end;

procedure TPFBH.BBT4Click(Sender: TObject);
begin
  Query1.Last;
end;

procedure TPFBH.BB7Click(Sender: TObject);
begin
  Close;
end;

procedure TPFBH.BB2Click(Sender: TObject);
begin
  with query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TPFBH.BB3Click(Sender: TObject);
begin
  with query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').value:='0';
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TPFBH.BB4Click(Sender: TObject);
begin
  with query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TPFBH.BB5Click(Sender: TObject);
var i: integer;
begin
//try
    query1.first;
    for i:=1 to query1.RecordCount do
    begin
      case query1.updatestatus of
        usinserted:
        begin
          if ((query1.FieldByName('PFBH1').IsNull) or (query1.FieldByName('PFBH2').IsNull)) then
          begin
            showmessage('PFBH1 or PFBH2 is empty!');
            abort;
          end else
          begin
            query1.Edit;
            UpdateSQL1.Apply(ukinsert);
          end;
        end;
        usmodified:
        begin
          if (query1.fieldbyname('YN').value='0') then
          begin
            UpdateSQL1.apply(ukdelete);
          end  else
          begin
            query1.edit;
            UpdateSQL1.apply(ukmodify);
          end;
        end;
      end;
      query1.next;
    end;
    query1.active:=false;
    query1.cachedupdates:=false;
    query1.requestlive:=false;
    query1.active:=true;
    BB5.enabled:=false;
    BB6.enabled:=false;

{except
  Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
end; }
end;

procedure TPFBH.BB6Click(Sender: TObject);
begin
   with query1 do
   begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
   end;
   BB5.Enabled:=false;
   BB6.Enabled:=false;
end;

procedure TPFBH.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
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

procedure TPFBH.FormDestroy(Sender: TObject);
begin
  PFBH:=Nil;
end;

procedure TPFBH.FormCreate(Sender: TObject);
begin
  Panel2.Visible:=false;
end;

procedure TPFBH.DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if (query1.FieldByName('YN').Value='0') then
  begin
    dbgrideh1.Canvas.Font.Color:=clred;
    dbgrideh1.DefaultDrawColumnCell(rect,datacol,column,state);
  end;
end;

procedure TPFBH.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

procedure TPFBH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

end.
