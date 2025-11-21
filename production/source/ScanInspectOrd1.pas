unit ScanInspectOrd1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Grids, DBGrids, ComCtrls, StdCtrls, Buttons, funUnit,
  ExtCtrls,dateutils, GridsEh, DBGridEh;

type
  TScanInspectOrd = class(TForm)
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
    bbt5: TBitBtn;
    bbt6: TBitBtn;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    CBX4: TComboBox;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    DBGrid1: TDBGridEh;
    YWDD: TQuery;
    DS1: TDataSource;
    UpZL: TUpdateSQL;
    Qtemp: TQuery;
    YWDDDDBH: TStringField;
    YWDDYSBH: TStringField;
    YWDDXieXing: TStringField;
    YWDDSheHao: TStringField;
    YWDDXieMing: TStringField;
    YWDDKHPO: TStringField;
    YWDDCountry: TStringField;
    YWDDKHDDBH1: TStringField;
    YWDDQty: TFloatField;
    YWDDArticle: TStringField;
    YWDDETD: TDateTimeField;
    YWDDInspectDate: TDateTimeField;
    YWDDXXCC: TStringField;
    YWDDDDCC: TStringField;
    YWDDKFJC: TStringField;
    YWDDInspectQty: TIntegerField;
    YWDDInUserID: TStringField;
    YWDDInUserDate: TDateTimeField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure YWDDNewRecord(DataSet: TDataSet);
    procedure BB7Click(Sender: TObject);
 private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanInspectOrd: TScanInspectOrd;
  sdate,edate,NDate:TDate;

implementation

uses main1;

{$R *.dfm}

procedure TScanInspectOrd.FormDestroy(Sender: TObject);
begin
  ScanInspectOrd:=nil;
end;

procedure TScanInspectOrd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if YWDD.requestlive  then
  begin
    messagedlg('You have to save data  first.',mtwarning,[mbyes],0);
    action:=canone;
  end else
    action:=cafree;
end;

procedure TScanInspectOrd.Button1Click(Sender: TObject);
begin
  sdate:=DTP1.Date;
  edate:=DTP2.Date;
  with YWDD do
  begin
    active:=false;
    sql.Clear;
    sql.add('select YWDD.DDBH, YWDD.YSBH,DDZL.XieXing,DDZL.SheHao, XXZL.XieMing,DDZL.KHPO,LBZLS.YWSM as Country,YWDD.KHDDBH1,');
    sql.add('       YWDD.Qty,DDZL.Article,YWDD.ETD,YWDD.InspectDate,XXZL.CCGB as XXCC,DDZL.CCGB as DDCC,KFZL.KFJC,YWDD.InspectQty,YWDD.InUSerID,YWDD.InUserdate');
    sql.add('from YWDD');
    sql.add('left join DDZL on YWDD.YSBH=DDZl.DDBH ');
    sql.add('left join ZLZL  on ZLZL.DDBH=DDZL.DDBH');
    sql.add('left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao');
    sql.add('left join LBZLS on LBZLS.LB='+''''+'06'+''''+' and LBZLS.LBDH=DDZL.DDGB');
    sql.add('left join KFZL on KFZL.KFDH=DDZL.KHBH ');
    sql.Add('where DDZL.DDBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and KFZL.KFJC like '+''''+'%'+edit2.text+'%'+'''');
    sql.add('      and convert(smalldatetime,convert(varchar,YWDD.ETD,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''''+'and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('      and YWDD.GSBH='+''''+main.edit2.text+'''');
    sql.add('order by YWDD.DDBH');
    active:=true;
  end;
  BB4.Enabled:=true;
  BBT6.Enabled:=true;
end;

procedure TScanInspectOrd.FormCreate(Sender: TObject);
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
  end;   
  DTP1.date:=startofthemonth(NDate)+5;
  DTP2.date:=startofthemonth(incmonth(NDate,1))+4;
end;

procedure TScanInspectOrd.BB4Click(Sender: TObject);
begin
  with YWDD do
  begin
    if (now-fieldbyname('InUserDate').Value<=2) then
    begin
      cachedupdates:=true;
      requestlive:=true;
      BB5.Enabled:=true;
      BB6.Enabled:=true;
    end else
    begin
      showmessage('Date>2, can not modify!');
      BB5.Enabled:=false;
      BB6.Enabled:=false;
    end;
  end;
end;

procedure TScanInspectOrd.BB5Click(Sender: TObject);
begin
  with YWDD do
  begin
    first;
    while not eof do
      begin
        if updatestatus=usmodified then
          begin
          //
            with Qtemp do
            begin
              active:=false;
              sql.Clear;
              sql.Add('select * from (');
              sql.Add('select YWDD.YSBH as DDBH,SUM(Qty) as Qty from YWDD where YWDD.YSBH like '''+YWDD.fieldbyname('YSBH').AsString+'%'' Group by YWDD.YSBH ) YWDD');
              sql.Add('left join (select smdd.ysbh as DDBH,sum(smddss.Qty*smddss.okCTS)as Aqty from SMDDSS left join SMDD on SMDDSS.DDBH=SMDD.DDBH and SMDDSS.GXLB=SMDD.GXLB');
              sql.Add('where smddss.DDBH like '''+YWDD.fieldbyname('YSBH').AsString+'%'' and SMDDSS.GXLB=''A'' group by SMDD.YSBH)SMDDSS on SMDDSS.DDBH=YWDD.DDBH');
              sql.Add('left join (select ysbh,okdate from smdd where smdd.ysbh like '''+YWDD.fieldbyname('YSBH').AsString+'%'' and smdd.gxlb=''A'' group by ysbh,okdate) smdd on smdd.ysbh=ywdd.DDBH');
              sql.Add('left join (select DDBH,Flag from DDZL where DDZL.DDBH like '''+YWDD.fieldbyname('YSBH').AsString+'%'' group by DDBH,Flag) DDZL on DDZL.DDBH=YWDD.DDBH');
              sql.Add('where (YWDD.DDBH like '''+YWDD.fieldbyname('YSBH').AsString+'%'' and YWDD.Qty=SMDDSS.Aqty) or (smdd.okdate is not null) or (Flag=''1'')');
              active:=true;
            end;
            if Qtemp.RecordCount=0 then
            begin
              showmessage('Don Hang '''+YWDD.fieldbyname('DDBH').AsString+''' Cong Doan Go Chua Hoan Thanh');
              abort;
            end;
            if  fieldbyname('InspectDate').Value<Date() then
            begin
              showmessage('Don Hang '''+YWDD.fieldbyname('DDBH').AsString+''' kiem hang khong duoc it hon hom ngay');
              abort;
            end;
            //
            if not fieldbyname('InspectDate').IsNull then
            begin
                edit;
                fieldbyname('InUserID').Value:=main.Edit1.Text;
                fieldbyname('InUserDate').Value:=now;
                fieldbyname('InspectQty').value:=fieldbyname('Qty').value;
                post;
             end else
             begin
                if not fieldbyname('InUserDate').IsNull then
                begin
                  if ((YWDD.FieldByName('InspectQty').IsNull) or (YWDD.FieldByName('InspectQty').Asstring='')) then
                  begin
                    showmessage('The InspectQty can not be empty.');
                    abort;
                  end else
                  begin
                    edit;
                    fieldbyname('InUserID').Value:=main.Edit1.Text;
                    fieldbyname('InUserDate').Value:=now;
                    post;
                  end;
                end;
             end;
             UpZL.Apply(ukmodify);
          end;
        next;
      end;
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  BB5.enabled:=false;
  BB6.Enabled:=false;
end;

procedure TScanInspectOrd.BB6Click(Sender: TObject);
begin
  with YWDD do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  BB5.enabled:=false;
  BB6.Enabled:=false;
end;

procedure TScanInspectOrd.YWDDNewRecord(DataSet: TDataSet);
begin
  abort;
end;

procedure TScanInspectOrd.BB7Click(Sender: TObject);
begin
  close;
end;
end.
