unit LabelFinished1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, Buttons, Grids, DBGrids, ExtCtrls,dateutils;

type
  TLabelFinished = class(TForm)
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    bbt6: TBitBtn;
    DDZL: TQuery;
    DDZLDDBH: TStringField;
    DDZLXieXing: TStringField;
    DDZLSheHao: TStringField;
    DDZLARTICLE: TStringField;
    DDZLCCGB: TStringField;
    DDZLKHBH: TStringField;
    DDZLKHPO: TStringField;
    DDZLXieMing: TStringField;
    DDZLXXCC: TStringField;
    DS1: TDataSource;
    Label1: TLabel;
    CBX2: TComboBox;
    Label7: TLabel;
    CBX3: TComboBox;
    DDZLPairs: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LabelFinished: TLabelFinished;
  sdate,edate:Tdate;

implementation

uses LabelFinished_Scan1;

{$R *.dfm}

procedure TLabelFinished.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
free;
end;

procedure TLabelFinished.Button1Click(Sender: TObject);
var y,m:word;
begin
if (CBX2.text='')or (CBX3.text='')  then
  begin
    showmessage('You have to select the year and month first.');
    abort;
  end;
y:=strtoint(CBX2.Text);
m:=strtoint(CBX3.Text);
if (y>2999) or (y<1900) then
  begin
    showmessage('Pls key in right year');
    abort;
  end;
if (m=0) or (m>12) then
  begin
    showmessage('Pls key in right month');
    abort;
  end;
sdate:=encodedate(y,m,1);
edate:=endofthemonth(sdate);

with DDZL do
  begin
    active:=false;
    sql.clear;
    sql.add('select DDZL.* ,XXZl.XieMing,XXZl.CCGB as XXCC ');
    sql.add('from DDZL');
    sql.add('left join XXZL on XXZl.XieXing=DDZl.XieXing');
    sql.add(' and XXZL.SheHao=DDZl.SheHao');
    sql.add('left join ZLZL on ZLZL.ZLBH=DDZL.ZLBH ');
    sql.add('where DDZL.DDBH like '+''''+edit1.text+'%'+'''');
    sql.add(' and XXZl.XieMing like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add(' and DDZl.KHBH like '+''''+edit3.Text+'%'+'''');
    sql.add('and DDZL.DDZT='+''''+'Y'+'''');
    sql.add('and ZLZL.CQDH='+''''+'LTY'+'''');
    sql.add('and Convert(smalldatetime,convert(varchar,DDZL.ShipDate)) between ');
    sql.add(''''+formatdatetime('yyyy/mm/dd',sdate)+'''');
    sql.add(' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
    sql.add('order by DDZL.DDBH');
    active:=true;
  end; 
BBt1.Enabled:=true;
BBt2.Enabled:=true;
BBt3.Enabled:=true;
BBt4.Enabled:=true;

end;

procedure TLabelFinished.BB7Click(Sender: TObject);
begin
close;
end;

procedure TLabelFinished.BBT1Click(Sender: TObject);
begin
DDZL.First;
end;

procedure TLabelFinished.BBT2Click(Sender: TObject);
begin
DDZl.Prior;
end;

procedure TLabelFinished.BBT3Click(Sender: TObject);
begin
DDZL.Next;
end;

procedure TLabelFinished.BBT4Click(Sender: TObject);
begin
DDZL.Last;
end;

procedure TLabelFinished.DBGrid1DblClick(Sender: TObject);
begin
if (DDZL.Active and (DDZL.recordcount>0) ) then
  begin
    LabelFinished_Scan:=TLabelFinished_Scan.create(self);
    LabelFinished_Scan.show;
  end;
end;

end.
