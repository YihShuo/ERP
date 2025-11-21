unit LYV_LastborrowCFM_TL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Grids, DBGrids, DB, DBTables, dateutils,
  Menus,Comobj, GridsEh, DBGridEh;

type
  TLYV_LastborrowCFM_TL = class(TForm)
    pnl1: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    dtpDTP1: TDateTimePicker;
    dtpDTP2: TDateTimePicker;
    edt1: TEdit;
    dsDS3: TDataSource;
    qryDelMas: TQuery;
    updtsqlUpMas: TUpdateSQL;
    TDelMasLLNO: TStringField;
    TDelMasGSBH: TStringField;
    TDelMasCKBH: TStringField;
    TDelMasDepID: TStringField;
    dtmfldDelMasUSERDATE: TDateTimeField;
    TDelMasUSERID: TStringField;
    dtmfldDelMasCFMDate: TDateTimeField;
    TDelMasCFMID: TStringField;
    TDelMasSB: TStringField;
    TDelMasYN: TStringField;
    intgrfldDelMasPMARK: TIntegerField;
    TDelMasDepName: TStringField;
    qryDelDet: TQuery;
    updtsql1: TUpdateSQL;
    ds1: TDataSource;
    qry2: TQuery;
    qryDelMasPlanDate: TDateTimeField;
    qryDelMasMEMO: TStringField;
    Query1: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    CurrencyField1: TCurrencyField;
    DateTimeField1: TDateTimeField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    FloatField1: TFloatField;
    btn4: TButton;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    qryDelMasCKBH_Memo: TStringField;
    qryDelMasSFL: TStringField;
    qryDelMasSFL_DESC: TStringField;
    qryDelMasCFMID1: TStringField;
    qryDelMasCFMDate1: TDateTimeField;
    procedure btn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    ayear,amonth:string;
    DepIDList:TStringlist;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LYV_LastborrowCFM_TL: TLYV_LastborrowCFM_TL;

implementation

uses main1,FunUnit;

{$R *.dfm}
procedure TLYV_LastborrowCFM_TL.btn1Click(Sender: TObject);
var i:integer;
begin

  //
  with qryDelMas do
  begin
    Active:=false;
    sql.Clear;
    sql.add('select LTLL.*,BDepartment.DepName,LastKCCK.Memo as CKBH_Memo ');
    sql.Add('       ,Case when LTLL.SFL=''1'' then ''Muon借出'' when LTLL.SFL=''2'' then ''Bao Phe Da Thanh Ly報廢已經清理'' when LTLL.SFL=''3'' then ''Bao Phe Cho Thanh Ly報廢還沒清理'' when LTLL.SFL=''4'' then ''Chuyen Hien Truong 轉現場'' end as SFL_DESC ');
    sql.add('from LTLL ');
    sql.add('left join BDepartment on LTLL.DepID=BDepartment.ID  ');
    sql.add('left join LastKCCK on LastKCCK.CKBH=LTLL.CKBH ');
    sql.add('where LTLL.SB =''L'' and LTLL.CFMID <>''NO'' and LTLL.SFL=''3'' and  Isnull(LTLL.CFMID1,''NO'') =''NO'' ');
    sql.Add('and isnull(LTLL.flowflag,'''')<>''X'' ');
    sql.add('and convert(smalldatetime,convert(varchar,LTLL.USERDATE,111)) between '''+formatdatetime('yyyy/MM/dd',dtpDTP1.date )+'''');
    sql.add('and '''+formatdatetime('yyyy/MM/dd',dtpDTP2.date )+'''');
    sql.add('and LTLL.LLNO like '''+edt1.Text+'%'' ');
    sql.add('and LTLL.GSBH='''+main.Edit2.Text+'''');
    sql.add('order by LTLL.LLNO  ');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  //

  with  qryDelDet do
  begin
    //
    Active:=false;
    sql.Clear;
    sql.Add('select LTLLSS.LLNO,LTLLSS.CLBH,CLZL.YWPM,CLZL.DWBH,LTLLSS.ZLBH,LTLLSS.SIZ,LTLLSS.Qty ');
    sql.Add('from LTLLSS');
    sql.add('left join LTLL on LTLL.LLNO=LTLLSS.LLNO ');
    sql.Add('left join CLZL on LTLLSS.CLBH=CLZL.CLDH ');
     sql.Add('where LTLLSS.LLNO=:LLNO ');
    sql.Add('order by LTLLSS.CLBH,LTLLSS.siz ');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;

  //qryDelDet.Active:=true;
  //
end;

procedure TLYV_LastborrowCFM_TL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DepIDList.Free;
  free;
end;

procedure TLYV_LastborrowCFM_TL.FormDestroy(Sender: TObject);
begin
  LYV_LastborrowCFM_TL:=nil;
end;

procedure TLYV_LastborrowCFM_TL.FormCreate(Sender: TObject);
begin
  dtpDTP1.Date:=date-30;
  dtpDTP2.Date:=date;
end;

procedure TLYV_LastborrowCFM_TL.btn2Click(Sender: TObject);
begin
  try
     with qryDelMas do
     begin
         edit;
         fieldbyname('CFMID1').Value:=main.edit1.text;
         fieldbyname('CFMDATE1').Value:=date();
         updtsqlUpMas.Apply(ukmodify);
         active:=false;
         active:=true;
     end;
   showmessage('Succeed.');
  except
   showmessage('Have wrong.');
 end;

end;

procedure TLYV_LastborrowCFM_TL.btn3Click(Sender: TObject);
begin
  qryDelDet.Active:=false;
  qryDelMas.Active:=false;

  qryDelMas.Active:=true;
  qryDelDet.Active:=true;
end;

procedure TLYV_LastborrowCFM_TL.btn4Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if  qryDelDet.active  then
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
          for   i:=0   to   qryDelDet.fieldcount-1   do
          begin
            eclApp.Cells(1,i+1):=qryDelDet.fields[i].FieldName;
          end;
          eclApp.Cells(1,i+1):=qryDelMas.fieldByName('DepID').FieldName;
          eclApp.Cells(1,i+2):=qryDelMas.fieldByName('PlanDate').FieldName;
          qryDelDet.First;
          j:=2;
          while   not   qryDelDet.Eof   do
          begin
            for   i:=0   to  qryDelDet.fieldcount-1  do
            begin
                eclApp.Cells(j,i+1):=qryDelDet.Fields[i].Value;
            end;
            eclApp.Cells(j,i+1):=qryDelMas.fieldByName('DepID').Value;
            eclApp.Cells(j,i+2):=qryDelMas.fieldByName('PlanDate').Value;
            qryDelDet.Next;
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
