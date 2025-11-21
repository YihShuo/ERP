unit ScanInspect_hand1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TScanInspect_hand = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    YWDD: TQuery;
    YWDDDDBH: TStringField;
    YWDDArticle: TStringField;
    YWDDXieMing: TStringField;
    YWDDQty: TFloatField;
    YWDDCTS: TIntegerField;
    DS1: TDataSource;
    DS2: TDataSource;
    YWCP: TQuery;
    YWCPCARTONBAR: TStringField;
    YWCPQty: TIntegerField;
    YWCPSB: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh2DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanInspect_hand: TScanInspect_hand;

implementation

uses ScanInspect1, main1;

{$R *.dfm}

procedure TScanInspect_hand.FormDestroy(Sender: TObject);
begin
ScanInspect_hand:=nil;
end;

procedure TScanInspect_hand.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
YWDD.active:=false;
YWCP.active:=false;
end;

procedure TScanInspect_hand.Button1Click(Sender: TObject);
begin

if length(edit1.Text)<6 then
  begin
    showmessage('Not enough for condiction.');
    abort;
  end;
with YWDD do
  begin
    active:=false;
    sql.clear;
    sql.add('select YWDD.DDBH,XXZL.Article,XXZL.XieMing,YWDD.Qty,YWBZPOS.CTS ');
    sql.add('from YWDD');
    sql.add('left join DDZL on YWDD.YSBH=DDZl.DDBH');
    sql.add('left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao  ');
    sql.add('left join (select YWBZPOS.DDBH,sum(YWBZPOS.CTS) as CTS');
    sql.add('           from (select distinct DDBH,XH,CTS from YWBZPOS');
    sql.add('                 where DDBH like '+''''+edit1.Text+'%'+''''+') YWBZPOS ');
    sql.add('                 group by YWBZPOS.DDBH) YWBZPOS on YWBZPOS.DDBH=YWDD.DDBH');
    sql.add('where DDZL.DDBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and YWBZPOS.DDBH is not null ');
    sql.add('order by YWDD.DDBH');
    active:=true;
  end;
YWCP.Active:=true;
end;

procedure TScanInspect_hand.DBGridEh1DblClick(Sender: TObject);
var s:string;
begin
if YWCP.recordcount=0 then
  begin
    showmessage('Pls select data first.');
    abort;
  end;
with YWCP do
  begin
    first;
    while not eof do
      begin
        s:=YWCP.fieldbyname('CARTONBAR').Value;
        try
          if not ScanInspect.ScanData.Locate('CARTONBAR',s,[]) then
            begin
              if ScanInspect.YWCP.Locate('CARTONBAR',s,[]) then
                begin
                  ScanInspect.Scandata.last;
                  ScanInspect.Scandata.append;
                  ScanInspect.Scandata.fieldbyname('CARTONBAR').Value:=s;
                  ScanInspect.Scandata.fieldbyname('DDBH').Value:=trim(copy(s,0,pos(' ',s)-1));
                  ScanInspect.Scandata.fieldbyname('XH').Value:=ScanInspect.YWCP.fieldbyname('XH').value;
                  ScanInspect.Scandata.fieldbyname('Qty').Value:=ScanInspect.YWCP.fieldbyname('Qty').Value;
                  ScanInspect.Scandata.post;
                  ScanInspect.label1.Caption:=inttostr(ScanInspect.Scandata.RecordCount);
                  ScanInspect.BB2.Enabled:=true;
                  ScanInspect.BB3.Enabled:=true;
                end
                else
                  begin
                    windows.beep(1500,500);
                    windows.beep(1500,500);
                    windows.beep(1500,500);
              end;
            end
            else
              begin
                windows.beep(1500,500);
                windows.beep(1500,500);
                windows.beep(1500,500);
              end;
        except
          windows.beep(1500,500);
          windows.beep(1500,500);
          windows.beep(1500,500);
        end;
        next;
      end;
  end;

end;

procedure TScanInspect_hand.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin

if key=#13 then
  DBGrideh1dblclick(nil);
end;

procedure TScanInspect_hand.DBGridEh2KeyPress(Sender: TObject;
  var Key: Char);
begin

if key=#13 then
  DBGrideh2dblclick(nil);
end;

procedure TScanInspect_hand.DBGridEh2DblClick(Sender: TObject);
var s:string;
begin
if YWCP.recordcount=0 then
  begin
    showmessage('Pls select data first.');
    abort;
  end;
with YWCP do
  begin
    s:=YWCP.fieldbyname('CARTONBAR').Value;
    try
      if not ScanInspect.ScanData.Locate('CARTONBAR',s,[]) then
        begin
          if ScanInspect.YWCP.Locate('CARTONBAR',s,[]) then
            begin
              ScanInspect.Scandata.last;
              ScanInspect.Scandata.append;
              ScanInspect.Scandata.fieldbyname('CARTONBAR').Value:=s;
              ScanInspect.Scandata.fieldbyname('DDBH').Value:=trim(copy(s,0,pos(' ',s)-1));
              ScanInspect.Scandata.fieldbyname('XH').Value:=ScanInspect.YWCP.fieldbyname('XH').value;
              ScanInspect.Scandata.fieldbyname('Qty').Value:=ScanInspect.YWCP.fieldbyname('Qty').Value;
              ScanInspect.Scandata.post;
              ScanInspect.label1.Caption:=inttostr(ScanInspect.Scandata.RecordCount);
              ScanInspect.BB2.Enabled:=true;
              ScanInspect.BB3.Enabled:=true;
            end
            else
              begin
                windows.beep(1500,500);
                windows.beep(1500,500);
                windows.beep(1500,500);
              end;
        end
        else
          begin
            windows.beep(1500,500);
            windows.beep(1500,500);
            windows.beep(1500,500);
          end;
    except
      windows.beep(1500,500);
      windows.beep(1500,500);
      windows.beep(1500,500);
    end;
  end;

end;

procedure TScanInspect_hand.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
