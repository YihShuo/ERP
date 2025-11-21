unit DeliverList1;

interface        

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,dateutils,
  Buttons, GridsEh, DBGridEh;

type
  TDeliverList = class(TForm)
    DS1: TDataSource;
    Query1: TQuery;
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
    Panel2: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    CB1: TCheckBox;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1CWBH: TStringField;
    Query1USERID2: TStringField;
    Query1USERDATE2: TDateTimeField;
    UpSQL1: TUpdateSQL;
    Query1CKBH: TStringField;
    Qtemp: TQuery;
    DBGridEh1: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DeliverList: TDeliverList;
  NDate:Tdate;

implementation

uses main1;

{$R *.dfm}

procedure TDeliverList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if BB5.enabled  then
  begin
    showmessage('You have to save data first.');
    action:=canone;
  end
  else
    begin
      action:=cafree;
    end;
end;

procedure TDeliverList.BB1Click(Sender: TObject);
begin
panel2.Visible:=true;
end;

procedure TDeliverList.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select KCZLS.*,CLZL.YWPM,CLZL.DWBH   ');
    sql.add('from KCZLS');
    sql.add('left join CLZl on CLZL.CLDH=KCZLS.CLBH');
    sql.add('left join KCCK on KCCK.CKBH=KCZLS.CKBH ');
    sql.add('where KCZLS.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('and CLZL.YWPM like '+''''+'%'+ edit2.Text+'%'+'''');
    sql.add('and CLZL.YWPM like '+''''+'%'+ edit3.Text+'%'+'''');
    sql.add('and KCCK.GSBH='+''''+main.Edit2.text+'''');
    if CB1.Checked then
      begin
        sql.add('and KCZLS.CWBH is null ');
      end;
    sql.add('order by KCZLS.CLBH');
    active:=true;
  end;
BB4.Enabled:=true;
BBT1.enabled:=true;
BBT2.enabled:=true;
BBT3.enabled:=true;
BBT4.enabled:=true;
BBT5.enabled:=true;
BBT6.enabled:=true;
end;

procedure TDeliverList.BB7Click(Sender: TObject);
begin
close;
end;         

procedure TDeliverList.BB4Click(Sender: TObject);
begin
query1.CachedUpdates:=true;
query1.RequestLive:=true;
BB5.Enabled:=true;
BB6.Enabled:=true;
end;

procedure TDeliverList.BB5Click(Sender: TObject);
begin
with query1 do
  begin
    first;
    while not eof do
      begin
        case updatestatus of
          usmodified:
            begin
              if  fieldbyname('CWBH').value<>'' then
                begin
                  edit;
                  fieldbyname('USERID2').Value:=main.edit1.Text;
                  fieldbyname('USERDATE2').Value:=Ndate;
                  UpSQL1.Apply(ukmodify);
                end;
            end;
          end;
        next;
      end;
    active:=false;
    active:=true;
    cachedupdates:=false;
    requestlive:=false;
    BB5.Enabled:=false;
    BB6.enabled:=false;
  end;

end;

procedure TDeliverList.BB6Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
    BB5.enabled:=false;
    BB6.enabled:=false;
  end;
end;

procedure TDeliverList.FormDestroy(Sender: TObject);
begin
DeliverList:=nil
end;

procedure TDeliverList.FormCreate(Sender: TObject);
begin

with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    Ndate:=fieldbyname('NDate').Value;
    active:=false;
  end;
end;

end.
