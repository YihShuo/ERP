unit PKNOConfirm1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, ComCtrls,IniFiles;

type
  TPKNOConfirm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    EDIT1: TEdit;
    Edit2: TEdit;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    DTP1: TDateTimePicker;
    Label3: TLabel;
    DTP2: TDateTimePicker;
    Label4: TLabel;
    Label5: TLabel;
    Edit3: TEdit;
    Label6: TLabel;
    Edit4: TEdit;
    Query1Declaretion: TStringField;
    Query1clbh: TStringField;
    Query1ckbh: TStringField;
    Query1hglb: TStringField;
    Query1zsywjc: TStringField;
    Query1Qty_In: TCurrencyField;
    Query1Qty_Out: TCurrencyField;
    Query1Lack_Qty: TCurrencyField;
    Query1ywpm: TStringField;
    Label7: TLabel;
    Edit5: TEdit;
    chk1: TCheckBox;
    Query1RKNO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    procedure ReadIni();
    { Private declarations }
  public
    { Public declarations }
    WH_Decimal:String;
    WH_DiplayFormat:String;
  end;

var
  PKNOConfirm: TPKNOConfirm;

implementation

uses main1, DeliverCon1,fununit;

{$R *.dfm}
procedure TPKNOConfirm.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  WH_Decimal:='2';
  WH_DiplayFormat:='#,##0.00';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      WH_Decimal:=MyIni.ReadString('Warehouse','Decimal','2');
      WH_DiplayFormat:=MyIni.ReadString('Warehouse','DiplayFormat','#,##0.00');
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(Query1.FieldByName('Qty_In')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query1.FieldByName('Qty_Out')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query1.FieldByName('Lack_Qty')).DisplayFormat:=WH_DiplayFormat;
end;  

procedure TPKNOConfirm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TPKNOConfirm.FormDestroy(Sender: TObject);
begin
  PKNOConfirm:=nil;
end;

procedure TPKNOConfirm.FormCreate(Sender: TObject);
begin
  DTP1.Date:=now-30;
  DTP2.Date:=now;
  ReadIni();
end;

procedure TPKNOConfirm.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('Select kcrks.*,Qty_In-isnull(qty_out,0)  as Lack_Qty ');
    sql.Add('From (  Select kcrk.RKNO,KCPK.Declaretion,kcrks.clbh,clzl.ywpm,kcrk.ckbh,kcrk.hglb,zsywjc,kcrks.Qty as Qty_In,sum(kcpkll.Qty) as Qty_Out  ');
    {sql.Add('        From ( Select kcrks.rkno,kcrks.clbh,sum(kcrks.qty) as Qty From kcrks Group by kcrks.rkno,kcrks.clbh)kcrks ');
    sql.Add('               Left join kcrk on kcrks.rkno=kcrk.rkno  ');
    sql.Add('               Left join kcpkll on kcpkll.PKNO=KCRK.RKNO and KCPKLL.CLBH=KCRKS.CLBH ');
    sql.Add('               Left join (Select kclls.llno,kclls.clbh,kclls.HGLb,sum(qty) as Qty From kclls Group by kclls.llno,kclls.CLBH,kclls.HGLB) kclls on kcpkll.LLNO=kclls.llno and kcpkll.CLBH=kclls.CLBH ');
    sql.Add('               Left join kcll on kclls.llno=kcll.llno and kcll.ckbh=kcrk.CKBH and kclls.HGLB=kcrk.HGLB and kclls.CLBH=KCPKLL.CLBH ');
    sql.Add('               Left join KCPK on kcrk.RKNO=kcpk.PKNO ');
    sql.Add('               Left join zszl on kcrk.ZSBH=zszl.zsdh ');
    sql.Add('               Left join clzl on clzl.cldh=kcrks.CLBH '); }
    sql.Add('         From ( Select kcrks.rkno,kcrks.clbh,sum(kcrks.qty) as Qty From kcrks Group by kcrks.rkno,kcrks.clbh)kcrks ');
    sql.Add('         Left join kcrk on kcrks.rkno=kcrk.rkno  ');
    sql.Add('			    Left join (	Select kcll.ckbh,kclls.llno,kclls.clbh,kclls.HGLb,sum(qty) as Qty ');
    sql.Add('							        From kclls left join kcll on kclls.LLNO=kcll.llno  ');
    sql.Add('       							Group by kcll.ckbh,kclls.llno,kclls.CLBH,kclls.HGLB) kclls  ');
    sql.Add('         on kclls.CLBH=kcrks.clbh and kclls.CKBH=kcrk.CKBH and kclls.HGLB=kcrk.HGLB ');
    sql.Add('         Left join (Select LLno,clbh,pkno,sum(qty) as qty From kcpkll group by llno,clbh,PKNO ) kcpkll on KCPKLL.LLNO =kclls.LLNO and KCPKLL.CLBH=kclls.CLBH and kcpkll.PKNO=kcrk.RKNO ');
    sql.Add('         Left join KCPK on kcrk.RKNO=kcpk.PKNO ');
    sql.Add('         Left join zszl on kcrk.ZSBH=zszl.zsdh ');
    sql.Add('         Left join clzl on clzl.cldh=kcrks.CLBH ');
    sql.Add('         Where kcrks.clbh='''+edit1.Text+''' and kcrk.HGLB='''+edit2.Text+'''  and kcrk.ckbh='''+edit5.Text+''' ');
    if  edit3.Text <>'' then
      sql.Add('             and kcrk.RKNO like '''+edit3.Text+'%'' ');
    if edit4.Text <>'' then
      sql.Add('             and KCPK.Declaretion like '''+edit4.Text+'%'' ');
    sql.Add('               and convert(smalldatetime,convert(varchar,kcrk.userdate,111)) between  ');
    sql.add('               '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +''' ');
    sql.Add('        Group by kcrk.RKNO,KCPK.Declaretion,kcrks.CLBH,clzl.ywpm,kcrk.CKBH,kcrk.HGLB,zsywjc,kcrks.Qty ) KCRKS  ');
    sql.Add('Where 1=1 ');
    if chk1.Checked then
      sql.Add(' and  isnull(qty_out,0)<Qty_In  ');
    sql.Add('Order by KCRKS.RKNO');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TPKNOConfirm.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    if  query1.FieldByName('Lack_Qty').Value <  DeliverCon.DelDet.FieldByName('Qty').Value then
    begin
      showmessage('Qty not enough');
      abort;
    end else
    begin
      with DeliverCon.DelDet do
      begin
        edit;
        fieldbyname('PKNO').value:=query1.fieldbyname('RKNO').AsString;
        fieldbyname('Declaretion').value:=query1.fieldbyname('Declaretion').AsString;
      end;
    end;
  end;
end;

procedure TPKNOConfirm.DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if query1.FieldByName('qty_out').value>=query1.FieldByName('Qty_In').value then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

end.
