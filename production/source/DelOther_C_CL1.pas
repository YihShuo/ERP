unit DelOther_C_CL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Grids, DBGrids, StdCtrls, ExtCtrls,comobj,math,dateutils;

type
  TDelOther_C_CL = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Query1: TQuery;
    Query1ZLBH: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1USAGE: TFloatField;
    Query1DFL: TStringField;
    Query1CLSL: TFloatField;
    Query1Qty: TCurrencyField;
    Query1Article: TStringField;
    Query1XieMing: TStringField;
    Query1Person: TFloatField;
    UpdateSQL1: TUpdateSQL;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    CBX2: TComboBox;
    Label4: TLabel;
    CBX3: TComboBox;
    Label5: TLabel;
    Edit4: TEdit;
    Button2: TButton;
    Button3: TButton;
    Query1YN: TStringField;
    Label6: TLabel;
    CBX1: TComboBox;
    CheckBox1: TCheckBox;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DelOther_C_CL: TDelOther_C_CL;  
  sdate,edate:Tdate;

implementation

uses DelOther_C1, main1;

{$R *.dfm}

procedure TDelOther_C_CL.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit2.SetFocus;
end;

procedure TDelOther_C_CL.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit3.SetFocus;
end;

procedure TDelOther_C_CL.Edit3KeyPress(Sender: TObject; var Key: Char);
begin 
if key=#13 then
  button1click(nil);
end;

procedure TDelOther_C_CL.Button1Click(Sender: TObject);
var y,m:word;
begin
if (CBX2.text='')or (CBX3.text='')  then
  begin
    showmessage('You have to select the year and month first.');
    abort;
  end;
y:=strtoint(CBX2.Text);
m:=strtoint(CBX3.Text);
if (y>2999) or (y<1900) then
  begin
  if y>2020 then
    begin
      showmessage('Pls contect with designer.');
      abort;
    end;
    showmessage('Pls key in right year');
    abort;
  end;
if (m=0) or (m>12) then
  begin
    showmessage('Pls key in right month');
    abort;
  end;
sdate:=encodedate(y,m,1);
edate:=endofthemonth(sdate);

with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select OrdCL1.ZLBH,OrdCL1.CLBH,sum(OrdCL1.Usage) as Usage,');
    sql.add('       round((sum(OrdCL1.CLSL)+0.0499),1) as CLSL,OrdCL1.DFL,OrdCL1.YWPM,OrdCL1.DWBH,OrdCL1.LYCC, ');
    sql.add('       isnull(KCLLS.Qty,0) as Qty,OrdCL1.Article,OrdCL1.XieMing,OrdCL1.XieXing,OrdCL1.SheHao ,KCLLS.YN');
    sql.add('from ( select  ZLBH,CLBH,sum(USAGE) as USAGE,sum(CLSL) as CLSL ,DFL,YWPM,');
    sql.add('               DWBH,LYCC,Article,XieMing,XieXing,SheHao,CLTX');
    sql.add('       from (select ZLZLS2.ZLBH,ZLZLS2.CLBH,max(ZLZLS2.USAGE) as USAGE,');
    sql.add('                    sum(ZLZLS2.CLSL)   CLSL,isnull(XXBWFLS.DFL,'+''''+'N'+''''+') as DFL ');
    sql.add('                    ,CLZL.YWPM,CLZL.DWBH,CLZL.LYCC,DDZL.XieXing,DDZL.SheHao,XXZL.Article,XXZL.XieMing,isnull(XXZLS.CLTX,1) as CLTX ');
    sql.add('             from ZLZLS2');
    sql.add('             left join CLZL on ZLZLS2.CLBH=CLZL.CLDH');
    sql.add('             left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH');
    sql.add('             left join DDZL on DDZL.DDBH=ZLZL.DDBH');
    sql.add('             left join SCZLDate on SCZLDate.ZLBH=ZLZL.ZLBH ');
    sql.add('             left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao');
    sql.add('             left join XXBWFL on ZLZLS2.BWBH=XXBWFL.BWBH and XXZL.XieXing=XXBWFL.XieXing');
    sql.add('             left join XXBWFLS on XXBWFL.FLBH=XXBWFLS.FLBH');
    sql.add('             left join XXZLS on XXZLS.XieXing=XXZL.XieXing and XXZLS.SheHao=XXZL.SheHao and XXZLS.BWBH=ZLZLS2.BWBH');
    sql.add('             where convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between '+''''+formatdatetime('yyyy/mm/dd',sdate)+'''');
    sql.add('                     and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
    sql.add('                and ZLZLS2.CLBH like '+''''+edit1.text+'%'+'''');
    sql.add('                and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('                and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
    sql.Add('                and ZLZLS2.ZLBH like '+''''+edit4.Text+'%'+'''');
    sql.add('                and MJBH='+''''+'ZZZZZZZZZZ'+''''+' and ZLZLS2.CLBH>='+''''+'W'+'''');
    sql.add('                and DDZL.YN='+''''+'1'+'''');
    if checkbox1.Checked then
      begin
        sql.add('                and DDZl.GSBH='+''''+main.edit2.Text+'''');
      end
      else
        begin
          sql.add('                  and SCZLDate.GSBH='+''''+ main.Edit2.Text+'''');
        end;
    sql.add('                and DDZL.DDZT='+''''+'Y'+'''');
    sql.add('                and XXBWFLS.DFL like '+''''+CBX1.text+'%'+'''');
    sql.add('            group by ZLZLS2.ZLBH,ZLZLS2.CLBH,XXBWFLS.DFL,CLZL.YWPM,CLZL.DWBH,CLZL.LYCC,');
    sql.add('                     DDZL.XieXing,DDZL.SheHao,XXZL.Article,XXZL.XieMing,XXZLS.CLTX ) as OrdCL  ');
    sql.add('      group by ZLBH,CLBH,DFL,YWPM,DWBH,LYCC,Article,XieMing,XieXing,SheHao,CLTX) OrdCL1  ');
    sql.add('left join (select   KCLLS.SCBH, KCLLS.CLBH, sum(KCLLS.Qty) as Qty,isnull( KCLLS.DFL,'+''''+'N'+''''+') as DFL,DDZL.YN ');
    sql.add('           from  KCLLS');
    sql.add('           left join DDZL on DDZL.ZLBH=KCLLS.SCBH');
    sql.add('           left join CLZL on CLZL.CLDH=KCLLS.CLBH');
    sql.add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO');
    sql.add('           where  KCLLS.CLBH >='+''''+'U'+'''');
    sql.add('                  and KCLLS.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('                  and KCLLS.SCBH like '+''''+edit4.Text+'%'+'''');
    sql.add('                  and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''') ;
    sql.add('                  and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''') ;
    sql.add('                  and KCLL.GSBH='+''''+main.edit2.Text+'''');
    sql.add('                  and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between ');
    sql.add('                  '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
    sql.add('          group by KCLLS.SCBH, KCLLS.CLBH,KCLLS.DFL,DDZL.YN) KCLLS  ');
    sql.add('on KCLLS.SCBH=OrdCL1.ZLBH and KCLLS.CLBH=OrdCL1.CLBH and OrdCL1.DFL=KCLLS.DFL');
    sql.add('group by OrdCL1.ZLBH,OrdCL1.CLBH,OrdCL1.DFL,OrdCL1.YWPM,OrdCL1.DWBH,  ');
    sql.add('OrdCL1.LYCC,OrdCL1.Article,OrdCL1.XieMing,OrdCL1.XieXing,OrdCL1.SheHao,KCLLS.Qty,KCLLS.YN  ');
    sql.add('order by OrdCL1.CLBH,OrdCL1.DFL,OrdCL1.ZLBH ');
    active:=true;
  end;
button2.Visible:=true;
end;

procedure TDelOther_C_CL.Query1CalcFields(DataSet: TDataSet);
begin
with query1 do
  begin
     if FieldByName('CLSL').value<>0 then
      begin
        FieldByName('Person').value:=(FieldByName('Qty').value-FieldByName('CLSL').value)/FieldByName('CLSL').value*100;
      end;
  end;
end;

procedure TDelOther_C_CL.DBGrid1DblClick(Sender: TObject);
begin
if (not query1.Active) then
  begin
    abort;
  end;
if (Query1.recordcount<1) then
  begin
    abort;
  end;
if Query1.FieldByName('YN').value='5' then
  begin       
    showmessage('Already finished. Pls checked accont first.' );
    abort;
  end;
if  Query1.FieldByName('Qty').value<(Query1.FieldByName('CLSL').value)  then
  begin
    with DelOther_C.DelDet do
      begin
        edit;
        fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
        fieldbyname('SCBH').value:=query1.fieldbyname('ZLBH').value;
        fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
        fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
        fieldbyname('TempQty').value:=trunc((query1.fieldbyname('CLSL').value-Query1.FieldByName('Qty').value)*10+0.5)/10;
        fieldbyname('Qty').value:=fieldbyname('TempQty').value;
        fieldbyname('CostID').value:='621' ;
        fieldbyname('DFL').value:=query1.fieldbyname('DFL').value;
        fieldbyname('CLSL').value:=query1.fieldbyname('CLSL').value;
        insert;
      end;
    Query1.Edit;
    query1.fieldbyname('Qty').value:=query1.fieldbyname('CLSL').value ;
    //showmessage('Succeed.');
  end
    else
      begin
        showmessage('Already deliver.');
      end;
end;

procedure TDelOther_C_CL.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if  Query1.FieldByName('Qty').value>=(Query1.FieldByName('CLSL').value)   then
  begin
    dbgrid1.canvas.font.color:=clred;
    dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TDelOther_C_CL.Button2Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

if query1.Active then
  begin
    if query1.recordcount=0 then
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
  WorkBook:=eclApp.workbooks.Add; 
  eclApp.Cells(1,1):='NO';
  for   i:=1   to   query1.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=query1.fields[i-1].FieldName;
    end;
  query1.First;
  j:=2;
  while   not  query1.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   query1.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=query1.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
      query1.Next;
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

procedure TDelOther_C_CL.Button3Click(Sender: TObject);
var bm:Tbookmark;
i:integer;
bookmarklist:tbookmarklist;
begin
if messagedlg('Do you really want to copy these record?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
begin
if (not query1.Active) then
  begin
    abort;
  end;
if (Query1.recordcount<1) then
  begin
    abort;
  end;
query1.disablecontrols;
bm:=query1.getbookmark;
bookmarklist:=dbgrid1.selectedrows;
if bookmarklist.count>0 then
  begin
    try
      for i:=0 to bookmarklist.count-1 do
      begin
        query1.gotobookmark(pointer(bookmarklist[i]));
        if  Query1.FieldByName('Qty').value<(Query1.FieldByName('CLSL').value)  then
          begin
            with DelOther_C.DelDet do
              begin
                edit;
                fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
                fieldbyname('SCBH').value:=query1.fieldbyname('ZLBH').value;
                fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
                fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
                fieldbyname('TempQty').value:=query1.fieldbyname('CLSL').value-Query1.FieldByName('Qty').value;
                fieldbyname('Qty').value:=query1.fieldbyname('CLSL').value;
                fieldbyname('CostID').value:='621' ;
                fieldbyname('DFL').value:=query1.fieldbyname('DFL').value;
                fieldbyname('CLSL').value:=query1.fieldbyname('CLSL').value;
                insert;
              end;
            Query1.Edit;
            query1.fieldbyname('Qty').value:=query1.fieldbyname('CLSL').value ;
           // showmessage('Succeed.');
          end
            else
              begin
                showmessage('Already deliver.');
              end;
      end;
    finally
      begin
        query1.gotobookmark(bm);
        query1.freebookmark(bm);
        query1.enablecontrols;
        showmessage('You have finish copy!');
      end;
    end;
  end;
end;

end;

procedure TDelOther_C_CL.FormDestroy(Sender: TObject);
begin
DelOther_C_CL:=nil;
end;

procedure TDelOther_C_CL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=Cafree;
end;

end.
