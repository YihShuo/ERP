unit EntryTotal_EntryTSCD1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Grids, DBGrids, DB, DBTables,
  Buttons, GridsEh, DBGridEh, Menus;

type
  TEntryTotal_EntryTSCD = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    Query1: TQuery;
    UpdateSQL1: TUpdateSQL;
    DS1: TDataSource;
    Query1RKNO: TStringField;
    Query1ZSBH: TStringField;
    Query1ZSJC: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1CLBH: TStringField;
    Query1Qty: TCurrencyField;
    Query1ywpm: TStringField;
    Query1zwpm: TStringField;
    Query1USERID: TStringField;
    Query2: TQuery;
    DS2: TDataSource;
    UpdateSQL2: TUpdateSQL;
    Query2RKNO: TStringField;
    Query2USERDATE: TDateTimeField;
    Query2SBBH: TStringField;
    Query2Qty: TFloatField;
    Query2ywpm: TStringField;
    Query2zwpm: TStringField;
    Query2USERID: TStringField;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    DownBtn: TBitBtn;
    UpBtn: TBitBtn;
    Query2CLBH: TStringField;
    Query1SBBH: TStringField;
    Qtemp: TQuery;
    TSCDUPDet: TUpdateSQL;
    TSCDQry: TQuery;
    TSCDQryTSID: TStringField;
    TSCDQryTSBH: TStringField;
    TSCDQrySBBH: TStringField;
    TSCDQryQty: TFloatField;
    TSCDQryXSBH: TStringField;
    TSCDQryNSX: TStringField;
    TSCDQryInDATE: TDateTimeField;
    TSCDQryDepID: TStringField;
    TSCDQryDepID_Memo: TStringField;
    TSCDQryJDTS: TStringField;
    TSCDQryJDBDATE: TStringField;
    TSCDQryJDEDATE: TStringField;
    TSCDQryStatus: TStringField;
    TSCDQryUSERID: TStringField;
    TSCDQryUSERDATE: TDateTimeField;
    TSCDQryCFMID: TStringField;
    TSCDQryCFMDATE: TDateTimeField;
    TSCDQryYN: TStringField;
    TSCDQryCFMID_LL: TStringField;
    TSCDQryCFMDATE_LL: TDateTimeField;
    TSCDQryLLNO: TStringField;
    TSCDQryCFMID_RK: TStringField;
    TSCDQryCFMDATE_RK: TDateTimeField;
    TSCDQryRKNO: TStringField;
    TSCDQryLB: TStringField;
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    bbt6: TBitBtn;
    Panel2: TPanel;
    QueryBtn: TButton;
    Label2: TLabel;
    SBBHEdit: TEdit;
    DBGridEh3: TDBGridEh;
    DS3: TDataSource;
    TSCDQryywpm: TStringField;
    TSCDQryzwpm: TStringField;
    Query2TSBH: TStringField;
    Query2Status: TStringField;
    TSCDQryDepName: TStringField;
    PopupMenu: TPopupMenu;
    N1: TMenuItem;
    OtherAssetID1: TMenuItem;
    Query1XHCL: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DownBtnClick(Sender: TObject);
    procedure UpBtnClick(Sender: TObject);
    procedure QueryBtnClick(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure N1Click(Sender: TObject);
    procedure OtherAssetID1Click(Sender: TObject);
  private
    iYear,iMonth,TSID: string;
    { Private declarations }
    procedure InitQueryTSCD();
    procedure AssetID_Generate(Header:String);
  public
    { Public declarations }
    function DownBtnAsset():boolean;
  end;

var
  EntryTotal_EntryTSCD: TEntryTotal_EntryTSCD;

implementation
   uses EntryTotal1, FunUnit, main1;
{$R *.dfm}

procedure TEntryTotal_EntryTSCD.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TEntryTotal_EntryTSCD.FormDestroy(Sender: TObject);
begin
  EntryTotal_EntryTSCD:=nil;
end;

procedure TEntryTotal_EntryTSCD.InitQueryTSCD();
begin
   //
   with Query1 do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('Select KCRKS.RKNO,KCRK.ZSBH,ZSZL.ZSJC,KCRK.USERDATE,KCRKS.CLBH,KCRKS.Qty,CLZL.ywpm,CLZL.zwpm,KCRKS.USERID,TSCD.SBBH,CLZL.XHCL  ');
     SQL.Add('from KCRKS');
     SQL.Add('left join KCRK on KCRKS.RKNO=KCRK.RKNO');
     SQL.Add('left join CLZL on CLZL.cldh=KCRKS.CLBH');
     SQL.Add('Left join ZSZL on KCRK.ZSBH=ZSZL.ZSDH');
     SQL.Add('Left join (');
     SQL.Add('	select Max(TSCD.RKNO) as RKNO,Max(TSCD.CFMDATE_RK) as USERDATE,TSCD.SBBH,SUM(TSCD.Qty) as Qty,CLZL.ywpm,CLZL.zwpm,Max(TSCD.CFMID_RK) as USERID ');
     SQL.Add('	from TSCD');
     SQL.Add('	left join CLZL on CLZL.cldh=TSCD.SBBH');
     SQL.Add('	where  LB=2  and RKNO='''+EntryTotal.ENMas.FieldByName('RKNO').AsString+''' ');
     SQL.Add('	Group by TSCD.SBBH,CLZL.ywpm,CLZL.zwpm ) TSCD on TSCD.SBBH=KCRKS.CLBH');
     SQL.Add('where  KCRKS.RKNO = '''+EntryTotal.ENMas.FieldByName('RKNO').AsString+''' and TSCD.SBBH is null  ');
     //funcObj.WriteErrorLog(sql.Text);
     Active:=true;
   end;
   //
   with Query2 do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select * from (');
     SQL.Add('select Max(TSCD.RKNO) as RKNO,Max(TSCD.CFMDATE_RK) as USERDATE,TSCD.SBBH,SUM(TSCD.Qty) as Qty,CLZL.ywpm,CLZL.zwpm,Max(TSCD.CFMID_RK) as USERID,KCRK.CLBH,MIN(TSCD.TSBH) as TSBH,MAX(Status) as Status  ');
     SQL.Add('from TSCD');
     SQL.Add('left join CLZL on CLZL.cldh=TSCD.SBBH');
     SQL.Add('left join (');
     SQL.Add('	Select KCRKS.RKNO,KCRK.ZSBH,ZSZL.ZSJC,KCRK.USERDATE,KCRKS.CLBH,KCRKS.Qty,CLZL.ywpm,CLZL.zwpm,KCRKS.USERID');
     SQL.Add('	from KCRKS');
     SQL.Add('	left join KCRK on KCRKS.RKNO=KCRK.RKNO');
     SQL.Add('	left join CLZL on CLZL.cldh=KCRKS.CLBH');
     SQL.Add('	Left join ZSZL on KCRK.ZSBH=ZSZL.ZSDH ');
     SQL.Add('	where KCRKS.RKNO = '''+EntryTotal.ENMas.FieldByName('RKNO').AsString+''' ) KCRK on KCRK.CLBH=TSCD.SBBH');
     SQL.Add('where  LB=2  and TSCD.RKNO='''+EntryTotal.ENMas.FieldByName('RKNO').AsString+''' ');
     SQL.Add('Group by TSCD.SBBH,CLZL.ywpm,CLZL.zwpm,KCRK.CLBH  ) TSCD ');
     SQL.Add('Order by TSCD.TSBH ');
     //funcObj.WriteErrorLog(sql.Text);
     Active:=true;
   end;
   //

end;

procedure TEntryTotal_EntryTSCD.FormCreate(Sender: TObject);
begin
  //
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active:=true;
    iYear:=fieldbyname('FY').asstring;
    iMonth:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  if length(iMonth)<2 then
    iMonth:='0'+iMonth;
  InitQueryTSCD();
end;


function TEntryTotal_EntryTSCD.DownBtnAsset():boolean;
var i,Qty:integer;
    iRes:boolean;
begin
  iRes:=true;
  if Query1.RecordCount>0 then
  begin
    //判斷是否整數設備
    if Pos('.',Query1.FieldByName('Qty').AsString)=0 then
    begin
      Qty:=Query1.FieldByName('Qty').value;
      for i:=1 to Qty do
      begin
        with Qtemp do    //計算設備單流水號
        begin
          active:=false;
          sql.Clear;
          sql.Add('select TSID from TSCD where TSID like '''+iYear+iMonth+'%''');
          sql.add('order by TSID');
          active:=true;
          if recordcount >0 then
          begin
            last;
            TSID:=fieldbyname('TSID').AsString;
            TSID:=copy(TSID,7,5);
            TSID:=inttostr(strtoint(TSID)+1);
            while length(TSID)<5 do
            begin
              TSID:='0'+TSID;
            end;
          end else
          begin
            TSID:='00001';
          end;
          TSID :=iYear+iMonth+TSID;
          active:=false;
        end;
        //
        TSCDQry.Active:=false;
        TSCDQry.requestlive:=true;
        TSCDQry.cachedupdates:=true;
        TSCDQry.SQL.Clear;
        TSCDQry.SQL.Add('select top 1 TSCD.*,CLZL.ywpm,CLZL.zwpm,BDepartment.DepName from TSCD  ');
        TSCDQry.SQL.Add('left join CLZL on CLZL.cldh=TSCD.SBBH ');
        TSCDQry.SQL.Add('Left join BDepartment on BDepartment.ID=TSCD.DepID ');
        TSCDQry.SQL.Add('where 1=2 ');
        TSCDQry.Active:=true;
        TSCDQry.Insert;
        TSCDQry.fieldbyname('RKNO').Value:=Query1.fieldbyname('RKNO').Value;
        TSCDQry.fieldbyname('SBBH').value:=Query1.fieldbyname('CLBH').Value;
        TSCDQry.FieldByName('TSID').Value:=TSID;
        TSCDQry.FieldByName('Qty').Value:=1;
        TSCDQry.FieldByName('DepID').AsString:='VP0204';//DepID_CD;
        TSCDQry.FieldByName('DepID_Memo').AsString:='1.NEW';
        TSCDQry.FieldByName('Status').Value:='N';
        TSCDQry.FieldByName('userID').Value:=main.edit1.text;
        TSCDQry.FieldByName('userdate').Value:=Ndate;
        TSCDQry.FieldByName('YN').Value:='1';
        TSCDQry.FieldByName('CFMID').Value:='NO';
        TSCDQry.FieldByName('CFMID_RK').Value:=EntryTotal.ENMas.FieldByName('USERID').Value;
        TSCDQry.FieldByName('CFMDate_RK').Value:=EntryTotal.ENMas.FieldByName('USERDATE').Value;
        TSCDQry.FieldByName('CFMID_LL').Value:='NO';
        TSCDQry.FieldByName('LB').Value:='2';
        TSCDQry.Post;
        TSCDUPDet.apply(ukinsert);
        //
      end;
      Query1.Delete;
      //
      Query2.Active:=false;
      Query2.Active:=true;
    end else
    begin
      iRes:=false;
    end;
  end;
  result:=iRes;
end;

procedure TEntryTotal_EntryTSCD.DownBtnClick(Sender: TObject);
begin
  if DownBtnAsset()=false then
    Showmessage('Import Asset fail, Qty must be integer');
end;

procedure TEntryTotal_EntryTSCD.UpBtnClick(Sender: TObject);
begin
  //

  if Query2.RecordCount>0 then
  begin
    if Query2.FieldByName('Status').Value<>'N' then
    begin
      Showmessage('Already Delivery');
      exit;
    end;
    with Qtemp do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Delete TSCD where RKNO='''+Query2.FieldByName('RKNO').AsString+''' and SBBH='''+Query2.FieldByName('CLBH').AsString+''' and LB=''2'' ');
      ExecSQL();
    end;
    Query2.Delete;
    //
    Query1.Active:=false;
    Query1.Active:=true;
  end;
  //
end;

procedure TEntryTotal_EntryTSCD.QueryBtnClick(Sender: TObject);
begin
  //
  with  TSCDQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select  TSCD.*,CLZL.ywpm,CLZL.zwpm,BDepartment.DepName  from TSCD ');
    SQL.Add('Left join CLZL on CLZL.cldh=TSCD.SBBH ');
    SQL.Add('Left join BDepartment on BDepartment.ID=TSCD.DepID ');
    SQL.Add('where RKNO='''+EntryTotal.ENMas.FieldByName('RKNO').AsString+''' and LB=2  ');
    if SBBHEdit.Text<>'' then
    SQL.Add('and SBBH like '''+SBBHEdit.Text+'%'' ');
    SQl.Add('Order by TSCD.TSBH,CLZL.YWPM ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  BB4.Enabled:=true;
  //
end;

procedure TEntryTotal_EntryTSCD.BB4Click(Sender: TObject);
begin
  with TSCDQry do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TEntryTotal_EntryTSCD.BB5Click(Sender: TObject);
var i:integer;
begin

  TSCDQry.First;
  for i:=0 to  TSCDQry.RecordCount-1 do
  begin
    case TSCDQry.updatestatus of
      usmodified:
      begin
        if TSCDQry.FieldByName('Status').value='N' then
        begin
          TSCDQry.edit;
          TSCDQry.FieldByName('userID').Value:=main.edit1.text;
          TSCDQry.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
          TSCDUPDet.apply(ukmodify);
        end else
        begin
          Showmessage('Already Delivery');
        end;
      end;
    end;
    TSCDQry.Next;
  end;
  TSCDQry.active:=false;
  TSCDQry.cachedupdates:=false;
  TSCDQry.requestlive:=false;
  TSCDQry.active:=true;

  BB5.Enabled:=false;
  BB6.Enabled:=false;
  Showmessage('Success');
end;

procedure TEntryTotal_EntryTSCD.BB6Click(Sender: TObject);
begin
  with TSCDQry do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
end;

procedure TEntryTotal_EntryTSCD.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if Query2.FieldByName('Status').value<>'N' then
  begin
    DBGridEh2.canvas.font.color:=clBlue;
    DBGridEh2.DefaultDrawColumnCell(Rect,Datacol,Column,state);
  end;
end;

procedure TEntryTotal_EntryTSCD.DBGridEh3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if TSCDQry.FieldByName('Status').value<>'N' then
  begin
    DBGridEh3.canvas.font.color:=clBlue;
    DBGridEh3.DefaultDrawColumnCell(Rect,Datacol,Column,state);
  end;
end;
//自動編碼
procedure TEntryTotal_EntryTSCD.AssetID_Generate(Header:String);
var i,j,Qty:integer;
    Query_bm:Tbookmark;
    Query_bookmarklist:tbookmarklistEh;
    TSBH:String;
begin
  //儲存Size Selected Rows
  Query2.disablecontrols;
  Query_bm:=Query2.getbookmark;
  Query_bookmarklist:=DBGridEh2.selectedrows;

  try
    if Query_bookmarklist.count>0 then
    begin
      with Qtemp do    //計算設備單流水號
      begin
        active:=false;
        sql.Clear;
        sql.Add('select TSBH from TSCD where TSBH like '''+Header+iYear+iMonth+'%''');
        sql.add('order by TSBH');
        active:=true;
        if recordcount >0 then
        begin
          last;
          TSBH:=fieldbyname('TSBH').AsString;
          TSBH:=copy(TSBH,9,3);
          TSBH:=inttostr(strtoint(TSBH)+1);
          while length(TSBH)<3 do
          begin
            TSBH:='0'+TSBH;
          end;
        end else
        begin
          TSBH:='001';
        end;
        TSBH :=Header+iYear+iMonth+TSBH;
        active:=false;
      end;
      //開啟TSCDQry編輯模式
      SBBHEdit.Text:='';
      QueryBtn.Click;
      BB4.Click;
      //
      for i:=0 to Query_bookmarklist.count-1 do
      begin
        Query2.gotobookmark(pointer(Query_bookmarklist[i]));
        if Query2.FieldByName('Status').Value='N' then
        begin
          Qty:=Query2.FieldByName('Qty').value;
          TSCDQry.First;
          for j:=1 to Qty do
          begin
            while Not TSCDQry.Eof do
            begin
              if TSCDQry.FieldByName('SBBH').Value=Query2.FieldByName('SBBH').Value then
              begin
                TSCDQry.Edit;
                TSCDQry.FieldByName('TSBH').Value:=TSBH+Format('%.3d',[j]);
                TSCDQry.Post;
                TSCDQry.Next;
                Break;
              end;
              TSCDQry.Next;
            end;
          end;
        end;
      end;
      BB5.Click; //儲存Save TSCD
      Query2.Active:=false;
      Query2.Active:=true;
    end;
    //
  finally
    begin
      Query2.gotobookmark(Query_bm);
      Query2.freebookmark(Query_bm);
      Query2.enablecontrols;
    end;
  end;
  //
end;

procedure TEntryTotal_EntryTSCD.N1Click(Sender: TObject);
begin
  AssetID_Generate('IT');
end;

procedure TEntryTotal_EntryTSCD.OtherAssetID1Click(Sender: TObject);
begin
  AssetID_Generate('OF');
end;

end.
