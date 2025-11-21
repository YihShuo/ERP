unit TempMaterial1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls,comobj;


type
  TTempMaterial = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Edit1: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    Query1: TQuery;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    Button2: TButton;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    Query1jijie: TStringField;
    Query1kfjd: TStringField;
    Query1devcode: TStringField;
    Query1article: TStringField;
    Query1cldh: TStringField;
    Query1ywpm: TStringField;
    Query1cltd: TStringField;
    Query1csbh: TStringField;
    Query1zsywjc: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TempMaterial: TTempMaterial;

implementation

{$R *.dfm}

procedure TTempMaterial.Button1Click(Sender: TObject);
begin
  if edit2.text='' then
     showmessage('Input Season');
  with query1 do
  begin
     active:=false;
     sql.Clear;
     sql.add('select a.*,zszl.zsywjc from (');
     sql.add('select kfxxzl.jijie,ypzl.kfjd,kfxxzl.devcode,ypzl.article ,clzl.cldh,clzl.ywpm,clzl.cltd,ypzls.csbh from ypzls');
     sql.add('left join ypzl on ypzl.ypdh=ypzls.ypdh');
     sql.add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
     sql.add('left join clzl on ypzls.clbh=clzl.cldh');
     sql.add('where kfxxzl.khdh=''036'' and ypzl.kfjd like ''' +edit3.text+'%''  and kfxxzl.jijie='''+edit2.text+''' and clzl.cldh like  ''V%''   ');
     if checkbox1.checked then
        sql.add('and  (clzl.cltd is  null or clzl.cltd ='''') ');
     if edit1.text<>'' then
     begin
         sql.add('and  clzl.cldh like ''' + edit1.Text + '%''');
       //sql.add('and  cldh like ''' + edit1.Text + '%' + Edit2.Text + ''' ');
     end;
     sql.add('union');
     sql.add('select kfxxzl.jijie,ypzl.kfjd,kfxxzl.devcode,ypzl.article,clzhzl.cldh1,clzl.ywpm,clzl.cltd,ypzls.csbh from ypzls');
     sql.add('inner join clzhzl on clzhzl.cldh=ypzls.clbh');
     sql.add('left join ypzl on ypzl.ypdh=ypzls.ypdh');
     sql.add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
     sql.add('left join clzl on clzhzl.cldh1=clzl.cldh');
     sql.add('where kfxxzl.khdh=''036'' and ypzl.kfjd like '''+edit3.text+ '%''  and kfxxzl.jijie='''+edit2.text+ ''' and clzl.cldh like  ''V%'' ');
     if checkbox1.checked then
        sql.add('and  (clzl.cltd is  null or clzl.cltd ='''') ');
     if edit1.text<>'' then
     begin
         sql.add('and  clzl.cldh like ''' + edit1.Text + '%'' ');
       //sql.add('and  cldh like ''' + edit1.Text + '%' + Edit2.Text + ''' ');
     end;
     sql.add('union');
     sql.add('select jijie,kfjd,devcode,article,clzhzl.cldh1,clzl.ywpm,clzl.cltd,csbh from (');
     sql.add('select kfxxzl.jijie,ypzl.kfjd,kfxxzl.devcode,ypzl.article,clzl.cldh,clzl.ywpm,ypzls.csbh from ypzls');
     sql.add('inner join clzhzl on clzhzl.cldh=ypzls.clbh');
     sql.add('left join ypzl on ypzl.ypdh=ypzls.ypdh');
     sql.add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
     sql.add('left join clzl on clzhzl.cldh1=clzl.cldh');
     sql.add('where kfxxzl.khdh=''036'' and ypzl.kfjd like '''+edit3.text+ '%'' and kfxxzl.jijie='''+edit2.text+ ''' )clzhzl2 ');
     sql.add('inner join clzhzl on clzhzl.cldh=clzhzl2.cldh');
     sql.add('left join clzl on clzhzl.cldh1=clzl.cldh');
     sql.add('where  clzl.cldh like  ''V%'' ');
     if checkbox1.checked then
        sql.add('and  (clzl.cltd is  null or clzl.cltd ='''' ) ');
     if edit1.text<>'' then
     begin
         sql.add('and  clzl.cldh like ''' + edit1.Text + '%'' ');
       //sql.add('and  cldh like ''' + edit1.Text + '%' + Edit2.Text + ''' ');
     end;
     sql.add(')a');
     sql.add('left join zszl on zszl.zsdh=a.csbh');
     sql.add('order by jijie,kfjd,devcode');
    // memo1.text:=sql.text;
     active:=true;
  end;
end;

procedure TTempMaterial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TTempMaterial.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  query1.active  then
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
        for   i:=0   to   query1.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
          end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
          begin
            for   i:=0   to  query1.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=query1.Fields[i].Value;
            end;
          query1.Next;
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
