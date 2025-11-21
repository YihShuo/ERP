unit Detail_Rubber_In1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, PrnDbgeh, DB, GridsEh, DBGridEh, ComCtrls, StdCtrls, comobj,
  ExtCtrls,fununit;

type
  TDetail_Rubber_In = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    RubberIn: TQuery;
    DSRubberIn: TDataSource;
    DBGridEh3: TDBGridEh;
    Label2: TLabel;
    CBX1: TComboBox;
    Label3: TLabel;
    Edit1: TEdit;
    Label5: TLabel;
    Edit2: TEdit;
    Check: TCheckBox;
    RubberInCQDH: TStringField;
    RubberInDGLB: TStringField;
    RubberInKSDH: TStringField;
    RubberInLYDH: TStringField;
    RubberInCLDH: TStringField;
    RubberInQtyRubberIn: TFloatField;
    RubberInNY: TStringField;
    RubberInUSERID: TStringField;
    RubberInUSERDATE: TStringField;
    Date: TCheckBox;
    DTP1: TDateTimePicker;
    Label4: TLabel;
    DTP2: TDateTimePicker;
    RubberInKSRQ: TStringField;
    Panel2: TPanel;
    Splitter1: TSplitter;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1cldh: TStringField;
    Query1ywpm: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Detail_Rubber_In: TDetail_Rubber_In;

implementation

uses main1;

{$R *.dfm}

procedure TDetail_Rubber_In.Button1Click(Sender: TObject);
begin
    with RubberIn do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select KSYD.CQDH,KSYD.DGLB,KSYD.KSDH,KSYD.LYDH,CONVERT(DATE, KSYD.KSRQ, 111) AS KSRQ,CLDH,SUM(ISNULL(KSYDS.SL,0)) as QtyRubberIn,KSYDS.NY,KSYD.USERID,CONVERT(DATE, KSYD.USERDATE, 111) AS USERDATE');
      sql.Add('from '+main.LIY_DD+'.dbo.KSYD  KSYD inner join '+main.LIY_DD+'.dbo.KSYDs KSYDs');
      sql.Add('on KSYD.DGLB=KSYDS.DGLB and KSYD.CQDH=KSYDS.CQDH and KSYD.KSDH=KSYDS.KSDH');
      sql.Add('where 1=1 and KSYD.CQDH='''+CBX1.Text+''' ');
      if Date.Checked then
        sql.Add('and  KSYD.KSRQ between '''+formatdatetime('yyyymmdd',dtp1.Date)+''' and  '''+formatdatetime('yyyymmdd',dtp2.Date)+'''');
      if Edit1.Text<>'' then
        sql.Add('and KSYD.KSDH='''+Edit1.Text+''' ');
      if Edit2.Text<>'' then
        sql.Add('and CLDH='''+Edit2.Text+''' ');
      sql.Add('and KSYD.LYLB in (''F'',''A'') and KSYD.DGLB=''I''');
      if Check.Checked then
       sql.Add('      and KSYD.USERID='+''''+main.Edit1.Text+'''');
      sql.Add('group by KSYD.CQDH,KSYD.DGLB,KSYD.KSDH,KSYD.LYDH,KSYD.KSRQ,CLDH,KSYDS.NY,KSYD.USERID,KSYD.USERDATE');
      sql.Add('order by KSYD.KSDH,CLDH');
      //funcobj.WriteErrorLog(sql.Text);
      active:=true;
    end;
    
    with Query1 do
    begin
     active:=false;
     sql.Clear;
     sql.Add('Select CLZL_ERP.cldh,CLZL_ERP.ywpm ');
     sql.Add('From '+main.LIY_DD+'.dbo.CLZLSL CLZLSL ');
     sql.Add('Left join '+main.LIY_DD+'.dbo.CLZL CLZL on CLZL.cldh=CLZLSL.cldhz ');
     sql.Add('Left join clzl CLZL_ERP on ''A''+CLZL_ERP.cldh=CLZLSL.cldhz ');
     sql.Add('Where CLZLSL.cldh=:cldh ');
     sql.Add('Order by CLZL_ERP.cldh ');
     active:=true;
    end;
end;

procedure TDetail_Rubber_In.FormCreate(Sender: TObject);
var myYear, myMonth, myDay : Word;
begin
  DecodeDate(now, myYear, myMonth, myDay);
  DTP1.Date:=EncodeDate(myYear, myMonth, 1);
  DTP2.date:=now;
  //AppDir:=ExtractFilePath(Application.ExeName);
end;

procedure TDetail_Rubber_In.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TDetail_Rubber_In.FormDestroy(Sender: TObject);
begin
  Detail_Rubber_In:=nil;
end;

procedure TDetail_Rubber_In.Button2Click(Sender: TObject);
var
  eclApp,WorkBook:olevariant;
  i,j:integer;
begin

    if RubberIn.Active then
    begin
      if RubberIn.recordcount=0 then
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
      for i:=0 to DBGridEh3.Columns.Count-1 do
      begin
        eclApp.Cells(1,i+2):=DBGridEh3.Columns[i].Title.Caption;
      end;
      RubberIn.First;
      j:=2;
      while   not  RubberIn.Eof   do
      begin
          eclApp.Cells(j,1):=j-1;
          for i:=0 to DBGridEh3.Columns.Count-1 do
          begin
              eclApp.Cells(j,i+2):=DBGridEh3.Fields[i].Value;
              eclApp.Cells.Cells.item[j,i+2].font.size:='10';
          end;
          RubberIn.Next;
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

end.
