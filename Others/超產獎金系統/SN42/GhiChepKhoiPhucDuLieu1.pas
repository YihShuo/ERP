unit GhiChepKhoiPhucDuLieu1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.Menus, Data.DB, Data.Win.ADODB, MyADOQuery,
  MyADOUpdateSQL, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,DateUtils;

type
  TGhiChepKhoiPhucDuLieu = class(TForm)
    Panel1: TPanel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB10: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGridEh1: TDBGridEh;
    TabSheet2: TTabSheet;
    DBGridEh2: TDBGridEh;
    Panel3: TPanel;
    BD6: TBitBtn;
    BD5: TBitBtn;
    BD4: TBitBtn;
    BD3: TBitBtn;
    BD2: TBitBtn;
    DS1: TDataSource;
    UpdateSQL1: TMyADOUpdateSQL;
    Query1: TMyADOQuery;
    DS2: TDataSource;
    Query2: TMyADOQuery;
    UpdateSQL2: TMyADOUpdateSQL;
    QUpdate: TMyADOQuery;
    QTemp: TMyADOQuery;
    Query1NguoiDamNhan: TWideStringField;
    Query1DonViHoTro: TWideStringField;
    Query1NgayHuongDan: TDateTimeField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1CFMID: TStringField;
    Query1CFMDate: TDateTimeField;
    Query1YN: TStringField;
    Query1KPDLNo: TStringField;
    Query1GhiChu: TWideStringField;
    Query2KPDLNo: TStringField;
    Query2TLMa: TStringField;
    Query2NoiDungVN: TWideStringField;
    Query2NoiDungTW: TStringField;
    Query2UserID: TStringField;
    Query2UserDate: TDateTimeField;
    Query2YN: TStringField;
    Query2TLTen: TWideStringField;
    PopupMenu1: TPopupMenu;
    Confirm1: TMenuItem;
    ConfirmAll1: TMenuItem;
    BitBtn1: TBitBtn;
    Query1ThoiGianBatDau: TDateTimeField;
    Query1ThoiGianKetThuc: TDateTimeField;
    Query2TrangThai: TBooleanField;
    Query1ThoiGianLapKeHoach: TWideStringField;
    Query1ThoiGianThucTe: TWideStringField;
    Query2LB: TStringField;
    Query1flowflag: TStringField;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit1: TEdit;
    Panel4: TPanel;
    Button2: TButton;
    CBX1: TComboBox;
    Button3: TButton;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Query2AfterOpen(DataSet: TDataSet);
    procedure BD2Click(Sender: TObject);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BB10Click(Sender: TObject);
    procedure Confirm1Click(Sender: TObject);
    procedure ConfirmAll1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CBX1Click(Sender: TObject);
  private
    { Private declarations }
    TLMa:String;
  public
    { Public declarations }
    function GetVietDate(myDate:TDateTime):string;
  end;

var
  GhiChepKhoiPhucDuLieu: TGhiChepKhoiPhucDuLieu;
  NDate:TDate;

implementation
  uses main1, GhiChepKhoiPhucDuLieu_Print1, GhiChepKhoiPhucDuLieuThucTe_Print1;

{$R *.dfm}
function TGhiChepKhoiPhucDuLieu.GetVietDate(myDate:TDateTime):string;
var myYear, myMonth, myDay : Word;
    myHour, myMin, mySec, myMilli : Word;
begin
  decodedatetime(myDate, myYear, myMonth, myDay ,myHour, myMin, mySec, myMilli);
  //result:='Ngày日 '+Format('%.2d',[myDay])+' tháng月 '+Format('%.2d',[myMonth])+' năm年 '+inttostr(myYear);
  result:='Năm年 '+inttostr(myYear)+' tháng月 '+Format('%.2d',[myMonth])+' ngày日 '+Format('%.2d',[myDay]);
end;

procedure TGhiChepKhoiPhucDuLieu.BB10Click(Sender: TObject);
begin

  if Query1.Active=false then
  begin
    Showmessage('Please Query first');
    Exit;
  end;
  GhiChepKhoiPhucDuLieu_Print:=TGhiChepKhoiPhucDuLieu_Print.Create(self);
  GhiChepKhoiPhucDuLieu_Print.QRCompositeReport1.prepare;
  GhiChepKhoiPhucDuLieu_Print.SumPage.Caption:='共 '+inttostr(GhiChepKhoiPhucDuLieu_Print.QuickRep1.QRPrinter.pagecount)+' 頁';
  GhiChepKhoiPhucDuLieu_Print.SumPage1.Caption:='共 '+inttostr(GhiChepKhoiPhucDuLieu_Print.QuickRep1.QRPrinter.pagecount)+' 頁';
  GhiChepKhoiPhucDuLieu_Print.QRCompositeReport1.Preview;
  GhiChepKhoiPhucDuLieu_Print.free;

end;

procedure TGhiChepKhoiPhucDuLieu.BB2Click(Sender: TObject);
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
    Query1.FieldByName('DonViHoTro').Value := 'IT';
    Query1.FieldByName('NgayHuongDan').Value := FormatDateTime('yyyy/MM/dd', Date);
    Query1.FieldByName('ThoiGianLapKeHoach').Value := '60';
    Query1.FieldByName('ThoiGianThucTe').Value := '45';;
  end;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TGhiChepKhoiPhucDuLieu.BB3Click(Sender: TObject);
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

procedure TGhiChepKhoiPhucDuLieu.BB4Click(Sender: TObject);
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

procedure TGhiChepKhoiPhucDuLieu.BB5Click(Sender: TObject);
var y,m,KPDLNo:string;
    i:integer;
begin
  with QUpdate do
  begin
    active:=false;
    sql.Clear;
    sql.Add('Select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
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
            sql.Add('select KPDLNo from ITPC_KhoiPhucDuLieu where KPDLNo like '+''''+y+m+'%'+'''');
            sql.add('order by KPDLNo');
            active:=true;

            if recordcount >0 then
            begin
              last;
              KPDLNo:=fieldbyname('KPDLNo').AsString;
              KPDLNo:=copy(KPDLNo,7,5);
              KPDLNo:=inttostr(strtoint(KPDLNo)+1);
              while length(KPDLNo)<5 do
              begin
                KPDLNo:='0'+KPDLNo;
              end;
            end else
            begin
              KPDLNo:='00001';
            end;
            KPDLNo:=y+m+KPDLNo;
            active:=false;
          end;
          Query1.edit;
          Query1.fieldbyname('KPDLNo').Value:=KPDLNo;
          if  Query1.FieldByName('NgayHuongDan').IsNull then
          Query1.FieldByName('NgayHuongDan').Value:=Date();
          //
          if Query1.FieldByName('ThoiGianBatDau').IsNull then
          Query1.FieldByName('ThoiGianBatDau').Value := FormatDateTime('yyyy/MM/dd', Query1.FieldByName('NgayHuongDan').Value)+' 15:00:00';
          if Query1.FieldByName('ThoiGianKetThuc').IsNull then
          Query1.FieldByName('ThoiGianKetThuc').Value := FormatDateTime('yyyy/MM/dd', Query1.FieldByName('NgayHuongDan').Value)+' 16:00:00';
          //
          Query1.FieldByName('userID').Value:=main.UserID;
          Query1.FieldByName('userdate').Value:=NDate;
          Query1.FieldByName('CFMID').Value:='NO';
          Query1.FieldByName('YN').Value:='1';
          UpdateSQL1.apply(ukinsert);
          //
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
                  sql.add('values (''ITPC_KhoiPhucDuLieu'','''+Query1.fieldbyname('KPDLNo').Value+'''');
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
                  Query1.FieldByName('userdate').Value:=Ndate;
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

  showmessage('Thành công');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TGhiChepKhoiPhucDuLieu.BB6Click(Sender: TObject);
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

procedure TGhiChepKhoiPhucDuLieu.BD2Click(Sender: TObject);
var i:integer;
begin
    with QUpdate do
    begin
      active:=false;
      sql.Clear;
      sql.Add('Select TLMa+''/''+TLTen as TLTen');
      sql.Add('From ITPC_DanhSachTenTuongLua');
      sql.Add('Where LB in (''05'') ');
      active:=true;
    for i:=1 to recordcount do
    begin
      CBX1.Items.Add(fieldbyname('TLTen').asstring);
      //ComboBox1.Items.Add(fieldbyname('TLMa').asstring);
      next;
    end;
    CBX1.itemindex:=0;
  end;
  TLMa:= Copy(CBX1.Text, 1, 5);
end;

procedure TGhiChepKhoiPhucDuLieu.BD3Click(Sender: TObject);
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

procedure TGhiChepKhoiPhucDuLieu.BD4Click(Sender: TObject);
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

procedure TGhiChepKhoiPhucDuLieu.BD5Click(Sender: TObject);
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
              Query2.fieldbyname('KPDLNo').Value:=Query1.fieldbyname('KPDLNo').Value;
              Query2.FieldByName('userID').Value:=main.UserID;
              Query2.FieldByName('userdate').Value:=now;
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
                   sql.add('values (''ITPC_KPDLChiTiet'','''+Query2.fieldbyname('KPDLNo').Value+'''');
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
                   Query2.FieldByName('userdate').Value:=now;
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

    Showmessage('Thành công');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TGhiChepKhoiPhucDuLieu.BD6Click(Sender: TObject);
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

procedure TGhiChepKhoiPhucDuLieu.BitBtn1Click(Sender: TObject);
var i:integer;
begin
  if Query1.Active=false then
  begin
    Showmessage('Please Query first');
    Exit;
  end;
  GhiChepKhoiPhucDuLieuThucTe_Print:=TGhiChepKhoiPhucDuLieuThucTe_Print.Create(self);
  GhiChepKhoiPhucDuLieuThucTe_Print.QRCompositeReport1.prepare;
  i :=GhiChepKhoiPhucDuLieuThucTe_Print.QuickRep1.QRPrinter.pagecount ;
  GhiChepKhoiPhucDuLieuThucTe_Print.SumPage.Caption:='共 '+inttostr(GhiChepKhoiPhucDuLieuThucTe_Print.QuickRep1.QRPrinter.pagecount)+' 頁';
  GhiChepKhoiPhucDuLieuThucTe_Print.QRCompositeReport1.Preview;
  GhiChepKhoiPhucDuLieu_Print.free;
end;

procedure TGhiChepKhoiPhucDuLieu.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select * from ITPC_KhoiPhucDuLieu');
    sql.Add('where convert(smalldatetime,convert(varchar,USERDATE,111))  between  ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date)+''' and ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date)+'''');
    if Edit1.Text<>'' then
    sql.Add('and KPDLNo like ''%'+edit1.Text+'%''');
    sql.Add('order by KPDLNo desc');
    active:=true;
  end;
  Query2.Active:=true;
end;


procedure TGhiChepKhoiPhucDuLieu.Button2Click(Sender: TObject);
var i:integer;
begin

  with Query2 do
  begin
    if (LockType <> ltBatchOptimistic) then
    begin
      Active := false;
      LockType := ltBatchOptimistic;
      Active := true;
    end;
    with QUpdate do
    begin
      active:=false;
      sql.Clear;
      sql.Add('Select TLMa,TLTen,LB,NoiDungVN,NoiDungTW');
      sql.Add('From ITPC_DanhSachTenTuongLua');
      sql.Add('Where TLMa like '+''''+TLMa+'%''');
      //memo1.Text:=sql.Text;
      active:=true;
    end;
    if QUpdate.RecordCount>0  then
    begin
      for i := 0 to QUpdate.RecordCount-1 do
      begin
        Query2.Insert;
        query2.FieldByName('TLMa').Value:= QUpdate.FieldByName('TLMa').Value;
        query2.FieldByName('TLTen').Value:= QUpdate.FieldByName('TLTen').Value;
        query2.FieldByName('NoiDungVN').Value:= QUpdate.FieldByName('NoiDungVN').Value;
        query2.FieldByName('NoiDungTW').Value:= QUpdate.FieldByName('NoiDungTW').Value;
        query2.FieldByName('TrangThai').Value:= 1;
        Query2.Post;
        QUpdate.Next;
      end;
    end;
  end;
  BD5.Enabled := true;
  BD6.Enabled := true;

end;

procedure TGhiChepKhoiPhucDuLieu.CBX1Click(Sender: TObject);
begin
  TLMa:= Copy(CBX1.Text, 1, 5);
end;

procedure TGhiChepKhoiPhucDuLieu.Confirm1Click(Sender: TObject);
begin
  if messagedlg('Confirm or not ?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    with QUpdate do
    begin
      active:=false;
      sql.Clear;
      sql.Add(' Update  ITPC_KhoiPhucDuLieu');
      sql.Add(' Set CFMID = '''+main.UserID+''',CFMDate=getdate()');
      sql.Add(' Where KPDLNo='''+Query1.FieldByName('KPDLNo').Value+'''');
      execsql;
      active:=false;
    end;
    Showmessage('Thành công');
  end;
  Button1.Click;
end;

procedure TGhiChepKhoiPhucDuLieu.ConfirmAll1Click(Sender: TObject);
var i:integer;
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
        sql.Add(' Update  ITPC_KhoiPhucDuLieu');
        sql.Add(' Set CFMID = '''+main.UserID+''',CFMDate=getdate()');
        sql.Add(' Where KPDLNo='''+Query1.FieldByName('KPDLNo').Value+'''');
        execsql;
        active:=false;
      end;
      Query1.Next;
    end;
      Showmessage('Thành công');
  end;
  Button1.Click;

end;

procedure TGhiChepKhoiPhucDuLieu.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if Query1.FieldByName('YN').Value=0 then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end
end;

procedure TGhiChepKhoiPhucDuLieu.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if Query2.FieldByName('YN').Value=0 then
  begin
    DBGridEh2.canvas.font.color:=clred;
    DBGridEh2.defaultdrawcolumncell(rect,datacol,column,state);
  end
end;

procedure TGhiChepKhoiPhucDuLieu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TGhiChepKhoiPhucDuLieu.FormCreate(Sender: TObject);
begin
  DTP1.Date := Date-7;
  DTP2.Date := Date;
end;

procedure TGhiChepKhoiPhucDuLieu.FormDestroy(Sender: TObject);
begin
  GhiChepKhoiPhucDuLieu:=nil;
end;

procedure TGhiChepKhoiPhucDuLieu.PageControl1Change(Sender: TObject);
begin
  //if PageControl1.ActivePageIndex = 1 then
  if PageControl1.ActivePage=TabSheet1 then
  begin
    panel1.Visible:=true;
    panel3.Visible:=false;
  end else
  begin
    panel1.Visible:=false;
    panel3.Visible:=true;
  end;
end;

procedure TGhiChepKhoiPhucDuLieu.Query1AfterOpen(DataSet: TDataSet);
begin
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  Query1.AfterOpenRecNo(DataSet);
end;

procedure TGhiChepKhoiPhucDuLieu.Query2AfterOpen(DataSet: TDataSet);
var i:integer;
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
