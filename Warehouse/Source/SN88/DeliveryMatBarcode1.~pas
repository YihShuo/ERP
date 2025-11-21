unit DeliveryMatBarcode1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, GridsEh, DBGridEh, Buttons, StdCtrls, DB, DBTables, DateUtils;

type
  TDeliveryMatBarcode = class(TForm)
    Panel2: TPanel;
    Label5: TLabel;
    LLBarCodeEdit: TEdit;
    KCLLCanelBtn: TBitBtn;
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Splitter1: TSplitter;
    DBGrid1: TDBGridEh;
    DelDet: TQuery;
    DelDetLLNO: TStringField;
    DelDetCLBH: TStringField;
    DelDetDFL: TStringField;
    DelDetSCBH: TStringField;
    DelDetTempQty: TCurrencyField;
    DelDetQty: TCurrencyField;
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
    Qtemp: TQuery;
    MatQuery: TQuery;
    MatQueryCKBH: TStringField;
    MatQueryCLBH: TStringField;
    MatQueryTempQty: TCurrencyField;
    MatQueryywpm: TStringField;
    DS2: TDataSource;
    ExeQuery: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure LLBarCodeEditKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure KCLLCanelBtnClick(Sender: TObject);
  private
    sYear,sMonth:String;
    sSTDT,sEDDT:String;
    //  
    Ndate:TDate;
    LLNO:TStringlist;
    //BarCode:TStringlist;
    { Private declarations }
    procedure LLBarCodeExeute(LLNOStr:string);
    procedure Load_KCLLSCan_Temp();
  public
    { Public declarations }
  end;

var
  DeliveryMatBarcode: TDeliveryMatBarcode;
  sdate,edate,NDate:TDate;
implementation
  uses FunUnit, main1;
{$R *.dfm}

procedure TDeliveryMatBarcode.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   LLNO.Free;
   Action:=caFree;
end;

procedure TDeliveryMatBarcode.FormDestroy(Sender: TObject);
begin
  DeliveryMatBarcode:=nil;
end;

procedure TDeliveryMatBarcode.LLBarCodeEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
  begin
    LLBarCodeExeute(LLBarCodeEdit.Text);
    LLBarCodeEdit.Text:='';
  end;
end;
//
procedure  TDeliveryMatBarcode.LLBarCodeExeute(LLNOStr:string);
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
       SQL.Add('select KCLLS.LLNO,KCLLS.CLBH,KCLLS.DFL,KCLLS.SCBH,KCLLS.TempQty,KCLLS.Qty,KCLLS.BLSB,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,');
       SQL.Add('         DDZL.YN as DDYN,SCBLYY.YWSM,');
       SQL.Add('         KCLL.GSBH,KCLL.DepID,BDepartment.DepName,KCLL.CKBH,KCLL.USERID,KCLL.USERDATE,KCLL.CFMID,KCLL.CFMDate    ');
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
           SQL.Add('select KCLL.CKBH,KCLLS.CLBH,Sum(KCLLS.TempQty) as TempQty ');
           SQL.Add('from KCLLS ');
           SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNO');
           SQL.Add('where KCLLS.LLNO in ('+SubSQL+')');
           SQL.Add('Group by KCLL.CKBH,KCLLS.CLBH ) KCLLS');
           SQL.Add('inner join CLZL on CLZL.CLDH=KCLLS.CLBH');
           //SQL.Add('left join KCZLS  KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLLS.CKBH');
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

procedure TDeliveryMatBarcode.FormCreate(Sender: TObject);
begin
  DelDet.Active:=true;
  LLNO:=TStringlist.Create;

end;

procedure TDeliveryMatBarcode.DBGrid1DrawColumnCell(Sender: TObject;
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
end;
//
procedure TDeliveryMatBarcode.Load_KCLLSCan_Temp();
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

procedure TDeliveryMatBarcode.FormShow(Sender: TObject);
begin
  Load_KCLLSCan_Temp();
end;

procedure TDeliveryMatBarcode.KCLLCanelBtnClick(Sender: TObject);
begin
  //
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Delete from KCLLSCAN_Temp ');
    Qtemp.ExecSQL();
  end;
  DelDet.Active:=false;
  DelDet.Active:=true;
  MatQuery.Active:=false;
  //
end;

end.
