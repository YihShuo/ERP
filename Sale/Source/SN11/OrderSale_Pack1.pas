unit OrderSale_Pack1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, DBTables, GridsEh, DBGridEh, Comobj,
  Buttons;

type
  TOrderSale_Pack = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGridEh;
    YWDD: TQuery;
    UpYWDD: TUpdateSQL;
    DS1: TDataSource;
    Label1: TLabel;
    DDBHEdit: TEdit;
    tmpQry: TQuery;
    ExeQry: TQuery;
    BB5: TBitBtn;
    BB1: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
  private
    NDate:TDate;
    DDBHRY:string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderSale_Pack: TOrderSale_Pack;

implementation
  uses untClipboard,FunUnit, main1;
{$R *.dfm}

procedure TOrderSale_Pack.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TOrderSale_Pack.FormDestroy(Sender: TObject);
begin
  OrderSale_Pack:=nil;
end;

procedure TOrderSale_Pack.FormCreate(Sender: TObject);
begin
  with tmpQry do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
  end;
end;

procedure TOrderSale_Pack.BB1Click(Sender: TObject);
var i:integer;
begin
  //
  if DDBHEdit.Text='' then exit;
  with tmpQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select CC from  DDZLS where DDBH='''+DDBHEdit.Text+''' order by CC ');
    Active:=true;
  end;
  if  tmpQry.RecordCount>0 then
  begin
    DDBHRY:=DDBHEdit.Text;
    //
    with YWDD do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select DDZL.DDBHRY,DDZL.ShipDate,DDZL.Pairs,YWDD.GSBH,YWDD.USERDATE,YWDD.USERID,YWDD.YN,YWDD.DDBH,YWDD.YSBH,YWDD.ETD,YWDD.Qty,YWDD.KHDDBH1,YWDD.KHDDBH2 ');
      while not tmpQry.Eof do
      begin
        SQL.Add(',['+tmpQry.FieldByName('CC').AsString+']');
        tmpQry.Next;
      end;
      SQL.Add('from (  Select DDBHRY,DDBH,ShipDate,Pairs ');
      tmpQry.First;
      while not tmpQry.Eof do
      begin
        SQL.Add('      ,MAX(case when CC='''+tmpQry.FieldByName('CC').AsString+''' then Qty end) as '''+tmpQry.FieldByName('CC').AsString+'''');
        tmpQry.Next;
      end;
      SQL.Add('from (');
      SQL.Add('select DDZL.DDBH as DDBHRY,DDZL.ShipDate,DDZLS.CC,DDZL.Pairs,ZLZLS.XXCC,YWDD.DDBH,YWDDS.Qty ');
      SQL.Add('from DDZL');
      SQL.Add('left join DDZLS on DDZL.DDBH=DDZLS.DDBH ');
      SQL.Add('left join zlzlS on ZLZLS.ZLBH=DDZLS.DDBH and ZLZLS.ZLCC=DDZLS.CC ');
      SQL.Add('left join YWDD on YWDD.YSBH=DDZL.DDBH ');
      SQL.Add('left join YWDDS on YWDD.DDBH=YWDDS.DDBH and zlzlS.XXCC=YWDDS.XXCC ');
      SQL.Add('where DDZL.DDBH ='''+DDBHEdit.Text+''' ) DDZL');
      SQL.Add('Group by DDBHRY,DDBH,ShipDate,Pairs ) DDZL');
      SQL.Add('left join YWDD on YWDD.YSBH=DDZL.DDBHRY and YWDD.DDBH=DDZL.DDBH ');
      //funcObj.WriteErrorLog(sql.Text);
      Active:=true;
    end;
    //Hide
    DBGrid1.Columns[0].Visible:=false; //DDBHRY
    DBGrid1.Columns[1].Visible:=false; //ShipDate
    DBGrid1.Columns[2].Visible:=false; //Pairs
    DBGrid1.Columns[3].Visible:=false; //GSBH
    DBGrid1.Columns[4].Visible:=false; //USERID
    DBGrid1.Columns[5].Visible:=false; //USERDATE
    DBGrid1.Columns[6].Visible:=false; //YN
    //
    DBGrid1.Columns[7].Width:=92;  //DDBH
    DBGrid1.Columns[7].Footer.FieldName:=YWDD.Fields[7].FieldName;
    DBGrid1.Columns[7].Footer.ValueType:=fvtCount;
    DBGrid1.Columns[8].Width:=92;  //YSBH
    DBGrid1.Columns[9].Width:=100; //ETD
    DBGrid1.Columns[10].Width:=40;  //Qty
    DBGrid1.Columns[10].Footer.FieldName:=YWDD.Fields[10].FieldName;
    DBGrid1.Columns[10].Footer.ValueType:=fvtSum;
    DBGrid1.Columns[11].Width:=110; //KHDDBH1
    DBGrid1.Columns[12].Width:=110; //KHDDBH2
    for i:=13 to YWDD.FieldCount-1 do
    begin
      DBGrid1.Columns[i].Width:=40;
      DBGrid1.Columns[i].Footer.FieldName:=YWDD.Fields[i].FieldName;
      DBGrid1.Columns[i].Footer.ValueType:=fvtSum;
    end;
  end else
  begin
    Showmessage('DDBH is not exists');
  end;
  tmpQry.Active:=false;
  //
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  BB7.Enabled:=true;
end;

procedure TOrderSale_Pack.BB5Click(Sender: TObject);
var i,j:integer;
    Quantity,TotalSize_Quantity:integer;
    IPrice:string;
begin
  //
  if messagedlg('are you sure import packing DDBH !',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin

    with tmpQry do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select DDZL.DDBH,DDZL.Pairs,DDZLS.CC,DDZLS.Quantity,DDZLS.IPrice,ZLZLS.XXCC,DDZL.Shipdate ');
      SQL.Add('from DDZL ');
      SQL.Add('left join DDZLS on DDZL.DDBH=DDZLS.DDBH ');
      SQL.Add('left join ZLZLS on ZLZLS.ZLBH=DDZLS.DDBH and DDZLS.CC=ZLZLS.ZLCC ');
      SQL.Add('where DDZL.DDBH='''+DDBHRY+''' ');
      SQL.Add('order by DDZLS.CC ');
      Active:=true;
    end;
    //檢查雙數是否正確
    if DBGrid1.getfootervalue(0,DBGrid1.columns[10])<>tmpQry.FieldByName('Pairs').Value then
    begin
      Showmessage('Total Pairs not exact');
      exit;
    end;
    //檢查尺碼雙數是否正確
    for i:=13 to YWDD.FieldCount-1 do
    begin
      Quantity:=-1;
      if tmpQry.Locate('CC',DBGrid1.columns[i].FieldName,[]) then Quantity:=tmpQry.FieldByName('Quantity').Value;
      if DBGrid1.getfootervalue(0,DBGrid1.columns[i])<>inttostr(Quantity) then
      begin
        Showmessage('Size '+DBGrid1.columns[i].FieldName+' Pairs not exact');
        Exit;
      end;
    end;
    YWDD.first;
    //
    for i:=0 to YWDD.RecordCount-1 do
    begin
      TotalSize_Quantity:=0;
      for j:=13 to YWDD.FieldCount-1 do
      begin
        Quantity:=0;
        if YWDD.Fields[j].AsString<>'' then Quantity:=YWDD.Fields[j].Value;
        TotalSize_Quantity:=TotalSize_Quantity+Quantity;
      end;
      if inttostr(TotalSize_Quantity)<>YWDD.FieldByName('Qty').AsString then
      begin
        Showmessage('Total Pairs  not the same with SIZE Pairs ');
        exit;
      end;
      YWDD.Next;
    end;
    //資料OK
    YWDD.first;
    for i:=0 to YWDD.RecordCount-1 do
    begin
      if YWDD.FieldByName('YN').IsNull then //Not yet YWDD.DDBH data
      begin
        if YWDD.fieldbyname('DDBH').isnull then
        begin

        end else
        begin
          YWDD.edit;
          YWDD.FieldByName('GSBH').Value:=main.Edit2.Text;
          if YWDD.FieldByName('ETD').IsNull then
          begin
            YWDD.FieldByName('ETD').Value:=tmpQry.FieldByName('shipdate').Value;
          end;
          YWDD.FieldByName('YSBH').Value:=tmpQry.FieldByName('DDBH').Value;
          YWDD.FieldByName('DDBH').Value:=uppercase(YWDD.FieldByName('DDBH').Value);
          YWDD.FieldByName('userID').Value:=main.edit1.text;
          YWDD.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
          YWDD.FieldByName('YN').Value:='1';
          YWDD.Post;
          UpYWDD.apply(ukinsert);
          //新增明細
          for j:=13 to YWDD.FieldCount-1 do
          begin
            if tmpQry.Locate('CC',DBGrid1.columns[j].FieldName,[]) then
            begin
              Quantity:=0;
              if YWDD.Fields[j].AsString<>'' then Quantity:=YWDD.Fields[j].Value;
              if Quantity>0 then
              begin
                IPrice:=tmpQry.FieldByName('IPrice').AsString;
                if IPrice='' then IPrice:='NULL';
                with ExeQry do
                begin
                  Active:=false;
                  SQL.Clear;
                  SQL.Add('insert into YWDDS ');
                  SQL.Add('  (DDBH, XXCC, DDCC, Qty, IPrice, USERDATE, USERID, YN) ');
                  SQL.Add('values ');
                  SQL.Add('  ('''+YWDD.FieldByName('DDBH').AsString+''','''+tmpQry.FieldByName('XXCC').AsString+''','''+tmpQry.FieldByName('CC').AsString+''','+inttostr(Quantity)+','+IPrice+',Getdate(),'''+main.edit1.text+''',''1'') ');
                  //funcObj.WriteErrorLog(sql.Text);
                  ExecSQL();
                end;
              end;
            end;
          end;
        end;
      end;
      YWDD.Next;
    end;
    //
    Showmessage('Success');
    tmpQry.Active:=false;
  end;

end;

procedure TOrderSale_Pack.BB6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if  YWDD.active  then
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
      for   i:=0   to   YWDD.fieldcount-1   do
        begin
            eclApp.Cells(1,i+1):=YWDD.fields[i].FieldName;
        end;

      YWDD.First;
      j:=2;
      while   not   YWDD.Eof   do
      begin
        for   i:=0   to  YWDD.fieldcount-1  do
        begin
          eclApp.Cells(j,i+1):=YWDD.Fields[i].Value;
        end;
      YWDD.Next;
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

procedure TOrderSale_Pack.BB7Click(Sender: TObject);
var
  CbBuf: PChar;
  BufSize: Integer;
  Handle: THandle;
  Text:WideString;
  rowList,colList:TStringlist;
  ClickColumnIndex,i,j:integer;
begin
 try
   Text:='';
   if Clipboard.HasFormat(CF_TEXT) then
   begin
    Handle := ClipBoard.GetAsHandle(CF_TEXT);
    BufSize := GlobalSize(Handle);
    GetMem(CbBuf, BufSize);
    Text:=Clipboard.AsUnicodeText;
    //
    ClickColumnIndex:=7;
    rowList:=TStringlist.Create;
    rowList.Text:=Text;
    for i:=0 to rowList.Count-1 do
    begin
      //
      colList:=funcObj.SplitString(rowList.Strings[i],'	');
      YWDD.Edit;
      for j:=0 to colList.Count-1 do
      begin
        if trim(colList.Strings[j])<>'' then
        begin
           YWDD.Fields[j+ClickColumnIndex].Value:=colList.Strings[j];
        end;
        if j+ClickColumnIndex>=YWDD.FieldCount-1 then break;
      end;
      colList.Free;
      YWDD.Post;
      YWDD.Append;
    end;
    rowList.Free;
   end;

 except
   on E:Exception do
    Showmessage(E.Message);
 end;

end;

procedure TOrderSale_Pack.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if not YWDD.FieldByName('YN').IsNull then
  begin
    DBGrid1.canvas.font.color:=clblue;
  end;
end;

procedure TOrderSale_Pack.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
