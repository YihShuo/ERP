unit MA_Repacking1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, Buttons,
  ComCtrls, DBCtrls, Mask, Menus, ExtDlgs,comobj,jpeg,FunUnit;

type
  TMA_Repacking = class(TForm)
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
    DS1: TDataSource;
    Label8: TLabel;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    Query2: TQuery;
    Button3: TButton;
    Excel2: TQuery;
    Query1SCDate: TDateTimeField;
    Query1SCBH: TStringField;
    Query1ID: TStringField;
    Query1ARTICLE: TStringField;
    Query1XieMing: TStringField;
    Query1DepName: TStringField;
    Query1YWSM: TStringField;
    Query1ZWSM: TStringField;
    Query1Qty: TSmallintField;
    Query1DefQty: TSmallintField;
    Query1InsQty: TSmallintField;
    Query1Result: TStringField;
    Button4: TButton;
    Image2: TImage;
    Label9: TLabel;
    Edit3: TEdit;
    ComboBox1: TComboBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Label10: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
    HIorDI:String;
  public
    { Public declarations }
  end;

var
  MA_Repacking: TMA_Repacking;

implementation

uses main1;

{$R *.dfm}

procedure TMA_Repacking.Button1Click(Sender: TObject);
var t:integer;
begin
  if RB1.Checked then
  begin
    HIorDI:='HI';
    //DBGridEh1.Columns[6].Title.Caption:='Produciton Qty';
  end else
  begin
    HIorDI:='DI';
    //DBGridEh1.Columns[6].Title.Caption:='In Warehouse';
  end;
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select WOPR_MA.SCDate,WOPR_MA.SCBH,WOPR_MA.ID,WOPR_MA.Result ,DDZL.ARTICLE,xxzl.XieMing,BDepartment.DepName,QCMAYY.YWSM,QCMAYY.ZWSM,sum (QCMAD.Qty) as Qty, WOPR_MA.DefQty ,WOPR_MA.InsQty');
    SQL.Add('From QCMA');
    if CheckBox3.Checked=true then
      SQL.Add('left join WOPR_MA on QCMA.SCBH=WOPR_MA.SCBH and QCMA.SCDate=WOPR_MA.SCDate and WOPR_MA.GXLB=QCMA.GXLB and WOPR_MA.SJXH=QCMA.SJXH and WOPR_MA.DepNo=QCMA.DepNo')
    else
      SQL.Add('left join WOPR_MA on QCMA.ID=WOPR_MA.ID and QCMA.SCBH=WOPR_MA.SCBH and QCMA.SCDate=WOPR_MA.SCDate and WOPR_MA.GXLB=QCMA.GXLB and WOPR_MA.SJXH=QCMA.SJXH and WOPR_MA.DepNo=QCMA.DepNo ');
    SQL.Add('left join  QCMAD on QCMA.ProNo=QCMAD.ProNo');
    SQL.Add('left join QCMAYY on QCMAYY.YYBH=QCMAD.YYBH');
    SQL.Add('left join DDZL on DDZL.DDBH=WOPR_MA.SCBH ');
    SQL.Add('left join xxzl on xxzl.XieXing=DDZL.XieXing and xxzl.SheHao=DDZL.SheHao');
    SQL.Add('left join BDepartment on BDepartment.ID=WOPR_MA.DepNo');
    SQL.Add('where 1=1 and WOPR_MA.GXLB='''+HIorDI+''' and WOPR_MA.GSBH = '''+ main.Edit2.text +'''  ');
    SQL.Add('  and WOPR_MA.PrdQty<>0 ');
    if CheckBox2.Checked then
      SQL.Add('and WOPR_MA.Result= '''+ComboBox1.Text+''' ');
    if (Edit2.Text<>'') then
      SQL.Add('  and WOPR_MA.ID like ''%'+Edit2.Text+'%'' ');
    if (edtRY.Text<>'') then
      SQL.Add('  and WOPR_MA.SCBH like ''%'+edtRY.Text+'%'' ');

    if CheckBox1.Checked=true then
      SQL.Add('and  CONVERT(varchar(10),WOPR_MA.SCDate,111) between ''' + formatdatetime('yyyy/MM/dd', DTP1.date) + ''' and ''' + formatdatetime('yyyy/MM/dd', DTP2.date) + ''' ');
    if edtLine.Text<>'' then
      SQL.Add('  and BDepartment.DepName like ''%'+edtLine.Text+'%'' ');
    if EditXuong.Text<>'' then
      SQL.Add('  and BDepartment.Xuong = '''+EditXuong.Text+''' ');
    if EditArticle.Text<>'' then
      SQL.Add('  and DDZL.Article like ''%'+EditArticle.Text+'%'' ');
    if Edit1.Text<>'' then
      SQL.Add('  and xxzl.XieMing like ''%'+Edit1.Text+'%'' ');
    if Edit3.Text<>'' then
      SQL.Add('  and QCMAYY.YYBH like ''%'+Edit3.Text+'%'' ');

    SQL.Add('group by WOPR_MA.SCDate,WOPR_MA.SCBH,WOPR_MA.ID,WOPR_MA.Result ,DDZL.ARTICLE,xxzl.XieMing,BDepartment.DepName,QCMAYY.YWSM,QCMAYY.ZWSM, WOPR_MA.DefQty ,WOPR_MA.InsQty');
    SQL.Add('order by WOPR_MA.ID');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

procedure TMA_Repacking.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TMA_Repacking.FormDestroy(Sender: TObject);
begin
  MA_Repacking:=nil;
end;

procedure TMA_Repacking.FormCreate(Sender: TObject);
begin
  DTP1.Date:=Date();
  DTP2.Date:=Date();
end;

procedure TMA_Repacking.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j,k,Pass,Fail:integer;
    NameTable:string;
begin
  with Query2 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select YWSM,Qty from (');
    SQL.Add('select QCMAYY.YWSM,sum (QCMAD.Qty) as Qty');
    SQL.Add('From WOPR_MA');
    if CheckBox3.Checked=true then
      SQL.Add('left join QCMA on QCMA.SCBH=WOPR_MA.SCBH and QCMA.SCDate=WOPR_MA.SCDate and WOPR_MA.GXLB=QCMA.GXLB and WOPR_MA.SJXH=QCMA.SJXH and WOPR_MA.DepNo=QCMA.DepNo')
    else
      SQL.Add('left join QCMA on QCMA.ID=WOPR_MA.ID and QCMA.SCBH=WOPR_MA.SCBH and QCMA.SCDate=WOPR_MA.SCDate and WOPR_MA.GXLB=QCMA.GXLB and WOPR_MA.SJXH=QCMA.SJXH and WOPR_MA.DepNo=QCMA.DepNo ');
    SQL.Add('left join  QCMAD on QCMA.ProNo=QCMAD.ProNo');
    SQL.Add('left join QCMAYY on QCMAYY.YYBH=QCMAD.YYBH');
    SQL.Add('left join DDZL on DDZL.DDBH=WOPR_MA.SCBH ');
    SQL.Add('left join xxzl on xxzl.XieXing=DDZL.XieXing and xxzl.SheHao=DDZL.SheHao');
    SQL.Add('left join BDepartment on BDepartment.ID=WOPR_MA.DepNo');
    SQL.Add('where 1=1 and WOPR_MA.GXLB='''+HIorDI+''' and  WOPR_MA.Result=''F'' and WOPR_MA.GSBH = '''+ main.Edit2.text +'''');
    SQL.Add('  and WOPR_MA.PrdQty<>0 ');
    if (Edit2.Text<>'') then
      SQL.Add('  and WOPR_MA.ID like ''%'+Edit2.Text+'%'' ');

    if (edtRY.Text<>'') then
      SQL.Add('  and WOPR_MA.SCBH like ''%'+edtRY.Text+'%'' ');
    if CheckBox1.Checked=true then
      SQL.Add('and  CONVERT(varchar(10),WOPR_MA.SCDate,111) between ''' + formatdatetime('yyyy/MM/dd', DTP1.date) + ''' and ''' + formatdatetime('yyyy/MM/dd', DTP2.date) + ''' ');
    if edtLine.Text<>'' then
      SQL.Add('  and BDepartment.DepName like ''%'+edtLine.Text+'%'' ');
    if EditXuong.Text<>'' then
      SQL.Add('  and BDepartment.Xuong = '''+EditXuong.Text+''' ');
    if EditArticle.Text<>'' then
      SQL.Add('  and DDZL.Article like ''%'+EditArticle.Text+'%'' ');
    if Edit1.Text<>'' then
      SQL.Add('  and xxzl.XieMing like ''%'+Edit1.Text+'%'' ');
    if Edit3.Text<>'' then
      SQL.Add('  and QCMAYY.YYBH like ''%'+Edit3.Text+'%'' ');


    SQL.Add('group by QCMAYY.YWSM');
    SQL.Add(' ) WOPR group by YWSM,Qty order by Qty desc');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
    NameTable:=formatdatetime('yyyy/MM/dd',DTP1.date)+'-'+formatdatetime('yyyy/MM/dd', DTP2.date)+'  '+edtLine.Text+'  '+EditXuong.Text+'  '+ EditArticle.Text+'  '+Edit1.Text+'  '+edtRY.Text+'  '+Edit2.Text
  end;

  with Excel2 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select sum (WOPR_MA.PrdQty) as FailQty from ( select WOPR_MA.ID,WOPR_MA.PrdQty');
    SQL.Add('From WOPR_MA');
    if CheckBox3.Checked=true then
      SQL.Add('left join QCMA on QCMA.SCBH=WOPR_MA.SCBH and QCMA.SCDate=WOPR_MA.SCDate and WOPR_MA.GXLB=QCMA.GXLB and WOPR_MA.SJXH=QCMA.SJXH and WOPR_MA.DepNo=QCMA.DepNo')
    else
      SQL.Add('left join QCMA on QCMA.ID=WOPR_MA.ID and QCMA.SCBH=WOPR_MA.SCBH and QCMA.SCDate=WOPR_MA.SCDate and WOPR_MA.GXLB=QCMA.GXLB and WOPR_MA.SJXH=QCMA.SJXH and WOPR_MA.DepNo=QCMA.DepNo ');
    SQL.Add('left join  QCMAD on QCMA.ProNo=QCMAD.ProNo');
    SQL.Add('left join QCMAYY on QCMAYY.YYBH=QCMAD.YYBH');
    SQL.Add('left join DDZL on DDZL.DDBH=WOPR_MA.SCBH ');
    SQL.Add('left join xxzl on xxzl.XieXing=DDZL.XieXing and xxzl.SheHao=DDZL.SheHao');
    SQL.Add('left join BDepartment on BDepartment.ID=WOPR_MA.DepNo');
    SQL.Add('where 1=1 and WOPR_MA.GXLB='''+HIorDI+''' and WOPR_MA.Result=''F'' and WOPR_MA.GSBH = '''+ main.Edit2.text +''' ');
    SQL.Add('  and WOPR_MA.PrdQty<>0 ');
    if (Edit2.Text<>'') then
    begin
      SQL.Add('  and WOPR_MA.ID like ''%'+Edit2.Text+'%'' ');
    end;
    if (edtRY.Text<>'') then
    begin
      SQL.Add('  and WOPR_MA.SCBH like ''%'+edtRY.Text+'%'' ');
    end;
    if CheckBox1.Checked=true then
      SQL.Add('and  CONVERT(varchar(10),WOPR_MA.SCDate,111) between ''' + formatdatetime('yyyy/MM/dd', DTP1.date) + ''' and ''' + formatdatetime('yyyy/MM/dd', DTP2.date) + ''' ');
    if edtLine.Text<>'' then
      SQL.Add('  and BDepartment.DepName like ''%'+edtLine.Text+'%'' ');
    if EditXuong.Text<>'' then
      SQL.Add('  and BDepartment.Xuong = '''+EditXuong.Text+''' ');
    if EditArticle.Text<>'' then
      SQL.Add('  and DDZL.Article like ''%'+EditArticle.Text+'%'' ');
    if Edit1.Text<>'' then
      SQL.Add('  and xxzl.XieMing like ''%'+Edit1.Text+'%'' ');
      //if Edit3.Text<>'' then

    SQL.Add('group by WOPR_MA.ID,WOPR_MA.PrdQty ) WOPR_MA');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;

  if Query2.Active then
  begin
    if (Query2.recordcount=0) and (Query1.recordcount=0) then
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
    eclApp.Cells(2,1):='NO';
    eclApp.Cells(2,2):='Repacking Defect Name ';
    eclApp.Cells(2,3):='Repacking Defect Qty';
    eclApp.Cells(2,4):='All Repacking Qty';
    eclApp.Cells(2,5):='Repacking Defect Qty/ All Repacking Qty';
    eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[1,5]].merge;
    eclApp.Cells(1,1):=NameTable;
    Query2.First;
    j:=3;
    //Pass:=0;
    //Fail:=0;
    while   not  Query2.Eof   do
    begin
        eclApp.Cells(j,1):=j-2;
        for   i:=0   to   Query2.fieldcount-1   do
        begin
            eclApp.Cells(j,i+2):=Query2.Fields[i].Value;
            eclApp.Cells(j,4):=Excel2.FieldByName('FailQty').AsString;
            eclApp.Cells(j,5):='=C'+inttostr(j)+'/D'+inttostr(j);
            eclApp.Cells[j,5].NumberFormatLocal := '0.00%';
        end;
        Query2.Next;
        inc(j);
    end;
    for k:=1 to 4 do
    begin
      eclApp.range[eclApp.cells[1,1],eclApp.cells[j-1,5]].borders[k].linestyle:=1;
    end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;

procedure TMA_Repacking.Button3Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j,k,Pass,Fail,Qty1:integer;
    NameTable,Qty2:string;
begin
  with Query2 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select QCMAYY.YWSM,sum (QCMAD.Qty) as SLloi');
    SQL.Add('From WOPR_MA');
    if CheckBox3.Checked=true then
      SQL.Add('left join QCMA on QCMA.SCBH=WOPR_MA.SCBH and QCMA.SCDate=WOPR_MA.SCDate and WOPR_MA.GXLB=QCMA.GXLB and WOPR_MA.SJXH=QCMA.SJXH and WOPR_MA.DepNo=QCMA.DepNo')
    else
      SQL.Add('left join QCMA on QCMA.ID=WOPR_MA.ID and QCMA.SCBH=WOPR_MA.SCBH and QCMA.SCDate=WOPR_MA.SCDate and WOPR_MA.GXLB=QCMA.GXLB and WOPR_MA.SJXH=QCMA.SJXH and WOPR_MA.DepNo=QCMA.DepNo ');
    SQL.Add('left join  QCMAD on QCMA.ProNo=QCMAD.ProNo');
    SQL.Add('left join QCMAYY on QCMAYY.YYBH=QCMAD.YYBH');
    SQL.Add('left join DDZL on DDZL.DDBH=WOPR_MA.SCBH ');
    SQL.Add('left join xxzl on xxzl.XieXing=DDZL.XieXing and xxzl.SheHao=DDZL.SheHao');
    SQL.Add('left join BDepartment on BDepartment.ID=WOPR_MA.DepNo');
    SQL.Add('where 1=1 and WOPR_MA.GXLB='''+HIorDI+''' and WOPR_MA.GSBH = '''+ main.Edit2.text +'''');
    SQL.Add('  and WOPR_MA.PrdQty<>0 ');
    if (Edit2.Text<>'') then
      SQL.Add('  and WOPR_MA.ID like ''%'+Edit2.Text+'%'' ');
    if (edtRY.Text<>'') then
      SQL.Add('  and WOPR_MA.SCBH like ''%'+edtRY.Text+'%'' ');

    if CheckBox1.Checked=true then
      SQL.Add('and  CONVERT(varchar(10),WOPR_MA.SCDate,111) between ''' + formatdatetime('yyyy/MM/dd', DTP1.date) + ''' and ''' + formatdatetime('yyyy/MM/dd', DTP2.date) + ''' ');
    if edtLine.Text<>'' then
      SQL.Add('  and BDepartment.DepName like ''%'+edtLine.Text+'%'' ');
    if EditXuong.Text<>'' then
      SQL.Add('  and BDepartment.Xuong = '''+EditXuong.Text+''' ');
    if EditArticle.Text<>'' then
      SQL.Add('  and DDZL.Article like ''%'+EditArticle.Text+'%'' ');
    if Edit1.Text<>'' then
      SQL.Add('  and xxzl.XieMing like ''%'+Edit1.Text+'%'' ');
    if Edit3.Text<>'' then
      SQL.Add('  and QCMAYY.YYBH like ''%'+Edit3.Text+'%'' ');

    SQL.Add('group by QCMAYY.YWSM order by SLloi desc');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
    NameTable:=formatdatetime('yyyy/MM/dd',DTP1.date)+'-'+formatdatetime('yyyy/MM/dd', DTP2.date)+'  '+edtLine.Text+'  '+EditXuong.Text+'  '+ EditArticle.Text+'  '+Edit1.Text+'  '+edtRY.Text+'  '+Edit2.Text
  end;

  with Excel2 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select sum (WOPR_MA.InsQty) as InsQty');
    SQL.Add('From WOPR_MA');
    //SQL.Add('inner join QCMA on QCMA.SCBH=WOPR_MA.SCBH and WOPR_MA.SCDate=QCMA.SCDate and WOPR_MA.GXLB=QCMA.GXLB and WOPR_MA.SJXH=QCMA.SJXH and WOPR_MA.DepNo=QCMA.DepNo');
    //SQL.Add('inner join  QCMAD on QCMA.ProNo=QCMAD.ProNo');
    //SQL.Add('inner join QCMAYY on QCMAYY.YYBH=QCMAD.YYBH');
    SQL.Add('left join DDZL on DDZL.DDBH=WOPR_MA.SCBH ');
    SQL.Add('left join xxzl on xxzl.XieXing=DDZL.XieXing and xxzl.SheHao=DDZL.SheHao');
    SQL.Add('left join BDepartment on BDepartment.ID=WOPR_MA.DepNo');
    SQL.Add('where 1=1 and WOPR_MA.GXLB='''+HIorDI+'''');
    SQL.Add('  and WOPR_MA.PrdQty<>0 ');
    if (Edit2.Text<>'') then
    begin
      SQL.Add('  and WOPR_MA.ID like ''%'+Edit2.Text+'%'' ');
    end;
    if (edtRY.Text<>'') then
    begin
      SQL.Add('  and WOPR_MA.SCBH like ''%'+edtRY.Text+'%'' ');
    end;
    if CheckBox1.Checked=true then
      SQL.Add('and  CONVERT(varchar(10),WOPR_MA.SCDate,111) between ''' + formatdatetime('yyyy/MM/dd', DTP1.date) + ''' and ''' + formatdatetime('yyyy/MM/dd', DTP2.date) + ''' ');
    if edtLine.Text<>'' then
      SQL.Add('  and BDepartment.DepName like ''%'+edtLine.Text+'%'' ');
    if EditXuong.Text<>'' then
      SQL.Add('  and BDepartment.Xuong = '''+EditXuong.Text+''' ');
    if EditArticle.Text<>'' then
      SQL.Add('  and DDZL.Article like ''%'+EditArticle.Text+'%'' ');
    if Edit1.Text<>'' then
      SQL.Add('  and xxzl.XieMing like ''%'+Edit1.Text+'%'' ');
      //if Edit3.Text<>'' then
        //SQL.Add('  and QCMAYY.YYBH like ''%'+Edit3.Text+'%'' ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  if Query2.Active then
  begin
    if (Query2.recordcount=0) or (Query1.recordcount=0) then
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
    eclApp.Cells(2,1):='NO';
    eclApp.Cells(2,2):='Defect name';
    eclApp.Cells(2,3):='Defect qty';
    eclApp.Cells(2,4):='All Inspection Qty';
    eclApp.Cells(2,5):='Defect Qty/All Inspection Qty';
    eclApp.Cells(2,6):='Defect Qty/All Defect Qty';
    eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[1,6]].merge;
    eclApp.Cells(1,1):=NameTable;
    Query2.First;
    Excel2.First;
    j:=3;
    Pass:=0;
    Fail:=0;
    Qty1:=Query2.RecordCount+3;
    while   not  Query2.Eof   do
    begin
        eclApp.Cells(j,1):=j-2;
        for   i:=0   to   Query2.fieldcount-1   do
        begin
            eclApp.Cells(j,i+2):=Query2.Fields[i].Value;
            eclApp.Cells(j,i+3):=Excel2.FieldByName('InsQty').AsString;
            eclApp.Cells(j,5):='=C'+inttostr(j)+'/D'+inttostr(j);
            eclApp.Cells[j,5].NumberFormatLocal := '0.00%';
            eclApp.Cells[j,6]:='=C'+inttostr(j)+'/C'+inttostr(Qty1);
            eclApp.Cells[j,6].NumberFormatLocal := '0.00%';
        end;
        Query2.Next;
        inc(j);
    end;
    eclApp.Cells(j,2):='Total';
    eclApp.Cells(j,3):='=SUM(C2:C'+inttostr(j-1)+')';
    eclApp.Cells(j,4):=Excel2.FieldByName('InsQty').AsString;
    eclApp.Cells(j,5):='=C'+inttostr(j)+'/D'+inttostr(j);
    eclApp.Cells[j,5].NumberFormatLocal := '0.00%';
    for k:=1 to 4 do
    begin
      eclApp.range[eclApp.cells[1,1],eclApp.cells[j,6]].borders[k].linestyle:=1;
    end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;

procedure TMA_Repacking.Button4Click(Sender: TObject);
var eclApp,WorkBook,OlePropertyGet:olevariant;
    i,j,k,Pass,Fail,Qty1:integer;
    NameTable,Maloi1,Maloi2,Maloi3,Maloi4,Maloi5:string;
    picture : OleVariant;
    workRange : OleVariant;
    workSheet : OleVariant;
    checkshoePic,checkshoePic1,checkshoePic2,checkshoePic3,checkshoePic4 : string;
begin
  with Query2 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select QCMAYY.ZWSM,QCMAYY.YWSM,WOPR_MA.SCBH,QCMAD.Qty,WOPR_MA.ID,(QCMAD.ProNo+''_''+QCMAD.YYBH) as Prono');
    SQL.Add('From QCMA');
    if CheckBox3.Checked=true then
      SQL.Add('left join WOPR_MA on QCMA.SCBH=WOPR_MA.SCBH and QCMA.SCDate=WOPR_MA.SCDate and WOPR_MA.GXLB=QCMA.GXLB and WOPR_MA.SJXH=QCMA.SJXH and WOPR_MA.DepNo=QCMA.DepNo')
    else
      SQL.Add('left join WOPR_MA on QCMA.ID=WOPR_MA.ID and QCMA.SCBH=WOPR_MA.SCBH and QCMA.SCDate=WOPR_MA.SCDate and WOPR_MA.GXLB=QCMA.GXLB and WOPR_MA.SJXH=QCMA.SJXH and WOPR_MA.DepNo=QCMA.DepNo ');
    SQL.Add('left join  QCMAD on QCMA.ProNo=QCMAD.ProNo');
    SQL.Add('left join QCMAYY on QCMAYY.YYBH=QCMAD.YYBH');
    SQL.Add('left join DDZL on DDZL.DDBH=WOPR_MA.SCBH ');
    SQL.Add('left join xxzl on xxzl.XieXing=DDZL.XieXing and xxzl.SheHao=DDZL.SheHao');
    SQL.Add('left join BDepartment on BDepartment.ID=WOPR_MA.DepNo');
    SQL.Add('where 1=1 and WOPR_MA.GXLB='''+HIorDI+''' and WOPR_MA.GSBH = '''+ main.Edit2.text +''' ');
    SQL.Add('  and WOPR_MA.PrdQty<>0 ');
    if (Edit2.Text<>'') then
      SQL.Add('  and WOPR_MA.ID like ''%'+Edit2.Text+'%'' ');
    if (edtRY.Text<>'') then
      SQL.Add('  and WOPR_MA.SCBH like ''%'+edtRY.Text+'%'' ');
    if CheckBox1.Checked=true then
      SQL.Add('and  CONVERT(varchar(10),WOPR_MA.SCDate,111) between ''' + formatdatetime('yyyy/MM/dd', DTP1.date) + ''' and ''' + formatdatetime('yyyy/MM/dd', DTP2.date) + ''' ');
    if edtLine.Text<>'' then
      SQL.Add('  and BDepartment.DepName like ''%'+edtLine.Text+'%'' ');
    if EditXuong.Text<>'' then
      SQL.Add('  and BDepartment.Xuong = '''+EditXuong.Text+''' ');
    if EditArticle.Text<>'' then
      SQL.Add('  and DDZL.Article like ''%'+EditArticle.Text+'%'' ');
    if Edit1.Text<>'' then
      SQL.Add('  and xxzl.XieMing like ''%'+Edit1.Text+'%'' ');
    if Edit3.Text<>'' then
      SQL.Add('  and QCMAYY.YYBH like ''%'+Edit3.Text+'%'' ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
    NameTable:=formatdatetime('yyyy/MM/dd',DTP1.date)+'-'+formatdatetime('yyyy/MM/dd', DTP2.date)+'  '+edtLine.Text+'  '+EditXuong.Text+'  '+ EditArticle.Text+'  '+Edit1.Text+'  '+edtRY.Text+'  '+Edit2.Text
  end;

  if Query2.Active then
  begin
    if (Query2.recordcount=0) or (Query1.recordcount=0) then
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
    eclApp.Cells(2,1):='NO';
    eclApp.Cells(2,2):='ID Report';
    eclApp.Cells(2,3):='Defect Name';
    eclApp.Cells(2,4):='Defect Name';
    eclApp.Cells(2,5):='Qty';
    eclApp.Cells(2,6):='Defect Photo';
    eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[1,7]].merge;
    eclApp.Cells(1,1):=NameTable;
    Query2.First;
    j:=3;
    while   not  Query2.Eof   do
    begin
        eclApp.Cells(j,1):=j-2;
        for   i:=0   to   Query2.fieldcount-1   do
        begin
          eclApp.Cells(j,2):=Query2.Fields[4].Value;
          eclApp.Cells(j,3):=Query2.Fields[0].Value;
          eclApp.Cells(j,4):=Query2.Fields[1].Value;
          eclApp.Cells(j,5):=Query2.Fields[3].Value;
          Maloi1:=Query2.FieldByName('Prono').Asstring+'_1'+'.jpg';
          Maloi2:=Query2.FieldByName('Prono').Asstring+'_2'+'.jpg';
          Maloi3:=Query2.FieldByName('Prono').Asstring+'_3'+'.jpg';
          Maloi4:=Query2.FieldByName('Prono').Asstring+'_4'+'.jpg';
          Maloi5:=Query2.FieldByName('Prono').Asstring+'_5'+'.jpg';
        end;
        if HIorDI='DI' then
        begin
          checkshoePic:='\\192.168.123.112\kcs\ERP_ATTACHMENT\MA\DI\'+Maloi1;
          checkshoePic1:='\\192.168.123.112\kcs\ERP_ATTACHMENT\MA\DI\'+Maloi2;
          checkshoePic2:='\\192.168.123.112\kcs\ERP_ATTACHMENT\MA\DI\'+Maloi3;
          checkshoePic3:='\\192.168.123.112\kcs\ERP_ATTACHMENT\MA\DI\'+Maloi4;
          checkshoePic4:='\\192.168.123.112\kcs\ERP_ATTACHMENT\MA\DI\'+Maloi5;
        end else
        begin
          checkshoePic:='\\192.168.123.112\kcs\ERP_ATTACHMENT\MA\HI\'+Maloi1;
          checkshoePic1:='\\192.168.123.112\kcs\ERP_ATTACHMENT\MA\HI\'+Maloi2;
          checkshoePic2:='\\192.168.123.112\kcs\ERP_ATTACHMENT\MA\HI\'+Maloi3;
          checkshoePic3:='\\192.168.123.112\kcs\ERP_ATTACHMENT\MA\HI\'+Maloi4;
          checkshoePic4:='\\192.168.123.112\kcs\ERP_ATTACHMENT\MA\HI\'+Maloi5;
        end;
        funcObj.WriteErrorLog(checkshoePic);
        funcObj.WriteErrorLog(checkshoePic1);
        funcObj.WriteErrorLog(checkshoePic2);
        funcObj.WriteErrorLog(checkshoePic3);
        funcObj.WriteErrorLog(checkshoePic4);
        eclApp.Rows[j].RowHeight := 37;
        if FileExists(checkshoePic)=true then
        begin
          workSheet := workBook.WorkSheets[1];
          eclApp.WorkSheets[1].Activate;
          workSheet.Select;
          workRange :=workSheet.Range[workSheet.Cells.Item[j,6],workSheet.Cells.item[j,6]];
          picture := workSheet.pictures.Insert(StringReplace(checkshoePic,'H:','\\192.168.123.112\kcs\ERP_ATTACHMENT\MA', [rfReplaceAll, rfIgnoreCase]));
          picture.left := workRange.left + 1;
          picture.top := workRange.top + 1;
          picture.width := workRange.width - 2;
          picture.height := workRange.height - 2;
          picture := Unassigned;
        end;
        if FileExists(checkshoePic1)=true then
        begin
          eclApp.Cells(2,7):='Defect Photo';
          workSheet := workBook.WorkSheets[1];
          eclApp.WorkSheets[1].Activate;
          workSheet.Select;
          workRange :=workSheet.Range[workSheet.Cells.Item[j,7],workSheet.Cells.item[j,7]];
          picture := workSheet.pictures.Insert(StringReplace(checkshoePic1,'H:','\\192.168.123.112\kcs\ERP_ATTACHMENT\MA', [rfReplaceAll, rfIgnoreCase]));
          picture.left := workRange.left + 1;
          picture.top := workRange.top + 1;
          picture.width := workRange.width - 2;
          picture.height := workRange.height - 2;
          picture := Unassigned;
        end;
        if FileExists(checkshoePic2)=true then
        begin
          eclApp.Cells(2,8):='Defect Photo';
          workSheet := workBook.WorkSheets[1];
          eclApp.WorkSheets[1].Activate;
          workSheet.Select;
          workRange :=workSheet.Range[workSheet.Cells.Item[j,8],workSheet.Cells.item[j,8]];
          picture := workSheet.pictures.Insert(StringReplace(checkshoePic2,'H:','\\192.168.123.112\kcs\ERP_ATTACHMENT\MA', [rfReplaceAll, rfIgnoreCase]));
          picture.left := workRange.left + 1;
          picture.top := workRange.top + 1;
          picture.width := workRange.width - 2;
          picture.height := workRange.height - 2;
          picture := Unassigned;
        end;
        if FileExists(checkshoePic3)=true then
        begin
          eclApp.Cells(2,9):='Defect Photo';
          workSheet := workBook.WorkSheets[1];
          eclApp.WorkSheets[1].Activate;
          workSheet.Select;
          workRange :=workSheet.Range[workSheet.Cells.Item[j,9],workSheet.Cells.item[j,9]];
          picture := workSheet.pictures.Insert(StringReplace(checkshoePic3,'H:','\\192.168.123.112\kcs\ERP_ATTACHMENT\MA', [rfReplaceAll, rfIgnoreCase]));
          picture.left := workRange.left + 1;
          picture.top := workRange.top + 1;
          picture.width := workRange.width - 2;
          picture.height := workRange.height - 2;
          picture := Unassigned;
        end;
        if FileExists(checkshoePic4)=true then
        begin
          eclApp.Cells(2,10):='Defect Photo';
          eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[1,10]].merge;
          workSheet := workBook.WorkSheets[1];
          eclApp.WorkSheets[1].Activate;
          workSheet.Select;
          workRange :=workSheet.Range[workSheet.Cells.Item[j,10],workSheet.Cells.item[j,10]];
          picture := workSheet.pictures.Insert(StringReplace(checkshoePic4,'H:','\\192.168.123.112\kcs\ERP_ATTACHMENT\MA', [rfReplaceAll, rfIgnoreCase]));
          picture.left := workRange.left + 1;
          picture.top := workRange.top + 1;
          picture.width := workRange.width - 2;
          picture.height := workRange.height - 2;
          picture := Unassigned;
        end;
        Query2.Next;
        inc(j);
    end;
    if FileExists(checkshoePic4)=true then
    begin
      for k:=1 to 4 do
      begin
        eclApp.range[eclApp.cells[1,1],eclApp.cells[j-1,10]].borders[k].linestyle:=1;
      end;
    end else
    if FileExists(checkshoePic3)=true then
    begin
      for k:=1 to 4 do
      begin
        eclApp.range[eclApp.cells[1,1],eclApp.cells[j-1,9]].borders[k].linestyle:=1;
      end;
    end else
    if FileExists(checkshoePic2)=false then
    begin
      for k:=1 to 4 do
      begin
        eclApp.range[eclApp.cells[1,1],eclApp.cells[j-1,7]].borders[k].linestyle:=1;
      end;
    end else
    begin
      for k:=1 to 4 do
      begin
        eclApp.range[eclApp.cells[1,1],eclApp.cells[j-1,8]].borders[k].linestyle:=1;
      end;
    end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;

end.
