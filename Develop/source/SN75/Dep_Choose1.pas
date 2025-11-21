unit Dep_Choose1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TDep_Choose = class(TForm)
    pnl1: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    edtDEPID_edt: TEdit;
    edtDEPName_edt2: TEdit;
    btn1: TButton;
    dbgrdh1: TDBGridEh;
    dsDS1: TDataSource;
    qry1: TQuery;
    UpSQL1: TUpdateSQL;
    qry1Codes: TStringField;
    qry1Code_Name: TStringField;
    qry1Program_ID: TStringField;
    qry1YN: TStringField;
    pm1: TPopupMenu;
    Modify1: TMenuItem;
    Delete1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    Insert1: TMenuItem;
    qry2: TQuery;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure Insert1Click(Sender: TObject);
    procedure dbgrdh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dbgrdh1CellClick(Column: TColumnEh);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dep_Choose: TDep_Choose;    

implementation
uses PaperRoom_shoeTest;

{$R *.dfm}

procedure TDep_Choose.FormCreate(Sender: TObject);
begin
  Modify1.Enabled := False;
  Save1.Enabled := False;
  Cancel1.Enabled :=False;
  Delete1.Enabled := False;
  Insert1.Enabled := False;
end;

procedure TDep_Choose.btn1Click(Sender: TObject);
begin
  with qry1 do
  begin  
    Active := False;
    SQL.Clear;
    SQL.Add('select * from setcode where ISNULL(YN,'''') <> ''0'' and Program_ID = ''A''') ;
    if edtDEPID_edt.Text <> '' then
      SQL.Add(' and codes like '''+edtDEPID_edt.Text+'''');
    if edtDEPName_edt2.Text <> '' then
      SQL.Add(' and Code_Name like '''+edtDEPName_edt2.Text+'''');
    Active := True;
  end;
  Modify1.Enabled := True;
  Save1.Enabled := False;
  Cancel1.Enabled :=False;
  Delete1.Enabled := True;
  Insert1.Enabled := True;
end;

procedure TDep_Choose.Modify1Click(Sender: TObject);
begin
  with qry1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  Modify1.Enabled := True;
  Save1.Enabled := True;
  Cancel1.Enabled :=True;
  Delete1.Enabled := True;
  Insert1.Enabled := True;
end;

procedure TDep_Choose.Cancel1Click(Sender: TObject);
begin
  Modify1.Enabled := True;
  Save1.Enabled := False;
  Cancel1.Enabled :=False;
  Delete1.Enabled := True;
  Insert1.Enabled := True;
end;

procedure TDep_Choose.Save1Click(Sender: TObject);
var
  i : Integer;
  a : string;
begin
  try
      qry1.first;
      for i:=1 to qry1.RecordCount do
      begin
        case qry1.updatestatus of
          usinserted:
          begin
            if qry1.fieldbyname('Code_Name').isnull then
            begin
              qry1.delete;
            end
            else
            begin
               with qry2 do    //計算TestNo單流水號
               begin
                 active:=false;
                 sql.Clear;
                 sql.Add('select Codes from SetCode where Program_ID = ''A''');
                 sql.add('order by Codes');
                 active:=true;
                 if recordcount >0 then
                 begin
                   last;
                   a:=fieldbyname('Codes').AsString;
                   a:=copy(a,2,2);
                   a:=inttostr(strtoint(a)+1);
                   while length(a)<2 do
                     begin
                       a:='0'+a;
                     end;
                 end
                 else
                 begin
                   a:='01';
                 end;
                 active:=false;
               end;
               qry1.edit;
               qry1.fieldbyname('Codes').Value:='A'+a;
               qry1.fieldbyname('Program_ID').Value:='A';
               UpSQL1.apply(ukinsert);
            end;
          end;
        usmodified:
          begin
            UpSQL1.apply(ukmodify);  
          end;
        end;
        qry1.next;
      end;
      Modify1.Enabled := True;
      Save1.Enabled := False;
      Cancel1.Enabled :=False;
      Delete1.Enabled := True;
      Insert1.Enabled := True;
      with qry1 do
      begin
        active:=false;
        requestlive:=false;
        cachedupdates:=false;
        active:=true;
      end;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TDep_Choose.Delete1Click(Sender: TObject);
begin
  with qry1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  Modify1.Enabled := True;
  Save1.Enabled := True;
  Cancel1.Enabled :=True;
  Delete1.Enabled := True;
  Insert1.Enabled := True;    
end;

procedure TDep_Choose.Insert1Click(Sender: TObject);
begin
  with qry1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    Insert;
  end;
  Modify1.Enabled := True;
  Save1.Enabled := True;
  Cancel1.Enabled :=True;
  Delete1.Enabled := True;
  Insert1.Enabled := True;  
end;

procedure TDep_Choose.dbgrdh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if qry1.FieldByName('YN').value='0' then
  begin
    dbgrdh1.canvas.font.color:=clred;
  end;
end;

procedure TDep_Choose.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Cancel1.enabled then
    begin
      messagedlg('You have to save data Report first.',mtwarning,[mbyes],0);
      action:=canone;
    end
  else
    begin
      action:=Cafree;
    end;
end;

procedure TDep_Choose.FormDestroy(Sender: TObject);
begin
  Dep_Choose := nil ;
end;

procedure TDep_Choose.dbgrdh1CellClick(Column: TColumnEh);
begin
  if PaperRoom.PageControl1.ActivePageIndex = 0 then
  begin
    PaperRoom.SIZEqry.Edit;
    PaperRoom.SIZEqry.FieldByName('DepName').Value := qry1.FieldByName('code_name').Value;
    ShowMessage('Success');
  end;

end;

end.
