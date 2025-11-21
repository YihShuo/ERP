unit CartonMark1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Buttons, StdCtrls, Grids, DBGrids, ExtCtrls,
  GridsEh, DBGridEh,comobj, DBCtrls;

type
  TCartonMark = class(TForm)
    Panel2: TPanel;
    DBGrideh1: TDBGridEh;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
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
    DS1: TDataSource;
    Query1: TQuery;
    UpSQL1: TUpdateSQL;
    Query1MTBH: TStringField;
    Query1MTQZ: TStringField;
    Query1MTLR: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1USERID: TStringField;
    Query1YN: TStringField;
    Query1KHBH: TStringField;
    Query1KFJC: TStringField;
    Label3: TLabel;
    Edit3: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure DBGrideh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGrideh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrideh1EditButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CartonMark: TCartonMark;

implementation

uses main1, CartonMark_KH1;

{$R *.dfm}

procedure TCartonMark.FormCreate(Sender: TObject);
begin
  query1.Active:=false;
end;

procedure TCartonMark.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if BB5.enabled then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end else
   action:=Cafree;
end;

procedure TCartonMark.BB2Click(Sender: TObject);
begin
  with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
  end;
  bb5.enabled:=true;
  bb6.enabled:=true;
  DBGrideh1.columns[3].buttonstyle:=cbsellipsis;
end;

procedure TCartonMark.BB4Click(Sender: TObject);
begin
  with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    query1.edit;
  end;
  bb5.enabled:=true;
  bb6.enabled:=true;
  DBGrideh1.columns[3].buttonstyle:=cbsellipsis;
end;

procedure TCartonMark.BB5Click(Sender: TObject);
var i:integer;
begin
  try
    query1.first;
    for i:=1 to query1.RecordCount do
    begin
      case query1.updatestatus of
        usinserted:
        begin
          if query1.fieldbyname('MTBH').isnull then
          begin
            query1.delete;
          end else
          begin
            query1.edit;
            //query1.FieldByName('MTBB').Value:=Uppercase(query1.FieldByName('MTBB').Value);
            query1.FieldByName('MTBH').Value:=Uppercase(query1.FieldByName('MTBH').Value);
            query1.FieldByName('MTQZ').Value :=Uppercase(query1.FieldByName('MTQZ').Value);
            //query1.FieldByName('MTLR').Value :=query1.FieldByName('MTLR').Value;
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
            if  query1.fieldbyname('USERDATE').value>=(date-3) then
            begin
              upsql1.Apply(ukdelete);
            end else
            begin
              showmessage(query1.FieldByName('MTBH').Value+' >3 days,can not delete.');
            end;
          end else
          begin
            if query1.fieldbyname('USERDATE').value>=(date-10) then
            begin
              query1.edit;
              //query1.FieldByName('MTBB').Value:=Uppercase(query1.FieldByName('MTBB').Value);
              query1.FieldByName('MTBH').Value:=Uppercase(query1.FieldByName('MTBH').Value);
              //query1.FieldByName('MTQZ').Value :=Uppercase(query1.FieldByName('MTQZ').Value);;
              //query1.FieldByName('MTLR').Value :=query1.FieldByName('MTLR').Value;
              query1.FieldByName('USERDATE').Value:=date;
              query1.FieldByName('USERID').Value:=main.edit1.text;
              Query1.FieldByName('YN').Value:='1';
              upsql1.apply(ukmodify);
            end else
            begin
              showmessage(query1.FieldByName('MTBH').Value+' >10 days,can not modify.');
            end;
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
    DBGrideh1.columns[3].buttonstyle:=cbsnone;
  except
    Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
  end;


end;

procedure TCartonMark.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('select YWMT.*,KFZL.KFJC from YWMT ');
    sql.add('left join  KFZL on KFZl.KFDH=YWMT.KHBH   ');
    sql.add('where YWMT.MTBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and YWMT.MTQZ like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('      and KFZL.KFJC like '+''''+'%'+edit3.Text+'%'+'''');
    sql.add('order by MTBH');
    active:=true;
  end;
  bb2.enabled:=true;
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

procedure TCartonMark.BB6Click(Sender: TObject);
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
  DBGrideh1.columns[3].buttonstyle:=cbsnone;
end;

procedure TCartonMark.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TCartonMark.BBT1Click(Sender: TObject);
begin
  query1.First;
end;

procedure TCartonMark.BBT2Click(Sender: TObject);
begin
  query1.prior;
end;

procedure TCartonMark.BBT3Click(Sender: TObject);
begin
 query1.next;
end;

procedure TCartonMark.BBT4Click(Sender: TObject);
begin
  query1.last;
end;

procedure TCartonMark.bbt6Click(Sender: TObject);
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

procedure TCartonMark.DBGrideh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  {
if Query1.cachedupdates then
  begin
    Dbx1.BringToFront;
    if (gdfocused in state) then
      begin
        if (dbgrideh1.SelectedField.fieldname=dbx1.datafield) then
          begin
            dbx1.left:=rect.left+dbgrideh1.left;
            dbx1.top:=rect.top+dbgrideh1.Top;
            dbx1.width:=rect.right-rect.left;
            dbx1.height:=rect.bottom-rect.top;
            dbx1.visible:=true;
          end;
      end;
  end; }
end;

procedure TCartonMark.DBGrideh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if  query1.fieldbyname('YN').Value='0' then
  begin
    dbgrideh1.canvas.font.color:=clred;
   // dbgrideh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TCartonMark.FormDestroy(Sender: TObject);
begin
   CartonMark:=nil;
end;

procedure TCartonMark.DBGrideh1EditButtonClick(Sender: TObject);
begin
  CartonMark_KH:=TCartonMark_KH.create(self);
  CartonMark_KH.show;
end;

end.
