unit RWStatics1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls,ehlibBDE,
  comobj, PrnDbgeh, ComCtrls, Grids, DBGrids, Mask, DBCtrls;

type
  TRWStatics = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    pfsms1: TQuery;
    DS1: TDataSource;
    Button3: TButton;
    PrintDBGridEh1: TPrintDBGridEh;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    pfsms2: TQuery;
    pfsms1ywpm: TStringField;
    pfsms1clyl: TFloatField;
    PC1: TPageControl;
    TS3: TTabSheet;
    DBGrid3: TDBGridEh;
    TS4: TTabSheet;
    DBGrid4: TDBGridEh;
    Edit1: TEdit;
    Edit2: TEdit;
    Panel2: TPanel;
    Button8: TButton;
    Button9: TButton;
    DS2: TDataSource;
    pfsms1zwpm: TStringField;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    pfsms2pfbh2: TStringField;
    pfsms2okprint: TIntegerField;
    pfsms2clyl: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RWStatics: TRWStatics;

implementation

uses main1;

{$R *.dfm}

procedure TRWStatics.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TRWStatics.FormDestroy(Sender: TObject);
begin
RWStatics:=nil;
end;

procedure TRWStatics.FormCreate(Sender: TObject);
var i:integer;
begin
  // 使用者初始值
  if main <> nil then
    Edit1.Text := main.Edit2.Text
  else
    Edit1.Text := 'VR2';

  DTP1.Date:=date-30;
  DTP2.date:=date;
end;

procedure TRWStatics.Button1Click(Sender: TObject);
var wherestr : string;
begin

  // 設定配方初始值
  with pfsms1 do
  begin
    active:=false;
    sql.Clear;
    //clzlsl.cldhz-->料號
    //clzl.ywpm,clzl.zwpm-->英文,中文物料名稱
    //clzlsl.clyl-->用量
    //只取出配方中的X,Y二種，可以視R廠的需求更改 clzlsl.lb-->配方類別
    sql.add('select clzl.ywpm, clzl.zwpm, sum(pfsms.okprint*clzlsl.clyl) as clyl');
    sql.add('from pfsms                                                                                                ');
    sql.add('left join clzlsl on clzlsl.cldh = pfsms.pfbh and clzlsl.cldhz = pfsms.clbh                                ');
    sql.add('left join clzl on clzlsl.cldhz = clzl.cldh                                                                ');
    sql.add('where convert(smalldatetime,convert(varchar, pfsms.workdate, 111)) between                                ');
    sql.add('          ''' + formatdatetime('yyyy/MM/dd',DTP1.Date) + '''' + 'and ' + ''''+formatdatetime('yyyy/MM/dd',DTP2.Date) + '''');
    sql.add('  and pfsms.gsbh = ''' + Edit1.Text + '''                                                                 ');
    SQL.Add('  and pfsms.okprint <> 0                                                                                  ');
    sql.add('  and clzl.ywpm like ''%' + Edit2.Text + '%''                                                             ');
    sql.add('group by clzl.ywpm, clzl.zwpm                                                                             ');
  // ShowMessage(pfsms1.Text);
    active:=true;
  end;

end;

procedure TRWStatics.Button3Click(Sender: TObject);
begin
printdbgrideh1.Preview;
end;

procedure TRWStatics.DBGridEh1GetCellParams(Sender: TObject;
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

procedure TRWStatics.DBGrid3DblClick(Sender: TObject);
begin

  if ( pfsms1.Active = true ) and ( pfsms1.RecordCount <> 0 ) then
  begin
    with pfsms2 do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select pfsms.pfbh , sum(pfsms.okprint) as okprint, sum(pfsms.okprint*clzlsl.clyl) as clyl ');
      sql.Add('from pfsms                                                                                      ');
      sql.Add('left join clzlsl on clzlsl.cldh = pfsms.pfbh and clzlsl.cldhz = pfsms.clbh                      ');
      sql.Add('left join clzl on clzlsl.cldhz = clzl.cldh                                                      ');
      sql.add('where convert(smalldatetime,convert(varchar, pfsms.workdate, 111)) between                      ');
      sql.add('          ''' + formatdatetime('yyyy/MM/dd',DTP1.Date) + '''' + ' and ' + ''''+formatdatetime('yyyy/MM/dd',DTP2.Date) + '''');
      sql.Add('  and pfsms.okprint <> 0                                                                        ');
      sql.Add('  and clzl.ywpm = ''' + pfsms1.fieldbyname('ywpm').Value + '''                                  ');
      sql.Add('group by pfsms.pfbh                                                               ');
    //  ShowMessage(sql.Text);
      active:=true;
    end;
  end;

  PC1.ActivePage:=TS4;
  Panel1.Visible:=false;
  Panel2.Visible:=true;
end;

procedure TRWStatics.PC1Change(Sender: TObject);
begin
  if PC1.ActivePage=TS3 then
  begin
    Panel1.Visible:=true;
    Panel2.Visible:=false;
  end
  else
  begin
    DBGrid3DblClick(nil);
  end
end;


procedure TRWStatics.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
      count:integer;
begin
  if  pfsms1.active  then
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
        WorkBook.WorkSheets[1].Activate;
        for   i:=0   to   pfsms1.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=pfsms1.fields[i].FieldName;
          end;

        pfsms1.First;
        j:=2;
        while   not   pfsms1.Eof   do
        begin
            for   i:=0   to  pfsms1.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=pfsms1.Fields[i].Value;
            end;
          pfsms1.Next;
          inc(j);
        end;

        eclapp.columns.autofit;

        //////////////////////////////////   明細資料  sheets[2] ,  sheets[3] , sheets[4]  ...

        pfsms1.First;
        count := 2;
        while  not pfsms1.Eof do
        begin

          with pfsms2 do
          begin
            active:=false;
            sql.Clear;
            sql.Add('select pfsms.pfbh, sum(pfsms.okprint) as okprint, sum(pfsms.okprint*clzlsl.clyl) as clyl ');
            sql.Add('from pfsms                                                                                      ');
            sql.Add('left join clzlsl on clzlsl.cldh = pfsms.pfbh and clzlsl.cldhz = pfsms.clbh                      ');
            sql.Add('left join clzl on clzlsl.cldhz = clzl.cldh                                                      ');
            sql.add('where convert(smalldatetime,convert(varchar, pfsms.workdate, 111)) between                      ');
            sql.add('          ''' + formatdatetime('yyyy/MM/dd',DTP1.Date) + '''' + ' and ' + ''''+formatdatetime('yyyy/MM/dd',DTP2.Date) + '''');
            sql.Add('  and pfsms.okprint <> 0                                                                        ');
            sql.Add('  and clzl.ywpm = ''' + pfsms1.fieldbyname('ywpm').Value + '''                                  ');
            sql.Add('group by pfsms.pfbh                                                                             ');
        //  ShowMessage(sql.Text);
            active:=true;
          end;

          if count > 3 then
            eclapp.worksheets.Add( ,eclapp.ActiveSheet,,1) ;

          WorkBook.WorkSheets[count].Activate;

          eclApp.Cells(1, 1):= pfsms1.FieldByName('ywpm').Value;
          eclApp.Cells(2, 1):= pfsms1.FieldByName('zwpm').Value;
          eclApp.ActiveSheet.Range['A1:D1'].Merge;
          eclApp.ActiveSheet.Range['A2:D2'].Merge;

          for   i:=0   to   pfsms2.fieldcount-1   do
          begin
            eclApp.Cells(1+3,i+1):=pfsms2.fields[i].FieldName;
          end;

          pfsms2.First;
          j:=2;
          while   not   pfsms2.Eof   do
          begin
            for   i:=0   to  pfsms2.fieldcount-1  do
            begin
              eclApp.Cells(j+3,i+1):=pfsms2.Fields[i].Value;
            end;
            pfsms2.Next;
            inc(j);
          end;

          count := count + 1;
          pfsms1.Next;
        end;

        //////////////////////////////////

        showmessage('Succeed');
        eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure TRWStatics.Button8Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin
  if  pfsms2.active  then
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
        for   i:=0   to   pfsms2.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=pfsms2.fields[i].FieldName;
          end;

        pfsms2.First;
        j:=2;
        while   not   pfsms2.Eof   do
          begin
            for   i:=0   to  pfsms2.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=pfsms2.Fields[i].Value;
            end;
          pfsms2.Next;
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
