unit DailyScanInStock1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, ComCtrls
  , DBGridEhImpExp , ShellAPI ,Comobj;

type
  TDailyScanInStock = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    MJCB: TComboBox;
    CLCB: TComboBox;
    Button1: TButton;
    Button2: TButton;
    DBGridEh1: TDBGridEh;
    WSMQ: TQuery;
    wsm: TDataSource;
    SizeQ: TQuery;
    tmpQry: TQuery;
    Label1: TLabel;
    CLassCB: TComboBox;
    DTP1: TDateTimePicker;
    SaveDialog1: TSaveDialog;
    Label2: TLabel;
    BarEdit: TEdit;
    GroupBox1: TGroupBox;
    RB1: TRadioButton;
    RB2: TRadioButton;
    DTP2: TDateTimePicker;
    Label5: TLabel;
    DateRB1: TRadioButton;
    DTP: TDateTimePicker;
    DateRB2: TRadioButton;
    Label6: TLabel;
    Label7: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CLCBChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    ColorNo:string;
    SCANDate1:string;
    SCANDate2:string;
    CodeBar:string;
    ScanIorO:string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DailyScanInStock: TDailyScanInStock;

implementation
  uses  ScanInDetail1,FunUnit, main1;

{$R *.dfm}

procedure TDailyScanInStock.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TDailyScanInStock.FormDestroy(Sender: TObject);
begin
  DailyScanInStock:=nil;
end;

procedure TDailyScanInStock.Button1Click(Sender: TObject);
var i:integer;
begin
  if RB1.Checked=true then ScanIorO:='I';
  if RB2.Checked=true then ScanIorO:='O';
  with SizeQ do
  begin
    active:=false;
    sql.Clear;
    SQL.Add('select Siz as Size  from ( ');
    SQL.Add('Select Siz from LastSizeR  Group by Siz ');
    SQL.Add('Union all ');
    SQL.Add('Select XXCC as Siz from Gender  Group by XXCC ) LastSizeR Group by Siz order by Siz ');
    //showmessage(sql.text);
    active:=true;
  end;
  //
  with  WSMQ do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select * from ( ');
    SQL.Add('select case when workscan.Class=0 then ''Ca 1''  ');
    SQL.Add('            when workscan.Class=1 then ''Ca 2''  ');
    SQL.Add('            when workscan.Class=2 then ''Ca 3'' end as Class, ');
    SQL.Add('       workscan.Class as CA,workscan.MJBH,workscan.ColorNo,colorclass.EnglishName,workplansss.DDBH, ');
    SQL.Add('       Sum(workscan.Qty) as TotalQty ');
    for i:=1 to Sizeq.recordcount do
    begin
      SQL.Add('       ,Sum(Case when case when len(workscan.size) = 1 then ''0''+workscan.size+''.0'' when len(workscan.size) = 2 then workscan.size+''.0'' when len(workscan.size) = 3 then ''0''+workscan.size else workscan.size end='''+sizeq.fieldbyname('Size').asstring+''' then workscan.Qty end) as ''['+sizeq.fieldbyname('Size').asstring+']'' ');
      sizeq.Next;
    end;
    SQL.Add('from '+main.LIY_DD+'.dbo.workscan workscan');
    SQL.Add('left join '+main.LIY_DD+'.dbo.colorclass	colorclass  on colorclass.ColorNo=workscan.ColorNo ');
    SQL.Add('left join '+main.LIY_DD+'.dbo.workplan	workplan  on workplan.WorkID=workscan.WorkID');
    SQL.Add('left join '+main.LIY_DD+'.dbo.workplans	workplans  on workplans.WorkID=workscan.WorkID and workplans.codebar = workscan.Codebar ');
    SQL.Add('left join '+main.LIY_DD+'.dbo.workplansss	workplansss  on workplans.WorkID=workplansss.WorkID and workplans.SIZE = workplansss.SIZE ');
    SQL.Add('where workscan.InOut='''+ScanIorO+''' and workplan.CQDH='''+main.Edit2.Text+'''');
    if DateRB1.Checked=true then
    begin
      SQl.Add('and convert(smalldatetime,convert(varchar,workscan.UserDate,111)) between ');
      SQL.add('      '''+formatdatetime('yyyy/MM/dd',DTP.date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP.date)+'''');
    end else if DateRB2.Checked=true then
    begin
      SQl.Add('and workscan.ScanDate between ');
      SQL.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.date)+' 07:00:00'' and '''+formatdatetime('yyyy/MM/dd',DTP2.date)+' 07:00:00''');
    end;
    if mjcb.Text<>'ALL' then
      SQL.Add(' and workscan.MJBH='''+mjcb.Text+'''');
    if CLCB.Text<>'ALL' then
      SQL.Add(' and workscan.colorno='''+ColorNo+'''');
    if CLassCB.Text<>'ALL' then
      SQL.Add(' and  workscan.Class='+inttostr(CLassCB.ItemIndex-1)+' ');
    if BarEdit.Text<>'' then
      SQL.Add(' and  workscan.codebar like ''%'+BarEdit.Text+'%'' ');
    SQL.Add('Group by workscan.Class,workscan.MJBH,workscan.ColorNo,colorclass.EnglishName,workplansss.DDBH ');
    //班別統計全部
    SQL.Add('Union all');
    SQL.Add('select case when workscan.Class=0 then ''Ca 1''  ');
    SQL.Add('            when workscan.Class=1 then ''Ca 2''  ');
    SQL.Add('            when workscan.Class=2 then ''Ca 3'' end as Class, ');
    SQL.Add('       workscan.Class as CA,''zTOTAL'' as MJBH,'''' as ColorNo,'''' as EnglishName,'''' as DDBH,  ');
    SQL.Add('       Sum(workscan.Qty) as TotalQty ');
    Sizeq.First;
    for i:=1 to Sizeq.recordcount do
    begin
      SQL.Add('      ,Sum(Case when case when len(workscan.size) = 1 then ''0''+workscan.size+''.0'' when len(workscan.size) = 2 then workscan.size+''.0'' when len(workscan.size) = 3 then ''0''+workscan.size else workscan.size end='''+sizeq.fieldbyname('Size').asstring+''' then workscan.Qty end) as ''['+sizeq.fieldbyname('Size').asstring+']'' ');
      sizeq.Next;
    end;

    SQL.Add('from '+main.LIY_DD+'.dbo.workscan workscan');
    SQL.Add('left join '+main.LIY_DD+'.dbo.colorclass	colorclass  on colorclass.ColorNo=workscan.ColorNo ');
    SQL.Add('left join '+main.LIY_DD+'.dbo.workplan	workplan  on workplan.WorkID=workscan.WorkID');
    SQL.Add('where workscan.InOut='''+ScanIorO+''' and workplan.CQDH='''+main.Edit2.Text+''' ');
    if DateRB1.Checked=true then
    begin
      SQl.Add('and convert(smalldatetime,convert(varchar,workscan.UserDate,111)) between ');
      SQL.add('      '''+formatdatetime('yyyy/MM/dd',DTP.date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP.date)+'''');
    end else if DateRB2.Checked=true then
    begin
      SQl.Add('and workscan.ScanDate between ');
      SQL.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.date)+' 07:00:00'' and '''+formatdatetime('yyyy/MM/dd',DTP2.date)+' 07:00:00''');
    end;
    if mjcb.Text<>'ALL' then
      SQL.Add(' and workscan.MJBH='''+mjcb.Text+'''');
    if CLCB.Text<>'ALL' then
      SQL.Add(' and workscan.colorno='''+ColorNo+'''');
    if CLassCB.Text<>'ALL' then
      SQL.Add(' and  workscan.Class='+inttostr(CLassCB.ItemIndex-1)+' ');
    if BarEdit.Text<>'' then
      SQL.Add(' and  workscan.codebar like ''%'+BarEdit.Text+'%'' ');
    SQL.Add('Group by workscan.Class');
    //
    SQL.Add('Union all');
    SQL.Add('select ''Ca Toan bo'' as Class,  ');
    SQL.Add('       '''' as CA,''zTOTAL ALL'' as MJBH,'''' as ColorNo,'''' as EnglishName,'''' as DDBH,  ');
    SQL.Add('       Sum(workscan.Qty) as TotalQty ');
    Sizeq.First;
    for i:=1 to Sizeq.recordcount do
    begin
      SQL.Add('       ,Sum(Case when case when len(workscan.size) = 1 then ''0''+workscan.size+''.0'' when len(workscan.size) = 2 then workscan.size+''.0'' when len(workscan.size) = 3 then ''0''+workscan.size else workscan.size end='''+sizeq.fieldbyname('Size').asstring+''' then workscan.Qty end) as ''['+sizeq.fieldbyname('Size').asstring+']'' ');
      sizeq.Next;
    end;

    SQL.Add('from '+main.LIY_DD+'.dbo.workscan workscan');
    SQL.Add('left join '+main.LIY_DD+'.dbo.colorclass	colorclass  on colorclass.ColorNo=workscan.ColorNo ');
    SQL.Add('left join '+main.LIY_DD+'.dbo.workplan	workplan  on workplan.WorkID=workscan.WorkID');
    SQL.Add('where workscan.InOut='''+ScanIorO+''' and workplan.CQDH='''+main.Edit2.Text+''' ');
    if DateRB1.Checked=true then
    begin
      SQl.Add('and convert(smalldatetime,convert(varchar,workscan.UserDate,111)) between ');
      SQL.add('      '''+formatdatetime('yyyy/MM/dd',DTP.date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP.date)+'''');
    end else if DateRB2.Checked=true then
    begin
      SQl.Add('and workscan.ScanDate between ');
      SQL.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.date)+' 07:00:00'' and '''+formatdatetime('yyyy/MM/dd',DTP2.date)+' 07:00:00''');
    end;
    if mjcb.Text<>'ALL' then
      SQL.Add(' and workscan.MJBH='''+mjcb.Text+'''');
    if CLCB.Text<>'ALL' then
      SQL.Add(' and workscan.ColorNo='''+ColorNo+'''');
    if CLassCB.Text<>'ALL' then
      SQL.Add(' and  workscan.Class='+inttostr(CLassCB.ItemIndex-1)+' ');
    if BarEdit.Text<>'' then
      SQL.Add(' and  workscan.codebar like ''%'+BarEdit.Text+'%'' ');
    //
    SQL.Add(') workscan ');
    SQL.Add('order by workscan.Class,workscan.MJBH,workscan.EnglishName ');
    //funcObj.WriteErrorLog(sql.Text);
    //showmessage(SQL.Text);
    Active:=true;
  end;
  CodeBar:=BarEdit.Text;
  SCANDate1:=datetostr(DTP1.Date);
  SCANDate2:=datetostr(DTP2.Date);
  Sizeq.Active:=false;
  //
  DBGridEh1.columns[0].width:=43;
  DBGridEh1.columns[0].Title.Caption:='CA班|Class';
  DBGridEh1.columns[1].Visible:=false;
  DBGridEh1.columns[2].width:=105;
  DBGridEh1.columns[2].Title.Caption:='型體|Model ID';
  DBGridEh1.columns[3].Visible:=false;
  DBGridEh1.columns[4].width:=66;
  DBGridEh1.columns[4].Title.Caption:='顏色|Color';
  DBGridEh1.columns[5].width:=61;
  DBGridEh1.columns[5].Title.Caption:='訂單號碼|RY';
  DBGridEh1.columns[6].width:=61;
  DBGridEh1.columns[6].Title.Caption:='總數量|TotalQty';
  DBGridEh1.Columns[6].Footer.FieldName:='TotalQty';
  DBGridEh1.Columns[6].Footer.ValueType:=fvtSum;
  //DBGridEh1.Columns[6].Footer.DisplayFormat:='##,#0';
  for i:=7 to wsmq.fieldcount-1 do
  begin
    DBGridEh1.columns[i].width:=43;
    DBGridEh1.columns[i].Title.Caption:='Size尺寸|'+wsmq.Fields[i].FieldName;
    if Pos(' ',wsmq.Fields[i].FieldName)>0 then DBGridEh1.columns[i].Title.Color:=clYellow;
  end;

end;

procedure TDailyScanInStock.CLCBChange(Sender: TObject);
begin
  tmpQry.locate('englishname',clcb.Text,[]);
  ColorNo:=tmpQry.fieldbyname('colorno').Value;
end;

procedure TDailyScanInStock.FormCreate(Sender: TObject);
var i:integer;
begin

  with tmpQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select bz2 as mjbh');
    sql.Add('from '+main.LIY_DD+'.dbo.mjzl');
    sql.Add('where IsNull(bz2,'''')<>''''');
    sql.Add('group by bz2');
    sql.Add('order by bz2');
    active:=true;
    MJCB.Items.Clear;
    MJCB.Items.Add('ALL');

    for i:=1 to recordcount do
    begin
        MJCB.Items.Add(fieldbyname('mjbh').asstring);
        Next;
    end;
  end;

  with tmpQry do
  begin
    active:=false;
    sql.clear;
    sql.add('select EnglishName,ColorNo');
    sql.add('from '+main.LIY_DD+'.dbo.colorclass');
    sql.add('where IsNull(EnglishName,'''')<>''''');
    sql.add('group by EnglishName,ColorNo');
    active:=true;
    CLCB.Items.Clear;
    CLCB.Items.Add('ALL');

    for i:=1 to recordcount do
    begin
        CLCB.Items.Add(fieldbyname('EnglishName').asstring);
        Next;
    end;
  end;
  DTP.Date:=Date();
  DTP1.Date:=Date();
  DTP2.Date:=Date()+1;
end;

procedure TDailyScanInStock.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin

  if  WSMQ.active  then
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
        for   i:=0   to   WSMQ.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=WSMQ.fields[i].FieldName;
          end;

        WSMQ.First;
        j:=2;
        while   not   WSMQ.Eof   do
          begin
            for   i:=0   to  WSMQ.fieldcount-1-2  do
            begin
              eclApp.Cells(j,i+1):=WSMQ.Fields[i].Value;
            end;
          WSMQ.Next;
          inc(j);
          end;
        eclapp.columns.autofit;
        showmessage('Succeed');
        eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
   end;

end;

procedure TDailyScanInStock.DBGridEh1CellClick(Column: TColumnEh);
begin
   //
   if WSMQ.Active=true then
   begin
     if  Column.Index>=4 then
     begin
       if ((WSMQ.Fields[Column.Index].AsString<>'')  and (WSMQ.FieldByName('EnglishName').AsString<>'')) then
       begin
         ScanInDetail:=TScanInDetail.Create(self);
         ScanInDetail.SCANDate1:=SCANDate1;
         ScanInDetail.SCANDate2:=SCANDate2;
         ScanInDetail.ScanIorO:=ScanIorO;
         ScanInDetail.Size:=Copy(WSMQ.Fields[Column.Index].FieldName,2,length(WSMQ.Fields[Column.Index].FieldName)-2);
         ScanInDetail.CodeBar:=CodeBar;
         ScanInDetail.ScaninDetailData();
         ScanInDetail.ShowModal();
       end;
     end;
   end;
   //
end;

procedure TDailyScanInStock.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
   if trim(WSMQ.FieldByName('MJBH').AsString)='TOTAL' then
   begin
      DBGridEh1.canvas.brush.Color:=$00FCCBCD;
      DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column, State);
   end;
   if trim(WSMQ.FieldByName('MJBH').AsString)='TOTAL ALL' then
   begin
      DBGridEh1.canvas.brush.Color:=clyellow;
      DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column, State);
   end;
end;

end.
