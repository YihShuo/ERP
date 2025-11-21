unit DeliveryMatRFIDCode1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls, DB,
  DBTables, Menus, ScktComp, DBCtrls, Mask;

type
  TDeliveryMatRFIDCode = class(TForm)
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    Label5: TLabel;
    LLBarCodeEdit: TEdit;
    BT1: TBitBtn;
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Panel3: TPanel;
    Panel4: TPanel;
    BO1: TBitBtn;
    BO2: TBitBtn;
    BO3: TBitBtn;
    BO4: TBitBtn;
    BO5: TBitBtn;
    DBGridEh2: TDBGridEh;
    KCLLQry: TQuery;
    DS1: TDataSource;
    KCLLQryLLNO: TStringField;
    KCLLQrySCBH: TStringField;
    KCLLQryDepName: TStringField;
    KCLLSQry: TQuery;
    DS2: TDataSource;
    KCLLSQryCLBH: TStringField;
    KCLLSQryywpm: TStringField;
    KCLLSQryDWBH: TStringField;
    KCLLSQryTempQty: TCurrencyField;
    KCLLSQryQty: TCurrencyField;
    KCLLSQryYWSM: TStringField;
    KCLLSQryBLSB: TStringField;
    BT2: TBitBtn;
    CheckBox: TCheckBox;
    ExeQuery: TQuery;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    QtyEdit: TEdit;
    SCNOLabel: TLabel;
    CLBHLabel: TLabel;
    PackLabel: TLabel;
    QtyLabel: TLabel;
    Label10: TLabel;
    BT4: TBitBtn;
    BT3: TBitBtn;
    ServerSocket: TServerSocket;
    BT5: TBitBtn;
    KCRKScan_RFS: TQuery;
    KCRKScan_RFSSCNO: TStringField;
    KCRKScan_RFSCLBH: TStringField;
    KCRKScan_RFSYWPM: TStringField;
    KCRKScan_RFSKCQty: TCurrencyField;
    KCRKScan_RFSKCBH: TStringField;
    KCRKScan_RFSDDBH: TMemoField;
    KCRKScan_RFSArticle: TMemoField;
    KCRKScan_RFSBUYNO: TMemoField;
    KCRKScan_RFSDOCNO: TMemoField;
    KCRKScan_RFSZSNO: TMemoField;
    KCRKScan_RFSRKDate: TStringField;
    KCRKScan_RFSDWBH: TStringField;
    KCRKScan_RFSTagID: TIntegerField;
    GroupBox2: TGroupBox;
    DS5: TDataSource;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBMemo1: TDBMemo;
    Label15: TLabel;
    DBMemo2: TDBMemo;
    Label16: TLabel;
    DBMemo3: TDBMemo;
    Label17: TLabel;
    DBMemo4: TDBMemo;
    Label18: TLabel;
    DBMemo5: TDBMemo;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    CheckBox1: TCheckBox;
    Splitter2: TSplitter;
    KCLLQryCFMID: TStringField;
    KCLLQryCFMDATE: TDateTimeField;
    UpdKCLLS: TUpdateSQL;
    KCLLSQryLLNO: TStringField;
    KCLLSQrySCBH: TStringField;
    KCLLSQryDFL: TStringField;
    KCLLSQrySCANUSERID: TStringField;
    KCLLSQrySCANUSERDATE: TDateTimeField;
    procedure LLBarCodeEditKeyPress(Sender: TObject; var Key: Char);
    procedure BT1Click(Sender: TObject);
    procedure BT2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N1Click(Sender: TObject);
    procedure ServerSocketClientConnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ServerSocketClientDisconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ServerSocketClientError(Sender: TObject;
      Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
      var ErrorCode: Integer);
    procedure FormCreate(Sender: TObject);
    procedure BT4Click(Sender: TObject);
    procedure ServerSocketClientRead(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure BT3Click(Sender: TObject);
    procedure LLBarCodeEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BT5Click(Sender: TObject);
    procedure BO4Click(Sender: TObject);
    procedure KCLLSQryAfterOpen(DataSet: TDataSet);
  private
    iYear:integer;
    iMonth:integer;
    IsProcessRFID:boolean;
    { Private declarations }
    procedure LLBarCodeExeute();
    function IsNumCheck(S:String):Boolean;
    procedure UpdatePackRemQty(SCNO:String;CLBH:string;Pack:String;Qty:string);
    procedure ShowRFID_ERPInfo(SCNO:string;CLBH:string;Pack:string);
  public
    { Public declarations }
  end;

var
  DeliveryMatRFIDCode: TDeliveryMatRFIDCode;

implementation
  uses FunUnit, main1;
{$R *.dfm}
function TDeliveryMatRFIDCode.IsNumCheck(S:String):Boolean;
var i:integer;
begin
  if(length(S)>0) then
  begin
    Result:=True;
    for i:=1 to length(s) do
    begin
      if (s[i] in ['A'..'Z'] + ['a'..'z'])  then
      begin
        Result:=False;
        break;
      end
    end;
  end else
    result:=false;
end;
//
procedure TDeliveryMatRFIDCode.LLBarCodeExeute();
var LLNO:String;
begin
  LLNO:='';
  if CheckBox.Checked=true then
  begin
     if IsNumCheck(LLBarCodeEdit.Text)=true then
     begin
       LLNO:=Format('%.4d',[iYear])+Format('%.2d',[iMonth])+Format('%.5d',[strtoint(Copy(LLBarCodeEdit.Text,length(LLBarCodeEdit.Text)-5,5))]);
     end;
  end else
  begin
     LLNO:=LLBarCodeEdit.Text;
  end;
  if LLNO<>'' then
  begin
    with ExeQuery do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('IF EXISTS (Select * from KCLL where LLNO='''+LLNO+''' and CKBH='''+main.Edit2.Text+''') ');
      SQL.Add('Begin ');
      SQL.Add('IF NOT EXISTS (Select * from KCLLScan_Temp where LLNO='''+LLNO+''')');
      SQL.Add('Begin ');
      SQL.Add('Insert into KCLLScan_Temp (LLNO,  USERDATE )');
      SQL.Add('Values( '''+LLNO+''',Getdate())');
      SQl.Add('End ');
      SQl.Add('End ');
      //funcObj.WriteErrorLog(sql.Text);
      ExecSQL();
    end;
    BT2.Click;
  end;
end;
procedure TDeliveryMatRFIDCode.LLBarCodeEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
  begin
    LLBarCodeExeute();
    LLBarCodeEdit.Text:='';
  end;

end;

procedure TDeliveryMatRFIDCode.BT1Click(Sender: TObject);
begin
    with ExeQuery do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('truncate table KCLLScan_Temp');
      ExecSQL();
    end;
    BT2.Click;
end;

procedure TDeliveryMatRFIDCode.BT2Click(Sender: TObject);
begin
  KCLLQry.Active:=false;
  KCLLSQry.Active:=false;
  //
  KCLLQry.Active:=true;
  KCLLSQry.Active:=true;
end;

procedure TDeliveryMatRFIDCode.FormDestroy(Sender: TObject);
begin
  DeliveryMatRFIDCode:=nil;
end;

procedure TDeliveryMatRFIDCode.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=Cafree;
end;

procedure TDeliveryMatRFIDCode.N1Click(Sender: TObject);
begin
 if KCLLQry.Active=true then
 begin
    with ExeQuery do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Delete KCLLScan_Temp where LLNO='''+KCLLQry.FieldByName('LLNO').AsString+''' ');
      ExecSQL();
    end;
    BT2.Click;
 end;
end;

procedure TDeliveryMatRFIDCode.ServerSocketClientConnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  FuncObj.WriteErrorLog(datetimetostr(now)+' Socket Client Connect');
  BT3.Enabled:=true;
  BT4.Enabled:=true;
  BT5.Enabled:=true;  
  IsProcessRFID:=false;
end;

procedure TDeliveryMatRFIDCode.ServerSocketClientDisconnect(
  Sender: TObject; Socket: TCustomWinSocket);
begin
  FuncObj.WriteErrorLog(datetimetostr(now)+' Socket Client Disconnect');
  BT3.Enabled:=false;
  BT4.Enabled:=false;
  BT5.Enabled:=false;
end;

procedure TDeliveryMatRFIDCode.ServerSocketClientError(Sender: TObject;
  Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
  var ErrorCode: Integer);
begin
  ErrorCode:=0;
end;

procedure TDeliveryMatRFIDCode.FormCreate(Sender: TObject);
var myYear, myMonth, myDay : Word;
begin
  try
    ServerSocket.Active:=true;
  except
    on E:Exception do
    begin
      Showmessage('Van den:'+E.Message);
    end;
  end;
  DecodeDate(Date(), myYear, myMonth, myDay);
  iYear:=myYear;
  iMonth:=myMonth;
  CheckBox.Caption:='thang:'+inttostr(iMonth)+'/'+inttostr(iYear);
end;
//更新包裝數量
procedure TDeliveryMatRFIDCode.UpdatePackRemQty(SCNO:String;CLBH:string;Pack:String;Qty:string);
begin
  with ExeQuery do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Update KCRKScan_RFSS set RemQty='+Qty+',CFMID='''+main.Edit1.text+''',CFMDate=GetDate() ');
    SQL.Add('where SCNO=''20'+SCNO+''' and CLBH='''+CLBH+''' and Pack='+Pack+' ');
    funcObj.WriteErrorLog(datetimetostr(now)+' '+sql.Text);
    ExecSQL();
  end;
end;
//
procedure TDeliveryMatRFIDCode.BT4Click(Sender: TObject);
var i:integer;
   SendRFID:String;
begin

    if ((SCNOLabel.Caption<>'') and (QtyEdit.Text<>'')) then
    begin
      if IsNumCheck(QtyEdit.Text)=true then
      begin
        if strtofloat(QtyEdit.Text)>=0.1 then
        begin
          if IsProcessRFID=false then
          begin
            SendRFID:='<MAT>'+SCNOLabel.Caption+CLBHLabel.Caption+PackLabel.Caption+QtyEdit.Text;
            for i:=0 to ServerSocket.Socket.ActiveConnections-1 do
            begin
              ServerSocket.Socket.Connections[i].SendText(SendRFID);
            end;
            UpdatePackRemQty(SCNOLabel.Caption,CLBHLabel.Caption,inttostr(strtoint(PackLabel.Caption)),QtyEdit.Text);
            IsProcessRFID:=true;
          end;
        end;
      end;
    end;

end;

procedure TDeliveryMatRFIDCode.ServerSocketClientRead(Sender: TObject;
  Socket: TCustomWinSocket);
var Rece:String;
begin
  Rece:=Socket.ReceiveText;
  if Pos('<MATOK>',Rece)>=1 then
  begin
    Showmessage('OK!');
  end;
  if Pos('<MATNOK>',Rece)>=1 then
  begin
    Showmessage('khong thanh cong,Xin thu lai !');
  end;
  if Pos('<MAT>',Rece)>=1 then
  begin
    if length(Rece)>=25 then
    begin
      SCNOLabel.Caption:=Copy(Rece,6,8);
      CLBHLabel.Caption:=Copy(Rece,14,10);
      PackLabel.Caption:=Copy(Rece,24,3);
      QtyLabel.Caption:=Copy(Rece,27,length(Rece)-27);
      QtyEdit.Text:=Copy(Rece,27,length(Rece)-27);
      //
      ShowRFID_ERPInfo('20'+SCNOLabel.Caption,CLBHLabel.Caption,inttostr(strtoint(PackLabel.Caption)));
    end;
  end;
  IsProcessRFID:=false;
  FuncObj.WriteErrorLog(datetimetostr(now)+' Rece:'+Rece);

end;

procedure TDeliveryMatRFIDCode.BT3Click(Sender: TObject);
var SendRFID:String;
    i:integer;
begin
  if ServerSocket.Socket.ActiveConnections>0 then
  begin
    SendRFID:='<GETMAT>';
    for i:=0 to ServerSocket.Socket.ActiveConnections-1 do
    begin
      ServerSocket.Socket.Connections[i].SendText(SendRFID);
    end;
    IsProcessRFID:=false;
  end;
end;

procedure TDeliveryMatRFIDCode.LLBarCodeEditKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=VK_DOWN then
  begin
    iMonth:=iMonth-1;
    if iMonth<1 then
    begin
     iMonth:=12;
     iYear:=iYear-1;
    end;
    CheckBox.Caption:='thang nao:'+inttostr(iMonth)+'/'+inttostr(iYear);
  end;
  if Key=VK_UP then
  begin
    iMonth:=iMonth+1;
    if iMonth>12 then
    begin
      iMonth:=1;
      iYear:=iYear+1;
    end;
    CheckBox.Caption:='thang nao:'+inttostr(iMonth)+'/'+inttostr(iYear);
  end;
end;

procedure TDeliveryMatRFIDCode.BT5Click(Sender: TObject);
var i:integer;
   SendRFID:String;
begin

    if ((SCNOLabel.Caption<>'') and (QtyEdit.Text<>'')) then
    begin
      if IsNumCheck(QtyEdit.Text)=true then
      begin
        if strtofloat(QtyEdit.Text)>=0.1 then
        begin
          if IsProcessRFID=false then
          begin
            UpdatePackRemQty(SCNOLabel.Caption,CLBHLabel.Caption,inttostr(strtoint(PackLabel.Caption)),'0');
            //
            SCNOLabel.Caption:='00000000';
            CLBHLabel.Caption:='0000000000';
            PackLabel.Caption:='000';
            QtyEdit.Text:='0';
            SendRFID:='<MAT>'+SCNOLabel.Caption+CLBHLabel.Caption+PackLabel.Caption+QtyEdit.Text;
            for i:=0 to ServerSocket.Socket.ActiveConnections-1 do
            begin
              ServerSocket.Socket.Connections[i].SendText(SendRFID);
            end;
            IsProcessRFID:=true;
          end;
        end;
      end;
    end;

end;

procedure TDeliveryMatRFIDCode.ShowRFID_ERPInfo(SCNO:string;CLBH:string;Pack:string);
begin
  //
  if CheckBox1.Checked=true then
  begin
    with KCRKScan_RFS do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select KCRKScan_RFSS.SCNO,KCRKScan_RFSS.CLBH,CLZL.YWPM, KCZLS.KCQty, KCZLS.KCBH');
      SQL.Add('       ,cast((select C.DDBH+'','' from KCRKS A,KCRK B,DDZL C ');
      SQL.Add('       where  A.RKNO=B.RKNO and A.CGBH=C.DDBH ');
      SQL.Add('       and IsNull(B.SCNO,'''')='''+SCNO+''' and A.CLBH='''+CLBH+''' group by C.DDBH for XML Path ('''') ) as varchar(max)) as DDBH ');
      SQL.Add('       ,cast((select C.Article+'','' from KCRKS A,KCRK B,DDZL C ');
      SQL.Add('       where  A.RKNO=B.RKNO and A.CGBH=C.DDBH ');
      SQL.Add('       and IsNull(B.SCNO,'''')='''+SCNO+''' and A.CLBH='''+CLBH+''' group by C.Article for XML Path ('''') ) as varchar(max)) as Article ');
      SQL.Add('       ,cast((select C.BUYNO+'','' from KCRKS A,KCRK B,DDZL C ');
      SQL.Add('       where  A.RKNO=B.RKNO and A.CGBH=C.DDBH ');
      SQL.Add('       and IsNull(B.SCNO,'''')='''+SCNO+''' and A.CLBH='''+CLBH+''' group by C.BUYNO for XML Path ('''') ) as varchar(max)) as BUYNO ');
      SQL.Add('       ,cast((select B.DOCNO+'','' from KCRKS A,KCRK B ');
      SQL.Add('       where  A.RKNO=B.RKNO  ');
      SQL.Add('       and IsNull(B.SCNO,'''')='''+SCNO+''' and A.CLBH='''+CLBH+''' group by B.DOCNO for XML Path ('''') ) as varchar(max)) as DOCNO ');
      SQL.Add('       ,cast((select B.ZSNO+'','' from KCRKS A,KCRK B ');
      SQL.Add('       where  A.RKNO=B.RKNO  ');
      SQL.Add('       and IsNull(B.SCNO,'''')='''+SCNO+''' and A.CLBH='''+CLBH+''' group by B.ZSNO for XML Path ('''') ) as varchar(max)) as ZSNO ');
      SQL.Add('       ,Convert(varchar,Max(KCRKScan_RFSS.USERDATE),111) as RKDate ');
      SQL.Add('       ,CLZL.DWBH,KCRKScan_RFSS.TagID ');
      SQL.Add('from KCRKScan_RFSS');
      SQL.Add('left join KCRKScan_RF on KCRKScan_RF.SCNO=KCRKScan_RFSS.SCNO');
      SQL.Add('left join CLZL on CLZL.CLDH=KCRKScan_RFSS.CLBH');
      SQL.Add('left join KCZLS on KCRKScan_RF.CKBH=KCZLS.CKBH and KCRKScan_RFSS.CLBH=KCZLS.CLBH');
      SQL.Add('where KCRKScan_RFSS.SCNO='''+SCNO+''' and KCRKScan_RFSS.CLBH='''+CLBH+''' and KCRKScan_RFSS.Pack='+Pack+' ');
      SQL.Add('Group by KCRKScan_RFSS.SCNO,KCRKScan_RFSS.CLBH,KCRKScan_RFSS.TagID,CLZL.YWPM, KCZLS.KCQty, KCZLS.KCBH,KCRKScan_RF.SCNO,CLZL.DWBH');
      Active:=true;
    end;
  end else
  begin
    KCRKScan_RFS.Active:=false;
  end;
  //
end;
procedure TDeliveryMatRFIDCode.BO4Click(Sender: TObject);
var i:integer;
begin
  try
      KCLLSQry.first;
      for i:=1 to KCLLSQry.RecordCount do
      begin
        KCLLSQry.edit;
        KCLLSQry.FieldByName('SCANUSERID').Value:=main.edit1.text;
        KCLLSQry.FieldByName('SCANUSERDATE').Value:=date;
        UpdKCLLS.apply(ukmodify);
        KCLLSQry.Next;
      end;
      Showmessage('OK');
  except
    On E:Exception do
    begin
      Messagedlg('Have wrong, can not save data!'+E.Message,mtwarning,[mbyes],0);
    end;
  end;
end;

procedure TDeliveryMatRFIDCode.KCLLSQryAfterOpen(DataSet: TDataSet);
begin
  if KCLLQry.FieldByName('CFMID').AsString='NO' then
    BO4.Enabled:=true
  Else
    BO4.Enabled:=false;
end;

end.
