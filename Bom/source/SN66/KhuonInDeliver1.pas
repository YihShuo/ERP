unit KhuonInDeliver1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, StdCtrls, DBCtrls, Grids, DBGrids, Mask, ComCtrls,
  Buttons, ExtCtrls, Menus, GridsEh, DBGridEh,dateutils ,IniFiles,Comobj;

type
  TKhuonInDeliver = class(TForm)
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
    PC1: TPageControl;
    TS3: TTabSheet;
    DBGrid3: TDBGridEh;
    Panel2: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Check: TCheckBox;
    TS4: TTabSheet;
    Panel3: TPanel;
    Label7: TLabel;
    Label19: TLabel;
    DBEdit9: TDBEdit;
    DBEdit13: TDBEdit;
    BBTT2: TBitBtn;
    DBGrid4: TDBGridEh;
    Qtemp: TQuery;
    BDelRec: TQuery;
    DelMas: TQuery;
    UpMas: TUpdateSQL;
    DS3: TDataSource;
    DelDet: TQuery;
    UPDet: TUpdateSQL;
    DS4: TDataSource;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    DelMasLLNO: TStringField;
    DelMasGSBH: TStringField;
    DelMasSupplier: TStringField;
    DelMasMemo: TStringField;
    DelMasUserID: TStringField;
    DelMasUserDate: TDateTimeField;
    DelMasYN: TStringField;
    DelDetLLNO: TStringField;
    DelDetCLBH: TStringField;
    DelDetHinhThe: TStringField;
    DelDetLength: TFloatField;
    DelDetWidth: TFloatField;
    DelDetQty: TCurrencyField;
    DelDetMemo: TStringField;
    DelDetVNPrice: TCurrencyField;
    DelDetFilmPrice: TCurrencyField;
    DelDetVNACC: TCurrencyField;
    DelDetUserID: TStringField;
    DelDetUserDate: TDateTimeField;
    DelDetYN: TStringField;
    DelDetYWPM: TStringField;
    DelDetDWBH: TStringField;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure BB1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure DelMasAfterOpen(DataSet: TDataSet);
    procedure DelDetAfterOpen(DataSet: TDataSet);
    procedure BD5Click(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure DBGrid3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid4GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BBTT2Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure DelDetCalcFields(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure BDT5Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure BDT6Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
    procedure ReadIni();
  public
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
  end;

var
  KhuonInDeliver: TKhuonInDeliver;
  sdate,edate,NDate:TDate;

implementation

uses main1, KhuonInVatTu1, KhuongInQuotation1, KhuonIn_PX_Print1,
  KhuonIn_PX_Print_B1, KhuonIn_PX_Print_C1;

{$R *.dfm}

procedure TKhuonInDeliver.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(DelDet.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(DelDet.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
end;

procedure TKhuonInDeliver.BB1Click(Sender: TObject);
begin
  panel2.Visible:=true;
end;

procedure TKhuonInDeliver.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TKhuonInDeliver.FormCreate(Sender: TObject);
var i:integer;
begin
  //PC1.ActivePageIndex:=0;
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false; 
  end;

  PC1.ActivePage:=TS3;
  DTP1.Date:=Ndate-3;
  DTP2.date:=Ndate;
  ReadIni();

end;

procedure TKhuonInDeliver.Button1Click(Sender: TObject);
begin
  with DelMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select KHUONIN_PXH.*');
    sql.add('from KHUONIN_PXH');
    sql.add('where 1=1');
    if Edit1.Text<> '' then
    begin
      sql.Add('and KHUONIN_PXH.LLNO like '''+Edit1.Text+'%'+'''');
    end;
    if CheckBox1.Checked then
    begin
      sql.add('and convert(smalldatetime,convert(varchar,KHUONIN_PXH.USERDATE,111)) between ');
      sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    sql.add('and KHUONIN_PXH.GSBH='+''''+main.Edit2.Text+'''');
    if Check.Checked then
    begin
      sql.Add('and KHUONIN_PXH.USERID='+''''+main.Edit1.Text+'''');
    end;
    if Edit2.Text <> '' then
    begin
       sql.Add('and KHUONIN_PXH.Supplier like '''+Edit2.Text+'%'+'''');
    end;
    sql.add('order by KHUONIN_PXH.LLNO DESC');
    active:=true;
  end;
  //panel2.Visible:=false;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  BBT1.Enabled:=true;
  BBT2.Enabled:=true;
  BBT3.Enabled:=true;
  BBT4.Enabled:=true;
  BBT6.Enabled:=true;
  DelDet.Active:=true;
end;

procedure TKhuonInDeliver.FormDestroy(Sender: TObject);
begin
  KhuonInDeliver:=nil;
end;

procedure TKhuonInDeliver.BB2Click(Sender: TObject);
begin
  with DelMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  //BBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TKhuonInDeliver.BB3Click(Sender: TObject);
begin
  if (DelDet.recordcount=0) then
  begin
    with DelMas do
    begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
        fieldbyname('YN').Value:='0';
    end;
  end else
  begin
    showmessage('Pls delete the Deliver Detail first.')
  end;
  //BBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TKhuonInDeliver.BB4Click(Sender: TObject);
begin
  with DelMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  //BBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TKhuonInDeliver.BB5Click(Sender: TObject);
var y,m,a:string;
    i:integer;
begin
  if DelMas.FieldByName('Supplier').IsNull then
  begin
      showmessage('The Supplier can not be empty.');
      abort;
  end;
  with Qtemp do  
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('NDate').value;
    active:=false;
  end;
  if length(m)<2 then
    m:='0'+m;

  try
    DelDet.Active:=false;
    DelMas.first;
    for i:=1 to DelMas.RecordCount do
    begin
      case DelMas.updatestatus of
      usinserted:
      begin
        if DelMas.fieldbyname('Supplier').isnull then
        begin
           DelMas.delete;
        end else
        begin
           with Qtemp do
           begin
             active:=false;
             sql.Clear;
             sql.Add('select LLNO from KHUONIN_PXH where LLNO like '+''''+y+m+'%'+'''');
             sql.add('order by LLNO');
             active:=true;
             if recordcount >0 then
             begin
                 last;
                 a:=fieldbyname('LLNO').AsString;
                 a:=copy(a,7,5);
                 a:=inttostr(strtoint(a)+1);
                 while length(a)<5 do
                 begin
                   a:='0'+a;
                 end;
             end else
             begin
               a:='00001';
             end;
             a :=y+m+a;
             active:=false;
           end;
           DelMas.edit;
           DelMas.fieldbyname('LLNO').Value:=a;
           DelMas.fieldbyname('GSBH').Value:=main.Edit2.Text;
           DelMas.FieldByName('userID').Value:=main.edit1.text;
           DelMas.FieldByName('userdate').Value:=Ndate;;
           DelMas.FieldByName('YN').Value:='1';
           upMas.apply(ukinsert);
        end;
    end;
    usmodified:
      begin
         if DelMas.FieldByName('USERID').value<>main.Edit1.Text then
         begin
             showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
         end else
         begin
           if DelMas.fieldbyname('YN').value='0'then
           begin
               with BDelRec do
               begin
                   active:=false;
                   sql.Clear;
                   sql.add('insert into BDelRec ');
                   sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                   sql.add('values ('+''''+'KHUONIN_PXH'+''''+','+''''+DelMas.fieldbyname('LLNO').Value+'''');
                   sql.add(','+''''+' '+''''+','+''''+DelMas.fieldbyname('USERID').Value+''''+',');
                   sql.add(''''+main.Edit1.Text+''''+',getdate())');
                   execsql;
                   active:=false;
               end;
               upMas.apply(ukdelete);
           end else
           begin
             if (NDate-DelMas.FieldByName('USERDATE').value)<=3  then
             begin
               DelMas.edit;
               DelMas.FieldByName('userID').Value:=main.edit1.text;
               DelMas.FieldByName('userdate').Value:=Ndate;
               upMas.apply(ukmodify);
             end else
             begin
               showmessage('Date>3, can not modify.');
             end;
           end;
       end;
      end;
    end;
    DelMas.next;
  end;
  DelMas.active:=false;
  DelMas.cachedupdates:=false;
  DelMas.requestlive:=false;
  DelMas.active:=true;
  DelDet.Active:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
  //BBTT1.Visible:=false;
  dbgrid3.columns[2].ButtonStyle:=cbsnone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TKhuonInDeliver.BD2Click(Sender: TObject);
begin
  if DelMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with DelDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BBTT2.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
end;

procedure TKhuonInDeliver.BD3Click(Sender: TObject);
begin
  if DelMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;
  with DelDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BBTT2.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
end;

procedure TKhuonInDeliver.BB6Click(Sender: TObject);
begin
  with DelMas do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.enabled:=false;
end;

procedure TKhuonInDeliver.BD6Click(Sender: TObject);
begin
  with DelDet do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BBTT2.Visible:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
end;

procedure TKhuonInDeliver.DelMasAfterOpen(DataSet: TDataSet);
begin
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
end;

procedure TKhuonInDeliver.DelDetAfterOpen(DataSet: TDataSet);
begin
  BD2.Enabled:=true;
  BD3.Enabled:=true;
  BD4.Enabled:=true;
  BDT1.Enabled:=true;
  BDT2.Enabled:=true;
  BDT3.Enabled:=true;
  BDT4.Enabled:=true;
  BDT5.Enabled:=true;
  BDT6.Enabled:=true;
  BitBtn1.Enabled:=true;
  BitBtn2.Enabled:=true;
  BitBtn3.Enabled:=true;
  if (NDate-DelMas.FieldByName('USERDATE').value)>3  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  if DelMas.FieldByName('USERID').value<>main.edit1.text  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  if DelMas.cachedupdates  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
end;

procedure TKhuonInDeliver.BD5Click(Sender: TObject);
var i:integer;
begin
  with DelDet do
  begin
    first;
    while not DelDet.Eof do
    begin
      if DelDet.FieldByName('HinhThe').IsNull then
      begin
          showmessage('The HinhThe can not be empty.');
          abort;
      end;
      if DelDet.FieldByName('Length').IsNull then
      begin
          showmessage('The Length can not be empty.');
          abort;
      end;
      if DelDet.FieldByName('Width').IsNull then
      begin
          showmessage('The Width can not be empty.');
          abort;
      end;
      if DelDet.FieldByName('Qty').IsNull then
      begin
          showmessage('The Qty can not be empty.');
          abort;
      end;
      if DelDet.FieldByName('FilmPrice').IsNull then
      begin
          showmessage('The FilmPrice can not be empty.');
          abort;
      end;
      next;
    end;
  end;

  try
    DelDet.first;
    for i:=1 to DelDet.RecordCount do
    begin
        case DelDet.updatestatus of
          usinserted:
            begin
              if DelMas.FieldByName('USERID').value<>main.Edit1.Text then
              begin
                  showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
              end else
              begin
                if DelDet.fieldbyname('CLBH').isnull then
                begin
                    DelDet.delete;
                end else
                begin
                   DelDet.edit;
                   //DelDet.fieldbyname('Qty').Value:=Deldet.fieldbyname('Qty').Value;
                   DelDet.fieldbyname('LLNO').Value:=DelMas.fieldbyname('LLNO').Value;
                   DelDet.FieldByName('userID').Value:=main.edit1.text;
                   DelDet.FieldByName('userdate').Value:=Ndate;
                   DelDet.FieldByName('YN').Value:='1';
                   if DelDet.FieldByName('VNPrice').Value<>0 then
                   begin
                      DelDet.FieldByName('VNACC').Value:=(((DelDet.FieldByName('Length').value+DelDet.FieldByName('Width').value)*DelDet.FieldByName('VNPrice').value)+DelDet.FieldByName('FilmPrice').value)*DelDet.FieldByName('Qty').value;
                   end;
                   upDet.apply(ukinsert);
                end;
              end;
            end;
          usmodified:
             begin
               if DelDet.FieldByName('USERID').value<>main.Edit1.Text then
               begin
                 showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
               end else
               begin
                 if DelDet.fieldbyname('YN').value='0'then
                 begin
                   with BDelRec do
                   begin
                       active:=false;
                       sql.Clear;
                       sql.add('insert into BDelRec ');
                       sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                       sql.add('values ('+''''+'KHUONIN_PXHS'+''''+','+''''+DelDet.fieldbyname('LLNO').Value+'''');
                       sql.add(','+''''+DelDet.fieldbyname('CLBH').Value+''''+','+''''+DelDet.fieldbyname('USERID').Value+''''+',');
                       sql.add(''''+main.Edit1.Text+''''+',getdate())');
                       execsql;
                       active:=false;
                   end;
                   UpDet.apply(ukdelete);
                 end else
                 begin
                   DelDet.edit;
                   //DelDet.fieldbyname('Qty').Value:=Deldet.fieldbyname('Qty').Value;
                   if DelDet.FieldByName('VNPrice').Value<>0 then
                   begin
                       DelDet.FieldByName('VNACC').Value:=(((DelDet.FieldByName('Length').value+DelDet.FieldByName('Width').value)*DelDet.FieldByName('VNPrice').value)+DelDet.FieldByName('FilmPrice').value)*DelDet.FieldByName('Qty').value;
                   end;
                   DelDet.FieldByName('userID').Value:=main.edit1.text;
                   DelDet.FieldByName('userdate').Value:=Ndate;
                   upDet.apply(ukmodify);
                 end;
               end;
             end;
        end;
        DelDet.next;
    end;
    DelDet.active:=false;
    DelDet.cachedupdates:=false;
    DelDet.requestlive:=false;
    DelDet.active:=true;
    bb6.enabled:=false;
    BBTT2.Visible:=false;
    BD5.Enabled:=false;
    BD6.Enabled:=false;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TKhuonInDeliver.PC1Change(Sender: TObject);
begin
  if PC1.ActivePage=TS4 then
  begin
    panel6.visible:=true;
    panel1.visible:=false;
  end else
  begin
    panel6.visible:=false;
    panel1.visible:=true;
  end;
end;

procedure TKhuonInDeliver.DBGrid3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
 if DelMas.FieldByName('YN').value='0' then
 begin
    DBGrid3.canvas.font.color:=clred;
 end;
end;

procedure TKhuonInDeliver.DBGrid4GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
 if DelDet.FieldByName('YN').value='0' then
 begin
    dbgrid4.canvas.font.color:=clred;
 end;
end;

procedure TKhuonInDeliver.BBTT2Click(Sender: TObject);
begin
  KhuonInVatTu:=TKhuonInVatTu.create(self);
  KhuonInVatTu.show;
end;

procedure TKhuonInDeliver.BD4Click(Sender: TObject);
begin
  if DelMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with DelDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BBTT2.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
end;


procedure TKhuonInDeliver.DBGrid3DblClick(Sender: TObject);
begin
  if  DelMas.Active then
  begin
    if  (DelMas.recordcount>0) then
    begin
      PC1.ActivePage:=TS4;
      panel1.Visible:=false;
      panel6.Visible:=true;
    end;
  end;
end;

procedure TKhuonInDeliver.DelDetCalcFields(DataSet: TDataSet);
begin
   if DelDet.FieldByName('VNPrice').Value<>0 then
   begin
      DelDet.FieldByName('VNACC').Value:=(((DelDet.FieldByName('Length').value+DelDet.FieldByName('Width').value)*DelDet.FieldByName('VNPrice').value)+DelDet.FieldByName('FilmPrice').value)*DelDet.FieldByName('Qty').value;
   end;
end;

procedure TKhuonInDeliver.BitBtn1Click(Sender: TObject);
begin
  KhuonInQuotation:=TKhuonInQuotation.create(self);
  KhuonInQuotation.show;
end;

procedure TKhuonInDeliver.BDT5Click(Sender: TObject);
begin
  KhuonIn_PX_Print:=TKhuonIn_PX_Print.Create(nil);
  KhuonIn_PX_Print.quickrep1.prepare;
  KhuonIn_PX_Print.quickrep1.preview;
  KhuonIn_PX_Print.Free;
end;

procedure TKhuonInDeliver.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  DelMas.active  then
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
        for   i:=0   to   DelMas.fieldcount-1   do
        begin
            eclApp.Cells(1,i+1):=DelMas.fields[i].FieldName;
        end;
        DelMas.First;
        j:=2;
        while   not   DelMas.Eof   do
        begin
          for   i:=0   to  DelMas.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=DelMas.Fields[i].Value;
          end;
          DelMas.Next;
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

procedure TKhuonInDeliver.BDT6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  DelDet.active  then
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
        for   i:=0   to   DelDet.fieldcount-1   do
        begin
            eclApp.Cells(1,i+1):=DelDet.fields[i].FieldName;
        end;
        DelDet.First;
        j:=2;
        while   not   DelDet.Eof   do
        begin
          for   i:=0   to  DelDet.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=DelDet.Fields[i].Value;
          end;
          DelDet.Next;
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

procedure TKhuonInDeliver.BitBtn2Click(Sender: TObject);
begin
  KhuonIn_PX_Print_B:=TKhuonIn_PX_Print_B.Create(nil);
  KhuonIn_PX_Print_B.quickrep2.prepare;
  KhuonIn_PX_Print_B.quickrep2.preview;
  KhuonIn_PX_Print_B.Free;
end;

procedure TKhuonInDeliver.BitBtn3Click(Sender: TObject);
begin
  KhuonIn_PX_Print_C:=TKhuonIn_PX_Print_C.Create(nil);
  KhuonIn_PX_Print_C.quickrep2.prepare;
  KhuonIn_PX_Print_C.quickrep2.preview;
  KhuonIn_PX_Print_C.Free;
end;

end.
