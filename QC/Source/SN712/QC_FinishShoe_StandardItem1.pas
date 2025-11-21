unit QC_FinishShoe_StandardItem1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls, DB, DBTables;

type
  TQC_FinishShoe_StandardItem = class(TForm)
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
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    UpdateSQL1: TUpdateSQL;
    DataSource1: TDataSource;
    Query1YYBH: TStringField;
    Query1GSBH: TStringField;
    Query1YWSM: TStringField;
    Query1ZWSM: TStringField;
    Query1USERDate: TDateTimeField;
    Query1USERID: TStringField;
    Query1YN: TStringField;
    procedure BB1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QC_FinishShoe_StandardItem: TQC_FinishShoe_StandardItem;

implementation
  uses main1;

{$R *.dfm}

procedure TQC_FinishShoe_StandardItem.BB1Click(Sender: TObject);
begin
  panel2.Visible:=true;
end;

procedure TQC_FinishShoe_StandardItem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TQC_FinishShoe_StandardItem.FormDestroy(Sender: TObject);
begin
  QC_FinishShoe_StandardItem:=nil;
end;

procedure TQC_FinishShoe_StandardItem.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TQC_FinishShoe_StandardItem.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('Select * from QC_FGYY');
    sql.add('where YWSM like '''+'%'+ edit1.Text+'%'+'''');
    sql.add('and ZWSM like '''+'%'+ edit2.Text+'%'+'''');
    sql.add('and GSBH= '''+main.Edit2.Text+'''');
    sql.add('order by YYBH');
    active:=true;
  end;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
end;

procedure TQC_FinishShoe_StandardItem.BBT1Click(Sender: TObject);
begin
  query1.First;
end;

procedure TQC_FinishShoe_StandardItem.BBT2Click(Sender: TObject);
begin
  query1.Prior;
end;

procedure TQC_FinishShoe_StandardItem.BBT3Click(Sender: TObject);
begin
  query1.Next;
end;

procedure TQC_FinishShoe_StandardItem.BBT4Click(Sender: TObject);
begin
  query1.Last;
end;

procedure TQC_FinishShoe_StandardItem.BB2Click(Sender: TObject);
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

procedure TQC_FinishShoe_StandardItem.BB3Click(Sender: TObject);
begin
  with query1 do
  begin
  if fieldbyname('UserID').Value=main.Edit1.Text then
    begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
        fieldbyname('YN').Value:=0;
    end
   else
    begin
      showmessage('It is not yours! Can not delete!');
    end;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TQC_FinishShoe_StandardItem.BB4Click(Sender: TObject);
begin
  with query1 do
  begin
  if fieldbyname('UserID').Value=main.Edit1.Text then
     begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
     end
  else
    begin
       showmessage('It is not yours, Can not modify!');
    end   
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TQC_FinishShoe_StandardItem.BB6Click(Sender: TObject);
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

procedure TQC_FinishShoe_StandardItem.BB5Click(Sender: TObject);
var i:integer;
begin
  query1.First;
  for i:=0 to query1.RecordCount-1 do
  begin
    case query1.UpdateStatus of
    usinserted:
    begin
      query1.Edit;
      query1.FieldByName('GSBH').Value:=main.Edit2.Text;
      query1.FieldByName('UserID').Value:=main.Edit1.Text;
      query1.FieldByName('UserDate').Value:=now;
      query1.FieldByName('YN').Value:=1;
      updatesql1.Apply(ukinsert);
    end;
    usmodified:
    begin
      if (now-query1.FieldByName('UserDate').Value)<=3 then
        begin
          if query1.FieldByName('YN').Value='0' then
            begin
              updatesql1.Apply(ukdelete);
            end
          else
            begin
              query1.Edit;
              query1.FieldByName('GSBH').Value:=main.Edit2.Text;
              query1.FieldByName('UserID').Value:=main.Edit1.Text;
              query1.FieldByName('UserDate').Value:=now;
              query1.FieldByName('YN').Value:=1;
              updatesql1.Apply(ukmodify);
            end;
        end
      else
        begin
          showmessage('Date>3, Can not modify or delete !');
        end;
    end;
  end;
  query1.Next;
  end;  
  query1.Active:=false;
  query1.RequestLive:=false;
  query1.CachedUpdates:=false;
  query1.Active:=true;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
end;

procedure TQC_FinishShoe_StandardItem.DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if (query1.FieldByName('YN').Value='0') then
  begin
    DBGridEh1.Canvas.Font.Color:=clred;
    DBGridEh1.DefaultDrawColumnCell(rect,datacol,column,state);
  end;
end;

end.
