unit LabelFinished_Out1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DBTables, DB, StdCtrls, DBCtrls, Buttons,
  ExtCtrls;

type
  TLabelFinished_Out = class(TForm)
    Panel1: TPanel;
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
    SCSMCK: TQuery;
    UpSCSMCK: TUpdateSQL;
    DS1: TDataSource;
    TDDXXZL: TTable;
    DBGrid1: TDBGrid;
    SCSMCKDDBH: TStringField;
    SCSMCKCTNO: TStringField;
    SCSMCKUSERDate: TDateTimeField;
    SCSMCKUSERID: TStringField;
    SCSMCKYN: TStringField;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BB3Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LabelFinished_Out: TLabelFinished_Out;

implementation

{$R *.dfm}

procedure TLabelFinished_Out.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TLabelFinished_Out.FormCreate(Sender: TObject);
begin
TDDXXZL.Active:=true;
SCSMCK.active:=true;
label2.Caption:=inttostr(SCSMCK.RecordCount);
end;

procedure TLabelFinished_Out.Edit1KeyPress(Sender: TObject; var Key: Char);
var s:string;
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
      if TDDXXZL.Locate('DDBH',vararrayof([trim(copy(s,0,pos(' ',s)-1))]),[]) then
        begin
          SCSMCK.last;
          SCSMCK.append;
          SCSMCK.fieldbyname('DDBH').Value:=trim(copy(s,0,pos(' ',s)-1));
          SCSMCK.fieldbyname('CTNO').Value:=trim(copy(s,pos(' ',s)+1,length(s)-pos(' ',s)));
          SCSMCK.fieldbyname('USERDate').Value:=Date;
          SCSMCK.post;
          UpSCSMCK.Apply(ukinsert);
          edit1.Text:='';
        end
        else
          begin
            edit1.text:='';
          end;
      label2.Caption:=inttostr(SCSMCK.RecordCount);
    except
      edit1.text:='';
      showmessage('Have wrong, pls check the order.');
    end;
  end;
end;

procedure TLabelFinished_Out.BB3Click(Sender: TObject);
begin
if SCSMCK.recordcount>0 then
  begin
    UpSCSMCK.Apply(ukdelete);
    SCSMCK.delete;
  end;
label2.Caption:=inttostr(SCSMCK.RecordCount);
end;

procedure TLabelFinished_Out.BB7Click(Sender: TObject);
begin
close;
end;

end.
