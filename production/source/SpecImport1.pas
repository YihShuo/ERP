unit SpecImport1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DBTables, DB, Buttons, StdCtrls, Grids, DBGrids, ExtCtrls,
  dateutils, GridsEh, DBGridEh, ComCtrls,comobj;

type
  TSpecImport = class(TForm)
    pnBottom: TPanel;
    gdMain: TDBGridEh;
    pnMiddle: TPanel;
    lbOrdNo: TLabel;
    lbArticle: TLabel;
    edDDBH: TEdit;
    edArticle: TEdit;
    pnTop: TPanel;
    bnInsert: TBitBtn;
    bnDelete: TBitBtn;
    bnModify: TBitBtn;
    bnSave: TBitBtn;
    bnCancel: TBitBtn;
    bnExit: TBitBtn;
    bnQuery: TBitBtn;
    bnFirst: TBitBtn;
    bnPrior: TBitBtn;
    bnNext: TBitBtn;
    bnLast: TBitBtn;
    bnPrint: TBitBtn;
    bnExcel: TBitBtn;
    qrMain: TQuery;
    dsMain: TDataSource;
    udMain: TUpdateSQL;
    qrMainDDBH: TStringField;
    qrMainGSBH: TStringField;
    qrMainXieXing: TStringField;
    qrMainSheHao: TStringField;
    qrMainARTICLE: TStringField;
    qrMainCCGB: TStringField;
    qrMainKHPO: TStringField;
    qrMainDDZT: TStringField;
    qrMainShipDate: TDateTimeField;
    qrMainPairs: TIntegerField;
    qrMainXieMing: TStringField;
    qrMainDDGB_1: TStringField;
    qrMainKFJC: TStringField;
    qrMainKHBH: TStringField;
    qrMainBB: TStringField;
    qrMainVersion: TSmallintField;
    qrMainTrader: TStringField;
    qrMainTraderPO: TStringField;
    qrMainDDLB: TStringField;
    qrMainCPLB: TStringField;
    qrMainBZFS: TStringField;
    qrMainDest: TStringField;
    qrMainDDGB: TStringField;
    qrMainDDRQ: TDateTimeField;
    qrMainJYTJ: TStringField;
    qrMainFKTJ: TStringField;
    qrMainTotals: TFloatField;
    qrMainZLBH: TStringField;
    qrMainGSDH: TStringField;
    qrMainCFNO: TStringField;
    qrMainUSERID: TStringField;
    qrMainUSERDATE: TDateTimeField;
    qrMainDDCZ: TStringField;
    qrMainDDPACKSM: TStringField;
    qrMainLABELCHARGE: TFloatField;
    qrMainGender: TStringField;
    qrMainYN: TStringField;
    qrTemp: TQuery;
    qrMainYSSM: TStringField;
    qrMainBZCC: TStringField;
    qrMainXTMH: TStringField;
    qrMainDDMH: TStringField;
    qrMainDAOMH: TStringField;
    pmMain: TPopupMenu;
    CheckTWOrder1: TMenuItem;
    lbCSD: TLabel;
    dtpStart: TDateTimePicker;
    lbTo: TLabel;
    dtpEnd: TDateTimePicker;
    qrMainordermode: TStringField;
    qrMainBUYNO: TStringField;
    lbBuyNo: TLabel;
    edBuyNo: TEdit;
    bnErrOrder: TButton;
    lbCustomer: TLabel;
    edCustomer: TEdit;
    bnQuery2: TButton;
    edDevCode: TEdit;
    lbDevCode: TLabel;
    qrMainDEVCODE: TStringField;
    qrMainJiJie: TStringField;
    qrMainDevType: TStringField;
    procedure bnQuery2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bnQueryClick(Sender: TObject);
    procedure bnInsertClick(Sender: TObject);
    procedure bnExitClick(Sender: TObject);
    procedure bnDeleteClick(Sender: TObject);
    procedure bnModifyClick(Sender: TObject);
    procedure gdMainEditButtonClick(Sender: TObject);
    procedure bnCancelClick(Sender: TObject);
    procedure bnSaveClick(Sender: TObject);
    procedure gdMainGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure bnFirstClick(Sender: TObject);
    procedure bnPriorClick(Sender: TObject);
    procedure bnNextClick(Sender: TObject);
    procedure bnLastClick(Sender: TObject);
    procedure bnExcelClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CheckTWOrder1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bnErrOrderClick(Sender: TObject);

  private
    { Private declarations }
  public
    sdate,edate:Tdate;
  end;

var
  SpecImport: TSpecImport;

implementation

uses main1, SpecimportTW1, SpecimportCheck1;

{$R *.dfm}

procedure TSpecImport.bnQuery2Click(Sender: TObject);
begin

  sdate:=dtpStart.Date;
  edate:=dtpEnd.Date;

  qrMain.active:=false;
  with qrMain.sql do
  begin
    Clear;
    add('select DDZL.*,kfxxzl.DEVCODE,XXZl.XieMing,');
    add('   lbzls.YWSM as DDGB,KFZL.KFJC,XXZL.YSSM,');
    add('   XXZL.BZCC,XXZL.XTMH,XXZL.DDMH,XXZL.DAOMH,kfxxzl.JiJie,kfxxzl.DevType');
    add('from DDZL ');
    add('left join XXZL on DDZl.XieXing=XXZl.XieXing and DDZl.SheHao=XXZl.SheHao');
    add('left join kfzl on KFZl.KFDH=DDZL.KHBH');
    add('left join LBZLS on lbzls.lb=''06'' and lbzls.lbdh=DDZL.DDGB ');
    add('left join kfxxzl on DDZL.XieXing=kfxxzl.XieXing and DDZL.SheHao=kfxxzl.SheHao');
    add('where DDZL.DDBH like ''%'+edDDBH.Text+'%''');
    add('and Convert(smalldatetime,convert(varchar,DDZL.Shipdate,111)) between ');
    add(''''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+'''');
    add('and isnull(XXZL.article,'''') like ''%'+edArticle.text+'%''');
    add('and isnull(kfzl.kfjc,'''') like ''%'+edCustomer.Text+'%''');
    if length(edBuyNo.Text) > 1 then
      add('and ddzl.buyno like '''+edBuyNo.Text+'%'' ');
    add('and DDZL.GSBH like ''%'+main.edit2.Text+'%''');
    add('and isnull(kfxxzl.DEVCODE,'''') like ''%'+edDevCode.Text+'%'' ');
    add('order by DDZL.DDBH ');
  end;

  qrMain.Active:=true;
  bnQuery.enabled:=true;
  bnInsert.enabled:=true;
  bnDelete.Enabled:=true;
  bnModify.enabled:=true;
  bnSave.enabled:=false;
  bnCancel.enabled:=false;
  bnExit.enabled:=true;
  bnFirst.enabled:=true;
  bnPrior.enabled:=true;
  bnNext.enabled:=true;
  bnLast.enabled:=true;
  bnPrint.enabled:=true;
  bnExcel.enabled:=true;
end;

procedure TSpecImport.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if bnSave.enabled  then
  begin
    messagedlg('You have to save data Record of report first.',mtwarning,[ mbyes],0);
    action:=canone;
  end
  else
    begin
      action:=Cafree;
    end;
end;

procedure TSpecImport.bnQueryClick(Sender: TObject);
begin
  pnMiddle.Visible:=true;
end;

procedure TSpecImport.bnInsertClick(Sender: TObject);
begin
  with qrMain do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;   //增加一筆空白資料
  end;
  bnSave.Enabled:=true;
  bnCancel.Enabled:=true;
  gdMain.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TSpecImport.bnExitClick(Sender: TObject);
begin
  close;
end;

procedure TSpecImport.bnDeleteClick(Sender: TObject);
begin
  if messagedlg('All the detail will be deleted too!',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    if qrMain.recordcount>0 then
      begin
        with qrMain do
          begin
            requestlive:=true;
            cachedupdates:=true;
            edit;
            fieldbyname('YN').Value:='0';
          end;
      end;
  end;
  bnSave.Enabled:=true;
  bnCancel.Enabled:=true;
  gdMain.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TSpecImport.bnModifyClick(Sender: TObject);
begin
  with qrMain do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  bnSave.Enabled:=true;
  bnCancel.Enabled:=true;
  gdMain.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TSpecImport.gdMainEditButtonClick(Sender: TObject);
begin
  SpecimportTW:=TSpecimportTW.create(self);
  SpecimportTW.show;
  //DTP1.Date:=sdate;
  //DTP2.Date:=edate;
  enabled:=false;
end;

procedure TSpecImport.bnCancelClick(Sender: TObject);
begin
  with qrMain do
  begin
    requestlive:=false;
    cachedupdates:=false;
    active:=false;
    active:=true;
  end;
  bnSave.Enabled:=false;
  bnCancel.Enabled:=false;
  gdMain.Columns[0].ButtonStyle:=cbsNone;
end;

procedure TSpecImport.bnSaveClick(Sender: TObject);
var i:integer;
begin
  qrMain.First;
  while not qrMain.Eof do
  begin
    if (qrMain.FieldByName('Pairs').IsNull or qrMain.FieldByName('ShipDate').IsNull) then
      begin
        showmessage('Pls key order Qty and CSD first.');
        abort;
      end;
    qrMain.Next;
  end;

  try
    qrMain.first;
    for i:=1 to qrMain.RecordCount do
      begin
        case qrMain.updatestatus of
          usinserted:
            begin
              if qrMain.fieldbyname('DDBH').isnull then   //刪除多餘的新增列
                begin
                  qrMain.delete;
                end
                 else
                   begin
                     udMain.apply(ukinsert);
                   end;
            end;
          usmodified:
             begin
              if qrMain.fieldbyname('YN').value='0'then
                begin
                  with qrTemp do
                    begin
                      active:=false;
                      sql.Clear;
                      sql.add('select YWDD.DDBH from YWDD ');
                      sql.add('where YWDD.YSBH='''+qrMain.fieldbyname('DDBH').Value+''' ');
                      active:=true;
                      if recordcount=0  then
                        begin
                          active:=false;
                          sql.Clear;
                          sql.add('delete SCZL where SCBH='''+qrMain.fieldbyname('DDBH').Value+'''');
                          sql.add('delete SCZLS where SCBH='''+qrMain.fieldbyname('DDBH').Value+'''');
                          sql.add('delete SCZLDate where ZLBH='''+qrMain.fieldbyname('DDBH').Value+'''');
                          execsql;
                          udMain.apply(ukdelete);
                        end
                        else
                          begin
                            showmessage('Pls delete Sale order first.'+#13+qrMain.fieldbyname('DDBH').Value);
                          end;
                      active:=false;
                    end;
                end
                else
                  begin
                    //20140320 增加
                    qrMain.Edit;
                    qrMain.FieldByName('UserID').AsString:=main.Edit1.Text;
                    qrMain.FieldByName('UserDate').Value:=now();
                    qrMain.Post;
                    //
                    udMain.apply(ukmodify);
                  end;
             end;
        end;
       qrMain.next;
      end;
    qrMain.active:=false;
    qrMain.cachedupdates:=false;
    qrMain.requestlive:=false;
    qrMain.active:=true;
    bnSave.enabled:=false;
    bnCancel.enabled:=false;
    gdMain.columns[0].ButtonStyle:=cbsnone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TSpecImport.gdMainGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

if (qrMain.FieldByName('DDZT').value<>'Y') then
  begin
    if (qrMain.FieldByName('DDZT').value<>'S') then
      gdMain.canvas.font.color:=clred;
  end;
if qrMain.FieldByName('YN').value='0' then
  begin
    gdMain.canvas.font.color:=clYellow;
  end;
end;

procedure TSpecImport.bnFirstClick(Sender: TObject);
begin
  qrMain.First;
end;

procedure TSpecImport.bnPriorClick(Sender: TObject);
begin
  qrMain.prior;
end;

procedure TSpecImport.bnNextClick(Sender: TObject);
begin
  qrMain.next;
end;

procedure TSpecImport.bnLastClick(Sender: TObject);
begin
  qrMain.last;
end;

procedure TSpecImport.bnExcelClick(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
      i,j:integer;
  begin
  if  qrMain.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Mcrosoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   qrMain.fieldCount-1   do
          begin
              eclApp.Cells(1,i+1):=qrMain.fields[i].FieldName;
          end;
        qrMain.First;
        j:=2;
        while   not   qrMain.Eof   do
          begin
            for   i:=0   to   qrMain.FieldCount-1   do
              begin
                eclApp.Cells(j,i+1):=qrMain.Fields[i].Value;
              end;
            qrMain.Next;
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

procedure TSpecImport.FormDestroy(Sender: TObject);
begin
  SpecImport:=nil;
end;

procedure TSpecImport.CheckTWOrder1Click(Sender: TObject);
begin  
  SpecimportCheck:=TSpecimportCheck.create(self);
  SpecimportCheck.show;
end;

procedure TSpecImport.FormCreate(Sender: TObject);
begin
  dtpStart.date:=startofthemonth(incmonth(Now,2))+5;
  dtpEnd.date:=startofthemonth(incmonth(Now,3))+4;
end;

procedure TSpecImport.bnErrOrderClick(Sender: TObject);
begin
  sdate:=dtpStart.Date;
  edate:=dtpEnd.Date;

  qrMain.active:=false;
  with qrMain.SQL do
  begin
    clear;
    add('select DDZL.*,kfxxzl.DEVCODE as DevCode,XXZl.XieMing,');
    add('   lbzls.YWSM as DDGB,KFZL.KFJC,XXZL.YSSM,');
    add('   XXZL.BZCC,XXZL.XTMH,XXZL.DDMH,XXZL.DAOMH,kfxxzl.JiJie,kfxxzl.DevType');
    add('from DDZL ');
    add('left join XXZL on DDZl.XieXing=XXZl.XieXing and DDZl.SheHao=XXZl.SheHao');
    add('left join kfzl on KFZl.KFDH=DDZL.KHBH');
    add('left join LBZLS on lbzls.lb=''06'' and lbzls.lbdh=DDZL.DDGB ');
    add('left join kfxxzl on DDZL.XieXing=kfxxzl.XieXing and DDZL.SheHao=kfxxzl.SheHao');
    add('where xxzl.xieming is null ');
    add('and Convert(smalldatetime,convert(varchar,DDZL.Shipdate,111)) between ');
    add(''''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+'''');
    add('and DDZL.GSBH like ''%'+main.edit2.Text+'%''');
    add('order by DDZL.DDBH ');
  end;
  qrMain.Active:=true;

  bnInsert.enabled:=false;
  bnDelete.enabled:=true;
  bnModify.enabled:=false;
  bnSave.enabled:=false;
  bnCancel.enabled:=false;
  bnExit.enabled:=true;
  bnFirst.enabled:=true;
  bnPrior.enabled:=true;
  bnNext.enabled:=true;
  bnLast.enabled:=true;
  bnPrint.enabled:=true;
  bnExcel.enabled:=true;
end;

end.
