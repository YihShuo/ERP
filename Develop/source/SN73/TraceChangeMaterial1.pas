unit TraceChangeMaterial1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls, Buttons,
  ExtCtrls, Comobj ;

type
  TTraceChangeMaterial = class(TForm)
    Panel1: TPanel;
    bnShow: TBitBtn;
    bnExcel: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    YPDHEdit: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    TCMQry: TQuery;
    DS_TCM: TDataSource;
    TCMQryypdh: TStringField;
    TCMQrybwbh: TStringField;
    TCMQryclbh: TStringField;
    TCMQryclsl: TFloatField;
    TCMQrycsbh: TStringField;
    TCMQryquantity: TFloatField;
    TCMQryuserdate: TDateTimeField;
    TCMQryuserID: TStringField;
    TCMQryOLDbwbh: TStringField;
    TCMQryOLDclbh: TStringField;
    TCMQryOLDcsbh: TStringField;
    TCMQryOLDquantity: TFloatField;
    TCMQryOLDclsl: TFloatField;
    TCMQryOLDYPCC: TStringField;
    TCMQryOLDYPCCO: TStringField;
    TCMQryOLDYPCCL: TStringField;
    TCMQryypcc: TStringField;
    TCMQryypcco: TStringField;
    TCMQryypccl: TStringField;
    TCMQryarticle: TStringField;
    TCMQryypzlbh: TStringField;
    Edit1: TEdit;
    Label2: TLabel;
    TCMQrynewzszl: TStringField;
    TCMQryoldzszl: TStringField;
    TCMQrynewbwzl: TStringField;
    TCMQryoldbwzl: TStringField;
    CheckBox1: TCheckBox;
    TCMQrySamplepurchaser: TStringField;
    TCMQrycldh1: TStringField;
    TCMQryzsdh: TStringField;
    TCMQryzsywjc: TStringField;
    Edit2: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    ComboBox1: TComboBox;
    QTEMP: TQuery;
    TCMQryJiJie: TStringField;
    TCMQryKFJD: TStringField;
    Label6: TLabel;
    DTP2: TDateTimePicker;
    CheckBox2: TCheckBox;
    DTP1: TDateTimePicker;
    TCMQryFD: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure bnExcelClick(Sender: TObject);
    procedure bnShowClick(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TraceChangeMaterial: TTraceChangeMaterial;

implementation

uses main1;

{$R *.dfm}

{procedure TTraceChangeMaterial.FormCreate(Sender: TObject);
begin
  DTP1.Date:=now-5;
  DTP2.Date:=now;
end;}

procedure TTraceChangeMaterial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:=cafree;
end;

procedure TTraceChangeMaterial.FormDestroy(Sender: TObject);
begin
 TraceChangeMaterial:=Nil;
end;

procedure TTraceChangeMaterial.Button1Click(Sender: TObject);
begin
  with TCMQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select MAIN.*,newzszl.zsywjc AS newzszl,oldzszl.zsywjc AS oldzszl,newbwzl.YWSM AS newbwzl,oldbwzl.YWSM AS oldbwzl,zszl_dev.Samplepurchaser,mixclbh.cldh1,mixclbh.zsdh,subzszl.zsywjc from(');
    sql.Add('select YPZL_log.ypdh,YPZLZLS.ypzlbh,ypzl.article,YPZL_log.bwbh,YPZL_log.clbh,YPZL_log.clsl,');
    sql.Add('YPZL_log.csbh,YPZL_log.quantity,YPZL_log.ypcc,');
//2021/03/06 Kevin 加上JiJie  KFJD 季節，階段兩個資料
    sql.Add('YPZL_log.ypcco,YPZL_log.ypccl,YPZL_log.userdate,YPZL_log.userID,kfxxzl.JiJie,YPZL.KFJD,YPZL.FD,');
    sql.Add('case when YPZL_log.bwbh=YPZL_log.oldbwbh then null else YPZL_log.OLDbwbh end as OLDbwbh,');
    sql.Add('case when YPZL_log.clbh=YPZL_log.oldclbh then null else YPZL_log.OLDclbh end as OLDclbh,');
    sql.Add('case when YPZL_log.csbh=YPZL_log.oldcsbh then null else YPZL_log.OLDcsbh end as OLDcsbh,');
    sql.Add('case when YPZL_log.quantity=YPZL_log.oldquantity then null else OLDquantity end as OLDquantity,');
    sql.Add('case when YPZL_log.clsl=YPZL_log.oldclsl then null else YPZL_log.oldclsl end as OLDclsl,');
    sql.Add('case when YPZL_log.YPCC=YPZL_log.oldYPCC then null else YPZL_log.oldYPCC end as OLDYPCC,');
    sql.Add('case when YPZL_log.YPCCO=YPZL_log.oldYPCCO then null else YPZL_log.oldYPCCO end as OLDYPCCO,');
    sql.Add('case when YPZL_log.YPCCL=YPZL_log.oldYPCCL then null else YPZL_log.oldYPCCL end as OLDYPCCL');
    sql.Add('from YPZL_log');
    sql.Add('left join ypzl on ypzl.ypdh=YPZL_log.ypdh');
    sql.Add('left join YPZLZLS on YPZLZLS.ypdh=YPZL_log.ypdh');
//2021/03/06 Kevin 加上JiJie  KFJD 季節，階段兩個資料
    sql.Add('left join kfxxzl on kfxxzl.XieXing = YPZL.XieXing and kfxxzl.SheHao = YPZL.SheHao');
    sql.Add('where 1=1');
    if YPDHEdit.Text<>'' then
       sql.Add('and YPZL_log.YPDH like  ''%'+YPDHEdit.Text+'%'' ');
    if Edit1.Text<>'' then
       sql.Add('and YPZLZLS.ypzlbh like  ''%'+edit1.Text+'%'' ');

//2021/03/06 Kevin 加上JiJie  KFJD 季節，階段兩個資料
    if trim(Edit2.Text)<>'' then
       sql.Add('and kfxxzl.JiJie like  ''%'+edit2.Text+'%'' ');
    if trim(ComboBox1.Text)<>'' then
       sql.Add('and YPZL.KFJD like  ''%'+ComboBox1.Text+'%'' ');
    if checkbox2.Checked then begin
      sql.add('      and convert(smalldatetime,convert(varchar,YPZL_log.UserDate,111)) between ');
      sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;

    sql.Add(')main');
    sql.Add('left join zszl newzszl on main.csbh=newzszl.zsdh');
    sql.Add('left join zszl oldzszl on main.OLDcsbh=oldzszl.zsdh');
    sql.Add('left join bwzl newbwzl on main.bwbh=newbwzl.BWDH');
    sql.Add('left join bwzl oldbwzl on main.OLDbwbh=oldbwzl.BWDH');
    sql.Add('left join clzhzl mixclbh on main.clbh=mixclbh.cldh');
    sql.Add('left join zszl subzszl on mixclbh.zsdh=subzszl.zsdh');
    sql.Add('left join (select zsdh,gsbh,Samplepurchaser from zszl_dev where gsbh=''CDC'')zszl_dev on main.CSBH=zszl_dev.zsdh');
    if checkbox1.Checked then
       sql.Add('where zszl_dev.Samplepurchaser='''+main.edit1.text+''' ');
    sql.Add('group by MAIN.ypdh,MAIN.ypzlbh,MAIN.article,MAIN.bwbh,MAIN.clbh,MAIN.clsl,');
    sql.Add('MAIN.csbh,MAIN.quantity,MAIN.ypcc,');
    sql.Add('MAIN.ypcco,MAIN.ypccl,MAIN.userdate,MAIN.userID,OLDbwbh,OLDclbh,OLDcsbh,OLDquantity,OLDclsl,OLDYPCC,OLDYPCCO,OLDYPCCL,');
    sql.Add('newzszl.zsywjc,oldzszl.zsywjc,newbwzl.YWSM,oldbwzl.YWSM,zszl_dev.Samplepurchaser,mixclbh.cldh1,mixclbh.zsdh,subzszl.zsywjc,');
//2021/03/06 Kevin 加上JiJie  KFJD 季節，階段兩個資料
    sql.Add('main.JiJie,main.KFJD,main.FD');
    sql.Add('order by MAIN.UserDate desc');
    //funcobj.WriteErrorLog(sql.Text);
   //memo1.text:=sql.text;
    active:=true;
  end;
  Panel2.Visible:=false;
end;

procedure TTraceChangeMaterial.bnExcelClick(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if  TCMQry.active  then
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
          for   i:=0   to   TCMQry.fieldcount-1   do
            begin
                eclApp.Cells(1,i+1):=TCMQry.fields[i].FieldName;
            end;

          TCMQry.First;
          j:=2;
          while   not   TCMQry.Eof   do
            begin
              for   i:=0   to  TCMQry.fieldcount-1  do
              begin
                eclApp.Cells(j,i+1):=TCMQry.Fields[i].Value;
              end;
            TCMQry.Next;
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

procedure TTraceChangeMaterial.bnShowClick(Sender: TObject);
begin
 Panel2.Visible:=true;
end;

procedure TTraceChangeMaterial.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (TCMQry.FieldByName('oldClsl').AsString<>'') then
  begin
     if (DataCol=10) then
     begin
       DBGridEh1.canvas.Brush.Color:=clyellow;
       DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
     end;
  end;
  if (TCMQry.FieldByName('oldbwbh').AsString<>'') then
  begin
     if (DataCol=4) then
     begin
       DBGridEh1.canvas.Brush.Color:=clyellow;
       DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
     end;
  end;
  if (TCMQry.FieldByName('oldclbh').AsString<>'') then
  begin
     if (DataCol=6) then
     begin
       DBGridEh1.canvas.Brush.Color:=clyellow;
       DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
     end;
  end;
  if (TCMQry.FieldByName('oldclbh').AsString='') then
  begin
     if (DataCol=8) then
     begin
       DBGridEh1.canvas.Brush.Color:=clblack;
       DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
     end;
     if (DataCol=9) then
     begin
       DBGridEh1.canvas.Brush.Color:=clblack;
       DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
     end;
  end;
  if (TCMQry.FieldByName('oldcsbh').AsString<>'') then
  begin
     if (DataCol=12) then
     begin
       DBGridEh1.canvas.Brush.Color:=clyellow;
       DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
     end;
  end;
  if (TCMQry.FieldByName('oldquantity').AsString<>'') then
  begin
     if (DataCol=14) then
     begin
       DBGridEh1.canvas.Brush.Color:=clyellow;
       DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
     end;
  end;
  if (TCMQry.FieldByName('oldYPCC').AsString<>'') then
  begin
     if (DataCol=16) then
     begin
       DBGridEh1.canvas.Brush.Color:=clyellow;
       DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
     end;
  end;
  if (TCMQry.FieldByName('oldYPCCO').AsString<>'') then
  begin
     if (DataCol=18) then
     begin
       DBGridEh1.canvas.Brush.Color:=clyellow;
       DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
     end;
  end;
  if (TCMQry.FieldByName('oldYPCCL').AsString<>'') then
  begin
     if (DataCol=20) then
     begin
       DBGridEh1.canvas.Brush.Color:=clyellow;
       DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
     end;
  end;
end;



procedure TTraceChangeMaterial.FormCreate(Sender: TObject);
begin
  QTEMP.Active := false;
  QTEMP.SQL.Text := 'Select Distinct KFJD from YPZL order by KFJD';
  QTEMP.Open;
  ComboBox1.Clear;
  while not QTEMP.Eof do begin
    ComboBox1.Items.Add(QTEMP.Fields[0].AsString);
    QTEMP.Next;
  end;
  DTP1.Date := now - 3;
  DTP2.Date := now + 3;
end;

end.
