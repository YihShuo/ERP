unit GhiChepKiemTraTuongLua1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Data.Win.ADODB, MyADOQuery,
  MyADOUpdateSQL, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Menus,DateUtils, ComObj, IniFiles;

type
  TGhiChepKiemTraTuongLua = class(TForm)
    Panel1: TPanel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    Button1: TButton;
    DTP1: TDateTimePicker;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGridEh1: TDBGridEh;
    TabSheet2: TTabSheet;
    DBGridEh2: TDBGridEh;
    DS1: TDataSource;
    UpdateSQL1: TMyADOUpdateSQL;
    Query1: TMyADOQuery;
    DS2: TDataSource;
    Query2: TMyADOQuery;
    UpdateSQL2: TMyADOUpdateSQL;
    QUpdate: TMyADOQuery;
    Label2: TLabel;
    DTP2: TDateTimePicker;
    Query1TLuaNo: TStringField;
    Query1TLDate: TDateTimeField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1CFMID: TStringField;
    Query1CFMDate: TDateTimeField;
    Query1YN: TStringField;
    Label3: TLabel;
    Edit1: TEdit;
    QTemp: TMyADOQuery;
    Panel3: TPanel;
    BD6: TBitBtn;
    BD5: TBitBtn;
    BD4: TBitBtn;
    BD3: TBitBtn;
    BD2: TBitBtn;
    Query2TLuaNo: TStringField;
    Query2TLMa: TStringField;
    Query2TTBinhThuong: TBooleanField;
    Query2TTKhongBinhThuong: TBooleanField;
    Query2UserID: TStringField;
    Query2UserDate: TDateTimeField;
    Query2YN: TStringField;
    Query2TLTen: TWideStringField;
    PopupMenu1: TPopupMenu;
    Confirm1: TMenuItem;
    ConfirmAll1: TMenuItem;
    BB10: TBitBtn;
    Query1Memo: TWideStringField;
    N1: TMenuItem;
    AddDateN: TMenuItem;
    Query2LB: TStringField;
    BB11: TBitBtn;
    Query1CFMID1: TStringField;
    Query1CFMDate1: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure PageControl1Change(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure Query2AfterOpen(DataSet: TDataSet);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Confirm1Click(Sender: TObject);
    procedure ConfirmAll1Click(Sender: TObject);
    procedure BB10Click(Sender: TObject);
    procedure AddDateNClick(Sender: TObject);
    procedure BB11Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
  private
    SN41_IT_Supervisor,SN41_IT_Manager:String;
    { Private declarations }
    procedure readini();
  public
    { Public declarations }
    function GetVietDate(myDate:TDateTime):string;
    function GetVietDate1(myDate:TDateTime):string;
    function GetTaiwnDateTime(myDate:TDateTime):string;
  end;

var
  GhiChepKiemTraTuongLua: TGhiChepKiemTraTuongLua;
  NDate:TDate;

implementation
  uses main1, GhiChepKiemTraTuongLua_Print1;

{$R *.dfm}
function TGhiChepKiemTraTuongLua.GetVietDate(myDate:TDateTime):string;
var myYear, myMonth, myDay : Word;
    myHour, myMin, mySec, myMilli : Word;
begin
  decodedatetime(myDate, myYear, myMonth, myDay ,myHour, myMin, mySec, myMilli);
  result:='Ngày日 '+Format('%.2d',[myDay])+' tháng月 '+Format('%.2d',[myMonth])+' năm年 '+inttostr(myYear);
end;

function TGhiChepKiemTraTuongLua.GetVietDate1(myDate:TDateTime):string;
var myYear, myMonth, myDay : Word;
    myHour, myMin, mySec, myMilli : Word;
begin
  decodedatetime(myDate, myYear, myMonth, myDay ,myHour, myMin, mySec, myMilli);
  result:=Format('%.2d',[myDay])+'/'+Format('%.2d',[myMonth])+'/'+inttostr(myYear)+' '+Format('%.2d',[myHour])+':'+Format('%.2d',[myMin])+':'+Format('%.2d',[mySec]);
end;

function TGhiChepKiemTraTuongLua.GetTaiwnDateTime(myDate:TDateTime):string;
var myYear, myMonth, myDay : Word;
    myHour, myMin, mySec, myMilli : Word;
begin
  decodedatetime(myDate, myYear, myMonth, myDay ,myHour, myMin, mySec, myMilli);
  result:=inttostr(myYear)+'/'+Format('%.2d',[myMonth])+'/'+Format('%.2d',[myDay])+' '+Format('%.2d',[myHour])+':'+Format('%.2d',[myMin])+':'+Format('%.2d',[mySec]);
end;
//
procedure TGhiChepKiemTraTuongLua.readini();
var MyIni :TInifile;
    AppDir:String;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      SN41_IT_Supervisor:=MyIni.ReadString('ProductionBonus','SN41_IT_Supervisor','51308');
      SN41_IT_Manager:=MyIni.ReadString('ProductionBonus','SN41_IT_Manager','51295');
      //
    finally
      MyIni.Free;
    end;
  end;
end;
//
procedure TGhiChepKiemTraTuongLua.AddDateNClick(Sender: TObject);
var i:integer;
    TLDate:TDate;
begin
  //
  TLDate:=Date();
  with QUpdate do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select top 1 TLDate from ITPC_GhiChepTuongLua order by TLDate desc ');
    Active:=true;
    if RecordCount>0  then
    TLDate:=FieldByName('TLDate').Value;
    Active:=false;
  end;
  //
  with Query1 do
  begin
    if (LockType <> ltBatchOptimistic) then
    begin
      Active := false;
      LockType := ltBatchOptimistic;
      Active := true;
    end;
    //
    for i:=1 to 30 do
    begin
      if (TLDate+i)>Date() then
      begin
        break;
      end else
      begin
        if DayOfWeek(TLDate+i)<>1 then
        begin
          Insert;
          Query1.FieldByName('TLDate').Value := FormatDateTime('yyyy/MM/dd', TLDate+i);
          Post;
        end;
      end;
    end;
    //
  end;
  BB5.Enabled := true;
  BB6.Enabled := true;
  //
end;

procedure TGhiChepKiemTraTuongLua.BB10Click(Sender: TObject);
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
  GhiChepKiemTraTuongLua_Print:=TGhiChepKiemTraTuongLua_Print.Create(self);
  GhiChepKiemTraTuongLua_Print.InitData(1);
  GhiChepKiemTraTuongLua_Print.quickrep1.prepare;
  GhiChepKiemTraTuongLua_Print.QPage1.caption:='共 '+inttostr(GhiChepKiemTraTuongLua_Print.Quickrep1.QRPrinter.pagecount)+' 頁';
  GhiChepKiemTraTuongLua_Print.quickrep1.preview;
  GhiChepKiemTraTuongLua_Print.free;
end;

procedure TGhiChepKiemTraTuongLua.BB11Click(Sender: TObject);
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
  GhiChepKiemTraTuongLua_Print:=TGhiChepKiemTraTuongLua_Print.Create(self);
  GhiChepKiemTraTuongLua_Print.InitData(2);
  GhiChepKiemTraTuongLua_Print.quickrep1.prepare;
  GhiChepKiemTraTuongLua_Print.QPage1.caption:='共 '+inttostr(GhiChepKiemTraTuongLua_Print.Quickrep1.QRPrinter.pagecount)+' 頁';
  GhiChepKiemTraTuongLua_Print.quickrep1.preview;
  GhiChepKiemTraTuongLua_Print.free;
end;

procedure TGhiChepKiemTraTuongLua.BB2Click(Sender: TObject);
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
    Query1.FieldByName('TLDate').Value := FormatDateTime('yyyy/MM/dd', Date);
  end;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TGhiChepKiemTraTuongLua.BB3Click(Sender: TObject);
begin
  with Query1 do
  begin
    if (LockType <> ltBatchOptimistic) then
    begin
      Active := false;
      LockType := ltBatchOptimistic;
      Active := true;
    end;
    Edit;
  end;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TGhiChepKiemTraTuongLua.BB4Click(Sender: TObject);
begin
  if Query2.RecordCount=0 then
  begin
    with Query1 do
    begin
      Active := false;
      LockType := ltBatchOptimistic;
      Active := true;
      Edit;
      FieldByName('YN').Value := '0';
    end;
  end else
  begin
     showmessage('Vui lòng xóa dữ liệu chi tiết trước');
     abort;
  end;
   BB5.Enabled := true;
   BB6.Enabled := true;
end;

procedure TGhiChepKiemTraTuongLua.BB5Click(Sender: TObject);
var y,m,TLuaNo:string;
    i:integer;
begin
  with QUpdate do
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
    Query1.first;
    for i:=0 to Query1.RecordCount-1 do
    begin
      case Query1.UpdateStatus of
        usinserted:
        begin
          with QUpdate do
          begin
            active:=false;
            sql.Clear;
            sql.Add('select TLuaNo from ITPC_GhiChepTuongLua where TLuaNo like '+''''+y+m+'%'+'''');
            sql.add('order by TLuaNo');
            active:=true;

            if recordcount >0 then
            begin
              last;
              TLuaNo:=fieldbyname('TLuaNo').AsString;
              TLuaNo:=copy(TLuaNo,7,5);
              TLuaNo:=inttostr(strtoint(TLuaNo)+1);
              while length(TLuaNo)<5 do
              begin
                TLuaNo:='0'+TLuaNo;
              end;
            end else
            begin
              TLuaNo:='00001';
            end;
            TLuaNo:=y+m+TLuaNo;
            active:=false;
          end;

          Query1.edit;
          Query1.fieldbyname('TLuaNo').Value:=TLuaNo;
          if  Query1.FieldByName('TLDate').IsNull then
          Query1.FieldByName('TLDate').Value:=Date();
          Query1.FieldByName('userID').Value:=main.UserID;
          Query1.FieldByName('userdate').Value:=FormatDatetime('YYYY/MM/DD',Query1.FieldByName('TLDate').Value)+' 07:'+inttostr(30+random(15))+':00';
          Query1.FieldByName('CFMID').Value:='NO';
          Query1.FieldByName('CFMID1').Value:='NO';
          Query1.FieldByName('YN').Value:='1';
          UpdateSQL1.apply(ukinsert);
          //直接新增
          BD2.Click;
          BD5.Click;
        end;
        usmodified:
        begin
          if (Query1.FieldByName('CFMID').value='NO')   then
          begin
            if Query1.FieldByName('USERID').value=main.UserID then
            begin
              if Query1.fieldbyname('YN').value='0' then
              begin
                with QTemp do
                begin
                  active:=false;
                  sql.Clear;
                  sql.add('insert into BDelRec ');
                  sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                  sql.add('values (''ITPC_GhiChepTuongLua'','''+Query1.fieldbyname('TLuaNo').Value+'''');
                  sql.add(','' '','''+Query1.fieldbyname('USERID').Value+''',');
                  sql.add(''''+main.UserID+''''+',getdate())');
                  execsql;
                  active:=false;
                end;
                UpdateSQL1.apply(ukdelete);
              end else
              begin
                if (NDate-Query1.FieldByName('USERDATE').value)<=30  then
                begin
                  Query1.edit;
                  Query1.FieldByName('userID').Value:=main.UserID;
                  //Query1.FieldByName('userdate').Value:=Ndate;
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
          end else
          begin
            showmessage('Already confirm. Can not modify.');
          end;
        end;
      end;
      Query1.next;
    end;
  Query1.Active:=false;
  Query1.LockType:=ltReadOnly;
  Query1.Active:=true;
  //SGDet.Active:=true;
  BB5.enabled:=false;
  BB6.enabled:=false;

  Showmessage('Thành công');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TGhiChepKiemTraTuongLua.BB6Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    LockType := ltReadOnly;
    Active := true;
  end;
  BB5.Enabled := false;
  BB6.Enabled := false;
end;

procedure TGhiChepKiemTraTuongLua.BB7Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  Query1.active  then
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
        for   i:=0   to   Query1.fieldcount-1   do
        begin
          eclApp.Cells(1,i+1):=Query1.fields[i].FieldName;
        end;
        Query1.First;
        j:=2;
        while   not   Query1.Eof   do
        begin
          for   i:=0   to  Query1.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=Query1.Fields[i].AsString;
          end;
          Query1.Next;
          inc(j);
        end;
        eclapp.columns.autofit;
        showmessage('Succeed');
        eclApp.Visible:=True;
      except
        on  F:Exception   do
          showmessage(F.Message);
      end;
   end;
end;

procedure TGhiChepKiemTraTuongLua.BD2Click(Sender: TObject);
var i:integer;
    IsWeekly:boolean;
    IsMonthly:boolean;
    IsSeason:boolean;
    IsYear:boolean;
begin
  Randomize();
  //每週
  if DayOfTheWeek(Date)=2  then IsWeekly:=true else IsWeekly:=false;
  //每月月底
  if Date=EndOfTheMonth(Date)  then IsMonthly:=true else IsMonthly:=false;
  //每季 1號
  if ((MonthOf(Date)=1) or (MonthOf(Date)=4) or (MonthOf(Date)=7)  or (MonthOf(Date)=10) ) and (Date=StartOfTheMonth(Date))
  then IsSeason:=true else IsSeason:=false;
  //每年
  if ( (MonthOf(Date)=12) and (Date=EndOfTheMonth(Date)) ) then IsYear:=true else  IsYear:=false;
  //
  //IsYear:=true;
  //IsSeason:=true;
  //IsWeekly:=true;
  //IsYear:=true;
  //
  with Query2 do
  begin
    if (LockType <> ltBatchOptimistic) then
    begin
      Active := false;
      LockType := ltBatchOptimistic;
      Active := true;
    end;
    //Insert;
     //Query1.FieldByName('TLDate').Value := FormatDateTime('yyyy/MM/dd', Date);
    with QUpdate do
    begin
      active:=false;
      sql.Clear;
      sql.Add('Select TLMa,TLTen');
      sql.Add('From ITPC_DanhSachTenTuongLua');
      sql.Add('Where (LB in (''01'',''04'') and YN=''1'') ');
      if IsWeekly=true then
      sql.Add(' or (LB in (''01'',''04'') and YN=''2'')  ');
      if IsMonthly=true then
      sql.Add(' or (LB in (''01'',''04'') and YN=''3'')  ');
      if IsSeason=true then
      sql.Add(' or (LB in (''01'',''04'') and YN=''4'')  ');
      if IsYear=true then
      sql.Add(' or (LB in (''01'',''04'') and YN=''5'')  ');
      active:=true;
    end;
    if QUpdate.RecordCount>0  then
    begin
      for i := 0 to QUpdate.RecordCount-1 do
      begin
        Query2.Insert;
        query2.FieldByName('TLMa').Value:= QUpdate.FieldByName('TLMa').Value;
        query2.FieldByName('TLTen').Value:= QUpdate.FieldByName('TLTen').Value;
        query2.FieldByName('TTBinhThuong').Value:= 1;
        query2.FieldByName('TTKhongBinhThuong').Value:= 0;
        //機房溫度和濕度
        if QUpdate.FieldByName('TLMa').AsString='TL12' then
        begin
          query2.FieldByName('TLTen').Value:= QUpdate.FieldByName('TLTen').Value+' 溫度nhiệt độ='+inttostr(20+random(3)) + '濕度độ ẩm='+inttostr(50+random(10));//+' 濕度độ ẩm='+inttostr(50+random(10))
        end;
        if ((QUpdate.FieldByName('TLMa').AsString='TL29') or (QUpdate.FieldByName('TLMa').AsString='TL30')) then
        begin
          query2.FieldByName('TLTen').Value:=FormatDateTime('YYYY/MM',Date())+'月 '+QUpdate.FieldByName('TLTen').Value;
        end;

        Query2.Post;
        QUpdate.Next;
      end;
    end;
  end;
  BD5.Enabled := true;
  BD6.Enabled := true;
end;

procedure TGhiChepKiemTraTuongLua.BD3Click(Sender: TObject);
begin
  with Query2 do
  begin
    if (LockType <> ltBatchOptimistic) then
    begin
      Active := false;
      LockType := ltBatchOptimistic;
      Active := true;
    end;
    Edit;
  end;
  BD5.Enabled := true;
  BD6.Enabled := true;
end;

procedure TGhiChepKiemTraTuongLua.BD4Click(Sender: TObject);
begin
  with Query2 do
  begin
    if (LockType <> ltBatchOptimistic) then
    begin
      Active := false;
      LockType := ltBatchOptimistic;
      Active := true;
    end;
    Edit;
    FieldByName('YN').Value := '0';
  end;
  BD5.Enabled := true;
  BD6.Enabled := true;
end;

procedure TGhiChepKiemTraTuongLua.BD5Click(Sender: TObject);
var i:integer;
begin
  if (Query1.FieldByName('CFMID').value<>'NO')   then
  begin
    showmessage('Already confirm. Can not modify.');
  end;

  try
    Query2.first;
    for i:=1 to Query2.RecordCount do
    begin
      case Query2.updatestatus of
        usinserted:
        begin
          if Query1.FieldByName('USERID').value<>main.UserID then
          begin
            showmessage('Không phải bạn không thể sửa');
          end else
          begin
              Query2.edit;
              Query2.fieldbyname('TLuaNo').Value:=Query1.fieldbyname('TLuaNo').Value;
              Query2.FieldByName('userID').Value:=main.UserID;
              Query2.FieldByName('userdate').Value:=Query1.FieldByName('userdate').Value;
              Query2.FieldByName('YN').Value:='1';
              UpdateSQL2.apply(ukinsert);

          end;
        end;
        usmodified:
        begin
           if Query2.FieldByName('USERID').value<>main.UserID then
           begin
             showmessage('Không phải bạn không thể sửa');
           end else
           begin
              if Query2.fieldbyname('YN').value='0'then
              begin
                 with Qtemp do
                 begin
                   active:=false;
                   sql.Clear;
                   sql.add('insert into BDelRec ');
                   sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                   sql.add('values (''ITPC_TuongLuaChiTiet'','''+Query2.fieldbyname('TLuaNo').Value+'''');
                   sql.add(','' '','''+Query2.fieldbyname('USERID').Value+''',');
                   sql.add(''''+main.UserID+''''+',getdate())');
                   execsql;
                   active:=false;
                 end;
                 UpdateSQL2.apply(ukdelete);
              end else
              begin
                 if (NDate-Query1.FieldByName('USERDATE').value)<=30  then
                 begin
                   Query2.edit;
                   Query2.FieldByName('userID').Value:=main.UserID;
                   //Query2.FieldByName('userdate').Value:=now;
                   Query2.FieldByName('YN').Value:='1';
                   UpdateSQL2.apply(ukmodify);
                 end else
                 begin
                   showmessage('Date>5, can not modify.');
                 end;
              end;
           end;
         end;
      end;
      Query2.next;
    end;
    Query2.Active:=false;
    Query2.LockType:=ltReadOnly;
    Query2.Active:=true;
    //SGDet.Active:=true;
    BD5.enabled:=false;
    BD6.enabled:=false;

    //Showmessage('Thành công');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TGhiChepKiemTraTuongLua.BD6Click(Sender: TObject);
begin
  with Query2 do
  begin
    Active := false;
    LockType := ltReadOnly;
    Active := true;
  end;
  BD5.Enabled := false;
  BD6.Enabled := false;
end;

procedure TGhiChepKiemTraTuongLua.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('Select * from ITPC_GhiChepTuongLua');
    sql.Add('where convert(smalldatetime,convert(varchar,USERDATE,111))  between  ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date)+''' and ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date)+'''');
    if Edit1.Text<>'' then
    sql.Add('and TLuaNo like ''%'+edit1.Text+'%''');
    sql.Add('order by TLuaNo desc');
    active:=true;
  end;
  Query2.Active:=true;
end;

procedure TGhiChepKiemTraTuongLua.Confirm1Click(Sender: TObject);
begin
  if messagedlg('Confirm or not ?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    randomize();
    with QUpdate do
    begin
      active:=false;
      sql.Clear;
      sql.Add(' Update  ITPC_GhiChepTuongLua');
      sql.Add(' Set CFMID = '''+SN41_IT_Supervisor+''',CFMDate=DATEADD(n,'+inttostr(15+random(10))+',UserDate),');
      sql.Add('     CFMID1 = '''+SN41_IT_Manager+''',CFMDate1=DATEADD(n,'+inttostr(30+random(15))+',UserDate)');
      sql.Add(' Where TLuaNo='''+Query1.FieldByName('TLuaNo').Value+'''');
      execsql;
      active:=false;
    end;
    Showmessage('Thành công');
  end;
  Button1.Click;
end;

procedure TGhiChepKiemTraTuongLua.ConfirmAll1Click(Sender: TObject);
var i: integer;
begin
  if messagedlg('Confirm or not ?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    Query1.First;
    for i := 0 to Query1.RecordCount-1 do
    begin
      with QUpdate do
      begin
        active:=false;
        sql.Clear;
        sql.Add(' Update  ITPC_GhiChepTuongLua');
        sql.Add(' Set CFMID = '''+SN41_IT_Supervisor+''',CFMDate=DATEADD(n,15,UserDate),');
        sql.Add('     CFMID1 = '''+SN41_IT_Manager+''',CFMDate1=DATEADD(n,30,UserDate)');
        sql.Add(' Where TLuaNo='''+Query1.FieldByName('TLuaNo').Value+'''');
        execsql;
        active:=false;
      end;
      Query1.Next;
    end;
      Showmessage('Thành công');
  end;
  Button1.Click;
end;

procedure TGhiChepKiemTraTuongLua.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if Query1.FieldByName('YN').Value=0 then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end
end;

procedure TGhiChepKiemTraTuongLua.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if Query2.FieldByName('YN').Value=0 then
  begin
    DBGridEh2.canvas.font.color:=clred;
    DBGridEh2.defaultdrawcolumncell(rect,datacol,column,state);
  end
end;

procedure TGhiChepKiemTraTuongLua.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TGhiChepKiemTraTuongLua.FormCreate(Sender: TObject);
begin
  Readini();
  DTP1.Date := Date-7;
  DTP2.Date := Date;
end;

procedure TGhiChepKiemTraTuongLua.FormDestroy(Sender: TObject);
begin
  GhiChepKiemTraTuongLua:=nil;
end;

procedure TGhiChepKiemTraTuongLua.PageControl1Change(Sender: TObject);
begin
  if PageControl1.ActivePageIndex = 1 then
  begin
    panel1.Visible:=false;
    Panel2.Visible:=false;
    panel3.Visible:=true;
  end else
  begin
    panel1.Visible:=true;
    Panel2.Visible:=true;
    panel3.Visible:=false;
    Panel2.top :=119;
  end;

end;

procedure TGhiChepKiemTraTuongLua.Query1AfterOpen(DataSet: TDataSet);
begin
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  Query1.AfterOpenRecNo(DataSet);
end;

procedure TGhiChepKiemTraTuongLua.Query2AfterOpen(DataSet: TDataSet);
begin
  Query2.AfterOpenRecNo(DataSet);
  BD2.Enabled:=true;
  BD3.Enabled:=true;
  BD4.Enabled:=true;

  if ((Date()-Query1.FieldByName('USERDATE').value)>30) then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  if Query1.FieldByName('CFMID').value<>'NO'  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  if Query1.FieldByName('USERID').value<>main.UserID then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;

end;

end.
