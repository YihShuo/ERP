unit Department;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Mask, DBCtrls, StdCtrls, Buttons, ExtCtrls, DB,
  DBTables, ComCtrls,comobj, GridsEh, DBGridEh,ehlibBDE, Menus;

type
  TBdepartment = class(TForm)
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
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGridEh;
    Query1: TQuery;
    UpSQL1: TUpdateSQL;
    DS1: TDataSource;
    SaveDialog1: TSaveDialog;
    tmpQry: TQuery;
    DBC1: TDBCheckBox;
    Label6: TLabel;
    CBX1: TComboBox;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Edit2: TEdit;
    Label5: TLabel;
    CheckBox2: TCheckBox;
    Edit3: TEdit;
    Label7: TLabel;
    ComboBox1: TComboBox;
    Label8: TLabel;
    Query1ID: TStringField;
    Query1GSBH: TStringField;
    Query1DepName: TStringField;
    Query1DepMemo: TStringField;
    Query1ProYN: TBooleanField;
    Query1Worker_Qty: TIntegerField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    Query1GXLB: TStringField;
    Query1sumline: TStringField;
    Query1reportclass: TStringField;
    Query1ID_HRM: TStringField;
    Query1flDepID: TStringField;
    Query1Xuong: TStringField;
    Query1BZLB: TStringField;
    Label9: TLabel;
    Edit4: TEdit;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Bdepartment: TBdepartment;

implementation

uses main1;
{$R *.dfm}

procedure TBdepartment.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    button1click(nil);
end;

procedure TBdepartment.Button1Click(Sender: TObject);
begin
  if CBX1.text='' then
  begin
    showmessage('Pls select company first.');
    abort;
  end;
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select * from BDepartment where ID like ');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and DepName like '''+Edit3.Text+'%'' ');
    if Edit2.Text<>'' then
    sql.add('and GXLB like '''+Edit2.Text+'%'' ');
    if ComboBox1.ItemIndex=1 then
       sql.add('and ProYN=''1'' ');
    if ComboBox1.ItemIndex=2 then
       sql.add('and IsNull(ProYN,''0'')=''0'' ');
    if CheckBox2.Checked=true then
       sql.add('and IsNull(GXLB,'''')='''' ');
    if Edit4.Text<>'' then
       sql.add('and sumline like '''+Edit4.Text+'%'' ');
    sql.add('and GSBH='+''''+CBX1.Text+'''');
    sql.add('order by DepName,ID');
   // memo1.text:=sql.text;
    active:=true;
  end;
  //Table1.Active:=true;
  panel3.visible:=false;
  panel2.visible:=true;
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
  DBEdit1.SetFocus;
end;

procedure TBdepartment.BB1Click(Sender: TObject);
begin
  panel3.Visible:=true;
  panel2.Visible:=false;
  Edit1.SetFocus;
end;

procedure TBdepartment.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if query1.requestlive then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
   action:=Cafree;
end;

procedure TBdepartment.BB2Click(Sender: TObject);
begin
  with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
    fieldbyname('GSBH').Value:=CBX1.Text;
  end;
  bb5.enabled:=true;
  bb6.enabled:=true;
  N1.Enabled:=true;
  N2.Enabled:=true;
end;

procedure TBdepartment.BB3Click(Sender: TObject);
var DepID:string;
begin

  if messagedlg('Do you really want to delete this record?',mtconfirmation,[mbYes,Mbno],0)=mrYes then
  begin
      if messagedlg('All the child department will be delete too!  Sure?',mtconfirmation,[mbyes,mbno],0)=mryes then
      begin
          with tmpQry do
          begin
              active:=false;
              sql.clear;
              sql.add('select * from BWorker where DepID like ');
              sql.add(''''+query1.FieldByName('ID').AsString+'%'+'''');
              sql.add('and GSBH='+''''+main.Edit2.Text+'''');
              active:=true;
              if tmpQry.recordcount>0 then
              begin
                  messagedlg('This department still stick Worker. Can not delete!',mtwarning,[mbyes,mbno],0);
                  abort;
              end;
              active:=false;
          end;
          with query1 do
          begin
              DepID:=query1.fieldbyname('ID').asstring;
              cachedupdates:=true;
              requestlive:=true;
              first;
              while not eof do
              begin
                  if DepID=copy(fieldbyname('ID').asstring,1,length(DepID)) then
                  begin
                      Edit;
                      fieldbyname('YN').Value:='0';
                      Post;
                  end;
                  next;
              end;
          end;
          bb5.enabled:=true;
          bb6.enabled:=true;
      end;
  end;
  N1.Enabled:=true;
  N2.Enabled:=true;
end;

procedure TBdepartment.BB4Click(Sender: TObject);
begin
  with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    query1.edit;
  end;
  bb5.enabled:=true;
  bb6.enabled:=true;
  N1.Enabled:=true;
  N2.Enabled:=true;
  DBedit1.SetFocus;
end;

procedure TBdepartment.BB5Click(Sender: TObject);
var i:integer;
begin
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
              end else
              begin
                query1.edit;
                if query1.FieldByName('ProYN').IsNull=true then
                  query1.FieldByName('ProYN').Value:='1';
                if query1.FieldByName('BZLB').IsNull=true then
                  query1.FieldByName('BZLB').Value:='3';
                query1.FieldByName('userID').Value:=main.edit1.text;
                query1.FieldByName('userdate').Value:=date;
                query1.FieldByName('YN').Value:='1';
                upsql1.apply(ukinsert);
              end;
            end;
          usmodified:
            if query1.fieldbyname('YN').value='0'then
            begin
              upsql1.apply(ukdelete);
            end else
            begin
              query1.edit;
              query1.FieldByName('userID').Value:=main.edit1.text;
              query1.FieldByName('userdate').Value:=date;
              upsql1.apply(ukmodify);
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
    N1.Enabled:=false;
    N2.Enabled:=false;
  except
    Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
  end;
end;

procedure TBdepartment.BB6Click(Sender: TObject);
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
  N1.Enabled:=false;
  N2.Enabled:=false;
end;

procedure TBdepartment.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TBdepartment.BBT1Click(Sender: TObject);
begin
  query1.First;
end;

procedure TBdepartment.BBT2Click(Sender: TObject);
begin
  query1.Prior;
end;

procedure TBdepartment.BBT3Click(Sender: TObject);
begin
  query1.Next;
end;

procedure TBdepartment.BBT4Click(Sender: TObject);
begin
  query1.Last;
end;

procedure TBdepartment.bbt6Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
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
        for   i:=0   to   4   do
          begin
              eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
          end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
          begin
            for   i:=0   to  4  do
            begin
              eclApp.Cells(j,i+1):=query1.Fields[i].Value;
            end;
          query1.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure TBdepartment.FormCreate(Sender: TObject);
begin
  with tmpQry do
  begin
    active:=false;
    sql.Clear;
    sql.add('select GSDH from BGSZL order by GSDH DESC ');
    active:=true;
    CBX1.items.clear;
    while not eof do
    begin
      CBX1.items.add(fieldbyname('GSDH').Value);
      next;
    end;
    active:=false;
    CBX1.itemindex:=0;
    active:=false;
    sql.Clear;
    sql.add('select distinct GXLB from SCGXDY order by GXLB ');
    active:=true;
    while not eof do
    begin
        Dbgrid1.columns[6].picklist.add(fieldbyname('GXLB').Value);
        next;
    end;
    active:=false;
  end;
end;

procedure TBdepartment.FormDestroy(Sender: TObject);
begin
  BDepartment:=nil;
end;

procedure TBdepartment.N1Click(Sender: TObject);
begin
  with query1 do
  begin
    edit;
    fieldbyname('YN').Value:='5';
    post;
  end;
end;

procedure TBdepartment.N2Click(Sender: TObject);
begin
  with query1 do
  begin
    edit;
    fieldbyname('YN').Value:='1';
    post;
  end;
end;

procedure TBdepartment.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Query1.FieldByName('YN').value='0' then
  begin
    DBGrid1.canvas.font.color:=clred;
  end;
end;

end.

