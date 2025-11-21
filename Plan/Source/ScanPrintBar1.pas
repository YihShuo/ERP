unit ScanPrintBar1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, DBTables, GridsEh, DBGridEh, Menus
  ,math, ExcelXP, OleServer,ShellApi;

type
  TScanPrintBar = class(TForm)
    Panel3: TPanel;
    Label1: TLabel;
    Label7: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    CBX1: TComboBox;
    CBX2: TComboBox;
    CBX3: TComboBox;
    Edit2: TEdit;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    SMDD: TQuery;
    SMDDDDBH: TStringField;
    SMDDGXLB: TStringField;
    SMDDMEMO: TStringField;
    SMDDYSBH: TStringField;
    SMDDKFJC: TStringField;
    SMDDGSBH: TStringField;
    SMDDArticle: TStringField;
    SMDDXieMing: TStringField;
    SMDDQty: TIntegerField;
    SMDDSCCX: TStringField;
    SMDDSB: TStringField;
    SMDDSCYEAR: TStringField;
    SMDDSCMONTH: TStringField;
    SMDDDepName: TStringField;
    SMDDPlanDate: TDateTimeField;
    SMDDUSERDate: TDateTimeField;
    SMDDUSERID: TStringField;
    SMDDYN: TStringField;
    DS1: TDataSource;
    SMDDSS: TQuery;
    DS2: TDataSource;
    Qtemp: TQuery;
    SMDDokBH: TStringField;
    SMDDSSDDBH: TStringField;
    SMDDSSGXLB: TStringField;
    SMDDSSXXCC: TStringField;
    SMDDSSCODEBAR: TStringField;
    SMDDSSQty: TIntegerField;
    SMDDSSCTS: TIntegerField;
    SMDDSSokCTS: TIntegerField;
    SMDDSSUSERDate: TDateTimeField;
    SMDDSSUSERID: TStringField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    SMDDSSYN: TStringField;
    SMDDS: TQuery;
    UpSMDDSS: TUpdateSQL;
    PopupMenu2: TPopupMenu;
    B1: TMenuItem;
    B2: TMenuItem;
    B3: TMenuItem;
    SMDDSDDBH: TStringField;
    SMDDSXXCC: TStringField;
    SMDDSQty: TIntegerField;
    SMDDSUSERDate: TDateTimeField;
    SMDDSUSERID: TStringField;
    SMDDSYN: TStringField;
    SMDDSSXH: TStringField;
    SMDDSSTotQty: TIntegerField;
    ProBARPrint: TTable;
    ProBARPrintDDBH: TStringField;
    ProBARPrintGXLB: TStringField;
    ProBARPrintXXCC: TStringField;
    ProBARPrintXH: TStringField;
    ProBARPrintQTY: TSmallintField;
    ProBARPrintCODEBAR: TStringField;
    ProBARPrintGXMC: TStringField;
    SMDDSSMEMO: TStringField;
    ProBARPrintCTS: TSmallintField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure SMDDSSAfterOpen(DataSet: TDataSet);
    procedure DBGridEh2KeyPress(Sender: TObject; var Key: Char);
    procedure N1Click(Sender: TObject);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure SMDDSSCalcFields(DataSet: TDataSet);
    procedure B1Click(Sender: TObject);
    procedure B2Click(Sender: TObject);
    procedure B3Click(Sender: TObject);
    procedure SMDDSSNewRecord(DataSet: TDataSet);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanPrintBar: TScanPrintBar;
  NDate:TDate;

implementation

uses main1;

{$R *.dfm}

procedure TScanPrintBar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if B2.enabled then
  begin
    showmessage('Pls save data first.');
    action:=canone;
  end
  else
    begin
      action:=cafree;
    end;
end;

procedure TScanPrintBar.FormDestroy(Sender: TObject);
begin
ScanPrintBar:=nil;
end;

procedure TScanPrintBar.Button1Click(Sender: TObject);
begin

with SMDD do
  begin
    active:=false;
    sql.Clear;
    sql.add('select SMDD.*,SCGXDY.MEMO,Bdepartment.DepName,KFZL.KFJC,SMDDSS.okBH ');
    sql.add('from SMDD');
    sql.add('left join SCGXDY on SCGXDY.GX=SMDD.GXLB and len(SCGXDY.GXLB)=1  ');
    sql.add('left join Bdepartment on Bdepartment.ID=SMDD.DepNo ');
    sql.add('left join DDZL on DDZl.DDBH=SMDD.YSBH ');
    sql.add('left join KFZL on KFZL.KFDH=DDZL.KHBH ');
    sql.add('left join (select distinct DDBH as okBH,GXLB from SMDDSS ) SMDDSS ');
    sql.add('          on SMDDSS.okBH=SMDD.DDBH and SMDDSS.GXLB=SMDD.GXLB ');
    sql.add('where SMDD.DDBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and BDepartment.DepName like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('      and SMDD.SCYEAR='+''''+CBX1.Text+'''');
    sql.add('      and SMDD.SCMONTH='+''''+CBX2.Text+'''');
    sql.add('      and SMDD.GSBH='+''''+main.edit2.text+'''');
    sql.add('      and SMDD.PlanDate is not null');
    sql.Add('      and SMDD.SB<>'+''''+'3'+'''');
    if CBX3.itemindex<>0 then
      begin
        sql.add('      and SMDD.GXLB='+''''+CBX3.Text+'''');
      end;
    sql.add('order by SMDD.DDBH,SMDD.SCCX ');
    active:=true;
  end;
SMDDSS.Active:=true;
SMDDS.Active:=true;
end;

procedure TScanPrintBar.FormCreate(Sender: TObject);
var i:integer;
begin
with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct GX from SCGXDY order by GX');
    active:=true;
    for i:=1 to recordcount do
      begin
        CBX3.Items.Add(fieldbyname('GX').asstring);
        next;
      end;
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
    //DTP1.Date:=startoftheweek(incweek(NDate,1));
    //DTP2.Date:=endoftheweek(incweek(NDate,1));
  end;

end;

procedure TScanPrintBar.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

if not SMDD.FieldByName('okBH').IsNull then
  begin
    DBGrideh1.canvas.font.color:=clLime;
  end; 
if SMDD.FieldByName('SB').IsNull then
  begin
    DBGrideh1.canvas.font.color:=clred;
  end;
end;

procedure TScanPrintBar.SMDDSSAfterOpen(DataSet: TDataSet);
begin
if SMDDSS.recordcount=0 then
  begin
    if  SMDD.recordcount>0 then
      begin
        N1.Enabled:=true;
      end ;
    N2.enabled:=false;
    B1.Enabled:=false;
    B2.Enabled:=false;
    B3.Enabled:=false;
  end
  else
    begin
      //N1.Enabled:=false;
      N2.enabled:=true;
      B1.Enabled:=true;
      B2.Enabled:=false;
      B3.Enabled:=false;
    end;
with SMDDSS do
  begin
    requestlive:=false;
    cachedupdates:=false;
  end;
end;

procedure TScanPrintBar.DBGridEh2KeyPress(Sender: TObject; var Key: Char);
begin
{
if key=#46 then
  begin
    if messagedlg('Do you really delete the CodeBar of the order?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
      begin
        with SMDDSS do
          begin
            requestlive:=false;
            cachedupdates:=false;
            edit;
            fieldbynmae('YN').value:='0';
          end;
      end;
  end; }

end;

procedure TScanPrintBar.N1Click(Sender: TObject);
var p,CodeBar2:string;
CodeBar:integer;
Q,m,n :word;
begin  
if SMDD.fieldbyname('PlanDate').isnull then
  begin
    showmessage('Pls setup PlanDate first.');
    abort;
  end;
if ( (SMDD.fieldbyname('GXLB').value='A') or (SMDD.fieldbyname('GXLB').value='W') ) then
  begin
    p:=inputbox('Key in Pairs.','Pairs:','1');
  end
  else
    begin
      p:=inputbox('Key in Pairs.','Pairs:','6');
    end;
try
  Q:=strtoint(p);
except
  messagedlg('Pairs is not right.',mterror,[mbOK],0);
  abort;
end;


with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select top 1 CodeBar from SMDDSS order by CodeBar DESC ');
    active:=true;
    if recordcount=0 then
      begin
        CodeBar:=0;
      end
      else
        begin
          CodeBar:=strtoint(fieldbyname('CodeBar').value);
        end;
    CodeBar:=CodeBar+1;
    CodeBar2:=inttostr(CodeBar);
    while length(CodeBar2)<12 do
      begin
        CodeBar2:='0'+CodeBar2;
      end;
  end;
with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select * from SMDDSS ');
    sql.add('where DDBH='+''''+SMDD.fieldbyname('DDBH').Value+'''');
    sql.add('      and GXLB='+''''+ SMDD.fieldbyname('GXLB').Value+'''');
    sql.add('order by okCTS DESC');
    active:=true;
    if recordcount>0 then
      begin
        if fieldbyname('okCTS').value>0 then
          begin
            showmessage('Already production, pls contect with IT center.');
            abort;
          end;
        if messagedlg('Already have barcode,need to resend?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
          begin
            active:=false;
            sql.Clear;
            sql.add('delete SMDDSS ');   
            sql.add('where DDBH='+''''+SMDD.fieldbyname('DDBH').Value+'''');
            sql.add('      and GXLB='+''''+ SMDD.fieldbyname('GXLB').Value+'''');
            execsql;
          end;
      end;
  end;
while not SMDDS.Eof do
  begin
    divmod(SMDDS.FieldByName('Qty').asinteger,Q,m,n);
    with Qtemp do
      begin
        if m<>0 then
          begin
            active:=false;
            sql.Clear;
            sql.add('insert into SMDDSS ');
            sql.add('(DDBH,GXLB,XXCC,XH,CODEBAR,Qty,CTS,okCTS,USERDATE,USERID,YN) ');
            sql.add('values('+''''+SMDD.fieldbyname('DDBH').Value+''''+',');
            sql.add('          '''+SMDD.fieldbyname('GXLB').Value+''''+',');
            sql.add('          '''+SMDDS.fieldbyname('XXCC').Value+''''+',');
            sql.add('          '''+'1'+''''+','+''''+CodeBar2+''''+',');
            sql.add('          '''+inttostr(Q)+''''+',');
            sql.add('          '''+inttostr(m)+''''+',0,getdate(),');
            sql.add('          '''+main.Edit1.text+''''+','+''''+'1'+''''+')');
            execsql;
            CodeBar:=CodeBar+1;
            CodeBar2:=inttostr(CodeBar);
            while length(CodeBar2)<12 do
              begin
                CodeBar2:='0'+CodeBar2;
              end;
          end;  
        if n<>0 then
          begin
            active:=false;
            sql.Clear;
            sql.add('insert into SMDDSS ');
            sql.add('(DDBH,GXLB,XXCC,XH,CODEBAR,Qty,CTS,okCTS,USERDATE,USERID,YN) ');
            sql.add('values('+''''+SMDD.fieldbyname('DDBH').Value+''''+',');
            sql.add('          '''+SMDD.fieldbyname('GXLB').Value+''''+',');
            sql.add('          '''+SMDDS.fieldbyname('XXCC').Value+''''+',');
            sql.add('          '''+'2'+''''+','+''''+CodeBar2+''''+',');
            sql.add('          '''+inttostr(n)+''''+',1,0,getdate(),');
            sql.add('          '''+main.Edit1.text+''''+','+''''+'1'+''''+')');
            execsql;
            CodeBar:=CodeBar+1;
            CodeBar2:=inttostr(CodeBar);
            while length(CodeBar2)<12 do
              begin
                CodeBar2:='0'+CodeBar2;
              end;
          end;
      end;
    SMDDS.next;
  end;
with SMDDSS do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
end;

procedure TScanPrintBar.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin

if SMDDSS.FieldByName('XH').value='2' then
  begin
    dbgrideh2.canvas.brush.Color:=$00FCCBCD;
    DBGrideh2.DefaultDrawColumnCell(Rect,DataCol,Column, State);
  end;
end;

procedure TScanPrintBar.SMDDSSCalcFields(DataSet: TDataSet);
begin
with SMDDSS do
  begin
    fieldbyname('TotQty').Value:=fieldbyname('Qty').Value*fieldbyname('CTS').Value;
  end;
end;

procedure TScanPrintBar.B1Click(Sender: TObject);
begin
with SMDDSS do
  begin
    requestlive:=true;
    cachedupdates:=true;
  end;
B2.Enabled:=true;
B3.Enabled:=true;
end;

procedure TScanPrintBar.B2Click(Sender: TObject);
begin
//DBGridEh1->GetFooterValue(0,   DBGridEh1->Columns->Items[1]);
if DBGrideh2.getfootervalue(0,DBGrideh2.columns.items[4])<>SMDD.FieldByName('Qty').value  then
  begin
    showmessage('The Total Qty <> Order Qty '+#13+' Pls check first.');
    abort;
  end;
with SMDDSS do
  begin
    first;
    while not eof do
      begin
        if updatestatus=usmodified then
          begin
           if fieldbyname('CTS').value>=fieldbyname('okCTS').Value then
             begin
               if fieldbyname('CTS').value=0 then
                 begin
                   upSMDDSs.apply(ukdelete);
                 end
                 else
                   begin
                     upSMDDSS.Apply(ukmodify);
                   end;
             end
             else
               begin
                 showmessage('Already produced, can not modify.');
                 abort;
               end;
          end;  
        next;
      end;
    requestlive:=false;
    cachedupdates:=false;
    active:=false;
    active:=true;
    B2.enabled:=false;
    B3.enabled:=false;
  end;
end;

procedure TScanPrintBar.B3Click(Sender: TObject);
begin 
with SMDDSS do
  begin
    requestlive:=false;
    cachedupdates:=false;
  end;
B2.Enabled:=false;
B3.Enabled:=false; 
end;

procedure TScanPrintBar.SMDDSSNewRecord(DataSet: TDataSet);
begin
abort;
end;

procedure TScanPrintBar.N2Click(Sender: TObject);
begin
with ProBARPrint do
  begin
    active:=true;
    while not eof do
      begin
        delete;
      end;
    insert;
    SMDDSS.First;
    while not SMDDSS.Eof do
      begin
        insert;
        fieldbyname('DDBH').Value:=SMDDSS.fieldbyname('DDBH').Value;
        fieldbyname('GXLB').Value:=SMDDSS.fieldbyname('GXLB').Value; 
        fieldbyname('GXMC').Value:=SMDDSS.fieldbyname('MEMO').Value;
        fieldbyname('XXCC').Value:=SMDDSS.fieldbyname('XXCC').Value;
        fieldbyname('XH').Value:=SMDDSS.fieldbyname('XH').Value;
        fieldbyname('CODEBAR').Value:=SMDDSS.fieldbyname('CODEBAR').Value;
        fieldbyname('Qty').Value:=SMDDSS.fieldbyname('Qty').Value;
        fieldbyname('CTS').Value:=SMDDSS.fieldbyname('CTS').Value;
        post;
        SMDDSS.Next;
      end;
    active:=false;
  end;

  
if fileexists(extractfilepath(application.ExeName)+'CodeBar.btw') then
  begin
    ShellExecute(Handle,'open',PChar(ExtractFilePath(Application.ExeName)+'Codebar.btw'),nil,pchar(ExtractFilePath(Application.ExeName)),SW_SHOW);
    //close;
  end
  else
    begin
      showmessage('Pls setup the program first. Abort');
    end;
end;

end.
