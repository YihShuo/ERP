unit PurtraceMatch_OrderExcel1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, GridsEh, DBGridEh, DB, DBTables;

type
  TPurtraceMatch_OrderExcel = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    DBGrid1: TDBGridEh;
    OrderExcelDet: TQuery;
    UpMas: TUpdateSQL;
    DS2: TDataSource;
    DBGridEh1: TDBGridEh;
    OrderExcelMas: TQuery;
    UpDet: TUpdateSQL;
    OrderExcelMasDFL: TStringField;
    DS1: TDataSource;
    OrderExcelDetDDBH: TStringField;
    OrderExcelDetDFL: TStringField;
    OrderExcelDetUserID: TStringField;
    OrderExcelDetUserDate: TDateTimeField;
    OrderExcelDetYN: TStringField;
    OrderExcelMasYN: TStringField;
    BB8: TButton;
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure OrderExcelMasAfterOpen(DataSet: TDataSet);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure BB4Click(Sender: TObject);
    procedure BB8Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PurtraceMatch_OrderExcel: TPurtraceMatch_OrderExcel;

implementation

uses main1, FunUnit, untClipboard;

{$R *.dfm}

procedure TPurtraceMatch_OrderExcel.BB2Click(Sender: TObject);
begin
  with OrderExcelMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  BB8.Enabled:=true;
end;

procedure TPurtraceMatch_OrderExcel.BB3Click(Sender: TObject);
begin
  with OrderExcelMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  BB8.Enabled:=true;  
end;

procedure TPurtraceMatch_OrderExcel.BB1Click(Sender: TObject);
begin
 with OrderExcelMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    Edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;  
end;

procedure TPurtraceMatch_OrderExcel.FormCreate(Sender: TObject);
begin
  OrderExcelMas.Active:=true;
  OrderExcelDet.Active:=true;
end;

procedure TPurtraceMatch_OrderExcel.OrderExcelMasAfterOpen(
  DataSet: TDataSet);
begin
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
end;

procedure TPurtraceMatch_OrderExcel.BB6Click(Sender: TObject);
begin
  with OrderExcelMas do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  //
  BB5.enabled:=false;
  BB6.enabled:=false;
  BB8.Enabled:=false;
end;

procedure TPurtraceMatch_OrderExcel.BB5Click(Sender: TObject);
var i,j:integer;
begin

  try
    OrderExcelDet.first;
    for i:=1 to OrderExcelDet.RecordCount do
    begin
        case OrderExcelDet.updatestatus of
          usinserted:
            begin
               OrderExcelDet.edit;
               OrderExcelDet.FieldByName('DFL').Value:=OrderExcelMas.FieldByName('DFL').Value;
               OrderExcelDet.FieldByName('userID').Value:=main.edit1.text;
               OrderExcelDet.FieldByName('userdate').Value:=Date;
               OrderExcelDet.FieldByName('YN').Value:='1';
               UpDet.apply(ukinsert);
            end;
          usmodified:
            begin
                OrderExcelDet.edit;
                OrderExcelDet.FieldByName('userID').Value:=main.edit1.text;
                OrderExcelDet.FieldByName('userdate').Value:=Date;
                UpDet.apply(ukmodify);
            end;
        end;
        OrderExcelDet.next;
    end;
    //
    OrderExcelMas.First;
    for i:=1 to OrderExcelMas.RecordCount do
    begin
      case OrderExcelMas.updatestatus of
        usmodified:
        begin
          if OrderExcelMas.fieldbyname('YN').value='0' then
          begin
            for j:=0 to OrderExcelDet.RecordCount-1 do
            begin
              UpDet.apply(ukdelete);
              OrderExcelDet.Next;
            end;
          end;
        end;
      end;
      OrderExcelMas.Next;
    end;
    //
    OrderExcelMas.active:=false;
    OrderExcelMas.cachedupdates:=false;
    OrderExcelMas.requestlive:=false;
    OrderExcelMas.active:=true;
    //
    BB5.enabled:=false;
    BB6.enabled:=false;
    BB8.Enabled:=false;
  except
    on E:Exception do
    begin
      Messagedlg('Have wrong, can not save data!'+E.Message,mtwarning,[mbyes],0);
    end;
  end;

end;

procedure TPurtraceMatch_OrderExcel.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if OrderExcelMas.FieldByName('YN').value='0' then
  begin
    DBGrid1.canvas.font.color:=clred;
    DBGrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TPurtraceMatch_OrderExcel.BB4Click(Sender: TObject);
begin
  with OrderExcelMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  BB8.Enabled:=true;  
end;

procedure TPurtraceMatch_OrderExcel.BB8Click(Sender: TObject);
var
  CbBuf: PChar;
  BufSize: Integer;
  Handle: THandle;
  Text:WideString;
  rowList,colList:TStringlist;
  i,j:integer;
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
    rowList:=TStringlist.Create;
    rowList.Text:=Text;
    OrderExcelDet.First;
    for i:=0 to rowList.Count-1 do
    begin
      colList:=funcObj.SplitString(rowList.Strings[i],'	');
      OrderExcelDet.Insert;
      if trim(colList.Strings[0])<>'' then
      begin
         OrderExcelDet.Fields[0].Value:=colList.Strings[0];
      end;
      colList.Free;
      OrderExcelDet.Post;
    end;
    rowList.Free;
   end;
 except
   on E:Exception do
    Showmessage(E.Message);
 end;

end;

procedure TPurtraceMatch_OrderExcel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TPurtraceMatch_OrderExcel.FormDestroy(Sender: TObject);
begin
  PurtraceMatch_OrderExcel:=nil;
end;

end.
