unit SampleTracking_Dev1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls, DBTables, DB,
  DBCtrls, ComCtrls;

type
  TSampleTracking_Dev = class(TForm)
    MasPanel: TPanel;
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
    BDT6: TBitBtn;
    ToolPanel: TPanel;
    Button1: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGridEh2: TDBGridEh;
    DBGridEh1: TDBGridEh;
    SPSCMas: TQuery;
    UpMas: TUpdateSQL;
    MasDs: TDataSource;
    SPSCMasSPNO: TIntegerField;
    SPSCMasArticle: TStringField;
    SPSCMasODate: TDateTimeField;
    SPSCMasCkDate: TDateTimeField;
    SPSCMasCkExDate: TDateTimeField;
    SPSCMasRplyDate: TDateTimeField;
    RB1: TBitBtn;
    RB2: TBitBtn;
    RB3: TBitBtn;
    SPSCDet: TQuery;
    RB4: TBitBtn;
    RB5: TBitBtn;
    tmpQuery: TQuery;
    SPSCMasUserID: TStringField;
    SPSCMasUserDate: TDateTimeField;
    SPSCMasYN: TStringField;
    SPSCMasGSBH: TStringField;
    DetDs: TDataSource;
    SPSCDetSPNO: TIntegerField;
    SPSCDetItemNM: TStringField;
    SPSCDetRENO: TIntegerField;
    SPSCDetUserDate: TDateTimeField;
    SPSCDetUserID: TStringField;
    UpDet: TUpdateSQL;
    SPSCDetYN: TIntegerField;
    SPSCDetExeDate: TDateTimeField;
    SPSCDetLYBH: TStringField;
    SPSCMasShipDate: TDateTimeField;
    Label1: TLabel;
    SR: TEdit;
    Label2: TLabel;
    DTP1: TDateTimePicker;
    Label3: TLabel;
    DTP2: TDateTimePicker;
    SPSCMasStage: TStringField;
    BitBtn1: TBitBtn;
    Panel4: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    SPSCMasSpDate: TDateTimeField;
    SPSCMasSpExDate: TDateTimeField;
    SPSCMasSKDate: TDateTimeField;
    SPSCMasSKExDate: TDateTimeField;
    SPSCDetZWSM: TStringField;
    SPSCDetYWSM: TStringField;
    DateSearch: TComboBox;
    Splitter1: TSplitter;
    CK: TCheckBox;
    Label9: TLabel;
    SPSCMasSJDate: TDateTimeField;
    SPSCMasSJExDate: TDateTimeField;
    SRBtn: TBitBtn;
    SPSCMasPairs: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure SPSCMasAfterOpen(DataSet: TDataSet);
    procedure RB1Click(Sender: TObject);
    procedure RB2Click(Sender: TObject);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure RB3Click(Sender: TObject);
    procedure RB5Click(Sender: TObject);
    procedure RB4Click(Sender: TObject);
    procedure DBGridEh2EditButtonClick(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SPSCDetItemNMSetText(Sender: TField; const Text: String);
    procedure SRBtnClick(Sender: TObject);
  private
    { Private declarations }
    procedure GeneratePlanDate(SPNO:string);
    procedure InitialDate(SPNO:string);
  public
    { Public declarations }
  end;

var
  SampleTracking_Dev: TSampleTracking_Dev;
  NDate:TDate;
implementation
   uses main1,SampleTrackReason1,SampleTrackingRms1, SRList1 ,FunUnit;
{$R *.dfm}

procedure TSampleTracking_Dev.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TSampleTracking_Dev.FormDestroy(Sender: TObject);
begin
   SampleTracking_Dev:=nil;
end;
//
procedure TSampleTracking_Dev.Button1Click(Sender: TObject);
var i:integer;
begin
   //
   with SPSCMas do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select SPSCList.SPNO,SPSCList.Article,SPSCList.GSBH,SPSCList.Stage,SPSCList.Pairs,SPSCList.ODate,SPSCList.CkDate,SPSCList.ShipDate, ');
     SQL.Add('  (Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO and ItemNM=''CkExDate'') as CkExDate, ');
     SQL.Add('  (Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO and ItemNM=''RelyDate'') as RelyDate, ');
     SQL.Add('  SPSCList.SpDate,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO and ItemNM=''SpExDate'') as SpExDate, ');
     SQL.Add('  SPSCList.SKDate,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO and ItemNM=''SKExDate'') as SKExDate, ');
     SQL.Add('  SPSCList.SJDate,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO and ItemNM=''SJExDate'') as SJExDate, ');
     SQL.Add('   UserID,UserDate,''1'' as YN ');
     SQL.Add('from SPSCList ');
     SQL.Add('where Article like ''%'+SR.Text+'%'' and GSBH='''+main.Edit2.Text+''' ');
     if DateSearch.ItemIndex=0 then   // ODate下單日期
     begin
       sql.add('and convert(smalldatetime,convert(varchar,SPSCList.ODate,111)) between ')
     end else if DateSearch.ItemIndex=1 then // ShipDate 出貨日期
       sql.add('and convert(smalldatetime,convert(varchar,SPSCList.ShipDate,111)) between ');
     sql.add(''''+Formatdatetime('yyyy/MM/dd',DTP1.Date) +'''');
     sql.add(' and  ');
     sql.add(''''+Formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
     SQL.Add('order by SPSCList.ODate ');
     //funcObj.WriteErrorLog(sql.Text);
     Active:=true;
   end;
   //Button
   bb2.enabled:=true;
   bb3.enabled:=true;
   bb4.enabled:=true;
   //
   SPSCDet.Active:=true;
   //ToolPanel.Visible:=false;
end;
//
procedure TSampleTracking_Dev.BB2Click(Sender: TObject);
begin
  //
  with SPSCMas do
    begin
      requestlive:=true;
      cachedupdates:=true;
      insert;
      SPSCMas.FieldByName('SPNO').AsString:='0';
      SPSCMas.FieldByName('GSBH').AsString:=main.Edit2.Text;
    end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  SRBtn.Enabled:=true;
  //
end;
//
procedure TSampleTracking_Dev.BB3Click(Sender: TObject);
begin
  //
  with SPSCMas do
  begin
      if fieldbyname('USERID').value=main.edit1.Text then
      begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
        fieldbyname('YN').Value:='0';
      end else
      begin
        showmessage('It is not yours,can not delete.');
      end;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  //
end;
//
procedure TSampleTracking_Dev.BB4Click(Sender: TObject);
begin
   //
   with SPSCMas do
   begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
   end;
   BB5.Enabled:=true;
   BB6.Enabled:=true;
   //
end;
//
procedure TSampleTracking_Dev.BB6Click(Sender: TObject);
begin
  //
  with SPSCMas do
    begin
      active:=false;
      requestlive:=false;
      cachedupdates:=false;
      active:=true;
    end;
  bb5.enabled:=false;
  bb6.enabled:=false;
  SRBtn.Enabled:=false;
  //
end;

//計算計畫日期
procedure TSampleTracking_Dev.GeneratePlanDate(SPNO:string);
begin
  if main.Edit2.Text='CDC' then
  begin
    with tmpQuery do    //計算領料單流水號
    begin
       Active:=false;
       SQL.Clear;
       SQL.Add('Update SPSCList Set CKDate=ODate+1, ZBDate=ODate+5, SJDate=ODate+8, JDDate=ODate+9, WBDate=ODate+10, SPDate=ODate+1, ');
       SQL.Add('BOMDate=ODate+39, SKDate=ODate+35, YLDate=ODate+14, ');
       SQL.Add('BGDate=ODate+40, ShipDate=ODate+41 where SPNO='+SPNO);
       ExecSQL;
    end;
  end;
  if main.Edit2.Text='KDC' then
  begin
    if SPSCMas.fieldbyname('Stage').Value='SMU' then
    begin
      //SMU 25天
      with tmpQuery do    //計算領料單流水號
      begin
         Active:=false;
         SQL.Clear;
         SQL.Add('Update SPSCList Set CKDate=ODate+1, ZBDate=ODate+5, SJDate=ODate+8, JDDate=ODate+10, WBDate=ODate+10, SPDate=ODate+1, ');
         SQL.Add('BOMDate=ODate+20, SKDate=ODate+18, YLDate=ODate+15, MLDate=ODate+25, FLDate=ODate+25, DLDate=ODate+25, CutDate=ODate+26, SteDate=ODate+28, AseDate=ODate+29, ');
         SQL.Add('BGDate=ODate+28, ShipDate=ODate+29 where SPNO='+SPNO);
         ExecSQL;
      end;
    end else
    begin
     //45 天
      with tmpQuery do    //計算領料單流水號
      begin
         Active:=false;
         SQL.Clear;
         SQL.Add('Update SPSCList Set CKDate=ODate+1, ZBDate=ODate+5, SJDate=ODate+8, JDDate=ODate+10, WBDate=ODate+10, SPDate=ODate+1, ');
         SQL.Add('BOMDate=ODate+20, SKDate=ODate+18, YLDate=ODate+15, MLDate=ODate+26, FLDate=ODate+26, DLDate=ODate+26, CutDate=ODate+30, SteDate=ODate+39, AseDate=ODate+44, ');
         SQL.Add('BGDate=ODate+43, ShipDate=ODate+44 where SPNO='+SPNO);
         ExecSQL;
      end;
    end;
  end;
end;
//儲存
procedure TSampleTracking_Dev.BB5Click(Sender: TObject);
var i:integer;
    SPNO:integer;
begin

  //
  SPSCMas.First;
  for i:=0 to SPSCMas.RecordCount-1 do
  begin
    case SPSCMas.updatestatus of
      usinserted:
      begin
         //
         if ((SPSCMas.FieldByName('ODate').IsNull) or (SPSCMas.FieldByName('Article').IsNull))   then
         begin
           showmessage('Please input Aritcle and Order Date!');
           abort;
         end else
         begin
           with tmpQuery do    //計算領料單流水號
           begin
               active:=false;
               sql.Clear;
               sql.Add('select top 1 SPNO as SPNO from SPSCList order by SPNO desc ');
               active:=true;
               if recordcount >0 then
                 SPNO:=FieldByName('SPNO').Value+1
               else
                 SPNO:=1;
               active:=false;
           end;
           SPSCMas.edit;
           SPSCMas.fieldbyname('SPNO').Value:=SPNO;
           SPSCMas.fieldbyname('GSBH').Value:=main.Edit2.Text;
           SPSCMas.fieldbyname('UserID').Value:=main.Edit1.Text;
           SPSCMas.fieldbyname('UserDate').Value:=NDate;
           SPSCMas.Post;
           upMas.apply(ukinsert);
           //計算計畫日期
           GeneratePlanDate(inttostr(SPNO));
           //新增更新理由
           //if SPSCMas.fieldbyname('CkExDate').IsNull=false then  InsertSPSCRm(inttostr(SPNO),'CkExDate');
           //if SPSCMas.fieldbyname('RelyDate').IsNull=false then  InsertSPSCRm(inttostr(SPNO),'RelyDate');
           //
           if CK.Checked=true then  InitialDate(inttostr(SPNO));
         end;
      end;
      usmodified:
      begin
         //
         if (SPSCMas.fieldbyname('UserID').AsString=main.edit1.text)  then
         begin
           if SPSCMas.fieldbyname('YN').value='0' then
           begin
              //
              if (NDate-SPSCMas.FieldByName('USERDATE').value)<=3  then
              begin
                //刪除理由
                with tmpQuery do
                begin
                  active:=false;
                  sql.Clear;
                  sql.Add('Delete from SPSCRm where SPNO='+SPSCMas.fieldbyname('SPNO').AsString);
                  //funcObj.WriteErrorLog(sql.Text);
                  ExecSQL;
                end;
                upMas.apply(ukdelete);
                //
              end else
              begin
                showmessage('Date>3, can not delete.');
                abort;
              end;
              //
           end else
           begin
              //預計每個單位使用自己的UserDate1 UserDate2..來限制
              if (NDate-SPSCMas.FieldByName('USERDATE').value)<=12  then
              begin
                //
                SPSCMas.edit;
                SPSCMas.fieldbyname('UserID').Value:=main.Edit1.Text;
                SPSCMas.fieldbyname('UserDate').Value:=NDate;
                SPSCMas.Post;
                upMas.apply(ukmodify);
                if SPSCMas.FieldByName('ODate').Value<>SPSCMas.FieldByName('ODate').OldValue then GeneratePlanDate(SPSCMas.FieldByName('SPNO').AsString);
                //新增更新理由
                //if SPSCMas.fieldbyname('CkExDate').IsNull=false then  InsertSPSCRm(SPSCMas.fieldbyname('SPNO').AsString,'CkExDate');
                //if SPSCMas.fieldbyname('RelyDate').IsNull=false then  InsertSPSCRm(SPSCMas.fieldbyname('SPNO').AsString,'RelyDate');
              end else
              begin
                showmessage('Date>12, can not modify.');
                abort
              end;
              //
           end;
         end else
         begin
           showmessage('It is not yours, can not modify.');
           abort;
         end;
         //
      end;
    end;
    SPSCMas.Next;
  end;
  //
  SPSCMas.active:=false;
  SPSCMas.cachedupdates:=false;
  SPSCMas.requestlive:=false;
  SPSCMas.active:=true;
  //
  bb5.enabled:=false;
  bb6.enabled:=false;
  SRBtn.Enabled:=false;
end;

procedure TSampleTracking_Dev.FormCreate(Sender: TObject);
var SYear,NSYear:string;
begin
  //
  with tmpQuery do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  //
  DTp1.Date:=NDate-15;
  DTP2.Date:=NDate+15;
  //Stage清單
  DBGridEh1.Columns[2].PickList.Clear;
  if main.Edit2.Text='CDC' then
  begin
   //開發階段
   DBGridEh1.Columns[2].PickList.Add('R1');
   DBGridEh1.Columns[2].PickList.Add('R2');
   DBGridEh1.Columns[2].PickList.Add('R3');
   //單位執行項目
   DBGridEh2.Columns[0].PickList.Clear;
   DBGridEh2.Columns[0].PickList.add('CkExDate');
   DBGridEh2.Columns[0].PickList.add('RelyDate');
   DBGridEh2.Columns[0].PickList.add('SpExDate');
   DBGridEh2.Columns[0].PickList.add('SKExDate');
   Label9.Visible:=false;
   //
   With SPSCDet do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select  SPSCRm.SPNO, SPSCRm.ItemNM, SPSCRm.RENO, SPSCRm.LYBH,SPSCRmS.ZWSM, SPSCRmS.YWSM, SPSCRm.ExeDate, SPSCRm.UserDate, SPSCRm.UserID,1 as YN  ');
     SQL.Add('from SPSCRm ');
     SQL.Add('Left join SPSCRmS on SPSCRmS.LYBH=SPSCRm.LYBH ');
     SQL.Add('where SPNO=:SPNO and RENO>0  and  ((SPSCRm.ItemNM=''CkExDate'') or (SPSCRm.ItemNM=''RelyDate'') or (SPSCRm.ItemNM=''SpExDate'') or (SPSCRm.ItemNM=''SKExDate'')  ) ');
     SQL.Add('order by SPSCRm.ItemNM,SPSCRm.ExeDate ');
   end;
  end else if main.Edit2.Text='KDC' then
  begin
   //開發階段
   SYear:=Copy(FormatDatetime('YYYY',Date()),3,2);
   SYear:=inttostr(strtoint(SYear)+1);
   NSYear:=inttostr(strtoint(SYear)+1);
   DBGridEh1.Columns[2].PickList.Add('SS'+SYear+' IR');
   DBGridEh1.Columns[2].PickList.Add('SS'+SYear+' PL');
   DBGridEh1.Columns[2].PickList.Add('SS'+SYear+' Photolsis');
   DBGridEh1.Columns[2].PickList.Add('FW'+NSYear+' IR');
   DBGridEh1.Columns[2].PickList.Add('FW'+NSYear+' PL');
   DBGridEh1.Columns[2].PickList.Add('FW'+NSYear+' Photolsis');
   DBGridEh1.Columns[2].PickList.Add('SMU');
   //單位執行項目
   DBGridEh2.Columns[0].PickList.Clear;
   DBGridEh2.Columns[0].PickList.add('CkExDate');
   DBGridEh2.Columns[0].PickList.add('RelyDate');
   DBGridEh2.Columns[0].PickList.add('SpExDate');
   DBGridEh2.Columns[0].PickList.add('SKExDate');
   DBGridEh2.Columns[0].PickList.add('SJExDate');
   DBGridEh1.Columns[9].Visible:=true;  //SJExDate
   DBGridEh1.Columns[10].Visible:=true; //SJDate
   Label9.Visible:=true;
   //
   With SPSCDet do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select  SPSCRm.SPNO, SPSCRm.ItemNM, SPSCRm.RENO, SPSCRm.LYBH,SPSCRmS.ZWSM, SPSCRmS.YWSM, SPSCRm.ExeDate, SPSCRm.UserDate, SPSCRm.UserID,1 as YN  ');
     SQL.Add('from SPSCRm ');
     SQL.Add('Left join SPSCRmS on SPSCRmS.LYBH=SPSCRm.LYBH ');
     SQL.Add('where SPNO=:SPNO and RENO>0  and  ((SPSCRm.ItemNM=''CkExDate'') or (SPSCRm.ItemNM=''RelyDate'') or (SPSCRm.ItemNM=''SpExDate'') or (SPSCRm.ItemNM=''SKExDate'') or (SPSCRm.ItemNM=''SJExDate'') ) ');
     SQL.Add('order by SPSCRm.ItemNM,SPSCRm.ExeDate ');
   end;
  end;
  //
end;

procedure TSampleTracking_Dev.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin

  if (SPSCMas.FieldByName('SPNO').isnull) or (SPSCMas.FieldByName('SPNO').AsString='0') then
  begin
    if ((DataCol >= 1) and (DataCol <= 4)) then
    begin
      DBGridEh1.canvas.Brush.color:=clYellow;
      DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
    end;
  end;
  if ((SPSCMas.FieldByName('CkExDate').IsNull=false) and (SPSCMas.FieldByName('RelyDate').IsNull=false) and (SPSCMas.FieldByName('SpExDate').IsNull=false) and (SPSCMas.FieldByName('SKExDate').IsNull=false))  then
  begin
      DBGridEh1.canvas.Font.color:=clBlue;
      DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
  //
  if SPSCMas.FieldByName('YN').value='0' then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
  //
end;

procedure TSampleTracking_Dev.SPSCMasAfterOpen(DataSet: TDataSet);
begin
  if SPSCMas.RecordCount>0 then
  begin
    RB1.Enabled:=true;
    RB2.Enabled:=true;
    RB3.Enabled:=true;
  end else
  begin
    RB1.Enabled:=false;
    RB2.Enabled:=false;
    RB3.Enabled:=false;
  end;
end;

procedure TSampleTracking_Dev.RB1Click(Sender: TObject);
begin

  //
  with SPSCDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  RB4.Enabled:=true;
  RB5.Enabled:=true;
  DBGridEh2.Columns[1].ButtonStyle:=cbsEllipsis;
  //
end;

procedure TSampleTracking_Dev.RB2Click(Sender: TObject);
begin
  //
  with SPSCDet do
  begin
      if fieldbyname('USERID').value=main.edit1.Text then
      begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
        fieldbyname('YN').Value:='0';
      end else
      begin
        showmessage('It is not yours,can not delete.');
      end;
  end;
  RB4.Enabled:=true;
  RB5.Enabled:=true;
end;

procedure TSampleTracking_Dev.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  //
  if SPSCDet.FieldByName('YN').value='0' then
  begin
    DBGridEh2.canvas.font.color:=clred;
    DBGridEh2.defaultdrawcolumncell(rect,datacol,column,state);
  end;
  //
end;

procedure TSampleTracking_Dev.RB3Click(Sender: TObject);
begin
  //
  with SPSCDet do
  begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
  end;
  RB4.enabled:=true;
  RB5.enabled:=true;
  DBGridEh2.Columns[1].ButtonStyle:=cbsEllipsis;
  //
end;

procedure TSampleTracking_Dev.RB5Click(Sender: TObject);
begin
  //
  with SPSCDet do
    begin
      active:=false;
      requestlive:=false;
      cachedupdates:=false;
      active:=true;
    end;
  RB4.enabled:=false;
  RB5.enabled:=false;
  DBGridEh2.Columns[1].ButtonStyle:=cbsAuto;
  //
end;
//
procedure TSampleTracking_Dev.RB4Click(Sender: TObject);
var i,RENO:integer;
begin
  //
  SPSCDet.First;
  for i:=0 to SPSCDet.RecordCount-1 do
  begin
    case SPSCDet.updatestatus of
      usinserted:
      begin
        //
        with tmpQuery do    //計算領料單流水號
        begin
           active:=false;
           sql.Clear;
           sql.Add('select top 1 RENO as RENO from SPSCRm where SPNO='+SPSCMas.FieldByName('SPNO').AsString+' and ItemNM='''+SPSCDet.fieldbyname('ItemNM').AsString+''' order by RENO desc ');
           //funcObj.WriteErrorLog(sql.Text);
           active:=true;
           if recordcount >0 then
             RENO:=FieldByName('RENO').Value+1
           else
             RENO:=1;
           active:=false;
        end;
        //
        SPSCDet.edit;
        SPSCDet.fieldbyname('SPNO').Value:=SPSCMas.FieldByName('SPNO').AsString;;
        SPSCDet.fieldbyname('RENO').Value:=RENO;
        SPSCDet.fieldbyname('UserID').Value:=main.Edit1.Text;
        SPSCDet.fieldbyname('UserDate').Value:=NDate;
        SPSCDet.Post;
        //Reason和ExeDate必填
        if ((trim(SPSCDet.FieldByName('ItemNM').AsString)<>'') and (SPSCDet.FieldByName('LYBH').IsNull=false) and (SPSCDet.FieldByName('ExeDate').IsNull=false)) then
        begin
           if ((Date()-SPSCDet.FieldByName('ExeDate').Value)>=3) then
             Showmessage('ExeDate must be between  Today - 3 days !')
           else
             UpDet.Apply(ukinsert);
        end else
        begin
           Showmessage('Reason or ExeDate is empty!');
           abort;
        end;
        //
      end;
      usmodified:
      begin
        //
        if (SPSCDet.fieldbyname('UserID').AsString=main.edit1.text)  then
        begin
          //預計每個單位使用自己的UserDate1 UserDate2..來限制
          if (NDate-SPSCDet.FieldByName('USERDATE').value)<=2  then
          begin
            if SPSCDet.fieldbyname('YN').value='0' then
            begin
              UpDet.Apply(ukDelete);
            end else
            begin
              SPSCDet.edit;
              SPSCDet.fieldbyname('UserID').Value:=main.Edit1.Text;
              SPSCDet.fieldbyname('UserDate').Value:=NDate;
              SPSCDet.Post;
              //Reason和ExeDate必填
              if ((trim(SPSCDet.FieldByName('ItemNM').AsString)<>'') and (SPSCDet.FieldByName('LYBH').IsNull=false) and (SPSCDet.FieldByName('ExeDate').IsNull=false)) then
              begin
                 if ((Date()-SPSCDet.FieldByName('ExeDate').Value)>=3) then
                   Showmessage('ExeDate must be between  Today - 3 days !')
                 else
                   UpDet.Apply(ukModify)
              end else
              begin
                 Showmessage('Reason or ExeDate is empty!');
                 abort;
              end;
            end;
          end else
          begin
            showmessage('Date>2, can not modify.');
          end;
        end else
        begin
          showmessage('It is not yours, can not modify.');
        end;
        //
      end;
    end;
    SPSCDet.Next;
  end;
  //
  SPSCDet.active:=false;
  SPSCDet.cachedupdates:=false;
  SPSCDet.requestlive:=false;
  SPSCDet.active:=true;
  //
  RB4.enabled:=false;
  RB5.enabled:=false;
  DBGridEh2.Columns[1].ButtonStyle:=cbsAuto;
  //
end;

procedure TSampleTracking_Dev.DBGridEh2EditButtonClick(Sender: TObject);
begin
  //
  with DBGridEh2 do
  begin
    if Selectedfield.fieldname='ZWSM' then
    begin
      SampleTrackReason:=TSampleTrackReason.Create(self);
      SampleTrackReason.SetItemNM(SPSCDet.fieldByName('ItemNM').AsString,SPSCDet);
      SampleTrackReason.ShowModal;
      SampleTrackReason.Free;
    end;
  end;
  //
end;
//
procedure TSampleTracking_Dev.BB1Click(Sender: TObject);
begin
  ToolPanel.Visible:=true;
end;
//
procedure TSampleTracking_Dev.BitBtn1Click(Sender: TObject);
begin
  //
  if SampleTrackingRms=nil then
    SampleTrackingRms:=TSampleTrackingRms.Create(self);
  SampleTrackingRms.SetDepartment('Develop');  
  SampleTrackingRms.Show;
  //
end;

procedure TSampleTracking_Dev.SPSCDetItemNMSetText(Sender: TField;
  const Text: String);
begin
  if Text='CkExDate' then  SPSCDet.FieldByName('ExeDate').Value:=SPSCMas.FieldByName('CkDate').Value;
  if Text='RelyDate' then  SPSCDet.FieldByName('ExeDate').Value:=SPSCMas.FieldByName('ODate').Value+4;
  if Text='SpExDate' then  SPSCDet.FieldByName('ExeDate').Value:=SPSCMas.FieldByName('SpDate').Value;
  if Text='SKExDate' then  SPSCDet.FieldByName('ExeDate').Value:=SPSCMas.FieldByName('SKDate').Value;
  if Text='SJExDate' then  SPSCDet.FieldByName('ExeDate').Value:=SPSCMas.FieldByName('SJDate').Value;
  if SPSCDet.State =dsInsert then
  begin
    SPSCDet.FieldByName('LYBH').Value:='0001';
    SPSCDet.FieldByName('ZWSM').Value:='準時';
    SPSCDet.FieldByName('YWSM').Value:='on time';
  end;
  SPSCDet.FieldByName('ItemNM').Value:=Text;
end;
//建立樣品表 初始化追蹤表
procedure TSampleTracking_Dev.InitialDate(SPNO:string);
begin
  with tmpQuery do
  begin
     SQL.Clear;
     SQL.Add('Insert into SPSCRm ');
     SQL.Add('select '+SPNO+',ItemNM,1,LYBH,');
     SQL.Add('       case ');
     SQL.Add('         when ItemNM=''CkExDate'' then  SPSCList.CKDate ');
     SQL.Add('         when ItemNM=''RelyDate'' then  SPSCList.CKDate+4 ');
     SQL.Add('         when ItemNM=''SpExDate'' then  SPSCList.SpDate ');
     SQL.Add('         when ItemNM=''SKExDate'' then  SPSCList.SKDate ');
     SQL.Add('         when ItemNM=''ZBExDate'' then  SPSCList.ZBDate ');
     SQL.Add('         when ItemNM=''SJExDate'' then  SPSCList.SJDate ');
     SQL.Add('         when ItemNM=''JDExDate'' then  SPSCList.JDDate  ');
     SQL.Add('         when ItemNM=''WBExDate'' then  SPSCList.WBDate ');
     SQL.Add('         when ItemNM=''MLExDate'' then  SPSCList.MLDate ');
     SQL.Add('         when ItemNM=''FLExDate'' then  SPSCList.FLDate  ');
     SQL.Add('         when ItemNM=''DLExDate'' then  SPSCList.DLDate ');
     SQL.Add('         when ItemNM=''AseExDate'' then  SPSCList.AseDate ');
     SQL.Add('         when ItemNM=''CutExDate'' then  SPSCList.CutDate ');
     SQL.Add('         when ItemNM=''SteExDate'' then  SPSCList.SteDate ');
     SQL.Add('         when ItemNM=''BOMExDate'' then  SPSCList.BOMDate ');
     SQL.Add('         when ItemNM=''YLExDate'' then  SPSCList.YLDate  ');
     SQL.Add('         when ItemNM=''BGExDate'' then  SPSCList.BGDate  ');
     SQL.Add('       end, ');
     SQL.Add('        GetDate(),'''+main.Edit1.Text+''' from SPSCRmS  ');
     SQL.Add('left join SPSCList on SPSCList.SPNO='+SPNO);
     SQL.Add('where SPSCRmS.UserID=''system'' and SPSCRmS.GSBH=''CDC'' and  SPSCRmS.ItemNM  not in (select SPSCRm.ItemNM from  SPSCRm where SPSCRm.SPNO='+SPNO+' and SPSCRm.RENO=1) ');
     if main.Edit2.Text='CDC' then
     begin
        SQL.Add(' and SPSCRmS.ItemNM<>''MLExDate'' and SPSCRmS.ItemNM<>''FLExDate'' and SPSCRmS.ItemNM<>''DLExDate'' ');
        SQL.Add(' and SPSCRmS.ItemNM<>''CutExDate'' and SPSCRmS.ItemNM<>''SteExDate'' and SPSCRmS.ItemNM<>''AseExDate'' ');
     end;
     ExecSQL;
  end;

end;
//

procedure TSampleTracking_Dev.SRBtnClick(Sender: TObject);
begin
  //
  if SRLIst=nil then
    SRLIst:=TSRLIst.Create(self);
  SRLIst.ShowModal();
  SRLIst.Free;
  //
end;

end.
