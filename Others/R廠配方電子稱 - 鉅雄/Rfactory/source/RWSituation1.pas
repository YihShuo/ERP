unit RWSituation1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls,ehlibBDE,
  comobj, PrnDbgeh, ComCtrls, Grids, DBGrids;

type
  TRWSituation = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    pfsms: TQuery;
    DS1: TDataSource;
    Button3: TButton;
    PrintDBGridEh1: TPrintDBGridEh;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Edit3: TEdit;
    Label9: TLabel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Edit2: TEdit;
    pfsmspfbh1: TStringField;
    pfsmstimes: TIntegerField;
    pfsmsokprint: TIntegerField;
    pfsmsworkdate: TDateTimeField;
    Edit1: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RWSituation: TRWSituation;

implementation

uses main1;

{$R *.dfm}

procedure TRWSituation.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TRWSituation.FormDestroy(Sender: TObject);
begin
RWSituation:=nil;
end;

procedure TRWSituation.FormCreate(Sender: TObject);
var i:integer;
begin
  // 使用者初始值
  if main <> nil then
    Edit1.Text := main.Edit2.Text
  else
    Edit1.Text := 'VR2';

  DTP1.Date:=date-10;
  DTP2.date:=date;
end;

procedure TRWSituation.Button1Click(Sender: TObject);
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
    sql.add('select pfsms.pfbh, min(pfsms.times) as times, min(pfsms.okprint) as okprint, pfsms.workdate   ');
    sql.add('from pfsms                                                                                                ');
    sql.add('left join clzlsl on clzlsl.cldh = pfsms.pfbh and clzlsl.cldhz = pfsms.clbh                                ');
    sql.add('left join clzl on clzlsl.cldhz = clzl.cldh                                                                ');
    sql.add('where convert(smalldatetime,convert(varchar, pfsms.workdate, 111)) between                                ');
    sql.add('          ''' + formatdatetime('yyyy/MM/dd',DTP1.Date) + '''' + 'and ' + ''''+formatdatetime('yyyy/MM/dd',DTP2.Date) + '''');
    sql.add(' and pfsms.gsbh = ''' + Edit1.Text + '''                                                                  ');
    sql.add(' and pfsms.pfbh like ''' + Edit2.Text + '%''                                                              ');
    sql.add('group by pfsms.pfbh, pfsms.workdate                                                           ');
//    ShowMessage(pfsms.Text);
    active:=true;
  end;

  Edit3.Text := IntToStr(pfsms.RecordCount);
end;

procedure TRWSituation.Button3Click(Sender: TObject);
begin
printdbgrideh1.Preview;
end;

procedure TRWSituation.Button2Click(Sender: TObject);
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
       showmessage('Succeed');
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TRWSituation.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (pfsms.FieldByName('times').Value <> pfsms.FieldByName('okprint').Value) then
  begin
    DbGrid1.Canvas.font.Color:=clRed;
    DbGrid1.DefaultDrawColumnCell(Rect,datacol,column,state);
  end;
end;

end.
