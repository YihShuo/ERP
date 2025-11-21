unit DeliveryMatConBarcode1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls, DB, DBTables;

type
  TDeliveryMatConBarcode = class(TForm)
    Panel3: TPanel;
    Panel4: TPanel;
    Label3: TLabel;
    MatBarCodeEdit: TEdit;
    DBGrid2: TDBGridEh;
    KCRKScan: TQuery;
    DS3: TDataSource;
    UpdateSCAN: TUpdateSQL;
    MatQuery: TQuery;
    MatQueryCKBH: TStringField;
    MatQueryCLBH: TStringField;
    MatQueryTempQty: TCurrencyField;
    MatQueryywpm: TStringField;
    DS2: TDataSource;
    Qtemp: TQuery;
    ExeQuery: TQuery;
    KCRKScanRKNO: TStringField;
    KCRKScanCLBH: TStringField;
    KCRKScanXH: TStringField;
    KCRKScanywpm: TStringField;
    KCRKScanRemQty: TFloatField;
    UpdateMat: TUpdateSQL;
    DelDet: TQuery;
    DelDetLLNO: TStringField;
    DelDetCLBH: TStringField;
    DelDetDFL: TStringField;
    DelDetSCBH: TStringField;
    DelDetTempQty: TCurrencyField;
    DelDetBLSB: TStringField;
    DelDetYWPM: TStringField;
    DelDetZWPM: TStringField;
    DelDetDWBH: TStringField;
    DelDetDDYN: TStringField;
    DelDetYWSM: TStringField;
    DelDetGSBH: TStringField;
    DelDetDepID: TStringField;
    DelDetDepName: TStringField;
    DelDetCKBH: TStringField;
    DelDetUSERID: TStringField;
    DelDetUSERDATE: TDateTimeField;
    DelDetCFMID: TStringField;
    DelDetCFMDate: TDateTimeField;
    DelDetFlowIndex: TIntegerField;
    UPDet: TUpdateSQL;
    DS1: TDataSource;
    MatQuerySCANQty: TCurrencyField;
    DelDetScanQty: TCurrencyField;
    DelDetSCanUSERID: TStringField;
    DelDetScanUSERDATE: TDateTimeField;
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Splitter1: TSplitter;
    DBGrid1: TDBGridEh;
    Splitter2: TSplitter;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MatBarCodeEditKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    LLNO:TStringlist;
    { Private declarations }
    procedure LLBarCodeExeute(LLNOStr:string);
    procedure Load_KCLLSCan_Temp();
    procedure MatBarCodeExeute(Barcode:string);
  public
    { Public declarations }
  end;

var
  DeliveryMatConBarcode: TDeliveryMatConBarcode;

implementation
  uses FunUnit, main1;
{$R *.dfm}

procedure TDeliveryMatConBarcode.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TDeliveryMatConBarcode.FormDestroy(Sender: TObject);
begin
  LLNO.Free;
  DeliveryMatConBarcode:=nil;
end;
//
procedure TDeliveryMatConBarcode.Load_KCLLSCan_Temp();
var i:integer;
begin
  //
  Qtemp.Active:=false;
  Qtemp.SQL.Clear;
  Qtemp.SQL.Add('Delete from KCLLSCAN_Temp where Convert(varchar,USERDATE,111)<'''+FormatDateTime('YYYY/MM/DD',Date())+''' ');
  Qtemp.SQL.Add('select * from KCLLSCAN_Temp where Convert(varchar,USERDATE,111)='''+FormatDateTime('YYYY/MM/DD',Date())+''' ');
  Qtemp.SQL.Add('order by  LLNO ');
  //funcObj.WriteErrorLog(Qtemp.sql.Text);
  Qtemp.Active:=true;
  LLNO.Clear;
  for i:=0 to Qtemp.RecordCount-1 do
  begin
    LLBarCodeExeute(Qtemp.FieldByName('LLNO').AsString);
    Qtemp.Next;
  end;
  //
end;
//
procedure  TDeliveryMatConBarcode.LLBarCodeExeute(LLNOStr:string);
var i,j:integer;
    BarCode,SubSQL:string;
begin
   //
   BarCode:=LLNOStr;
   if BarCode<>'' then
   begin
     for i:=0 to LLNO.Count-1 do
     begin
       if LLNO.Strings[i]=BarCode then
       begin
         DelDet.Locate('LLNO',BarCode,[]);
         abort;
       end;
     end;

     with ExeQuery do
     begin
       Active:=false;
       SQL.Clear;
       SQL.Add('select KCLLS.LLNO,KCLLS.CLBH,KCLLS.DFL,KCLLS.SCBH,KCLLS.TempQty,IsNull(KCLLS.ScanQty,0) as ScanQty,KCLLS.BLSB,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,');
       SQL.Add('         DDZL.YN as DDYN,SCBLYY.YWSM,');
       SQL.Add('         KCLL.GSBH,KCLL.DepID,BDepartment.DepName,KCLL.CKBH,KCLL.USERID,KCLL.USERDATE,KCLL.CFMID,KCLL.CFMDate,KCLLS.ScanUSERID,KCLLS.ScanUSERDATE    ');
       SQL.Add('from KCLLS');
       SQL.Add('inner join KCLL on KCLL.LLNO=KCLLS.LLNO ');
       SQL.Add('inner join CLZL on CLZL.CLDH=KCLLS.CLBH ');
       SQL.Add('left join BDepartment on KCLL.DepID=BDepartment.ID  ');
       SQL.Add('left join DDZL on DDZL.DDBH=KCLLS.SCBH ');
       SQL.Add('left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH ');
       SQL.Add('where KCLLS.LLNO='''+BarCode+'''  and KCLL.GSBH='''+main.Edit2.Text+''' and KCLL.CFMID=''NO'' ');
       SQL.Add('order by KCLLS.DFL ,KCLLS.CLBH,KCLLS.SCBH ');
       //funcObj.WriteErrorLog(SQL.Text);
       Active:=true;
       if RecordCount>0 then
       begin
         for i:=0 to ExeQuery.RecordCount-1 do
         begin
           DelDet.Append;
           for j:=0 to ExeQuery.Fields.Count-1 do
             DelDet.Fields[j].Value:=ExeQuery.Fields[j].Value;
           DelDet.Fields[j].AsInteger:=i+1;
           DelDet.Post;
           ExeQuery.Next;
         end;
         ExeQuery.Active:=false;
         LLNO.Add(BarCode);
         //
         ExeQuery.Active:=false;
         ExeQuery.SQL.Clear;
         ExeQuery.SQL.Add('IF NOT EXISTS (Select * from KCLLSCAN_Temp where LLNO='''+BarCode+''' ) ');
         ExeQuery.SQL.Add('BEGIN ');
         ExeQuery.SQL.Add('Insert into KCLLSCAN_Temp ');
         ExeQuery.SQL.Add('select '''+BarCode+''' as LLNO,GETDATE() as USERDATE ');
         ExeQuery.SQL.Add('END ');
         ExeQuery.ExecSQL();
         //
         SubSQL:='';
         for i:=0 to LLNO.Count-1 do
         begin
           SubSQL:=SubSQL+''''+LLNO.Strings[i]+''',';
         end;
         SubSQL:=Copy(SubSQL,1,length(SubSQL)-1);
         //
         with MatQuery do
         begin
           Active:=false;
           SQL.Clear;
           SQL.Add('select KCLLS.*,CLZL.ywpm from ( ');
           SQL.Add('select KCLL.CKBH,KCLLS.CLBH,Sum(KCLLS.TempQty) as TempQty,Sum(IsNull(SCANQty,0)) as SCANQty ');
           SQL.Add('from KCLLS ');
           SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNO');
           SQL.Add('where KCLLS.LLNO in ('+SubSQL+')');
           SQL.Add('Group by KCLL.CKBH,KCLLS.CLBH ) KCLLS');
           SQL.Add('inner join CLZL on CLZL.CLDH=KCLLS.CLBH');
           //funcObj.WriteErrorLog(sql.Text);
           Active:=true;
         end;
       end else
       begin
         Showmessage('Khong co PHIEU XUAT VAT TU:'+BarCode);
       end;
       Active:=false;
     end;
   end;
   //
end;
//


procedure TDeliveryMatConBarcode.FormShow(Sender: TObject);
begin
  Load_KCLLSCan_Temp();

end;
//
procedure  TDeliveryMatConBarcode.MatBarCodeExeute(Barcode:string);
var tmpList:TStringlist;
    RKNO,CLBH,XH:String;
    i:integer;
    PackQty,RemQty,UsdQty:double;
begin
  tmpList:=funcObj.SplitString(Barcode,'-');
  if tmpList.Count=3 then
  begin
    RKNO:=tmpList.Strings[0];
    CLBH:=tmpList.Strings[1];
    XH:=tmpList.Strings[2];
    //
    with Qtemp do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select KCRKScan.RKNO,KCRKScan.CLBH,KCRKScan.XH,CLZL.ywpm,Sum(KCRKScan.Qty-IsNull(KCRK_OM.LLQty,0)) as RemQty from KCRKScan');
      SQL.Add('left join (');
      SQL.Add('  select RKNO,CLBH,XH,Sum(IsNull(Qty,0)) as LLQty from KCRKScan');
      SQL.Add('  where  YN<>5 and SB=2 and KCRKScan.RKNO ='''+RKNO+''' and KCRKScan.CLBH='''+CLBH+''' and KCRKScan.XH='+XH+'  ');
      SQL.Add('  Group by RKNO,CLBH,XH');
      SQL.Add('  ) KCRK_OM on KCRK_OM.RKNO=KCRKScan.RKNO and  KCRK_OM.CLBH=KCRKScan.CLBH and KCRK_OM.XH=KCRKScan.XH');
      SQL.Add('left join CLZL on CLZL.cldh=KCRKScan.CLBH');
      SQL.Add('where KCRKScan.RKNO ='''+RKNO+''' ');
      SQL.Add('      and KCRKScan.CLBH='''+CLBH+''' ');
      SQL.Add('      and KCRKScan.XH='+XH+' ');
      SQL.Add('      and KCRKScan.SB=1');
      SQL.Add('Group by KCRKScan.RKNO,KCRKScan.CLBH,KCRKScan.XH,CLZL.YWPM      ');
      SQL.Add('having sum(KCRKScan.Qty-IsNull(KCRK_OM.LLQty,0))>0');
      //funcObj.WriteErrorLog(sql.Text);
      Active:=true;
    end;
    //
    if MatQuery.Active=false then
    begin
      MatBarCodeEdit.Text:='';
      Exit;
    end;
    if Qtemp.RecordCount>0 then
    begin
      //包裝明細
      PackQty:=Qtemp.fieldByName('RemQty').Value;
      RemQty:=Qtemp.fieldByName('RemQty').Value;

      //領料總數量KCLLS  Group  by CLBH
      if MatQuery.Locate('CLBH',CLBH,[])=true then
      begin
        if MatQuery.FieldByName('TempQty').Value-MatQuery.FieldByName('ScanQty').Value<RemQty then
        begin
          UsdQty:=MatQuery.FieldByName('TempQty').Value-MatQuery.FieldByName('ScanQty').Value;
          MatQuery.Edit;
          MatQuery.FieldByName('ScanQty').Value:=MatQuery.FieldByName('ScanQty').Value+UsdQty;
          MatQuery.Post;
        end else
        begin
          UsdQty:=RemQty;
          MatQuery.Edit;
          MatQuery.FieldByName('ScanQty').Value:=MatQuery.FieldByName('ScanQty').Value+UsdQty;
          MatQuery.Post;
        end;
      end;
      //領料單明細 KCLLS
      DelDet.First;
      DelDet.Filter:='CLBH='''+CLBH+''' ';
      if DelDet.FindFirst=true then
      begin
        if DelDet.FieldByName('TempQty').Value-DelDet.FieldByName('ScanQty').Value<RemQty then
        begin
          UsdQty:=DelDet.FieldByName('TempQty').Value-DelDet.FieldByName('ScanQty').Value;
          DelDet.Edit;
          DelDet.FieldByName('ScanQty').Value:=DelDet.FieldByName('ScanQty').Value+UsdQty;
          DelDet.FieldByName('ScanUserID').Value:=main.Edit1.Text;
          DelDet.FieldByName('ScanUserDate').Value:=Date();
          DelDet.Post;
          UPDet.Apply(ukModify);
          RemQty:=RemQty-UsdQty;
        end else
        begin
          UsdQty:=RemQty;
          DelDet.Edit;
          DelDet.FieldByName('ScanQty').Value:=DelDet.FieldByName('ScanQty').Value+UsdQty;
          DelDet.FieldByName('ScanUserID').Value:=main.Edit1.Text;
          DelDet.FieldByName('ScanUserDate').Value:=Date();
          DelDet.Post;
          UPDet.Apply(ukModify);
          RemQty:=RemQty-UsdQty;
        end;
      end;
      while DelDet.FindNext=true do
      begin
        if DelDet.FieldByName('TempQty').Value-DelDet.FieldByName('ScanQty').Value<RemQty then
        begin
          UsdQty:=DelDet.FieldByName('TempQty').Value-DelDet.FieldByName('ScanQty').Value;
          DelDet.Edit;
          DelDet.FieldByName('ScanQty').Value:=DelDet.FieldByName('ScanQty').Value+UsdQty;
          DelDet.FieldByName('ScanUserID').Value:=main.Edit1.Text;
          DelDet.FieldByName('ScanUserDate').Value:=Date();
          DelDet.Post;
          UPDet.Apply(ukModify);
          RemQty:=RemQty-UsdQty;
        end else
        begin
          UsdQty:=RemQty;
          DelDet.Edit;
          DelDet.FieldByName('ScanQty').Value:=DelDet.FieldByName('ScanQty').Value+UsdQty;
          DelDet.FieldByName('ScanUserID').Value:=main.Edit1.Text;
          DelDet.FieldByName('ScanUserDate').Value:=Date();
          DelDet.Post;
          UPDet.Apply(ukModify);
          RemQty:=RemQty-UsdQty;
        end;
        if RemQty<=0 then break;
      end;
      if RemQty>0 then showmessage('Con So luong:'+floattostr(RemQty));
      //新增KCRKScan
      if PackQty-RemQty>0 then
      begin
        if KCRKScan.Locate('RKNO;CLBH;XH',VarArrayOf([RKNO,CLBH, XH]),[])=false then
        begin
          KCRKScan.Append;
          for i:=0 to Qtemp.Fields.Count-2 do
            KCRKScan.Fields[i].Value:=Qtemp.Fields[i].Value;
          KCRKScan.Fields[Qtemp.Fields.Count-1].Value:=PackQty-RemQty;
          KCRKScan.Post;
        end;
        //
        with Qtemp do
        begin
          Active:=false;
          SQL.Clear;
          SQL.Add('Insert into KCRKScan ');
          SQL.Add('(RKNO, CLBH, XH, SB, Qty, USERID, USERDATE , YN )');
          SQL.Add('Values ');
          SQL.Add('('''+KCRKScan.FieldByName('RKNO').AsString+''','''+KCRKScan.FieldByName('CLBH').AsString+''','+KCRKScan.FieldByName('XH').AsString);
          SQL.Add(',2,'+floattostr(PackQty-RemQty)+','''+main.Edit1.Text+''',GetDate(),1)');
          //funcObj.WriteErrorLog(sql.Text);
          ExecSQL();
        end;
      end;
      //
      MatBarCodeEdit.Text:='';
    end else
    begin
      windows.beep(1500,500);
      windows.beep(1500,500);
      windows.beep(1500,500);
      MatBarCodeEdit.Text:='';
    end;
    Qtemp.Active:=false;
    //
  end;
  tmpList.Free;
end;

procedure TDeliveryMatConBarcode.MatBarCodeEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  //
  if key=#13 then
  begin
    MatBarCodeExeute(MatBarCodeEdit.Text);
  end;
  //
end;

procedure TDeliveryMatConBarcode.FormCreate(Sender: TObject);
begin
  KCRKScan.Active:=true;
  //
  DelDet.Active:=true;
  LLNO:=TStringlist.Create;
  //BarCode:=TStringlist.Create;
end;

procedure TDeliveryMatConBarcode.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var Draw: TCanvas;
    AllRect,rect1,rect2:TRect;
begin

  if DelDet.FieldByName('FlowIndex').AsString<>'1' then
  begin
    if (DataCol=0) or (DataCol=1)  then
    begin
      Draw := DBGrid1.Canvas;
      Draw.Pen.Color := clwhite; // 指定畫筆的顏色
      Draw.Pen.Width := 1;
      Draw.MoveTo(Rect.Left, Rect.Bottom );
      Draw.LineTo(Rect.Right, Rect.Bottom );
      Draw.Rectangle(Rect);
    end;
  end else  if DelDet.FieldByName('FlowIndex').AsString='1' then
  begin
      //字體顏色
      //ColorIndex:=ColorIndex+1;
      //if ColorIndex>4 then ColorIndex:=0;
      //DBGrid1.canvas.font.color:=RowColor[ColorIndex];
      //DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State) ;
      //
      Draw := DBGrid1.Canvas;
      Draw.Pen.Color := clBlack; // 指定畫筆的顏色
      Draw.Pen.Width := 4;
      Draw.MoveTo(Rect.Left, Rect.top );
      Draw.LineTo(Rect.Right, Rect.top );
      //
      if (DataCol=0) or (DataCol=1) then
      begin
        Draw := DBGrid1.Canvas;
        Draw.Pen.Color := clwhite; // 指定畫筆的顏色
        Draw.Pen.Width := 1;
        Draw.MoveTo(Rect.Left, Rect.Bottom );
        Draw.LineTo(Rect.Right, Rect.Bottom );
      end;
  end;
  if DelDet.FieldByName('TempQty').Value<=DelDet.FieldByName('ScanQty').Value  then
  begin
    DBGrid1.canvas.font.color:=clBlue;
    DBGrid1.DefaultDrawColumnCell(Rect,datacol,Column,state);
  end;
end;

procedure TDeliveryMatConBarcode.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if MatQuery.FieldByName('TempQty').Value<=MatQuery.FieldByName('ScanQty').Value  then
  begin
    DBGridEh1.canvas.font.color:=clBlue;
    DBGridEh1.DefaultDrawColumnCell(Rect,datacol,Column,state);
  end;
end;

end.
