unit SupplierBPM1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, Grids, DBGrids, Mask, ComCtrls,
  Buttons, ExtCtrls,math,comobj, Menus, GridsEh, DBGridEh,IniFiles;

type
  TSupplierBPM = class(TForm)
    ExeQuery: TQuery;
    BPMQry: TQuery;
    DS1: TDataSource;
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    bbt6: TBitBtn;
    Panel3: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit5: TEdit;
    DBGridEh1: TDBGridEh;
    BPMQryZSDH: TStringField;
    BPMQryzsywjc: TStringField;
    BPMQryUserID: TStringField;
    BPMQryYN: TStringField;
    BPMQryEmail: TStringField;
    BPMQryEmail2: TStringField;
    UpdateSQL1: TUpdateSQL;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SupplierBPM: TSupplierBPM;

implementation

uses main1,FunUnit;

{$R *.dfm}

procedure TSupplierBPM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TSupplierBPM.FormDestroy(Sender: TObject);
begin  
  SupplierBPM:=nil;
end;

procedure TSupplierBPM.BB1Click(Sender: TObject);
begin
  panel3.Visible:=true;
end;

procedure TSupplierBPM.Button1Click(Sender: TObject);
begin
  with ExeQuery do
  begin
    active:=false;
    sql.clear;
    SQL.Add('set ansi_nulls on ');
    SQL.Add('set ansi_warnings on ');
    execsql;
    active:=false;
  end;
  with BPMQry do
  begin
    active:=false;
    sql.Clear;
    SQL.Add('set ansi_nulls on ');
    SQL.Add('set ansi_warnings on ');
    sql.add('select LYN_ZSZL_DEV.* ');
    sql.add('from [UOFWEB].[UOF].[dbo].[LYN_ZSZL_DEV] LYN_ZSZL_DEV ');   
    sql.add('where YN<>''0'' ');
    if Edit1.Text<>'' then
      sql.add(' and LYN_ZSZL_DEV.ZSDH='''+Edit1.Text+''' ');
    if Edit5.Text<>'' then
      sql.add(' and LYN_ZSZL_DEV.zsywjc like ''%'+Edit5.Text+'%'' ');
    sql.add('order by LYN_ZSZL_DEV.ZSDH ');
//    showmessage(SQL.Text);
    active:=true;
  end;
  panel3.Visible:=false;  
  BB2.Enabled := true;
  BB3.Enabled := true;
  BB4.Enabled := true;
  bbt6.Enabled := true;
end;

procedure TSupplierBPM.BB2Click(Sender: TObject);
begin
  with BPMQry do
  begin
    requestlive := true;
    cachedupdates := true;
    insert;
  end;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TSupplierBPM.BB3Click(Sender: TObject);
begin
  with BPMQry do
  begin
    requestlive := true;
    cachedupdates := true;
    edit;
    fieldbyname('YN').Value := '0';
  end;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TSupplierBPM.BB4Click(Sender: TObject);
begin
  with BPMQry do
  begin
    requestlive := true;
    cachedupdates := true;
    edit;
  end;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TSupplierBPM.BB6Click(Sender: TObject);
begin 
  with BPMQry do
  begin
    active := false;
    requestlive := false;
    cachedupdates := false;
    active := true;
  end;
  BB5.enabled := false;
  BB6.enabled := false;
end;

procedure TSupplierBPM.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TSupplierBPM.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if BPMQry.Active then
  begin
    if BPMQry.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end
  else
    begin
      showmessage('No record.');
      abort;
    end;

  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;

  try
    //BPMQry.Active:=false;
    WorkBook:=eclApp.workbooks.Add;
    eclapp.Cells.NumberFormatLocal:='@';
    eclApp.Cells(1,1):='NO';
    for   i:=1   to   BPMQry.fieldcount-1   do
    begin
        eclApp.Cells(1,i+1):=BPMQry.fields[i-1].FieldName;
    end;
    BPMQry.First;
    j:=2;
    while   not  BPMQry.Eof   do
    begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   BPMQry.fieldcount-1   do
        begin
            eclApp.Cells(j,i+1):=BPMQry.Fields[i-1].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
        BPMQry.Next;
        inc(j);
    end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
    BPMQry.Active:=true;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;

procedure TSupplierBPM.BB5Click(Sender: TObject);
var
  UserID:string;
  i: integer;
begin
  try
    BPMQry.first;
    for i := 1 to BPMQry.RecordCount do
    begin
      case BPMQry.updatestatus of
        usinserted:
          begin
            if BPMQry.fieldbyname('ZSDH').isnull then
            begin
              BPMQry.delete;
            end
            else
            begin
              if BPMQry.fieldbyname('UserID').AsString<>'' then
                UserID:=BPMQry.fieldbyname('UserID').AsString
              else UserID:='LYN'+main.Edit1.Text;
              with ExeQuery do
              begin
                active:=false;
                sql.clear;
                SQL.Add('set ansi_nulls on ');
                SQL.Add('set ansi_warnings on ');
                sql.add('insert into [UOFWeb].[UOF].[dbo].[LYN_ZSZL_DEV] ');
                sql.add('(ZSDH, zsywjc, Email, Email2, UserID, ID, UserDate, YN)');
                sql.add('values ('+''''+BPMQry.fieldbyname('ZSDH').Value+''''+','+''''+BPMQry.fieldbyname('zsywjc').AsString+''',');
                sql.add(''''+StringReplace(BPMQry.fieldbyname('Email').AsString,'''','''''', [rfReplaceAll, rfIgnoreCase])+''''+',');
                sql.add(''''+StringReplace(BPMQry.fieldbyname('Email2').AsString,'''','''''', [rfReplaceAll, rfIgnoreCase])+''''+',');
                sql.add(''''+UserID+''''+','''+main.Edit1.Text+''',getdate(),''1'')');
                execsql;
                active:=false;
              end;
            end;
          end;
        usmodified:
          begin
            if BPMQry.fieldbyname('YN').asstring = '0' then
            begin
              with ExeQuery do
              begin
                active:=false;
                sql.clear;
                SQL.Add('set ansi_nulls on ');
                SQL.Add('set ansi_warnings on ');
                sql.add('update [UOFWeb].[UOF].[dbo].[LYN_ZSZL_DEV] ');
                sql.add('set YN='''+BPMQry.fieldbyname('YN').asstring+''', ');
                sql.add('    DelID='''+main.Edit1.Text+''', ');
                sql.add('    DelDate=getdate() ');
                SQL.add('where ZSDH='+''''+BPMQry.fieldbyname('ZSDH').asstring+''' ');
                execsql;
                active:=false;
              end;
            end
            else
            begin
              with ExeQuery do
              begin
                active:=false;
                sql.clear;          
                SQL.Add('set ansi_nulls on ');
                SQL.Add('set ansi_warnings on ');
                sql.add('update [UOFWeb].[UOF].[dbo].[LYN_ZSZL_DEV] ');
                sql.add('set zsywjc='''+BPMQry.fieldbyname('zsywjc').asstring+''', ');
                sql.add('    Email='''+StringReplace(BPMQry.fieldbyname('Email').asstring,'''','''''', [rfReplaceAll, rfIgnoreCase])+''', ');
                sql.add('    Email2='''+StringReplace(BPMQry.fieldbyname('Email2').asstring,'''','''''', [rfReplaceAll, rfIgnoreCase])+''', ');
                sql.add('    UserID='''+BPMQry.fieldbyname('UserID').asstring+''', ');
                sql.add('    ModID='''+main.Edit1.Text+''', ');                     
                sql.add('    ModDate=getdate() ');
                SQL.add('where ZSDH='+''''+BPMQry.fieldbyname('ZSDH').asstring+''' ');
                execsql;
                active:=false;
              end;
            end;
          end;
      end;
      BPMQry.next;
    end;
    BPMQry.active := false;
    BPMQry.cachedupdates := false;
    BPMQry.requestlive := false;
    BPMQry.active := true;
    bb5.enabled := false;
    bb6.enabled := false;
  except
    Messagedlg('Have wrong, can not save data!', mtwarning, [mbyes], 0);
  end;
end;

procedure TSupplierBPM.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if BPMQry.FieldByName('YN').AsString='0' then
    DBGridEh1.canvas.font.color:=clRed;
end;

end.
