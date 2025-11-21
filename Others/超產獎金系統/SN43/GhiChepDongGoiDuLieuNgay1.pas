unit GhiChepDongGoiDuLieuNgay1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,StrUtils,
  DBGridEhToolCtrls, DynVarsEh, Vcl.Menus, Data.DB, Data.Win.ADODB, MyADOQuery,
  MyADOUpdateSQL, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,DateUtils, Bde.DBTables, Vcl.Grids, ComObj,
  Vcl.Mask, Vcl.DBCtrls, IniFiles;

type
  TGhiChepDongGoiDuLieuNgay = class(TForm)
    Panel2: TPanel;
    Button1: TButton;
    Button5: TButton;
    QTemp: TMyADOQuery;
    DS1: TDataSource;
    Query1: TMyADOQuery;
    Query1NgayThucHien: TDateTimeField;
    Query1KetQua: TIntegerField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1CFMID: TStringField;
    Query1CFMDate: TDateTimeField;
    Query1CFMID1: TStringField;
    Query1CFMDate1: TDateTimeField;
    Query1YN: TStringField;
    Label1: TLabel;
    DTP1: TDateTimePicker;
    DBGridEh2: TDBGridEh;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function GetVietDate(myDate:TDateTime):string;
    function GetVietDateTime(myDate:TDateTime):string;
    function GetTaiwnDateTime(myDate:TDateTime):string;
  end;

var
  GhiChepDongGoiDuLieuNgay: TGhiChepDongGoiDuLieuNgay;
  NDate,sdate,edate:Tdate;

implementation

{$R *.dfm}

uses GhiChepDongGoiDuLieuNgay_Print1;

function TGhiChepDongGoiDuLieuNgay.GetVietDate(myDate:TDateTime):string;
var myYear, myMonth, myDay : Word;
    myHour, myMin, mySec, myMilli : Word;
begin
  decodedatetime(myDate, myYear, myMonth, myDay ,myHour, myMin, mySec, myMilli);
  //result:='Ngày日 '+Format('%.2d',[myDay])+' tháng月 '+Format('%.2d',[myMonth])+' năm年 '+inttostr(myYear);
  result:=Format('%.2d',[myMonth])+' 月 '+inttostr(myYear)+' 年 ';
end;
function TGhiChepDongGoiDuLieuNgay.GetVietDateTime(myDate:TDateTime):string;
var myYear, myMonth, myDay : Word;
    myHour, myMin, mySec, myMilli : Word;
begin
  decodedatetime(myDate, myYear, myMonth, myDay ,myHour, myMin, mySec, myMilli);
  result:=Format('%.2d',[myDay])+'/'+Format('%.2d',[myMonth])+'/'+inttostr(myYear)+' '+Format('%.2d',[myHour])+':'+Format('%.2d',[myMin])+':'+Format('%.2d',[mySec]);
end;

function TGhiChepDongGoiDuLieuNgay.GetTaiwnDateTime(myDate:TDateTime):string;
var myYear, myMonth, myDay : Word;
    myHour, myMin, mySec, myMilli : Word;
begin
  decodedatetime(myDate, myYear, myMonth, myDay ,myHour, myMin, mySec, myMilli);
  result:=inttostr(myYear)+'/'+Format('%.2d',[myMonth])+'/'+Format('%.2d',[myDay])+' '+Format('%.2d',[myHour])+':'+Format('%.2d',[myMin])+':'+Format('%.2d',[mySec]);
end;

procedure TGhiChepDongGoiDuLieuNgay.Button1Click(Sender: TObject);
  var a,b,c :word;
      i,j,d,k, e:integer;
begin
  with query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('select NgayThucHien,UserID,UserDate,CFMID,CFMDate,CFMID1,CFMDate1,YN,CAST(KetQua AS INT) AS KetQua from ITPC_DongGoiDuLieu ');
    sql.add('where NgayThucHien = ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) +''' ');
    sql.add('order by NgayThucHien');
    active:=true;
  end;
end;

procedure TGhiChepDongGoiDuLieuNgay.Button5Click(Sender: TObject);
begin
  if Query1.FieldByName('CFMID').AsString='NO' then
  begin
    Showmessage('Chưa Confirm, không thể in ');
    Exit;
  end;

  GhiChepDongGoiDuLieuNgay_Print:=TGhiChepDongGoiDuLieuNgay_Print.Create(self);
  GhiChepDongGoiDuLieuNgay_Print.quickrep1.prepare;
  GhiChepDongGoiDuLieuNgay_Print.quickrep1.preview;
  GhiChepDongGoiDuLieuNgay_Print.free;
end;

procedure TGhiChepDongGoiDuLieuNgay.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TGhiChepDongGoiDuLieuNgay.FormCreate(Sender: TObject);
var i:integer;
    myYear, myMonth, myDay : Word;
begin
    DTP1.Date := Date;
end;

procedure TGhiChepDongGoiDuLieuNgay.FormDestroy(Sender: TObject);
begin
  GhiChepDongGoiDuLieuNgay:=nil;
end;

end.
