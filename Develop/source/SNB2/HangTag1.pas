unit HangTag1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DB, DBTables, GridsEh, DBGridEh;

type
  THangTag = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB5: TBitBtn;
    BB4: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    UpdateSQL1: TUpdateSQL;
    DataSource1: TDataSource;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Query1jijie: TStringField;
    Query1devcode: TStringField;
    Query1fd: TStringField;
    Query1remarks: TStringField;
    Query1xiexing: TStringField;
    Query1shehao: TStringField;
    Edit3: TEdit;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HangTag: THangTag;

implementation

uses main1;

{$R *.dfm}

procedure THangTag.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure THangTag.FormDestroy(Sender: TObject);
begin
  HangTag:=nil;
end;

procedure THangTag.BB1Click(Sender: TObject);
begin
  with query1 do
  begin
      active:=false;
      sql.Clear;
      sql.Add('select top 1000 kfxxzl.jijie,kfxxzl.devcode,fd,xxzlkf.remarks,xxzlkf.xiexing,xxzlkf.shehao,kfxxzl.userdate from xxzlkf ');
      sql.Add('left join kfxxzl on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao ');
      SQL.add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
      sql.Add('where  len(kfxxzl.jijie)=3 and devcode is not null and devcode<>''''');
      SQL.add('and kfzl_GS.GSBH= '''+main.Edit2.Text+''' ');
      if edit1.Text<>'' then
         sql.Add(' and kfxxzl.jijie like ''%'+edit1.Text+'%''');
      if edit2.Text<>'' then
         sql.Add(' and kfxxzl.devcode like ''%'+edit2.Text+'%'' ');
      if edit3.Text<>'' then
         sql.Add(' and kfxxzl.fd like ''%'+edit3.Text+'%'' ');
      sql.Add('group by kfxxzl.jijie,xxzlkf.remarks ,kfxxzl.devcode,fd,xxzlkf.xiexing,xxzlkf.shehao,kfxxzl.userdate');
      sql.Add('order by kfxxzl.userdate desc');
      active:=true;
    //  memo1.text:=sql.text;
  end;
    BB2.Enabled:=true;
    BB3.Enabled:=true;
    BB4.Enabled:=true;
end;

procedure THangTag.BB4Click(Sender: TObject);
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

procedure THangTag.BB5Click(Sender: TObject);
var   i: integer;
begin

  try
    Query1.First;
    for i:=1 to Query1.RecordCount do
    begin
      case query1.updatestatus of
        usModified:
        begin
            Query1.Edit;
            UpdateSQL1.Apply(ukModify);
         end;
        end;

      Query1.Next;
    end;

    Query1.Active := false;
    Query1.CachedUpdates := false;
    Query1.RequestLive := false;
    Query1.Active := true;
    BB2.Enabled := true;
    BB3.Enabled := true;
    BB4.Enabled := true;
    bb5.Enabled := false;
    bb6.Enabled := false;
  except
    Messagedlg('Have wrong, can not save data!', mtWarning, [mbyes], 0);
  end;
end;

procedure THangTag.BB6Click(Sender: TObject);
begin
  Query1.Active := false;
  Query1.CachedUpdates := false;
  Query1.RequestLive := false;
  Query1.Active := true;
  BB2.Enabled := true;
  BB3.Enabled := true;
  BB4.Enabled := true;
  bb5.enabled := false;
  bb6.enabled := false;

end;

end.
