unit QCcheckinbox1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids,
  GridsEh, DBGridEh,StrUtils;

type
  TQCCheckinbox = class(TForm)
    Panel3: TPanel;
    Label1: TLabel;
    Panel1: TPanel;
    Edit1: TEdit;
    ScanData: TQuery;
    DS1: TDataSource;
    Qtemp: TQuery;
    DBGridEh2: TDBGridEh;
    Button1: TButton;
    Edit3: TEdit;
    Label2: TLabel;
    Edit4: TEdit;
    ScanDataDDBH: TStringField;
    ScanDataDDCC: TStringField;
    ScanDataInboxBar: TStringField;
    ScanDataQty: TIntegerField;
    ScanDataPOSqty: TIntegerField;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
   FScanCount: Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QCCheckinbox: TQCCheckinbox;

implementation

{$R *.dfm}

procedure TQCCheckinbox.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TQCCheckinbox.FormDestroy(Sender: TObject);
begin
  QCCheckinbox:=nil;
end;

procedure TQCCheckinbox.Edit1KeyPress(Sender: TObject; var Key: Char);
var s:string;
 CurrentQty, MaxQty: Integer;
begin
  if key=#13 then
  begin
  {Inc(FScanCount);
  if  FScanCount =8 then
  begin
        with ScanData do
        begin
          active:=false;
          sql.Clear;
          SQL.Add(' if object_id(''tempdb..#YWBZPOS'') is not null');
          SQL.Add(' begin drop table #YWBZPOS end');
          ExecSQL;
        end;
       edit1.text:='';
       edit3.text:='';
       edit4.text:='';
       FScanCount := 0;
       abort;
  end; }
    if (Trim(edit3.Text) = '') then
      begin
        with Qtemp do
          begin
          active:=false;
          sql.Clear;
          sql.add('select CARTONBAR,XH,Qty,LPNBarCode,DDBH ');
          sql.add('from YWCP');
          sql.add('where CARTONBAR ='''+Edit1.text+'''');
          sql.add('order by  CartonBar');
          active:=true;
          end;
        if Qtemp.Locate('LPNBarcode',RightStr(edit1.Text,15),[]) then
        begin
        s:=Qtemp.fieldByName('DDBH').AsString;
        end else
        begin
        s:=trim(edit1.Text);
        edit3.text:=Qtemp.fieldByName('DDBH').AsString;
        edit4.text:=Qtemp.fieldByName('XH').AsString;
        end;
        if s='' then
        begin
        showmessage('Have wrong.');
        abort;
        end;

         with ScanData do
        begin
          active:=false;
          sql.Clear;
          SQL.Add(' if object_id(''tempdb..#YWBZPOS'') is not null');
          SQL.Add(' begin drop table #YWBZPOS end');
          sql.add(' select distinct YWBZPOS.DDBH,YWBZPOS.DDCC,YWCPLH.InboxBar, 0 as Qty, YWBZPOS.Qty as POSqty   into #YWBZPOS');
          sql.add(' from YWBZPOS');
          sql.add(' left join YWDD on YWBZPOS.DDBH=YWDD.DDBH');
          sql.add(' left join DDZl on DDZl.DDBH=YWDD.YSBH');
          sql.add(' left join ZLZLS on ZLZLS.ZLCC=YWBZPOS.DDCC and DDZL.ZLBH=ZLZLS.ZLBH');
          sql.add(' left join YWCPLH on YWCPLH.XXCC=ZLZLS.XXCC');
          sql.add(' and YWCPLH.XieXing=DDZL.XieXing and YWCPLH.SheHao=DDZL.SheHao');
          sql.add(' left join ywcp on YWCP.DDBH=ddzl.DDBH and YWCP.XH=YWBZPOS.XH');
          sql.add(' where YWBZPOS.DDBH ='''+Edit3.text+'''');
          sql.add(' and YWBZPOS.XH='''+Edit4.text+''' ');
          sql.add(' select * from #YWBZPOS');
          active:=true;
          edit1.text:=''
        end;
      end else
      begin
      with Qtemp do
        begin
          active:=false;
          sql.Clear;
          SQL.Text := 'select * from #YWBZPOS where InboxBar='''+Edit1.text+''' ';
          Open;
          if not IsEmpty then
          begin
          CurrentQty := FieldByName('Qty').AsInteger;
          MaxQty := FieldByName('POSqty').AsInteger;
          end;
          if (CurrentQty + 1) <= MaxQty then
            with  ScanData do
            begin
              sql.Add(' update #YWBZPOS set Qty = Qty +1 where InboxBar='''+Edit1.text+''' ');
              ExecSQL;
              sql.Clear;
              sql.add(' select * from #YWBZPOS');
              active:=true;
              edit1.text:=''
            end else
            begin
            ShowMessage('So luong sai, kiem tra lai');
            edit1.text:='';
            Abort;
            end;
        end;
    end;
   end;
end;
procedure TQCCheckinbox.FormCreate(Sender: TObject);
begin
 FScanCount := 0;
end;

procedure TQCCheckinbox.Button1Click(Sender: TObject);
begin
       with ScanData do
        begin
          active:=false;
          sql.Clear;
          SQL.Add(' if object_id(''tempdb..#YWBZPOS'') is not null');
          SQL.Add(' begin drop table #YWBZPOS end');
          ExecSQL;
        end;
       edit1.text:='';
       edit3.text:='';
       edit4.text:='';
       FScanCount := 0;
end;

end.
