unit MatMoSonQuery1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, DBTables, GridsEh, DBGridEh, Buttons, ExtCtrls,
  Menus,comobj;

type
  TMatMoSonQuery = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    DBGridEh2: TDBGridEh;
    ZHMas: TQuery;
    DS1: TDataSource;
    UpSQL1: TUpdateSQL;
    ZHDet: TQuery;
    UpSQL2: TUpdateSQL;
    DS2: TDataSource;
    Panel3: TPanel;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit3: TEdit;
    Button2: TButton;
    ZHMasCLDH: TStringField;
    ZHMasZWPM: TStringField;
    ZHMasYWPM: TStringField;
    ZHMasDWBH: TStringField;
    ZHDetcldh: TStringField;
    ZHDetcldh1: TStringField;
    ZHDetccq: TStringField;
    ZHDetccq1: TStringField;
    ZHDetsyl: TFloatField;
    ZHDetzsdh: TStringField;
    ZHDetUSERID: TStringField;
    ZHDetUSERDATE: TDateTimeField;
    ZHDetYN: TStringField;
    ZHDetYWPM: TStringField;
    ZHDetZWPM: TStringField;
    ZHDetDWBH: TStringField;
    Label3: TLabel;
    POP1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    ZHMasUSERID: TStringField;
    Button1: TButton;
    tempQ: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure DBGridEh2EditButtonClick(Sender: TObject);
    procedure ZHDetAfterInsert(DataSet: TDataSet);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    AppDir:string;
  public
    { Public declarations }
  end;

var
  MatMoSonQuery: TMatMoSonQuery;

implementation

uses MatMoSon_M1, MatMoSon_S1, main1, MatMoSon1;

{$R *.dfm}

procedure TMatMoSonQuery.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TMatMoSonQuery.Button2Click(Sender: TObject);
begin
  with ZHMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct top 1000  CLZHZL.CLDH ,CLZL.ZWPM,CLZL.YWPM,CLZL.DWBH,CLZHZL.USERID ');
    sql.add('from CLZHZL');
    sql.add('left join CLZl on CLZl.CLDH=CLZHZL.CLDH');
    sql.add('where  CLZHZL.CLDH like '''+edit2.Text+'%'' ');
    sql.add('  and CLZL.YWPM like '''+'%'+edit1.Text+'%'' ');
    sql.add('  and CLZL.ZWPM like '''+'%'+edit3.Text+'%'' ');
    //sql.add('and CLZHZL.YN='+''''+'2'+'''');
    sql.add('order by CLZHZL.CLDH ');
    active:=true;
  end;
  ZHDet.Active:=true;
end;

procedure TMatMoSonQuery.BB7Click(Sender: TObject);
begin
close;
end;

procedure TMatMoSonQuery.BB2Click(Sender: TObject);
begin
DBGrideh1.Columns[0].ButtonStyle:=cbsellipsis;
ZHMas.Insert;
//BB5.enabled:=true;
//BB6.enabled:=true;
N1.Enabled:=true;
N2.Enabled:=true;
N3.Enabled:=true;
end;

procedure TMatMoSonQuery.DBGridEh1EditButtonClick(Sender: TObject);
begin
MatMoSon_M:=TMatMoSon_M.create(self);
MatMoSon_M.show;
end;

procedure TMatMoSonQuery.DBGridEh2EditButtonClick(Sender: TObject);
begin
if ZHMas.recordcount>0 then
  begin
    MatMoSon_S:=TMatMoSon_S.create(self);
    MatMoSon_S.show;
  end;
end;

procedure TMatMoSonQuery.ZHDetAfterInsert(DataSet: TDataSet);
begin
DBGrideh2.Columns[0].ButtonStyle:=cbsellipsis;
end;

procedure TMatMoSonQuery.N1Click(Sender: TObject);
begin
with ZHDet do
  begin
    cachedupdates:=true;
    requestlive:=true;
    insert;
  end;
end;

procedure TMatMoSonQuery.N2Click(Sender: TObject);
begin 
with ZHDet do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
  end;

end;

procedure TMatMoSonQuery.N3Click(Sender: TObject);
begin

with ZHDet do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
end;

procedure TMatMoSonQuery.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

 if ZHDet.FieldByName('YN').value='0' then
  begin
    dbgrideh2.canvas.font.color:=clred;
   // dbgrid4.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TMatMoSonQuery.BB5Click(Sender: TObject);
var i:integer;
begin
try

    ZHDet.first;
      for i:=1 to ZHDet.RecordCount do
        begin
          case ZHDet.updatestatus of
            usinserted:
              begin
                if ZHDet.fieldbyname('USERID').value=main.edit1.text then
                  begin
                    if ZHDet.fieldbyname('CLDH1').isnull then
                      begin
                        ZHDet.delete;
                      end
                      else
                        begin
                          upSQL2.apply(ukinsert);
                        end;
                  end
                  else
                    begin
                      showmessage('It is not yours, can not modify it.');
                    end;

              end;
            usmodified:
              begin
                if ((ZHDet.fieldbyname('USERID').value=main.edit1.text) or (ZHDet.FieldByName('USERDATE').value>(date-10))) then
                  begin
                    if ZHDet.fieldbyname('YN').value='0'then
                      begin
                        UpSQL2.apply(ukdelete);
                      end
                      else
                        begin
                          upsql2.apply(ukmodify);
                        end;
                  end
                  else
                    begin
                      showmessage('It is not yours, can not modify it.');
                    end;
              end;
          end;
          zhDet.next;
        end;

      zhDet.Active:=false;
      ZHDet.cachedupdates:=false;
      ZHDet.RequestLive:=false;
      ZHMas.active:=false;
      ZHMas.Active:=true;
      ZHDet.Active:=true;
     // BB5.Enabled:=false;
     // BB6.Enabled:=false;
     // BB2.Enabled:=true;
     // BB4.Enabled:=true;
      DBGrideh1.columns[0].buttonstyle:=cbsnone;
      DBGrideh2.columns[0].buttonstyle:=cbsnone;
      N1.Enabled:=false;
      N2.Enabled:=false;
      N3.Enabled:=false;

  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;


end;

procedure TMatMoSonQuery.BB6Click(Sender: TObject);
begin
with ZHDet do
  begin
    zhDet.Active:=false;
    ZHDet.cachedupdates:=false;
    ZHDet.RequestLive:=false;
    ZHMas.active:=false;
    ZHMas.Active:=true;
    ZHDet.Active:=true;
    //BB5.Enabled:=false;
    //BB6.Enabled:=false;
    //BB2.Enabled:=true;
    //BB4.Enabled:=true;
    DBGrideh1.columns[0].buttonstyle:=cbsnone;
    DBGrideh2.columns[0].buttonstyle:=cbsnone;   
    N1.Enabled:=false;
    N2.Enabled:=false;
    N3.Enabled:=false;
  end;
end;

procedure TMatMoSonQuery.BB4Click(Sender: TObject);
begin
DBGrideh1.Columns[0].ButtonStyle:=cbsellipsis;
ZHMas.edit;
//BB5.enabled:=true;
//BB6.enabled:=true;
N1.Enabled:=true;
N2.Enabled:=true;
N3.Enabled:=true;
end;

procedure TMatMoSonQuery.FormDestroy(Sender: TObject);
begin
MatMoSon:=nil;
end;

procedure TMatMoSonQuery.Button1Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j,k,Voffset,Hoffset,index:integer;
begin
  if ZHMas.Active=false then Exit; 
  with tempQ do
  begin
    active:=false;
    sql.Clear;
    sql.Add(' select clzhzlt.CLDH,clzl.YWPM,clzhzlt.CLDH1,clzhzlt.YWPM1,clzhzlt.BWBH1, clzhzlt.SYL1,');
    sql.Add('					                      clzhzlt.CLDH2,clzhzlt.YWPM2,clzhzlt.BWBH2, clzhzlt.SYL2,');
    sql.Add('                 							clzhzlt.CLDH3,clzhzlt.YWPM3,clzhzlt.BWBH3, clzhzlt.SYL3,');
    sql.Add('                 							clzhzlt.CLDH4,clzhzlt.YWPM4,clzhzlt.BWBH4, clzhzlt.SYL4,');
    sql.Add('                 							clzhzlt.CLDH5,clzhzlt.YWPM5,clzhzlt.BWBH5, clzhzlt.SYL5,');
    sql.Add('                 							clzhzlt.CLDH6,clzhzlt.YWPM6,clzhzlt.BWBH6, clzhzlt.SYL6,');
    sql.Add('                 							clzhzlt.CLDH7,clzhzlt.YWPM7,clzhzlt.BWBH7, clzhzlt.SYL7,');
    sql.Add('                 							clzhzlt.CLDH8,clzhzlt.YWPM8,clzhzlt.BWBH8, clzhzlt.SYL8,');
    sql.Add('                 							clzhzlt.CLDH9,clzhzlt.YWPM9,clzhzlt.BWBH9, clzhzlt.SYL9,');
    sql.Add('                 							clzhzlt.CLDH10,clzhzlt.YWPM10,clzhzlt.BWBH10, clzhzlt.SYL10');
    sql.Add(' from (select cldh, Max(Case when MatNo=1 then CLDH1 end) as CLDH1,');
    sql.Add('               Max(Case when MatNo=1 then YWPM end) as YWPM1,');
    sql.Add('               Max(Case when MatNo=1 then DWBH end) as BWBH1,');
    sql.Add('               Max(Case when MatNo=1 then SYL end) as SYL1,');
    sql.Add('         			Max(Case when MatNo=2 then CLDH1 end) as CLDH2,');
    sql.Add('         			Max(Case when MatNo=2 then YWPM end) as YWPM2,');
    sql.Add('         			Max(Case when MatNo=2 then DWBH end) as BWBH2,');
    sql.Add('         			Max(Case when MatNo=2 then SYL end) as SYL2,');
    sql.Add('           		Max(Case when MatNo=3 then CLDH1 end) as CLDH3,');
    sql.Add('         			Max(Case when MatNo=3 then YWPM end) as YWPM3,');
    sql.Add('         			Max(Case when MatNo=3 then DWBH end) as BWBH3,');
    sql.Add('         			Max(Case when MatNo=3 then SYL end) as SYL3,');
    sql.Add('         			Max(Case when MatNo=4 then CLDH1 end) as CLDH4,');
    sql.Add('         			Max(Case when MatNo=4 then YWPM end) as YWPM4,');
    sql.Add('         			Max(Case when MatNo=4 then DWBH end) as BWBH4,');
    sql.Add('         			Max(Case when MatNo=4 then SYL end) as SYL4,');
    sql.Add('         			Max(Case when MatNo=5 then CLDH1 end) as CLDH5,');
    sql.Add('         			Max(Case when MatNo=5 then YWPM end) as YWPM5,');
    sql.Add('         			Max(Case when MatNo=5 then DWBH end) as BWBH5,');
    sql.Add('         			Max(Case when MatNo=5 then SYL end) as SYL5,');
    sql.Add('         			Max(Case when MatNo=6 then CLDH1 end) as CLDH6,');
    sql.Add('         			Max(Case when MatNo=6 then YWPM end) as YWPM6,');
    sql.Add('         			Max(Case when MatNo=6 then DWBH end) as BWBH6,');
    sql.Add('         			Max(Case when MatNo=6 then SYL end) as SYL6,');
    sql.Add('         			Max(Case when MatNo=7 then CLDH1 end) as CLDH7,');
    sql.Add('         			Max(Case when MatNo=7 then YWPM end) as YWPM7,');
    sql.Add('         			Max(Case when MatNo=7 then DWBH end) as BWBH7,');
    sql.Add('         			Max(Case when MatNo=7 then SYL end) as SYL7,');
    sql.Add('         			Max(Case when MatNo=8 then CLDH1 end) as CLDH8,');
    sql.Add('         			Max(Case when MatNo=8 then YWPM end) as YWPM8,');
    sql.Add('         			Max(Case when MatNo=8 then DWBH end) as BWBH8,');
    sql.Add('         			Max(Case when MatNo=8 then SYL end) as SYL8,');
    sql.Add('         			Max(Case when MatNo=9 then CLDH1 end) as CLDH9,');
    sql.Add('         			Max(Case when MatNo=9 then YWPM end) as YWPM9,');
    sql.Add('         			Max(Case when MatNo=9 then DWBH end) as BWBH9,');
    sql.Add('         			Max(Case when MatNo=9 then SYL end) as SYL9,');
    sql.Add('         			Max(Case when MatNo=10 then CLDH1 end) as CLDH10,');
    sql.Add('         			Max(Case when MatNo=10 then YWPM end) as YWPM10,');
    sql.Add('         			Max(Case when MatNo=10 then DWBH end) as BWBH10,');
    sql.Add('         			Max(Case when MatNo=10 then SYL end) as SYL10');
    sql.Add(' from ( select *,row_number() over(partition by CLDH order by cldh,cldh1 asc) as MatNo');
    sql.Add('		    from (select clzhzl.cldh,cldh1,ywpm,dwbh,syl from clzhzl left join clzl on clzhzl.cldh1=clzl.cldh');
    sql.Add('	      where (ccq is null or ccq='''' )) clzhzl )temp');
    sql.Add('group by cldh) clzhzlt left join clzl on clzhzlt.cldh=clzl.cldh');
    sql.Add('where 	clzhzlt.CLDH like '+''''+edit2.Text+'%'+''' and clzl.ywpm like '+''''+'%'+edit1.Text+'%'+''' and clzl.zwpm like '+''''+'%'+edit3.Text+'%'+'''');
    sql.Add('union all');
    sql.Add('select tempCCQ.CLDH,clzl.YWPM,tempCCQ.cldh1 as CLDH1,tempCCQ.ywpm as YWPM1,tempCCQ.dwbh as DWBH1,SYL as SYL1,');
    sql.Add('							                  NULL as CLDH2, NULL as YWPM2, NUll as DWBH2, NUll as SYL2,');
    sql.Add('                 							NULL as CLDH3, NULL as YWPM3, NUll as DWBH3, NUll as SYL3,');
    sql.Add('                 							NULL as CLDH4, NULL as YWPM4, NUll as DWBH4, NUll as SYL4,');
    sql.Add('                 							NULL as CLDH5, NULL as YWPM5, NUll as DWBH5, NUll as SYL5,');
    sql.Add('                 							NULL as CLDH6, NULL as YWPM6, NUll as DWBH6, NUll as SYL6,');
    sql.Add('                 							NULL as CLDH7, NULL as YWPM7, NUll as DWBH7, NUll as SYL7,');
    sql.Add('                 							NULL as CLDH8, NULL as YWPM8, NUll as DWBH8, NUll as SYL8,');
    sql.Add('                 							NULL as CLDH9, NULL as YWPM9, NUll as DWBH9, NUll as SYL9,');
    sql.Add('                 							NULL as CLDH10, NULL as YWPM10, NUll as DWBH10, NUll as SYL10');
    sql.Add('from (select clzhzl.cldh,clzhzl.cldh1,clzl.ywpm,dwbh,AVG(syl) as SYL');
    sql.Add('		    from clzhzl left join clzl on clzhzl.cldh1=clzl.cldh');
    sql.Add('		    where ( ccq is not null and ccq <>'''')');
    sql.Add('		    group by clzhzl.cldh,clzhzl.cldh1,clzl.ywpm,dwbh) tempCCQ left join clzl on tempCCQ.cldh=clzl.cldh');
    sql.Add('where 	tempCCQ.CLDH like '+''''+edit2.Text+'%'+''' and clzl.ywpm like '+''''+'%'+edit1.Text+'%'+''' and clzl.zwpm like '+''''+'%'+edit3.Text+'%'+'''');
    sql.Add('order by 1 asc');
    active:=true;
  end;
  if FileExists(AppDir+'Additional\ExtraN15.xls')=false  then
   begin
     if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
     CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\ExtraN15.xls'),Pchar(AppDir+'Additional\ExtraN15.xls'),false);
   end;
   if FileExists(AppDir+'Additional\ExtraN15.xls') then
   begin
        try
          eclApp:=CreateOleObject('Excel.Application');
          WorkBook:=CreateOleObject('Excel.Sheet');
        except
          Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
          Exit;
        end;
        try
          eclApp.WorkBooks.Open(AppDir+'Additional\ExtraN15.xls');
          eclApp.WorkSheets[1].Activate;//2A?@-??¢X¢DD

          tempQ.First;
          j:=4;
          while   not   tempQ.Eof   do
          begin
              for   i:=0   to  tempQ.fieldcount-1  do
              begin
                eclApp.Cells(j,i+1):=tempQ.Fields[i].Value;
               end;
            tempQ.Next;
            inc(j);
          end;
          // add outline
            for k:=1 to 4 do
            begin
               eclApp.range[eclApp.cells[4,1],eclApp.cells[j-1,42]].borders[k].linestyle:=1;
            end;
          //
          eclApp.range[eclApp.cells[4,1],eclApp.cells[j-1,42]].font.size:=8;
          eclApp.range[eclApp.cells[4,1],eclApp.cells[j-1,42]].font.Name:='Arial';

          showmessage('Succeed');
          eclApp.Visible:=True;
        except
            on   F:Exception   do
              showmessage(F.Message);
        end;
      end;
end;

procedure TMatMoSonQuery.FormCreate(Sender: TObject);
begin
  AppDir:=ExtractFilePath(Application.ExeName);
end;

end.
