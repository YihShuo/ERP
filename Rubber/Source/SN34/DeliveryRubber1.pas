unit DeliveryRubber1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ComCtrls, GridsEh, DBGridEh, Mask, Buttons,
  ExtCtrls, DB, DBTables, Menus;

type
  TDeliveryRubber = class(TForm)
    DelMas: TQuery;
    UpMas: TUpdateSQL;
    DelDet: TQuery;
    UPDet: TUpdateSQL;
    DS3: TDataSource;
    DS4: TDataSource;
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
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DelMasLLBH: TStringField;
    DelMasCQDH: TStringField;
    DelMasLLRQ: TStringField;
    DelMasCQDH1: TStringField;
    DelMasCFM: TStringField;
    DelMasUSERID: TStringField;
    DelMasUSERDATE: TStringField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    DelMasYN: TStringField;
    Query1: TQuery;
    DelDetLLBH: TStringField;
    DelDetCQDH: TStringField;
    DelDetDDBH: TStringField;
    DelDetcldh: TStringField;
    DelDetLB: TStringField;
    DelDetKGS_LL: TFloatField;
    DelDetKGS_YL: TFloatField;
    DelDetKGS_CL: TFloatField;
    DelDetCLSM: TStringField;
    DelDetUSERID: TStringField;
    DelDetUSERDATE: TStringField;
    DelDetlbdh: TStringField;
    DelDetzwpm: TStringField;
    DelDetywpm: TStringField;
    DelDetdwbh: TStringField;
    DelDetcldj: TFloatField;
    DelDetZWSM9: TStringField;
    DelDetYWSM9: TStringField;
    DelDetKHPO: TStringField;
    DelDetYSSM: TStringField;
    DelDetYN: TStringField;
    Panel5: TPanel;
    DBGrid4: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DelMasAfterOpen(DataSet: TDataSet);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure DelDetAfterOpen(DataSet: TDataSet);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure BDT1Click(Sender: TObject);
    procedure BDT2Click(Sender: TObject);
    procedure BDT3Click(Sender: TObject);
    procedure BDT4Click(Sender: TObject);
    procedure DBGrid4EditButtonClick(Sender: TObject);
    procedure BDT5Click(Sender: TObject);
  private
    { Private declarations }
    procedure InitUpdateSQL();
  public
    { Public declarations }
  end;

var
  DeliveryRubber: TDeliveryRubber;
  NDate:TDate;

implementation

uses main1,DeliveryRubberRY1, DeliveryRubber_Print1, FunUnit;

{$R *.dfm}

procedure TDeliveryRubber.InitUpdateSQL();
begin
  UpMas.InsertSQL.Clear;
  UpMas.InsertSQL.Add('insert into '+main.LIY_DD+'.dbo.LLZL (LLBH, CQDH, LLRQ, CQDH1, CFM, UserID, UserDate)');
  UpMas.InsertSQL.Add('values (:LLBH, :CQDH, :LLRQ, :CQDH1, :CFM, :UserID, :UserDate)');

  UpMas.ModifySQL.Clear;
  UpMas.ModifySQL.Add('update '+main.LIY_DD+'.dbo.LLZL');
  UpMas.ModifySQL.Add('set CQDH1=:CQDH1,USERDATE=:USERDATE');
  UpMas.ModifySQL.Add('where LLBH=:OLD_LLBH and CQDH=:OLD_CQDH');

  UpMas.DeleteSQL.Clear;
  UpMas.DeleteSQL.Add('delete from '+main.LIY_DD+'.dbo.LLZL');
  UpMas.DeleteSQL.Add('where LLBH= :OLD_LLBH AND CQDH=:OLD_CQDH');

  UpDet.InsertSQL.Clear;
  UpDet.InsertSQL.Add('insert into '+main.LIY_DD+'.dbo.LLZLS (LLBH, CQDH, DDBH, CLDH, LB, KGS_LL, KGS_YL, KGS_CL, CLSM, UserID,UserDate, lbdh)');
  UpDet.InsertSQL.Add('values (:LLBH, :CQDH, :DDBH, :CLDH, :LB, :KGS_LL, :KGS_YL, :KGS_CL, :CLSM,:UserID,:UserDate,:lbdh)');

  UpDet.ModifySQL.Clear;
  UpDet.ModifySQL.Add('update '+main.LIY_DD+'.dbo.LLZLS');
  UpDet.ModifySQL.Add('set KGS_LL=:KGS_LL,KGS_YL=:KGS_YL,KGS_CL=:KGS_CL,CLSM=:CLSM,UserID=:UserID,UserDate=:UserDate');
  UpDet.ModifySQL.Add('where LLBH = :OLD_LLBH and CQDH = :OLD_CQDH and DDBH = :OLD_DDBH and CLDH = :OLD_CLDH and LB=:OLD_LB');

  UpDet.DeleteSQL.Clear;
  UpDet.DeleteSQL.Add('delete from '+main.LIY_DD+'.dbo.LLZLS');
  UpDet.DeleteSQL.Add('where LLBH = :OLD_LLBH and CQDH = :OLD_CQDH and DDBH = :OLD_DDBH and CLDH = :OLD_CLDH and LB=:OLD_LB');
end;

procedure TDeliveryRubber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;

end;

procedure TDeliveryRubber.FormDestroy(Sender: TObject);
begin
  DeliveryRubber:=nil;
end;

procedure TDeliveryRubber.Button1Click(Sender: TObject);
begin

  with DelMas do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select LLZL.*,'''' as YN from '+main.LIY_DD+'.dbo.LLZL LLZL');
    sql.Add('where LLRQ between '''+formatdatetime('yyyymmdd',dtp1.Date)+''' and  '''+formatdatetime('yyyymmdd',dtp2.Date)+'''');
    sql.Add('and LLBh like '''+edit1.Text+'%''');
    sql.Add('and CQDH='''+main.Edit2.Text+'''');
    if Check.Checked then
    begin
      sql.Add('and USERID='+''''+main.Edit1.Text+'''');
    end;
    sql.Add('order by LLBH desc');
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
  with DelDet do
  begin
    active:=false;
    sql.Clear;
    sql.Add('SELECT LLZLS.LLBH,LLZLS.CQDH,LLZLS.CLDH,LLZLS.DDBH,LLZLS.LB,Convert(float,LLZLS.KGS_LL) as KGS_LL,Convert(float,LLZLS.KGS_YL) as KGS_YL,Convert(float,LLZLS.KGS_CL) as KGS_CL,');
    sql.Add('       LLZLS.CLSM,LLZLS.USERID,LLZLS.USERDATE,LLZLS.lbdh ,CLZL.zwpm ,CLZL.ywpm,CLZL.dwbh ,CLZL.cldj ,LBZLS.zwsm AS ZWSM9 ,LBZLS.ywsm AS YWSM9 ,DDZL.KHPO ,XXZL.YSSM, '''' as YN');
    sql.Add('FROM '+main.LIY_DD+'.dbo.LLZLS LLZLS');
    sql.Add('LEFT JOIN '+main.LIY_DD+'.dbo.CLZL CLZL ON LLZLS.cldh = CLZL.cldh');
    sql.Add('Left join '+main.LIY_DD+'.dbo.DDZLS2 DDZLS2 on DDZLS2.DDBH=LLZLS.DDBH and DDZLS2.LB=LLZLS.LB and DDZLS2.CQDH=LLZLS.CQDH and DDZLS2.cldh=LLZLS.cldh');
    sql.Add('LEFT JOIN '+main.LIY_DD+'.dbo.LBZLS LBZLS ON ''09'' = LBZLS.lb AND LLZLS.lbdh = LBZLS.lbdh');
    sql.Add('LEFT JOIN '+main.LIY_DD+'.dbo.DDZL DDZL ON LLZLS.DDBH = DDZL.DDBH AND LLZLS.CQDH = DDZL.CQDH');
    sql.Add('LEFT JOIN '+main.LIY_DD+'.dbo.XXZL XXZL ON LLZLS.CQDH = XXZL.CQDH AND DDZL.XieXing=XXZL.XieXing AND DDZL.SheHao=XXZL.SheHao');
    sql.Add('WHERE LLZLS.LLBH =:LLBH  AND LLZLS.CQDH =:CQDH');
    Active:=true;
  end;
end;

procedure TDeliveryRubber.BB1Click(Sender: TObject);
begin
  panel2.Visible:=true;
end;

procedure TDeliveryRubber.BB2Click(Sender: TObject);
begin
  with DelMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
    fieldbyname('CQDH').Value:=main.Edit2.Text;
    fieldbyname('CQDH1').Value:=main.Edit2.Text;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TDeliveryRubber.FormCreate(Sender: TObject);
begin
  DTP1.Date:=now-3;
  DTP2.date:=now;
  PC1.ActivePageIndex:=0;
  InitUpdateSQL();
end;

procedure TDeliveryRubber.BBT1Click(Sender: TObject);
begin
  Delmas.First;
end;

procedure TDeliveryRubber.BBT2Click(Sender: TObject);
begin
  DelMas.Prior;
end;

procedure TDeliveryRubber.BBT3Click(Sender: TObject);
begin
  DelMas.Next;
end;

procedure TDeliveryRubber.BBT4Click(Sender: TObject);
begin
  DelMas.Last;
end;

procedure TDeliveryRubber.BB6Click(Sender: TObject);
begin
  with DelMas do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.enabled:=false;
end;

procedure TDeliveryRubber.BB3Click(Sender: TObject);
begin
  if (DelDet.recordcount=0) then
  begin
    with DelMas do
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

procedure TDeliveryRubber.BB4Click(Sender: TObject);
begin
  with DelMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TDeliveryRubber.BB5Click(Sender: TObject);
var y,m,a:string;
i:integer;
begin
  with query1 do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active:=true;
    y:='E'+copy(fieldbyname('FY').asstring,3,2);
    m:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('NDate').value;
    active:=false;
  end;
  if length(m)<2 then
    m:='0'+m;

  try
    DelDet.Active:=false;
    DelMas.first;
    for i:=1 to DelMas.RecordCount do
    begin
      case DelMas.updatestatus of
        usinserted:
        begin
          if DelMas.fieldbyname('CQDH').isnull then
          begin
            DelMas.delete;
          end else
          begin
            with query1 do    //計算領料單流水號
            begin
              active:=false;
              sql.Clear;
              sql.Add('select LLBH from '+main.LIY_DD+'.dbo.LLZL where LLBH like '+''''+y+m+'%'+'''');
              sql.add('order by LLBH');
              active:=true;
              if recordcount >0 then
              begin
                last;
                a:=fieldbyname('LLBH').AsString;
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
            DelMas.edit;
            DelMas.fieldbyname('LLBH').Value:=a;
            DelMas.fieldbyname('LLRQ').Value:= formatdatetime('yyyymmdd',now);
            DelMas.fieldbyname('CFM').Value:='N';
            DelMas.FieldByName('userID').Value:=main.edit1.text;
            DelMas.FieldByName('userdate').Value:=formatdatetime('yyyymmdd',now);
            upMas.apply(ukinsert);
          end;
         end;
         usmodified:
         begin
          if DelMas.FieldByName('USERID').value<>main.Edit1.Text then
          begin
            showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
          end else
          begin
            if DelMas.fieldbyname('YN').value='0'then
            begin
              upMas.apply(ukdelete);
            end else
            begin
              if (DelMas.FieldByName('CFM').value='N')   then
              begin
                if (formatdatetime('yyyymmdd',now)-DelMas.FieldByName('USERDATE').value)<=3  then
                begin
                  DelMas.edit;
                  DelMas.FieldByName('userID').Value:=main.edit1.text;
                  DelMas.FieldByName('userdate').Value:=formatdatetime('yyyymmdd',now);
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
      DelMas.next;
    end;
    DelMas.active:=false;
    DelMas.cachedupdates:=false;
    DelMas.requestlive:=false;
    DelMas.active:=true;
    DelDet.Active:=true;
    bb5.enabled:=false;
    bb6.enabled:=false;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TDeliveryRubber.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if DelMas.FieldByName('YN').value='0' then
  begin
    dbgrid3.canvas.font.color:=clred;
    dbgrid3.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TDeliveryRubber.DelMasAfterOpen(DataSet: TDataSet);
begin
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
end;

procedure TDeliveryRubber.DBGrid3DblClick(Sender: TObject);
begin
  if  DelMas.Active then
  begin
    if  (DelMas.recordcount>0) then
    begin
      PC1.ActivePage:=TS4;
      panel1.Visible:=false;
      panel6.Visible:=true;
    end;
  end;
end;

procedure TDeliveryRubber.PC1Change(Sender: TObject);
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

procedure TDeliveryRubber.DelDetAfterOpen(DataSet: TDataSet);
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
  if (formatdatetime('yyyymmdd',now)-DelMas.FieldByName('USERDATE').value)>2  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  if DelMas.FieldByName('CFM').value<>'N'  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  if DelMas.FieldByName('USERID').value<>main.edit1.text  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  if DelMas.cachedupdates  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;

end;

procedure TDeliveryRubber.BD2Click(Sender: TObject);
begin
  if DelMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with DelDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  DBGrid4.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TDeliveryRubber.BD3Click(Sender: TObject);
begin
  if DelMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with DelDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
end;

procedure TDeliveryRubber.BD4Click(Sender: TObject);
begin
  if DelMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with DelDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
end;

procedure TDeliveryRubber.BD6Click(Sender: TObject);
begin
  with DelDet do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
end;

procedure TDeliveryRubber.BD5Click(Sender: TObject);
var i:integer;
    DDBH,CQDH,CLDH,LB:String;
begin
  with DelDet do
  begin
    first;
    while not DelDet.Eof do
      begin
        if DelDet.FieldByName('DDBH').IsNull then
        begin
          showmessage('The DDBH can not be empty.');
          abort;
        end;
        if DelDet.FieldByName('KGS_LL').IsNull then
        begin
          showmessage('The KGS_LL can not be empty.');
          abort;
        end;
        if DelDet.FieldByName('cldh').IsNull then
        begin
          showmessage('Material No can not be empty.');
          abort;
        end;
        if DelDet.FieldByName('LB').IsNull then
        begin
          showmessage('The LB can not be empty.');
          abort;
        end;
      next;
    end;
  end;
  try
    DelDet.first;
    for i:=1 to DelDet.RecordCount do
    begin
      case DelDet.updatestatus of
        usinserted:
        begin
          if DelMas.FieldByName('USERID').value<>main.Edit1.Text then
          begin
            showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
          end else
          begin
            if DelDet.fieldbyname('DDBH').isnull then
            begin
              DelDet.delete;
            end else
            begin
              DelDet.edit;
              DelDet.fieldbyname('KGS_LL').Value:=formatfloat('#,##0.##',Deldet.fieldbyname('KGS_LL').Value); //20141023 四捨五入到小數第二位
              //DelDet.fieldbyname('KGS_CL').Value:=DelDet.fieldbyname('KGS_YL').Value- Deldet.fieldbyname('KGS_LL').Value;
              DelDet.fieldbyname('LLBH').Value:=DelMas.fieldbyname('LLBH').Value;
              DelDet.FieldByName('CQDH').Value:=main.edit2.text;
              DelDet.FieldByName('userID').Value:=main.edit1.text;
              DelDet.FieldByName('userdate').Value:=formatdatetime('yyyymmdd',now);
              upDet.apply(ukinsert);
              //更新領用量
              with Query1 do
              begin
                Active:=false;
                SQL.Clear;
                SQL.Add('Update '+main.LIY_DD+'.dbo.DDZLS2 set KGS_LL=');
                SQL.Add('( SELECT IsNull(SUM(KGS_LL),0) ');
                SQL.Add('from  '+main.LIY_DD+'.dbo.LLZLS where DDBH='''+DelDet.FieldByName('DDBH').AsString+''' and CLDH='''+DelDet.FieldByName('CLDH').AsString+''' and CQDH='''+DelDet.FieldByName('CQDH').AsString+'''  and LB='''+DelDet.FieldByName('LB').AsString+''') ');
                SQL.Add('where DDBH='''+DelDet.FieldByName('DDBH').AsString+''' and CLDH='''+DelDet.FieldByName('CLDH').AsString+''' and CQDH='''+DelDet.FieldByName('CQDH').AsString+''' ');
                ExecSQL();
              end;
            end;
          end;
        end;
        usmodified:
        begin
          if DelDet.FieldByName('USERID').value<>main.Edit1.Text then
          begin
            showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
          end else
          begin
            if DelDet.fieldbyname('YN').value='0'then
            begin
              //更新領用量
              DDBH:=DelDet.FieldByName('DDBH').AsString;
              CQDH:=DelDet.FieldByName('CQDH').AsString;
              CLDH:=DelDet.FieldByName('CLDH').AsString;
              LB:=DelDet.FieldByName('LB').AsString;
              UpDet.apply(ukdelete);
              with Query1 do
              begin
                Active:=false;
                SQL.Clear;
                SQL.Add('Update '+main.LIY_DD+'.dbo.DDZLS2 set KGS_LL=');
                SQL.Add('( SELECT IsNull(SUM(KGS_LL),0) ');
                SQL.Add('from  '+main.LIY_DD+'.dbo.LLZLS where DDBH='''+DDBH+''' and CLDH='''+CLDH+''' and CQDH='''+CQDH+'''  and LB='''+LB+''') ');
                SQL.Add('where DDBH='''+DDBH+''' and CLDH='''+CLDH+''' and CQDH='''+CQDH+''' ');
                ExecSQL();
              end;
            end else
            begin
              DelDet.edit;
              DelDet.fieldbyname('KGS_LL').Value:=formatfloat('#,##0.##',Deldet.fieldbyname('KGS_LL').Value); //20141023 四捨五入到小數第二位
              //DelDet.fieldbyname('KGS_CL').Value:=DelDet.fieldbyname('KGS_YL').Value-Deldet.fieldbyname('KGS_LL').Value;
              DelDet.FieldByName('userID').Value:=main.edit1.text;
              DelDet.FieldByName('userdate').Value:=formatdatetime('yyyymmdd',now);
              UpDet.apply(ukmodify);
              //更新領用量
              with Query1 do
              begin
                Active:=false;
                SQL.Clear;
                SQL.Add('Update '+main.LIY_DD+'.dbo.DDZLS2 set KGS_LL=');
                SQL.Add('( SELECT IsNull(SUM(KGS_LL),0) ');
                SQL.Add('from  '+main.LIY_DD+'.dbo.LLZLS where DDBH='''+DelDet.FieldByName('DDBH').AsString+''' and CLDH='''+DelDet.FieldByName('CLDH').AsString+''' and CQDH='''+DelDet.FieldByName('CQDH').AsString+'''  and LB='''+DelDet.FieldByName('LB').AsString+''') ');
                SQL.Add('where DDBH='''+DelDet.FieldByName('DDBH').AsString+''' and CLDH='''+DelDet.FieldByName('CLDH').AsString+''' and CQDH='''+DelDet.FieldByName('CQDH').AsString+''' ');
                ExecSQL();
              end;
            end;
          end;
        end;
      end;
      DelDet.next;
    end;
    DelDet.active:=false;
    DelDet.cachedupdates:=false;
    DelDet.requestlive:=false;
    DelDet.active:=true;
    bb6.enabled:=false;
    BD5.Enabled:=false;
    BD6.Enabled:=false;
  except
    On E:Exception do
    begin
      Messagedlg('Have wrong, can not save data!'+E.Message,mtwarning,[mbyes],0);
    end;
  end;
end;

procedure TDeliveryRubber.DBGrid4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if DelDet.FieldByName('YN').value='0' then
  begin
    DBGrid4.canvas.font.color:=clred;
    DBGrid4.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TDeliveryRubber.BDT1Click(Sender: TObject);
begin
  DelDet.First;
end;

procedure TDeliveryRubber.BDT2Click(Sender: TObject);
begin
  DelDet.Prior;
end;

procedure TDeliveryRubber.BDT3Click(Sender: TObject);
begin
  DelDet.Next;
end;

procedure TDeliveryRubber.BDT4Click(Sender: TObject);
begin
  DelDet.Last;
end;

procedure TDeliveryRubber.DBGrid4EditButtonClick(Sender: TObject);
begin
  DeliveryRubberRY:=TDeliveryRubberRY.Create(self);
  DeliveryRubberRY.Show();
end;

procedure TDeliveryRubber.BDT5Click(Sender: TObject);
begin
  DeliveryRubber_Print:=TDeliveryRubber_Print.create(self);
  DeliveryRubber_Print.Query1.Active:=true;
  DeliveryRubber_Print.QRLabel8.Caption:=DelMas.FieldByName('LLBH').AsString;
  DeliveryRubber_Print.QRLabel9.Caption:=main.Edit2.Text;
  DeliveryRubber_Print.QRLabel11.Caption:=DelMas.FieldByName('USERDATE').AsString;
  DeliveryRubber_Print.QRLabel15.Caption:=main.Edit2.Text+DeliveryRubber_Print.QRLabel15.Caption;
  DeliveryRubber_Print.quickrep1.prepare;
  DeliveryRubber_Print.PageN.caption:=inttostr(DeliveryRubber_Print.quickrep1.QRPrinter.pagecount);
  DeliveryRubber_Print.SDate.Caption:=formatdatetime('YYYY/MM/DD',Date());
  DeliveryRubber_Print.quickrep1.preview;
  DeliveryRubber_Print.free;
end;

end.
