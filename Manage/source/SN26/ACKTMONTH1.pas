unit ACKTMONTH1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, GridsEh, DBGridEh,comobj, DBClient,
  DBCtrls, DB, DBTables, AppEvnts, Menus, ComCtrls;

type
  TACKTMONTH = class(TForm)
    PC1: TPageControl;
    ACKT_MONTH_Import: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    ACKT_Month: TQuery;
    DS1: TDataSource;
    bbQuery: TBitBtn;
    bbModify: TBitBtn;
    bbSave: TBitBtn;
    bbCancel: TBitBtn;
    bbExit: TBitBtn;
    bbExcel: TBitBtn;
    edtDepNo: TEdit;
    Label1: TLabel;
    cbxYear: TComboBox;
    cbxMonth: TComboBox;
    Label7: TLabel;
    Label2: TLabel;
    Update_ACKTMonth: TUpdateSQL;
    OpenDialog: TOpenDialog;
    DVTemp: TQuery;
    BWTemp: TQuery;
    bbInsert: TBitBtn;
    QTemp: TQuery;
    btImport: TBitBtn;
    btnQuery: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure bbQueryClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbExitClick(Sender: TObject);
    procedure btImportClick(Sender: TObject);
    procedure bbExcelClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnQueryClick(Sender: TObject);
  private
    AppDir:String;
    procedure ImportKTExcel();
    { Private declarations }
    procedure ExportFormatExcel();
    procedure ExportDefaultExcel();
    function GetUspriceByBz(bz:string) :string;
  public
    CountBW,CountDV: Integer;
    { Public declarations }
  end;

var
  ACKTMONTH: TACKTMONTH;
  NDate:TDate;

implementation
uses main1,FunUnit;

{$R *.dfm}
{function IsDigit(S:String):Boolean;
var i,j:integer;
begin
  if(length(S)>0) then
  begin
    Result:=True;
    j:=0 ;
    for i:=1 to length(s) do
    begin
      if not (s[i] in ['0'..'9','.'])then
        Result:=False;
      if s[i]='.' Then
        j:=j+1;
    end;
    if j>1 then Result:=False;
    if (s[1]='.') or (s[length(s)]='.') then
      Result:=False;
    s:=copy(s,1, pos('.', S)-1);
    j:=0;
    for i:=1 to length(s) do
    begin
      if s[I]='0' then
        j:=j+1;
    end;
    if j>1 then
      Result:=False;
  end else
  begin
   Result:=false;
  end;
end;          }

///////////
function Check(S:String):Boolean;
var i:integer;
begin
  if(length(S)>0) then
  begin
    Result:=True;
    for i:=1 to length(s) do
    begin
      if (s[i] in ['A'..'Z'] + ['a'..'z'])  then
      begin
        Result:=False;
        break;
      end
    end;
  end else
    result:=false;
end;
///////////

procedure TACKTMONTH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=caFree;
end;

procedure TACKTMONTH.FormDestroy(Sender: TObject);
begin
  ACKTMONTH:=nil;
end;

procedure TACKTMONTH.bbQueryClick(Sender: TObject);
begin
  Panel1.Visible:=true;
end;

procedure TACKTMONTH.FormCreate(Sender: TObject);
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  with DVTemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate,count(BZ) CountDV  from ACKTID where LB = ''DV''');
    active:=true;
    NDate :=fieldbyname('NDate').Value;
    CountDV :=fieldbyname('CountDV').Value;
    active:=false;
  end;
  ///
  with BWTemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select count(BZ) CountBW  from ACKTID where LB = ''BW''');
    Active:=true;
    CountBW :=fieldbyname('CountBW').Value;
    active:=false;
  end;
end;

procedure TACKTMONTH.bbExitClick(Sender: TObject);
begin
   close;
end;
///

procedure TACKTMONTH.ImportKTExcel();
var
  i,j :integer;
  ExcelApp: Variant;
  KCYEAR,KCMONTH,DepNo,KTID,USERID,YN,USERDATE,USPrice : String;
  USPriceF : String;
begin
  if OpenDialog.Execute then
  begin
    with ACKT_Month do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Delete from ACKTMONTH where KCYEAR ='''+cbxYear.text+''' and KCMONTH='''+cbxMonth.text+''' ');
      ExecSQL();
    end;
    try
      ExcelApp:=CreateOleObject('Excel.Application');
      ExcelApp.WorkBooks.Open(OpenDialog.FileName);
      ExcelApp.WorkSheets[1].Activate;
      ExcelApp.DisplayAlerts := False;
      with DVTemp do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('select * from ACKTID where LB = ''DV''');
        Active:=true;
      end;
      //
      with BWTemp do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('select * from ACKTID where LB = ''BW''');
        Active:=true;
      end;
      //
      KCYEAR := cbxYear.Text;
      KCMONTH := cbxMonth.Text;
      USERID := main.Edit1.Text;
      USERDATE := datetostr(NDate);
      YN := '1';
      BWTemp.First;
      for j:=0 to CountBW-1 do
      begin
        DVTemp.First;
        for i:=0 to CountDV-1 do
        begin
          DepNo := DVTemp.FieldByName('KTID').value;
          KTID := BWTemp.FieldByName('KTID').value;
          USPriceF := ExcelApp.Cells[BWTemp.FieldByName('BZ').AsInteger,DVTemp.FieldByName('BZ').AsInteger].value;
          if check(USPriceF)=false then
            USPrice:='0'
          else
            USPrice:=Format('%.2f',[strtofloat(USPriceF)]);           //round 2 numbers
          //
          with ACKT_Month do
          begin
            Active:=false;
            SQL.Clear;
            SQL.Add('Insert into ACKTMONTH (KCYEAR, KCMONTH, DepNo ,KTID ,USPrice, USERID, USERDATE, YN)');
            SQL.Add('Values ('''+KCYEAR+''','''+KCMONTH+''','''+DepNo+''','''+KTID+''','+USPrice+','''+USERID+''','''+USERDATE+''','''+YN+''')');
            ExecSQL();
          end;
          DVTemp.Next;
        end;
        BWTemp.Next;
        //
      end;
      //Check Excel Item Format & Position have changed
      USPrice := ExcelApp.Cells[BWTemp.FieldByName('BZ').AsInteger,3].value;
      if USPrice<>BWTemp.FieldByName('YWSM').AsString then
      begin
        Showmessage('Account Excel Format haved Changed!');
      end;
      //
      ExcelApp.quit;
      bbQuery.Click;
    except
      on  F:Exception do
      begin
        ExcelApp.quit;
        showmessage(F.Message+' '+BWTemp.FieldByName('BZ').AsString+':'+DVTemp.FieldByName('BZ').AsString+' '+USPriceF);
      end;
    end;
  end;
end;
///

procedure TACKTMONTH.btImportClick(Sender: TObject);
begin

end;
///

procedure TACKTMONTH.ExportDefaultExcel();
var
  eclApp,WorkBook:olevariant;
  i,j:integer;
begin
  if  ACKT_Month.active  then
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
      for i:=0 to ACKT_Month.fieldcount-1 do
      begin
        eclApp.Cells(1,i+1):=ACKT_Month.fields[i].FieldName;
      end;

      ACKT_Month.First;
      j:=2;
      while   not   ACKT_Month.Eof   do
      begin
        for   i:=0   to  ACKT_Month.fieldcount-1  do
        begin
          eclApp.Cells(j,i+1):=ACKT_Month.Fields[i].Value;
        end;
        ACKT_Month.Next;
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

/////
function TACKTMONTH.GetUspriceByBz(bz :string) :string;
var
  Usprice : string;
begin
  with BWTemp do
  begin
    Active:=false;
    SQL.Clear;
    sql.add('select Depno,usprice from ACKTMONTH');
    sql.add('left join ACKTID on ACKTMONTH.KTID = ACKTID.KTID');
    sql.add('where Depno like ''%'+QTemp.fieldbyname('KTID').Value+'%'' ');
    sql.add('and KCYEAR ='''+cbxYear.text+''' ');
    sql.add('and KCMONTH='''+cbxMonth.text+''' ');
    sql.add('and BZ = '''+bz+''' ');
    Active:=true;
  end;
  Usprice:=BWTemp.fieldbyname('usprice').AsString;
  result:=Usprice;
end;
/////

procedure TACKTMONTH.ExportFormatExcel();
var
  eclApp,WorkBook:olevariant;
  i,s,j:integer;
  usprice1 : double;
  bz : string;
  Arr : array [0..6] of integer;
begin
  //locate columns  廠別Xuong
  Arr[0]:=4 ; Arr[1]:=7 ; Arr[2]:=10 ; Arr[3]:=13 ;
  Arr[4]:=16 ; Arr[5]:=19 ; Arr[6]:=22 ;

  with DVTemp do
  begin
    sql.Clear;
    sql.Add('select  count(memo) CountMemo,memo from ACKTID where LB = ''DV''');
    sql.Add('group by memo');
    active:=true;
  end;

  with QTemp do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select  * from ACKTID where LB = ''DV'' ');
    active:=true;
  end;

  if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
   CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Manage_SN26.xls'),Pchar(AppDir+'Additional\Manage_SN26.xls'),false);
  if FileExists(AppDir+'Additional\Manage_SN26.xls') then
  begin
    if  (ACKT_Month.RecordCount >0)  then
    begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
        QTemp.First;
        DVTemp.First;
        eclApp.WorkBooks.Open(AppDir+'Additional\Manage_SN26.xls');
        //
        for s:=1 to DVTemp.RecordCount do
        begin
          eclApp.sheets[s].cells(1,2) := ' 億 春 廠 '+ cbxYear.text +'年' +cbxMonth.text+'月 實 際 成 本 表-'+DVTemp.fieldbyname('Memo').AsString;
          for i:=0 to DVTemp.fieldbyname('CountMemo').Value-1  do
          begin
            eclApp.sheets[s].cells(5,Arr[i])  := strtofloat(GetUspriceByBz('14'));
            eclApp.sheets[s].cells(5,Arr[i]+1):= strtofloat(GetUspriceByBz('15'));
            eclApp.sheets[s].cells(7,Arr[i]+1):= strtofloat(GetUspriceByBz('16'))+strtofloat(GetUspriceByBz('17'));
            eclApp.sheets[s].cells(10,Arr[i]) := strtofloat(GetUspriceByBz('24'))+strtofloat(GetUspriceByBz('25'));
            eclApp.sheets[s].cells(11,Arr[i]) := strtofloat(GetUspriceByBz('31'));
              usprice1 :=strtofloat(GetUspriceByBz('23'))+strtofloat(GetUspriceByBz('33'))+strtofloat(GetUspriceByBz('27'));
            eclApp.sheets[s].cells(12,Arr[i]) := '=SUM('+floattostr(usprice1)+',-R'+inttostr(9)+'C' + inttostr(Arr[i]) +',-R'+ inttostr(13) +'C'+ inttostr(Arr[i])+',-R'+ inttostr(14) +'C'+ inttostr(Arr[i])+',-R'+inttostr(16) +'C'+ inttostr(Arr[i]) + ')';
            //20180713 Gia Cong chi phi
            eclApp.sheets[s].cells(18,Arr[i]) := strtofloat(GetUspriceByBz('25'));
            //
            eclApp.sheets[s].cells(23,Arr[i]) := strtofloat(GetUspriceByBz('39'))+strtofloat(GetUspriceByBz('43'))+strtofloat(GetUspriceByBz('51'));
            eclApp.sheets[s].cells(24,Arr[i]) := strtofloat(GetUspriceByBz('40'))+strtofloat(GetUspriceByBz('44'))+strtofloat(GetUspriceByBz('52'));
            eclApp.sheets[s].cells(25,Arr[i]) := strtofloat(GetUspriceByBz('41'))+strtofloat(GetUspriceByBz('45'))+strtofloat(GetUspriceByBz('53'));
            eclApp.sheets[s].cells(26,Arr[i]) := strtofloat(GetUspriceByBz('126'));
            eclApp.sheets[s].cells(27,Arr[i]) := strtofloat(GetUspriceByBz('47'))+strtofloat(GetUspriceByBz('48'))+strtofloat(GetUspriceByBz('49'));
            eclApp.sheets[s].cells(30,Arr[i]) := strtofloat(GetUspriceByBz('34'))+strtofloat(GetUspriceByBz('35'));
            eclApp.sheets[s].cells(31,Arr[i]) := strtofloat(GetUspriceByBz('120'))+strtofloat(GetUspriceByBz('121'));
            eclApp.sheets[s].cells(32,Arr[i]) := strtofloat(GetUspriceByBz('102'));
            eclApp.sheets[s].cells(33,Arr[i]) := strtofloat(GetUspriceByBz('61'))+strtofloat(GetUspriceByBz('64'))+strtofloat(GetUspriceByBz('103'))+strtofloat(GetUspriceByBz('104'))+strtofloat(GetUspriceByBz('105'));
            for j:=68 to 97 do
            begin
              eclApp.sheets[s].cells(33,Arr[i]):= eclApp.sheets[s].cells[33,Arr[i]].value + strtofloat(GetUspriceByBz(inttostr(j)));
            end;
            eclApp.sheets[s].cells(35,Arr[i]) := strtofloat(GetUspriceByBz('62'))+strtofloat(GetUspriceByBz('63'))+strtofloat(GetUspriceByBz('65'));
            eclApp.sheets[s].cells(36,Arr[i]) := strtofloat(GetUspriceByBz('66'));
            eclApp.sheets[s].cells(38,Arr[i]) := strtofloat(GetUspriceByBz('118'))+strtofloat(GetUspriceByBz('119'));
            eclApp.sheets[s].cells(39,Arr[i]) := strtofloat(GetUspriceByBz('99'));
            eclApp.sheets[s].cells(41,Arr[i]) := strtofloat(GetUspriceByBz('55'))+strtofloat(GetUspriceByBz('56'));
            eclApp.sheets[s].cells(42,Arr[i]) := strtofloat(GetUspriceByBz('57'))+strtofloat(GetUspriceByBz('58'));
            eclApp.sheets[s].cells(43,Arr[i]) := strtofloat(GetUspriceByBz('148'))+strtofloat(GetUspriceByBz('149'))+strtofloat(GetUspriceByBz('150'))+strtofloat(GetUspriceByBz('151'));
            eclApp.sheets[s].cells(44,Arr[i]) := strtofloat(GetUspriceByBz('122'))+strtofloat(GetUspriceByBz('123'));
            for j:=110 to 116 do
            begin
              eclApp.sheets[s].cells(44,Arr[i]):= eclApp.sheets[s].cells[44,Arr[i]].value + strtofloat(GetUspriceByBz(inttostr(j)));
            end;
            for j:=127 to 144 do
            begin
              eclApp.sheets[s].cells(44,Arr[i]):= eclApp.sheets[s].cells[44,Arr[i]].value + strtofloat(GetUspriceByBz(inttostr(j)));
            end;
            eclApp.sheets[s].cells(46,Arr[i]) := strtofloat(GetUspriceByBz('37'));
            QTemp.next;
          end;
          DVTemp.Next;
        end;
        //
        showmessage('Succeed');
        eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
        end;
    end;
  end;
end;

//
procedure TACKTMONTH.bbExcelClick(Sender: TObject);
begin
  if  Messagedlg(Pchar('Format Export?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
    ExportFormatExcel();
  end else
  begin
    ExportDefaultExcel();
  end;
end;

procedure TACKTMONTH.BitBtn1Click(Sender: TObject);
begin
  if  ACKT_Month.RecordCount > 0 then
  begin
    if messagedlg('Import will Delete , are you sure import',mtinformation,[mbYes,mbNo],0)=mrYes then
    begin
      ImportKTExcel();
    end;
  end else
    ImportKTExcel();
  btnQuery.Click;
end;

procedure TACKTMONTH.btnQueryClick(Sender: TObject);
var i:integer;
begin
  //
  with QTemp do
  begin
    Active:=false;
    SQL.Clear;
    SQl.Add('select KTID,YWSM from ACKTID where LB = ''DV'' and KTID like ''%'+edtDepno.Text+'%'' group by KTID,YWSM ');
    Active:=true;
  end;
  //
  with ACKT_Month do
  begin
    active:=false;
    sql.clear;
    sql.add('select KCYEAR,KCMONTH,KTID,YWSM,ZWSM ');
    while Not QTemp.Eof do
    begin
      sql.add(',Max(Case when DepNo='''+QTemp.FieldByName('KTID').AsString+''' then USPrice end ) as '''+QTemp.FieldByName('YWSM').AsString+''' ');
      QTemp.Next;
    end;
    //sql.add(',Max(USERID) as USERID,Max(USERDATE) as USERDATE ');
    sql.add('from ( ');
    sql.add('select KCYEAR,KCMONTH,DepNo,DVID.ZWSM as DV,ACKTMONTH.KTID,ACKTID.YWSM ,ACKTID.ZWSM ,USPrice,USERID,USERDATE,YN from ACKTMONTH');
    sql.add('left join ACKTID on ACKTMONTH.KTID = ACKTID.KTID');
    sql.add('left join (select *from ACKTID where LB = ''DV'') DVID on DVID.KTID = ACKTMONTH.DepNo');
    sql.add('where Depno like ''%'+edtDepno.Text+'%'' ');
    sql.add('and KCYEAR ='''+cbxYear.text+''' ');
    sql.add('and KCMONTH='''+cbxMonth.text+''' ');
    sql.add(') ACKTMONTH Group by KCYEAR,KCMONTH,KTID,YWSM,ZWSM ');
    sql.add('order by KTID ');
    active:=true;
  end;
  //Column
  DBGridEh1.Columns[0].Title.Caption:='年|Year';
  DBGridEh1.Columns[0].Width:=35;
  DBGridEh1.Columns[1].Title.Caption:='月|Month';
  DBGridEh1.Columns[1].Width:=35;
  DBGridEh1.Columns[2].Title.Caption:='項目ID|ID';
  DBGridEh1.Columns[2].Width:=35;
  DBGridEh1.Columns[3].Title.Caption:='項目中文|Item CN';
  DBGridEh1.Columns[3].Width:=100;
  DBGridEh1.Columns[4].Title.Caption:='項目越文|Item Viet';
  DBGridEh1.Columns[4].Width:=100;
  for i:=5 to ACKT_Month.Fields.Count-1 do
  begin
    DBGridEh1.Columns[i].Title.Caption:='廠別|'+ACKT_Month.Fields[i].FieldName;
    DBGridEh1.Columns[i].Width:=80;
  end;
  //
  bbExcel.Enabled:=true;
  btImport.Enabled:=true;
  //

end;

end.
