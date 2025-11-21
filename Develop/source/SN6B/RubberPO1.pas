unit RubberPO1;

interface               

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids, Mask, DBCtrls, Buttons,
  ExtCtrls, DB, DBTables, GridsEh, DBGridEh, Menus, comobj, ADODB, DBGridEhImpExp, ShellAPI,ehlibBDE;

type
  TRubberPO = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button2: TButton;
    Query1: TQuery;
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    Query1Season: TStringField;
    Query1SR: TStringField;
    Query1SKU: TStringField;
    Query1ShoeName: TStringField;
    Query1SampleOrder: TStringField;
    Query1R2: TStringField;
    Query1R3: TStringField;
    Query1Developer: TStringField;
    Query1Stage: TStringField;
    Query1ypcc: TStringField;
    Query1Cut: TStringField;
    Query1UpperMat: TStringField;
    Query1LiningMat: TStringField;
    Query1InsoleMat: TStringField;
    Query1OutsoleMat: TStringField;
    Query1UpperMatDetail: TStringField;
    Query1LiningMatDetail: TStringField;
    Query1InsoleMatDetail: TStringField;
    Query1OutsoleMatDetail: TStringField;
    Label4: TLabel;
    Edit4: TEdit;
    CheckBox1: TCheckBox;
    Query1R2Date: TDateTimeField;
    Query1R3Date: TDateTimeField;
    CheckBox2: TCheckBox;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Label5: TLabel;
    CheckBox3: TCheckBox;
    DTP3: TDateTimePicker;
    Label6: TLabel;
    DTP4: TDateTimePicker;
    Query1Quantity: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RubberPO: TRubberPO;

implementation

uses main1;

{$R *.dfm}

procedure TRubberPO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TRubberPO.FormDestroy(Sender: TObject);
begin
  RubberPO := nil;
end;

procedure TRubberPO.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
      active:=false;
      sql.Clear;
      sql.Add('select kfxxzl.jijie Season,kfxxzl.devcode SR,kfxxzl.article SKU,kfxxzl.xieming ShoeName,ypzl.ypdh SampleOrder,JNGR2.cgno R2,JNGR3.cgno R3,ypzl.fd Developer,ypzl.kfjd Stage,ypzl.ypcc,xxzlkf.Cut, ');
      sql.Add('xxzlkf.UpperMat,xxzlkf.LiningMat,xxzlkf.InsoleMat,xxzlkf.OutsoleMat, ');
      sql.Add('xxzlkf.UpperMatDetail,xxzlkf.LiningMatDetail,xxzlkf.InsoleMatDetail,xxzlkf.OutsoleMatDetail,JNGR2.cgdate as R2Date,JNGR3.cgdate as R3Date,YPZL.Quantity ');
      sql.Add('from kfxxzl ');
      sql.Add('left join xxzlkf on xxzlkf.xiexing=kfxxzl.xiexing and xxzlkf.shehao=kfxxzl.shehao ');
      sql.Add('left join ypzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
      sql.Add('left join  (select cgzlss.cgno,cgzlss.zlbh,cgzl.zsbh,cgzl.cgdate from cgzlss ');
      sql.Add('           left join cgzl on cgzlss.cgno=cgzl.cgno ');
      sql.Add('           where zsbh=''JNGR2''');
      if edit1.text<>'' then
         sql.Add('        and  season like ''%'+edit1.Text+'%''');        
      if main.Edit2.Text = 'SKX' then
        sql.Add('           and cgzl.gsbh=''SKX'')JNGR2 on JNGR2.zlbh=ypzl.ypdh ')
      else
        sql.Add('           and cgzl.gsbh=''cdc'')JNGR2 on JNGR2.zlbh=ypzl.ypdh ');

      sql.Add('left join  (select cgzlss.cgno,cgzlss.zlbh,cgzl.zsbh,cgzl.cgdate from cgzlss ');
      sql.Add('           left join cgzl on cgzlss.cgno=cgzl.cgno ');
      sql.Add('           where zsbh=''JNGR3''');
      if edit1.text<>'' then
         sql.Add('        and  season like ''%'+edit1.Text+'%''');
      if main.Edit2.Text = 'SKX' then
        sql.Add('           and cgzl.gsbh=''SKX'')JNGR3 on JNGR3.zlbh=ypzl.ypdh ')
      else
        sql.Add('           and cgzl.gsbh=''cdc'')JNGR3 on JNGR3.zlbh=ypzl.ypdh ');

      sql.Add('where 1 = 1 ');
      if CheckBox1.Checked = false then begin
        if main.Edit2.Text = 'SKX' then
          sql.Add('and substring(ypzl.ypdh, 1, 4) in (''SKXK'', ''SKXV'')')
        else                                                                                       
          sql.Add('and substring(ypzl.ypdh, 1, 4) in (''LAIV'', ''LAIS'', ''BYIV'')');
      end;
      if edit1.text<>'' then
         sql.Add('        and  kfxxzl.jijie like ''%'+edit1.Text+'%''');
      if edit2.text<>'' then
         sql.Add('        and ypzl.kfjd like ''%'+edit2.Text+'%''');
      if edit3.text<>'' then
         sql.Add('        and kfxxzl.devcode like ''%'+edit3.Text+'%''');
      if edit4.Text<>'' then
         sql.Add('        and ypzl.ypdh like ''%'+edit4.Text+'%''');
      if CheckBox2.Checked = true then
        sql.Add('        and JNGR2.cgdate >= '''+formatdatetime('YYYY/MM/DD',DTP1.Date)+''' and JNGR2.cgdate <= '''+formatdatetime('YYYY/MM/DD',DTP2.Date)+'''');
      if CheckBox3.Checked = true then
        sql.Add('        and JNGR3.cgdate >= '''+formatdatetime('YYYY/MM/DD',DTP3.Date)+''' and JNGR3.cgdate <= '''+formatdatetime('YYYY/MM/DD',DTP4.Date)+'''');
      sql.Add('group by kfxxzl.jijie,kfxxzl.devcode,kfxxzl.article,kfxxzl.xieming,ypzl.ypdh,JNGR2.cgno ,JNGR3.cgno ,ypzl.fd,ypzl.kfjd,ypzl.ypcc,xxzlkf.cut, ');
      sql.Add('xxzlkf.UpperMat,xxzlkf.LiningMat,xxzlkf.InsoleMat,xxzlkf.OutsoleMat, ');
      sql.Add('xxzlkf.UpperMatDetail,xxzlkf.LiningMatDetail,xxzlkf.InsoleMatDetail,xxzlkf.OutsoleMatDetail,JNGR2.cgdate ,JNGR3.cgdate,YPZL.Quantity ');
//      showmessage(SQL.Text);
      active:=true;
      //memo1.text:=sql.text;
  end;
end;

procedure TRubberPO.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  query1.active  then
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
        for   i:=0   to   query1.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
          end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
          begin
            for   i:=0   to  query1.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=query1.Fields[i].Value;
            end;
          query1.Next;
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

procedure TRubberPO.FormCreate(Sender: TObject);
begin
  DTP1.Date := now - 14;
  DTP2.Date := now;
  DTP3.Date := now - 14;
  DTP4.Date := now;
end;

end.
