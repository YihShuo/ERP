unit DeliveryNoList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, ComCtrls,comobj;

type
  TDeliveryNoList = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Label3: TLabel;
    DTP1: TDateTimePicker;
    Label4: TLabel;
    DTP2: TDateTimePicker;
    Query1LLNO: TStringField;
    Query1GSBH: TStringField;
    Query1Memo: TStringField;
    Label1: TLabel;
    ComboBox1: TComboBox;
    PC1: TPageControl;
    TS1: TTabSheet;
    TS2: TTabSheet;
    DBGridEh2: TDBGridEh;
    Query2: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    DataSource2: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DeliveryNoList: TDeliveryNoList;

implementation

{$R *.dfm}

procedure TDeliveryNoList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TDeliveryNoList.FormDestroy(Sender: TObject);
begin
  DeliveryNoList:=nil;
end;

procedure TDeliveryNoList.Button1Click(Sender: TObject);
begin
  if PC1.ActivePageIndex=0 then
  begin
    with query1 do
    begin
      active:=false;
      sql.Clear;
      sql.Add(' select * from ( ');
      sql.Add(' select LLNO,GSBH, case when flowflag=''X'' then ''Delete'' else '''' end Memo');
      sql.Add(' from KCLL ');
      sql.Add(' where convert(smalldatetime,convert(varchar,KCLL.USERDATE,111)) between ');
      sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
      sql.Add(' ) KCLL ');
      sql.Add(' where 1=1 ');
      if combobox1.Text <> 'ALL' then
        sql.Add(' and Memo =  '''+combobox1.Text+''' ');
      sql.Add(' order by LLNO asc ');
      active:=true;
    end;
  end else if PC1.ActivePageIndex=1 then
  begin
    with query2 do
    begin
      active:=false;
      sql.Clear;
      sql.Add(' select *   ');
      sql.Add(' from  (    ');
      sql.Add(' select LLNO,GSBH,'''' as Memo  ');
      sql.Add(' from KCLL  ');
      sql.Add(' where convert(smalldatetime,convert(varchar,KCLL.USERDATE,111)) between ');
      sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
      sql.Add(' union all  ');
      sql.Add(' select LLNO,(select top 1 GSBH from KCLL as KCLL_GSBH where KCLL_Bdelrec.USERID=KCLL_GSBH.USERID and GSBH in (''VTX'',''CDC'',''VA12'')) as GSBH,Memo  ');
      sql.Add(' from (   ');
      sql.Add(' select TNO as LLNO,'''' as GSBH,''Delete'' as Memo,max(DelID) as UserID ');
      sql.Add(' from BDelRec  ');
      sql.Add(' where TableName=''KCLL'' and convert(smalldatetime,convert(varchar,DelDate,111)) between  ');
      sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
      sql.Add(' and TNO not in ( select LLNO from KCLL where convert(smalldatetime,convert(varchar,KCLL.USERDATE,111)) between  ');
      sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +''' )');
      sql.Add(' group by TNO ) KCLL_Bdelrec  ');
      sql.Add('		  ) KCLL  ');
      sql.Add(' where 1=1 and LLNO <>'''' ');
      if combobox1.Text <> 'ALL' then
        sql.Add(' and Memo =  '''+combobox1.Text+''' ');
      sql.Add(' order by LLNO asc  ');
      active:=true;
    end;
  end;
end;

procedure TDeliveryNoList.FormCreate(Sender: TObject);
begin
  DTP1.Date:=date-30;
  DTP2.date:=date;
end;

procedure TDeliveryNoList.Button2Click(Sender: TObject);
var
  eclApp,WorkBook:olevariant;
  i,j,l:integer;
begin
    if PC1.ActivePageIndex=0 then
    begin
     if query1.Active then
     begin
      if query1.recordcount=0 then
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
      for i:=0 to DBGridEh1.Columns.Count-1 do
      begin
        eclApp.Cells(1,i+1):=DBGridEh1.Columns[i].Title.Caption;
        eclApp.Cells.Cells.item[1,i+1].font.name := 'Calibri';
        eclApp.Cells.Cells.item[1,i+1].font.size:='10';
      end;
      query1.First;
      j:=2;
      while   not  query1.Eof   do
      begin
        eclApp.Cells(j,1):=j-1;
        for i:=0 to DBGridEh1.Columns.Count-1 do
        begin
          eclApp.Cells(j,i+1):=DBGridEh1.Fields[i].Value;
          eclApp.Cells.Cells.item[j,i+1].font.name := 'Calibri';
        end;
        query1.Next;
        inc(j);
        // outline
        for l:=1 to 4 do
        begin
         eclApp.workbooks[1].sheets[1].range[eclApp.workbooks[1].sheets[1].cells[1,1],eclApp.workbooks[1].sheets[1].cells[j-1,i]].borders[l].linestyle:=1;
        end;
      end;
      //eclapp.columns.autofit;
      showmessage('Succeed.');
      eclApp.Visible:=True;
    except
      on   F:Exception   do
        showmessage(F.Message);
    end;
  end else if PC1.ActivePageIndex=1 then
  begin
     if query2.Active then
     begin
      if query2.recordcount=0 then
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
      for i:=0 to DBGridEh2.Columns.Count-1 do
      begin
        eclApp.Cells(1,i+1):=DBGridEh2.Columns[i].Title.Caption;
        eclApp.Cells.Cells.item[1,i+1].font.name := 'Calibri';
        eclApp.Cells.Cells.item[1,i+1].font.size:='10';
      end;
      query2.First;
      j:=2;
      while   not  query2.Eof   do
      begin
        eclApp.Cells(j,1):=j-1;
        for i:=0 to DBGridEh2.Columns.Count-1 do
        begin
          eclApp.Cells(j,i+1):=DBGridEh2.Fields[i].Value;
          eclApp.Cells.Cells.item[j,i+1].font.name := 'Calibri';
        end;
        query2.Next;
        inc(j);
        // outline
        for l:=1 to 4 do
        begin
         eclApp.workbooks[1].sheets[1].range[eclApp.workbooks[1].sheets[1].cells[1,1],eclApp.workbooks[1].sheets[1].cells[j-1,i]].borders[l].linestyle:=1;
        end;
      end;
      //eclapp.columns.autofit;
      showmessage('Succeed.');
      eclApp.Visible:=True;
    except
      on   F:Exception   do
        showmessage(F.Message);
    end;
  end;
end;

end.
