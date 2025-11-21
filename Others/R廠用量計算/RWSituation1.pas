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
    ddzl: TQuery;
    DS1: TDataSource;
    Button3: TButton;
    PrintDBGridEh1: TPrintDBGridEh;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit3: TEdit;
    Label9: TLabel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Edit1: TEdit;
    ddzlcldhz: TStringField;
    ddzlzwpm: TStringField;
    ddzlywpm: TStringField;
    ddzltclyl: TFloatField;
    ddzldwbh: TStringField;
    CB1: TComboBox;
    Edit2: TEdit;
    Label2: TLabel;
    Label4: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RWSituation: TRWSituation;

implementation

uses Math;



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
{  // 使用者初始值
  if main <> nil then
    Edit1.Text := main.Edit2.Text
  else
    Edit1.Text := 'VR2';
}
  Edit1.Text := 'VR2';     //////////////
  DTP1.Date:=date-30;
  DTP2.date:=date;
end;

procedure TRWSituation.Button1Click(Sender: TObject);
var wherestr : string;
begin
  // 設定配方初始值
  with ddzl do
  begin
    active:=false;
    sql.Clear;

    sql.add('SELECT  CLZLSL.cldhz , CLZLZ.zwpm,CLZLZ.ywpm                               ');
    sql.add('       ,round(SUM((DDZLS2.KGS/CLZL.TOTKGS)*CLZLSL.CLYL)+0.5,1) AS TCLYL, CLZLZ.DWBH                       ');
    sql.add('FROM DDZL                                                                                                 ');
    sql.add('LEFT JOIN DDZLS2 ON DDZL.DDBH = DDZLS2.DDBH AND  DDZL.CQDH = DDZLS2.CQDH                                  ');
    sql.add('LEFT JOIN CLZLSL ON DDZLS2.cldh = CLZLSL.cldh                                                             ');
    sql.add('LEFT JOIN CLZL ON DDZLS2.cldh = CLZL.cldh                                                                 ');
    sql.add('LEFT JOIN CLZL CLZLZ ON CLZLSL.cldhz = CLZLZ.cldh                                                         ');
    sql.add('where DDZL.SCRQ>='+''''+formatdatetime('yyyyMMdd',DTP1.date)+'''');
    sql.add('  and DDZL.SCRQ<='+''''+formatdatetime('yyyyMMdd',DTP2.date)+'''');
    sql.add('  and isnull(DDZL.YN, 0) <> ''2''                                                                         ');

    if CB1.Text <> 'ALL' then
      sql.add('and DDZL.cqdh = ''' + CB1.Text + '''');

    sql.add('  and CLZLZ.ywpm like ''%' + Edit2.Text + '%''                                                            ');
    sql.add('GROUP BY  CLZLSL.cldhz ,CLZLZ.zwpm,CLZLZ.ywpm, CLZLZ.DWBH                                                 ');
//    ShowMessage(sql.Text);
    active:=true;
  end;

  Edit3.Text := IntToStr(ddzl.RecordCount);
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
  if  ddzl.active  then
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
        eclApp.Cells(1,1):='gsbh';
        for   i:=0   to   ddzl.fieldcount-1   do
          begin
              eclApp.Cells(1,i+2):=ddzl.fields[i].FieldName;
          end;

        ddzl.First;
        j:=2;
        while   not   ddzl.Eof   do
          begin
            eclApp.Cells(j,1):=CB1.Text;
            for   i:=0   to  ddzl.fieldcount-1  do
            begin
              eclApp.Cells(j,i+2):=ddzl.Fields[i].Value;
            end;
          ddzl.Next;
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
