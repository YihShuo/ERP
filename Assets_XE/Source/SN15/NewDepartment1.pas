unit NewDepartment1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.Menus, Data.DB, Bde.DBTables, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.Buttons, Vcl.ExtCtrls,comobj, ShellAPI;

type
  TNewDepartment = class(TForm)
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
    Label6: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    CBX1: TComboBox;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBC1: TDBCheckBox;
    Query1: TQuery;
    UpSQL1: TUpdateSQL;
    DS1: TDataSource;
    SaveDialog1: TSaveDialog;
    Query2: TQuery;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    DBGridEh1: TDBGridEh;
    Query1ID: TStringField;
    Query1GSBH: TStringField;
    Query1DepName: TStringField;
    Query1DepMemo: TStringField;
    Query1ProYN: TBooleanField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    Label1: TLabel;
    Label7: TLabel;
    Edit3: TEdit;
    btnSyn: TBitBtn;
    TmpQuery: TQuery;
    CheckBox1: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure btnSynClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NewDepartment: TNewDepartment;

implementation

{$R *.dfm}

uses main1;

procedure TNewDepartment.BB1Click(Sender: TObject);
begin
  panel3.Visible:=true;
  panel2.Visible:=false;
  Edit1.SetFocus;
end;

procedure TNewDepartment.BB2Click(Sender: TObject);
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

procedure TNewDepartment.BB3Click(Sender: TObject);
begin
  with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    query1.edit;
    fieldbyname('YN').Value:='0';
  end;
  bb5.enabled:=true;
  bb6.enabled:=true;
  N1.Enabled:=true;
  N2.Enabled:=true;
  DBedit1.SetFocus;
end;

procedure TNewDepartment.BB4Click(Sender: TObject);
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

procedure TNewDepartment.BB5Click(Sender: TObject);
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
               //query1.FieldByName('GSBH').Value:=main.edit2.text;
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

procedure TNewDepartment.BB6Click(Sender: TObject);
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

procedure TNewDepartment.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TNewDepartment.BBT1Click(Sender: TObject);
begin
  query1.First;
end;

procedure TNewDepartment.BBT2Click(Sender: TObject);
begin
  query1.Prior;
end;

procedure TNewDepartment.BBT3Click(Sender: TObject);
begin
  query1.Next;
end;

procedure TNewDepartment.BBT4Click(Sender: TObject);
begin
  query1.Next;
end;

procedure TNewDepartment.bbt6Click(Sender: TObject);
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
        for   i:=0   to   query1.fieldcount-1   do
        begin
           eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
        end;

        query1.First;
        j:=2;
        while   not query1.Eof   do
        begin
          for   i:=0   to  query1.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=query1.Fields[i].AsString;
          end;
          query1.Next;
          inc(j);
        end;
       eclapp.columns.autofit;
       eclApp.Visible:=True;
       showmessage('Succeed');
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
  end;

end;

procedure TNewDepartment.btnSynClick(Sender: TObject);
begin
  with TmpQuery do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select *  from BDepartment  ');
    sql.Add('where yn=''1''  and proyn=''1'' and id not in (select id from TSCD_BDepartment)');
    active:=true;
  end;
  if TmpQuery.RecordCount>0 then
  begin
    with Query2 do
    begin
      active:=false;
      sql.Clear;
      sql.Add(' insert TSCD_BDepartment ');
      sql.Add('select ID,'''+main.edit2.text+''',DepName,DepMemo,ProYN,UserID,UserDate,YN ');
      sql.Add('from BDepartment ');
      sql.Add('where yn=''1''  and proyn=''1'' and id not in (select id from TSCD_BDepartment)');
      //funcobj.WriteErrorLog(sql.Text);
      execsql;
    end;
    showmessage ( 'Syn Success');
  end else
  begin
    showmessage ( 'No record new department');
  end;
end;

procedure TNewDepartment.Button1Click(Sender: TObject);
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
    sql.Add('select * from TSCD_BDepartment');
    sql.Add('where ID like '''+edit1.Text+'%'+'''');
    sql.add('and DepName like ''%'+Edit3.Text+'%'' ');
    if CheckBox1.Checked then
    sql.add('and GSBH='''+CBX1.Text+'''');
    sql.add('order by ID');
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

procedure TNewDepartment.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Query1.FieldByName('YN').value='0' then
  begin
    DBGridEh1.canvas.font.color:=clred;
  end;
end;

procedure TNewDepartment.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TNewDepartment.FormCreate(Sender: TObject);
begin
  with query2 do
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
  end;
end;

procedure TNewDepartment.FormDestroy(Sender: TObject);
begin
  NewDepartment:=nil;
end;

procedure TNewDepartment.N1Click(Sender: TObject);
begin
  with query1 do
  begin
    edit;
    fieldbyname('YN').Value:='5';
    post;
  end;
end;

procedure TNewDepartment.N2Click(Sender: TObject);
begin
  with query1 do
  begin
    edit;
    fieldbyname('YN').Value:='1';
    post;
  end;
end;

end.
