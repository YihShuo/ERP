unit ScanCheck;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, DB, DBTables, GridsEh, DBGridEh,Comobj,DateUtils,
  PrnDbgeh;

type
  TScanCheck1 = class(TForm)
    Panel1: TPanel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DTP3: TDateTimePicker;
    DTP4: TDateTimePicker;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1YSBH: TStringField;
    Query1QRCode: TStringField;
    Query1WIn: TIntegerField;
    Query1InDate: TDateTimeField;
    Query2: TQuery;
    PrintDBGridEh1: TPrintDBGridEh;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PrintDBGridEh1AfterPrint(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanCheck1: TScanCheck1;

implementation

uses main1;

{$R *.dfm}

procedure TScanCheck1.FormDestroy(Sender: TObject);
begin
ScanCheck1:=nil;
end;


procedure TScanCheck1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
ScanCheck1:=nil;
end;

procedure TScanCheck1.FormShow(Sender: TObject);
begin
  DTP1.Date := Now;
end;


procedure TScanCheck1.Button1Click(Sender: TObject);
begin
 with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select YSBH,  QRCode, Win, InDate from TB_DD.dbo.SMDDScanOut');
    sql.add('where TB_DD.dbo.SMDDScanOut.YSBH like '+''''+'%'+Edit1.Text+'%'+'''');
    sql.add('      and InDate between ');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+' '+formatdatetime('HH:mm:ss',DTP3.Time)+'''');
    sql.add('           and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+' '+formatdatetime('HH:mm:ss',DTP4.Time)+'''');
    sql.add('order by SMDDScanOut.QRCode,SMDDScanOut.InDate');
    active:=true;
  end;
end ;



procedure TScanCheck1.FormCreate(Sender: TObject);
var NDate:TDate;
begin
with Query2 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').value;
    active:=false;
  end;
DTP1.date:=NDate;
DTP3.time:=startoftheday(NDate);
DTP2.date:=NDate;
DTP4.time:=endoftheday(NDate);
end;

procedure TScanCheck1.PrintDBGridEh1AfterPrint(Sender: TObject);
begin
PrintDBGridEh1.SetSubstitutes(['%[TDatetime]',formatdatetime('yyyy/MM/dd',DTP1.Date)+' '+formatdatetime('HH:mm:ss',DTP2.Time)+'~~'+formatdatetime('yyyy/MM/dd',DTP3.Date)+' '+formatdatetime('HH:mm:ss',DTP4.Time)]);
end;

procedure TScanCheck1.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
 if  query1.active  then
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
          for   i:=0   to   query1.fieldcount-1   do
            begin
                eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
            end;

          query1.First;
          j:=2;
          while   not   query1.Eof   do
            begin
              for   i:=0   to  query1.fieldcount-1  do
              begin
                eclApp.Cells(j,i+1):=query1.Fields[i].Value;
              end;
            query1.Next;
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

end.
