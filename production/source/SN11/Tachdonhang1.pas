unit Tachdonhang1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls;

type
  TTachdonhang = class(TForm)
    pnTop: TPanel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    Query1DDBH: TStringField;
    Query1DDBH1: TStringField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    QTemp: TQuery;
    btnDelAll: TBitBtn;
    BB7: TBitBtn;
    Query1IsKCLLS: TStringField;
    IsKCLLSChk: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure btnDelAllClick(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    ClickColumnIndex:integer;
  public
    { Public declarations }
  end;

var
  Tachdonhang: TTachdonhang;

implementation

uses SpecImport1, main1, FunUnit,untClipboard;

{$R *.dfm}

procedure TTachdonhang.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TTachdonhang.FormDestroy(Sender: TObject);
begin
  Tachdonhang:=Nil;
end;

procedure TTachdonhang.FormCreate(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('SELECT * FROM DDZLTR');
    SQL.Add('WHERE DDBH='''+SpecImport.qrMain.fieldbyname('DDBH').Value+'''');
    active:=true;
  end;
  BB1.Enabled:=true;
  BB2.Enabled:=true;
  btnDelAll.Enabled:=true;
end;

procedure TTachdonhang.BB6Click(Sender: TObject);
begin
  close();
end;

procedure TTachdonhang.BB1Click(Sender: TObject);
begin
  with Query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
    fieldbyname('DDBH').Value:=SpecImport.qrMain.fieldbyname('DDBH').Value;
  end;
  bb4.enabled:=true;
  bb5.enabled:=true;
  bb7.Enabled:=true;
end;

procedure TTachdonhang.BB5Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  bb4.enabled:=false;
  bb5.enabled:=false;
  bb7.Enabled:=false;
end;

procedure TTachdonhang.BB3Click(Sender: TObject);
begin
  with Query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
  end;
  bb4.enabled:=true;
  bb5.enabled:=true;
  bb7.Enabled:=true;
end;

procedure TTachdonhang.BB2Click(Sender: TObject);
begin
  with Query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
    fieldbyname('YN').Value:=0
  end;
  bb4.enabled:=true;
  bb5.enabled:=true;
  bb7.Enabled:=true;  
end;

procedure TTachdonhang.BB4Click(Sender: TObject);
var i:integer;
begin
  try
  query1.first;
  for i:=1 to query1.RecordCount do
  begin
    case query1.updatestatus of
      usinserted:
      begin
        if (query1.fieldbyname('DDBH').isnull) or (query1.fieldbyname('DDBH1').isnull) then
        begin
        end
         else
           begin
             query1.edit;
             if query1.FieldByName('IsKCLLS').IsNull=true then
             begin
               if IsKCLLSChk.Checked=true then
                  query1.FieldByName('IsKCLLS').Value:='Y'
               else
                  query1.FieldByName('IsKCLLS').Value:='N';
             end;
             query1.FieldByName('USERDATE').Value:=date;
             query1.FieldByName('USERID').Value:=main.edit1.text;
             query1.FieldByName('YN').Value:='1';
             //不領料代表已經成品入庫
             if IsKCLLSChk.Checked=false then
             begin
               with QTemp do
               begin
                 active:=false;
                 sql.Clear;
                 sql.Add('update DDZL set YN=''2'',Flag=''1'' ')  ;
                 sql.Add('where DDZL.DDBH ='''+Query1.fieldbyname('DDBH1').Value+''' and DDZL.YN=''1''');
                 ExecSQL();
               end;
             end else
             begin
               //成品入庫不檢查
               with QTemp do
               begin
                 active:=false;
                 sql.Clear;
                 sql.Add('update DDZL set Flag=''1'' ')  ;
                 sql.Add('where DDZL.DDBH ='''+Query1.fieldbyname('DDBH1').Value+''' and DDZL.YN=''1''');
                 ExecSQL();
               end;
             end;
             UpdateSQL1.apply(ukinsert);
           end;
      end;
      usmodified:
      begin
        if query1.fieldbyname('YN').Value=0 then
        begin
        //
           with QTemp do
           begin
             active:=false;
             sql.Clear;
             sql.Add('update DDZL set YN=''1'',Flag=null ')  ;
             sql.Add('where DDZL.DDBH ='''+Query1.fieldbyname('DDBH1').Value+''' and DDZL.YN=''2''');
             ExecSQL();
           end;
        //
          UpdateSQL1.Apply(ukdelete);
        end
        else
          begin
            query1.edit;
            query1.FieldByName('USERDATE').Value:=date;
            query1.FieldByName('USERID').Value:=main.edit1.text;
            UpdateSQL1.apply(ukmodify);
          end;
        end;
    end;
    query1.next;
  end;
  query1.active:=false;
  query1.cachedupdates:=false;
  query1.requestlive:=false;
  query1.active:=true;
  bb4.enabled:=false;
  bb5.enabled:=false;
  except
    Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
  end;

end;
procedure TTachdonhang.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if Query1.FieldByName('YN').value='0' then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end; 
end;

procedure TTachdonhang.btnDelAllClick(Sender: TObject);
begin
  with Query1 do
  begin
    First;
    cachedupdates:=true;
    requestlive:=true;
    while not Eof do
    begin
      edit;
      fieldbyname('YN').Value:=0;
      Next;
    end;
  end;
  bb4.enabled:=true;
  bb5.enabled:=true;
  bb7.Enabled:=true; 
end;



procedure TTachdonhang.BB7Click(Sender: TObject);
var
  CbBuf: PChar;
  BufSize: Integer;
  Handle: THandle;
  Text:WideString;
  rowList:TStringlist;
  i,j:integer;
begin
 try
   Query1.cachedupdates:=true;
   Query1.requestlive:=true;
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
    for i:=0 to rowList.Count-1 do
    begin
      Query1.Insert;
      Query1.fieldbyname('DDBH').Value:=SpecImport.qrMain.fieldbyname('DDBH').Value;
      if trim(rowList.Strings[i])<>'' then
      begin
         Query1.Fields[1].Value:=rowList.Strings[i];
      end;
      if query1.FieldByName('IsKCLLS').IsNull=true then
      begin
       if IsKCLLSChk.Checked=true then
          query1.FieldByName('IsKCLLS').Value:='Y'
       else
          query1.FieldByName('IsKCLLS').Value:='N';
      end;
    end;
    rowList.Free;
   end;
   BB4.Enabled:=true;
   BB5.Enabled:=true;
 except
   on E:Exception do
    Showmessage(E.Message);
 end;

end;

procedure TTachdonhang.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
