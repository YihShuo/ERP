unit ScanInSelect1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, GridsEh, DBGridEh, ExtCtrls, DB, DBTables,
  Menus,comobj;

type
  TScanInSelect = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    DTP1: TDateTimePicker;
    Label4: TLabel;
    DTP2: TDateTimePicker;
    Button1: TButton;
    YWDD: TQuery;
    DS1: TDataSource;
    YWCP: TQuery;
    DS2: TDataSource;
    YWDDDDBH: TStringField;
    YWDDXieMing: TStringField;
    YWDDQty: TFloatField;
    YWDDCTS: TIntegerField;
    YWDDokCTS: TIntegerField;
    YWDDokQty: TIntegerField;
    YWDDNow_CTS: TIntegerField;
    YWDDNow_Qty: TIntegerField;
    YWDDCountry: TStringField;
    YWDDETD: TDateTimeField;
    YWDDKFJC: TStringField;
    YWDDArticle: TStringField;
    YWDDKHPO: TStringField;
    UPYWCP: TUpdateSQL;
    YWCPCARTONBAR: TStringField;
    YWCPQty: TIntegerField;
    YWCPCartonNO: TIntegerField;
    YWCPTSelect: TIntegerField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    Qtemp: TQuery;
    N2: TMenuItem;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGridEh2: TDBGridEh;
    CheckBox1: TCheckBox;
    YWDDSB: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure YWCPNewRecord(DataSet: TDataSet);
    procedure N1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure N2Click(Sender: TObject);
    procedure YWCPAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanInSelect: TScanInSelect;

implementation

{$R *.dfm}

procedure TScanInSelect.FormDestroy(Sender: TObject);
begin
ScanInSelect:=nil;
end;

procedure TScanInSelect.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TScanInSelect.Button1Click(Sender: TObject);
begin

with YWDD do
  begin
    active:=false;
    sql.clear;
    sql.add('select YWDD.DDBH,XXZL.XieMing,DDZL.KHPO,YWDD.Qty,YWBZPOS.CTS ,YWCP2.okCTS,YWCP2.okQty,YWCP.Now_CTS,');
    sql.add('       YWCP.Now_Qty,LBZLS.YWSM as Country,DDZL.Article,YWDD.ETD,KFZL.KFJC,YWCP3.SB');
    sql.add('from YWDD');
    sql.add('left join DDZL on YWDD.YSBH=DDZl.DDBH');
    sql.add('left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao  ');
    sql.add('left join LBZLS on LBZLS.LB='+''''+'06'+''''+' and LBZLS.LBDH=DDZL.DDGB');
    sql.add('left join KFZL on KFZL.KFDH=DDZL.KHBH ');
    sql.add('left join (select YWBZPOS.DDBH,sum(YWBZPOS.CTS) as CTS');
    sql.add('           from (select distinct DDBH,XH,CTS from YWBZPOS');
    sql.add('                 where DDBH like '+''''+edit1.Text+'%'+''''+') YWBZPOS ');
    sql.add('                 group by YWBZPOS.DDBH) YWBZPOS on YWBZPOS.DDBH=YWDD.DDBH');
    sql.add('left join (select  DDBH ,count(InCS) as Now_CTS,sum(Qty) as Now_Qty from YWCP ');
    sql.add('           where convert(smalldatetime,convert(varchar,InDate,111)) between ');
    sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.add('           group by DDBH ) YWCP on YWCP.DDBH=YWDD.DDBH ');
    sql.add('left join (select  DDBH ,count(InCS) as okCTS,sum(Qty) as okQty from YWCP ');
    sql.add('           where InCS is not null ');
    sql.add('           group by DDBH ) YWCP2 on YWCP2.DDBH=YWDD.DDBH ');
    sql.add('left join (select DDBH,max(SB) as SB from YWCP ');
    sql.add('           group by DDBH )YWCP3 on YWCP3.DDBH=YWDD.DDBH ');
    sql.add('where DDZL.DDBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and KFZL.KFJC like '+''''+'%'+edit2.text+'%'+'''');
    sql.add('      and YWBZPOS.DDBH is not null ');
    sql.add('order by YWDD.DDBH');
    active:=true;
  end;

if YWDD.recordcount>0 then
  begin
    with YWCP do
      begin
        active:=false;
        sql.Clear;
        sql.add('select CARTONBAR,Qty,CartonNO,0 TSelect ');
        sql.add('from YWCP ');
        sql.add('where DDBH=:DDBH ');
        if not checkbox1.Checked then
          begin
            sql.add('      and convert(smalldatetime,convert(varchar,InDate,111)) between ');
            sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
          end
          else
            begin
              sql.Add('        and InDate is not null ');
            end;
        sql.add('order by CARTONBAR ');
        active:=true;
      end;
  end;
end;

procedure TScanInSelect.YWCPNewRecord(DataSet: TDataSet);
begin
abort;
end;

procedure TScanInSelect.N1Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
 begin
if not YWCP.Active then
  abort;
if YWCP.recordcount=0 then
  abort;
  if  YWCP.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('系统没有安装Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   YWCP.fieldcount-1   do
          begin
              eclApp.Cells(4,i+1):=YWCP.fields[i].FieldName;
              eclApp.Cells.item[4,i+1].font.size:='8';
          end;

        YWCP.First;
        j:=2;
        while   not   YWCP.Eof   do
          begin
            eclApp.Cells(j+3,1):=YWCP.Fields[0].Value;
            eclApp.Cells.item[j+3,1].font.size:='8';
            if YWCP.fieldbyname('TSelect').value=1 then
              begin
                eclApp.Cells.item[j+3,1].font.color:=clred;
                with Qtemp do
                  begin
                    active:=false;
                    sql.Clear;
                    sql.add('update YWCP ');
                    sql.add('set MEMO='+''''+'Y/'+''''+'+MEMO');
                    sql.add('where MEMO is not null ');
                    sql.add('      and CARTONBAR='+''''+YWCP.fieldbyname('CARTONBAR').Value +'''');
                    sql.add('update YWCP   ');
                    sql.add('set MEMO='+''''+'Y/'+''''+'+MEMO');
                    sql.add('where MEMO is null ');
                    sql.add('      and CARTONBAR='+''''+YWCP.fieldbyname('CARTONBAR').Value +'''');
                    execsql;
                    active:=false;
                  end;
              end;
          inc(j);
          YWCP.Next;
        end;
      eclapp.columns.autofit;
      eclApp.Visible:=True;
      showmessage('Succeed');
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure TScanInSelect.FormCreate(Sender: TObject);
begin
DTP1.Date:=date-7;
DTP2.Date:=date;
end;

procedure TScanInSelect.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
if YWCP.FieldByName('TSelect').value<>0 then
  begin
    DBGrideh2.canvas.font.color:= clred ;
  end;
end;

procedure TScanInSelect.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

if YWDD.FieldByName('SB').value>='2' then
  begin
    DBGrideh1.canvas.font.color:= clred ;
  end;
end;

procedure TScanInSelect.N2Click(Sender: TObject);
var p:string;
begin
p:=inputbox('Key in Pairs.','Pairs:','10');
end;

procedure TScanInSelect.YWCPAfterOpen(DataSet: TDataSet);
begin
if YWCP.recordcount>0 then
  begin
    N1.Enabled:=true;
    N2.Enabled:=true;
  end
  else
    begin   
      N1.Enabled:=false;
      N2.Enabled:=false;
    end;
end;

end.
