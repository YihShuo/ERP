unit MaHaiQuan_KD1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls, comobj, fununit;

type
  TMaHaiQuan_KD = class(TForm)
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
    MatNoEdit: TEdit;
    Button1: TButton;
    CheckBox1: TCheckBox;
    Edit2: TEdit;
    ShowCK: TCheckBox;
    DBGrid1: TDBGridEh;
    Query1: TQuery;
    Query1CLDH: TStringField;
    Query1clbh: TStringField;
    Query1ywpm: TStringField;
    Query1dwbh: TStringField;
    Query1HGBH: TStringField;
    Query1HGPM: TStringField;
    Query1UNitC: TStringField;
    Query1Ratec: TFloatField;
    Query1userid: TStringField;
    Query1userdate: TDateTimeField;
    Query1YN: TStringField;
    DataSource1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    Qtemp: TQuery;
    OpenDialog: TOpenDialog;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure btImportClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure GetSubSQL(var SQL:string;BtnObj:TSpeedButton;EditObj:TEdit;FieldNM:string;Flag:string);
  public
    { Public declarations }
  end;

var
  MaHaiQuan_KD: TMaHaiQuan_KD;

implementation

uses main1, TimMa_KD1;

{$R *.dfm}

procedure TMaHaiQuan_KD.GetSubSQL(var SQL:string;BtnObj:TSpeedButton;EditObj:TEdit;FieldNM:string;Flag:string);
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

procedure TMaHaiQuan_KD.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TMaHaiQuan_KD.FormDestroy(Sender: TObject);
begin
  MaHaiQuan_KD:=nil;
end;

procedure TMaHaiQuan_KD.BB1Click(Sender: TObject);
begin
  Panel1.Visible:=true;
end;

procedure TMaHaiQuan_KD.Button1Click(Sender: TObject);
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
      sql.add('select top 1000 CLZL.CLDH,CLKD.clbh,clzl.ywpm,clzl.dwbh,CLKD.HGBH,CLKD.HGPM,CLKD.UNitC,CLKD.RateC,CLKD.userid,CLKD.userdate,CLKD.YN');
    end else
    begin
      sql.add('select CLZL.CLDH,CLKD.clbh,clzl.ywpm,clzl.dwbh,CLKD.HGBH,CLKD.HGPM,CLKD.UNitC,CLKD.Ratec,CLKD.userid,CLKD.userdate,CLKD.YN');
    end;
    sql.add('from CLZL ');
    sql.add('left join CLKD1 CLKD on CLKD.clbh = CLZL.cldh  ');
    sql.add('Where 1=1 ');
    SQL.Add('       '+StringReplace(MatNoSQL, ':CLBH', 'CLZL.CLDH',[rfReplaceAll, rfIgnoreCase]));
    sql.add('and clzl.ywpm like '+'''%'+edit2.Text+'%'+'''');
    if CheckBox1.Checked = true then
    begin
      SQL.Add('and CLKD.CLBH is not null ');
    end;
    sql.add('order by CLKD.clbh  ');
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
    btImport.Enabled:=true;
end;

procedure TMaHaiQuan_KD.BB2Click(Sender: TObject);
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

procedure TMaHaiQuan_KD.BB3Click(Sender: TObject);
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
  end;
end;

procedure TMaHaiQuan_KD.BB4Click(Sender: TObject);
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

procedure TMaHaiQuan_KD.BB5Click(Sender: TObject);
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

procedure TMaHaiQuan_KD.BB6Click(Sender: TObject);
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

procedure TMaHaiQuan_KD.bbt6Click(Sender: TObject);
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
            eclApp.Cells.Cells.item[j,i+1].font.size:='10';
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

procedure TMaHaiQuan_KD.DBGrid1EditButtonClick(Sender: TObject);
begin
  TimMa_KD:=TTimMa_KD.create(self);
  TimMa_KD.show;
end;

procedure TMaHaiQuan_KD.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Query1.FieldByName('YN').value='0' then
  begin
    DBGrid1.canvas.font.color:=clred;
  end;
end;

procedure TMaHaiQuan_KD.btImportClick(Sender: TObject);
var ExcelApp: Variant;
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
      Qtemp.SQL.Add('select * from CLKD1');
      Qtemp.SQL.Add('where CLBH ='''+CLBH+'''');
      Qtemp.ExecSQL;
      Qtemp.active:=true;
      if Qtemp.RecordCount>0 then
      begin
          Qtemp.active:=false;
          Qtemp.SQL.Clear;
          Qtemp.SQL.Add('update CLKD1 set ');
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
         Qtemp.SQL.Add(' insert into CLKD1(CLBH,HGBH,HGPM,UnitC,RateC,UserID,UserDate,YN)');
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

procedure TMaHaiQuan_KD.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
