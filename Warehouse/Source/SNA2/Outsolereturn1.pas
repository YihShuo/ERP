unit Outsolereturn1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, DBTables,comobj,
  DBCtrls, ComCtrls, Menus, Mask,dateutils, Grids, DBGrids, GridsEh, DBGridEh;

type
  TOutsolereturn = class(TForm)
    Query1: TQuery;
    DelMas: TQuery;
    DS3: TDataSource;
    UpMas: TUpdateSQL;
    DelDet: TQuery;
    DS4: TDataSource;
    UPDet: TUpdateSQL;
    BDelRec: TQuery;
    DS6: TDataSource;
    KCLLSS: TQuery;
    UpdateSQL1: TUpdateSQL;
    TempSQL: TQuery;
    strngfldDelMasRKNO: TStringField;
    strngfldDelMasGSBH: TStringField;
    strngfldDelMasCKBH: TStringField;
    strngfldDelMasDepID: TStringField;
    strngfldDelMasZSNO: TStringField;
    strngfldDelMasUSERID: TStringField;
    dtmfldDelMasUSERDATE: TDateTimeField;
    strngfldDelMasCFMID: TStringField;
    dtmfldDelMasCFMDATE: TDateTimeField;
    strngfldDelMasYN: TStringField;
    strngfldDelMasSB: TStringField;
    strngfldDelMasMEMO: TStringField;
    intgrfldDelMasPMARK: TIntegerField;
    strngfldDelMasDepName: TStringField;
    strngfldDelDetRKNO: TStringField;
    strngfldDelDetCLBH: TStringField;
    strngfldDelDetZLBH: TStringField;
    strngfldDelDetRKSB: TStringField;
    crncyfldDelDetQty: TCurrencyField;
    fltfldDelDetPaQty: TFloatField;
    strngfldDelDetMEMO: TStringField;
    strngfldDelDetUSERID: TStringField;
    dtmfldDelDetUSERDATE: TDateTimeField;
    strngfldDelDetYN: TStringField;
    strngfldDelDetYWPM: TStringField;
    strngfldDelDetDWBH: TStringField;
    strngfldDelDetlycc: TStringField;
    strngfldKCLLSSRKNo: TStringField;
    strngfldKCLLSSSIZ: TStringField;
    strngfldKCLLSSCLBH: TStringField;
    strngfldKCLLSSZLBH: TStringField;
    fltfldKCLLSSQty: TFloatField;
    strngfldKCLLSSUSERID: TStringField;
    dtmfldKCLLSSUSERDATE: TDateTimeField;
    strngfldKCLLSSYN: TStringField;
    strngfldDelDetZLNO: TStringField;
    KCLLSSLCRY: TStringField;
    Panel2: TPanel;
    MasPanel: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    bbt6: TBitBtn;
    KCLLSSLLQty: TFloatField;
    PGCPC1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGridh3: TDBGridEh;
    DetPanel: TPanel;
    BD2: TBitBtn;
    BD3: TBitBtn;
    BD4: TBitBtn;
    BD5: TBitBtn;
    BD6: TBitBtn;
    BDT5: TBitBtn;
    BDT6: TBitBtn;
    BDT7: TBitBtn;
    MasToolPanel: TPanel;
    lbl6: TLabel;
    edt1: TEdit;
    btnBBTT1: TBitBtn;
    chk1: TCheckBox;
    lbl7: TLabel;
    dtp1: TDateTimePicker;
    lbl8: TLabel;
    dtp2: TDateTimePicker;
    chk2: TCheckBox;
    btn2: TButton;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    dbgrdh4: TDBGridEh;
    dbgrdh6: TDBGridEh;
    pnl4: TPanel;
    btnBE1: TBitBtn;
    btnBE2: TBitBtn;
    btnBE3: TBitBtn;
    btnBE4: TBitBtn;
    btnBE5: TBitBtn;
    btnBBTT2: TBitBtn;
    Label18: TLabel;
    Label17: TLabel;
    BB1: TBitBtn;
    lbl9: TLabel;
    dbedtLLNO1: TDBEdit;
    dbedtCLBH: TDBEdit;
    lbl12: TLabel;
    lbl10: TLabel;
    lbl13: TLabel;
    dbmmoYWPM: TDBMemo;
    dbedtUSERDATE1: TDBEdit;
    lbl11: TLabel;
    dbedtDepID1: TDBEdit;
    dbedtDepName1: TDBEdit;
    Label1: TLabel;
    edt2: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn2Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DelMasAfterOpen(DataSet: TDataSet);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure btnBBTT1Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure DBGridh3EditButtonClick(Sender: TObject);
    procedure DelDetAfterOpen(DataSet: TDataSet);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure btnBBTT2Click(Sender: TObject);
    procedure dbgrdh4EditButtonClick(Sender: TObject);
    procedure BDT5Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnBE1Click(Sender: TObject);
    procedure btnBE5Click(Sender: TObject);
    procedure btnBE2Click(Sender: TObject);
    procedure btnBE3Click(Sender: TObject);
    procedure btnBE4Click(Sender: TObject);
    procedure pgcPC1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure DBGridh3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure dbgrdh4GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure dbgrdh6GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid6Columns2NotInList(Sender: TObject; NewText: String;
      var RecheckInList: Boolean);
    procedure DBGrid6Columns3NotInList(Sender: TObject; NewText: String;
      var RecheckInList: Boolean);
    procedure DBGrid6Columns4NotInList(Sender: TObject; NewText: String;
      var RecheckInList: Boolean);
    procedure KCLLSSCalcFields(DataSet: TDataSet);
    procedure dbgrdh6Columns1NotInList(Sender: TObject; NewText: String;
      var RecheckInList: Boolean);
    procedure BDT7Click(Sender: TObject);
    procedure PGCPC1Change(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure DBGridh3DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Outsolereturn: TOutsolereturn;
  sdate,edate,NDate:Tdate;

implementation

uses  main1 ,Outsolereturn_S1,
     Outsolereturn_Dep1, Outsolereturn_CL1, Outsolereturn_PrintA41, OutsolePurchase_CL1,FunUnit;
{$R *.dfm}

procedure TOutsolereturn.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  if BB5.enabled  then
  begin
    messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else begin
      if BD5.enabled then
      begin
          messagedlg('You have to save data Report first.',mtwarning,[mbyes],0);
          action:=canone;
      end else
      if btnBE4.Enabled then
      begin
        messagedlg('You have to save data Report first.',mtwarning,[mbyes],0);
        action:=canone;
      end else
      begin
        action:=Cafree;
      end;
  end;
end;

procedure TOutsolereturn.btn2Click(Sender: TObject);
var y,m:word;
begin

  with DelMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select OSRK.*,BDepartment.DepName');
    sql.add('from OSRK');
    sql.add('left join BDepartment on OSRK.DepID=BDepartment.ID');
    sql.add('where OSRK.SB=''L'' ');
    IF Edt1.TEXT<>'' THEN
       sql.add(' AND OSRK.RKNO LIKE '+''''+edt1.Text+'%'+'''');
    IF Edt2.TEXT<>'' THEN
       sql.add(' AND OSRK.DepID LIKE '+''''+edt2.Text+'%'+'''');
    if CHK1.Checked=true then
    begin
       sql.add('    and convert(smalldatetime,convert(varchar,OSRK.USERDATE,111)) between ');
       sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    if Chk2.Checked then
    begin
        sql.Add('and OSRK.USERID='+''''+main.Edit1.Text+'''');
    end;
    sql.add('order by OSRK.RKNO DESC');
    active:=true;
  end;
  DelMas.Active:=true;
  KCLLSS.Active:=true;
  MasToolPanel.Visible:=false;
end;

procedure TOutsolereturn.BB7Click(Sender: TObject);
begin
close;
end;

procedure TOutsolereturn.FormCreate(Sender: TObject);
var i:integer;
begin

  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('Select CKBH from KCCK WHERE GSBH='''+main.Edit2.text+''' order by CKBH');
    active:=true;
    DBGridh3.Columns[3].PickList.Clear;
    for i:=1 to recordcount do
    begin
      DBGridh3.Columns[2].PickList.add(fieldbyname('CKBH').asstring);
      Next;
    end;
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
  end;
  pgcPC1.ActivePage:=TabSheet1;
  DTP1.Date:=date-1;
  DTP2.date:=date;

end;

procedure TOutsolereturn.DelMasAfterOpen(DataSet: TDataSet);
begin
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  BBT6.Enabled:=true;
  DelDet.Active:=true;

  BB5.Enabled:=false;
  BB6.Enabled:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
end;

procedure TOutsolereturn.BB2Click(Sender: TObject);
begin
  with DelMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  btnBBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGridh3.columns[3].ButtonStyle:=cbsEllipsis;
end;

procedure TOutsolereturn.BB3Click(Sender: TObject);
begin

  if DelDet.recordcount=0 then
  begin
    with DelMas do
      begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
        fieldbyname('YN').Value:='0';
      end;
  end
    else
      begin
        showmessage('Pls delete the Deliver Detail first.')
      end;
  btnBBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  //
end;

procedure TOutsolereturn.BB4Click(Sender: TObject);
begin
  with DelMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  btnBBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGridh3.columns[3].ButtonStyle:=cbsEllipsis;
end;

procedure TOutsolereturn.BB5Click(Sender: TObject);
var y,m,a:string;
    i:integer;
begin

  with query1 do          //¨úªA°È¾¹ªº¦~¤ë­È
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').value;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    active:=false;
  end;
  if length(m)<2 then
  m:='0'+m;

  try
    DelMas.first;
    for i:=1 to DelMas.RecordCount do
      begin
        case DelMas.updatestatus of
          usinserted:
            begin
                    if DelMas.fieldbyname('DepID').isnull then
                    begin
                        DelMas.delete;
                    end else
                    begin
                        with query1 do    //­pºâ»â®Æ³æ¬y¤ô¸¹
                        begin
                            active:=false;
                            sql.Clear;
                            sql.Add('select top 1 RKNO from OSRK where RKNO like '+''''+'RP'+y+m+'%'+'''');
                            sql.add('order by RKNO DESC');
                            active:=true;
                            if recordcount >0 then
                            begin
                              a:=fieldbyname('RKNO').AsString;
                              a:=copy(a,9,7);
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
                        DelMas.fieldbyname('RKNO').Value:='RP'+a;
                        DelMas.fieldbyname('SB').Value:='L';
                        DelMas.fieldbyname('GSBH').Value:=main.Edit2.text;
                        DelMas.FieldByName('userID').Value:=main.edit1.text;
                        DelMas.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                        DelMas.FieldByName('CFMID').Value:='NO';
                        DelMas.FieldByName('YN').Value:='1';
                        upMas.apply(ukinsert);
                    end;
            end;
          usmodified:
             begin
               if DelMas.FieldByName('USERID').value<>main.Edit1.Text then
                 begin
                   showmessage('¤£¬O§Aªº¡A¤£­n¶Ã°Ê¡Ckhong phai ban khong duoc tu sua');
                 end
                 else
                   begin
                     if DelMas.fieldbyname('YN').value='0'then
                       begin
                         with BDelRec do
                           begin
                             active:=false;
                             sql.Clear;
                             sql.add('insert into BDelRec ');
                             sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                             sql.add('values ('+''''+'OSRK'+''''+','+''''+DelMas.fieldbyname('RKNO').Value+'''');
                             sql.add(','+''''+' '+''''+','+''''+DelMas.fieldbyname('USERID').Value+''''+',');
                             sql.add(''''+main.Edit1.Text+''''+',getdate())');
                             execsql;
                             active:=false;
                           end;
                         upMas.apply(ukdelete);
                       end
                       else
                         begin
                           if (DelMas.FieldByName('CFMID').value='NO')   then
                             begin
                               if (NDate-DelMas.FieldByName('USERDATE').value)<=2  then
                                 begin
                                   DelMas.edit;
                                   DelMas.FieldByName('userID').Value:=main.edit1.text;
                                   DelMas.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                                   upMas.apply(ukmodify);
                                 end
                                 else
                                   begin
                                     showmessage('Date>2, can not modify.');
                                   end;
                             end
                             else
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
    bb5.enabled:=false;
    bb6.enabled:=false;
    btnBBTT1.Visible:=false;
    DBGridh3.columns[3].ButtonStyle:=cbsnone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TOutsolereturn.btnBBTT1Click(Sender: TObject);
begin
  Outsolereturn_Dep:=TOutsolereturn_Dep.Create(self);
  Outsolereturn_Dep.Label3.Caption := 'Outsolereturn';
  Outsolereturn_Dep.Show;
end;

procedure TOutsolereturn.BB6Click(Sender: TObject);
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
  btnBBTT1.Visible:=false;
  DBGridh3.columns[3].ButtonStyle:=cbsnone;
end;

procedure TOutsolereturn.DBGridh3EditButtonClick(Sender: TObject);
begin
 Outsolereturn_Dep:=TOutsolereturn_Dep.Create(self);
 Outsolereturn_Dep.Label3.Caption := 'Outsolereturn';
 Outsolereturn_Dep.Show;

end;

procedure TOutsolereturn.DelDetAfterOpen(DataSet: TDataSet);
begin
  BD2.Enabled:=true;
  BD3.Enabled:=true;
  BD4.Enabled:=true;
  btnBE1.Enabled:=true;
  btnBE2.Enabled:=true;
  btnBE3.Enabled:=true;

  BDT5.Enabled:=true;
  BDT6.Enabled:=true;
  BDT7.Enabled:=true;
  if (NDate-DelMas.FieldByName('USERDATE').value)>3  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    btnBE1.Enabled:=false;
    btnBE2.Enabled:=false;
    btnBE3.Enabled:=false;
  end;
  if DelMas.FieldByName('CFMID').value<>'NO'  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    btnBE1.Enabled:=false;
    btnBE2.Enabled:=false;
    btnBE3.Enabled:=false;

  end;
  if DelMas.FieldByName('USERID').value<>main.edit1.text  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    btnBE1.Enabled:=false;
    btnBE2.Enabled:=false;
    btnBE3.Enabled:=false;
  end;
  if DelMas.cachedupdates  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    btnBE1.Enabled:=false;
    btnBE2.Enabled:=false;
    btnBE3.Enabled:=false;
  end;  


  BD5.Enabled:=false;
  BD6.Enabled:=false;
  btnBE4.Enabled:=false;
  btnBE5.Enabled:=false;
end;

procedure TOutsolereturn.BD2Click(Sender: TObject);
begin

  if DelMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    abort;
  end;

  with DelDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  
  btnBBTT2.Visible:=true;
  BD2.Enabled:=FALSE;
  BD3.Enabled:=FALSE;
  BD4.Enabled:=FALSE;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  //dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TOutsolereturn.BD3Click(Sender: TObject);
begin
if DelMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    abort;
  end;

if KCLLSS.recordcount=0 then
  with DelDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end
else
  showmessage('Pls delete the Detail Article first.');
BD5.Enabled:=true;
BD6.Enabled:=true;
//dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TOutsolereturn.BD5Click(Sender: TObject);
var i:integer;
    Bookmark1:   string;
begin

  Bookmark1   :=   DelMas.Bookmark;
  try
    DelDet.first;
    for i:=1 to DelDet.RecordCount do
    begin
        case DelDet.updatestatus of
          usinserted:
            begin
              if DelMas.FieldByName('USERID').value<>main.Edit1.Text then
              begin
                  showmessage('¤£¬O§Aªº¡A¤£­n¶Ã°Ê¡Ckhong phai ban khong duoc tu sua');
              end else
                  begin
                    if DelDet.fieldbyname('CLBH').isnull then
                    begin
                        DelDet.delete;
                    end else
                    begin
                          //¼g¤J³æ¨­
                          DelDet.edit;
                          DelDet.fieldbyname('RKNO').Value :=DelMas.fieldbyname('RKNO').Value;
                          DelDet.fieldbyname('QTY').Value  :='0';
                          DelDet.fieldbyname('PAQTY').Value:='0';
                          DelDet.fieldbyname('RKSB').Value :='LT';
                          DelDet.FieldByName('userID').Value:=main.edit1.text;
                          DelDet.FieldByName('userdate').Value:=Ndate;
                          DelDet.FieldByName('YN').Value:='1';
                          upDet.apply(ukinsert);

                          //±ÄÁÊ¤J®w
                          if ((DelDet.fieldbyname('ZLBH').AsString='ZZZZZZZZZZ') or (DelDet.fieldbyname('ZLBH').AsString='YYYYYYYYYY'))  then
                          begin
                            //¼g¤J³æ¨­¤Ø¤o¼Æ¶q
                            with query1 do
                            begin
                              active:=false;
                              sql.Clear;
                              sql.add('DELETE OSRKSS   ');
                              sql.add('where OSRKSS.RKNO='+''''+DelDet.fieldbyname('RKNo').AsString+'''');
                              sql.add('       and OSRKSS.CLBH='+''''+DelDet.fieldbyname('CLBH').AsString+'''');
                              execsql;
                              active:=false;
                              sql.Clear;

                              sql.add('INSERT OSRKSS   ');
                              if DelDet.fieldbyname('ZLBH').AsString='ZZZZZZZZZZ' then // ±ÄÁÊ
                                 sql.add('select '''+DelDet.fieldbyname('RKNo').AsString+''' ,SIZ,CLBH,''NEWL'',''0'' ');
                              if DelDet.fieldbyname('ZLBH').AsString='YYYYYYYYYY' then  //µL»â¥X³æÂkÁÙ
                                 sql.add('select '''+DelDet.fieldbyname('RKNo').AsString+''' ,SIZ,CLBH,''Outsole'',''0'' ');
                              sql.add('       ,'''+main.edit1.text+''''  );
                              sql.add('       ,getdate() '  );
                              sql.add('       ,''1'' '  );
                              sql.add('       ,null '  );
                              sql.add(' from OutsoleSizeR   ');
                              sql.add(' where OutsoleSizeR.CLBH='+''''+DelDet.fieldbyname('CLBH').AsString+'''');
                              execsql;
                              active:=false;
                              close;
                            end;
                          end else
                          begin
                            //¼g¤J³æ¨­¤Ø¤o¼Æ¶q
                            with query1 do
                            begin
                              active:=false;
                              sql.Clear;
                              sql.add('DELETE OSRKSS   ');
                              sql.add('where OSRKSS.RKNO='+''''+DelDet.fieldbyname('RKNo').AsString+'''');
                              sql.add('       and OSRKSS.CLBH='+''''+DelDet.fieldbyname('CLBH').AsString+'''');
                              execsql;
                              active:=false;
                              sql.Clear;

                              sql.add('INSERT OSRKSS   ');
                              sql.add('select '''+DelDet.fieldbyname('RKNo').AsString+''' ,SIZ,CLBH,''Outsole'',''0'' ');
                              sql.add('       ,'''+main.edit1.text+''''  );
                              sql.add('       ,getdate() '  );
                              sql.add('       ,''1'' '  );
                              sql.add('       ,LCRY '  );
                              sql.add(' from OSLLSS   ');
                              sql.add(' where OSLLSS.LLNo='+''''+DelDet.fieldbyname('ZLBH').AsString+'''');
                              sql.add('       and OSLLSS.CLBH='+''''+DelDet.fieldbyname('CLBH').AsString+'''');
                              execsql;
                              active:=false;
                              close;
                            end;
                          end;

                    end;
                  end;
            end;
          usmodified:
             begin
                 if DelDet.FieldByName('USERID').value<>main.Edit1.Text then
                 begin
                   showmessage('¤£¬O§Aªº¡A¤£­n¶Ã°Ê¡Ckhong phai ban khong duoc tu sua');
                 end else
                 begin
                       if DelDet.fieldbyname('YN').value='0'then
                       begin
                         with BDelRec do
                         begin
                             active:=false;
                             sql.Clear;
                             sql.add('insert into BDelRec ');
                             sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                             sql.add('values ('+''''+'OSRKS'+''''+','+''''+DelDet.fieldbyname('RKNO').Value+'''');
                             sql.add(','+''''+DelDet.fieldbyname('CLBH').Value+''''+','+''''+DelDet.fieldbyname('USERID').Value+''''+',');
                             sql.add(''''+main.Edit1.Text+''''+',getdate())');
                             execsql;
                             active:=false;
                         end;
                         UpDet.apply(ukdelete);
                       end else
                       begin
                           DelDet.edit;
                           DelDet.FieldByName('userID').Value:=main.edit1.text;
                           DelDet.FieldByName('userdate').Value:=Ndate;
                           upDet.apply(ukmodify);
                       end;
                 end;
             end;
        end;
        DelDet.next;
   end;

  with query1 do       //„h³ý²»´æÔÚµÄ?
  begin
      active:=false;
      sql.Clear;
      sql.add('DELETE OSRKSS   ');
      sql.add(' where OSRKSS.RKNo='+''''+DelMas.fieldbyname('RKNo').Value+'''');
      sql.add('       and NOT EXISTS (SELECT OSRKS.RKNo FROM OSRKS WHERE OSRKS.RKNo=OSRKSS.RKNo AND OSRKSS.CLBH=OSRKS.CLBH ) ');
      execsql;
      close;
  end;
  Delmas.Active:=false;
  Delmas.Active:=active;
  DelMas.Bookmark := Bookmark1;
  DelDet.active:=false;
  DelDet.cachedupdates:=false;
  DelDet.requestlive:=false;
  DelDet.active:=true;
  bb6.enabled:=false;
  btnBBTT2.Visible:=false;
  BD2.Enabled:=TRUE;
  BD3.Enabled:=TRUE;
  BD4.Enabled:=TRUE;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  //dbgrid4.columns[0].ButtonStyle:=cbsNone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TOutsolereturn.BD4Click(Sender: TObject);
begin
  if DelMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    abort;
  end;

  with DelDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BD2.Enabled:=FALSE;
  BD3.Enabled:=FALSE;
  BD4.Enabled:=FALSE;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  //dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TOutsolereturn.BD6Click(Sender: TObject);
begin
  with DelDet do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  btnBBTT2.Visible:=false;
  BD2.Enabled:=TRUE;
  BD3.Enabled:=TRUE;
  BD4.Enabled:=TRUE;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
//dbgrid4.columns[0].ButtonStyle:=cbsNone;
end;

procedure TOutsolereturn.btnBBTT2Click(Sender: TObject);
begin

  if messagedlg('Phom giay tra ve hay hoac muc hang nhap kho ?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    Outsolereturn_CL:=TOutsolereturn_CL.create(self);
    Outsolereturn_CL.DepIDEdit.Text:=DelMas.FieldByName('DepID').AsString;
    Outsolereturn_CL.show;
  end else
  begin
    OutsolePurchase_CL:=TOutsolePurchase_CL.create(self);
    OutsolePurchase_CL.show;
  end;

end;

procedure TOutsolereturn.dbgrdh4EditButtonClick(Sender: TObject);
begin
btnBBTT2Click(nil);
end;

procedure TOutsolereturn.BDT5Click(Sender: TObject);
begin
  if DelDet.RequestLive then
    begin
      showmessage('Pls save data first.');
      abort;
    end
  else

  Outsolereturn_PrintA4:=TOutsolereturn_PrintA4.create(nil);
  Outsolereturn_PrintA4.quickrep1.prepare;
  Outsolereturn_PrintA4.Qpage1.caption:=inttostr(Outsolereturn_PrintA4.quickrep1.QRPrinter.pagecount);
  Outsolereturn_PrintA4.quickrep1.preview;
  Outsolereturn_PrintA4.free;

  with DelMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    if fieldbyname('PMARK').isnull then
      begin
        fieldbyname('PMARK').value:=1;
      end
      else
        begin
          fieldbyname('PMARK').value:=fieldbyname('PMARK').value+1;
        end;
    UPMAS.Apply(ukmodify);
    requestlive:=false;
    cachedupdates:=false;
  end;

end;

procedure TOutsolereturn.FormDestroy(Sender: TObject);
begin
   Outsolereturn:=nil;
end;

procedure TOutsolereturn.btnBE1Click(Sender: TObject);
begin

  if DelMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    abort;
  end;
  if DelDet.RequestLive then
  begin
    showmessage('Pls save Detail data first.');
    abort;
  end;
  dbgrdh4.Enabled:=false;
  with KCLLSS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BTNBE2.Enabled:=FALSE;
  BTNBE3.Enabled:=FALSE;
  BTNBE4.Enabled:=true;
  BTNBE5.Enabled:=true;
end;

procedure TOutsolereturn.btnBE5Click(Sender: TObject);
begin

  with KCLLSS do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  dbgrdh4.Enabled:=true;
  btnBE1.Enabled:=TRUE;
  btnBE2.Enabled:=TRUE;
  btnBE3.Enabled:=TRUE;
  btnBE4.Enabled:=false;
  btnBE5.Enabled:=false;

end;

procedure TOutsolereturn.btnBE2Click(Sender: TObject);
begin
  if DelMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    abort;
  end;
  if DelDet.RequestLive then
  begin
    showmessage('Pls save Detail data first.');
    abort;
  end;
  dbgrdh4.Enabled:=false;

  with KCLLSS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;

  btnBE1.Enabled:=FALSE;
  btnBE3.Enabled:=FALSE;
  btnBE4.Enabled:=true;
  btnBE5.Enabled:=true;
  //
end;

procedure TOutsolereturn.btnBE3Click(Sender: TObject);
begin
  if DelMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    abort;
  end;
  if DelDet.RequestLive then
  begin
    showmessage('Pls save Detail data first.');
    abort;
  end;
  dbgrdh4.Enabled:=false;
  with KCLLSS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  btnBE1.Enabled:=FALSE;
  btnBE2.Enabled:=FALSE;
  btnBE4.Enabled:=true;
  btnBE5.Enabled:=true;
  //
end;

procedure TOutsolereturn.btnBE4Click(Sender: TObject);
var i:integer;
    Qty:real;
begin
  try
    KCLLSS.first;
    for i:=1 to KCLLSS.RecordCount do
      begin
        case KCLLSS.updatestatus of
          usinserted:
            begin
                //if KCLLSS.fieldbyname('RKNO').isnull then
                //begin
                  //KCLLSS.delete;
                //end
                 //else
                   //begin
                     KCLLSS.edit;
                     KCLLSS.fieldbyname('RKNO').Value:=DelDet.fieldbyname('RKNO').value;
                     KCLLSS.fieldbyname('CLBH').Value:=DelDet.fieldbyname('CLBH').value;
                     if  Copy(DelDet.fieldbyname('ZLBH').AsString,1,1)='L' then
                       KCLLSS.fieldbyname('ZLBH').Value:='Outsole'
                     else
                       KCLLSS.fieldbyname('ZLBH').Value:='NEWL';
                     KCLLSS.FieldByName('userID').Value:=main.edit1.text;
                     KCLLSS.FieldByName('userdate').Value:=date;
                     KCLLSS.FieldByName('YN').Value:='1';
                     UpdateSQL1.apply(ukinsert);
                   //end;
            end;
          usmodified:
             begin
              if KCLLSS.fieldbyname('YN').value='0'then
                begin
                  UpdateSQL1.apply(ukdelete);
                end
                else
                  begin
                    if (NDate-DelMas.FieldByName('USERDATE').value)<60  then
                      begin
                        KCLLSS.edit;
                        KCLLSS.FieldByName('userID').Value:=main.edit1.text;
                        KCLLSS.FieldByName('userdate').Value:=date;
                        UpdateSQL1.apply(ukmodify);
                      end
                      else
                        begin
                          showmessage('Date>60, can not modify.');
                        end;
                  end;
             end;
        end;
        KCLLSS.next;
      end;
      with query1 do       //„h³ý²»´æÔÚµÄ?
        begin
          active:=false;
          sql.Clear;
          sql.add('DELETE OSRKSS   ');
          sql.add(' where OSRKSS.RKNo='+''''+DelMas.fieldbyname('RKNo').Value+'''');
          sql.add('       and NOT EXISTS (SELECT OSRKS.RKNo FROM OSRKS WHERE OSRKS.RKNo=OSRKSS.RKNo AND OSRKSS.CLBH=OSRKS.CLBH ) ');
          execsql;
          active:=false;
          sql.Clear;
          sql.add('DELETE OSRKSS   ');
          sql.add(' where OSRKSS.RKNo='+''''+DelMas.fieldbyname('RKNo').Value+'''');
          sql.Add(' and QTY=''0'' ');
          //20120528 sql.add('       and QTY=''0'' and LTRKS.RKNo='+''''+DelDet.FieldByName('RKNo').Value+''' ');
          execsql;
          active:=false;
          sql.Clear;
          sql.add('UPDATE OSRKS set QTY=isnull((select isnull(SUM(QTY),0) AS SQTY from OSRKSS WHERE OSRKSS.RKNo=OSRKS.RKNo AND OSRKSS.CLBH=OSRKS.CLBH  ');
          sql.add('                             and OSRKSS.RKNo='+''''+DelDet.FieldByName('RKNo').Value+''''+' and OSRKSS.CLBH='+''''+DelDet.FieldByName('CLBH').Value+'''' );
          sql.add('                             GROUP BY RKNo,CLBH),0) ');
          sql.add(' where OSRKS.RKNo='+''''+DelDet.FieldByName('RKNo').Value+''''+ ' and OSRKS.CLBH='+''''+DelDet.FieldByName('CLBH').Value+'''' );
          execsql;
          active:=false;
          sql.Clear;
          sql.add('UPDATE OSLLS set RKQTY=isnull((select isnull(SUM(QTY),0) AS SQTY from OSRKSS   ');
          sql.add('                             where OSRKSS.ZLBH='+''''+DelDet.FieldByName('ZLBH').Value+''''+' and OSRKSS.CLBH='+''''+DelDet.FieldByName('CLBH').Value+'''' );
          sql.add('                             GROUP BY RKNo,CLBH),0) ');
          sql.add(' where OSLLS.LLNo='+''''+DelDet.FieldByName('ZLBH').Value+''''+ ' and OSLLS.CLBH='+''''+DelDet.FieldByName('CLBH').Value+'''' );
          execsql;
          close;
        end;

    DelDet.Active:=false;
    DelDet.Active:=active;
    KCLLSS.active:=false;
    KCLLSS.cachedupdates:=false;
    KCLLSS.requestlive:=false;
    KCLLSS.active:=true;
    btnBE1.Enabled:=TRUE;
    btnBE2.Enabled:=TRUE;
    btnBE3.Enabled:=TRUE;
    btnBE4.Enabled:=false;
    btnBE5.Enabled:=false;
    dbgrdh4.Enabled:=true;

    except
      Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
    end;
end;

procedure TOutsolereturn.pgcPC1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  if btnbe4.Enabled then
    allowchange:=false;
end;

procedure TOutsolereturn.DBGridh3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if DelMas.FieldByName('YN').value='0' then
  begin
    DBGridh3.canvas.font.color:=clred;
  end;
end;

procedure TOutsolereturn.dbgrdh4GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if DelDet.FieldByName('YN').value='0' then
  begin
    dbgrdh4.canvas.font.color:=clred;
  end;

  if DelDet.FieldByName('RKNO').isnull then
  begin
    dbgrdh4.canvas.font.color:=clBLUE;
  end;

end;

procedure TOutsolereturn.dbgrdh6GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

  if KCLLSS.FieldByName('QTY').value-KCLLSS.FieldByName('LLQTY').value>=0 then
  begin
    dbgrdh6.canvas.font.color:=clblue;
  end;
  if KCLLSS.FieldByName('YN').value='0' then
  begin
    dbgrdh6.canvas.font.color:=clred;
  end;  
end;

procedure TOutsolereturn.DBGrid6Columns2NotInList(Sender: TObject;
  NewText: String; var RecheckInList: Boolean);
begin
  showmessage('Pls select Stage from list ,can not alter by manually.');
  abort;
end;

procedure TOutsolereturn.DBGrid6Columns3NotInList(Sender: TObject;
  NewText: String; var RecheckInList: Boolean);
begin
  showmessage('Pls select Size from list ,can not alter by manually.');
  abort;
end;

procedure TOutsolereturn.DBGrid6Columns4NotInList(Sender: TObject;
  NewText: String; var RecheckInList: Boolean);
begin
  showmessage('Pls select Size from list ,can not alter by manually.');
  abort;
end;

procedure TOutsolereturn.KCLLSSCalcFields(DataSet: TDataSet);
begin
    KCLLSS.Active:=false;
    KCLLSS.Active:=true;

    KCLLSS.First;
    IF KCLLSS.RecordCount=1 THEN
    BEGIN
      KCLLSS.FieldByName('ZLNO').value:=KCLLSS.fieldbyname('SIZE').Value+'('+inttostr(KCLLSS.fieldbyname('QTY').Value)+')';
    END;
    IF KCLLSS.RecordCount>1 THEN
    BEGIN
      while not KCLLSS.Eof do
      begin
        KCLLSS.FieldByName('ZLNO').value:=KCLLSS.fieldbyname('SIZE').Value+'('+inttostr(KCLLSS.fieldbyname('QTY').Value)+')';
        KCLLSS.Next;
      end;
    END;
end;

procedure TOutsolereturn.dbgrdh6Columns1NotInList(Sender: TObject;
  NewText: String; var RecheckInList: Boolean);
begin
  showmessage('Pls select Size from list ,can not alter by manually.');
  abort;
end;

procedure TOutsolereturn.BDT7Click(Sender: TObject);
begin
  if DelDet.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end else
  begin
    Outsolereturn_S:=TOutsolereturn_S.create(nil);
    Outsolereturn_S.quickrep1.prepare;
    Outsolereturn_S.Qpage1.caption:=inttostr(Outsolereturn_S.quickrep1.QRPrinter.pagecount);
    Outsolereturn_S.quickrep1.preview;
    Outsolereturn_S.free;
  end;
  with DelMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    if fieldbyname('PMARK').isnull then
    begin
        fieldbyname('PMARK').value:=1;
    end else
    begin
          fieldbyname('PMARK').value:=fieldbyname('PMARK').value+1;
    end;
    UPMAS.Apply(ukmodify);
    requestlive:=false;
    cachedupdates:=false;
  end;
end;

procedure TOutsolereturn.PGCPC1Change(Sender: TObject);
begin
  if PGCPC1.ActivePage=TabSheet1 then
  begin
    MasPanel.visible:=true;
    DetPanel.visible:=false;
  end else
  begin
    MasPanel.visible:=false;
    DetPanel.visible:=true;
  end;
end;

procedure TOutsolereturn.BB1Click(Sender: TObject);
begin
  MasToolPanel.Visible:=true;
end;

procedure TOutsolereturn.DBGridh3DblClick(Sender: TObject);
begin
  if  DelMas.Active then
  begin
    if  (DelMas.recordcount>0) then
    begin
        PGCPC1.ActivePage:=TabSheet2;
        MasPanel.Visible:=false;
        DetPanel.Visible:=true;
    end;
  end;
end;

end.
