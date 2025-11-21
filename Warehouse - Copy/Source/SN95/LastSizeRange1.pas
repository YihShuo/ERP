unit LastSizeRange1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ComCtrls, StdCtrls, Buttons, ExtCtrls, comobj,
  DBTables, DB;

type
  TLastSizeRange = class(TForm)
    Panel1: TPanel;
    BB1: TBitBtn;
    bbt6: TBitBtn;
    panel2: TPanel;
    lbl1: TLabel;
    Label3: TLabel;
    EditMatNo: TEdit;
    btn1: TButton;
    EditMatNM: TEdit;
    DBGrdh1: TDBGridEh;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    LastSizeRQry: TQuery;
    DS1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    TmpQry: TQuery;
    Label1: TLabel;
    SizeCombo: TComboBox;
    GroupBox1: TGroupBox;
    RB1: TRadioButton;
    RB2: TRadioButton;
    RB3: TRadioButton;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure LastSizeRQryAfterOpen(DataSet: TDataSet);
    procedure BB2Click(Sender: TObject);
    procedure DBGrdh1EditButtonClick(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure DBGrdh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BB4Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure SizeComboChange(Sender: TObject);
    procedure RB2Click(Sender: TObject);
    procedure RB3Click(Sender: TObject);
    procedure RB1Click(Sender: TObject);
  private
    XXCC:array of string;
    { Private declarations }
    procedure DBGridInit();
    procedure OutputExcel(Query:TQuery);
  public
    { Public declarations }
  end;

var
  LastSizeRange: TLastSizeRange;

implementation
   uses main1,LastSizeR_CL1, FunUnit;
{$R *.dfm}

procedure TLastSizeRange.FormDestroy(Sender: TObject);
begin
  LastSizeRange:=nil;
end;

procedure TLastSizeRange.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;
procedure TLastSizeRange.DBGridInit();
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
          objColumn.Title.Caption:='尺碼|'+'['+FieldByName('Siz').AsString+']';
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
    DS1.DataSet:=LastSizeRQry;
end;
procedure TLastSizeRange.btn1Click(Sender: TObject);
var i:integer;
begin
   //
   with LastSizeRQry do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select LastSizeR.CLBH,CLZL.ywpm,CLZL.cltd, ');
     for i:=0 to High(XXCC) do
     begin
        SQL.Add('   Max(case when SIZ='''+XXCC[i]+''' then 1 else 0 end) as ''['+XXCC[i]+']'', ');
     end;
     SQL.Add('LastSizeR.YN ');
     SQL.Add('from LastSizeR  ');
     SQL.Add('Left join CLZL on CLZL.cldh=LastSizeR.CLBH ');
     SQL.Add('where  LastSizeR.LB='''+Copy(SizeCombo.Text,1,2)+''' ');
     if EditMatNo.Text<>'' then
       SQL.Add('and LastSizeR.CLBH like '''+EditMatNo.Text+'%'' ');
     if EditMatNM.Text<>'' then
       SQL.Add('and CLZL.YWPM like ''%'+EditMatNM.Text+'%'' ');
     SQL.Add('Group by LastSizeR.CLBH,CLZL.ywpm,CLZL.cltd,LastSizeR.YN ');
     //funcobj.WriteErrorLog(sql.Text);
     Active:=true;
   end;
   //
end;

procedure TLastSizeRange.FormCreate(Sender: TObject);
begin
  DBGridInit();
end;

procedure TLastSizeRange.BB1Click(Sender: TObject);
begin
  Panel2.Visible:=true;
end;

procedure TLastSizeRange.LastSizeRQryAfterOpen(DataSet: TDataSet);
begin
  BB2.Enabled:=true;
  //BB3.Enabled:=true;
  BB4.Enabled:=true;
end;

procedure TLastSizeRange.BB2Click(Sender: TObject);
begin
  with LastSizeRQry do
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

procedure TLastSizeRange.DBGrdh1EditButtonClick(Sender: TObject);
begin
  LastSizeR_CL:=TLastSizeR_CL.create(self);
  LastSizeR_CL.show;
end;

procedure TLastSizeRange.BB5Click(Sender: TObject);
var i,j:integer;
    Siz:string;
begin
  try
    LastSizeRQry.first;
    for i:=1 to LastSizeRQry.RecordCount do
      begin
        case LastSizeRQry.updatestatus of
          usinserted:
          begin
            with TmpQry do
            begin
              Active:=false;
              SQL.Clear;
              SQL.Add('Delete from LastSizeR where CLBH='''+LastSizeRQry.FieldByName('CLBH').AsString+'''  ');
              ExecSQL();
            end;
            for j:=3 to LastSizeRQry.FieldCount-2 do
            begin
              if LastSizeRQry.Fields[j].AsString='1' then
              begin
                Siz:=Copy(LastSizeRQry.Fields[j].FieldName,2,length(LastSizeRQry.Fields[j].FieldName)-2);
                TmpQry.Active:=false;
                TmpQry.SQL.Clear;
                TmpQry.SQL.Add('Insert into LastSizeR (CLBH,SIZ, LB, USERID,USERDATE,YN) Values ');
                TmpQry.SQL.Add('('''+LastSizeRQry.FieldByName('CLBH').AsString+''','''+Siz+''','''+Copy(SizeCombo.Text,1,2)+''','''+main.Edit1.Text+''',GetDate(),1) ');
                TmpQry.ExecSQL();
              end;
            end;
            //更新季別
            if trim(LastSizeRQry.FieldByName('cltd').AsString)<>'' then
            with TmpQry do
            begin
              Active:=false;
              SQL.Clear;
              SQL.Add('Update CLZL Set cltd='''+LastSizeRQry.FieldByName('cltd').AsString+''' where CLDH='''+LastSizeRQry.FieldByName('CLBH').AsString+''' ');
              ExecSQL();
            end;
          end;
          usmodified:
          begin
           if LastSizeRQry.fieldbyname('YN').value='0'then
           begin
             with TmpQry do
             begin
              Active:=false;
              SQL.Clear;
              SQL.Add('Delete from LastSizeR where CLBH='''+LastSizeRQry.FieldByName('CLBH').AsString+'''  ');
              ExecSQL();
             end;
           end else
           begin
             //
              with TmpQry do
              begin
                Active:=false;
                SQL.Clear;
                SQL.Add('Delete from LastSizeR where CLBH='''+LastSizeRQry.FieldByName('CLBH').AsString+'''  ');
                ExecSQL();
              end;
              for j:=3 to LastSizeRQry.FieldCount-2 do
              begin
                if LastSizeRQry.Fields[j].AsString='1' then
                begin
                  Siz:=Copy(LastSizeRQry.Fields[j].FieldName,2,length(LastSizeRQry.Fields[j].FieldName)-2);
                  TmpQry.Active:=false;
                  TmpQry.SQL.Clear;
                  TmpQry.SQL.Add('Insert into LastSizeR (CLBH,SIZ,LB,USERID,USERDATE,YN) Values ');
                  TmpQry.SQL.Add('('''+LastSizeRQry.FieldByName('CLBH').AsString+''','''+Siz+''','''+Copy(SizeCombo.Text,1,2)+''','''+main.Edit1.Text+''',GetDate(),1) ');
                  TmpQry.ExecSQL();
                end;
              end;
              //更新季別
              if trim(LastSizeRQry.FieldByName('cltd').AsString)<>'' then
              with TmpQry do
              begin
                Active:=false;
                SQL.Clear;
                SQL.Add('Update CLZL Set cltd='''+LastSizeRQry.FieldByName('cltd').AsString+''' where CLDH='''+LastSizeRQry.FieldByName('CLBH').AsString+''' ');
                ExecSQL();
              end;
             //
           end;
          end;
        end;
       LastSizeRQry.next;
      end;
  LastSizeRQry.active:=false;
  LastSizeRQry.cachedupdates:=false;
  LastSizeRQry.requestlive:=false;
  LastSizeRQry.active:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
  DBGrdh1.columns[0].ButtonStyle:=cbsnone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TLastSizeRange.BB6Click(Sender: TObject);
begin
  with LastSizeRQry do
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

procedure TLastSizeRange.BB3Click(Sender: TObject);
begin

  with LastSizeRQry do
  begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
      fieldbyname('YN').Value:='0';
  end;

  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TLastSizeRange.DBGrdh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if LastSizeRQry.FieldByName('YN').value='0' then
  begin
    DBGrdh1.canvas.font.color:=clred;
  end;
end;

procedure TLastSizeRange.BB4Click(Sender: TObject);
begin
  with LastSizeRQry do
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

procedure TLastSizeRange.bbt6Click(Sender: TObject);
begin
  OutputExcel(LastSizeRQry);
end;

procedure TLastSizeRange.OutputExcel(Query:TQuery);
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
    //抬頭顏色
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

procedure TLastSizeRange.SizeComboChange(Sender: TObject);
begin
  DBGridInit();
  btn1.Click;
end;

procedure TLastSizeRange.RB2Click(Sender: TObject);
begin

  DBGridInit();
end;

procedure TLastSizeRange.RB3Click(Sender: TObject);
begin
  DBGridInit();
end;

procedure TLastSizeRange.RB1Click(Sender: TObject);
begin
  DBGridInit();
end;

end.
