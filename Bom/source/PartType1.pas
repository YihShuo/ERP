unit PartType1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DBTables, DB, Grids, DBGrids, Buttons,
  ExtCtrls, GridsEh, DBGridEh;

type
  TPartType = class(TForm)
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
    Panel3: TPanel;
    DS1: TDataSource;
    Query1: TQuery;
    UpSQL1: TUpdateSQL;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    CBX1: TDBComboBox;
    Query1FLBH: TStringField;
    Query1DFL: TStringField;
    Query1XFL: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1USERID: TStringField;
    Query1YN: TStringField;
    FLNO: TQuery;
    FLNOFLBH: TStringField;
    DBGridEh1: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PartType: TPartType;

implementation

uses main1;

{$R *.dfm}

procedure TPartType.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if query1.requestlive then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
   action:=Cafree;
end;

procedure TPartType.BB1Click(Sender: TObject);
begin
  Query1.Active:=true;
  bb2.enabled:=true;
  bb4.enabled:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
  bb7.enabled:=true;
  bbt1.enabled:=true;
  bbt2.enabled:=true;
  bbt3.enabled:=true;
  bbt4.enabled:=true;

end;

procedure TPartType.BB2Click(Sender: TObject);
begin
  if Query1.Active then
  begin
    query1.RequestLive:=true;
    query1.CachedUpdates:=true;
    query1.Insert;
    bb5.Enabled:=true;
    bb6.Enabled:=true;
    CBX1.SetFocus;
  end
    else
      begin
        showmessage('No active.');
      end;
end;

procedure TPartType.BB4Click(Sender: TObject);
begin
  if Query1.Active then
  begin
    query1.RequestLive:=true;
    query1.CachedUpdates:=true;
    query1.edit;  
    bb5.Enabled:=true;
    bb6.Enabled:=true; 
    CBX1.SetFocus;
  end
    else
      begin
        showmessage('No active.');
      end;
end;

procedure TPartType.BB5Click(Sender: TObject);
var i,n :integer;
    a:string;
begin
  try
    query1.first;
    for i:=1 to query1.RecordCount do
      begin
        case query1.updatestatus of
          usinserted:
            begin
              if query1.fieldbyname('DFL').isnull then
                begin
                  query1.delete;
                end
                 else
                   begin
                     with FLNO do
                       begin
                         active:=true;
                 //showmessage('aa');
                         if recordcount>0 then
                           begin
                             last;
                             n:=strtoint(fieldbyname('FLBH').AsString);
                           end
                           else
                             begin
                               n:=0; 
                 //showmessage('aa');
                             end;
                         n:=n+1;
                         a:=inttostr(n);
                         if length(a)<2 then
                           begin
                             a:='0'+a;
                           end;
                         active:=false;
                       end;
                     query1.edit;
                     query1.FieldByName('FLBH').Value:= a;
                     query1.FieldByName('userID').Value:=main.edit1.text;
                     query1.FieldByName('userdate').Value:=date;
                     Query1.FieldByName('YN').Value:='1';
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
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);

  end;

end;

procedure TPartType.BB6Click(Sender: TObject);
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

procedure TPartType.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TPartType.BBT1Click(Sender: TObject);
begin
  query1.First;
end;

procedure TPartType.BBT2Click(Sender: TObject);
begin
  query1.Prior;
end;

procedure TPartType.BBT3Click(Sender: TObject);
begin
  query1.Next;
end;

procedure TPartType.BBT4Click(Sender: TObject);
begin
  query1.Last;
end;

procedure TPartType.FormDestroy(Sender: TObject);
begin
  PartType:=nil;
end;

end.
