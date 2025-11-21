unit GhiChepDongGoiDuLieu1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,StrUtils,
  DBGridEhToolCtrls, DynVarsEh, Vcl.Menus, Data.DB, Data.Win.ADODB, MyADOQuery,
  MyADOUpdateSQL, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,DateUtils, Bde.DBTables, Vcl.Grids, ComObj,
  Vcl.Mask, Vcl.DBCtrls, IniFiles;

type
  TGhiChepDongGoiDuLieu = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label7: TLabel;
    Button1: TButton;
    Button3: TButton;
    CBX2: TComboBox;
    CBX3: TComboBox;
    Button4: TButton;
    SaveDialog1: TSaveDialog;
    QTemp: TMyADOQuery;
    DS1: TDataSource;
    Query1: TMyADOQuery;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    Query1NgayThucHien: TDateTimeField;
    UpdateSQL1: TMyADOUpdateSQL;
    Button5: TButton;
    Query1KetQua: TIntegerField;
    Panel2: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    cfmid: TDBEdit;
    userid: TDBEdit;
    Query1CFMID: TStringField;
    Query1CFMDate: TDateTimeField;
    PopupMenu1: TPopupMenu;
    Confirm1: TMenuItem;
    QUpdate: TMyADOQuery;
    Query2: TMyADOQuery;
    DS2: TDataSource;
    DBGridEh1: TDBGridEh;
    Query2ID: TStringField;
    Query2DataName: TStringField;
    Panel3: TPanel;
    StringGrid1: TStringGrid;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    DBGridEh2: TDBGridEh;
    Query3: TMyADOQuery;
    DS3: TDataSource;
    Query3NgayThucHien: TDateTimeField;
    Query3KetQua: TBooleanField;
    Query3UserID: TStringField;
    Query3UserDate: TDateTimeField;
    Query3YN: TStringField;
    Query3CFMID: TStringField;
    Query3CFMDate: TDateTimeField;
    Query2KetQua: TBooleanField;
    Label1: TLabel;
    CFMID1: TDBEdit;
    Label3: TLabel;
    Query1CFMID1: TStringField;
    Query1CFMDate1: TDateTimeField;
    Qtemp1: TMyADOQuery;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure StringGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Button4Click(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Confirm1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    SN41_IT_Supervisor,SN41_IT_Manager:String;
    { Private declarations }
    procedure readini();
    procedure SaveChiTiet(bdate:TDate );
    procedure SaveDongGoiDuLieu(i,j:integer;bdate:TDate;y,m,d:word);
  public
    { Public declarations }
    function GetVietDate(myDate:TDateTime):string;
    function GetVietDateTime(myDate:TDateTime):string;
    function GetTaiwnDateTime(myDate:TDateTime):string;
  end;

var
  GhiChepDongGoiDuLieu: TGhiChepDongGoiDuLieu;
  NDate,sdate,edate:Tdate;

implementation

  uses main1, GhiChepDongGoiDuLieu_Print1, FunUnit, GhiChepDongGoiDuLieuNgay1;

{$R *.dfm}

function TGhiChepDongGoiDuLieu.GetVietDate(myDate:TDateTime):string;
var myYear, myMonth, myDay : Word;
    myHour, myMin, mySec, myMilli : Word;
begin
  decodedatetime(myDate, myYear, myMonth, myDay ,myHour, myMin, mySec, myMilli);
  //result:='Ngày日 '+Format('%.2d',[myDay])+' tháng月 '+Format('%.2d',[myMonth])+' năm年 '+inttostr(myYear);
  result:=Format('%.2d',[myMonth])+' 月 '+inttostr(myYear)+' 年 ';
end;
function TGhiChepDongGoiDuLieu.GetVietDateTime(myDate:TDateTime):string;
var myYear, myMonth, myDay : Word;
    myHour, myMin, mySec, myMilli : Word;
begin
  decodedatetime(myDate, myYear, myMonth, myDay ,myHour, myMin, mySec, myMilli);
  result:=Format('%.2d',[myDay])+'/'+Format('%.2d',[myMonth])+'/'+inttostr(myYear)+' '+Format('%.2d',[myHour])+':'+Format('%.2d',[myMin])+':'+Format('%.2d',[mySec]);
end;

function TGhiChepDongGoiDuLieu.GetTaiwnDateTime(myDate:TDateTime):string;
var myYear, myMonth, myDay : Word;
    myHour, myMin, mySec, myMilli : Word;
begin
  decodedatetime(myDate, myYear, myMonth, myDay ,myHour, myMin, mySec, myMilli);
  result:=inttostr(myYear)+'/'+Format('%.2d',[myMonth])+'/'+Format('%.2d',[myDay])+' '+Format('%.2d',[myHour])+':'+Format('%.2d',[myMin])+':'+Format('%.2d',[mySec]);
end;

procedure TGhiChepDongGoiDuLieu.readini();
var MyIni :TInifile;
    AppDir:String;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      SN41_IT_Supervisor:=MyIni.ReadString('ProductionBonus','SN41_IT_Supervisor','51267');
      SN41_IT_Manager:=MyIni.ReadString('ProductionBonus','SN41_IT_Manager','51295');
      //
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TGhiChepDongGoiDuLieu.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var y,m,d:word;
    i,j,e:integer;
    r: TRect;
begin
    decodedate(sdate,y,m,d);
    for i:=1 to 7 do
    begin
      if dayoftheweek(encodedate(y,m,i))=7 then
      begin
        e:=i
      end;
    end;

    if (ACol<>0)and(ARow=0)then
    begin
      if (ACol-e)mod 7=0 then
      begin
        with   StringGrid1.Canvas   do
        begin
          Font.Color:=clRed;
        //  Font.Size:=8;
          Font.Style:=[fsbold];
          StringGrid1.Canvas.TextRect(Rect,Rect.right-Canvas.TextWidth(stringgrid1.Cells[ACol,ARow])-28, Rect.top+16, stringgrid1.Cells[ACol,ARow] );
         // TextOut(Rect.Left+2,   Rect.Top+3,   StringGrid1.Cells[ACol,   ARow]);
        end;
      end;
    end;

    if (ACol<>0)and(ARow=1) Then
    begin
      SetTextAlign(StringGrid1.Canvas.Handle, TA_CENTER);
      if (StringGrid1.Cells[ACol,ARow] = '1') then
      begin
        DrawFrameControl(StringGrid1.Canvas.Handle, Rect,
          DFC_BUTTON, DFCS_BUTTONCHECK or DFCS_CHECKED); // Desenha o CheckBox desmarcado
      end else
      begin
        DrawFrameControl(StringGrid1.Canvas.Handle, Rect, DFC_BUTTON, DFCS_BUTTONCHECK); // Desenha o CheckBox marcado
      end;
    end;
end;

procedure TGhiChepDongGoiDuLieu.StringGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if  not (Key in ['0'..'9',#8,#46,#13]) then
  begin
    Key := #0;
  end else
  begin
    Button3.Enabled:=true;
    Button4.Enabled:=true;
  end;
end;

procedure TGhiChepDongGoiDuLieu.StringGrid1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var IsEdit:boolean;
    ChoiceDT:TDate;
begin
  ChoiceDT:=EncodeDate(strtoint(CBX2.text),strtoint(CBX3.text),ACol);
  //
  if ChoiceDT<Date then  IsEdit:=false else IsEdit:=true;
  if ((ACol>=1) and (ARow>=1) )then
  begin
    if IsEdit=true then
    begin
      if  CanSelect then
      begin
        Button3.Enabled:=true;
        Button4.Enabled:=true;
      end else
      begin
        Button3.Enabled:=false;
        Button4.Enabled:=false;
      end;
      if(StringGrid1.Cells[ACol,ARow] = '0') then
      begin
        StringGrid1.Cells[ACol,ARow] := '1';
        CanSelect:=False;
      end else
      begin
        StringGrid1.Cells[ACol,ARow] := '0';
        CanSelect:=False;
      end;
      StringGrid1.Canvas.Brush.Color:=clWhite;
    end else
    begin
      CanSelect:=False;
    end;
  end;
end;

procedure TGhiChepDongGoiDuLieu.Button1Click(Sender: TObject);
  var a,b,c :word;
      i,j,d,k, e:integer;
begin
  a:=strtoint(CBX2.text);
  b:=strtoint(CBX3.text);
  c:=1;
  sdate:=EncodeDate(a,b,c);
  edate:=endofthemonth(sdate);
  d:=DaysBetween(sdate,edate);
  with StringGrid1 do
  begin
    colcount:=d+2;
    rowcount:=2;
    for i:=1 to d+1 do
    begin
      cells[i,0]:=inttostr(i);
      colwidths[i]:=45;
    end;
    colwidths[0]:=180;
    RowHeights[0]:=50;
    cells[0,0]:='Ngày '+#13+'日期';
    cells[0,1]:='Kết quả ĐGDL '+#13+'資料備份結果';
  end;
  with query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('select NgayThucHien,UserID,UserDate,CFMID,CFMDate,CFMID1,CFMDate1,YN,CAST(KetQua AS INT) AS KetQua from ITPC_DongGoiDuLieu ');
    sql.add('where NgayThucHien>='+''''+formatdatetime('yyyy/MM/dd',sdate)+''' ');
    sql.add('      and NgayThucHien<='+''''+formatdatetime('yyyy/MM/dd',edate)+''' ');
    sql.add('order by NgayThucHien');
    active:=true;
  end;
  for i:=1 to stringgrid1.colCount-1 do      //²MªÅ
  begin
    decodedate(sdate,a,b,c);
    for k:=1 to 7 do
    begin
      if dayoftheweek(encodedate(a,b,k))=7 then
      begin
        e:=k
      end;
    end;
    if (i-e) mod 7=0 then
      StringGrid1.cells[i,1]:=''
    else
      StringGrid1.cells[i,1]:='';
  end;
  query1.First;
  for i:=1 to query1.RecordCount do
  begin
    decodedate(query1.fieldbyname('NgayThucHien').value,a,b,c);
    StringGrid1.cells[c,1]:=query1.fieldbyname('KetQua').AsString;
    query1.next;
  end;
  Button3.Enabled:=false;
  Button4.Enabled:=false;
  if Query1.RecordCount>0 then
  begin
    Panel2.Visible:=true;
    Confirm1.Enabled:=true;
    Button5.Enabled:=true;
    Button2.Enabled:=true;
  end else
  begin
    Panel2.Visible:=false;
    Confirm1.Enabled:=false;
    Button5.Enabled:=false;
    Button5.Enabled:=false;
  end;
  //
  with Query3 do
  begin
    active:=false;
    sql.clear;
    sql.add('select * from ITPC_DongGoiDuLieu ');
    sql.add('where NgayThucHien>='+''''+formatdatetime('yyyy/MM/dd',sdate)+'''');
    sql.add('      and NgayThucHien<='+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('order by NgayThucHien');
    active:=true;
  end;
  Query2.Active:=true;
end;

procedure TGhiChepDongGoiDuLieu.Button2Click(Sender: TObject);
begin
  if (GhiChepDongGoiDuLieuNgay <> Nil) then
    GhiChepDongGoiDuLieuNgay.Close;
  GhiChepDongGoiDuLieuNgay := TGhiChepDongGoiDuLieuNgay.Create(Self);
  GhiChepDongGoiDuLieuNgay.Show;
end;

procedure TGhiChepDongGoiDuLieu.Button3Click(Sender: TObject);
var i,j:integer;
    a:string;
    bdate:TDate;
    y,m,d:word;
begin
  try
    y:=strtoint(CBX2.text);
    m:=strtoint(CBX3.text);
    SaveDongGoiDuLieu(i,j,bdate,y,m,d);
    Button1Click(nil);
    showmessage('Succeed.');
  except
    showmessage('Have wrong.');
  end;
end;

procedure TGhiChepDongGoiDuLieu.SaveChiTiet(bdate:TDate );
begin
    with QUpdate do
    begin
      active:=false;
      sql.Clear;
      sql.Add('if not Exists( Select * from ITPC_DongGoiDuLieuChiTiet where NgayThucHien='''+formatdatetime('yyyy/MM/dd',bDate)+''') ');
      sql.Add('Begin ');
      sql.Add(' INSERT INTO ITPC_DongGoiDuLieuChiTiet ');
      sql.Add(' Select '''+formatdatetime('yyyy/MM/dd',bDate)+''' as NgayThucHien,ITPC_DongGoiDuLieu_DT.ID,1 as KetQua,'''+main.UserID+''' as UserID,GetDate() as UserDate, ''1'' as YN ');
      sql.Add(' from ITPC_DongGoiDuLieu_DT ');
      sql.Add('End ');
      //funcObj.WriteErrorLog(sql.Text);
      execsql;
      active:=false;
    end;
end;
procedure TGhiChepDongGoiDuLieu.SaveDongGoiDuLieu(i,j:integer ;bdate:TDate ;y,m,d:word);
var j_list,i_list :TSTringlist;
    k :integer;
    h, n, s, z : Word;
begin
  j_list:=TStringlist.Create;
  i_list:=TStringlist.Create;

  for i:=1 to stringgrid1.ColCount-1 do
    begin
      d:=i;
      DecodeTime(NDate, h, n, s, z);
      bDate:=EncodeDateTime(y,m,d,h,n,s,z);
      if Query1.Locate('NgayThucHien',formatdatetime('yyyy/MM/dd',bDate),[]) then
      begin
        if stringGrid1.Cells[i,1] <> Query1.fieldbyname('KetQua').AsString then
        begin
          j_list.Add(inttostr(1));
          i_list.Add(inttostr(i));
        end;
      end else
      begin
        j_list.Add(inttostr(1));
        i_list.Add(inttostr(i));
      end;
    end;

  for k:=0 to j_list.Count-1 do
  begin
    j:= strtoint(j_list.Strings[k]);
    i:= strtoint(i_list.Strings[k]);
    d:=i;
    //早上08
    h:=7;
    randomize();
    n:=30+random(20);
    bDate:=EncodeDateTime(y,m,d,h,n,s,z);

    with query1 do
    begin
      active:=false;
      sql.clear;
      sql.add('select NgayThucHien,UserID,UserDate,CFMID,CFMDate,CFMID1,CFMDate1,YN,CAST(KetQua AS INT) AS KetQua from ITPC_DongGoiDuLieu ');
      sql.add('where NgayThucHien>='+''''+formatdatetime('yyyy/MM/dd',bDate)+'''');
      sql.add('      and NgayThucHien<='+''''+formatdatetime('yyyy/MM/dd',bDate)+'''');
      sql.add('order by NgayThucHien');
      active:=true;
    end;

    if Query1.Locate('NgayThucHien',formatdatetime('yyyy/MM/dd',bDate),[]) then
    begin
      if  query1.FieldByName('KetQua').Value<>strtoint(stringGrid1.Cells[i,j])  then
      begin
        if Query1.FieldByName('CFMID').AsString<>'NO' then
        begin
          Showmessage('Already confirm. Can not modify. ');
          Exit;
        end;
        with Query1 do
        begin
          if (LockType <> ltBatchOptimistic) then
          begin
            Active := false;
            LockType := ltBatchOptimistic;
            Active := true;
          end;
          Edit;
          FieldByName('KetQua').Value:=strtoint(stringGrid1.Cells[i,j]);
          FieldByName('USERID').Value:=main.UserID;
          FieldByName('USERDATE').Value:=bDate;
          UpdateSQL1.Apply(ukmodify);
          SaveChiTiet(bDate);
        end;
      end;
    end else
    begin
      if stringGrid1.Cells[i,j]<>'' then
      begin
        with Query1 do
        begin
          if (LockType <> ltBatchOptimistic) then
          begin
            Active := false;
            LockType := ltBatchOptimistic;
            Active := true;
          end;
          Insert;
          FieldByName('NgayThucHien').Value:=formatdatetime('yyyy/MM/dd',bDate);
          FieldByName('KetQua').Value:=strtoint(stringGrid1.Cells[i,j]);
          FieldByName('USERID').Value:=main.UserID;
          FieldByName('CFMID').Value:='NO';
          FieldByName('CFMID1').Value:='NO';
          FieldByName('USERDATE').Value:=bDate;
          UpdateSQL1.Apply(ukinsert);
        end;
      end else
      begin
        with QUpdate do
        begin
          active:=false;
          sql.Clear;
          sql.Add(' INSERT INTO ITPC_DongGoiDuLieu (NgayThucHien, KetQua, CFMID, CFMID1,YN)');
          sql.Add(' VALUES ('''+formatdatetime('yyyy/MM/dd',bDate)+''',0,''NO'',''NO'', ''1'')');
          execsql;
          active:=false;
        end;
      end;
      SaveChiTiet(bDate);
    end;
    Query1.Active:=false;
    Query1.LockType:=ltReadOnly;
    Query1.Active := true;
  end;
  j_list.Free;
  i_list.Free;
end;

procedure TGhiChepDongGoiDuLieu.Button4Click(Sender: TObject);
begin
  button1click(nil);
end;

procedure TGhiChepDongGoiDuLieu.Button5Click(Sender: TObject);
begin
  if Query1.Active=false then
  begin
    Showmessage('Please Query first');
    Exit;
  end;
  if Query1.FieldByName('CFMID').AsString='NO' then
  begin
    Showmessage('Chưa Confirm, không thể in ');
    Exit;
  end;
  GhiChepDongGoiDuLieu_Print1.Month:=CBX3.Text;
  GhiChepDongGoiDuLieu_Print1.Year:=CBX2.Text;
  GhiChepDongGoiDuLieu_Print:=TGhiChepDongGoiDuLieu_Print.Create(self);
  GhiChepDongGoiDuLieu_Print.QRLabel_Date.Caption:=GhiChepDongGoiDuLieu.GetVietDate(sdate);
  GhiChepDongGoiDuLieu_Print.quickrep1.prepare;
  GhiChepDongGoiDuLieu_Print.QPage1.caption:='共 '+inttostr(GhiChepDongGoiDuLieu_Print.Quickrep1.QRPrinter.pagecount)+' 頁';
  GhiChepDongGoiDuLieu_Print.quickrep1.preview;
  GhiChepDongGoiDuLieu_Print.free;
end;

procedure TGhiChepDongGoiDuLieu.Confirm1Click(Sender: TObject);
var i: integer;
begin
  if messagedlg('Confirm or not ?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    with QTemp1 do
    begin
      active:=false;
      sql.Clear;
      sql.add('select max(UserDate) as DateM from ITPC_DongGoiDuLieu ');
      sql.Add('where MONTH(NgayThucHien)='''+CBX3.text+''' and YEAR(NgayThucHien)='''+CBX2.text+'''');
      active:=true;
    end;
    with QUpdate do
    begin
      active:=false;
      sql.Clear;
      sql.Add(' Update  ITPC_DongGoiDuLieu');
      sql.Add(' Set CFMID = '''+SN41_IT_Supervisor+''',CFMDate=DATEADD(n,'+inttostr(30+random(10))+','''+formatdatetime('yyyy/MM/dd hh:nn:ss',QTemp1.FieldByName('DateM').Value)+'''),');
      sql.Add('     CFMID1 = '''+SN41_IT_Manager+''',CFMDate1=DATEADD(n,'+inttostr(50+random(10))+','''+formatdatetime('yyyy/MM/dd hh:nn:ss',QTemp1.FieldByName('DateM').Value)+''')');
      sql.Add(' where MONTH(NgayThucHien)='''+CBX3.text+''' and YEAR(NgayThucHien)='''+CBX2.text+'''');
      execsql;
      active:=false;
    end;
    Showmessage('Succeed');
  end;
  button1click(nil);
end;

procedure TGhiChepDongGoiDuLieu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TGhiChepDongGoiDuLieu.FormCreate(Sender: TObject);
var i:integer;
    myYear, myMonth, myDay : Word;
begin
  Readini();
  with QTemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate,year(getdate()) as NYear,month(getdate()) as NMonth');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    //InitCombo Year/Month
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
  QTemp.active:=false;
end;

procedure TGhiChepDongGoiDuLieu.FormDestroy(Sender: TObject);
begin
  GhiChepDongGoiDuLieu:=nil;
end;

end.
