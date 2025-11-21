unit MaHaiQuanNQ1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls,comobj;

type
  TMaHaiQuanNQ = class(TForm)
    Panel2: TPanel;
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
    btImport: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    MatNoEdit: TEdit;
    Button1: TButton;
    CheckBox1: TCheckBox;
    Edit2: TEdit;
    ShowCK: TCheckBox;
    DBGrid1: TDBGridEh;
    Query1: TQuery;
    Query1CLBH: TStringField;
    Query1HGBH: TStringField;
    Query1HGPM: TStringField;
    Query1UnitC: TStringField;
    Query1RateC: TFloatField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1ywpm: TStringField;
    Query1YN: TStringField;
    Query1dwbh: TStringField;
    Query1CLDH: TStringField;
    UpdateSQL1: TUpdateSQL;
    DataSource1: TDataSource;
    OpenDialog: TOpenDialog;
    Qtemp: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);

    procedure GetSubSQL(var SQL:string;BtnObj:TSpeedButton;EditObj:TEdit;FieldNM:string;Flag:string);
    procedure BB1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BB6Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure btImportClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaHaiQuanNQ: TMaHaiQuanNQ;

implementation
uses main1,FunUnit, TimMaHQNQ1;

{$R *.dfm}

procedure TMaHaiQuanNQ.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    action:=cafree;
end;

procedure TMaHaiQuanNQ.FormDestroy(Sender: TObject);
begin
    MaHaiQuanNQ:=nil;
end;

procedure TMaHaiQuanNQ.GetSubSQL(var SQL:string;BtnObj:TSpeedButton;EditObj:TEdit;FieldNM:string;Flag:string);
var tmpList,tmpList1:TStringlist;
    i:integer;
begin
  SQL:='';
  if trim(EditObj.Text)<>'' then
  begin
    if  (Pos('|', EditObj.Text)>0)  then
    begin
      tmpList:=funcObj.SplitString(trim(EditObj.Text),'|');
      for i:=0 to tmpList.Count-1 do
      begin
       if ((BtnObj.Caption='=') or  (BtnObj.Caption='<>'))then
          SQL:=SQL+'(:'+FieldNM+' '+BtnObj.Caption+' '''+Flag+tmpList.Strings[i]+'%'') and '
       else
          SQL:=SQL+'(:'+FieldNM+' '+BtnObj.Caption+' '''+Flag+tmpList.Strings[i]+'%'') and ';
      end;
      SQL:='and ('+Copy(SQL,1,length(SQL)-4)+')';
      tmpList.Free;
    end else
    begin
    if Pos('*', EditObj.Text)>0 then
      begin
        tmpList:=funcObj.SplitString(trim(EditObj.Text),'*');
        for i:=0 to tmpList.Count-1 do
        begin
          if ((BtnObj.Caption='=') or  (BtnObj.Caption='<>'))then
             SQL:=SQL+'(:'+FieldNM+' '+BtnObj.Caption+' '''+Flag+tmpList.Strings[i]+'%'') or '
          else
             SQL:=SQL+'(:'+FieldNM+' '+BtnObj.Caption+' '''+Flag+tmpList.Strings[i]+'%'') or ';
        end;
        SQL:='and ('+Copy(SQL,1,length(SQL)-4)+')';
        tmpList.Free;
      end else
      begin
        tmpList:=funcObj.SplitString(trim(EditObj.Text),'*');
        for i:=0 to tmpList.Count-1 do
        begin
          if ((BtnObj.Caption='=') or  (BtnObj.Caption='<>'))then
             SQL:=SQL+'(:'+FieldNM+' '+BtnObj.Caption+' '''+Flag+tmpList.Strings[i]+'%'') or '
          else
             SQL:=SQL+'(:'+FieldNM+' '+BtnObj.Caption+' '''+Flag+tmpList.Strings[i]+'%'') or ';
        end;
        SQL:='and ('+Copy(SQL,1,length(SQL)-4)+')';
        tmpList.Free;
      end;
    end;
  end;
end;


procedure TMaHaiQuanNQ.BB1Click(Sender: TObject);
begin
    Panel1.Visible:=true;
end;


procedure TMaHaiQuanNQ.Button1Click(Sender: TObject);
var i:integer;
    tmpList:TStringlist;
    MatNoSQL:string;
begin
   GetSubSQL(MatNoSQL,SpeedButton1,MatNoEdit,'CLBH','');
   with Query1 do
    begin
    Active:=false;
    sql.Clear;
    if ShowCK.Checked=true then
      begin
        sql.add('select top 1000 CLZL.CLDH,CLNQ.clbh,clzl.ywpm,clzl.dwbh,CLNQ.HGBH,CLNQ.HGPM,CLNQ.UNitC,CLNQ.Ratec,CLNQ.userid,CLNQ.userdate,CLNQ.YN');
      end else
      begin
        sql.add('select CLZL.CLDH,CLNQ.clbh,clzl.ywpm,clzl.dwbh,CLNQ.HGBH,CLNQ.HGPM,CLNQ.UNitC,CLNQ.Ratec,CLNQ.userid,CLNQ.userdate,CLNQ.YN');
      end;
      sql.add('from CLZL ');
      sql.add('left join CLNQ on CLNQ.clbh = CLZL.cldh  ');
      sql.add('Where 1=1 ');
      SQL.Add('       '+StringReplace(MatNoSQL, ':CLBH', 'CLZL.CLDH',[rfReplaceAll, rfIgnoreCase]));
      sql.add('and clzl.ywpm like '+'''%'+edit2.Text+'%'+'''');
    if CheckBox1.Checked = true then
      begin
        SQL.Add('and CLNQ.CLBH is not null ');
      end;
    sql.add('order by CLNQ.clbh  ');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
    end;
    panel2.Visible:=true;
    BB1.Enabled:= true;
    BB2.Enabled:= true;
    BB3.Enabled:= true;
    panel1.Visible:=false;
    BB4.Enabled:= true;
    bbt6.Enabled:= true;
    btimport.Enabled:=true;
end;


procedure TMaHaiQuanNQ.BB2Click(Sender: TObject);
begin
  with Query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BB3.Enabled:=false;
  BB4.Enabled:=false;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGrid1.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TMaHaiQuanNQ.DBGrid1EditButtonClick(Sender: TObject);
begin
    TimMaHQNQ:=TTimMaHQNQ.create(self);
    TimMaHQNQ.show;
end;

procedure TMaHaiQuanNQ.BB5Click(Sender: TObject);
var i:integer;
begin
  try
    Query1.first;
    for i:=1 to Query1.RecordCount do
    begin
      case Query1.updatestatus of
      usinserted:
      begin
        if Query1.fieldbyname('CLBH').isnull then
        begin
            Query1.delete;
        end else
        begin
            Query1.Edit;
            Query1.FieldByName('userdate').Value:=date;
            Query1.FieldByName('userID').Value:=main.edit1.text;
            Query1.FieldByName('YN').Value:='1';
            UpdateSQL1.apply(ukinsert);
        end;
      end;
      usmodified:
        begin
          if query1.fieldbyname('YN').value='0'then
          begin
            UpdateSQL1.apply(ukdelete);
          end else
          begin
            if Query1.fieldbyname('CLBH').isnull then
            begin
              Query1.Edit;
              Query1.FieldByName('CLBH').Value:=Query1.FieldByName('CLDH').Value;
              Query1.FieldByName('userdate').Value:=date;
              Query1.FieldByName('userID').Value:=main.edit1.text;
              Query1.FieldByName('YN').Value:='1';
              UpdateSQL1.apply(ukinsert);
            end else
            begin
              query1.edit;
              query1.FieldByName('USERID').Value:=main.edit1.text;
              query1.FieldByName('USERdate').Value:=date;
              UpdateSQL1.apply(ukmodify);
            end;
          end;
        end;
      end;
      query1.next;
    end;
    Query1.active:=false;
    Query1.cachedupdates:=false;
    Query1.requestlive:=false;
    Query1.active:=true;
    BB2.enabled:=true;
    BB3.enabled:=true;
    BB4.enabled:=true;
    BB5.enabled:=false;
    BB6.enabled:=false;
  except
    Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
  end;
end;

procedure TMaHaiQuanNQ.BB3Click(Sender: TObject);
begin
  BB2.enabled:=false;
  BB4.enabled:=false;
  BB5.enabled:=true;
  BB6.enabled:=true;
  if messagedlg('All the detail will be deleted too!',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    if Query1.recordcount>0 then
    begin
      with Query1 do
      begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
        fieldbyname('YN').Value:='0';
      end;
    end;
  end
end;

procedure TMaHaiQuanNQ.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Query1.FieldByName('YN').value='0' then
  begin
    DBGrid1.canvas.font.color:=clred;
  end;
end;

procedure TMaHaiQuanNQ.BB6Click(Sender: TObject);
begin
  with Query1 do
  begin
  Active:=false;
  cachedupdates:=false;
  requestlive:=false;
  active:=true;
  end;
  BB2.enabled:=true;
  BB3.enabled:=true;
  BB4.enabled:=true;
  BB5.enabled:=false;
  BB6.enabled:=false;
end;

procedure TMaHaiQuanNQ.BB4Click(Sender: TObject);
begin
  BB2.Enabled:= false;
   BB3.Enabled:= false;
   BB5.Enabled:=true;
   BB6.Enabled:=true;
  with Query1 do
  begin
   RequestLive:=true;
   CachedUpdates:=true;
   edit;
  end;
end;

procedure TMaHaiQuanNQ.bbt6Click(Sender: TObject);
var i,j,k:integer;
    eclApp,WorkBook:olevariant;
begin
  if Query1.Active then
  begin
    if Query1.recordcount=0 then
    begin                                             
      showmessage('No record.');
      abort;
    end;
  end else
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
    WorkBook:=eclApp.workbooks.Add;
    eclApp.Cells(1,1):='NO';
    for   i:=1   to   Query1.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=Query1.fields[i-1].FieldName;
    end;
    Query1.First;
    j:=2;
    while   not  Query1.Eof   do
    begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   Query1.fieldcount   do
          begin
            eclApp.Cells(j,i+1):=Query1.Fields[i-1].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
          end;
        Query1.Next;
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

procedure TMaHaiQuanNQ.btImportClick(Sender: TObject);
var
  ExcelApp: Variant;
  CLBH,HGBH,HGPM,UnitC,RateC: string;
  i:integer;
begin
  if OpenDialog.Execute then
  begin
    ExcelApp:=CreateOleObject('Excel.Application');
    ExcelApp.WorkBooks.Open(OpenDialog.FileName);
    ExcelApp.WorkSheets[1].Activate;
    i:=2;
    CLBH:=ExcelApp.Cells[i,1].Value;
    HGBH:=ExcelApp.Cells[i,4].Value;
    HGPM:=ExcelApp.Cells[i,5].Value;
    UnitC:=ExcelApp.Cells[i,6].Value;
    RateC:=ExcelApp.Cells[i,7].Value;
    while ((trim(CLBH)<>''))  do
    begin
      CLBH:=ExcelApp.Cells[i,1].Value;
      HGBH:=ExcelApp.Cells[i,4].Value;
      HGPM:=ExcelApp.Cells[i,5].Value;
      UnitC:=ExcelApp.Cells[i,6].Value;
      RateC:=ExcelApp.Cells[i,7].Value;
      Qtemp.active:=false;
      Qtemp.SQL.Clear;
      Qtemp.SQL.Add('select * from CLNQ');
      Qtemp.SQL.Add('where CLBH ='''+CLBH+'''');
      Qtemp.ExecSQL;
      Qtemp.active:=true;
      if Qtemp.RecordCount>0 then
      begin
          Qtemp.active:=false;
          Qtemp.SQL.Clear;
          Qtemp.SQL.Add('update CLNQ set ');
          Qtemp.SQL.Add(' HGBH='''+HGBH+''',HGPM='''+HGPM+''',UnitC='''+UnitC+''',RateC='''+RateC+'''');
          Qtemp.SQL.Add(',userdate='''+FormatDateTime('yyyy/mm/dd hh:nn:ss',now)+'''');
          Qtemp.SQL.Add(',USERID ='''+Main.Edit1.Text+'''');
          Qtemp.SQL.Add('where CLBH ='''+CLBH+'''');
          //funcobj.WriteErrorLog(Qtemp.sql.Text);
          Qtemp.ExecSQL;
      end else
      begin
         Qtemp.active:=false;
         Qtemp.SQL.Clear;
         Qtemp.SQL.Add(' insert into CLNQ(CLBH,HGBH,HGPM,UnitC,RateC,UserID,UserDate,YN)');
         Qtemp.SQL.Add(' values ('''+CLBH+''' ,'''+HGBH+''','''+HGPM+''','''+UnitC+''','''+RateC+''','''+Main.Edit1.Text+''','''+FormatDateTime('yyyy/mm/dd hh:nn:ss',now)+''',1)');
         //funcobj.WriteErrorLog(Qtemp.sql.Text);
         Qtemp.ExecSQL;
      end;
      i:=i+1;
      CLBH:=ExcelApp.Cells[i,1].Value;
      HGBH:=ExcelApp.Cells[i,4].Value;
      HGPM:=ExcelApp.Cells[i,5].Value;
      UnitC:=ExcelApp.Cells[i,6].Value;
      RateC:=ExcelApp.Cells[i,7].Value;
    end;

    ExcelApp.WorkBooks.Close;
    ExcelApp.Quit;
    Qtemp.Active:=false;
    showmessage('Success');
  end;
  Button1.Click;
end;

end.
