unit Ma_Cartons1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ComCtrls, StdCtrls, Buttons, ExtCtrls, comobj,
  DBTables, DB, DateUtils, FunUnit;

type
  TMaCartons = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    Button2: TButton;
    edtRY: TEdit;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    CheckBox1: TCheckBox;
    DataSource1: TDataSource;
    Carton: TQuery;
    TmpQry: TQuery;
    DBGrdh1: TDBGridEh;
    CartonSCDate: TDateTimeField;
    CartonDDBH: TStringField;
    CartonTotal: TIntegerField;
    CartonCartonOK: TIntegerField;
    CartonCarOK: TIntegerField;
    CartonCarton: TStringField;
    GroupBox1: TGroupBox;
    RB1: TRadioButton;
    RB2: TRadioButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    XXCC:array of string;
    HIorDI:String;
    procedure DBGridInit();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaCartons: TMaCartons;

implementation

uses MA_Inspection_RY1;

{$R *.dfm}

procedure TMaCartons.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TMaCartons.FormDestroy(Sender: TObject);
begin
  MaCartons:=nil;
end;

procedure TMaCartons.DBGridInit();
var i,j:integer;
    Box:String;
    objColumn:TColumnEh;
begin
    with TmpQry do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select DDBH,max (ctz) as box from YWBZPOS where 1=1');
      SQL.Add('and  ddbh ='''+edtRY.Text+'''');
      SQL.Add('group by DDBH');
      Active:=true;
      if TmpQry.RecordCount>0 then
      begin
        j:=TmpQry.fieldbyname('box').Value+1;
        setlength(XXCC,j);
        for i:=1 to TmpQry.fieldbyname('box').Value do
        begin
          XXCC[i]:=IntToStr(i);
          Next;
        end;
      end else
      begin
        setlength(XXCC,0);
      end;
      Active:=false;
    end;
    DataSource1.DataSet:=Carton;
    //btn1.Click;
end;

procedure TMaCartons.FormCreate(Sender: TObject);
begin
  //DBGridInit();
  DTP1.Date:=Date();
  DTP2.Date:=Date();
end;

procedure TMaCartons.Button1Click(Sender: TObject);
var i:integer;
begin
   if RB1.Checked then
   begin
      HIorDI:='HI';
   end else
   begin
      HIorDI:='DI';
   end;
   with Carton do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select cs.SCDate,cs.DDBH ,Total,CartonOK,CarOK,CAST(substring (( select ''/'' + WOPR_Carton.Carton');
     SQL.Add('                                    from WOPR_Carton where WOPR_Carton.DDBH=cs.DDBH and WOPR_Carton.CheckCarton=''1'' and WOPR_Carton.SCDate=cs.SCDate and WOPR_Carton.GXLB='''+HIorDI+''' order by CAST(WOPR_Carton.Carton AS Integer)');
     SQL.Add('                                    for XML Path ('''')),2,1000) as varchar(1000)  ) as Carton');
     SQL.Add('from WOPR_Carton cs Left join DDZL on DDZL.DDBH=cs.DDBH ');
     SQL.Add('left join (select WOPR_Carton.DDBH,max (CAST(WOPR_Carton.Carton AS Integer)) as Total from WOPR_Carton group by WOPR_Carton.DDBH) T1 on T1.DDBH=cs.DDBH');
     SQL.Add('left join (select WOPR_Carton.SCDate,WOPR_Carton.DDBH,count (WOPR_Carton.Carton )as CartonOK from WOPR_Carton where CheckCarton=1 group by WOPR_Carton.DDBH,WOPR_Carton.SCDate) T2 on T2.DDBH=cs.DDBH and T2.SCDate= cs.SCDate');
     SQL.Add('left join (select WOPR_Carton.DDBH,count (WOPR_Carton.Carton )as CarOK from WOPR_Carton where CheckCarton=1 group by WOPR_Carton.DDBH) T3 on T3.DDBH=cs.DDBH ');
     SQL.Add('where 1=1 and cs.CheckCarton=''1'' and cs.GXLB='''+HIorDI+'''');
     if edtRY.Text<> '' then
       SQL.Add('and cs.DDBH ='''+edtRY.Text+'''');
     if CheckBox1.Checked=true then
       SQL.Add('and  CONVERT(varchar(10),cs.SCDate,111) between ''' + formatdatetime('yyyy/MM/dd', DTP1.date) + ''' and ''' + formatdatetime('yyyy/MM/dd', DTP2.date) + ''' ');
     SQL.Add('group by cs.SCDate,cs.DDBH,Total,CartonOK,CarOK');
     //funcObj.WriteErrorLog(sql.Text);
     Active:=true;
   end;

end;

procedure TMaCartons.Button2Click(Sender: TObject);
var
  eclApp,WorkBook:olevariant;
  i,j,k:integer;
begin
  if Carton.Active then
  begin
    if Carton.recordcount=0 then
    begin
      showmessage('No record.');
      abort;
    end;
  end else
  begin
    showmessage('No record.');
    abort;
  end;

  if edtRY.Text ='' then
  begin
     showmessage('Nhap don hang.' );
     abort;
  end else
  begin
     with TmpQry do
     begin
       Active:=false;
       SQL.Clear;
       SQL.Add('select DDBH from WOPR_Carton where 1=1');
       SQL.Add('and  ddbh ='''+edtRY.Text+'''');
       Active:=true;
     end;
     if TmpQry.RecordCount=0 then
     begin
       showmessage('Don hang khong dung hoac khong ton tai.');
       abort;
     end;
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
    eclApp.Cells(1,1):=Carton.FieldByName('DDBH').Value;
    eclApp.Cells(2,1):='Inspection Day';
    eclApp.Cells(2,2):='Inspected';
    eclApp.Cells(2,3):='Carton No';
    Carton.First;
    j:=3;
    while   not  Carton.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for i:=0 to DBGrdh1.Columns.Count-1 do
      begin
        eclApp.Cells(j,1):=DBGrdh1.Fields[0].Value;
        eclApp.Cells(j,2):=DBGrdh1.Fields[2].Value;
        eclApp.Cells[j,3].NumberFormatLocal:='@';
        eclApp.Cells(j,3):=Carton.FieldByName('Carton').AsString;
        //eclApp.Cells.Cells.item[j,i+2].font.size:='8';
      end;
      Carton.Next;
      inc(j);
      for k:=1 to 4 do
      begin
        eclApp.range[eclApp.cells[2,1],eclApp.cells[j-1,3]].borders[k].linestyle:=1;
      end;
    end;
    eclApp.Cells(j,1):='Inspected';
    eclApp.Cells(j+1,1):='Carton Qty';
    eclApp.Cells(j,2):=Carton.FieldByName('CarOK').Value;
    eclApp.Cells(j+1,2):=Carton.FieldByName('Total').Value;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;

end;

end.
