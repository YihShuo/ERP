unit PurOther1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, Grids, DBGrids, Mask, ComCtrls,
  Buttons, ExtCtrls,comobj, GridsEh, DBGridEh;

type
  TPurOther = class(TForm)
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
    Panel6: TPanel;
    Label17: TLabel;
    BD2: TBitBtn;
    BD3: TBitBtn;
    BD4: TBitBtn;
    BD5: TBitBtn;
    BD6: TBitBtn;
    BD7: TBitBtn;
    BDT1: TBitBtn;
    BDT2: TBitBtn;
    BDT3: TBitBtn;
    BDT4: TBitBtn;
    PC1: TPageControl;
    TS3: TTabSheet;
    Panel4: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit7: TDBEdit;
    BBTT1: TBitBtn;
    DBEdit1: TDBEdit;
    TS4: TTabSheet;
    Panel3: TPanel;
    Label7: TLabel;
    DBEdit9: TDBEdit;
    BBTT2: TBitBtn;
    Query1: TQuery;
    CGMas: TQuery;
    CGMasCGNO: TStringField;
    CGMasZSBH: TStringField;
    CGMasZSYWJC: TStringField;
    CGMasCGDate: TDateTimeField;
    CGMasUSERDATE: TDateTimeField;
    CGMasUSERID: TStringField;
    CGMasCGLX: TStringField;
    CGMasYN: TStringField;
    UpMas: TUpdateSQL;
    DS3: TDataSource;
    CGDet: TQuery;
    CGDetCGNO: TStringField;
    CGDetCLBH: TStringField;
    CGDetYWPM: TStringField;
    CGDetDWBH: TStringField;
    CGDetXqQty: TCurrencyField;
    CGDetQty: TCurrencyField;
    CGDetUSPrice: TCurrencyField;
    CGDetACCUS: TFloatField;
    CGDetVNPrice: TCurrencyField;
    CGDetACCVN: TFloatField;
    CGDetMemo: TStringField;
    CGDetYQDate: TDateTimeField;
    CGDetCFMDate: TDateTimeField;
    CGDetBJNO: TStringField;
    CGDetUSERDate: TDateTimeField;
    CGDetUSERID: TStringField;
    CGDetYN: TStringField;
    UPDet: TUpdateSQL;
    DS4: TDataSource;
    CGMasDH: TStringField;
    CGMasCZ: TStringField;
    CGMasGSBH: TStringField;
    BDelRec: TQuery;
    Panel2: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit3: TEdit;
    Check: TCheckBox;
    ypma: TQuery;
    tmpQuery: TQuery;
    PurClass: TEdit;
    CGMasllr: TStringField;
    TabSheet1: TTabSheet;
    materialdef: TQuery;
    ds5: TDataSource;
    articleQ: TQuery;
    articleQarticle: TStringField;
    Label2: TLabel;
    cda: TDateTimePicker;
    Label19: TLabel;
    ordercb: TComboBox;
    materialdefDEVCODE: TStringField;
    materialdefFD: TStringField;
    materialdefXieMing: TStringField;
    materialdefJiJie: TStringField;
    materialdefBWBHMM: TStringField;
    materialdefCLSL: TFloatField;
    ExcelQry: TQuery;
    BDT6: TBitBtn;
    ExcelQryCLBH: TStringField;
    ExcelQryYWPM: TStringField;
    ExcelQrydwbh: TStringField;
    ExcelQryQty: TCurrencyField;
    ExcelQryFD: TStringField;
    ExcelQryDEVCODE: TStringField;
    ExcelQryXieMing: TStringField;
    ExcelQryJiJie: TStringField;
    ExcelQryBWBHMM: TStringField;
    ExcelQryYQDate: TDateTimeField;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BDT1Click(Sender: TObject);
    procedure BDT2Click(Sender: TObject);
    procedure BDT3Click(Sender: TObject);
    procedure BDT4Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BD7Click(Sender: TObject);
    procedure CGDetAfterOpen(DataSet: TDataSet);
    procedure BBTT1Click(Sender: TObject);
    procedure BBTT2Click(Sender: TObject);
    procedure CGMasAfterOpen(DataSet: TDataSet);
    procedure PC1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure BDT5Click(Sender: TObject);
    procedure BDT6Click(Sender: TObject);
    procedure CGDetCalcFields(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure cdaChange(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure DBGridEh2EditButtonClick(Sender: TObject);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
    procedure ExcelExport();
  public
    { Public declarations }
  end;

var
  PurOther: TPurOther;
  NDate:TDate;

implementation

uses main1, PurOther_ZS1, PurOther_CL1, PurOther_BJ1, Quotation1, PurOther_safe1,math, FunUnit;

{$R *.dfm}

procedure TPurOther.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if BB5.enabled  then
  begin
    messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
    PC1.ActivePage:=TS3;
    panel1.Visible:=true;
    panel6.Visible:=false;
    action:=canone;
  end
  else
  begin
    if BD5.enabled then
    begin
      messagedlg('You have to save data Report first.',mtwarning,[mbyes],0);
      PC1.ActivePage:=TS4;
      panel6.Visible:=true;
      panel1.Visible:=false;
      action:=canone;
    end
    else
    begin
      main.sn31.Enabled:=true;
      main.sn32.Enabled:=true;
      action:=Cafree;
    end;
  end;

end;

procedure TPurOther.Button1Click(Sender: TObject);
begin
with CGMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CGZL.* ,ZSZL.ZSYWJC,ZSZL.DH,ZSZL.llr,isnull(ZSZL.CZ,'+''''+''''+') as cz,isnull(zszl.llr,'+''''+''''+') as llr ');
    sql.add('from CGZL');
    sql.add('left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH');
    sql.add('where CGZL.CGNO like ');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and ZSZL.ZSYWJC like ');
    sql.add(''''+'%'+edit3.Text+'%'+'''');
    sql.add('and convert(smalldatetime,convert(varchar,CGZL.USERDATE,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +'''');
    sql.add(' and  ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    sql.add('and CGZL.CGLX='+''''+purclass.Text+'''');
    sql.add('and CGZL.GSBH='+''''+main.Edit2.Text+''''); 
    if Check.Checked then
      begin
        sql.Add('and CGZL.USERID='+''''+main.Edit1.Text+'''');
      end;
    sql.add('order by CGZL.CGNO DESC');
    //memo1.text:=sql.Text;
    active:=true;

  end;
panel2.Visible:=false;
BB2.Enabled:=true;
BB3.Enabled:=true;
BB4.Enabled:=true;
BBT1.Enabled:=true;
BBT2.Enabled:=true;
BBT3.Enabled:=true;
BBT4.Enabled:=true;   
check.Checked:=true;
CGDet.Active:=true;
materialdef.Active:=true;
articleQ.Active:=true;

end;

procedure TPurOther.BB1Click(Sender: TObject);
begin
panel2.Visible:=true;
end;

procedure TPurOther.BB2Click(Sender: TObject);
begin
with CGMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
BBTT1.Visible:=true;
BB5.Enabled:=true;
BB6.Enabled:=true;
DBGridEh1.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TPurOther.FormCreate(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
cda.Date:=now-14;
PC1.ActivePage:=TS3;
DTP1.Date:=date-3;
DTP2.date:=date;
cgdet.Active:=true;
cgdet.Active:=true;


//過濾出合併單
  with ypma do
  begin
    active:=false;
    sql.clear;
    sql.add('select ypzlbh from ypzlzl');
    sql.add('where insdate >='+''''+datetostr(cda.date)+'''');
    sql.add(' and gsbh='+''''+main.Edit2.text+'''');
    sql.add(' and pd='+''''+'P'+'''');
    sql.add('order by ypzlbh desc');
    active:=true;
  end;
  ypma.First;
  ordercb.Items.Clear;
  while not ypma.Eof do
  begin
    ordercb.Items.Add(ypma.FieldByName('ypzlbh').Value);
    ypma.Next;
  end;
  if ordercb.Items.Count>0 then ordercb.ItemIndex:=0;
//結束
end;

procedure TPurOther.BB3Click(Sender: TObject);
begin
if CGDet.recordcount=0 then
  begin
    with CGMas do
      begin
        if fieldbyname('USERID').value=main.edit1.Text then
          begin
            requestlive:=true;
            cachedupdates:=true;
            edit;
            fieldbyname('YN').Value:='0';
          end
          else
            begin
              showmessage('It is not yours,can not delete.');
            end;
      end;
  end
    else
      begin
        showmessage('Pls delete the Deliver Detail first.')
      end;
BBTT1.Visible:=true;
BB5.Enabled:=true;
BB6.Enabled:=true;
DBGridEh1.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TPurOther.BB4Click(Sender: TObject);
begin
with CGMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
BBTT1.Visible:=true;
BB5.Enabled:=true;
BB6.Enabled:=true;
DBGridEh1.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TPurOther.BB5Click(Sender: TObject);
var y,m,a:string;
i:integer;
begin
with query1 do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('Ndate').value;
    active:=false;
  end;
if length(m)<2 then
  m:='0'+m;

try
    CGDet.Active:=false;
    CGMas.first;
    for i:=1 to CGMas.RecordCount do
      begin
        case CGMas.updatestatus of
          usinserted:
            begin
              if CGMas.fieldbyname('ZSBH').isnull then
                begin
                  CGMas.delete;
                end
                 else
                   begin
                     with query1 do    //計算領料單流水號
                       begin
                         active:=false;
                         sql.Clear;
                         sql.Add('select CGNO from CGZL where CGNO like '+''''+y+m+'%'+'''');
                         sql.add('order by CGNO');
                         active:=true;
                         if recordcount >0 then
                           begin
                             last;
                             a:=fieldbyname('CGNO').AsString;
                             a:=copy(a,7,5);
                             a:=inttostr(strtoint(a)+1);
                             while length(a)<5 do
                               begin
                                 a:='0'+a;
                               end;
                           end
                             else
                               begin
                                 a:='00001';
                               end;
                         a :=y+m+a;
                         active:=false;
                       end;
                     CGMas.edit;
                     CGMas.fieldbyname('CGNO').Value:=a;
                     CGMas.fieldbyname('GSBH').Value:=main.edit2.text;
                     CGMas.fieldbyname('CGLX').Value:=purclass.Text;
                     CGMas.FieldByName('userID').Value:=main.edit1.text;
                     CGMas.FieldByName('userdate').Value:=Ndate;
                     CGMas.FieldByName('CGDate').Value:=Ndate;
                     CGMas.FieldByName('YN').Value:='1';
                     upMas.apply(ukinsert);
                   end;
            end;
          usmodified:
            begin
              if (CGMas.fieldbyname('UserID').AsString=main.edit1.text)  then
              begin
                if CGMas.fieldbyname('YN').value='0'then
                begin
                  if (NDate-CGMas.FieldByName('USERDATE').value)<=3  then
                  begin
                    with BDelRec do
                    begin
                      active:=false;
                      sql.Clear;
                      sql.add('insert into BDelRec ');
                      sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                      sql.add('values ('+''''+'CGZL'+''''+','+''''+CGMas.fieldbyname('CGNO').Value+'''');
                      sql.add(','+''''+' '+''''+','+''''+CGMas.fieldbyname('USERID').Value+''''+',');
                      sql.add(''''+main.Edit1.Text+''''+',getdate())');
                      execsql;
                      active:=false;
                    end;
                    upMas.apply(ukdelete);
                  end else
                  begin
                    showmessage('Date>3, can not delete.');
                  end;
                end else
                begin
                    if (NDate-CGMas.FieldByName('USERDATE').value)<=3  then
                    begin
                      CGMas.edit;
                      CGMas.FieldByName('userID').Value:=main.edit1.text;
                      CGMas.FieldByName('userdate').Value:=Ndate;
                      upMas.apply(ukmodify);
                    end else
                    begin
                      showmessage('Date>3, can not modify.');
                    end;
                end;
              end else
              begin
                showmessage('It is not yours, can not modify.');
              end;
            end;
        end;
       CGMas.next;
      end;
CGMas.active:=false;
CGMas.cachedupdates:=false;
CGMas.requestlive:=false;
CGMas.active:=true;
CGDet.Active:=false;
bb5.enabled:=false;
bb6.enabled:=false;
BBTT1.Visible:=false;
DBGridEh1.columns[1].ButtonStyle:=cbsnone;
except
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end;


end;

procedure TPurOther.BB6Click(Sender: TObject);
begin
with CGMas do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
bb5.enabled:=false;
bb6.enabled:=false;
BBTT1.Visible:=false;
DBGridEh1.columns[1].ButtonStyle:=cbsnone;
end;

procedure TPurOther.BD2Click(Sender: TObject);
begin
  if CGMas.RequestLive then
    begin
      showmessage('Pls save Master data first.');
      PC1.ActivePage:=TS3;
      panel6.visible:=false;
      panel1.visible:=true;
      abort;
    end;

  with CGDet do
    begin
      requestlive:=true;
      cachedupdates:=true;
    end;
  BBTT2.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  DBGridEh2.columns[0].ButtonStyle:=cbsEllipsis;
  DBGridEh2.columns[6].ButtonStyle:=cbsEllipsis;
  DBGridEh2.columns[5].ButtonStyle:=cbsEllipsis;  
  //
  materialdef.Active:=false;
end;

procedure TPurOther.BD3Click(Sender: TObject);
begin
if CGMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;


with CGDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
BBTT2.Visible:=true;
BD5.Enabled:=true;
BD6.Enabled:=true;
DBGridEh2.columns[0].ButtonStyle:=cbsEllipsis;

{
//dbgrid4.columns[6].ButtonStyle:=cbsEllipsis;
//dbgrid4.columns[5].ButtonStyle:=cbsEllipsis;   }
end;

procedure TPurOther.BD4Click(Sender: TObject);
begin
if CGMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with CGDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    DBGridEh2.Columns[10].ReadOnly:=false;
    DBGridEh2.Columns[10].Color:=$00B5FFFF;
    edit;
  end;
BBTT2.Visible:=true;
BD5.Enabled:=true;
BD6.Enabled:=true;

DBGridEh2.columns[0].ButtonStyle:=cbsEllipsis;
DBGridEh2.columns[6].ButtonStyle:=cbsEllipsis;
DBGridEh2.columns[5].ButtonStyle:=cbsEllipsis;
end;

procedure TPurOther.BD5Click(Sender: TObject);
var i:integer;
begin

  with CGDet do
    begin
      first;
      while not CGDet.Eof do
        begin
          if CGDet.FieldByName('Qty').IsNull  then
            begin
              edit;
              CGDet.FieldByName('Qty').value:=0;
            end;
          if CGDet.FieldByName('bjno').IsNull  then
            begin
              edit;
              CGDet.FieldByName('bjno').value:='SMP';
            end;
          if (CGDet.FieldByName('USPrice').IsNull and CGDet.FieldByName('VNPrice').IsNull) then
            begin
              showmessage('The Price can not be empty.');
              abort;
            end;
          if (not CGDet.FieldByName('USPrice').IsNull) and (not CGDet.FieldByName('VNPrice').IsNull) then
            begin
              showmessage('Can not have two price.');
              abort;
            end;
          if CGDet.FieldByName('YQDate').IsNull  then
            begin
              showmessage('YQDate can not be null.');
              abort;
            end;
          if strtofloat(CGDet.FieldByName('Qty').AsString)=0  then
            begin
              showmessage('Qty can not be 0');
              abort;
            end;
          next;
        end;
    end;

  try
    CGDet.first;
      for i:=1 to CGDet.RecordCount do
        begin
          case CGDet.updatestatus of
            usinserted:
              begin
                if CGDet.fieldbyname('CLBH').isnull then
                  begin
                    CGDet.delete;
                  end
                   else
                     begin
                       CGDet.edit;
                       CGDet.fieldbyname('Qty').Value:=RoundTo(CGDet.fieldbyname('Qty').Value,-2);
                       CGDet.fieldbyname('CGNO').Value:=CGMas.fieldbyname('CGNO').Value;
                       CGDet.FieldByName('userID').Value:=main.edit1.text;
                       CGDet.FieldByName('userdate').Value:=Ndate;
                       CGDet.FieldByName('CFMdate').Value:=CGDet.FieldByName('YQdate').Value ;
                       CGDet.FieldByName('YN').Value:='1';
                       //完成更改
                       upDet.apply(ukinsert);
                     end;
              //億雄資料結構不同加上去的東東結束

              end;
            usmodified:
               begin
                 if (CGDet.fieldbyname('UserID').AsString=main.edit1.text) then
                 begin
                   if CGDet.fieldbyname('YN').value='0'then
                   begin
                      if (NDate-CGDet.FieldByName('USERDATE').value)<=3  then
                      begin
                        with BDelRec do
                        begin
                            active:=false;
                            sql.Clear;
                            sql.add('insert into BDelRec ');
                            sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                            sql.add('values ('+''''+'CGZLS'+''''+','+''''+CGDet.fieldbyname('CGNO').Value+'''');
                            sql.add(','+''''+CGDet.fieldbyname('CLBH').Value+''''+','+''''+CGDet.fieldbyname('USERID').Value+''''+',');
                            sql.add(''''+main.Edit1.Text+''''+',getdate())');
                            execsql;
                            active:=false;
                        end;
                        UpDet.apply(ukdelete);
                      end else
                      begin
                        showmessage('Date>3, can not delte.');
                      end;
                   end else
                   begin
                      if (NDate-CGDet.FieldByName('USERDATE').value)<=3  then
                      begin
                        CGDet.edit;
                        CGDet.fieldbyname('Qty').Value:=RoundTo(CGDet.fieldbyname('Qty').Value,-2);
                        CGDet.FieldByName('userID').Value:=main.edit1.text;
                        CGDet.FieldByName('userdate').Value:=Ndate;
                        CGDet.FieldByName('CFMdate').Value:=CGDet.FieldByName('YQdate').Value ;
                        upDet.apply(ukmodify);
                      end else
                      begin
                        showmessage('Date>3, can not modify.');
                      end;
                   end;
                 end else
                 begin
                   showmessage('It is not yours, can not modify.');
                 end;
                end;
          end;
          CGDet.next;
        end;
  CGDet.active:=false;
  CGDet.cachedupdates:=false;
  CGDet.requestlive:=false;
  CGDet.active:=true;
  bb6.enabled:=false;
  BBTT2.Visible:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  DBGridEh2.columns[0].ButtonStyle:=cbsNone;
  DBGridEh2.Columns[10].ReadOnly:=true;
  DBGridEh2.Columns[10].Color:=clWhite;
  materialdef.Active:=true;
  
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
  //

end;

procedure TPurOther.BD6Click(Sender: TObject);
begin
  with CGDet do
    begin
      active:=false;
      requestlive:=false;
      cachedupdates:=false;
      active:=true;
    end;
  BBTT2.Visible:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  DBGridEh2.columns[0].ButtonStyle:=cbsNone;
  DBGridEh2.Columns[10].ReadOnly:=true;
  DBGridEh2.Columns[10].Color:=clWhite;
  materialdef.Active:=true;
end;

procedure TPurOther.BBT1Click(Sender: TObject);
begin
CGMas.First;
end;

procedure TPurOther.BBT2Click(Sender: TObject);
begin
CGMas.prior;
end;

procedure TPurOther.BBT3Click(Sender: TObject);
begin
CGMas.next;
end;

procedure TPurOther.BBT4Click(Sender: TObject);
begin
CGMas.last;
end;

procedure TPurOther.BDT1Click(Sender: TObject);
begin
CGDet.First;
end;

procedure TPurOther.BDT2Click(Sender: TObject);
begin
CGDet.prior;
end;

procedure TPurOther.BDT3Click(Sender: TObject);
begin
CGDet.next;
end;

procedure TPurOther.BDT4Click(Sender: TObject);
begin
CGDet.last;
end;

procedure TPurOther.BB7Click(Sender: TObject);
begin
close;
end;

procedure TPurOther.BD7Click(Sender: TObject);
begin
close;
end;

procedure TPurOther.CGDetAfterOpen(DataSet: TDataSet);
begin
  BD2.Enabled:=true;
  BD3.Enabled:=true;
  BD4.Enabled:=true;
  BDT1.Enabled:=true;
  BDT2.Enabled:=true;
  BDT3.Enabled:=true;
  BDT4.Enabled:=true;
  
  if (((NDate-CGMas.FieldByName('USERDATE').value)>10) )   then
  {and (formatdatetime('yyyy/MM/dd',NDate)>='2008/12/01')}
    begin
      BD2.Enabled:=false;
      BD3.Enabled:=false;
      BD4.Enabled:=false;
    end; 
  if CGMas.cachedupdates  then
    begin
      BD2.Enabled:=false;
      BD3.Enabled:=false;
      BD4.Enabled:=false;
    end; 
  if CGMas.FieldByName('USERID').value<>main.edit1.text  then
    begin
      BD2.Enabled:=false;
      BD3.Enabled:=false;
      BD4.Enabled:=false;
    end;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  DBGridEh2.columns[0].ButtonStyle:=cbsNone;
  DBGridEh2.columns[4].ButtonStyle:=cbsNone;

  {
  //dbgrid4.columns[5].ButtonStyle:=cbsNone;      }

  if not CGdet.FieldByName('memo').IsNull then
      ordercb.Text:=copy(CGdet.FieldByName('memo').value,1,12);
end;

procedure TPurOther.BBTT1Click(Sender: TObject);
begin
PurOther_ZS:=TPurOther_ZS.create(self);
PurOther_ZS.show;
end;

procedure TPurOther.BBTT2Click(Sender: TObject);
begin
if ordercb.Text='' then
begin
  showmessage('need Merger sample order');
  abort;
end;

if purclass.Text='6' then
begin
  if messagedlg('Select from Simport Order material?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    PurOther_CL:=TPurOther_CL.create(self);
    PurOther_CL.show;
  end
  else
  begin
    PurOther_safe:=TPurOther_safe.create(self);
    PurOther_safe.show;
  end;
end
else
begin
  PurOther_safe:=TPurOther_safe.create(self);
  PurOther_safe.show;
end;


end;

procedure TPurOther.CGMasAfterOpen(DataSet: TDataSet);
begin

BB5.Enabled:=false;
BB6.Enabled:=false;
BD5.Enabled:=false;
BD6.Enabled:=false;
BDT6.Enabled:=true;
CGMas.RequestLive:=false;
CGMas.CachedUpdates:=false;
end;

procedure TPurOther.PC1Change(Sender: TObject);
begin
if PC1.ActivePage=TS4 then
  begin
    panel6.visible:=true;
    panel1.visible:=false;
    bd2.Enabled:=true;
    bd3.Enabled:=true;
    bd4.Enabled:=true;
    cgdet.Active:=true;    
  end
    else
      begin
        panel6.visible:=false;
        panel1.visible:=true;
      end;
end;

procedure TPurOther.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
edit3.SetFocus;
end;

procedure TPurOther.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button1click(nil);
end;

procedure TPurOther.BDT5Click(Sender: TObject);
begin

end;
//Excel 開發採購Excel格式
procedure TPurOther.ExcelExport();
var i,j,k:integer;
    eclApp,WorkBook:olevariant;
    ClumnWidth:array [0..9] of integer;
    ClumnDesc:array [0..9] of string;
    //合併儲存格用
    tmpStr:string;
    CLBH,FieldValueStr:string;
    CLBH_S,CLBH_E:integer; //每個材料區塊起始和結束群組位置
    IsAllSame:boolean;
begin
  try
    eclApp:=CreateOleObject('Excel.Application');
    eclApp.DisplayAlerts := False;
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;
  try
      ExcelQry.Active:=true;
      WorkBook:=eclApp.workbooks.Add;
      //抬頭欄位寬度設定
      ClumnWidth[0]:=12;
      ClumnWidth[1]:=30;
      ClumnWidth[2]:=6;
      ClumnWidth[3]:=10;
      ClumnWidth[4]:=10;
      ClumnWidth[5]:=20;
      ClumnWidth[6]:=20;
      ClumnWidth[7]:=7;
      ClumnWidth[8]:=50;
      //
      ClumnDesc[0]:='CLBH';
      ClumnDesc[1]:='PANTONE/SCOTDIC NO.';
      ClumnDesc[2]:='UNIT';
      ClumnDesc[3]:='Q''TY';
      ClumnDesc[4]:='CATEGORY';
      ClumnDesc[5]:='SR';
      ClumnDesc[6]:='SHOE NAME';
      ClumnDesc[7]:='SEASON';
      ClumnDesc[8]:='USAGE';
      for   i:=0   to   High(ClumnWidth) do
      begin
        eclApp.ActiveSheet.Columns[i+1].ColumnWidth := ClumnWidth[i]; //欄位寬度
        eclApp.Cells[1,i+1].HorizontalAlignment := -4108; //文字水平置中
        eclApp.Cells(1,i+1):=ClumnDesc[i]; //抬頭名稱 YPZLZLS2.fields[i].FieldName;
      end;
      //抬頭顏色
      eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[1,i]].interior.color:=clSilver;
      //格式和自動換行 置中
      eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[ExcelQry.RecordCount+1,ExcelQry.fieldcount]].Borders.weight:=2;
      eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[ExcelQry.RecordCount+1,ExcelQry.fieldcount]].NumberFormatLocal:='@';
      eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[ExcelQry.RecordCount+1,ExcelQry.fieldcount]].WrapText:=true;
      eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[ExcelQry.RecordCount+1,ExcelQry.fieldcount]].HorizontalAlignment:= -4108;
      //資料
      ExcelQry.First;
      j:=2;
      while   not   ExcelQry.Eof   do
      begin
          for   i:=0   to  ExcelQry.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=ExcelQry.Fields[i].Value;
          end;
        ExcelQry.Next;
        inc(j);
      end;
      //處理合併儲存格
      CLBH:='';
      //
      for j:=2 to ExcelQry.RecordCount+2  do
      begin
        tmpStr:=eclApp.Cells[j,1];
        if CLBH='' then
        begin
          CLBH_S:=j;
          CLBH:=tmpStr;
        end;
        //合併
        if ( (tmpStr<>CLBH) and (CLBH<>'') ) then
        begin
          CLBH_E:=j-1;
          CLBH:=eclApp.Cells[j,1];
          eclApp.Range[eclApp.Cells[CLBH_S,1],eclApp.Cells[CLBH_E,1]].merge; //CLBH合併
          eclApp.Range[eclApp.Cells[CLBH_S,2],eclApp.Cells[CLBH_E,2]].merge; //YWPM合併
          eclApp.Range[eclApp.Cells[CLBH_S,3],eclApp.Cells[CLBH_E,3]].merge; //BWBH合併
          eclApp.Range[eclApp.Cells[CLBH_S,4],eclApp.Cells[CLBH_E,4]].merge; //CGQTY合併
          eclApp.Range[eclApp.Cells[CLBH_S,9],eclApp.Cells[CLBH_E,9]].merge; //Usage合併


          //檢查 FD SR SheoName JiJi
          for k:=5 to 8 do
          begin
            FieldValueStr:='';
            IsAllSame:=true;
            for i:=CLBH_S to CLBH_E do
            begin
              tmpStr:=eclApp.Cells[i,k];
              if FieldValueStr='' then FieldValueStr:=tmpStr;
              if ((FieldValueStr<>'') and (FieldValueStr<>tmpStr)) then IsAllSame:=false;
            end;
            if IsAllSame=true then
            begin
              eclApp.Range[eclApp.Cells[CLBH_S,k],eclApp.Cells[CLBH_E,k]].merge; //合併
            end;
          end;

          //
          CLBH_S:=j;
        end;
      end; //End 檢查處理合併儲存格
      //新增供應商抬頭欄位 前面欄位資訊共9各
      eclApp.Rows[1].Insert;
      eclApp.Rows[1].Insert;
      for i:=1 to 2 do
      begin
        eclApp.Range[eclApp.Cells[i,1],eclApp.Cells[i,5]].merge;
        eclApp.Range[eclApp.Cells[i,6],eclApp.Cells[i,7]].merge;
        eclApp.Range[eclApp.Cells[i,8],eclApp.Cells[i,9]].merge;
      end;
      eclApp.Cells[1,1]:='SUPPLIER NAME:';  eclApp.Cells[1,6]:='ATTN:';  eclApp.Cells[1,8]:='';
      eclApp.Cells[2,1]:='TEL:';  eclApp.Cells[2,6]:='EMAIL:';  eclApp.Cells[2,8]:='ETC:';
      eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[2,1]].Borders[1].weight:=2; //左邊框線
      eclApp.Range[eclApp.Cells[1,8],eclApp.Cells[2,9]].Borders[2].weight:=2; //右邊框線
      eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[1,9]].Borders[3].weight:=2; //上面框線
      //新增抬頭
      eclApp.Rows[1].Insert;
      eclApp.Rows[1].Insert;
      eclApp.Rows[1].Insert;
      eclApp.Rows[1].Font.Size:=18;
      eclApp.Rows[1].Font.Bold:=true;
      eclApp.Rows[2].Font.Size:=14;
      eclApp.Rows[2].Font.Bold:=true;
      eclApp.Rows[3].Font.Size:=12;
      eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[1,9]].merge;
      eclApp.Range[eclApp.Cells[2,1],eclApp.Cells[2,9]].merge;
      eclApp.Cells[1,1].HorizontalAlignment := -4108;
      eclApp.Cells[2,1].HorizontalAlignment := -4108;
      eclApp.Cells[1,1]:='Vinh Long Footwear CO.LTD';
      eclApp.Cells[2,1]:='SAMPLE MATERIAL ORDERS';
      //第三列
      eclApp.Range[eclApp.Cells[3,1],eclApp.Cells[3,5]].merge;
      eclApp.Range[eclApp.Cells[3,6],eclApp.Cells[3,7]].merge;
      eclApp.Range[eclApp.Cells[3,8],eclApp.Cells[3,9]].merge;
      eclApp.Cells[3,1]:='ORDER NO.:';    eclApp.Cells[3,8]:='DATE:'+FormatDatetime('YYYY/MM/DD',Date());;
      //
      showmessage('Succeed');
      eclApp.Visible:=True;
  except
      on   F:Exception   do
        showmessage(F.Message);
  end;
  //
end;
//
procedure TPurOther.BDT6Click(Sender: TObject);
var i,j,k:integer;
    eclApp,WorkBook:olevariant;
    ClumnWidth:array [0..10] of integer;
    ClumnDesc:array [0..10] of string;
    //合併儲存格用
    tmpStr:string;
    CLBH,FieldValueStr:string;
    CLBH_S,CLBH_E:integer; //每個材料區塊起始和結束群組位置
    IsAllSame:boolean;
    //
    UserName:string;
begin
  try
    eclApp:=CreateOleObject('Excel.Application');
    eclApp.DisplayAlerts := False;
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;
  try
      ExcelQry.Active:=false;
      ExcelQry.Active:=true;
      WorkBook:=eclApp.workbooks.Add;
      //抬頭欄位寬度設定
      ClumnWidth[0]:=11;
      ClumnWidth[1]:=21;
      ClumnWidth[2]:=6;
      ClumnWidth[3]:=6;
      ClumnWidth[4]:=14;
      ClumnWidth[5]:=15;
      ClumnWidth[6]:=15;
      ClumnWidth[7]:=8;
      ClumnWidth[8]:=16;
      ClumnWidth[9]:=9;
      //
      ClumnDesc[0]:='CLBH';
      ClumnDesc[1]:='PANTONE/SCOTDIC NO.';
      ClumnDesc[2]:='UNIT';
      ClumnDesc[3]:='Q''TY';
      ClumnDesc[4]:='CATEGORY';
      ClumnDesc[5]:='SR';
      ClumnDesc[6]:='SHOE NAME';
      ClumnDesc[7]:='SEASON';
      ClumnDesc[8]:='USAGE';
      ClumnDesc[9]:='YQDate';
      for   i:=0   to   High(ClumnWidth) do
      begin
        eclApp.ActiveSheet.Columns[i+1].ColumnWidth := ClumnWidth[i]; //欄位寬度
        eclApp.Cells[1,i+1].HorizontalAlignment := -4108; //文字水平置中
        eclApp.Cells(1,i+1):=ClumnDesc[i]; //抬頭名稱 YPZLZLS2.fields[i].FieldName;
      end;
      //抬頭顏色
      eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[1,i]].interior.color:=clSilver;
      //格式和自動換行 置中
      eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[ExcelQry.RecordCount+1,ExcelQry.fieldcount]].Borders.weight:=2;
      eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[ExcelQry.RecordCount+1,ExcelQry.fieldcount]].NumberFormatLocal:='@';
      eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[ExcelQry.RecordCount+1,ExcelQry.fieldcount]].WrapText:=true;
      eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[ExcelQry.RecordCount+1,ExcelQry.fieldcount]].HorizontalAlignment:= -4108;
      //資料
      ExcelQry.First;
      j:=2;
      while   not   ExcelQry.Eof   do
      begin
          for   i:=0   to  ExcelQry.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=ExcelQry.Fields[i].AsString;
          end;
        ExcelQry.Next;
        inc(j);
      end;
      //
      //取得使用者名稱
      with tmpQuery do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('Select UserName from BUsers where UserID='''+main.edit1.text+'''');
        Active:=true;
      end;
      if tmpQuery.RecordCount>0 then UserName:=tmpQuery.FieldByName('UserName').AsString;
      tmpQuery.Active:=false;
      //主管和使用者在資料下列
      eclApp.Cells(j+1,2):='TEAM LEADER:';
      eclApp.Cells(j+1,9):='ATTN:'+UserName;
      //處理合併儲存格
      CLBH:='';
      //
      for j:=2 to ExcelQry.RecordCount+2  do
      begin
        tmpStr:=eclApp.Cells[j,1];
        if CLBH='' then
        begin
          CLBH_S:=j;
          CLBH:=tmpStr;
        end;
        //合併
        if ( (tmpStr<>CLBH) and (CLBH<>'') ) then
        begin
          CLBH_E:=j-1;
          CLBH:=eclApp.Cells[j,1];
          eclApp.Range[eclApp.Cells[CLBH_S,1],eclApp.Cells[CLBH_E,1]].merge; //CLBH合併
          eclApp.Range[eclApp.Cells[CLBH_S,2],eclApp.Cells[CLBH_E,2]].merge; //YWPM合併
          eclApp.Range[eclApp.Cells[CLBH_S,3],eclApp.Cells[CLBH_E,3]].merge; //BWBH合併
          eclApp.Range[eclApp.Cells[CLBH_S,4],eclApp.Cells[CLBH_E,4]].merge; //CGQTY合併
          eclApp.Range[eclApp.Cells[CLBH_S,9],eclApp.Cells[CLBH_E,9]].merge; //Usage合併


          //檢查 FD SR SheoName JiJi
          for k:=5 to 8 do
          begin
            FieldValueStr:='';
            IsAllSame:=true;
            for i:=CLBH_S to CLBH_E do
            begin
              tmpStr:=eclApp.Cells[i,k];
              if FieldValueStr='' then FieldValueStr:=tmpStr;
              if ((FieldValueStr<>'') and (FieldValueStr<>tmpStr)) then IsAllSame:=false;
            end;
            if IsAllSame=true then
            begin
              eclApp.Range[eclApp.Cells[CLBH_S,k],eclApp.Cells[CLBH_E,k]].merge; //合併
            end;
          end;

          //
          CLBH_S:=j;
        end;
      end; //End 檢查處理合併儲存格
      //新增供應商抬頭欄位 前面欄位資訊共9各
      eclApp.Rows[1].Insert;
      eclApp.Rows[1].Insert;
      for i:=1 to 2 do
      begin
        eclApp.Range[eclApp.Cells[i,1],eclApp.Cells[i,5]].merge;
        eclApp.Range[eclApp.Cells[i,6],eclApp.Cells[i,7]].merge;
        eclApp.Range[eclApp.Cells[i,8],eclApp.Cells[i,ExcelQry.FieldCount]].merge;
      end;
      eclApp.Cells[1,1]:='SUPPLIER NAME: '+CGMas.FieldByName('ZSYWJC').AsString;  eclApp.Cells[1,6]:='ATTN: '+CGMas.FieldByName('LLR').AsString;  eclApp.Cells[1,8]:='';
      eclApp.Cells[2,1]:='TEL: '+CGMas.FieldByName('DH').AsString;  eclApp.Cells[2,6]:='EMAIL:';  eclApp.Cells[2,8]:='ETC:';
      eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[2,1]].Borders[1].weight:=2; //左邊框線
      eclApp.Range[eclApp.Cells[1,8],eclApp.Cells[2,ExcelQry.FieldCount]].Borders[2].weight:=2; //右邊框線
      eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[1,ExcelQry.FieldCount]].Borders[3].weight:=2; //上面框線
      //新增抬頭
      eclApp.Rows[1].Insert;
      eclApp.Rows[1].Insert;
      eclApp.Rows[1].Insert;
      eclApp.Rows[1].Insert;
      eclApp.Rows[1].Insert;
      eclApp.Rows[1].Insert;
      eclApp.Rows[1].Font.Size:=18;
      eclApp.Rows[1].Font.Bold:=true;
      eclApp.Rows[2].Font.Size:=14;
      eclApp.Rows[2].Font.Bold:=true;
      eclApp.Rows[3].Font.Size:=12;
      eclApp.Rows[3].Font.Bold:=true;
      eclApp.Rows[4].Font.Size:=12;
      eclApp.Rows[4].Font.Bold:=true;
      eclApp.Rows[5].Font.Size:=12;
      eclApp.Rows[5].Font.Bold:=true;
      eclApp.Rows[6].Font.Size:=12;
      eclApp.Rows[6].Font.Bold:=true;
      eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[1,ExcelQry.FieldCount]].merge;
      eclApp.Range[eclApp.Cells[2,1],eclApp.Cells[2,ExcelQry.FieldCount]].merge;
      eclApp.Range[eclApp.Cells[3,1],eclApp.Cells[3,ExcelQry.FieldCount]].merge;
      eclApp.Range[eclApp.Cells[5,1],eclApp.Cells[5,ExcelQry.FieldCount]].merge;
      eclApp.Cells[1,1].HorizontalAlignment := -4108;
      eclApp.Cells[2,1].HorizontalAlignment := -4108;
      eclApp.Cells[1,1]:='Vinh Long Footwear CO.LTD';
      eclApp.Cells[2,1]:='SAMPLE MATERIAL ORDERS';
      //取得品牌名稱
      with tmpQuery do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add(' select kfzl.KFJC from kfxxzl ');
        SQL.Add(' Left join  kfzl on kfzl.kfdh=kfxxzl.KHDH ');
        SQL.Add(' where kfxxzl.DEVCODE='''+ExcelQry.fieldByName('DEVCODE').AsString+'''');
        Active:=true;
      end;
      eclApp.Cells[3,1]:='BRAND: '+tmpQuery.FieldByName('KFJC').AsString;
      tmpQuery.Active:=false;
      //第四列
      eclApp.Range[eclApp.Cells[4,1],eclApp.Cells[4,5]].merge;
      eclApp.Range[eclApp.Cells[4,6],eclApp.Cells[4,7]].merge;
      eclApp.Range[eclApp.Cells[4,8],eclApp.Cells[4,ExcelQry.FieldCount]].merge;
      eclApp.Cells[4,1]:='NOTIFY/ BILL TO: Ving Long Footwear CO. LTD';  eclApp.Cells[4,6]:='Tel: +84-703-962052';  eclApp.Cells[4,8]:='Fax: +84-703-96251';
      //第五裂
      eclApp.Cells[5,1]:='ADD: Ving Long Footwear CO. LTD Hoa Phu Industrial Zone, Vinh Long Province, Vietnam ';
      //第六列
      eclApp.Range[eclApp.Cells[6,1],eclApp.Cells[6,5]].merge;
      eclApp.Range[eclApp.Cells[6,6],eclApp.Cells[6,7]].merge;
      eclApp.Range[eclApp.Cells[6,8],eclApp.Cells[6,ExcelQry.FieldCount]].merge;
      //取得使用者名稱
      with tmpQuery do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('Select UserName from BUsers where UserID='''+main.edit1.text+'''');
        Active:=true;
      end;
      eclApp.Cells[6,1]:='PO NO.: '+CGMas.FieldByName('CGNO').AsString;  eclApp.Cells[6,6]:='ATTN: '+UserName;  eclApp.Cells[6,8]:='DATE: '+FormatDatetime('YYYY/MM/DD',Date());
      tmpQuery.Active:=false;
      //
      showmessage('Succeed');
      eclApp.ActiveSheet.PageSetup.Orientation := 2; //列印直=1,橫式=2
      eclApp.ActiveSheet.PageSetup.RightFooter := 'A1.2-T TKT-WS001-02A';//'第&P頁';
      eclApp.Visible:=True;
  except
      on   F:Exception   do
        showmessage(F.Message);
  end;
  //
end;

procedure TPurOther.CGDetCalcFields(DataSet: TDataSet);
begin

with CGDet do
  begin
  
  if FieldByName('qty').IsNull then
  begin
      if FieldByName('USPrice').value<>0 then
      begin
        FieldByName('ACCUS').value:=FieldByName('Qty').value*FieldByName('USPrice').value;
      end;
    if FieldByName('VNPrice').value<>0 then
      begin
        FieldByName('ACCVN').value:=FieldByName('Qty').value*FieldByName('VNPrice').value;
      end;

  end else
  begin
    //Qty取到小數第二位四捨五入
    if FieldByName('USPrice').value<>0 then
      begin
        FieldByName('ACCUS').value:=RoundTo(FieldByName('Qty').value,-2)*FieldByName('USPrice').value;
      end;
    if FieldByName('VNPrice').value<>0 then
      begin
        FieldByName('ACCVN').value:=RoundTo(FieldByName('Qty').value,-2)*FieldByName('VNPrice').value;
      end;
  end;

  end;
end;

procedure TPurOther.FormDestroy(Sender: TObject);
begin
main.sn31.Enabled:=true;
main.sn32.Enabled:=true;
PurOther:=nil;
end;

procedure TPurOther.Button2Click(Sender: TObject);
begin
  with ypma do
  begin
    active:=false;
    sql.clear;
    sql.add('select ypzlbh from ypzlzl');
    sql.add('where insdate >='+''''+datetostr(cda.date)+'''');
    sql.add(' and pd='+''''+'P'+'''');
    sql.add('');
    active:=true;
  end;
  ypma.First;
  ordercb.Items.Clear;
  while not ypma.Eof do
  begin
    ordercb.Items.Add(ypma.FieldByName('ypzlbh').Value);
    ypma.Next;
  end;
  ordercb.ItemIndex:=0;
end;

procedure TPurOther.cdaChange(Sender: TObject);
begin
  with ypma do
  begin
    active:=false;
    sql.clear;
    sql.add('select ypzlbh from ypzlzl');
    sql.add('where insdate >='+''''+datetostr(cda.date)+'''');
    sql.add(' and pd='+''''+'P'+'''');
    sql.add('');
    active:=true;
  end;
  ypma.First;
  ordercb.Items.Clear;
  while not ypma.Eof do
  begin
    ordercb.Items.Add(ypma.FieldByName('ypzlbh').Value);
    ypma.Next;
  end;
  if ordercb.Items.Count>0 then ordercb.ItemIndex:=0;
end;

procedure TPurOther.DBGridEh1DblClick(Sender: TObject);
begin
  if CGMas.Active then
  begin
    if  (CGMas.recordcount>0) then
    begin
      PC1.ActivePage:=TS4;
      panel1.Visible:=false;
      panel6.Visible:=true;
    end;
    bd2.Enabled:=true;
    bd3.Enabled:=true;
    bd4.Enabled:=true;
    cgdet.Active:=true;
  end;
end;

procedure TPurOther.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if CGMas.FieldByName('YN').value='0' then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TPurOther.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGridEh1DblClick(nil);
end;

procedure TPurOther.DBGridEh1EditButtonClick(Sender: TObject);
begin
  BBTT1Click(nil);
end;

procedure TPurOther.DBGridEh2EditButtonClick(Sender: TObject);
begin
    if DBGridEh2.Selectedfield.fieldname='CLBH' then
  begin
    BBTT2click(nil);
  end;
{
if (DBGridEh2.Selectedfield.fieldname='USPrice') or (DBGridEh2.Selectedfield.fieldname='VNPrice') then
  begin
    if not CGDet.FieldByName('CLBH').IsNull then
      begin
        PurOther_BJ:=TPurOther_BJ.create(self);
        PurOther_BJ.Edit1.Text:=CGDet.fieldbyname('CLBH').Value;
        PurOther_BJ.button1click(nil);
        PurOther_BJ.show;
      end;
  end;
}
end;

procedure TPurOther.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if CGDet.FieldByName('YN').value='0' then
  begin
    DBGridEh2.canvas.font.color:=clred;
    DBGridEh2.defaultdrawcolumncell(rect,datacol,column,state);
  end;

 if CGDet.FieldByName('CGNO').isnull then
  begin
    DBGridEh2.canvas.font.color:=clLime;
    DBGridEh2.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

end
.
