unit MatchingForm1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls, Buttons,
  ExtCtrls, comobj, OleServer, ExcelXP;

type
  TMatchingForm = class(TForm)
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
    bbt6: TBitBtn;
    bbt5: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Button1: TButton;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    Qtemp: TQuery;
    DS1: TDataSource;
    Qry: TQuery;
    Ch1: TCheckBox;
    Ch2: TCheckBox;
    Ch3: TCheckBox;
    Ch5: TCheckBox;
    Ch4: TCheckBox;
    Label4: TLabel;
    DTP3: TDateTimePicker;
    Label7: TLabel;
    DTP4: TDateTimePicker;
    CheckBox2: TCheckBox;
    CheckBox1: TCheckBox;
    NegCK: TCheckBox;
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
  private
    IsAddUnionSQL:boolean;
    { Private declarations }
    procedure AddGXLB_SQL(SB:String;GXLB:String);
  public
    { Public declarations }
  end;

var
  MatchingForm: TMatchingForm;
  NDate:TDate;

implementation
  uses FunUnit, main1;
{$R *.dfm}

procedure TMatchingForm.BB1Click(Sender: TObject);
begin
  Panel2.Visible:=true;
end;

procedure TMatchingForm.AddGXLB_SQL(SB:String;GXLB:String);
begin
  with Qry do
  begin
    if IsAddUnionSQL=true then SQL.Add('Union all ');
    SQL.add('Select SB,DDBH, CC, IsNull(Qty,0) as Quantity, DepNo from ( ');
    if NegCK.Checked then
      SQL.add('SELECT '''+SB+''' SB,DDZLS.DDBH,DDZLS.CC, isnull(sum(Convert(float,DDZLS.Quantity)),0) as Quantity, isnull(sum(Convert(float,SCBBSS.Qty)),0)-isnull(sum(Convert(float,DDZLS.Quantity)),0) as Qty,Max(SCBBSS.DepNo) as DepNo FROM DDZLS ')
    else
      SQL.add('SELECT '''+SB+''' SB,DDZLS.DDBH,DDZLS.CC, isnull(sum(Convert(float,DDZLS.Quantity)),0) as Quantity, isnull(sum(Convert(float,SCBBSS.Qty)),0) as Qty,Max(SCBBSS.DepNo) as DepNo FROM DDZLS ');
    SQL.add('left join #SCBBSSAll SCBBSS  on SCBBSS.SCBH=DDZLS.DDBH and DDZLS.CC=SCBBSS.XXCC   ');
    SQL.add('left join DDZL on DDZLS.DDBH=DDZL.DDBH ');
    SQL.add('where GXLB = '''+GXLB+'''  ');
    SQL.add('GROUP BY DDZLS.DDBH,DDZLS.CC ) SCBBSS_O ');
  end;
  IsAddUnionSQL:=true;
end;
procedure TMatchingForm.Button1Click(Sender: TObject);
var i:integer;
    GXLBStr:String;
begin
  IsAddUnionSQL:=false;
  if Ch2.Checked=true then GXLBStr:=GXLBStr+'''C'',';
  if Ch3.Checked=true then GXLBStr:=GXLBStr+'''S'',';
  if Ch4.Checked=true then GXLBStr:=GXLBStr+'''A'',';
  if Ch5.Checked=true then GXLBStr:=GXLBStr+'''O'',';
  GXLBStr:='('+Copy(GXLBStr,1,length(GXLBStr)-1)+')';
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.add('if object_id(''tempdb..#SCBBSSAll'') is not null');
    SQL.add('begin drop table #SCBBSSAll end');
    SQL.add('Select * into #SCBBSSAll from ( ');
    SQL.add('Select SCBBSS.SCBH,SCBBSS.XXCC,SCBBSS.GXLB,isnull(sum(Convert(float,SCBBSS.Qty)),0) as Qty,MAX(SCBB.DepNo) as DepNO  from SCBBSS');
    SQL.Add('left join SCBB on SCBB.ProNo=SCBBSS.ProNo ');
    SQL.add('left join DDZL on SCBBSS.SCBH=DDZL.DDBH');
    SQL.add('where 1=1 ');
    if CheckBox1.Checked=true then
    begin
      SQL.add('and  convert(smalldatetime,convert(varchar,DDZL.Shipdate,111)) between');
      SQL.add('       '''+Formatdatetime('YYYY/MM/DD',DTP1.date)+''' and  '''+Formatdatetime('YYYY/MM/DD',DTP2.date)+''' ');
    end;
    if CheckBox2.Checked=true then
    begin
      SQL.add('    and convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
      SQL.add('    '''+Formatdatetime('YYYY/MM/DD',DTP3.date)+''' and  '''+Formatdatetime('YYYY/MM/DD',DTP4.date)+'''');
    end;
    SQL.add('      and SCBBSS.GXLB in '+GXLBStr);
    SQL.add('      and SCBBSS.SCBH like '''+Edit1.Text+'%'' ');
    SQL.add('Group by SCBBSS.SCBH,SCBBSS.XXCC,SCBBSS.GXLB');
    SQL.add('union all');
    SQL.add('select SMDD.YSBH,SMDDSS.XXCC,SMDDSS.GXLB,isnull(sum(Convert(float,SMZL.CTS*SMDDSS.Qty)),0) as Qty,MAX(SMZL.DepNO) as DepNo from SMZL');
    SQL.add('left join SMDDSS on SMZL.CODEBAR=SMDDSS.CODEBAR');
    SQL.add('left join SMDD on SMDDSS.DDBH=SMDD.DDBH and SMDDSS.GXLB=SMDD.GXLB ');
    SQL.add('left join DDZL on DDZL.DDBH=SMDD.YSBH ');
    SQL.add('where 1=1 ');
    if CheckBox1.Checked=true then
    begin
      SQL.add('and  convert(smalldatetime,convert(varchar,DDZL.Shipdate,111)) between');
      SQL.add('      '''+Formatdatetime('YYYY/MM/DD',DTP2.date)+''' and  '''+Formatdatetime('YYYY/MM/DD',DTP2.date)+''' ');
      if FormatDatetime('YYYYMMDD',DTP4.Date)=FormatDatetime('YYYYMMDD',NDate) then
      begin
        SQL.Add('and convert(smalldatetime,convert(varchar,SMZL.ScanDate,111)) between  ');
        SQL.add(     ''''+Formatdatetime('YYYY/MM/DD',DTP4.date)+''' and  '''+Formatdatetime('YYYY/MM/DD',DTP4.date)+'''');
      end else
      begin
        SQL.add('and 1=2 ');
      end;
    end;
    if CheckBox2.Checked=true then
    begin
      if FormatDatetime('YYYYMMDD',DTP4.Date)=FormatDatetime('YYYYMMDD',NDate) then
      begin
        SQL.Add('and convert(smalldatetime,convert(varchar,SMZL.ScanDate,111)) between  ');
        SQL.add(     ''''+Formatdatetime('YYYY/MM/DD',DTP4.date)+''' and  '''+Formatdatetime('YYYY/MM/DD',DTP4.date)+'''');
      end else
      begin
        SQL.add('and 1=2 ');
      end;
    end;
    SQL.add('      and SMDDSS.GXLB in '+GXLBStr);
    if Edit1.Text<>'' then
      SQL.add('    and SMDDSS.DDBH like '''+Edit1.Text+'%'+''' ');
    SQL.add('Group by SMDD.YSBH,SMDDSS.XXCC,SMDDSS.GXLB ) SCBBSS ');
    //funcObj.WriteErrorLog(SQL.Text);
    ExecSQL();
  end;
  //Size Run 清單
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select Distinct CC from DDZLS where DDBH in (Select Distinct  SCBH from #SCBBSSAll)');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  //顯示報表
  with Qry do
  begin
    Qtemp.first;
    Active:=false;
    SQL.Clear;
    SQL.add('select SCBBSS.* from ( ');
    SQL.add('Select SCBBSS.DDBH, SCBBSS.SB,Max(SCBBSS.DepNo) as DepNo,Max(BDepartment.DepName) as DepName,DDZL.ARTICLE,xxzl.XieMing,xxzl.ddmh,DDZL.PAIRS,DDZL.ShipDate');
    while not Qtemp.Eof do
    begin
      SQL.add(',Max(case when CC='''+Qtemp.fieldbyname('CC').value+''' ');
      SQL.add(' then Quantity else null end) as '''+Qtemp.fieldbyname('CC').value+'''');
      Qtemp.Next;
    end;
    sql.add(',SUM(Quantity) as Total  ');
    sql.add('from ( ');
  end;
  //訂單
  with Qry do
  begin
    if Ch1.Checked=true then
    begin
      SQL.add('Select ''1.訂單'' as SB,DDZLS.DDBH,DDZLS.CC,DDZLS.Quantity,null as DepNo  ');
      SQL.add('from DDZLS ');
      SQL.add('where DDZLS.DDBH in (Select Distinct  SCBH from #SCBBSSAll)  ');
      IsAddUnionSQL:=true;
    end;
    //針車
    if ch2.Checked=true then  AddGXLB_SQL('1.裁斷','C');
    if ch3.Checked=true then  AddGXLB_SQL('2.針車','S');
    if ch4.Checked=true then  AddGXLB_SQL('3.成型','A');
    if ch5.Checked=true then  AddGXLB_SQL('4.大底','O');
    SQL.add(') SCBBSS ');
    SQL.add('left join DDZL on SCBBSS.DDBH=DDZL.DDBH ');
    SQL.add('left join BDepartment on SCBBSS.DepNo=BDepartment.ID ');
    SQL.add('left join XXZL on DDZL.xiexing = XXZL.xiexing and DDZL.shehao=XXZL.shehao ');
    SQL.add('Group by SCBBSS.DDBH, SCBBSS.SB,DDZL.ARTICLE,xxzl.XieMing,xxzl.ddmh,DDZL.PAIRS,DDZL.ShipDate ) SCBBSS ');
    SQL.add('Order by SCBBSS.DDBH,SCBBSS.SB ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  For i:=0 to DBGridEh1.Columns.Count-1  do
  begin
      DBGridEh1.Columns[i].OptimizeWidth;
  end;
  with DBGrideh1 do
   begin

    Columns[0].Width:=80;
    Columns[0].title.caption:='訂單|DDBH';
    Columns[1].Width:=40;
    Columns[1].title.caption:='項目|SB';
    Columns[2].Width:=40;
    Columns[2].title.caption:='組別|ID';
    Columns[3].Width:=95;
    Columns[3].title.caption:='組別|DepName';
    Columns[4].Width:=80;
    Columns[4].title.caption:='Art No|ARTICLE';
    Columns[5].Width:=70;
    Columns[5].title.caption:='鞋名|XieMing';
    Columns[6].Width:=70;
    Columns[6].title.caption:='大底模號|DDMH';
    Columns[7].Width:=60;
    Columns[7].title.caption:='訂單雙數|PAIRS';
    Columns[8].Width:=70;
    Columns[8].title.caption:='交期|CSD';
    end;
    BBT1.Enabled:=True;
    BBT2.Enabled:=True;
    BBT3.Enabled:=True;
    BBT4.Enabled:=True;
    BBT6.Enabled:=True;
end;

procedure TMatchingForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if BB5.enabled  then
  begin
    messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
    begin
      action:=cafree;
    end;
end;

procedure TMatchingForm.FormCreate(Sender: TObject);
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
    DTP1.Date:=now()-1;
    DTP2.Date:=now();
    DTP3.Date:=now()-1;
    DTP4.Date:=now();
  end;
end;

procedure TMatchingForm.FormDestroy(Sender: TObject);
begin
  MatchingForm:=nil
end;

procedure TMatchingForm.bbt6Click(Sender: TObject);
var
  eclApp,WorkBook:olevariant;
  i,j:integer;
begin
  if  Qry.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('炵苀羶衄假蚾Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   Qry.fieldcount-1    do
          begin
          
              eclApp.Cells(1,i+1):=Qry.fields[i].FieldName;
              eclApp.Cells.item[1,i+1].font.size:='8';
          end;
        Qry.First;
        j:=2;
        while   not   Qry.Eof   do
          begin
            for   i:=0   to   Qry.fieldcount-1   do
            begin
              eclApp.Cells(j,i+1):=Qry.Fields[i].Value;
              eclApp.Cells.item[j,i+1].font.size:='8';
            end;
          Qry.Next;
          inc(j);
          end;
     eclApp.Cells[1,1].Value := '項目';
     eclApp.Cells[1,2].Value := '訂單';
     eclApp.Cells[1,3].Value := 'Art No.';
     eclApp.Cells[1,4].Value := 'Shoe Name';
     eclApp.Cells[1,5].Value := 'Model#';
     eclApp.Cells[1,6].Value := 'SL訂單雙數';
     eclApp.Cells[1,7].Value := 'CSD';
     //eclApp.Selection.NumberFormatLocal:='@';
     eclapp.columns.autofit;
     eclapp.ActiveSheet.Columns[8].ColumnWidth:= 0;
     eclapp.ActiveSheet.Columns[9].ColumnWidth:= 0;
     showmessage('Succeed');
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TMatchingForm.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TMatchingForm.BBT1Click(Sender: TObject);
begin
  Qry.First;
end;

procedure TMatchingForm.BBT2Click(Sender: TObject);
begin
  Qry.Prior;
end;

procedure TMatchingForm.BBT3Click(Sender: TObject);
begin
  Qry.Next;
end;

procedure TMatchingForm.BBT4Click(Sender: TObject);
begin
  Qry.Last;
end;

end.
