unit Declaretion_Check1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, ComCtrls,IniFiles,comobj;

type
  TDeclaretion_Check = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    EDIT1: TEdit;
    Edit2: TEdit;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    DTP1: TDateTimePicker;
    Label3: TLabel;
    DTP2: TDateTimePicker;
    Label4: TLabel;
    Label5: TLabel;
    Edit3: TEdit;
    Label6: TLabel;
    Edit4: TEdit;
    Label7: TLabel;
    chk1: TCheckBox;
    CB1: TComboBox;
    Qtemp: TQuery;
    Button2: TButton;
    Query1CKBH: TStringField;
    Query1RKNO: TStringField;
    Query1Declaretion: TStringField;
    Query1ZSBH: TStringField;
    Query1ZSYWJC: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1HGLB: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1Qty_In: TCurrencyField;
    Query1Qty_Out: TCurrencyField;
    Query1Lack_Qty: TCurrencyField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
  private
    procedure ReadIni();
    { Private declarations }
  public
    { Public declarations }
    WH_Decimal:String;
    WH_DiplayFormat:String;
  end;

var
  Declaretion_Check: TDeclaretion_Check;

implementation

uses main1, fununit;

{$R *.dfm}
procedure TDeclaretion_Check.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  WH_Decimal:='2';
  WH_DiplayFormat:='#,##0.00';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      WH_Decimal:=MyIni.ReadString('Warehouse','Decimal','2');
      WH_DiplayFormat:=MyIni.ReadString('Warehouse','DiplayFormat','#,##0.00');
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(Query1.FieldByName('Qty_In')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query1.FieldByName('Qty_Out')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query1.FieldByName('Lack_Qty')).DisplayFormat:=WH_DiplayFormat;
end;  

procedure TDeclaretion_Check.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TDeclaretion_Check.FormDestroy(Sender: TObject);
begin
  Declaretion_Check:=nil;
end;

procedure TDeclaretion_Check.FormCreate(Sender: TObject);
var i:integer;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    DTP1.Date:=fieldbyname('NDate').Value-30;
    DTP2.Date:=fieldbyname('NDate').Value;
    active:=false;
    sql.Clear;
    sql.add('select CKBH from KCCK');
    sql.add('where GSBH='+''''+main.edit2.Text+'''');
    sql.add('order by CKBH ');
    active:=true;
    for i:=1 to recordcount do
      begin
        CB1.Items.add(fieldbyname('CKBH').asstring);
        next;
      end;
    active:=false;
    CB1.ItemIndex:=0;
  end;
  ReadIni();
end;

procedure TDeclaretion_Check.Button1Click(Sender: TObject);
begin
  if (edit1.Text='') or (edit2.Text='') then
  begin
    showmessage('Pls key in MatID && HGLB');
    abort;
  end;
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('Select kcrks.*,Qty_In-isnull(qty_out,0)  as Lack_Qty ');
    sql.Add('From (  Select KCRK.CKBH,KCRK.RKNO,KCPK.Declaretion,KCRK.ZSBH,zszl.ZSYWJC,KCRKS.CLBH,clzl.YWPM,clzl.DWBH,KCRK.HGLB,KCRK.USERDATE,kcrks.Qty as Qty_In,sum(kcpkll.Qty) as Qty_Out  ');
    sql.Add('        From ( Select kcrks.rkno,kcrks.clbh,sum(kcrks.qty) as Qty From kcrks Group by kcrks.rkno,kcrks.clbh)kcrks ');
    sql.Add('        Left join kcrk on kcrks.rkno=kcrk.rkno  ');
    sql.Add('			   Left join (	Select kcll.ckbh,kclls.llno,kclls.clbh,kclls.HGLb,sum(qty) as Qty ');
    sql.Add('							        From kclls left join kcll on kclls.LLNO=kcll.llno  ');
    sql.Add('       							Group by kcll.ckbh,kclls.llno,kclls.CLBH,kclls.HGLB) kclls  ');
    sql.Add('        on kclls.CLBH=kcrks.clbh and kclls.CKBH=kcrk.CKBH and kclls.HGLB=kcrk.HGLB ');
    sql.Add('        Left join (Select LLno,clbh,pkno,sum(qty) as qty From kcpkll group by llno,clbh,PKNO ) kcpkll on KCPKLL.LLNO =kclls.LLNO and KCPKLL.CLBH=kclls.CLBH and kcpkll.PKNO=kcrk.RKNO ');
    sql.Add('        Left join KCPK on kcrk.RKNO=kcpk.PKNO ');
    sql.Add('        Left join zszl on kcrk.ZSBH=zszl.zsdh ');
    sql.Add('        Left join clzl on clzl.cldh=kcrks.CLBH ');
    sql.Add('        Where kcrk.ckbh='''+CB1.Text+''' ');
    sql.Add('               and convert(smalldatetime,convert(varchar,kcrk.userdate,111)) between  ');
    sql.add('               '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +''' ');
    if edit1.Text <>'' then
      sql.Add('             and kcrks.clbh like '''+edit1.Text+'%'' ');
    if edit2.Text <> '' then
      sql.Add('             and kcrk.HGLB= '''+edit2.Text+''' ');
    if  edit3.Text <>'' then
      sql.Add('             and kcrk.RKNO like '''+edit3.Text+'%'' ');
    if edit4.Text <>'' then
      sql.Add('             and KCPK.Declaretion like '''+edit4.Text+'%'' ');
    sql.Add('        Group by KCRK.CKBH,KCRK.RKNO,KCPK.Declaretion,KCRK.ZSBH,zszl.ZSYWJC,KCRKS.CLBH,clzl.YWPM,clzl.DWBH,KCRK.HGLB,KCRK.USERDATE,kcrks.Qty) KCRKS  ');
    sql.Add('Where 1=1 ');
    if chk1.Checked then
      sql.Add(' and  isnull(qty_out,0)<Qty_In  ');
    sql.Add('Order by KCRKS.RKNO');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;



procedure TDeclaretion_Check.DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if query1.FieldByName('qty_out').value>=query1.FieldByName('Qty_In').value then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TDeclaretion_Check.Button2Click(Sender: TObject);
var
  eclApp,WorkBook:olevariant;
  i,j,l:integer;
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
        if (DBGridEh1.Fields[i].FieldName = 'Declaretion')  then
            eclApp.Cells(j,i+1):= #39 + DBGridEh1.Fields[i].Value
        else
            eclApp.Cells(j,i+1):=DBGridEh1.Fields[i].Value;
        if DBGridEh1.Fields[i].FieldName = 'UserDate' then
           eclApp.ActiveSheet.Cells[j, i + 1].NumberFormat := 'YYYY/MM/DD';
        eclApp.Cells.Cells.item[j,i+1].font.size:='10';
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
end;

end.
