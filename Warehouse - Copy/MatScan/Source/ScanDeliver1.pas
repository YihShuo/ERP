unit ScanDeliver1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, DBCtrls, Buttons,
  ExtCtrls;

type
  TScanDeliver = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    SCSMRKS: TQuery;
    SCSMRKSDDBH: TStringField;
    SCSMRKSCTNO: TStringField;
    SCSMRKSLHLabel: TStringField;
    SCSMRKSXXCC: TStringField;
    SCSMRKSLHXH: TStringField;
    SCSMRKSQty: TIntegerField;
    DS2: TDataSource;
    UpSCSMRKS: TUpdateSQL;
    SCLH: TQuery;
    KCSM: TQuery;
    UpKCSM: TUpdateSQL;
    DS1: TDataSource;
    TKCCL: TTable;
    KCSMZLBH: TStringField;
    KCSMCLBH: TStringField;
    KCSMQty: TFloatField;
    KCSMBARCODE: TStringField;
    KCSMXH: TStringField;
    TKCCLZLBH: TStringField;
    TKCCLCLBH: TStringField;
    TKCCLXH: TStringField;
    TKCCLUSERDATE: TDateTimeField;
    TKCCLUSERID: TStringField;
    DBText2: TDBText;
    TKCCLMATCODE: TStringField;
    TKCCLQty: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanDeliver: TScanDeliver;

implementation

{$R *.dfm}

procedure TScanDeliver.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TScanDeliver.FormCreate(Sender: TObject);
begin
TKCCL.Active:=true;
KCSM.active:=true;
label2.Caption:=inttostr(KCSM.RecordCount); 
end;

procedure TScanDeliver.BB7Click(Sender: TObject);
begin
close;
end;

procedure TScanDeliver.BB3Click(Sender: TObject);
begin
if KCSM.recordcount>0 then
  begin
    UpKCSM.Apply(ukdelete);
    KCSM.delete;
  end;
label2.Caption:=inttostr(KCSM.RecordCount);
end;

procedure TScanDeliver.Edit1KeyPress(Sender: TObject; var Key: Char);
var s,a,b,c,d:string;
begin
if key=#13 then
  begin
    s:=trim(edit1.Text);
    if s='' then
      begin
        showmessage('Have wrong.');
        abort;
      end;

    try
      a:=trim(copy(s,0,pos(' ',s)-1)) ;
      b:=trim(copy(s,pos(' ',s)+1,pos('&',s)-pos(' ',s)-1))  ;
      c:=trim(copy(s,pos('&',s)+1,pos('%',s)-pos('&',s)-1))  ;
      d:=trim(copy(s,pos('%',s)+1,length(s)-pos('%',s)))  ;
      if TKCCL.Locate('MATCODE',vararrayof([trim(edit1.text)]),[]) then
        begin
         // showmessage(a);
          KCSM.last;
          KCSM.append;
          KCSM.fieldbyname('ZLBH').Value:=a;
          KCSM.fieldbyname('CLBH').Value:=b;
          KCSM.fieldbyname('XH').Value:=c;
          KCSM.fieldbyname('Qty').Value:=strtofloat(d);
          KCSM.fieldbyname('BARCODE').Value:=s;
          KCSM.post;
          UpKCSM.Apply(ukinsert);
          edit1.Text:='';
        end
        else
          begin
            edit1.text:='';
          end;
      label2.Caption:=inttostr(KCSM.RecordCount);
    except
      edit1.text:='';
      showmessage('Have wrong, pls check the order.');
    end;
  end;

end;

end.
