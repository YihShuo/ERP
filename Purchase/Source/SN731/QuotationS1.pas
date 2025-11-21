unit QuotationS1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, StdCtrls, DBCtrls, Grids, DBGrids, Mask, ComCtrls,
  Buttons, ExtCtrls;

type
  TQuotationS = class(TForm)
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
    bbt6: TBitBtn;
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
    BDT5: TBitBtn;
    BDT6: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    PC1: TPageControl;
    TS3: TTabSheet;
    Panel4: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit7: TDBEdit;
    BBTT1: TBitBtn;
    DBGrid3: TDBGrid;
    TS4: TTabSheet;
    Panel3: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit13: TDBEdit;
    BBTT2: TBitBtn;
    DBEdit14: TDBEdit;
    DBGrid4: TDBGrid;
    BJDet: TQuery;
    DS4: TDataSource;
    UPDet: TUpdateSQL;
    DS3: TDataSource;
    BJMas: TQuery;
    UpMas: TUpdateSQL;
    Query1: TQuery;
    Edit2: TEdit;
    Label5: TLabel;
    Edit3: TEdit;
    BJMasBJNo: TStringField;
    BJMasZSBH: TStringField;
    BJMasUSERDATE: TDateTimeField;
    BJMasUSERID: TStringField;
    BJMasCFMDate: TDateTimeField;
    BJMasCFMID: TStringField;
    BJMasYN: TStringField;
    BJMasZSYWJC: TStringField;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    BJDetBJNO: TStringField;
    BJDetCLBH: TStringField;
    BJDetUSPrice: TCurrencyField;
    BJDetUSERDate: TDateTimeField;
    BJDetUSERID: TStringField;
    BJDetYN: TStringField;
    BJDetYWPM: TStringField;
    BJDetDWBH: TStringField;
    BJDetVNPrice: TCurrencyField;
    BJDetMemo: TStringField;
    BJDetBJLX: TStringField;
    BJMasGSBH: TStringField;
    BJMasTYPE: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BD7Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BDT1Click(Sender: TObject);
    procedure BDT2Click(Sender: TObject);
    procedure BDT3Click(Sender: TObject);
    procedure BDT4Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BJDetAfterOpen(DataSet: TDataSet);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid3EditButtonClick(Sender: TObject);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid4EditButtonClick(Sender: TObject);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure BJMasAfterOpen(DataSet: TDataSet);
    procedure BBTT2Click(Sender: TObject);
    procedure BBTT1Click(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure BDT5Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QuotationS: TQuotationS;
  NDate:TDate;

implementation

uses main1, QuotationS_ZS1, QuotationS_CL1, Quotation_Print1;

{$R *.dfm}

procedure TQuotationS.FormClose(Sender: TObject; var Action: TCloseAction);
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
              action:=Cafree;
            end;
    end;
end;

procedure TQuotationS.BB1Click(Sender: TObject);
begin
panel2.Visible:=true;
end;

procedure TQuotationS.Button1Click(Sender: TObject);
begin
with BJMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CGBJ.* ,ZSZL.ZSYWJC');
    sql.add('from CGBJ');
    sql.add('left join ZSZL on CGBJ.ZSBH=ZSZL.ZSDH');
    sql.add('where TYPE=''SAMPLE'' AND CGBJ.BJNO like ');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and CGBJ.ZSBH like ');
    sql.add(''''+edit2.Text+'%'+'''');
    sql.add('and ZSZL.ZSYWJC like ');
    sql.add(''''+'%'+edit3.Text+'%'+'''');
    sql.add('and convert(smalldatetime,convert(varchar,CGBJ.USERDATE,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    sql.add('and CGBJ.GSBH='+''''+main.edit2.text+'''');
    sql.add('order by CGBJ.BJNO DESC');
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
BJDet.Active:=true;
end;

procedure TQuotationS.FormCreate(Sender: TObject);
var i:integer;
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
PC1.ActivePage:=TS3;
DTP1.Date:=date-3;
DTP2.date:=date;

end;

procedure TQuotationS.BB2Click(Sender: TObject);
begin
with BJMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
BBTT1.Visible:=true;
BB5.Enabled:=true;
BB6.Enabled:=true;
dbgrid3.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TQuotationS.BB3Click(Sender: TObject);
begin
if BJDet.recordcount=0 then
  begin
    with BJMas do
      begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
        fieldbyname('YN').Value:='0';
      end;
  end
    else
      begin
        showmessage('Pls delete the Deliver Detail first.')
      end;
BBTT1.Visible:=true;
BB5.Enabled:=true;
BB6.Enabled:=true;
dbgrid3.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TQuotationS.BB4Click(Sender: TObject);
begin
with BJMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
BBTT1.Visible:=true;
BB5.Enabled:=true;
BB6.Enabled:=true;
dbgrid3.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TQuotationS.BB5Click(Sender: TObject);
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
    Ndate:=fieldbyname('NDate').value;
    active:=false;
  end;
if length(m)<2 then
  m:='0'+m;

try
    BJMas.first;
    for i:=1 to BJMas.RecordCount do
      begin
        case BJMas.updatestatus of
          usinserted:
            begin
              if BJMas.fieldbyname('ZSBH').isnull then
                begin
                  BJMas.delete;
                end
                 else
                   begin
                     with query1 do    //計算領料單流水號
                       begin
                         active:=false;
                         sql.Clear;
                         sql.Add('select BJNO from CGBJ where BJNO like '+''''+y+m+'%'+'''');
                         sql.add('order by BJNO');
                         active:=true;
                         if recordcount >0 then
                           begin
                             last;
                             a:=fieldbyname('BJNO').AsString;
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
                     BJMas.edit;
                     BJMas.fieldbyname('BJNO').Value:=a;
                     BJMas.fieldbyname('GSBH').Value:=main.Edit2.text;
                     BJMas.FieldByName('userID').Value:=main.edit1.text;
                     BJMas.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                     BJMas.FieldByName('CFMID').Value:='NO';
                     BJMas.FieldByName('TYPE').Value:='SAMPLE';
                     BJMas.FieldByName('YN').Value:='1';
                     upMas.apply(ukinsert);
                   end;
            end;
          usmodified:
             begin
              if BJMas.fieldbyname('YN').value='0'then
                begin
                  upMas.apply(ukdelete);
                end
                else
                  begin
                    if (BJMas.FieldByName('CFMID').value='NO')   then
                      begin
                        if (NDate-BJMas.FieldByName('USERDATE').value)>3  then
                          begin
                            BJMas.edit;
                            BJMas.FieldByName('userID').Value:=main.edit1.text;
                            BJMas.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                            upMas.apply(ukmodify);
                          end
                          else
                            begin
                              showmessage('Date>3, can not modify.');    
                            end;
                      end
                      else
                        begin
                          showmessage('Already confirmed, can not modify.');
                        end;
                  end;
             end;
        end;
       BJMas.next;
      end;
BJMas.active:=false;
BJMas.cachedupdates:=false;
BJMas.requestlive:=false;
BJMas.active:=true;
bb5.enabled:=false;
bb6.enabled:=false;
BBTT1.Visible:=false;
dbgrid3.columns[1].ButtonStyle:=cbsnone;
except
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end;


end;

procedure TQuotationS.BB6Click(Sender: TObject);
begin
with BJMas do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
bb5.enabled:=false;
bb6.enabled:=false;
BBTT1.Visible:=false;
dbgrid3.columns[1].ButtonStyle:=cbsnone;
end;

procedure TQuotationS.BD2Click(Sender: TObject);
begin
if BJMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

with BJDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
BBTT2.Visible:=true;
BD5.Enabled:=true;
BD6.Enabled:=true;
dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TQuotationS.BD3Click(Sender: TObject);
begin
if BJMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

with BJDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
BBTT2.Visible:=true;
BD5.Enabled:=true;
BD6.Enabled:=true;
dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TQuotationS.BD4Click(Sender: TObject);
begin
if BJMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

with BJDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
BBTT2.Visible:=true;
BD5.Enabled:=true;
BD6.Enabled:=true;
dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TQuotationS.BD5Click(Sender: TObject);
var i:integer;
begin
with BJDet do
  begin
    first;
    while not BJDet.Eof do
      begin
        if (BJDet.FieldByName('USPrice').IsNull and BJDet.FieldByName('VNPrice').IsNull) then
          begin
            showmessage('The Price can not be empty.');
            abort;
          end;  
        if (not BJDet.FieldByName('USPrice').IsNull) and (not BJDet.FieldByName('VNPrice').IsNull) then
          begin
            showmessage('Can not have two price.');
            abort;
          end;
        next;
      end;
  end;

try
    BJDet.first;
    for i:=1 to BJDet.RecordCount do
      begin
        case BJDet.updatestatus of
          usinserted:
            begin
              if BJDet.fieldbyname('CLBH').isnull then
                begin
                  BJDet.delete;
                end
                 else
                   begin
                     BJDet.edit;
                     BJDet.fieldbyname('BJNO').Value:=BJMas.fieldbyname('BJNO').Value;
                     BJDet.FieldByName('userID').Value:=main.edit1.text;
                     BJDet.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                     BJDet.FieldByName('BJLX').Value:='1';
                     BJDet.FieldByName('YN').Value:='1';
                     upDet.apply(ukinsert);
                   end;
            end;
          usmodified:
             begin
              if BJDet.fieldbyname('YN').value='0'then
                begin
                  UpDet.apply(ukdelete);
                end
                else
                  begin
                    BJDet.edit;
                    BJDet.FieldByName('userID').Value:=main.edit1.text;
                    BJDet.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                    upDet.apply(ukmodify);
                  end;
              end;
        end;
        BJDet.next;
      end;
BJDet.active:=false;
BJDet.cachedupdates:=false;
BJDet.requestlive:=false;
BJDet.active:=true;
bb6.enabled:=false;
BBTT2.Visible:=false;
BD5.Enabled:=false;
BD6.Enabled:=false;
dbgrid4.columns[0].ButtonStyle:=cbsNone;
except
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end;

end;

procedure TQuotationS.BB7Click(Sender: TObject);
begin
close;
end;

procedure TQuotationS.BD7Click(Sender: TObject);
begin
close;
end;

procedure TQuotationS.BBT1Click(Sender: TObject);
begin
BJMas.First;
end;

procedure TQuotationS.BBT2Click(Sender: TObject);
begin
BJMas.prior;
end;

procedure TQuotationS.BBT3Click(Sender: TObject);
begin
BJMas.next;
end;

procedure TQuotationS.BBT4Click(Sender: TObject);
begin
BJMas.last;
end;

procedure TQuotationS.BDT1Click(Sender: TObject);
begin
BJDet.First;
end;

procedure TQuotationS.BDT2Click(Sender: TObject);
begin
BJDet.prior;
end;

procedure TQuotationS.BDT3Click(Sender: TObject);
begin
BJDet.next;
end;

procedure TQuotationS.BDT4Click(Sender: TObject);
begin
BJDet.last;
end;

procedure TQuotationS.BD6Click(Sender: TObject);
begin
with BJDet do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
BBTT2.Visible:=false;
BD5.Enabled:=false;
BD6.Enabled:=false;
dbgrid4.columns[0].ButtonStyle:=cbsNone;
end;

procedure TQuotationS.BJDetAfterOpen(DataSet: TDataSet);
begin
BD2.Enabled:=true;
BD3.Enabled:=true;
BD4.Enabled:=true;
BDT1.Enabled:=true;
BDT2.Enabled:=true;
BDT3.Enabled:=true;
BDT4.Enabled:=true;
BDT5.Enabled:=true;
//BDT6.Enabled:=true;
if (NDate-BJMas.FieldByName('USERDATE').value)>10  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
if BJMas.FieldByName('CFMID').value<>'NO'  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;

BD5.Enabled:=false;
BD6.Enabled:=false;
end;

procedure TQuotationS.DBGrid3DblClick(Sender: TObject);
begin
if  BJMas.Active then
  begin
    if  (BJMas.recordcount>0) then
      begin
        PC1.ActivePage:=TS4;
        panel1.Visible:=false;
        panel6.Visible:=true;
      end;
  end;
end;

procedure TQuotationS.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if BJMas.FieldByName('YN').value='0' then
  begin
    dbgrid3.canvas.font.color:=clred;
    dbgrid3.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TQuotationS.DBGrid3EditButtonClick(Sender: TObject);
begin
BBTT1Click(nil);
end;

procedure TQuotationS.DBGrid4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
 if BJDet.FieldByName('YN').value='0' then
  begin
    dbgrid4.canvas.font.color:=clred;
    dbgrid4.defaultdrawcolumncell(rect,datacol,column,state);
  end;

 if BJDet.FieldByName('BJNO').isnull then
  begin
    dbgrid4.canvas.font.color:=clLime;
    dbgrid4.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TQuotationS.DBGrid4EditButtonClick(Sender: TObject);
begin
BBTT2click(nil);
end;

procedure TQuotationS.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
    DBGrid3DblClick(nil);
end;

procedure TQuotationS.BJMasAfterOpen(DataSet: TDataSet);
begin
BB5.Enabled:=false;
BB6.Enabled:=false;
BD5.Enabled:=false;
BD6.Enabled:=false;
end;

procedure TQuotationS.BBTT2Click(Sender: TObject);
begin
QuotationS_CL:=TQuotationS_CL.create(self);
QuotationS_CL.show;
end;

procedure TQuotationS.BBTT1Click(Sender: TObject);
begin
QuotationS_ZS:=TQuotationS_ZS.create(self);
QuotationS_ZS.show;
end;

procedure TQuotationS.PC1Change(Sender: TObject);
begin
if PC1.ActivePage=TS4 then
  begin
    panel6.visible:=true;
    panel1.visible:=false;
  end
    else
      begin
        panel6.visible:=false;
        panel1.visible:=true;
      end;
end;

procedure TQuotationS.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
edit2.SetFocus;
end;

procedure TQuotationS.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
edit3.SetFocus;
end;

procedure TQuotationS.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button1click(nil);
end;

procedure TQuotationS.BDT5Click(Sender: TObject);
begin
if BJDet.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end
    else
      begin
        Quotation_Print:=TQuotation_Print.Create(nil);
        Quotation_Print.quickrep1.prepare;
        Quotation_Print.Qpage1.caption:=inttostr(Quotation_Print.quickrep1.QRPrinter.pagecount);
        Quotation_Print.quickrep1.preview;
        Quotation_Print.Free;
      end;
end;

procedure TQuotationS.FormDestroy(Sender: TObject);
begin
QuotationS:=nil;
end;

end.
