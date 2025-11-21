unit OutsoleSizeRange1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ComCtrls, StdCtrls, Buttons, ExtCtrls, comobj,
  DBTables, DB, DateUtils;

type
  TOutsoleSizeRange = class(TForm)
    Panel1: TPanel;
    BB1: TBitBtn;
    bbt6: TBitBtn;
    panel2: TPanel;
    lbl1: TLabel;
    Label3: TLabel;
    EditMatNo: TEdit;
    btn1: TButton;
    EditMatNM: TEdit;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    OutsoleSizeRQry: TQuery;
    DS1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    TmpQry: TQuery;
    DBGrdh1: TDBGridEh;
    GroupBox1: TGroupBox;
    RB1: TRadioButton;
    RB2: TRadioButton;
    RB3: TRadioButton;
    Label1: TLabel;
    SizeCombo: TComboBox;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure OutsoleSizeRQryAfterOpen(DataSet: TDataSet);
    procedure BB2Click(Sender: TObject);
    procedure DBGrdh1EditButtonClick(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure DBGrdh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BB4Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure RB1Click(Sender: TObject);
    procedure RB2Click(Sender: TObject);
    procedure RB3Click(Sender: TObject);
  private
    XXCC:array of string;
    procedure DBGridInit();
    { Private declarations }
    procedure OutputExcel(Query:TQuery);
  public
    { Public declarations }
  end;

var
  OutsoleSizeRange: TOutsoleSizeRange;

implementation
   uses main1,OutsoleSizeR_CL1, FunUnit;
{$R *.dfm}

procedure TOutsoleSizeRange.FormDestroy(Sender: TObject);
begin
  OutsoleSizeRange:=nil;
end;

procedure TOutsoleSizeRange.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TOutsoleSizeRange.DBGridInit();
var i:integer;
    objColumn:TColumnEh;
begin
    DS1.DataSet:=nil;
    for i:=3 to DBGrdh1.Columns.Count-1 do
    begin
      if DBGrdh1.Columns[3]<>nil then
         DBGrdh1.Columns[3].Destroy;
    end;
    //
    with TmpQry do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select Siz from LastSize where LB='''+Copy(SizeCombo.Text,1,2)+''' ');
      if RB2.Checked=true then
        SQL.Add(' and len(Siz)<=6 ');
      if RB3.Checked=true then
        SQL.Add(' and len(Siz)>6 ');
      SQL.Add(' order by case when len(Siz)<=6 then 1 else 2 end, Siz asc ');
      Active:=true;
      if RecordCount>0 then
      begin
        setlength(XXCC,RecordCount);
        for i:=0 to RecordCount-1 do
        begin
          XXCC[i]:=FieldByName('Siz').AsString;
          //
          objColumn:=DBGrdh1.Columns.Add;
          objColumn.FieldName:='['+FieldByName('Siz').AsString+']';
          objColumn.Title.Caption:='§ÿΩX|'+'['+FieldByName('Siz').AsString+']';
          if length(FieldByName('Siz').AsString)<=6 then
            objColumn.Width:=42
          else
            objColumn.Width:=70;
          if Copy(FieldByName('Siz').AsString,1,1)=' ' then
          objColumn.Color:=clyellow;
          objColumn.Checkboxes:=true;
          //
          Next;
        end;
      end else
      begin
        setlength(XXCC,0);
      end;
      Active:=false;
    end;
    DS1.DataSet:=OutsoleSizeRQry;
end;


procedure TOutsoleSizeRange.btn1Click(Sender: TObject);
var i:integer;
begin
   //
   with OutsoleSizeRQry do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select OutsoleSizeR.CLBH,CLZL.ywpm,CLZL.cltd, ');
     for i:=0 to High(XXCC) do
     begin
        SQL.Add('   Max(case when SIZ='''+XXCC[i]+''' then 1 else 0 end) as ''['+XXCC[i]+']'', ');
     end;
     SQL.Add('OutsoleSizeR.YN ');
     SQL.Add('from OutsoleSizeR  ');
     SQL.Add('Left join CLZL on CLZL.cldh=OutsoleSizeR.CLBH ');
     SQL.Add('where 1=1 ');
     if EditMatNo.Text<>'' then
       SQL.Add('and OutsoleSizeR.CLBH like '''+EditMatNo.Text+'%'' ');
     if EditMatNM.Text<>'' then
       SQL.Add('and CLZL.YWPM like ''%'+EditMatNM.Text+'%'' ');
     SQL.Add('Group by OutsoleSizeR.CLBH,CLZL.ywpm,CLZL.cltd,OutsoleSizeR.YN ');
     //funcObj.WriteErrorLog(sql.Text);
     Active:=true;
   end;
   //
end;

procedure TOutsoleSizeRange.FormCreate(Sender: TObject);
begin
  DBGridInit();
end;

procedure TOutsoleSizeRange.BB1Click(Sender: TObject);
begin
  Panel2.Visible:=true;
end;

procedure TOutsoleSizeRange.OutsoleSizeRQryAfterOpen(DataSet: TDataSet);
begin
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
end;

procedure TOutsoleSizeRange.BB2Click(Sender: TObject);
begin
  with OutsoleSizeRQry do
  begin
      requestlive:=true;
      cachedupdates:=true;
      insert;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGrdh1.columns[0].ButtonStyle:=cbsEllipsis;
  DBGrdh1.Columns[0].ReadOnly:=false;
  DBGrdh1.Columns[1].ReadOnly:=false;
end;

procedure TOutsoleSizeRange.DBGrdh1EditButtonClick(Sender: TObject);
begin
  OutsoleSizeR_CL:=TOutsoleSizeR_CL.create(self);
  OutsoleSizeR_CL.show;
end;

procedure TOutsoleSizeRange.BB5Click(Sender: TObject);
var i,j:integer;
    Siz:string;
begin
  try
    OutsoleSizeRQry.first;
    for i:=1 to OutsoleSizeRQry.RecordCount do
      begin
        case OutsoleSizeRQry.updatestatus of
          usinserted:
          begin
            with TmpQry do
            begin
              Active:=false;
              SQL.Clear;
              SQL.Add('Delete from OutsoleSizeR where CLBH='''+OutsoleSizeRQry.FieldByName('CLBH').AsString+'''  ');
              ExecSQL();
            end;
            for j:=3 to OutsoleSizeRQry.FieldCount-2 do
            begin
              if OutsoleSizeRQry.Fields[j].AsString='1' then
              begin
                Siz:=Copy(OutsoleSizeRQry.Fields[j].FieldName,2,length(OutsoleSizeRQry.Fields[j].FieldName)-2);
                TmpQry.Active:=false;
                TmpQry.SQL.Clear;
                TmpQry.SQL.Add('Insert into OutsoleSizeR (CLBH,SIZ,USERID,USERDATE,YN) Values ');
                TmpQry.SQL.Add('('''+OutsoleSizeRQry.FieldByName('CLBH').AsString+''','''+Siz+''','''+main.Edit1.Text+''',GetDate(),1) ');
                TmpQry.ExecSQL();
              end;
            end;
          end;
          usmodified:
          begin
           if OutsoleSizeRQry.fieldbyname('YN').value='0'then
           begin
             with TmpQry do
             begin
              Active:=false;
              SQL.Clear;
              SQL.Add('Delete from OutsoleSizeR where CLBH='''+OutsoleSizeRQry.FieldByName('CLBH').AsString+'''  ');
              ExecSQL();
             end;
           end else
           begin
             //
              with TmpQry do
              begin
                Active:=false;
                SQL.Clear;
                SQL.Add('Delete from OutsoleSizeR where CLBH='''+OutsoleSizeRQry.FieldByName('CLBH').AsString+'''  ');
                ExecSQL();
              end;
              for j:=3 to OutsoleSizeRQry.FieldCount-2 do
              begin
                if OutsoleSizeRQry.Fields[j].AsString='1' then
                begin
                  Siz:=Copy(OutsoleSizeRQry.Fields[j].FieldName,2,length(OutsoleSizeRQry.Fields[j].FieldName)-2);
                  TmpQry.Active:=false;
                  TmpQry.SQL.Clear;
                  TmpQry.SQL.Add('Insert into OutsoleSizeR (CLBH,SIZ,USERID,USERDATE,YN) Values ');
                  TmpQry.SQL.Add('('''+OutsoleSizeRQry.FieldByName('CLBH').AsString+''','''+Siz+''','''+main.Edit1.Text+''',GetDate(),1) ');
                  TmpQry.ExecSQL();
                end;
              end;
             //
           end;
          end;
        end;
       OutsoleSizeRQry.next;
      end;
  OutsoleSizeRQry.active:=false;
  OutsoleSizeRQry.cachedupdates:=false;
  OutsoleSizeRQry.requestlive:=false;
  OutsoleSizeRQry.active:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
  DBGrdh1.columns[0].ButtonStyle:=cbsnone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TOutsoleSizeRange.BB6Click(Sender: TObject);
begin
  with OutsoleSizeRQry do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.enabled:=false;
  DBGrdh1.columns[0].ButtonStyle:=cbsnone;
end;

procedure TOutsoleSizeRange.BB3Click(Sender: TObject);
begin

  with OutsoleSizeRQry do
  begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
      fieldbyname('YN').Value:='0';
  end;

  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TOutsoleSizeRange.DBGrdh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if OutsoleSizeRQry.FieldByName('YN').value='0' then
  begin
    DBGrdh1.canvas.font.color:=clred;
  end;
end;

procedure TOutsoleSizeRange.BB4Click(Sender: TObject);
begin
  with OutsoleSizeRQry do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGrdh1.Columns[0].ReadOnly:=true;
  DBGrdh1.Columns[1].ReadOnly:=true;
end;

procedure TOutsoleSizeRange.bbt6Click(Sender: TObject);
begin
  OutputExcel(OutsoleSizeRQry);
end;

procedure TOutsoleSizeRange.OutputExcel(Query:TQuery);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if Query.Active=false then exit;
  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;

  try
    WorkBook:=eclApp.workbooks.Add;
    for   i:=0   to   Query.fieldcount-1   do
    begin
      eclApp.Cells(1,i+1):=Query.fields[i].FieldName;
    end;
    //©Ô¿Y√C¶‚
    eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[1,Query.fieldcount]].interior.color:=clyellow;
    eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[1,Query.fieldcount]].font.color:=clred;
    eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[Query.RecordCount+1,Query.fieldcount]].Borders.weight:=2;
    //
    Query.First;
    j:=2;
    while   not  Query.Eof   do
    begin
        for   i:=0   to   Query.fieldcount-1   do
        begin
          eclApp.Cells(j,i+1):=Query.Fields[i].Value;
        end;
        Query.Next;
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

procedure TOutsoleSizeRange.RB1Click(Sender: TObject);
begin
  DBGridInit();
end;

procedure TOutsoleSizeRange.RB2Click(Sender: TObject);
begin
  DBGridInit();
end;

procedure TOutsoleSizeRange.RB3Click(Sender: TObject);
begin
  DBGridInit();
end;

end.
