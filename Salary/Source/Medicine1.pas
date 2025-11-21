unit Medicine1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls,comobj;

type
  TMedicine = class(TForm)
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
    Panel3: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DBGrid1: TDBGrid;
    SaveDialog1: TSaveDialog;
    DS1: TDataSource;
    Query1: TQuery;
    UpSQL1: TUpdateSQL;
    Query1ID: TStringField;
    Query1MedName: TStringField;
    Query1Unit: TStringField;
    Query1Qty: TFloatField;
    Query1Memo: TStringField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    Query1MedPrice: TFloatField;
    Query1MedAccount: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Medicine: TMedicine;

implementation

uses main1;

{$R *.dfm}

procedure TMedicine.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if query1.requestlive then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
   action:=Cafree;
end;

procedure TMedicine.BB1Click(Sender: TObject);
begin
Panel3.Visible:=true;
edit1.SetFocus;
end;

procedure TMedicine.Button1Click(Sender: TObject);
begin
with Query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('select * ,Qty*MedPrice as MedAccount  from Rsmedicine');
    sql.add('where MedName like ');
    sql.add(''''+'%'+edit1.text+'%'+'''');
    sql.add('order by ID');
    active:=true;
  end;
panel3.visible:=false;
bb2.enabled:=true;
bb3.enabled:=true;
bb4.enabled:=true;
bb5.enabled:=false;
bb6.enabled:=false;
bb7.enabled:=true;
bbt1.enabled:=true;
bbt2.enabled:=true;
bbt3.enabled:=true;
bbt4.enabled:=true;
bbt5.enabled:=true;
bbt6.enabled:=true;
end;

procedure TMedicine.BB2Click(Sender: TObject);
begin
with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
  end;
bb5.enabled:=true;
bb6.enabled:=true;
end;

procedure TMedicine.BB4Click(Sender: TObject);
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

procedure TMedicine.BB5Click(Sender: TObject);
var i:integer;
begin
with query1 do
  begin
    first;
    while not eof do
      begin
        if fieldbyname('MedName').IsNull then
          begin
            showmessage('Name can not be empty.');
            abort;
          end; 
        if fieldbyname('Unit').IsNull then
          begin
            showmessage('Unit can not be empty.');
            abort;
          end;   
        if fieldbyname('MedPrice').IsNull then
          begin
            showmessage('MedPrice can not be empty.');
            abort;
          end;
        next;
      end;
  end;


try
    query1.first;
    for i:=1 to query1.RecordCount do
      begin
        case query1.updatestatus of
          usinserted:
            begin
              if query1.fieldbyname('ID').isnull then
                begin
                  query1.delete;
                end
                 else
                   begin
                     query1.edit;
                     query1.FieldByName('userID').Value:=main.edit1.text;
                     query1.FieldByName('userdate').Value:=date; 
                     query1.FieldByName('YN').Value:='1';
                     upsql1.apply(ukinsert);
                   end;
            end;
          usmodified:
             begin
              if query1.fieldbyname('YN').value='0'then
                begin
                  upsql1.apply(ukdelete);
                end
                else
                  begin
                    query1.edit;
                    query1.FieldByName('userID').Value:=main.edit1.text;
                    query1.FieldByName('userdate').Value:=date;
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
except
  Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
end;

end;

procedure TMedicine.BB6Click(Sender: TObject);
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
end;

procedure TMedicine.BB7Click(Sender: TObject);
begin
close;
end;

procedure TMedicine.BBT1Click(Sender: TObject);
begin
query1.First;
end;

procedure TMedicine.BBT2Click(Sender: TObject);
begin
query1.Prior;
end;

procedure TMedicine.BBT3Click(Sender: TObject);
begin
query1.Next;
end;

procedure TMedicine.BBT4Click(Sender: TObject);
begin
query1.Last;
end;

procedure TMedicine.BB3Click(Sender: TObject);
begin
if messagedlg('Do you really want to delete this record?',mtconfirmation,[mbYes,Mbno],0)=mrYes then
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
  end;
end;

procedure TMedicine.bbt6Click(Sender: TObject);
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
        for   i:=0   to   7   do
          begin
              eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
          end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
          begin
            for   i:=0   to  7  do
            begin
              eclApp.Cells(j,i+1):=query1.Fields[i].Value;
            end;
          query1.Next;
          inc(j);
          end;
        eclapp.columns.autofit;
    {if SaveDialog1.execute then
      begin
        a:=SaveDialog1.FileName;
      end
      else
        begin
          a:='Medicine List';
        end;
      WorkBook.SaveAS(a);
      WorkBook.close; }
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure TMedicine.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  button1click(nil);
end;

procedure TMedicine.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if  query1.fieldbyname('YN').Value='0' then
  begin
    dbgrid1.canvas.font.color:=clred;
    dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TMedicine.FormDestroy(Sender: TObject);
begin
Medicine:=nil;
end;

end.
