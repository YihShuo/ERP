unit MA_Inspection_rpt1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ExtCtrls, GridsEh, DBGridEh, DBTables, ComCtrls, Comobj;

type
  TMA_Inspection_rpt = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Button1: TButton;
    Button2: TButton;
    edtLine: TEdit;
    edtRY: TEdit;
    DTP1: TDateTimePicker;
    GroupBox1: TGroupBox;
    RB1: TRadioButton;
    RB2: TRadioButton;
    EditArticle: TEdit;
    EditXuong: TEdit;
    DTP2: TDateTimePicker;
    Edit1: TEdit;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    Query1SCDate: TDateTimeField;
    Query1SCBH: TStringField;
    Query1ARTICLE: TStringField;
    Query1Model: TStringField;
    Query1Pairs: TIntegerField;
    Query1PrdQty: TSmallintField;
    Query1InsQty: TSmallintField;
    Query1DefQty: TSmallintField;
    Query1FailQty: TIntegerField;
    Query1DefectRate: TFloatField;
    Query1Result: TStringField;
    Query1PackingRate: TIntegerField;
    Query1DepName: TStringField;
    Query1Xuong: TStringField;
    Query1NO: TStringField;
    UpdateSQL1: TUpdateSQL;
    DS1: TDataSource;
    Query2: TQuery;
    Button3: TButton;
    Label8: TLabel;
    Edit2: TEdit;
    Label9: TLabel;
    Edit3: TEdit;
    Query1ywsm: TStringField;
    Query1DevType: TStringField;
    Query1UserID: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    HIorDI:String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MA_Inspection_rpt: TMA_Inspection_rpt;

implementation
  uses  MA_Inspection1, FunUnit, main1;
{$R *.dfm}

procedure TMA_Inspection_rpt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TMA_Inspection_rpt.FormDestroy(Sender: TObject);
begin
  MA_Inspection_rpt:=nil;
end;

procedure TMA_Inspection_rpt.Button1Click(Sender: TObject);
var t:integer;
begin
  if RB1.Checked then
  begin
    HIorDI:='HI';
    DBGridEh1.Columns[8].Title.Caption:='Produciton Qty';
  end else
  begin
    HIorDI:='DI';
    DBGridEh1.Columns[8].Title.Caption:='In Warehouse';
  end;
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add(' Select WOPR_MA.ID as NO,WOPR_MA.SCDate, WOPR_MA.SCBH, DDZL.ARTICLE,LBZLS.ywsm,kfxxzl.DevType,xxzl.XieMing as Model, DDZL.Pairs, WOPR_MA.PrdQty,WOPR_MA.InsQty ,WOPR_MA.DefQty,');
    SQL.Add('       Case when WOPR_MA.Result=''P'' then 0 else WOPR_MA.PrdQty end as FailQty, ');
    SQL.Add('       Round(1.00*WOPR_MA.DefQty/ WOPR_MA.InsQty,2) as DefectRate,');
    SQL.Add('       Case when WOPR_MA.Result=''P'' then ''Pass'' else ''Fail'' end  as Result,null as PackingRate,BDepartment.DepName,BDepartment.Xuong,WOPR_MA.UserID');
    SQL.Add('From WOPR_MA');
    SQL.Add('left join DDZL on DDZL.DDBH=WOPR_MA.SCBH ');
    SQL.Add('left join xxzl on xxzl.XieXing=DDZL.XieXing and xxzl.SheHao=DDZL.SheHao');
    SQL.add('left join LBZLS on LBZLS.LB=''06'' and LBZLS.LBDH=DDZL.DDGB');
    SQL.Add('left join kfxxzl ON DDZL.XieXing = kfxxzl.XieXing AND DDZL.SheHao = kfxxzl.SheHao ');
    SQL.Add('left join BDepartment on BDepartment.ID=WOPR_MA.DepNo');
    SQL.Add('where WOPR_MA.GSBH = '''+ main.Edit2.text +''' and WOPR_MA.GXLB='''+HIorDI+''' and  CONVERT(varchar(10),WOPR_MA.SCDate,111) between ''' + formatdatetime('yyyy/MM/dd', DTP1.date) + ''' and ''' + formatdatetime('yyyy/MM/dd', DTP2.date) + ''' ');

    if edtLine.Text<>'' then
      SQL.Add('  and BDepartment.DepName like ''%'+edtLine.Text+'_G%'' ');
    if EditXuong.Text<>'' then
      SQL.Add('  and BDepartment.Xuong like ''%'+EditXuong.Text+'%'' ');
    if edtRY.Text<>'' then
      SQL.Add('  and WOPR_MA.SCBH like '''+edtRY.Text+'%'' ');
    if EditArticle.Text<>'' then
      SQL.Add('  and DDZL.Article like ''%'+EditArticle.Text+'%'' ');
    if Edit1.Text<>'' then
      SQL.Add('  and xxzl.XieMing like ''%'+Edit1.Text+'%'' ');
    if Edit2.Text<>'' then
      SQL.Add('  and LBZLS.ywsm like ''%'+Edit2.Text+'%'' ');
    if Edit3.Text<>'' then
      SQL.Add('  and kfxxzl.DevType like ''%'+Edit3.Text+'%'' ');
    SQL.Add('  and WOPR_MA.PrdQty<>0 ');
    SQL.Add('order by WOPR_MA.ID,WOPR_MA.SCDate');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;

end;

procedure TMA_Inspection_rpt.FormCreate(Sender: TObject);
begin
  DTP1.Date:=Date();
  DTP2.Date:=Date();  
end;

procedure TMA_Inspection_rpt.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j,Pass,Fail:integer;
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
    for   i:=1   to   Query1.fieldcount   do
    begin
      eclApp.Cells(1,i):=DBGridEh1.Columns[i-1].Title.Caption;
    end;
    Query1.First;
    j:=2;
    Pass:=0;
    Fail:=0;
    eclApp.ActiveSheet.Columns[18].NumberFormatLocal := '@';
    while   not  Query1.Eof   do
    begin
        //eclApp.Cells(j,1):=HIorDI+Format('%.5d',[j-1]);
        for   i:=1   to   Query1.fieldcount   do
        begin
            eclApp.Cells(j,i):=DBGridEh1.Fields[i-1].Value;
        end;
        if Query1.FieldByName('Result').AsString ='Pass' then
          Pass:=Pass+1;
        if Query1.FieldByName('Result').AsString ='Fail' then
          Fail:=Fail+1;
        Query1.Next;
        inc(j);
    end;
    eclApp.ActiveSheet.Columns[13].NumberFormatLocal := '0.00%';
    //
    eclApp.Cells(j,1):='Total';
    eclApp.Cells(j,8):='=SUM(H2:H'+inttostr(j-1)+')';
    eclApp.Cells(j,9):='=SUM(I2:I'+inttostr(j-1)+')';
    eclApp.Cells(j,10):='=SUM(J2:J'+inttostr(j-1)+')';
    eclApp.Cells(j,11):='=SUM(K2:K'+inttostr(j-1)+')';
    eclApp.Cells(j,12):='=SUM(L2:L'+inttostr(j-1)+')';
    eclApp.Cells(j,13):='=K'+inttostr(j)+'/J'+inttostr(j);
    eclApp.Cells(j,14):=Pass+Fail;
    eclApp.Cells(j+1,1):='Fail report qty';
    eclApp.Cells(j+1,14):=Fail;
    eclApp.Cells(j+2,1):='Pass report qty';
    eclApp.Cells(j+2,14):=Pass;
    eclApp.Cells(j+3,1):='Pass rate';
    eclApp.Cells(j+3,14):=Pass/(Pass+Fail);
    eclApp.Cells[j+3,14].NumberFormatLocal := '0.00%';
    eclApp.Cells(j,15):='=L'+inttostr(j)+'/I'+inttostr(j);
    eclApp.Cells[j,15].NumberFormatLocal := '0.00%';
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;

procedure TMA_Inspection_rpt.Button3Click(Sender: TObject);
var
  eclApp,WorkBook:olevariant;
  i,j,t,RowPos,RowPos1:integer;
  PartALl,TenLoi:string;
  picture : OleVariant;
  workRange : OleVariant;
  workSheet : OleVariant;
  checkshoePic,checkshoePic1,checkshoePic2,NameTable,Maloi1,Maloi2,Maloi3 : string;
begin
  if RB1.Checked then
  begin
    HIorDI:='HI';
  end else
  begin
    HIorDI:='DI';
  end;
  with Query2 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select WOPR_MA.ID');
    SQL.Add('From WOPR_MA');
    SQL.Add('where 1=1 and WOPR_MA.GXLB='''+HIorDI+'''');
    SQL.Add('  and WOPR_MA.ID = '''+Query1.fieldbyname('NO').AsString+''' '); 
    SQL.Add('and  CONVERT(varchar(10),WOPR_MA.SCDate,111) between ''' + formatdatetime('yyyy/MM/dd', DTP1.date) + ''' and ''' + formatdatetime('yyyy/MM/dd', DTP2.date) + ''' ');
    SQL.Add('group by WOPR_MA.ID');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
    if  Query1.active  then
    begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
        WorkBook := eclApp.workbooks.Add;
        eclApp.Cells(1,1):=Query1.fieldbyname('SCDate').AsString+'  '+Query1.fieldbyname('SCBH').AsString+'  '+Query1.fieldbyname('ARTICLE').AsString+'  '+Query1.fieldbyname('DepName').AsString;
        eclApp.Cells(2,1):='NO';
        Maloi1:='';
        Maloi2:='';
        Maloi3:='';
        j:=3;
        Query2.First;
        for i:=0 to Query2.RecordCount-1 do
        begin
          eclApp.Cells(j,1):=j-2;
          //eclApp.Cells(j,2):=Query1.FieldByName('zwsm').value;
          Maloi1:=Query2.FieldByName('ID').Asstring+'_1'+'.jpg';
          Maloi2:=Query2.FieldByName('ID').Asstring+'_2'+'.jpg';
          Maloi3:=Query2.FieldByName('ID').Asstring+'_3'+'.jpg';
          if HIorDI='DI' then
          begin
            checkshoePic:='\\192.168.123.112\kcs\ERP_ATTACHMENT\MA\DI\'+Maloi1;
            checkshoePic1:='\\192.168.123.112\kcs\ERP_ATTACHMENT\MA\DI\'+Maloi2;
            checkshoePic2:='\\192.168.123.112\kcs\ERP_ATTACHMENT\MA\DI\'+Maloi3;
          end else
          begin
            checkshoePic:='\\192.168.123.112\kcs\ERP_ATTACHMENT\MA\HI\'+Maloi1;
            checkshoePic1:='\\192.168.123.112\kcs\ERP_ATTACHMENT\MA\HI\'+Maloi2;
            checkshoePic2:='\\192.168.123.112\kcs\ERP_ATTACHMENT\MA\HI\'+Maloi3;
          end;
          funcObj.WriteErrorLog(checkshoePic);
          funcObj.WriteErrorLog(checkshoePic1);
          funcObj.WriteErrorLog(checkshoePic2);
          if FileExists(checkshoePic)=true then
          begin
            workSheet := workBook.WorkSheets[1];
            eclApp.WorkSheets[1].Activate;
            workSheet.Select;
            workRange :=workSheet.Range[workSheet.Cells.Item[j,i+2],workSheet.Cells.item[j,i+2]];
            picture := workSheet.pictures.Insert(StringReplace(checkshoePic,'H:','\\192.168.123.112\kcs\ERP_ATTACHMENT\MA', [rfReplaceAll, rfIgnoreCase]));
            picture.left := workRange.left + 1;
            picture.top := workRange.top + 1;
            picture.width := workRange.width - 2;
            picture.height := workRange.height - 2;
            picture.height := 30;
            picture := Unassigned;
            //t:=t+3;
          end;
          if FileExists(checkshoePic1)=true then
          begin
            workSheet := workBook.WorkSheets[1];
            eclApp.WorkSheets[1].Activate;
            workSheet.Select;
            workRange :=workSheet.Range[workSheet.Cells.Item[j,i+3],workSheet.Cells.item[j,i+3]];
            picture := workSheet.pictures.Insert(StringReplace(checkshoePic1,'H:','\\192.168.123.112\kcs\ERP_ATTACHMENT\MA', [rfReplaceAll, rfIgnoreCase]));
            picture.left := workRange.left + 1;
            picture.top := workRange.top + 1;
            picture.width := workRange.width - 2;
            picture.height := workRange.height - 2;
            picture.height := 30;
            picture := Unassigned;
            //t:=t+2;
          end;
          if FileExists(checkshoePic2)=true then
          begin
            workSheet := workBook.WorkSheets[1];
            eclApp.WorkSheets[1].Activate;
            workSheet.Select;
            workRange :=workSheet.Range[workSheet.Cells.Item[j,i+4],workSheet.Cells.item[j,i+4]];
            picture := workSheet.pictures.Insert(StringReplace(checkshoePic2,'H:','\\192.168.123.112\kcs\ERP_ATTACHMENT\MA', [rfReplaceAll, rfIgnoreCase]));
            picture.left := workRange.left + 1;
            picture.top := workRange.top + 1;
            picture.width := workRange.width - 2;
            picture.height := workRange.height - 2;
            picture.height := 30;
            picture := Unassigned;
            //t:=t+2;
          end;
          Inc(j);
          Query2.Next;
        end;
        //eclapp.columns.autofit;
        showmessage('Succeed.');
        eclApp.Visible:=True;
        Query1.Active:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
  end else
  begin
    showmessage('File Sticker2 not exists');
  end;

end;

end.
