unit RWreport1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls,ehlibBDE,
  comobj, PrnDbgeh, ComCtrls, Grids, DBGrids;

type
  TRWreport = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    pfsms: TQuery;
    DataSource1: TDataSource;
    Button3: TButton;
    PrintDBGridEh1: TPrintDBGridEh;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cb2: TComboBox;
    Label7: TLabel;
    Label8: TLabel;
    query1: TQuery;
    Edit3: TEdit;
    Label9: TLabel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    pfsmsgsbh: TStringField;
    pfsmspfbh1: TStringField;
    pfsmsclbh: TStringField;
    pfsmsywpm: TStringField;
    pfsmszwpm: TStringField;
    pfsmsclyl: TFloatField;
    pfsmstimes: TIntegerField;
    pfsmsokprint: TIntegerField;
    pfsmsworkdate: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RWreport: TRWreport;

implementation

uses main1;

{$R *.dfm}

procedure TRWreport.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TRWreport.FormDestroy(Sender: TObject);
begin
RWreport:=nil;
end;

procedure TRWreport.FormCreate(Sender: TObject);
var i:integer;
begin
DTP1.Date:=date-10;
DTP2.date:=date;
end;

procedure TRWreport.Button1Click(Sender: TObject);
var wherestr : string;
begin

  // 設定配方初始值
  with pfsms do
  begin
    active:=false;
    sql.Clear;
    //clzlsl.cldhz-->料號
    //clzl.ywpm,clzl.zwpm-->英文,中文物料名稱
    //clzlsl.clyl-->用量
    //只取出配方中的X,Y二種，可以視R廠的需求更改 clzlsl.lb-->配方類別
    sql.add('select pfsms.gsbh, pfmap.pfbh1, pfsms.clbh, clzl.ywpm, clzl.zwpm, clzlsl.clyl, pfsms.times, pfsms.okprint, pfsms.workdate ');
    sql.add('from pfsms                                                                                                ');
    sql.add('left join pfmap on pfsms.pfbh = pfmap.pfbh2                                                               ');
    sql.add('left join clzlsl on clzlsl.cldh = pfsms.pfbh and clzlsl.cldhz = pfsms.clbh                                ');
    sql.add('left join clzl on clzlsl.cldhz = clzl.cldh                                                                ');
    sql.add('where convert(smalldatetime,convert(varchar, pfsms.workdate, 111)) between                                ');
    sql.add('          ''' + formatdatetime('yyyy/MM/dd',DTP1.Date) + '''' + 'and ' + ''''+formatdatetime('yyyy/MM/dd',DTP2.Date) + '''');
    if cb2.Text <> 'ALL' then
      sql.add(' and pfsms.gsbh = ''' + cb2.Text + ''''                                                                  );
    sql.add('   and pfmap.pfbh1 like ''' + Edit1.Text + '%'''                                                           );
    sql.add('   and clzl.ywpm like ''%' + Edit2.Text + '%'''                                                             );
//    ShowMessage(pfsms.Text);
    active:=true;
  end;

  Edit3.Text := IntToStr(pfsms.RecordCount);
end;

procedure TRWreport.Button3Click(Sender: TObject);
begin
printdbgrideh1.Preview;
end;

procedure TRWreport.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin;     {
// 已採購外箱  但出貨memo在採購後有異動
if (Query1.FieldByName('BZDate').Value > Query1.FieldByName('CGDate').Value) then
  begin
    DBGrideh1.canvas.font.color:=clPurple;
  end;

//  訂單被刪除
if Query1.FieldByName('YN').IsNull then
  begin
    DBGrideh1.canvas.font.color:=clred;
  end;
          }
end;

procedure TRWreport.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
 begin
  if  pfsms.active  then
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
        for   i:=0   to   pfsms.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=pfsms.fields[i].FieldName;
          end;

        pfsms.First;
        j:=2;
        while   not   pfsms.Eof   do
          begin
            for   i:=0   to  pfsms.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=pfsms.Fields[i].Value;
            end;
          pfsms.Next;
          inc(j);
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

end.
