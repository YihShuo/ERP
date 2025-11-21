unit DeliverCost1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Mask, DBCtrls, StdCtrls, Grids, DBGrids, ComCtrls,
  Buttons, ExtCtrls,dateutils,comobj, GridsEh, DBGridEh,math, Menus;

type
  TDeliverCost = class(TForm)
    Panel1: TPanel;
    Label18: TLabel;
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
    PC1: TPageControl;
    TS1: TTabSheet;
    DBGrid1: TDBGridEh;
    Panel5: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    TS2: TTabSheet;
    DBGrid2: TDBGridEh;
    Panel2: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBNavigator2: TDBNavigator;
    Button2: TButton;
    Matset: TTabSheet;
    Panel3: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBNavigator3: TDBNavigator;
    Button3: TButton;
    DBGrid3: TDBGridEh;
    DS1: TDataSource;
    SpecMas: TQuery;
    SpecMasSCBH: TStringField;
    SpecMasZLBH: TStringField;
    SpecMasXieXing: TStringField;
    SpecMasSheHao: TStringField;
    SpecMasArticle: TStringField;
    SpecMasXieMing: TStringField;
    SpecMasQty: TFloatField;
    SpecMasCCGB: TStringField;
    SpecMasShipDate: TDateTimeField;
    SpecMasDDZT: TStringField;
    SpecDet: TQuery;
    DS2: TDataSource;
    Qtemp: TQuery;
    MatCost: TQuery;
    DS3: TDataSource;
    SpecDetBWBH: TStringField;
    SpecDetYWSM: TStringField;
    SpecDetUSAGE: TFloatField;
    SpecDetDFL: TStringField;
    SpecDetCLSL: TFloatField;
    SpecDetYWPM: TStringField;
    SpecDetDWBH: TStringField;
    SpecDetUSPrice: TCurrencyField;
    SpecDetCLBH: TStringField;
    TabSheet1: TTabSheet;
    Panel4: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBNavigator4: TDBNavigator;
    Button4: TButton;
    DBGrid4: TDBGridEh;
    AccMat: TQuery;
    DS4: TDataSource;
    SpecMasYN: TStringField;
    AccMatSCBH: TStringField;
    AccMatCLBH: TStringField;
    AccMatYWPM: TStringField;
    AccMatDWBH: TStringField;
    AccMatQty: TCurrencyField;
    AccMatVNACC: TFloatField;
    AccMatLLNO: TStringField;
    RadG1: TRadioGroup;
    Panel6: TPanel;
    Label4: TLabel;
    Label7: TLabel;
    CBX3: TComboBox;
    CBX2: TComboBox;
    Panel7: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    PopupMenu2: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Label12: TLabel;
    CBX4: TComboBox;
    Label13: TLabel;
    Edit8: TEdit;
    SpecDetUSACC: TFloatField;
    MatCostCLBH: TStringField;
    MatCostUSPrice: TCurrencyField;
    MatCostZCLBH: TStringField;
    MatCostYWPM: TStringField;
    MatCostDWBH: TStringField;
    MatCostCLSL: TCurrencyField;
    MatCostQty: TCurrencyField;
    MatCostLLNO: TStringField;
    MatCostUSACC: TCurrencyField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Button3Click(Sender: TObject);
    procedure SpecDetCalcFields(DataSet: TDataSet);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure MatCostCalcFields(DataSet: TDataSet);
    procedure AccMatCalcFields(DataSet: TDataSet);
    procedure Button4Click(Sender: TObject);
    procedure Panel6DblClick(Sender: TObject);
    procedure Panel7DblClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DeliverCost: TDeliverCost;
  sdate,edate,NDate:Tdate;

implementation

uses main1;

{$R *.dfm}

procedure TDeliverCost.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('  if object_id('+''''+'tempdb..#BUSPrice'+''''+') is not null  ');
    sql.add('begin   drop table #BUSPrice end   ');
    execsql;
  end;
action:=cafree;
end;

procedure TDeliverCost.Button1Click(Sender: TObject);
var y,m:word;
begin
{
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
edate:=endofthemonth(sdate);   }

with SpecMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct SCZL.SCBH, SCZL.ZLBH,DDZL.XieXing,DDZL.SheHao, DDZL.XieXing,DDZL.DDZT,');
    sql.add('SCZL.Qty as Qty,DDZL.Article,DDZL.ShipDate,XXZL.CCGB,XXZL.XieMing,DDZL.YN');
    sql.add('from SCZL');
    sql.add('left join ZLZL on ZLZL.ZLBH=SCZL.ZLBH');
    sql.add('left join DDZL  on ZLZL.DDBH=DDZL.DDBH');
    sql.add('left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao');
    sql.add('left join SCZLDate on SCZLDate.ZLBH=DDZL.ZLBH ');
    sql.Add('where SCZL.SCBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and DDZL.KHBH like'+''''+edit3.Text+'%'+'''');
    sql.add('      and SCZL.SCBH=SCZL.ZLBH');
    sql.add('      and SCZL.GXLB='+''''+'S'+'''');
    sql.add('      and XXZL.XieMing like '+''''+'%'+edit2.text+'%'+'''');
    if panel7.visible then
      begin
        sql.add('      and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between ');
        sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
      end
      else
        begin
          sql.add('      and SCZLDate.SCYEAR='+''''+CBX2.text+'''');
          sql.add('      and SCZLDate.SCMONTH='+''''+CBX3.Text+'''');
        end;
    if RadG1.itemindex=0 then
      begin
        sql.add('      and DDZL.GSBH='+''''+main.Edit2.Text+'''');
      end
      else
        begin
          sql.add('         and SCZLdate.GSBH='+''''+main.Edit2.Text+'''');
        end;
    sql.add('order by SCZL.ZLBH');
    active:=true;
  end;
SpecDet.active:=true;
MatCost.active:=true;
AccMat.active:=true;
//panel5.Visible:=false;

end;

procedure TDeliverCost.BB1Click(Sender: TObject);
begin

panel5.Visible:=true;
end;

procedure TDeliverCost.BB7Click(Sender: TObject);
begin

Close;
end;

procedure TDeliverCost.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
  begin
  if  SpecDet.active  then
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
        for   i:=0   to   SpecDet.fieldCount-1   do
          begin
              eclApp.Cells(1,i+1):=SpecDet.fields[i].FieldName;
          end;
        SpecDet.First;
        j:=2;
        while   not   SpecDet.Eof   do
          begin
            for   i:=0   to   SpecDet.FieldCount-1   do
              begin
                eclApp.Cells(j,i+1):=SpecDet.Fields[i].Value;
              end;
            SpecDet.Next;
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


end;

procedure TDeliverCost.FormCreate(Sender: TObject);
var i:integer;
begin
with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select GSDH from BGSZL order by GSDH');
    active:=true;
    for i:=1 to recordcount do
      begin
        CBX4.Items.Add(fieldbyname('GSDH').asstring);
        next;
      end;
    CBX4.Text:=main.edit2.Text;
    active:=false;
    sql.clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
    sql.Clear;
    sql.add('  if object_id('+''''+'tempdb..#BUSPrice'+''''+') is not null  ');
    sql.add('begin   drop table #BUSPrice end   ');
    sql.add('declare @HL int ');
    sql.add('set @HL=(select top 1 CWHL from CWHLS order by HLYEAR DESC,HLMONTH DESC,HLDAY DESC)  ');
    sql.add('select CLDH as CLBH ,case when USPrice is null then round(convert(money,VNPrice)/@HL,4) else USPrice end as USPrice');
    sql.add('into #BUSPrice from (select CLZL.CLDH,');
    sql.add('                      (select top 1 USPrice from KCRKS');
    sql.add('                         where KCRKS.CLBH=CLZL.CLDH and ((KCRKS.VNPrice is not null) or (KCRKS.USPrice is not null ))  ');
    sql.add('                               and ((KCRKS.VNPrice<>0) or (KCRKS.USPrice<>0))');
    sql.add('                         order by USERDATE  desc)  as USPrice,');
    sql.add('                      (select top 1 VNPrice from KCRKS  ');
    sql.add('                         where KCRKS.CLBH=CLZL.CLDH and ((KCRKS.VNPrice is not null) or (KCRKS.USPrice is not null ))');
    sql.add('                               and ((KCRKS.VNPrice<>0) or (KCRKS.USPrice<>0))    ');
    sql.add('                         order by USERDATE  desc)  as VNPrice');
    sql.add('from CLZL ) CLZL  ');
    sql.add('where not ( CLZL.VNPrice is null and CLZL.USPrice is  null)  ');
    sql.Add(' order by CLZL.CLDH  ');
    execsql;
    active:=false;
  end;

DTP1.Date:=startofthemonth(date)+5;
DTP2.date:=endofthemonth(date)+5;
PC1.activepage:=TS1;
end;

procedure TDeliverCost.DBGrid1DblClick(Sender: TObject);
begin

if SpecMas.recordcount>0 then
  begin
    PC1.ActivePage:=TS2;
  end;
end;

procedure TDeliverCost.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
  dbgrid1dblclick(nil);
end;

procedure TDeliverCost.Button3Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
  begin
  if  MatCost.active  then
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
        for   i:=0   to   MatCost.fieldCount-1   do
          begin
              eclApp.Cells(1,i+1):=MatCost.fields[i].FieldName;
          end;
        MatCost.First;
        j:=2;
        while   not   MatCost.Eof   do
          begin
            for   i:=0   to   MatCost.FieldCount-1   do
              begin
                eclApp.Cells(j,i+1):=MatCost.Fields[i].Value;
              end;
            MatCost.Next;
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
end;

procedure TDeliverCost.SpecDetCalcFields(DataSet: TDataSet);
begin
with SpecDet do
  begin
    fieldbyname('USACC').Value:=fieldbyname('USPrice').Value*fieldbyname('CLSL').Value ;
    if fieldbyname('USACC').isnull then
      begin
        fieldbyname('VNACC').Value:=fieldbyname('VNPrice').Value*fieldbyname('CLSL').Value ;
      end;
  end;
end;

procedure TDeliverCost.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

if SpecMas.FieldByName('DDZT').value<>'Y' then
  begin
    dbgrid1.canvas.font.color:=clred;
  //  dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;

if SpecMas.FieldByName('YN').value='5' then
  begin
    dbgrid1.canvas.font.color:=clBlue;
  //  dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TDeliverCost.MatCostCalcFields(DataSet: TDataSet);
begin
with MatCost do
  begin
    fieldbyname('USACC').Value:=fieldbyname('USPrice').Value*fieldbyname('CLSL').Value ;
    if fieldbyname('USACC').isnull then
      begin
        fieldbyname('VNACC').Value:=fieldbyname('VNPrice').Value*fieldbyname('CLSL').Value ;
      end;
  end;
end;

procedure TDeliverCost.AccMatCalcFields(DataSet: TDataSet);
begin{
with AccMat do
  begin
    if   ((fieldbyname('LLQty').Value<>0) and (not fieldbyname('LLQty').isnull )) then
      begin
        fieldbyname('VNPrice').Value:= trunc(fieldbyname('VNACC').Value/fieldbyname('LLQty').Value+0.5);
        fieldbyname('ZLACC').Value:=trunc(fieldbyname('VNPrice').Value*fieldbyname('CLSL').Value);
      end;
  end;  }

end;

procedure TDeliverCost.Button4Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
  begin
  if  MatCost.active  then
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
        for   i:=0   to   AccMat.fieldCount-1   do
          begin
              eclApp.Cells(1,i+1):=AccMat.fields[i].FieldName;
          end;
        AccMat.First;
        j:=2;
        while   not   AccMat.Eof   do
          begin
            for   i:=0   to   AccMat.FieldCount-1   do
              begin
                eclApp.Cells(j,i+1):=AccMat.Fields[i].Value;
              end;
            AccMat.Next;
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

end;

procedure TDeliverCost.Panel6DblClick(Sender: TObject);
begin
panel6.Visible:=false;
panel7.Visible:=true;
end;

procedure TDeliverCost.Panel7DblClick(Sender: TObject);
begin
panel7.Visible:=false;
panel6.Visible:=true;
end;

procedure TDeliverCost.N1Click(Sender: TObject);
begin 
panel7.Visible:=false;
panel6.Visible:=true;

end;

procedure TDeliverCost.N2Click(Sender: TObject);
begin
panel6.Visible:=false;
panel7.Visible:=true;
end;

procedure TDeliverCost.FormDestroy(Sender: TObject);
begin
delivercost:=nil;
end;

end.
