unit ColorStandardDatabase1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB, DBTables, GridsEh, DBGridEh, ComCtrls,comobj,
  DBCtrls,IniFiles,ShellApi,dateutils, ExtDlgs,jpeg, fununit;

type
  TColorStandardDatabase = class(TForm)
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
    bbt6: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;                 
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Check: TCheckBox;
    DBGridEh1: TDBGridEh;
    UPBTN: TButton;
    SAVEBTN: TButton;
    Color: TQuery;
    UpdateSQL1: TUpdateSQL;
    DataSource1: TDataSource;
    OpenPictureDialog1: TOpenPictureDialog;
    SaveDialog: TSaveDialog;
    CheckBox1: TCheckBox;
    Query1: TQuery;
    BDelRec: TQuery;
    ColorSeason: TStringField;
    ColorColorName: TStringField;
    ColorColorCode: TStringField;
    ColorClassifedGroup: TStringField;
    ColorAvialable_Old_Code: TStringField;
    ColorColor_Standard_Vendor: TStringField;
    ColorInitial_Season_Used: TStringField;
    ColorCarryover_Season_Purchased: TStringField;
    ColorPO: TStringField;
    ColorLatest_Date_of_Receipt: TDateTimeField;
    ColorExpired_Date: TDateTimeField;
    ColorTolerance_Group: TStringField;
    ColorVissually_Approved: TStringField;
    ColorSpectro_Approved: TStringField;
    ColorSpectro_Report: TStringField;
    ColorTracking: TStringField;
    ColorDate_DC: TDateTimeField;
    ColorDC_Barcode_Serial: TStringField;
    ColorDate_Development: TDateTimeField;
    ColorDVL_Barcode_Serial: TStringField;
    ColorDate_Production: TDateTimeField;
    ColorP_Barcode_Serial: TStringField;
    ColorDate_Factory_Team: TDateTimeField;
    ColorIH_Barcode_Serial: TStringField;
    ColorFlat_Color_Chip: TStringField;
    ColorRGB_Value: TStringField;
    ColorNRF_Color_Code: TStringField;
    ColorColor_Standard_Fabrication: TStringField;
    ColorColor_Limited_Use: TStringField;
    Colorremark: TStringField;
    ColorUSERID: TStringField;
    ColorUSERDate: TDateTimeField;
    ColorYN: TStringField;
    sampleimg: TImage;
    Label2: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    Edit3: TEdit;
    Label6: TLabel;
    Edit4: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Edit5: TEdit;
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ColorAfterOpen(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure UPBTNClick(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure SAVEBTNClick(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure ColorAfterScroll(DataSet: TDataSet);
  private
    STFilePath: string;
    IsExport:boolean;
    procedure ReadIni();
    { Private declarations }
  public
    { Public declarations }
    ShoePicPath:String;
  end;

var
  ColorStandardDatabase: TColorStandardDatabase;
  NDate:TDate;

implementation

uses main1, ShowShoePic1;

{$R *.dfm}

procedure TColorStandardDatabase.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  ShoePicPath := '\\192.168.23.11\A_DataCenter\CDC\Sales\BOM';
  STFilePath := '\\192.168.123.111\Purchasing\Color Specialist\SPETRO REPORTS';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ShoePicPath:=MyIni.ReadString('ShoePic','Bom_N31_shoePic','');
      STFilePath:=MyIni.ReadString('Spectro','Purchase_N735_STFilePath','');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TColorStandardDatabase.BB1Click(Sender: TObject);
begin
  panel2.Visible:=true;
end;

procedure TColorStandardDatabase.Button1Click(Sender: TObject);
begin
  with Color do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select *');
    SQL.Add('from Pur_Color ');
    SQL.Add('where 1=1 ');
    if CheckBox1.Checked then
    begin
      SQL.Add('and convert(smalldatetime,convert(varchar,Pur_Color.USERDATE,111)) between ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +'''');
      SQL.add(' and ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    if Check.Checked then
    begin
      SQL.Add('and Pur_Color.USERID='+''''+main.Edit1.Text+'''');
    end;
    if Edit1.Text <> '' then
      SQL.Add('and Pur_Color.Season like  '''+Edit1.Text+'%'' ');
    if Edit2.Text <> '' then
      SQL.Add('and Pur_Color.ColorName like  '''+Edit2.Text+'%'' ');
    if Edit4.Text <> '' then
      SQL.Add('and Pur_Color.ColorCode  like  '''+Edit4.Text+'%'' ');
    if Edit3.Text <> '' then
      SQL.Add('and Pur_Color.PO# like  '''+Edit3.Text+'%'' ');
    if Edit5.Text <> '' then
      SQL.Add('and Pur_Color.ClassifedGroup  like  '''+Edit5.Text+'%'' ');
    SQL.Add('order by Season DESC');
    //memo1.Text:=sql.Text;
    Active:=true;
  end;
  sampleimg.Visible:=true;
  UPBTN.Visible:=true;
  sampleimg.Enabled:=true;
  UPBTN.Enabled:=true;
end;

procedure TColorStandardDatabase.ColorAfterOpen(DataSet: TDataSet);
begin
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
end;

procedure TColorStandardDatabase.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TColorStandardDatabase.FormDestroy(Sender: TObject);
begin
  ColorStandardDatabase:=nil;
end;

procedure TColorStandardDatabase.BB5Click(Sender: TObject);
var y,m,SGNO:string;
    i:integer;
begin
  if (Color.FieldByName('Season').AsString = '') or (Color.FieldByName('Colorcode').AsString = '') then
  begin
    showmessage('Can not Save Season or Colorcode not null ');
    abort;
  end;
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  if length(m)<2 then
    m:='0'+m;
  try
    Color.first;
    for i:=1 to Color.RecordCount do
    begin
      case Color.updatestatus of
        usinserted:
        begin
          Color.edit;
          Color.FieldByName('userID').Value:=main.edit1.text;
          Color.FieldByName('userdate').Value:=NDate;
          Color.FieldByName('YN').Value:=1;
          if (Color.FieldByName('Latest_Date_of_Receipt').AsString <> '') then
             Color.FieldByName('Expired_Date').AsString := Color.FieldByName('Latest_Date_of_Receipt').Value+731;
          UpdateSQL1.apply(ukinsert);
        end;
        usmodified:
        begin
            if Color.FieldByName('USERID').value=main.Edit1.Text then
            begin
              if Color.fieldbyname('YN').value='0' then
              begin
                with BDelRec do
                begin
                  active:=false;
                  sql.Clear;
                  sql.add('insert into BDelRec ');
                  sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                  sql.add('values (''Pur_Color'','''+Color.fieldbyname('SeaSon').Value+'''');
                  sql.add(','' '','''+Color.fieldbyname('USERID').Value+''',');
                  sql.add(''''+main.Edit1.Text+''''+',getdate())');
                  execsql;
                  active:=false;
                end;
                UpdateSQL1.apply(ukdelete);
              end else
              begin
                if (NDate-Color.FieldByName('USERDATE').value)<=30  then
                begin
                  Color.edit;
                  if (Color.FieldByName('Latest_Date_of_Receipt').AsString <> '') or (Color.FieldByName('Latest_Date_of_Receipt').Value <> Color.FieldByName('Latest_Date_of_Receipt').OldValue) then
                     Color.FieldByName('Expired_Date').AsString := Color.FieldByName('Latest_Date_of_Receipt').Value+731;
                  Color.FieldByName('userID').Value:=main.edit1.text;
                  Color.FieldByName('userdate').Value:=Ndate;
                  UpdateSQL1.apply(ukmodify);
                end else
                begin
                  showmessage('Date>30, can not modify.');
                end;
              end;
            end else
            begin
              showmessage('It is not yours, can not modify.');
            end;
        end;
      end;
      Color.next;
    end;
  Color.active:=false;
  Color.cachedupdates:=false;
  Color.requestlive:=false;
  Color.active:=true;
  BB5.enabled:=false;
  BB6.enabled:=false;
  showmessage('Succeed.');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TColorStandardDatabase.BB2Click(Sender: TObject);
begin
  with Color do
  begin
    requestlive:=true;
    cachedupdates:=true;
    Insert;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TColorStandardDatabase.BB3Click(Sender: TObject);
begin
  with Color do
  begin
    if fieldbyname('USERID').value=main.edit1.Text then
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
      fieldbyname('YN').Value:='0';
    end else
    begin
        showmessage('It is not yours,can not delete.');
    end;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TColorStandardDatabase.BB4Click(Sender: TObject);
begin
  with Color do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TColorStandardDatabase.UPBTNClick(Sender: TObject);
begin
   if OpenPictureDialog1.Execute then
     sampleimg.Picture.LoadFromFile(OpenPictureDialog1.Filename);
   SAVEBTN.Visible:=true;
   SAVEBTN.enabled:=true;
end;

procedure TColorStandardDatabase.DBGridEh1CellClick(Column: TColumnEh);
var path:PChar;
begin
  if (DBGridEh1.SelectedField.FieldName = 'Spectro_Report#') and (not Color.FieldByName('Spectro_Report#').isnull) then
  begin
    path:= pchar( STFilePath + string(Color.FieldByName('Spectro_Report#').value) );
    if FileExists(Path)=true then
    ShellExecute(Handle, nil, path,  nil, nil, SW_SHOWNORMAL);
  end;
end;

procedure TColorStandardDatabase.FormCreate(Sender: TObject);
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
  DTP1.Date:=date-3;
  DTP2.date:=date;
  ReadIni();
end;

procedure TColorStandardDatabase.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Color.FieldByName('YN').value='0' then
  begin
    DBGridEh1.canvas.font.color:=clred;
  end;
end;

procedure TColorStandardDatabase.SAVEBTNClick(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    SQL.add('update Pur_Color set Flat_Color_Chip= '''+OpenPictureDialog1.FileName+'''');
    SQL.add('where Season ='''+Color.FieldByName('Season').AsString+''' and Colorcode ='''+Color.FieldByName('Colorcode').AsString+'''');
    Query1.ExecSQL();
  end;
  showmessage('Succeed.');
  Button1.Click;
end;

procedure TColorStandardDatabase.bbt6Click(Sender: TObject);
var
  eclApp,WorkBook:olevariant;
  i,j:integer;
begin
  if Color.Active then
  begin
    if Color.recordcount=0 then
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
    for i:=0 to DBGridEh1.Columns.Count-1 do
    begin
      eclApp.Cells(1,i+2):=DBGridEh1.Columns[i].Title.Caption;
    end;
    Color.First;
    j:=2;
    while   not  Color.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for i:=0 to DBGridEh1.Columns.Count-1 do
      begin
        //eclApp.Cells[j,i+8].NumberFormatLocal:='@';
        eclApp.Cells(j,i+2):=DBGridEh1.Fields[i].Value;
      end;
      Color.Next;
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

procedure TColorStandardDatabase.BB6Click(Sender: TObject);
begin
  with Color do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BB5.enabled:=false;
  BB6.enabled:=false;
end;

procedure TColorStandardDatabase.ColorAfterScroll(DataSet: TDataSet);
var ShoePic:string;
begin
   shoePic:=StringReplace(Color.FieldByName('Flat_Color_Chip').Asstring,'A:','\\192.168.123.111\Purchasing\Color Specialist\COLOR STANDARD IMAGE', [rfReplaceAll, rfIgnoreCase]);
   funcObj.WriteErrorLog(shoePic);
   if FileExists(shoePic)=true then
      sampleimg.Picture.LoadFromFile(shoePic);
   if FileExists(shoePic)=false then
      sampleimg.Picture.Bitmap:=nil;
end;

end.
