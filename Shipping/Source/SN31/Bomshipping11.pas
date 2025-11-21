unit Bomshipping11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, Buttons,fununit,
  ComCtrls,comobj;

type
  TBomshipping1 = class(TForm)
    Panel2: TPanel;
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
    PC1: TPageControl;
    TS1: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label18: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit4: TEdit;
    Edit3: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    SeasonEdit: TEdit;
    Edit6: TEdit;
    GroupBox1: TGroupBox;
    CK1: TCheckBox;
    CK2: TCheckBox;
    DEdit: TEdit;
    BuyNoEdit: TEdit;
    DBGrid1: TDBGridEh;
    TS2: TTabSheet;
    DBGrid2: TDBGridEh;
    DS2: TDataSource;
    XXZLS: TQuery;
    XXZLSXH: TStringField;
    XXZLSBWBH: TStringField;
    XXZLSBWMC: TStringField;
    XXZLSCLBH: TStringField;
    XXZLSDType: TStringField;
    XXZLSCLMC: TStringField;
    XXZLSCLZW: TStringField;
    XXZLSBWZW: TStringField;
    XXZLSDWBH: TStringField;
    XXZLSLYCC: TStringField;
    XXZLSBZ: TStringField;
    XXZLSBWLB: TStringField;
    XXZLSZSYWJC: TStringField;
    XXZLSLOSS: TFloatField;
    XXZLSCLSL: TFloatField;
    XXZLSCCQQ: TStringField;
    XXZLSCCQZ: TStringField;
    XXZLSCLZMLB: TStringField;
    XXZLSuserdate: TDateTimeField;
    XXZLSCLBH_Log: TStringField;
    XXZLSCLSL_Log: TStringField;
    XXZL: TQuery;
    XXZLXieXing: TStringField;
    XXZLSheHao: TStringField;
    XXZLARTICLE: TStringField;
    XXZLXieMing: TStringField;
    XXZLYSSM: TStringField;
    XXZLBZCC: TStringField;
    XXZLKFJC: TStringField;
    XXZLXx: TStringField;
    XXZLSs: TStringField;
    XXZLIMGName: TStringField;
    XXZLJiJie: TStringField;
    XXZLDAOMH: TStringField;
    DS1: TDataSource;
    XXZLSXieXing: TStringField;
    XXZLSSheHao: TStringField;
    XXZLStyjh: TStringField;
    XXZLSUSERID: TStringField;
    XXZLSYN: TStringField;
    UpdateSQL1: TUpdateSQL;
    SHIP_XXZLS: TQuery;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Bomshipping1: TBomshipping1;

implementation

uses main1;

{$R *.dfm}



procedure TBomshipping1.Button1Click(Sender: TObject);
begin
  if (SeasonEdit.text='') and (edit3.text='')and (Edit4.Text='') then
   begin
         showmessage('Please input season or Article or Customer keypoint ');
   end else
   begin
   with XXZL do
   begin
     active:=false;
     sql.clear;
     sql.add('select XXZL.XieXing,XXZL.SheHao,XXZL.Article,');
     sql.add('XXZL.XieMing,XXZL.YSSM,KFZL.KFJC,XXZL.BZCC,xt.xiexing as Xx,xt.Shehao as Ss,XXZL.IMGName,KFXXZL.JiJie,XXZL.DAOMH from XXZL ');
     sql.add('left join KFZL on KFZL.KFDH=XXZL.KHDH ');
     sql.add('left join KFXXZL on KFXXZL.SheHao=XXZL.SheHao and  KFXXZL.XieXing=XXZL.XieXing ');
     sql.Add('left join (select xiexing,shehao from xtbwyl1 group by xiexing,shehao) as xt');
     sql.add(' on xt.xiexing=xxzl.xiexing and xt.shehao=xxzl.shehao ' );
     sql.add('where XXZL.XieXing like '+''''+edit1.Text+'%'+'''');
     sql.add(' and XXZL.SheHao like '+''''+edit2.Text+'%'+'''');
     sql.add(' and XXZL.ARTICLE like '+''''+edit3.Text+'%'+'''');
     sql.add(' and KFZL.KFJC like '+''''+'%'+edit4.Text+'%'+'''');
     sql.add(' and XXZL.XieMing like '+''''+edit5.Text+'%'+'''');
     if BuyNoEdit.Text<>'' then
     sql.add('and exists (select XieXing,SheHao from DDZl where DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' group by XieXing,Shehao) ' );
     if Edit6.Text<>'' then
       sql.add('  and XXZL.DAOMH like ''%'+Edit6.Text+'%'' ');
     if SeasonEdit.Text<>'' then
       sql.add('  and KFXXZL.JiJie like ''%'+SeasonEdit.Text+'%'' ');
     if CK1.Checked then
     begin
       sql.add(' and XXZL.YN='+''''+'1'+'''');
     end;
     if CK2.Checked then
     begin
       sql.add(' and exists ( select XieXing,SheHao from XTBWYL1_Log where XTBWYL1_Log.XieXing=XXZL.XieXing and XTBWYL1_Log.SheHao=XXZL.SheHao   and Log_DateTime>=GetDate()-'+DEdit.Text+'  Group by XieXing,SheHao ) ');
     end;
     sql.add(' order by KFJC,XXZL.XieXing,XXZL.Shehao');

     active:=true;
   end;
   with XXZLS do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select XXZLS.XieXing,XXZLS.SheHao,XXZLS.XH,XXZLS.BWBH,BWZL.ywsm BWMC,XXZLS.CLBH,SHIP_XXZLS.tyjh,''Assembly'' as DType,');
     SQL.Add('       CLZL.YWPM as CLMC, CLZL.ZWPM as CLZW,BWZL.zwsm  as BWZW,');
     SQL.Add('       CLZL.DWBH,CLZL.LYCC,LBZLS.BZ,XXZLS.BWLB,ZSZL.ZSYWJC,XXZLS.LOSS,XXZLS.CLSL,');
     SQL.Add('       XXZLS.CCQQ,XXZLS.CCQZ,CLZL.CLZMLB,XXZLS.userdate,XXZLS.USERID,XXZLS.YN');
     SQL.Add('       ,(case when XXZLS.CLBH<>XXZLS_Log.CLBH then XXZLS_Log.Log_DateTime end) as ''CLBH_Log''');
     SQL.Add('       ,(case when XXZLS.CLSL<>XXZLS_Log.CLSL then XXZLS_Log.Log_DateTime end) as ''CLSL_Log''');
     SQL.Add('FROM XXZLS');
     SQL.Add('LEFT join (select XieXing,SheHao,BWBH,Max(CLBH) as CLBH,Max(CLSL) as CLSL,Max(Log_DateTime) as Log_DateTime from XXZLS_Log');
     SQL.Add('            where XXZLS_Log.XieXing=:XieXing  and XXZLS_Log.SheHao =:SheHao and Log_DateTime>=GetDate()-'+DEdit.Text+' ');
     SQL.Add('           Group by XieXing,SheHao,BWBH');
     SQL.Add('          )  XXZLS_Log on XXZLS_Log.XieXing=XXZLS.XieXing and XXZLS_Log.SheHao=XXZLS.SheHao and XXZLS_Log.BWBH=XXZLS.BWBH');
     SQL.Add('LEFT JOIN BWZL  ON XXZLS.BWBH = BWZL.bwdh');
     SQL.Add('LEFT JOIN CLZL   ON XXZLS.CLBH = CLZL.cldh');
     SQL.Add('LEFT JOIN LBZLS ON SUBSTRING(XXZLS.CLBH,1,1) = LBZLS.lbdh AND LBZLS.LB=''05''');
     SQL.Add('LEFT JOIN ZSZL on ZSZL.ZSDH=XXZLS.CSBH');
     SQL.Add('LEFT JOIN SHIP_XXZLS ON SHIP_XXZLS.XieXing = XXZLS.XieXing AND SHIP_XXZLS.SheHao = XXZLS.SheHao and SHIP_XXZLS.BWBH = XXZLS.BWBH ');
     SQL.Add('where XXZLS.XieXing =:XieXing and XXZLS.SheHao =:SheHao');
     //SQL.Add('and SHIP_XXZLS.tyjh = ''Y''');
     SQL.Add('ORDER BY XXZLS.XH');
     Active:=true;
     end;
   end;
   panel2.Visible:=true;
   BB4.Enabled:= true;
   panel1.Visible:=false;
   bbt6.Enabled:= true;
end;

procedure TBomshipping1.BB1Click(Sender: TObject);
begin
  Panel1.Visible:=true;
end;

procedure TBomshipping1.BB4Click(Sender: TObject);
begin
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  with XXZLS do
  begin
    RequestLive:=true;
    CachedUpdates:=true;
    edit;
  end;
end;

procedure TBomshipping1.BB6Click(Sender: TObject);
begin
with XXZLS do
  begin
  Active:=false;
  cachedupdates:=false;
  requestlive:=false;
  active:=true;
  end;
  BB5.enabled:=false;
  BB6.enabled:=false;
end;

procedure TBomshipping1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TBomshipping1.BB5Click(Sender: TObject);
var i:integer;
begin
  try
    XXZLS.First;
    for i:=0 to  XXZLS.RecordCount-1 do
    begin
      case XXZLS.updatestatus of
      usinserted:
      begin
      end;
      usmodified:
    end;
    begin
      with SHIP_XXZLS do
      begin
          active:=false;
          sql.Clear;
          sql.add('Select XieXing,SheHao,BWBH,tyjh,userdate,userID,YN from SHIP_XXZLS where ');
          sql.add('XieXing='''+XXZL.fieldbyname('XieXing').AsString+''' and SheHao='''+XXZL.fieldbyname('SheHao').AsString+''' ');
          sql.add('and BWBH='''+XXZLS.fieldbyname('BWBH').AsString+'''');
          sql.add('group by XieXing,SheHao,BWBH,tyjh,userdate,userID,YN');
          active:=true;
      end;
      if SHIP_XXZLS.RecordCount > 0  then
      begin
          if (SHIP_XXZLS.RecordCount > 0) and (XXZLS.fieldbyname('tyjh').value = 'N')  then
          begin
            XXZLS.edit;
            UpdateSQL1.apply(ukdelete);
          end;
      end else
      if (SHIP_XXZLS.RecordCount = 0) and (XXZLS.fieldbyname('tyjh').value = 'Y')  then
      begin
          XXZLS.Edit;
          XXZLS.FieldByName('XieXing').Value:=XXZL.fieldbyname('XieXing').value;
          XXZLS.FieldByName('SheHao').Value:=XXZL.fieldbyname('SheHao').value;
          XXZLS.FieldByName('BWBH').Value:=XXZLS.fieldbyname('BWBH').value;
          XXZLS.FieldByName('tyjh').Value:=XXZLS.fieldbyname('tyjh').value;
          XXZLS.FieldByName('userdate').Value:=date;
          XXZLS.FieldByName('userID').Value:=main.edit1.text;
          XXZLS.FieldByName('YN').Value:='1';
          UpdateSQL1.apply(ukinsert);
      end else
      begin

      end;
    end;
    XXZLS.next;
  end;
    XXZLS.active:=false;
    XXZLS.cachedupdates:=false;
    XXZLS.requestlive:=false;
    XXZLS.active:=true;
    BB5.enabled:=false;
    BB6.enabled:=false;
   except
      on E:Exception do
        Messagedlg('Have wrong, can not save data!'+E.Message,mtwarning,[mbyes],0);
   end;
end;

procedure TBomshipping1.bbt6Click(Sender: TObject);
var i,j,k:integer;
    eclApp,WorkBook:olevariant;
begin

  if XXZLS.Active then
  begin
    if XXZLS.recordcount=0 then
    begin
      showmessage('No record.');
      abort;
    end;
  end else
  begin
    showmessage('No record.');
    abort;
  end;
  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;
  try
    WorkBook:=eclApp.workbooks.Add;
    eclApp.Cells(1,1):='NO';
    for   i:=1   to   XXZLS.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=XXZLS.fields[i-1].FieldName;
    end;
    XXZLS.First;
    j:=2;
    while   not  XXZLS.Eof   do
    begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   XXZLS.fieldcount   do
          begin
            eclApp.Cells(j,i+1):=XXZLS.Fields[i-1].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
          end;
        XXZLS.Next;
        inc(j);
    end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;

procedure TBomshipping1.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
    if (XXZLS.FieldByName('CLSL').Value=0)  then          //
    begin
      DBGrid2.canvas.font.Color:=clRed;
      DBGrid2.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;
end;

procedure TBomshipping1.DBGrid1DblClick(Sender: TObject);
begin
   PC1.ActivePageIndex:=1;
end;

end.



