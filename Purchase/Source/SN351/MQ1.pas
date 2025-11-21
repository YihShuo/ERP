unit MQ1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, GridsEh, DBGridEh, ExtCtrls, ComCtrls,comobj;

type
  TMQ = class(TForm)
    DBGridEh1: TDBGridEh;
    MQT: TQuery;
    DataSource1: TDataSource;
    Panel1: TPanel;
    dates: TDateTimePicker;
    datee: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;
    CheckBox17: TCheckBox;
    CheckBox18: TCheckBox;
    CheckBox19: TCheckBox;
    CheckBox20: TCheckBox;
    CheckBox21: TCheckBox;
    CheckBox22: TCheckBox;
    CheckBox23: TCheckBox;
    CheckBox24: TCheckBox;
    CheckBox25: TCheckBox;
    CheckBox26: TCheckBox;
    CheckBox27: TCheckBox;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    CheckBox28: TCheckBox;
    Label3: TLabel;
    CheckBox29: TCheckBox;
    MQTarticle: TStringField;
    MQTzwsm: TStringField;
    MQTkfdh: TStringField;
    MQTcreatedate: TDateTimeField;
    MQTcldh: TStringField;
    MQTzwpm: TStringField;
    MQTywpm: TStringField;
    MQTysbh: TStringField;
    MQTxxbh: TStringField;
    MQTkfqm: TStringField;
    MQTkfjc: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MQ: TMQ;

implementation

{$R *.dfm}

procedure TMQ.Button1Click(Sender: TObject);
begin

 with MQT do
  begin
    Active:=true;
    SQL.Clear;
    SQL.Add('select ypzl.article,bwzl.zwsm,CLZL.kfdh,CLZL_DEV.Createdate,clzl.cldh,zwpm,ywpm,ysbh,xxbh,kfzl.kfqm,kfzl.kfjc from CLZL ');
    SQL.Add('left join kfzl on kfzl.kfdh = CLZL.kfdh ');
    SQL.Add('left join ypzls on ypzls.CLBH=clzl.cldh');
    SQL.Add('left join bwzl on bwzl.bwdh = ypzls.BWBH');
    SQL.Add('left join CLZL_DEV on CLZL_DEV.cldh = clzl.cldh');
    SQL.Add('left join ypzl on ypzl.ypdh=ypzls.ypdh');
    sql.add('WHERE convert(smalldatetime,convert(varchar,CLZL_DEV.Createdate,111)) between ');
    sql.add('   '''+formatdatetime('yyyy/MM/dd',DATES.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DATEe.Date) +'''');
    if edit1.text<>'' then
       SQL.Add('and CLZL.cldh like  ''%'+edit1.Text+'%'' ');
    if Checkbox1.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''A''');
    if Checkbox2.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''B''');
    if Checkbox3.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''C''');
    if Checkbox4.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''D''');
    if Checkbox5.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''E''');
    if Checkbox6.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''F''');
    if Checkbox7.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''G''');
    if Checkbox8.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''H''');
    if Checkbox9.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''I''');
    if Checkbox10.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''J''');
    if Checkbox11.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''K''');
    if Checkbox12.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''L''');
    if Checkbox13.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''M''');
    if Checkbox14.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''N''');
    if Checkbox15.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''O''');
    if Checkbox16.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''P''');
    if Checkbox17.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''Q''');
    if Checkbox18.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''R''');
    if Checkbox19.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''S''');
    if Checkbox20.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''T''');
    if Checkbox21.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''U''');
    if Checkbox22.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''V''');
    if Checkbox23.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''W''');
    if Checkbox24.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''X''');
    if Checkbox25.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''Y''');
    if Checkbox26.Checked = false then
       SQL.Add('and substring(clzl.cldh,1,1) <> ''Z''');
    if Checkbox27.Checked = true then
       SQL.Add('and (CLZL.kfdh=''036'' OR CLZL.kfdh=''0036'')');
    if Checkbox28.Checked = true then
       SQL.Add('and (CLZL.kfdh=''049'' OR CLZL.kfdh=''0049'')');
    if Checkbox29.Checked = true then
       SQL.Add('and (CLZL.kfdh<>''049'' and CLZL.kfdh<>''0049'' and CLZL.kfdh<>''036'' and CLZL.kfdh=''0036''  )');
    sql.add('group by bwzl.zwsm,CLZL.kfdh,CLZL_DEV.Createdate,clzl.cldh,zwpm,ywpm,ysbh,xxbh,kfzl.kfqm,kfzl.kfjc,ypzl.article');
    sql.add('ORDER BY CLZL_DEV.Createdate');
    Active:=true;

  end;
end;



procedure TMQ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action:=caFree;
end;

procedure TMQ.FormCreate(Sender: TObject);
begin
   dates.date:=now-60;
   datee.date:=now;
end;

procedure TMQ.FormDestroy(Sender: TObject);
begin
  MQ:=nil;
end;

procedure TMQ.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  MQT.active  then
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
        for   i:=0   to   MQT.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=MQT.fields[i].FieldName;
          end;

        MQT.First;
        j:=2;
        while   not   MQT.Eof   do
          begin
            for   i:=0   to  MQT.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=MQT.Fields[i].Value;
            end;
          MQT.Next;
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


end.
