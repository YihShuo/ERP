unit FirstStock1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,FunUnit,
  Dialogs, Buttons, DBTables, DB, StdCtrls, Grids, DBGrids, ExtCtrls,Math, comobj,
  GridsEh, DBGridEh;

type
  TFirstStock = class(TForm)
    Panel2: TPanel;
    DBGrid1: TDBGridEh;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    CBX1: TComboBox;
    Edit3: TEdit;
    TempSql: TQuery;
    KCCLMONTH: TQuery;
    DS1: TDataSource;
    UpSQL1: TUpdateSQL;
    Panel1: TPanel;
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
    bbt5: TBitBtn;
    bbt6: TBitBtn;
    KCCLMONTHKCYEAR: TStringField;
    KCCLMONTHKCMONTH: TStringField;
    KCCLMONTHCLBH: TStringField;
    KCCLMONTHQTY: TCurrencyField;
    KCCLMONTHUSERDATE: TDateTimeField;
    KCCLMONTHUSERID: TStringField;
    KCCLMONTHYN: TStringField;
    KCCLMONTHYWPM: TStringField;
    KCCLMONTHDWBH: TStringField;
    KCCLMONTHLYCC: TStringField;
    KCCLMONTHCLZMLB: TStringField;
    KCCLMONTHKCBH: TStringField;
    KCCLMONTHUSPrice: TCurrencyField;
    KCCLMONTHCWHL: TIntegerField;
    KCCLMONTHVNPrice: TFloatField;
    KCCLMONTHVNACC: TFloatField;
    KCCLMONTHCWBH: TStringField;
    KCCLMONTHCKBH: TStringField;
    KCCLMONTHZWPM: TStringField;
    Label3: TLabel;
    CBX2: TComboBox;
    Label5: TLabel;
    CBX3: TComboBox;
    Qtemp: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure bbt5Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1EditButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FirstStock: TFirstStock;

implementation

uses main1, FirstStock_Print1, FirstStock_Price1, FirstStock_PriceM1;

{$R *.dfm}

procedure TFirstStock.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TFirstStock.BB1Click(Sender: TObject);
begin
panel3.Visible:=true;
end;

procedure TFirstStock.FormCreate(Sender: TObject);
var i:integer;
    myYear, myMonth, myDay : Word;
    NDate :Tdate;
begin
  KCCLMONTH.active:=false;
  with tempsql do
  begin
    active:=false;
    sql.clear;
    {sql.add('select LBDH from lbzls where lb='+''''+'05'+''''+'order by LBDH');
    active:=true;
    while not tempsql.eof do
      begin
        CBX1.Items.Add(fields[0].value);
        next;
      end;
    active:=false;
    sql.clear; }
    sql.add('select CKBH from KCCK');
    sql.add('where GSBH='+''''+main.edit2.text+'''');
    sql.add('order by CKBH  ');
    active:=true;
    while not tempsql.eof do
    begin
      CBX1.Items.Add(fields[0].value);
      next;
    end;
  end;

  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select year(getdate())-5 as Oldyear,year(getdate())+5 as Newyear');
    active:=true;
    for i:=QTemp.fieldbyname('Oldyear').value to  QTemp.fieldbyname('Newyear').value  do
    begin
      CBX2.Items.Add(inttostr(i));
      next;
    end;
    active:=false;

    DecodeDate(Date(), myYear, myMonth, myDay);
    for i:=0 to CBX2.Items.Count-1 do
    begin
      if strtoint(CBX2.Items[i])=myYear then
      begin
        CBX2.ItemIndex:=i;
        break;
      end;
    end;
    for i:=0 to CBX3.Items.Count-1 do
    begin
      if strtoint(CBX3.Items[i])=myMonth then
      begin
        CBX3.ItemIndex:=i;
        break;
      end;
    end;
  end;


end;

procedure TFirstStock.BB7Click(Sender: TObject);
begin
close;
end;

procedure TFirstStock.Button1Click(Sender: TObject);
begin
  with KCCLMONTH do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select  KCCLMONTH.*,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,CLZL.LYCC,CLZL.CLZMLB,KCZLS.KCBH,KCZLS.CWBH');
    sql.add('from KCCLMONTH');
    sql.add('left join CLZL on KCCLMONTH.CLBH=CLZL.CLDH');
    sql.add('left join KCZLS on KCZLS.CLBH=KCCLMONTH.CLBH and KCZLS.CKBH=KCCLMONTH.CKBH');
    sql.add('left join KCCK on KCCK.CKBH=KCCLMONTH.CKBH');
    sql.add('where KCCLMONTH.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
    sql.add('      and KCCLMONTH.KCMONTH='+''''+CBX3.Text+'''');
    sql.add('      and KCCLMONTH.KCYEAR='+''''+CBX2.Text+'''');
    sql.add('      and KCCK.GSBH='+''''+main.Edit2.text+'''');
    {if CBX1.itemindex>0 then
      begin
        sql.add('and KCCLMONTH.CLBH like '+''''+CBX1.Text+'%'+'''');
      end; }
    if CBX1.itemindex>0 then
      begin
        sql.add('and KCCLMONTH.CKBH='+''''+CBX1.Text+'''');
      end;
    sql.add('order by KCCLMONTH.CLBH') ;
    //funcobj.WriteErrorLog(sql.Text );
    active:=true;
  end;
//bb2.enabled:=true;
//bb3.enabled:=true;
bb4.enabled:=true;
bb5.enabled:=false;
bb6.enabled:=false;
bb7.enabled:=true;
bbt1.enabled:=true;
bbt2.enabled:=true;
bbt3.enabled:=true;
bbt4.enabled:=true;
bbt5.enabled:=true;
bbt6.enabled:=true;
end;

procedure TFirstStock.BB4Click(Sender: TObject);
begin
with KCCLMONTH do
  begin
    cachedupdates:=true;
    requestlive:=true;
  end;
bb5.enabled:=true;
bb6.enabled:=true;
DBGrid1.Columns[3].buttonstyle:= cbsEllipsis;
end;

procedure TFirstStock.BB6Click(Sender: TObject);
begin
with KCCLMONTH do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
BB5.enabled:=false;
BB6.Enabled:=false;
DBGrid1.Columns[3].buttonstyle:=cbsnone;
end;

procedure TFirstStock.BBT1Click(Sender: TObject);
begin
  KCCLMONTH.First;
end;

procedure TFirstStock.BBT2Click(Sender: TObject);
begin
  KCCLMONTH.Prior;
end;

procedure TFirstStock.BBT3Click(Sender: TObject);
begin
  KCCLMONTH.Next;
end;

procedure TFirstStock.BBT4Click(Sender: TObject);
begin
  KCCLMONTH.Last;
end;

procedure TFirstStock.BB5Click(Sender: TObject);
var i:integer;
begin
{with KCCLMONTH do
  begin
    first;
    while not eof do
      begin
        if fieldbyname('VNPrice').value=0 then
          begin
             showmessage('VNPrice can not be empty.');
             abort;
          end; {
          else
            begin
              if fieldbyname('USPRICE').IsNull and  fieldbyname('VNPRICE').IsNull    then
                begin
                  showmessage('Price can not be empty.');
                  abort;
                end;
            end;  
        next;
      end;
  end;}

try
    KCCLMONTH.first;
    for i:=1 to KCCLMONTH.RecordCount do
      begin
        case KCCLMONTH.updatestatus of
          usmodified:
             begin
               KCCLMONTH.edit;
               if  (KCCLMONTH.FieldByName('VNACC').isnull) and (not KCCLMONTH.FieldByName('VNPrice').isnull) then
                 begin
                   KCCLMONTH.FieldByName('VNACC').value:=KCCLMONTH.FieldByName('VNPrice').Value*KCCLMONTH.FieldByName('Qty').Value;
                 end;
               KCCLMONTH.FieldByName('USERID').Value:=main.edit1.text;
               KCCLMONTH.FieldByName('USERdate').Value:=date;
               upsql1.apply(ukmodify);
              end;
        end;
        KCCLMONTH.next;
      end;
    KCCLMONTH.active:=false;
    KCCLMONTH.cachedupdates:=false;
    KCCLMONTH.requestlive:=false;
    KCCLMONTH.active:=true;
    bb5.enabled:=false;
    bb6.enabled:=false;
    DBGrid1.Columns[3].buttonstyle:= cbsnone;
except
  Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
end;

end;

procedure TFirstStock.bbt6Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

if KCCLMONTH.Active then
  begin
    if KCCLMONTH.recordcount=0 then
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
  for   i:=1   to   KCCLMONTH.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=KCCLMONTH.fields[i-1].FieldName;
    end;
  KCCLMONTH.First;
  j:=2;
  while   not  KCCLMONTH.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   KCCLMONTH.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=KCCLMONTH.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
      KCCLMONTH.Next;
      inc(j);
    end;
  eclapp.columns.autofit;
  eclApp.Visible:=True;
except
  on   F:Exception   do
    showmessage(F.Message);
end;

end;

procedure TFirstStock.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit2.SetFocus;
end;

procedure TFirstStock.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit3.SetFocus;
end;

procedure TFirstStock.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  button1.SetFocus;
end;

procedure TFirstStock.DBGrid1ColExit(Sender: TObject);
begin
if KCCLMONTH.requestlive then
  begin
   if DBGrid1.SelectedField.fieldname='VNACC' then
     begin
       if  KCCLMONTH.FieldByName('VNACC').value<>0 then
         begin
           if   ((KCCLMONTH.FieldByName('Qty').value<>0) and (KCCLMONTH.FieldByName('VNPrice').value=0)) then
             begin
               KCCLMONTH.edit;
               KCCLMONTH.FieldByName('VNPrice').value:=KCCLMONTH.FieldByName('VNACC').value/KCCLMONTH.FieldByName('Qty').value;
             end;
         end;
     end;
   if DBGrid1.SelectedField.fieldname='VNPrice' then
     begin
       if  KCCLMONTH.FieldByName('VNPrice').value<>0 then
         begin
           if  KCCLMONTH.FieldByName('VNACC').value=0 then
             begin
               KCCLMONTH.edit;
               KCCLMONTH.FieldByName('VNACC').value:=KCCLMONTH.FieldByName('VNPrice').Value*KCCLMONTH.FieldByName('Qty').value;
             end;
         end;
     end;
  end;
end;

procedure TFirstStock.bbt5Click(Sender: TObject);
begin
FirstStock_Print:=TFirstStock_Print.create(self);
FirstStock_Print.quickrep1.prepare;
FirstStock_Print.PageN.caption:=inttostr(FirstStock_Print.quickrep1.QRPrinter.pagecount);
FirstStock_Print.SDate.Caption:=formatdatetime('YYYY/MM/DD',date);
FirstStock_Print.quickrep1.preview;
FirstStock_Print.free;
end;

procedure TFirstStock.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin {
if key=#13 then
  begin
    if (DBGrid1.SelectedField.index=4 ) and KCCLMONTH.RequestLive  then
      begin
        if (KCCLMONTH.FieldByName('VNPrice').value=0)
                     and (KCCLMONTH.FieldByName('VNACC').value<>0) then
          begin
            if KCCLMONTH.FieldByName('Qty').value<>0 then
              begin
                KCCLMONTH.edit;
                KCCLMONTH.FieldByName('VNPrice').value:=KCCLMONTH.FieldByName('VNACC').value/KCCLMONTH.FieldByName('Qty').value ;
              end
              else
                begin
                  KCCLMONTH.edit;
                  KCCLMONTH.FieldByName('VNPrice').value:=0;
                end;
          end;
      end;
  end; }

end;

procedure TFirstStock.DBGrid1EditButtonClick(Sender: TObject);
begin

if not KCCLMONTH.FieldByName('CLBH').IsNull then
  begin
    if KCCLMONTH.FieldByName('CLZMLB').value='N' then
      begin
        FirstStock_Price:=TFirstStock_Price.Create(self);
        FirstStock_Price.EDIT1.Text:=KCCLMONTH.fieldbyname('CLBH').value;
        FirstStock_Price.Button1Click(nil);
        FirstStock_Price.Show;
      end
      else
        begin
          FirstStock_PriceM:=TFirstStock_PriceM.Create(self);
          FirstStock_PriceM.EDIT1.Text:=KCCLMONTH.fieldbyname('CLBH').value;
          FirstStock_PriceM.Button1Click(nil);
          FirstStock_PriceM.Show;
        end;
  end;
end;

end.
