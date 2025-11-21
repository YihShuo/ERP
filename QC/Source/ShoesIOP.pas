unit ShoesIOP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DB, Grids, DBGrids, DBTables,
  colorbutton;

type
  TShoesIO = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    ComboBox1: TComboBox;
    Label1: TLabel;
    orderlistq: TQuery;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    tempq: TQuery;
    Panel5: TPanel;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Edit4: TEdit;
    Panel6: TPanel;
    DBGrid2: TDBGrid;
    DataSource2: TDataSource;
    Query1: TQuery;
    GetSize: TColorButton;
    csave: TColorButton;
    Query1cc: TStringField;
    Query1quantity: TIntegerField;
    Query1LShoe: TIntegerField;
    Query1RShoe: TIntegerField;
    UpdateSQL1: TUpdateSQL;
    checkWHT: TQuery;
    Label6: TLabel;
    classcb: TComboBox;
    Query1xiexing: TStringField;
    Query1shehao: TStringField;
    Query1class: TStringField;
    updataQ: TQuery;
    Label7: TLabel;
    ComboBox2: TComboBox;
    Label8: TLabel;
    ComboBox3: TComboBox;
    orderlistqDDBH: TStringField;
    orderlistqXieXing: TStringField;
    orderlistqSheHao: TStringField;
    orderlistqARTICLE: TStringField;
    orderlistqVersion: TSmallintField;
    orderlistqShipDate: TDateTimeField;
    orderlistqPairs: TIntegerField;
    orderlistqGSBH: TStringField;
    orderlistqKHPO: TStringField;
    Creload: TColorButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure GetSizeClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure csaveClick(Sender: TObject);
    procedure CreloadClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ShoesIO: TShoesIO;

implementation

uses main1, Inspectp;

{$R *.dfm}

procedure TShoesIO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  shoesIO:=nil;
  action:=Cafree;
end;

procedure TShoesIO.FormCreate(Sender: TObject);
begin
  with tempq do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select article from ddzl ');
    sql.Add('left join ywdd on ddzl.ddbh=ywdd.ddbh ');
    sql.Add('  where ddzl.gsbh='+''''+main.edit2.text+'''');
    sql.Add('   and ywdd.exesb is null');
    sql.Add('		and ddzl.shipdate > getdate() - 3');
    sql.Add('group by article');
    sql.Add('order by article');
    active:=true;
    first;
    //memo1.text:=sql.text;

    while not eof  do
    begin
      combobox1.Items.Add(fieldbyname('article').value);
      Next;
    end;
  end;

  with tempq do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select Depname from BDepartment ');
    sql.Add('  where gsbh in (''VA12'',''VA3'',''VB2'')');    //加入B2廠 star 2014.3.3
    sql.add(' and proyn=1 ');
    sql.Add('		and gxlb =''A'''); //+','+''''+'S'+''''+')');
    active:=true;
    first;
    //memo1.text:=sql.text;

    while not eof  do
    begin
      combobox2.Items.Add(fieldbyname('depname').value);
      Next;
    end;
  end;
  combobox2.ItemIndex:=0;
  with orderlistq do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select ddzl.* from ddzl ');
    sql.Add('left join ywdd on ddzl.ddbh=ywdd.ddbh ');
    sql.Add('  where ddzl.gsbh='+''''+main.edit2.text+''''+' and ywdd.exesb is null');
    sql.Add('		and ddzl.shipdate > getdate()-3'); //+''''+'2012/06/01'+'''');
    sql.Add('order by ddzl.ddbh');
   //memo1.Text:=sql.text;
    active:=true;
  end;



end;

procedure TShoesIO.ComboBox1Change(Sender: TObject);
begin
  with orderlistq do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select ddzl.* from ddzl ');
    sql.Add('left join ywdd on ddzl.ddbh=ywdd.ddbh ');
    sql.Add('  where ddzl.gsbh='+''''+main.edit2.text+'''');
    sql.add('  and ywdd.exesb is null');
    sql.Add('		and ddzl.shipdate > getdate() - 3');
    if combobox1.Text <>'ALL' then
      sql.Add('   and article='+''''+combobox1.text+'''');
    sql.Add('order by ddzl.ddbh');
    active:=true;
  end;
end;

procedure TShoesIO.GetSizeClick(Sender: TObject);
begin

  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select ddzl.xiexing,ddzl.shehao,ddzls.cc,ddzls.quantity,');
    sql.add('0 as LShoe,0 as RShoe,'+''''+classcb.Text+''''+' as class');
    sql.Add('from ddzls');
    sql.add('left join ddzl on ddzl.ddbh=ddzls.ddbh');
    sql.Add('where ddzls.ddbh='+''''+edit3.text+'''');
    active:=true;
    cachedupdates:=true;
    requestlive:=true;
    edit;
  end;
  csave.Enabled:=true;
  creload.Enabled:=true;
  checkwht.active:=true;
  classcb.enabled:=false;
  combobox2.Enabled:=false;
end;

procedure TShoesIO.DBGrid1DblClick(Sender: TObject);
begin
  if combobox2.Enabled then
  begin
    edit3.Text:=orderlistq.fieldbyname('ddbh').value;
    edit2.text:=orderlistq.fieldbyname('article').value;
    edit1.Text:=orderlistq.fieldbyname('xiexing').value;
    edit4.Text:=orderlistq.fieldbyname('Shehao').value;
  end;
end;

procedure TShoesIO.csaveClick(Sender: TObject);
var y,m,d:word;
srno,ss:string;
i,tss : integer;
begin
  decodedate(date,y,m,d);
  srno:='';
  srno:='I'+inttostr(y);

  if length(inttostr(m))=1 then
    srno:=srno+'0'+inttostr(m)
  else
    srno:=srno+inttostr(m);

  if length(inttostr(d))=1 then
    srno:=srno+'0'+inttostr(d)
  else
    srno:=srno+inttostr(d);

  with tempq do
  begin
    active:=false;
    sql.Clear;
    sql.add('select isnull(right(max(qwno),3),0)+1 as qwno from qc_whd ');
    sql.Add(' where substring(qwno,1,9)='+''''+srno+'''');
    active:=true;
  end;
  //算單號
  if tempq.fieldbyname('qwno').value > 1 then
  begin
    for i:=1 to (3-length(inttostr(tempq.fieldbyname('qwno').value))) do
      ss:=ss+'0';
    ss:=ss+inttostr(tempq.fieldbyname('qwno').value);
  end
  else
  begin
    ss:='001';
  end;
  srno:=srno+ss;
  //設定TEMPQ為部門檔
  with tempq do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select id,Depname from BDepartment ');
    sql.Add('  where gsbh in (''VA12'',''VA3'',''VB2'')');  //加入B2廠 star 2014.3.3
    sql.add(' and proyn=1 ');
    sql.Add('		and gxlb =''A'''); //+','+''''+'S'+''''+')');
    active:=true;
  end;


  with updataq do
  begin
    active:=false;
    sql.clear;
    query1.first;
    while not query1.Eof  do
    begin
      if (query1.fieldbyname('rshoe').Value>0) or (query1.fieldbyname('Lshoe').Value>0) then
      begin
        sql.add('INSERT INTO QC_WHD');
        sql.add(' ([QWno],[size],[ryno],[UpdateSN],[DEP_ID],[Class],[RQTY],[LQTY],[userdate],[userID])');
        sql.add('VALUES');
        sql.add('('+''''+srno+''''+',' );
        sql.add(''''+query1.fieldbyname('cc').value+''''+',');
        sql.add(''''+edit3.Text+''''+',');

        if checkWHT.RecordCount>0 then
          sql.add(inttostr(checkwht.FieldByName('sn').Value)+',')
        else
          sql.add('0,');

        if tempq.Locate('Depname',combobox2.Text,[]) then
          sql.add(''''+tempq.FieldByName('ID').Value+''''+',');
        sql.add(''''+classcb.Text+''''+',');
        sql.add(inttostr(query1.fieldbyname('rshoe').Value)+',');
        sql.add(inttostr(query1.fieldbyname('lshoe').Value)+',');
        sql.add('getdate(),');
        sql.add(''''+main.Edit1.Text+''''+')');
        sql.add('');
      end;  
      query1.Next;
    end;
    //memo1.text:=sql.text;
    execSql;
  end;
 {  由QC_WHD 加總到QC_WHT
   如果 updatesn 為 0 就新增一筆
   加總 左右 腳後 取小的為雙數更新
   SRNO 用來記錄單號
   QC_WHT取得新的SR後回寫回去QC_WHD}
  with tempq do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select isnull(max(sn),0) as maxsn from  qc_wht');
    active:=true;
    tss:=fieldbyname('maxsn').Value;
    active:=false;
    sql.Clear;
    sql.add('select qc_whd.class,qc_whd.size,qc_whd.updatesn');
    sql.add('	,sum(Rqty) as rqty,sum(LQTY) as lqty');
    sql.add(' from qc_whd');
    sql.add('left join ddzl on ddzl.ddbh=qc_whd.ryno');
    sql.add('where ddzl.xiexing='+''''+edit1.Text+'''');
    sql.add('      and ddzl.shehao='+''''+edit4.Text+'''');
    sql.add('group by qc_whd.class,qc_whd.size,qc_whd.updatesn');
    active:=true;

  end;
 //更新配雙主檔
  with updataq do
  begin
    tempq.first;
    active:=false;
    sql.clear;
    while not tempq.Eof  do
    begin
      if tempq.FieldByName('updatesn').Value=0 then
      begin
        //新增後更新QC_WHD
        sql.Add('INSERT INTO QC_WHT');
        sql.Add(' ([xiexing],[SheHao],[ARTICLE],[size],[CLASS],[QTY],[gsbh],[creatdate]');
        sql.Add(' ,[creatuser],[userdate],[userID])');
        sql.Add('VALUES');
        sql.Add('('+''''+edit1.Text+''''+',');
        sql.Add(''''+edit4.Text+''''+',');
        sql.Add(''''+edit2.Text+''''+',');
        sql.Add(''''+tempq.fieldbyname('size').value+''''+',');
        sql.Add(''''+tempq.fieldbyname('class').value+''''+',');
        if tempq.fieldbyname('rqty').value >= tempq.fieldbyname('LQTY').value then
          sql.Add(inttostr(tempq.fieldbyname('lqty').value)+',')
        else
          sql.Add(inttostr(tempq.fieldbyname('Rqty').value)+',');
        sql.add(''''+combobox3.text+''''+',');
        sql.add('getdate(),');
        sql.add(''''+main.Edit1.Text+''''+',');
        sql.add('getdate(),');
        sql.add(''''+main.Edit1.Text+''''+')');
      end
      else
      begin
        sql.Add('UPDATE [liy_erp].[dbo].[QC_WHT]');
        if tempq.fieldbyname('rqty').value >= tempq.fieldbyname('LQTY').value then
          sql.Add('set qty='+inttostr(tempq.fieldbyname('lqty').value))
        else
          sql.Add('set qty='+inttostr(tempq.fieldbyname('Rqty').value));
        sql.Add(',[userdate] = getdate()');
        sql.Add(',[userID] ='+''''+main.Edit1.Text+'''');
        sql.Add('where sn='+inttostr(tempq.FieldByName('updatesn').Value));
        sql.Add('');
      end;
      tempq.Next;
    end;
    //memo1.Text:=sql.Text;
    ExecSQL;
  end;
  //更新updatesn為0
  with updataq do
  begin
    query1.first;
    active:=false;
    sql.clear;
    while not query1.Eof  do
    begin
      if checkWHT.RecordCount>0 then
      begin
        sql.add('update QC_WHD');
        sql.add('set updatesn='+inttostr(checkwht.FieldByName('sn').Value));
        sql.add('where ryno='+''''+edit3.text+'''');
        sql.add('     and size='+''''+query1.fieldbyname('cc').value+'''');
      end;
      query1.Next;
    end;
    execsql;
  end;
  csave.Enabled:=false;
  Creload.Enabled:=false;
  query1.Active:=false;
  checkwht.active:=false;
  classcb.enabled:=true;
  combobox2.Enabled:=true;
end;

procedure TShoesIO.CreloadClick(Sender: TObject);
begin
  csave.Enabled:=false;
  Creload.Enabled:=false;
  query1.Active:=false;
  checkwht.active:=false;
  classcb.enabled:=true;
  combobox2.Enabled:=true;
end;

end.
