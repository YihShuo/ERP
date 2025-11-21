unit MaterialMOQ_LaceStyle1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,DBGridEhImpExp,
  Dialogs, Buttons, DBTables, DB, StdCtrls, Grids, DBGrids, ExtCtrls,comobj,ShellAPI,
  GridsEh, DBGridEh, OleServer, ExcelXP;

type
  TMaterialMOQ_LaceStyle = class(TForm)
    Panel2: TPanel;
    DBGrid1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    UpSQL1: TUpdateSQL;
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    bbt6: TBitBtn;
    Query1nrdh: TStringField;
    Query1Lace_Spec: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1Remark: TStringField;
    Query1SEASON: TStringField;
    ExcelApplication1: TExcelApplication;
    SaveDialog1: TSaveDialog;
    QryTmp: TQuery;
    Query1nrdh_2: TStringField;
    Query1Lace_Spec_2: TStringField;
    Query1SamplePrice: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialMOQ_LaceStyle: TMaterialMOQ_LaceStyle;

implementation

uses main1, MaterialMOQ1;

{$R *.dfm}

procedure TMaterialMOQ_LaceStyle.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if query1.requestlive then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
   action:=Cafree;
end;

procedure TMaterialMOQ_LaceStyle.BB1Click(Sender: TObject);
begin
with Query1 do
  begin
    active:=false;
    active:=true;
  end;
//bb2.enabled:=true;
bb4.enabled:=true;
bb5.enabled:=false;
bb6.enabled:=false;
bb7.enabled:=true;


bbt6.enabled:=true;

end;

procedure TMaterialMOQ_LaceStyle.FormCreate(Sender: TObject);
begin
query1.Active:=false;

with query1 do
  begin
    active:=false;
    sql.Clear;  //抓該季節所有有下採購單的廠商和鞋帶
    sql.add('select CG.SEASON,CG.nrdh ');
    sql.add('       ,(select nrywsm from cllbzlss where lb=''D'' AND txxh=''03'' and cllbzlss.nrdh=CG.nrdh ) AS Lace_Spec ');
    sql.add('       ,CG.nrdh_2 ');
    sql.add('       ,(select nrywsm from cllbzlss where lb=''D'' AND txxh=''02'' and cllbzlss.nrdh=CG.nrdh_2 ) AS Lace_Spec_2 ');
    sql.add('       ,MaterialMOQ_Lace.SamplePrice,MaterialMOQ_Lace.USERID,MaterialMOQ_Lace.USERDATE ,MaterialMOQ_Lace.Remark');
    sql.add('from ( select CGZL.SEASON');
    sql.add('              ,substring(CLZL.clbm,9,4) as nrdh ');
    sql.add('              ,substring(CLZL.clbm,5,4) as nrdh_2 ');
    sql.add('       from CGZLS ');
    sql.add('       left join CGZL on CGZl.CGNO=CGZLS.CGNO ');
    sql.add('       left join CLZL on CLZl.CLDH=CGZLS.CLBH ');
    sql.add('       where left(CGZLS.CLBH,3)=''D09''  ');
    sql.add('             AND CGZL.CGLX=''6'' and CGZLS.Qty>0  ');
    sql.add('             and CGZL.SEASON='+''''+MaterialMOQ.SeaEdit.Text+'''');
    sql.add('       group by CGZL.SEASON,substring(CLZL.clbm,9,4),substring(CLZL.clbm,5,4) ) CG  ');
    sql.add('left join MaterialMOQ_Lace on CG.nrdh=MaterialMOQ_Lace.nrdh and CG.nrdh_2=MaterialMOQ_Lace.nrdh_2 and CG.SEASON=MaterialMOQ_Lace.SEASON ');
    sql.add('where 1=1  ');
    sql.add('Order by Lace_Spec,Lace_Spec_2 ');
    active:=true;
  end;



//BB1Click(nil);
end;

procedure TMaterialMOQ_LaceStyle.BB2Click(Sender: TObject);
begin
with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
  end;
bb5.enabled:=true;
bb6.enabled:=true;
end;

procedure TMaterialMOQ_LaceStyle.BB4Click(Sender: TObject);
begin
with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    query1.edit;
  end;
bb5.enabled:=true;
bb6.enabled:=true;
end;

procedure TMaterialMOQ_LaceStyle.BB7Click(Sender: TObject);
begin
close;
end;

procedure TMaterialMOQ_LaceStyle.BB5Click(Sender: TObject);
var i:integer;
begin

with Query1 do
  begin
    first;
    while not eof do
      begin
        if updatestatus=usmodified then
           begin
                with QryTmp do
                begin
                  active:=false;
                  sql.Clear;
                  sql.Add(' select nrdh from MaterialMOQ_Lace ');
                  sql.Add('  where 1=1 ');
                  sql.Add('   and nrdh = '''+Query1.fieldbyname('nrdh').AsString+'''');
                  sql.Add('   and nrdh_2 = '''+Query1.fieldbyname('nrdh_2').AsString+'''');
                  sql.Add('   and Season='''+Query1.fieldbyname('Season').AsString+'''');
                  active:=true;
                  if eof then
                  begin
                    active:=false;
                    sql.Clear;
                    sql.Add(' insert MaterialMOQ_Lace (Season');
                    sql.Add(',nrdh');
                    sql.Add(',nrdh_2');
                    sql.Add(',SamplePrice');
                    sql.Add(',userID,userdate  ');
                    sql.Add(') values (');
                    sql.Add(''''+Query1.fieldbyname('Season').AsString+'''');
                    sql.Add(','''+Query1.fieldbyname('nrdh').AsString+'''');
                    sql.Add(','''+Query1.fieldbyname('nrdh_2').AsString+'''');
                    sql.Add(','''+Query1.fieldbyname('SamplePrice').AsString+'''');
                    sql.Add(','''+main.edit1.text+'''');
                    sql.Add(','''+formatdatetime('yyyy/MM/dd',Ndate)+'''');
                    sql.Add(')');
                    execsql;
                  end
                  else
                  begin
                    active:=false;
                    sql.Clear;
                    sql.Add(' update MaterialMOQ_Lace set ');
                    sql.Add('   SamplePrice='''+Query1.fieldbyname('SamplePrice').AsString+'''');
                    sql.Add('   ,userID='''+main.edit1.text+'''');
                    sql.Add('   ,userdate='''+formatdatetime('yyyy/MM/dd',Ndate)+'''');
                    sql.Add(' where 1=1');
                    sql.Add('   and nrdh = '''+Query1.fieldbyname('nrdh').AsString+'''');
                    sql.Add('   and nrdh_2 = '''+Query1.fieldbyname('nrdh_2').AsString+'''');                    
                    sql.Add('   and Season='''+Query1.fieldbyname('Season').AsString+'''');
                    execsql;
                    active:=false;
                  end;
                end;
           end;
        next;
      end;
  end;

    query1.active:=false;
    query1.cachedupdates:=false;
    query1.requestlive:=false;
    query1.active:=true;
    bb5.enabled:=false;
    bb6.enabled:=false;


end;

procedure TMaterialMOQ_LaceStyle.BB6Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
bb5.enabled:=false;
bb6.enabled:=false;
end;

procedure TMaterialMOQ_LaceStyle.BB3Click(Sender: TObject);
begin

     query1.Edit;
     Query1.FieldByName('YN').value:='0';


end;

procedure TMaterialMOQ_LaceStyle.FormDestroy(Sender: TObject);
begin
MaterialMOQ_LaceStyle:=nil;
end;

procedure TMaterialMOQ_LaceStyle.bbt6Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
begin
  target := 'ts1/ts2/ts3';
  tdbgh := DBGrid1;
  if (tdbgh is TDBGridEh) then
    if SaveDialog1.Execute then
    begin
      case SaveDialog1.FilterIndex of
        1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
        2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
        3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
        4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
        5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
      else
        ExpClass := nil; Ext := '';
      end;
      if ExpClass <> nil then
      begin
        if UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3)) <> UpperCase(Ext) then
          SaveDialog1.FileName := SaveDialog1.FileName + '.' + Ext;
        SaveDBGridEhToExportFile(ExpClass,tdbgh,SaveDialog1.FileName,true);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;

end;

end.
