unit YWXXBox1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, Buttons, StdCtrls, ExtCtrls,comobj;

type
  TYWXXBox = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    ED_MatID: TEdit;
    Button1: TButton;
    ED_MatName: TEdit;
    Button2: TButton;
    Panel2: TPanel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    B_Exit: TBitBtn;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    QBox: TQuery;
    UP_Box: TUpdateSQL;
    QBoxclbh: TStringField;
    QBoxywpm: TStringField;
    QBoxOWeigh: TCurrencyField;
    QBoxUSERDATE: TDateTimeField;
    QBoxUSERID: TStringField;
    QBoxYN: TStringField;
    ED_SKU: TEdit;
    Label4: TLabel;
    QBoxCLBH_XX: TStringField;
    Qtemp: TQuery;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure QBoxAfterOpen(DataSet: TDataSet);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  YWXXBox: TYWXXBox;

implementation

uses main1;

{$R *.dfm}

procedure TYWXXBox.FormDestroy(Sender: TObject);
begin
  YWXXBox:=nil;   
end;

procedure TYWXXBox.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   action:=cafree;
end;

procedure TYWXXBox.BB1Click(Sender: TObject);
begin
  Panel1.Visible := true;
end;

procedure TYWXXBox.Button1Click(Sender: TObject);
begin
  if ((ED_MatID.Text ='' ) and (ED_SKU.Text='')) then
  begin
    showmessage(' Pls key in MatNo or SKU ');
    abort;
  end;
  with QBox do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select xxzls.clbh,ywpm,ywxxbox.OWeigh,YWXXBox.USERDATE,YWXXBox.USERID,YWXXBox.YN,YWXXBox.CLBH as CLBH_XX');
    sql.Add('from xxzls left join clzl on xxzls.clbh=clzl.cldh ');
    sql.Add('left join ywxxbox on xxzls.clbh=ywxxbox.clbh ');
    sql.Add('left join xxzl on xxzls.XieXing=xxzl.XieXing and xxzls.SheHao=xxzl.SheHao ');
    sql.Add('where bwlb=''1'' ') ;
    sql.Add('and xxzls.clbh like ''H14%''');
    if ED_MatID.Text <> '' then
      sql.Add('and xxzls.clbh like '''+ED_MatID.Text+'%''');
    if ED_MatName.Text <> '' then
      sql.Add('and clzl.ywpm like ''%'+ED_MatName.Text+'%''');
    if ED_SKU.Text <> '' then
      sql.Add('and xxzl.article like '''+ED_SKU.Text+'%''');
    if checkbox1.Checked then
      sql.Add(' and Oweigh is Null');
    if checkbox2.Checked then
      sql.Add(' and Oweigh is not Null');
    sql.Add('group by xxzls.clbh,ywpm,ywxxbox.OWeigh,YWXXBox.USERDATE,YWXXBox.USERID,YWXXBox.YN,YWXXBox.CLBH');
    sql.Add('order by xxzls.clbh ');
    active:=true;
  end;
end;

procedure TYWXXBox.QBoxAfterOpen(DataSet: TDataSet);
begin
  if  QBox.RecordCount>0 then
    BB4.Enabled:=true;
end;

procedure TYWXXBox.BB4Click(Sender: TObject);
begin
  with QBox do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TYWXXBox.BB6Click(Sender: TObject);
begin
  with QBox do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  BB5.Enabled := false;
  BB6.Enabled := false;
end;

procedure TYWXXBox.BB5Click(Sender: TObject);
var i:integer;
begin
  try
    QBox.first;
    for i:=1 to QBox.RecordCount do
    begin
      case QBox.updatestatus of
        usmodified:
          if  QBox.FieldByName('CLBH_XX').isnull then
          begin
           with Qtemp do
              begin
                active:=false;
                sql.Clear;
                sql.Add(' insert YWXXBox (CLBH,UserDate,UserID,YN) values(');
                sql.Add(' '''+QBox.fieldbyname('CLBH').AsString+'''');
                sql.Add(', GetDate()');
                sql.Add(', '''+main.edit1.Text+'''');
                sql.Add(', ''1''');
                sql.Add(')');
                execsql;
              end;
              QBox.edit;
              QBox.FieldByName('userID').Value:=main.edit1.text;
              UP_Box.apply(ukmodify);
          end else
          begin
             QBox.edit;
             QBox.FieldByName('userID').Value:=main.edit1.text;
             UP_Box.apply(ukmodify);
          end;
       end;

      QBox.next;
    end;
    with QBox do
    begin
      active:=false;
      requestlive:=false;
      cachedupdates:=false;
      active:=true;
    end;

  except
    Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
  end;
  BB5.enabled:=false;
  BB6.Enabled:=false;
  QBox.Active:=true;
end;

procedure TYWXXBox.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin
  if  QBox.active  then
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
        for   i:=0   to   QBox.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=QBox.fields[i].FieldName;
          end;

        QBox.First;
        j:=2;
        while   not   QBox.Eof   do
          begin
            for   i:=0   to  QBox.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=QBox.Fields[i].Value;
            end;
          QBox.Next;
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

end.
