unit MaterialNGColor1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, OleServer, ExcelXP, DBTables, DB, GridsEh, DBGridEh,
  ComCtrls, StdCtrls, Buttons, ExtCtrls,comobj;

type
  TMaterialNGColor = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    bbt6: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lbl1: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit2: TEdit;
    Edit3: TEdit;
    edt1: TEdit;
    Check: TCheckBox;
    CheckBox1: TCheckBox;
    Edit6: TEdit;
    PC1: TPageControl;
    DS4: TDataSource;
    CGDet: TQuery;
    UPDet: TUpdateSQL;
    PopupMenu1: TPopupMenu;
    S4: TMenuItem;
    S5: TMenuItem;
    N2: TMenuItem;
    S6: TMenuItem;
    S7: TMenuItem;
    N3: TMenuItem;
    ShowPrice1: TMenuItem;
    N1: TMenuItem;
    CGDetPURNO: TStringField;
    CGDetPurDate: TDateTimeField;
    CGDetCLBH: TStringField;
    CGDetywpm: TStringField;
    CGDetQty: TCurrencyField;
    CGDetRKQTY: TCurrencyField;
    CGDetUnit: TStringField;
    CGDetYQDate: TDateTimeField;
    CGDetMemo: TStringField;
    CGDetNG_Reason: TStringField;
    DBGridEh1: TDBGridEh;
    CGDetzsywjc: TStringField;
    CGDetinvoice: TStringField;
    qry1: TQuery;
    CGDetold_NG_Date: TDateTimeField;
    CGDetP_result: TStringField;
    CGDetNG_Date: TDateTimeField;
    CGDetRKNO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialNGColor: TMaterialNGColor;
  NDate:Tdate;

implementation

uses main1,fununit;

{$R *.dfm}

procedure TMaterialNGColor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TMaterialNGColor.FormDestroy(Sender: TObject);
begin
 MaterialNGColor:=nil;
end;

procedure TMaterialNGColor.BB1Click(Sender: TObject);
begin
  panel2.Visible:=true;
end;

procedure TMaterialNGColor.Button1Click(Sender: TObject);
begin
  with CGDet do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select CGZLS.CGNO AS PURNO,CGZL.CGDate AS PurDate,CGZLS.CLBH,CLZL.ywpm,cgzls.Qty,KCRKS.RKNO,sum(kcrks.Qty) AS RKQTY, clzl.dwbh as Unit,');
    sql.Add('CGZLS.YQDate,CGZLS.Memo,MaterialNG.NG_Reason,MaterialNG.P_result,zszl.zsywjc,kcrk.DOCNO as invoice,MaterialNG.NG_Date,MaterialNG.NG_Date as old_NG_Date');
    sql.Add('from CGZLS inner join CGZL on CGZL.CGNO=CGZLS.CGNO');
    sql.Add('left join zszl on cgzl.ZSBH=zszl.zsdh');
    sql.Add('inner join KCRK on cgzl.CGNO=KCRK.ZSNO');
    sql.Add('inner join KCRKS on kcrk.RKNO=KCRKS.RKNO and CGZLS.CLBH=KCRKS.CLBH');
    sql.Add('left join clzl on CGZLS.CLBH=clzl.cldh');
    sql.Add('left join MaterialNG on CGZLS.CGNO=MaterialNG.CGNO and CGZLS.CLBH=MaterialNG.CLBH and MaterialNG.RKNO=KCRKS.RKNO');
    sql.Add('where cgzl.gsbh='''+main.edit2.Text+'''');
    sql.add('      and (CGZL.CGLX='+''''+'2'+'''' );
    sql.add('           or CGZL.CGLX='+''''+'1'+''''+')' );
    if check.Checked then
       sql.Add('and CGZL.USERID='+''''+main.Edit1.Text+'''');
    if edit1.Text<>'' then
       sql.add('and CGZLS.CGNO like '''+edit1.Text+'%'+'''');
    if edit2.Text<>'' then
      sql.Add('and CGZL.ZSBH like '''+edit2.Text+'%'+'''');
    if edit3.Text<>'' then
       sql.add('and ZSZL.ZSYWJC like '''+'%'+edit3.Text+'%'+'''');
    if edt1.Text<> '' then
        sql.Add('and kcrk.docno like '''+'%'+edt1.Text+'%'+'''');
    if length(Edit6.Text) > 0  then
       sql.add(' and CGZLS.CLBH like '''+Edit6.Text+'%'+'''');
    if (CheckBox1.Checked)  and (length(edt1.Text)=0) then
       begin
         sql.add('and convert(smalldatetime,convert(varchar,CGZL.USERDATE,111)) between ');
         sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
       end;   
    sql.Add('group by CGZLS.CGNO,CGZL.CGDate,CGZLS.CLBH,CLZL.ywpm,cgzls.Qty,KCRKS.RKNO,clzl.dwbh,');
    SQL.Add('CGZLS.YQDate,CGZLS.Memo,MaterialNG.NG_Reason,MaterialNG.P_result,zszl.zsywjc,kcrk.DOCNO,MaterialNG.NG_Date');
    sql.add('order by CGZLS.CGNO,CGZL.CGDate,CGZLS.CLBH');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  BB4.Enabled:=true;
end;

procedure TMaterialNGColor.FormCreate(Sender: TObject);
begin
  DTP1.Date:=date-3;
  DTP2.date:=date;
end;

procedure TMaterialNGColor.BB4Click(Sender: TObject);
begin
with CGDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  bb5.Enabled:=true;
  bb6.Enabled:=true;
end;

procedure TMaterialNGColor.BB6Click(Sender: TObject);
begin
with CGDet do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  bb5.Enabled:=false;
  bb6.Enabled:=false;
end;

procedure TMaterialNGColor.BB5Click(Sender: TObject);
var i: integer;
    mdate : Tdate;
begin
  with qry1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  with CGDet do
  begin
   CGDet.First;
    while not CGDet.Eof do
      begin
        if ((CGDet.fieldbyname('NG_Reason').AsString<>'')  and (CGDet.fieldbyname('NG_Date').IsNull))  then
        begin
          showmessage('Pls select Reject date.');
          abort;
        end;
        next;
      end;
  end;   
try
  CGDet.First;
  for i:=0 to cgdet.RecordCount-1 do
  begin
    if CGDet.updatestatus=usmodified then
    begin
       if (CGDet.fieldbyname('NG_Reason').AsString='') and (CGDet.fieldbyname('P_result').AsString='')  then
            begin
                with qry1 do
                begin
                  active:=false;
                  sql.Clear;
                  sql.Add(' delete MaterialNG  ');
                  sql.Add(' where CLBH = '''+CGDet.fieldbyname('CLBH').AsString+'''');
                  sql.Add('     and CGNO='''+CGDet.fieldbyname('PURNO').AsString+'''');
                  sql.Add('     and RKNO='''+CGDet.fieldbyname('RKNO').AsString+'''');
                  sql.Add('     and NG_Date='''+CGDet.fieldbyname('old_NG_Date').AsString+'''');
                  execsql;
                end;
              end
            else
              begin
                with qry1 do
                begin
                  active:=false;
                  sql.Clear;
                  sql.Add(' select * from MaterialNG where CLBH='''+CGDet.fieldbyname('CLBH').AsString+'''');
                  sql.Add('                            and CGNO='''+CGDet.fieldbyname('PURNO').AsString+'''');
                  sql.Add('                            and RKNO='''+CGDet.fieldbyname('RKNO').AsString+'''');
                 // sql.Add('                            and NG_Date='''+formatdatetime('yyyy/mm/dd hh:mm:ss',CGDet.fieldbyname('NG_Date').Value)+'''');
                  active:=true;
                  if eof then
                  begin
                    active:=false;
                    sql.Clear;
                    sql.Add(' insert MaterialNG (CLBH,CGNO,NG_Date,NG_Reason,USERDate,USERID,P_result,RKNO) values (');
                    sql.Add(' '''+CGDet.fieldbyname('CLBH').AsString+'''');
                    sql.Add(','''+CGDet.fieldbyname('PURNO').AsString+'''');
                    sql.Add(','''+formatdatetime('yyyy/mm/dd hh:mm:ss',CGDet.fieldbyname('NG_Date').Value)+'''');
                    sql.Add(','''+CGDet.fieldbyname('NG_Reason').AsString+'''');
                    sql.add(' ,'''+formatdatetime('yyyy/mm/dd hh:mm:ss',Ndate)+'''');
                    sql.add(' ,'''+main.edit1.text+'''');
                    sql.Add(','''+CGDet.fieldbyname('P_result').AsString+'''');
                    sql.Add(','''+CGDet.fieldbyname('RKNO').AsString+'''');
                    sql.Add(')');
                    execsql;

                  end
                  else
                  begin
                    active:=false;
                    sql.Clear;
                    sql.Add(' update MaterialNG set ');
                    sql.Add('NG_Date='''+formatdatetime('yyyy/mm/dd hh:mm:ss',CGDet.fieldbyname('NG_Date').Value)+'''');
                    sql.Add(' ,NG_Reason='''+CGDet.fieldbyname('NG_Reason').AsString+'''');
                    sql.add(' ,USERDate='+''''+formatdatetime('yyyy/mm/dd hh:mm:ss',Ndate)+'''');
                    sql.add(' ,USERID='+''''+main.edit1.text+'''');
                    sql.Add(' ,P_result='''+CGDet.fieldbyname('P_result').AsString+'''');
                    sql.Add(' where CLBH = '''+CGDet.fieldbyname('CLBH').AsString+'''');
                    sql.Add('   and CGNO = '''+CGDet.fieldbyname('PURNO').AsString+'''');
                    sql.Add('   and RKNO='''+CGDet.fieldbyname('RKNO').AsString+'''');
                    mdate := CGDet.fieldbyname('old_NG_Date').Value;
                    sql.Add('   and NG_Date='''+formatdatetime('yyyy/mm/dd hh:mm:ss',mdate)+'''');
                    execsql;
                  end;
                end;
              end;

   end;
    CGDet.Next;
  end;
  CGDet.active:=false;
  CGDet.cachedupdates:=false;
  CGDet.requestlive:=false;
  CGDet.active:=true;
  BB4.Enabled:=true;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TMaterialNGColor.bbt6Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin
  if CGDet.Active then
  begin
    if CGDet.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end
  else
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
  for   i:=1   to   CGDet.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=CGDet.fields[i-1].FieldName;
    end;
  CGDet.First;
  j:=2;
  while   not  CGDet.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   CGDet.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=CGDet.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
      CGDet.Next;
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

procedure TMaterialNGColor.BB7Click(Sender: TObject);
begin
  close;
end;

end.
