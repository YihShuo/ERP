unit ToolingSetting;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, DB, DBTables, GridsEh, DBGridEh, StdCtrls,
  Buttons;

type
  TToolingSetting1 = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    ToolPanel: TPanel;
    Label2: TLabel;
    Edit2: TEdit;
    Button2: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1Xiexing: TStringField;
    Query1Shehao: TStringField;
    Query1FD: TStringField;
    Query1Devcode: TStringField;
    Query1XTMH: TStringField;
    Query1YN: TStringField;
    Edit1: TEdit;
    Label1: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Query1jijie: TStringField;
    CheckBox1: TCheckBox;
    QTemp: TQuery;
    upSQL1: TUpdateSQL;
    CheckBox2: TCheckBox;
    Query1userdate: TStringField;
    Query1kfjd: TStringField;
    Query1userid: TStringField;
    Query1rank_no: TFloatField;
    Query1UserName: TStringField;
    CheckBox3: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure BB5Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ToolingSetting1: TToolingSetting1;

implementation

uses main1;

{$R *.dfm}

procedure TToolingSetting1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TToolingSetting1.BB1Click(Sender: TObject);
begin
  with query1 do
  begin
      active:=false;
      sql.Clear;
      sql.Add('select main.*,busers.UserName from (select kfxxzl.jijie,kfxxzl.Xiexing,kfxxzl.Shehao,kfxxzl.FD,kfxxzl.Devcode,kfxxzl.XTMH,'''' YN,ypzl.userdate ,ypzl.kfjd,ypzl.userid,');
      sql.Add('ROW_NUMBER () OVER  (PARTITION BY ypzl.xiexing,ypzl.shehao  ORDER BY ypzl.userdate   ) rank_no  from Kfxxzl');
      SQL.add('left join kfzl_GS on kfzl_GS .KHBH=kfxxzl.KHDH');
      SQL.add('left join ypzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.shehao=kfxxzl.shehao');
      SQL.add('where 1=1 and ypzl.userid is not null');
      if edit2.text<>'' then
         sql.Add('and XTMH like ''%'+edit2.Text+'%''');
      if edit1.Text <> '' then
        SQL.add('and kfxxzl.devcode like '''+'%'+edit1.Text+'%'+'''');
      if edit3.Text <> '' then
        SQL.add('and kfxxzl.jijie like '''+edit3.Text+'%'+'''');
      if CheckBox1.checked then
        SQL.add('and kfxxzl.jijie is not null and kfxxzl.jijie <>''''');
      if CheckBox2.checked then
        SQL.add('and kfxxzl.xtmh is  null');
      if CheckBox3.checked then
        SQL.add('and ypzl.userid ='''+main.Edit1.Text+'''');
      SQL.add('and kfzl_GS.GSBH= '''+main.Edit2.Text+''' )main');
      SQL.add('left join busers on busers.userid=main.userid');
      SQL.add('where rank_no=1 order by jijie desc');
      active:=true;
      DBGridEh1.Columns[4].ButtonStyle := cbsNone;
    //  showmessage(sql.text);
  end;
//    BB2.Enabled:=true;
//    BB3.Enabled:=true;
    BB4.Enabled:=true;

end;

procedure TToolingSetting1.BB4Click(Sender: TObject);
begin
  //
  with Query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB1.Enabled:=false;
  BB4.Enabled:=false;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGridEh1.Columns[4].ButtonStyle := cbsAuto;
end;

procedure TToolingSetting1.BB6Click(Sender: TObject);
begin
  Query1.active:=false;
  Query1.cachedupdates:=false;
  Query1.requestlive:=false;
  Query1.active:=true;
  BB1.Enabled:=true;
  BB4.Enabled:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
  DBGridEh1.Columns[4].ButtonStyle := cbsNone;
end;

procedure TToolingSetting1.FormCreate(Sender: TObject);
var i: Integer;
begin
  with DBGridEh1 do begin
    for i := 0 to Columns.Count-1 do begin
      if uppercase(Columns[i].FieldName)=Uppercase('XTMH') then begin
        QTemp.Close;
        QTemp.SQL.Text := 'Select LASTCODE from LASTDATAs group by LASTCODE order by LASTCODE';
        QTemp.Open;
        Columns[i].PickList.Clear;
        while not QTemp.Eof do begin
          Columns[i].PickList.Add(QTemp.FieldByName('LASTCODE').AsString);
          QTemp.Next;
        end;
      end;
    end;
  end;
end;

procedure TToolingSetting1.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (DBGridEh1.SelectedIndex = 4) then
      Key := #0;
end;

procedure TToolingSetting1.BB5Click(Sender: TObject);
begin
  try
    Query1.First;
    while not Query1.Eof do begin
      case query1.updatestatus of
         usmodified:
         begin
           if  query1.FieldByName('userID').Value=main.Edit1.Text then
           begin
               upSQL1.apply(ukmodify);
           end else
           begin
               showmessage('its not yours,you can not save');
           end;
         end;
      end;
      Query1.Next;
    end;
    query1.active:=false;
    query1.cachedupdates:=false;
    query1.requestlive:=false;
    query1.active:=true;
    BB1.Enabled:=true;
    BB4.Enabled:=true;
    bb5.enabled:=false;
    bb6.enabled:=false;
    DBGridEh1.columns[4].ButtonStyle:=cbsnone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TToolingSetting1.BB7Click(Sender: TObject);
begin
  Close;
end;

end.
