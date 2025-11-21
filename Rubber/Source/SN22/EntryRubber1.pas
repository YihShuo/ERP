unit EntryRubber1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, ComCtrls, GridsEh,
  DBGridEh, Mask, DB, DBTables,comobj;

type
  TEntryRubber = class(TForm)
    Panel1: TPanel;
    Label18: TLabel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    bbt6: TBitBtn;
    Panel6: TPanel;
    Label17: TLabel;
    BD2: TBitBtn;
    BD3: TBitBtn;
    BD4: TBitBtn;
    BD5: TBitBtn;
    BD6: TBitBtn;
    BD7: TBitBtn;
    BDT1: TBitBtn;
    BDT2: TBitBtn;
    BDT3: TBitBtn;
    BDT4: TBitBtn;
    BDT5: TBitBtn;
    BDT6: TBitBtn;
    PC1: TPageControl;
    TS3: TTabSheet;
    Panel4: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBGrid3: TDBGridEh;
    Panel2: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Check: TCheckBox;
    TS4: TTabSheet;
    Panel3: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit13: TDBEdit;
    BBTT2: TBitBtn;
    DBGrid4: TDBGridEh;
    EnMas: TQuery;
    UpMas: TUpdateSQL;
    DSMas: TDataSource;
    EnMasDGLB: TStringField;
    EnMasCQDH: TStringField;
    EnMasKSDH: TStringField;
    EnMasKSRQ: TStringField;
    EnMasLYLB: TStringField;
    EnMasLYDH: TStringField;
    EnMasBZ: TStringField;
    EnMasUSERID: TStringField;
    EnMasUSERDATE: TStringField;
    EnMasZSDH: TStringField;
    EnMasYN: TStringField;
    Query1: TQuery;
    EnDet: TQuery;
    DSDet: TDataSource;
    UpDet: TUpdateSQL;
    EnDetDGLB: TStringField;
    EnDetKSDH: TStringField;
    EnDetCQDH: TStringField;
    EnDetSH: TStringField;
    EnDetCLDH: TStringField;
    EnDetMSBZ: TStringField;
    EnDetSL: TFloatField;
    EnDetDJ: TFloatField;
    EnDetGR: TFloatField;
    EnDetSL1: TFloatField;
    EnDetGR1: TFloatField;
    EnDetNY: TStringField;
    EnDetUSERID: TStringField;
    EnDetUSERDATE: TStringField;
    EnDetzwpm: TStringField;
    EnDetywpm: TStringField;
    EnDetdwbh: TStringField;
    EnDetYN: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure EnDetAfterOpen(DataSet: TDataSet);
    procedure BDT1Click(Sender: TObject);
    procedure BDT2Click(Sender: TObject);
    procedure BDT3Click(Sender: TObject);
    procedure BDT4Click(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BBTT2Click(Sender: TObject);
    procedure DBGrid4EditButtonClick(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure bbt6Click(Sender: TObject);
    procedure BDT6Click(Sender: TObject);
    procedure BD7Click(Sender: TObject);
    procedure BDT5Click(Sender: TObject);
  private
    { Private declarations }
    procedure InitUpdateSQL();
  public
    { Public declarations }
  end;

var
  EntryRubber: TEntryRubber;
  NDate:TDate;

implementation

uses main1, Entry_CL1, EntryRubber_Print1, DeliveryRubber_Print1;

{$R *.dfm}

procedure TEntryRubber.InitUpdateSQL();
begin
  UpMas.InsertSQL.Clear;
  UpMas.InsertSQL.Add('INSERT INTO '+main.LIY_DD+'.dbo.KSYD(DGLB,CQDH,KSDH,KSRQ,LYLB,USERID,USERDATE)');
  UpMas.InsertSQL.Add('VALUES (:DGLB,:CQDH,:KSDH,:KSRQ,:LYLB,:USERID,:USERDATE)');

  UpMas.ModifySQL.Clear;
  UpMas.ModifySQL.Add('update '+main.LIY_DD+'.dbo.KSYD');
  UpMas.ModifySQL.Add('set KSRQ= :KSRQ,USERDATE=:USERDATE,BZ=:BZ,ZSDH=:ZSDH');
  UpMas.ModifySQL.Add('where KSDH=:OLD_KSDH and CQDH=:OLD_CQDH and DGLB=:OLD_DGLB');

  UpMas.DeleteSQL.Clear;
  UpMas.DeleteSQL.Add('delete from '+main.LIY_DD+'.dbo.KSYD');
  UpMas.DeleteSQL.Add('where KSDH= :OLD_KSDH AND CQDH=:OLD_CQDH AND DGLB=:DGLB');

  UpDet.InsertSQL.Clear;
  UpDet.InsertSQL.Add('INSERT INTO '+main.LIY_DD+'.DBO.KSYDS(DGLB,KSDH,CQDH,SH,CLDH,SL,NY,USERID,USERDATE)');
  UpDet.InsertSQL.Add('VALUES (:DGLB,:KSDH,:CQDH,:SH,:CLDH,:SL,:NY,:USERID,:USERDATE)');

  UpDet.ModifySQL.Clear;
  UpDet.ModifySQL.Add('UPDATE  '+main.LIY_DD+'.DBO.KSYDS');
  UpDet.ModifySQL.Add('SET CLDH=:CLDH,SL=:SL,MSBZ=:MSBZ,USERDATE=:USERDATE');
  UpDet.ModifySQL.Add('WHERE DGLB=:OLD_DGLB AND KSDH=:OLD_KSDH AND CQDH=:OLD_CQDH AND SH=:OLD_SH');

  UpDet.DeleteSQL.Clear;
  UpDet.DeleteSQL.Add('DELETE '+main.LIY_DD+'.DBO.KSYDS');
  UpDet.DeleteSQL.Add('WHERE DGLB=:OLD_DGLB AND KSDH=:OLD_KSDH AND CQDH=:OLD_CQDH AND SH=:OLD_SH');
end;

procedure TEntryRubber.Button1Click(Sender: TObject);
begin
  with EnMas do
  begin
    active:=false;
    sql.Clear;
    sql.Add('Select  KSYD.*, '''' as YN');
    sql.Add('From '+main.LIY_DD+'.dbo.KSYD KSYD ');
    sql.Add('where KSRQ between '''+formatdatetime('yyyymmdd',dtp1.Date)+''' and  '''+formatdatetime('yyyymmdd',dtp2.Date)+'''');
    sql.Add('and KSDH like '''+edit1.Text+'%''');
    sql.Add('AND CQDH='''+main.Edit2.Text+'''');
    SQL.Add('AND DGLB=''I''');
    if Check.Checked then
    begin
      sql.Add('and USERID='+''''+main.Edit1.Text+'''');
    end;
    sql.Add('order by KSDH desc');
    active:=true;
  end;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  BBT1.Enabled:=true;
  BBT2.Enabled:=true;
  BBT3.Enabled:=true;
  BBT4.Enabled:=true;
  BBT6.Enabled:=true;
  with Endet do
  begin
    active:=false;
    sql.Clear;
    sql.Add('SELECT KSYDS.DGLB ,KSYDS.KSDH ,KSYDS.CQDH ,KSYDS.SH ,KSYDS.CLDH ,KSYDS.MSBZ ,KSYDS.SL ,KSYDS.DJ ,KSYDS.GR ,KSYDS.SL1 ,KSYDS.GR1 ,KSYDS.NY ,KSYDS.USERID ,KSYDS.USERDATE ,CLZL.zwpm ,CLZL.ywpm ,CLZL.dwbh,''''as YN');
    sql.Add('FROM '+main.LIY_DD+'.DBO.KSYDS KSYDS LEFT JOIN '+main.LIY_DD+'.DBO.CLZL CLZL ON KSYDS.CLDH = CLZL.cldh');
    sql.Add('where KSYDS.KSDH=:KSDH and KSYDS.CQDH=:CQDH');
    sql.Add('ORDER BY KSYDS.SH');
    active:=true;
  end;

end;

procedure TEntryRubber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;  
end;

procedure TEntryRubber.FormDestroy(Sender: TObject);
begin
  EntryRubber:=Nil;
end;

procedure TEntryRubber.BB1Click(Sender: TObject);
begin
  Panel2.Visible:=true;
end;

procedure TEntryRubber.FormCreate(Sender: TObject);
begin
  DTP1.Date:=now-3;
  DTP2.date:=now;
  PC1.ActivePageIndex:=0;

  InitUpdateSQL();
end;

procedure TEntryRubber.BBT1Click(Sender: TObject);
begin
  EnMas.First;
end;

procedure TEntryRubber.BBT2Click(Sender: TObject);
begin
  EnMas.Prior;
end;

procedure TEntryRubber.BBT3Click(Sender: TObject);
begin
  EnMas.Next;
end;

procedure TEntryRubber.BBT4Click(Sender: TObject);
begin
  EnMas.Last;
end;

procedure TEntryRubber.BB7Click(Sender: TObject);
begin
  Close;
end;

procedure TEntryRubber.BB2Click(Sender: TObject);
begin
  with EnMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
    fieldbyname('CQDH').Value:=main.Edit2.Text;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TEntryRubber.BB3Click(Sender: TObject);
begin
  if (EnDet.recordcount=0) then
  begin
    with EnMas do
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
      fieldbyname('YN').Value:='0';
    end;
  end
  else begin
    showmessage('Pls delete the Deliver Detail first.')
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TEntryRubber.BB4Click(Sender: TObject);
begin
  with EnMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TEntryRubber.BB5Click(Sender: TObject);
var y,m,a:string;
    i:integer;
begin
  with query1 do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active:=true;
    y:='A'+copy(fieldbyname('FY').asstring,3,2);
    m:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('NDate').value;
    active:=false;
  end;
  if length(m)<2 then
    m:='0'+m;

  try
    EnDet.Active:=false;
    EnMas.first;
    for i:=1 to EnMas.RecordCount do
    begin
      case EnMas.updatestatus of
          usinserted:
            begin
              if EnMas.fieldbyname('CQDH').isnull then
              begin
                EnMas.delete;
              end else
              begin
                with query1 do    //計算領料單流水號
                begin
                  active:=false;
                  sql.Clear;
                  sql.Add('select KSDH from '+main.LIY_DD+'.dbo.KSYD where KSDH like '+''''+y+m+'%'+'''');
                  sql.add('order by KSDH');
                  active:=true;
                  if recordcount >0 then
                  begin
                    last;
                    a:=fieldbyname('KSDH').AsString;
                    a:=copy(a,7,5);
                    a:=inttostr(strtoint(a)+1);
                    while length(a)<5 do
                    begin
                      a:='0'+a;
                    end;
                  end else
                  begin
                    a:='00001';
                  end;
                  a :=y+m+a;
                  active:=false;
                end;
                EnMas.edit;
                EnMas.fieldbyname('DGLB').Value:='I';
                EnMas.fieldbyname('KSDH').Value:=a;
                EnMas.fieldbyname('KSRQ').Value:= formatdatetime('yyyymmdd',now);
                EnMas.fieldbyname('LYLB').Value:='A';
                EnMas.FieldByName('userID').Value:=main.edit1.text;
                EnMas.FieldByName('userdate').Value:=formatdatetime('yyyymmdd',now);
                upMas.apply(ukinsert);
              end;
            end;
          usmodified:
            begin
              if EnMas.FieldByName('USERID').value<>main.Edit1.Text then
              begin
                showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
              end else
              begin
                if EnMas.fieldbyname('YN').value='0'then
                begin
                  upMas.apply(ukdelete);
                end else
                begin
                  if (EnMas.FieldByName('USERID').value=main.Edit1.Text)   then
                  begin
                    if (formatdatetime('yyyymmdd',now)-EnMas.FieldByName('USERDATE').value)<=3  then
                    begin
                      EnMas.edit;
                      EnMas.FieldByName('userID').Value:=main.edit1.text;
                      EnMas.FieldByName('userdate').Value:=formatdatetime('yyyymmdd',now);
                      upMas.apply(ukmodify);
                    end else
                    begin
                      showmessage('Date>3, can not modify.');
                    end;
                  end else
                  begin
                    showmessage('Already confirmed, can not modify.');
                  end;
                end;
              end;
            end;
      end;
       EnMas.next;
    end;
    EnMas.active:=false;
    EnMas.cachedupdates:=false;
    EnMas.requestlive:=false;
    EnMas.active:=true;
    EnDet.Active:=true;
    bb5.enabled:=false;
    bb6.enabled:=false;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;


procedure TEntryRubber.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if EnMas.FieldByName('YN').value='0' then
  begin
    dbgrid3.canvas.font.color:=clred;
    dbgrid3.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TEntryRubber.DBGrid3DblClick(Sender: TObject);
begin
  if  EnMas.Active then
  begin
    if  (EnMas.recordcount>0) then
    begin
      PC1.ActivePage:=TS4;
      panel1.Visible:=false;
      panel6.Visible:=true;
    end;
  end;
end;

procedure TEntryRubber.PC1Change(Sender: TObject);
begin
  if PC1.ActivePage=TS4 then
  begin
    panel6.visible:=true;
    panel1.visible:=false;
  end else
  begin
    panel6.visible:=false;
    panel1.visible:=true;
  end;
end;

procedure TEntryRubber.EnDetAfterOpen(DataSet: TDataSet);
begin
  BD2.Enabled:=true;
  BD3.Enabled:=true;
  BD4.Enabled:=true;
  BDT1.Enabled:=true;
  BDT2.Enabled:=true;
  BDT3.Enabled:=true;
  BDT4.Enabled:=true;
  BDT5.Enabled:=true;
  BDT6.Enabled:=true;
  if (formatdatetime('yyyymmdd',now)-ENMas.FieldByName('USERDATE').value)>2  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  if ENMas.FieldByName('USERID').value<>main.Edit1.text  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  if ENMas.cachedupdates  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
end;

procedure TEntryRubber.BDT1Click(Sender: TObject);
begin
  EnDet.First;
end;

procedure TEntryRubber.BDT2Click(Sender: TObject);
begin
  EnDet.Prior;
end;

procedure TEntryRubber.BDT3Click(Sender: TObject);
begin
  EnDet.Next;
end;

procedure TEntryRubber.BDT4Click(Sender: TObject);
begin
  EnDet.Last;
end;

procedure TEntryRubber.BD2Click(Sender: TObject);
begin
  if ENMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with ENDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BBTT2.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  dbgrid4.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TEntryRubber.BD3Click(Sender: TObject);
begin
  if ENMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with ENDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BBTT2.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  dbgrid4.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TEntryRubber.BD4Click(Sender: TObject);
begin
  if ENMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with ENDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BBTT2.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  dbgrid4.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TEntryRubber.BD6Click(Sender: TObject);
begin
  with ENDet do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BBTT2.Visible:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  dbgrid4.columns[1].ButtonStyle:=cbsNone;
end;

procedure TEntryRubber.BBTT2Click(Sender: TObject);
begin
  Entry_CL:=TEntry_CL.create(self);
  Entry_CL.show;
end;

procedure TEntryRubber.DBGrid4EditButtonClick(Sender: TObject);
begin
  BBTT2click(nil);
end;

procedure TEntryRubber.BB6Click(Sender: TObject);
begin
  with ENMas do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.enabled:=false;
end;

procedure TEntryRubber.BD5Click(Sender: TObject);
var i:integer;
    y,m,SH,NY:string;
begin
  with EnDet do
  begin
    first;
    while not EnDet.Eof do
    begin
      if EnDet.FieldByName('SL').IsNull then
      begin
        showmessage('The Qty can not be empty.');
        abort;
      end;
      next;
    end;
  end;
  with query1 do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active:=true;
    y:=copy(fieldbyname('FY').asstring,3,2);
    m:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('NDate').value;
    active:=false;
  end;
  if length(m)<2 then
     m:='0'+m;
  try
    EnDet.first;
    for i:=1 to EnDet.RecordCount do
    begin
      case EnDet.updatestatus of
        usinserted:
        begin
          if EnMas.FieldByName('USERID').value<>main.Edit1.Text then
          begin
            showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
          end else
          begin
            if EnDet.fieldbyname('CLDH').isnull then
            begin
              EnDet.delete;
            end else
            begin
              with query1 do    //計算領料單流水號
              begin
                active:=false;
                sql.Clear;
                sql.Add('select max(SH)as SH from '+main.LIY_DD+'.dbo.KSYDS where KSDH = '''+EnMas.FieldByName('KSDH').AsString+'''');
                sql.add('order by SH');
                active:=true;
                if recordcount >0 then
                begin
                  last;
                  SH:=fieldbyname('SH').AsString;
                  if SH='' then SH:='000';
                  SH:=copy(SH,2,3);
                  SH:=inttostr(strtoint(SH)+1);
                  while length(SH)<3 do
                  begin
                    SH:='0'+SH;
                  end;
                end else
                begin
                  SH:='001';
                end;
                SH :=SH;
                NY:=y+m;
                active:=false;
              end;
              EnDet.edit;
              EnDet.fieldbyname('DGLB').Value:=EnMas.fieldbyname('DGLB').Value;
              EnDet.fieldbyname('KSDH').Value:=EnMas.fieldbyname('KSDH').Value;
              EnDet.FieldByName('CQDH').Value:=main.edit2.text;
              EnDet.FieldByName('SH').Value:=SH;
              EnDet.FieldByName('NY').Value:=NY;
              EnDet.fieldbyname('SL').Value:=formatfloat('#,##0.##',EnDet.fieldbyname('SL').Value); //20141023 四捨五入到小數第二位
              EnDet.FieldByName('userID').Value:=main.edit1.text;
              EnDet.FieldByName('userdate').Value:=formatdatetime('yyyymmdd',now);
              upDet.apply(ukinsert);
            end;
          end;
        end;
        usmodified:
        begin
          if EnDet.FieldByName('USERID').value<>main.Edit1.Text then
          begin
            showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
          end else
          begin
            if EnDet.fieldbyname('YN').value='0'then
            begin
              UpDet.apply(ukdelete);
            end else
            begin
              EnDet.edit;
              EnDet.fieldbyname('SL').Value:=formatfloat('#,##0.##',EnDet.fieldbyname('SL').Value); //20141023 四捨五入到小數第二位
              EnDet.FieldByName('userID').Value:=main.edit1.text;
              EnDet.FieldByName('userdate').Value:=formatdatetime('yyyymmdd',now);
              UpDet.apply(ukmodify);
            end;
          end;
        end;
      end;
      EnDet.next;
    end;
    EnDet.active:=false;
    EnDet.cachedupdates:=false;
    EnDet.requestlive:=false;
    EnDet.active:=true;
    bb6.enabled:=false;
    BBTT2.Visible:=false;
    BD5.Enabled:=false;
    BD6.Enabled:=false;
    dbgrid4.columns[1].ButtonStyle:=cbsNone;
  except
    On E:Exception do
    begin
      Messagedlg('Have wrong, can not save data!'+E.Message,mtwarning,[mbyes],0);
    end;
  end;
end;

procedure TEntryRubber.DBGrid4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if EnDet.FieldByName('YN').value='0' then
  begin
    dbgrid4.canvas.font.color:=clred;
    dbgrid4.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TEntryRubber.bbt6Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin
  if EnMas.Active then
  begin
    if EnMas.recordcount=0 then
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
    EnDet.Active:=false;
    WorkBook:=eclApp.workbooks.Add;
    eclApp.Cells(1,1):='NO';
    for   i:=1   to   EnMas.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=EnMas.fields[i-1].FieldName;
    end;
    EnMas.First;
    j:=2;
    while   not  EnMas.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   EnMas.fieldcount   do
      begin
        eclApp.Cells(j,i+1):=EnMas.Fields[i-1].Value;
        eclApp.Cells.Cells.item[j,i+1].font.size:='8';
      end;
      EnMas.Next;
      inc(j);
    end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
    EnDet.Active:=true;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;

procedure TEntryRubber.BDT6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  Endet.active  then
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
      for   i:=0   to   Endet.fieldcount-1   do
      begin
          eclApp.Cells(1,i+1):=Endet.fields[i].FieldName;
      end;
      Endet.First;
      j:=2;
      while   not   Endet.Eof   do
      begin
        for   i:=0   to  Endet.fieldcount-1  do
        begin
          eclApp.Cells(j,i+1):=Endet.Fields[i].Value;
        end;
        Endet.Next;
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

procedure TEntryRubber.BD7Click(Sender: TObject);
begin
  close;
end;

procedure TEntryRubber.BDT5Click(Sender: TObject);
begin
  EntryRubber_Print:=TEntryRubber_Print.create(self);
  EntryRubber_Print.Query1.Active:=true;
  
  EntryRubber_Print.QRLabel8.Caption:=EnMas.FieldByName('KSDH').AsString;
  EntryRubber_Print.QRLabel9.Caption:=main.Edit2.Text;
  EntryRubber_Print.QRLabel11.Caption:=EnMas.FieldByName('USERDATE').AsString;
  EntryRubber_Print.quickrep1.prepare;
  EntryRubber_Print.PageN.caption:=inttostr(EntryRubber_Print.quickrep1.QRPrinter.pagecount);
  EntryRubber_Print.SDate.Caption:=formatdatetime('YYYY/MM/DD',Date());
  EntryRubber_Print.quickrep1.preview;
  EntryRubber_Print.free;
end;

end.
