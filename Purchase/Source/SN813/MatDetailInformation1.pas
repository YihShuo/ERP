unit MatDetailInformation1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, GridsEh, DBGridEh, DBTables,comobj;

type
  TMatDetailInformation = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Query1: TQuery;
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    Button1: TButton;
    Button2: TButton;
    subquery: TQuery;
    DBGridEh2: TDBGridEh;
    DataSource2: TDataSource;
    subquerys: TQuery;
    DataSource3: TDataSource;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  MatDetailInformation: TMatDetailInformation;
    aArray : array[0..9999,0..9999] of string ;
    exceli,excelj : integer;
implementation

{$R *.dfm}

procedure TMatDetailInformation.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TMatDetailInformation.FormDestroy(Sender: TObject);
begin
  MatDetailInformation:=nil;
end;

procedure TMatDetailInformation.Button1Click(Sender: TObject);
var
   typename:TStrings;
   i,j,k,h:integer;
   s:string;
begin
  button3.Enabled:=true;
  i:=0;
  j:=1;
  h:=0;
  with query1 do
  begin
     active:=false;
     sql.Clear;
     sql.add('select isnull(cllbzls.txywsm,''123'') as  txywsm from (');
     sql.add('select clzl.cldh,clzl.ywpm from ypzls');
     sql.add('left join ypzl on ypzl.ypdh=ypzls.ypdh');
     sql.add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
     sql.add('left join clzl on ypzls.clbh=clzl.cldh');
     sql.add('where kfxxzl.khdh=''036'' and ypzl.kfjd like '''+'%'+edit1.text+'%'+''' and kfxxzl.jijie='''+edit2.text+''' ');
     sql.add('union');
     sql.add('select clzhzl.cldh1,clzl.ywpm from ypzls');
     sql.add('inner join clzhzl on clzhzl.cldh=ypzls.clbh');
     sql.add('left join ypzl on ypzl.ypdh=ypzls.ypdh');
     sql.add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
     sql.add('left join clzl on clzhzl.cldh1=clzl.cldh');
     sql.add('where kfxxzl.khdh=''036'' and ypzl.kfjd like '''+'%'+edit1.text+'%'+''' and kfxxzl.jijie='''+edit2.text+''' ');
     sql.add('union');
     sql.add('select clzhzl.cldh1,clzl.ywpm from (');
     sql.add('select clzl.cldh,clzl.ywpm from ypzls');
     sql.add('inner join clzhzl on clzhzl.cldh=ypzls.clbh');
     sql.add('left join ypzl on ypzl.ypdh=ypzls.ypdh');
     sql.add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
     sql.add('left join clzl on clzhzl.cldh1=clzl.cldh');
     sql.add('where kfxxzl.khdh=''036'' and ypzl.kfjd like '''+'%'+edit1.text+'%'+''' and kfxxzl.jijie='''+edit2.text+''' )clzhzl2');
     sql.add('inner join clzhzl on clzhzl.cldh=clzhzl2.cldh');
     sql.add('left join clzl on clzhzl.cldh1=clzl.cldh');
     sql.add(')a');
     sql.add('left join cllbzls on cllbzls.lb=left(a.cldh,1)');
     sql.add('where cllbzls.txywsm is not null');
     sql.add('group by cllbzls.txywsm ');


    { sql.add('select cllbzls.txzwsm from clzl');
     sql.add('left join cllbzls on cllbzls.lb=left(clzl.cldh,1)');
     sql.add('where clzl.cldh in (''A060001523'',''D010000003'')');
     sql.add('group by cllbzls.txzwsm');     }
     //memo1.text:=sql.text;
     active:=true;
  end;
  query1.first;
  aArray[0][0]:='MatNO';
  aArray[1][0]:='Type';
  aArray[2][0]:='MaterialName';
  aArray[3][0]:='InitialSeason';
  aArray[4][0]:='VendorCode';
  aArray[5][0]:='Supplier';
  aArray[6][0]:='Address';
  aArray[7][0]:='Country';
  aArray[8][0]:='Sample L/T(Days)';
  aArray[9][0]:='Production L/T (Days)';
  aArray[10][0]:='MOQSample';
  aArray[11][0]:='MOQProduction';
  aArray[12][0]:='MaterialPrice';
  i:=i+13;
  while   not  query1.Eof   do
  begin
       if query1.FieldByName('txywsm').asstring<>'' then
          aArray[i][0]:=query1.FieldByName('txywsm').Value;
       i:=i+1;
       query1.next;       //第一欄為材料編號其他填入所有類別
  end;
  exceli:=i;
  with query1 do
  begin                            
     active:=false;
     sql.Clear;
     sql.add('select  a.cldh,left(a.cldh,1)as lb,a.ywpm,cllbzl.ywsm as cllbzl,materialmoq.zsywjc,materialmoq.yjdz,materialmoq.zsbh,materialmoq.sampleleadtime');
     sql.add(' ,materialmoq.prodleadtime,materialmoq.samplemoq,materialmoq.prodmoq,materialmoq.sampleprice,materialmoq.location from (');
     sql.add('select clzl.cldh,clzl.ywpm from ypzls');
     sql.add('left join ypzl on ypzl.ypdh=ypzls.ypdh');
     sql.add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
     sql.add('left join clzl on ypzls.clbh=clzl.cldh');
     sql.add('where kfxxzl.khdh=''036'' and ypzl.kfjd like '''+'%'+edit1.text+'%'+''' and kfxxzl.jijie='''+edit2.text+''' ');
     sql.add('union');
     sql.add('select clzhzl.cldh1,clzl.ywpm from ypzls');
     sql.add('inner join clzhzl on clzhzl.cldh=ypzls.clbh');
     sql.add('left join ypzl on ypzl.ypdh=ypzls.ypdh');
     sql.add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
     sql.add('left join clzl on clzhzl.cldh1=clzl.cldh');
     sql.add('where kfxxzl.khdh=''036'' and ypzl.kfjd like '''+'%'+edit1.text+'%'+''' and kfxxzl.jijie='''+edit2.text+''' ');
     sql.add('union');
     sql.add('select clzhzl.cldh1,clzl.ywpm from (');
     sql.add('select clzl.cldh,clzl.ywpm from ypzls');
     sql.add('inner join clzhzl on clzhzl.cldh=ypzls.clbh');
     sql.add('left join ypzl on ypzl.ypdh=ypzls.ypdh');
     sql.add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
     sql.add('left join clzl on clzhzl.cldh1=clzl.cldh');
     sql.add('where kfxxzl.khdh=''036'' and ypzl.kfjd like '''+'%'+edit1.text+'%'+''' and kfxxzl.jijie='''+edit2.text+''' )clzhzl2');
     sql.add('inner join clzhzl on clzhzl.cldh=clzhzl2.cldh');
     sql.add('left join clzl on clzhzl.cldh1=clzl.cldh');
     sql.add(')a');
     sql.add('left join cllbzl on cllbzl.cllb=left(a.cldh,3)');
     sql.add('left join (select zszl.zsywjc,zszl.yjdz,zsbh,clbh,sampleleadtime,prodleadtime,samplemoq,prodmoq,sampleprice,location from materialmoq left join zszl on materialmoq.zsbh=zszl.zsdh where season='''+edit2.text+''')materialmoq on materialmoq.clbh=a.cldh');
     sql.add('where a.cldh is not null and a.cldh not like ''V%'' and a.cldh like '''+edit3.text+'%'+'''');
     sql.add('group by a.cldh,left(a.cldh,1),a.ywpm,cllbzl.ywsm,materialmoq.zsywjc,materialmoq.yjdz,materialmoq.zsbh,materialmoq.sampleleadtime,materialmoq.prodleadtime,materialmoq.samplemoq,materialmoq.prodmoq,materialmoq.sampleprice,materialmoq.location');
     sql.add('order by a.cldh');

     //memo1.text:=sql.text;
     active:=true;
  end;                //抓取需要的材料編號

  query1.first;
  while   not  query1.Eof   do
  begin
      with subquery do
      begin
         active:=false;
         sql.Clear;
         sql.add('select cldh,clbm,cllbzls.txxh,txywsm from clzl');
         sql.add('left join cllbzls on cllbzls.lb='''+query1.FieldByName('lb').Value+''' ');
         sql.add('where clzl.cldh='''+query1.FieldByName('cldh').Value+''' ');
         active:=true;
      end;
      k:=1;
      s:=subquery.FieldByName('clbm').Value;

      while k<100 do
      begin
        s:=copy(subquery.FieldByName('clbm').Value,k,4);
        with subquerys do
        begin
           active:=false;
           sql.Clear;
           sql.add('select nrywsm from cllbzlss');
           sql.add('where cllbzlss.lb='''+query1.FieldByName('lb').Value+''' and txxh='''+subquery.FieldByName('txxh').Value+''' and nrdh='''+s+''' ');
           active:=true;
        end;
        h:=0;
        while h<i do
        begin
           if subquerys.FieldByName('nrywsm').asstring<>'' then
              begin

                 if aArray[h][0]=subquery.FieldByName('txywsm').Value then
                 begin
                 aArray[h][j]:=subquerys.FieldByName('nrywsm').Value;
                 end;
              end;
        h:=h+1;
        end;
        subquery.Next;
        k:=k+4;
        s:='';
      end;
  aArray[0][j]:=query1.FieldByName('cldh').Value;   
  aArray[1][j]:=query1.FieldByName('cllbzl').Value;
  aArray[2][j]:=query1.FieldByName('ywpm').Value;
  aArray[3][j]:=edit2.Text;
  if query1.FieldByName('zsbh').asstring<>'' then
     aArray[4][j]:=query1.FieldByName('zsbh').Value;;
  if query1.FieldByName('zsywjc').asstring<>'' then
     aArray[5][j]:=query1.FieldByName('zsywjc').Value;
  if query1.FieldByName('yjdz').asstring<>'' then
     aArray[6][j]:=query1.FieldByName('yjdz').Value;
  if query1.FieldByName('location').asstring<>'' then
     aArray[7][j]:=query1.FieldByName('location').Value;
  if query1.FieldByName('sampleleadtime').asstring<>'' then
     aArray[8][j]:=query1.FieldByName('sampleleadtime').Value;
  if query1.FieldByName('prodleadtime').asstring<>'' then
     aArray[9][j]:=query1.FieldByName('prodleadtime').Value;
  if query1.FieldByName('samplemoq').asstring<>'' then
     aArray[10][j]:=query1.FieldByName('samplemoq').Value;
  if query1.FieldByName('prodmoq').asstring<>'' then
     aArray[11][j]:=query1.FieldByName('prodmoq').Value;
  if query1.FieldByName('sampleprice').asstring<>'' then
     aArray[12][j]:=query1.FieldByName('sampleprice').Value;

  j:=j+1;
  query1.next;
  end;
  excelj:=j;


{  showmessage('(0,0)'+aArray[0][0]+'(0,1)'+aArray[0][1]+'(0,2)'+aArray[0][2]+'(0,3)'+aArray[0][3]+'(0,4)'+aArray[0][4]+'(0,5)'+aArray[0][5]+
  '(1,0)'+aArray[1][0]+'(1,1)'+aArray[1][1]+'(1,2)'+aArray[1][2]+'(1,3)'+aArray[1][3]+'(1,4)'+aArray[1][4]+'(1,5)'+aArray[1][5]+
  '(2,0)'+aArray[2][0]+'(2,1)'+aArray[2][1]+'(2,2)'+aArray[2][2]+'(2,3)'+aArray[2][3]+'(2,4)'+aArray[2][4]+'(2,5)'+aArray[2][5]
  );   }

end;

procedure TMatDetailInformation.Button2Click(Sender: TObject);
var
  OlePropertyGet,eclApp,WorkBook:olevariant;
  i,j:integer;

begin
    if  query1.active  then
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
    WorkBook:=eclApp.workbooks.Add;
    eclApp.Cells(1,1):='Item';
    eclApp.Cells(1,2):='Type';
    eclApp.Cells(1,3):='Material ID';
    eclApp.Cells(1,4):='Initial Season';
    eclApp.Cells(1,5):='Material Name';
    eclApp.Cells(1,6):='Material Status';
    eclApp.Cells(1,7):='Comment';
    eclApp.Cells(1,8):='Leather Category';
    eclApp.Cells(1,9):='Thickness';
    eclApp.Cells(1,10):='Leather Efficiency %';
    eclApp.Cells(1,11):='Hide Type';
    eclApp.Cells(1,12):='Softness Min';
    eclApp.Cells(1,13):='Softness Max';
    eclApp.Cells(1,14):='Oil Content Min %';
    eclApp.Cells(1,15):='Oil Content Max %';
    eclApp.Cells(1,16):='Vendor Code';
    eclApp.Cells(1,17):='Supplier';
    eclApp.Cells(1,18):='Address';
    eclApp.Cells(1,19):='City';
    eclApp.Cells(1,20):='State/Province';
    eclApp.Cells(1,21):='Country';
    eclApp.Cells(1,22):='Zip/Postcode';
    eclApp.Cells(1,23):='Supplier Material Status';
    eclApp.Cells(1,24):='Material Price';
    eclApp.Cells(1,25):='Unit Used on BOM (ie. yd)';
    eclApp.Cells(1,26):='Sample L/T (Days)';
    eclApp.Cells(1,27):='Production L/T (Days)';
    eclApp.Cells(1,28):='MOQ Sample';
    eclApp.Cells(1,29):='MOQ Production';
    eclApp.Cells(1,30):='MOQ (UOM)';
    eclApp.Cells(1,31):='Custom Colors';
    eclApp.Cells(1,32):='Sample RSL Test Status';
    eclApp.Cells(1,33):='MCS Code ';
    eclApp.Cells(1,34):='Organic Percentage';
    eclApp.Cells(1,35):='Recycled Percentage';
    query1.First;
    j:=2;
    while   not  query1.Eof   do
    begin
      for   i:=1   to   query1.fieldcount do
      begin
        eclApp.Cells(j,1):=j-2;
        eclApp.Cells(j,1+i):=query1.Fields[i-1].AsString;
        eclApp.Rows[j].WrapText  := True;
        eclApp.Cells(j,2):='';
      end;
      query1.Next;
        inc(j);
      end;
      showmessage('Succeed.');
      eclapp.columns.autofit;
      eclApp.ActiveSheet.PageSetup.Orientation := 2; //列印直=1,橫式=2
      eclApp.Visible:=True;
      except
      on   F:Exception   do
        showmessage(F.Message);
      end;
end;

procedure TMatDetailInformation.Button3Click(Sender: TObject);
var
  OlePropertyGet,eclApp,WorkBook:olevariant;
  i,j:integer;

begin
    if  query1.active  then
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
    WorkBook:=eclApp.workbooks.Add;

     for   i:=1   to  exceli do
     begin
       for j:=1 to excelj do
       begin
          eclApp.Cells(j,i):=aArray[i-1][j-1];
       end;
     end;
     showmessage('Succeed.');
     eclapp.columns.autofit;
     eclApp.ActiveSheet.PageSetup.Orientation := 2; //列印直=1,橫式=2
     eclApp.Visible:=True;
     except
     on   F:Exception   do
         showmessage(F.Message);
     end;
 {     showmessage('(0,0)'+aArray[0][0]+'(0,1)'+aArray[0][1]+'(0,2)'+aArray[0][2]+'(0,3)'+aArray[0][3]+'(0,4)'+aArray[0][4]+'(0,5)'+aArray[0][5]+
  '(1,0)'+aArray[1][0]+'(1,1)'+aArray[1][1]+'(1,2)'+aArray[1][2]+'(1,3)'+aArray[1][3]+'(1,4)'+aArray[1][4]+'(1,5)'+aArray[1][5]+
  '(2,0)'+aArray[2][0]+'(2,1)'+aArray[2][1]+'(2,2)'+aArray[2][2]+'(2,3)'+aArray[2][3]+'(2,4)'+aArray[2][4]+'(2,5)'+aArray[2][5]
  );    }
end;
procedure TMatDetailInformation.Edit2Change(Sender: TObject);
begin
  if edit2.text<>'' then
     button1.enabled:=true;
end;

end.
