unit ExtraCon1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ComCtrls, StdCtrls, ExtCtrls, DBTables, Grids, DBGrids,
  dateUtils,math,  Menus,comobj, GridsEh, DBGridEh, IniFiles;

type
  TExtraCon = class(TForm)
    JGMas: TQuery;
    DS3: TDataSource;
    UpMas: TUpdateSQL;
    UPDet: TUpdateSQL;
    JGDet: TQuery;
    DS4: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    JGMasJGNO: TStringField;
    JGMasZSBH: TStringField;
    JGMasJGDate: TDateTimeField;
    JGMasJGLX: TStringField;
    JGMasUSERDATE: TDateTimeField;
    JGMasCFMID1: TStringField;
    JGMasCFMDate1: TDateTimeField;
    JGMasYN: TStringField;
    JGMasZSYWJC: TStringField;
    JGDetJGNO: TStringField;
    JGDetCLBH: TStringField;
    JGDetZMLB: TStringField;
    JGDetQty: TCurrencyField;
    JGDetUSPrice: TCurrencyField;
    JGDetMemo: TStringField;
    JGDetBJNO: TStringField;
    JGDetYQDate: TDateTimeField;
    JGDetCFMDate: TDateTimeField;
    JGDetUSERDATE: TDateTimeField;
    JGDetUSERID: TStringField;
    JGDetYN: TStringField;
    JGDetYWPM: TStringField;
    JGDetDWBH: TStringField;
    JGDetKCBH: TStringField;
    Edit1: TEdit;
    Label2: TLabel;
    JGMasCFMDate2: TDateTimeField;
    JGDetUSACC: TCurrencyField;
    JGDetVNPrice: TFloatField;
    JGDetVNACC: TFloatField;
    JGMasGSBH: TStringField;
    JGMasCKBH: TStringField;
    JGMasUSERID: TStringField;
    JGMasCFMID2: TStringField;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    JGDetCKBH: TStringField;
    Qtemp: TQuery;
    JGDetKCQty: TCurrencyField;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    JGS: TQuery;
    UpOrder: TUpdateSQL;
    DSOrder: TDataSource;
    JGSZLBH: TStringField;
    JGSCLSL: TCurrencyField;
    JGSQty: TCurrencyField;
    PopupMenu2: TPopupMenu;
    Modify: TMenuItem;
    Save: TMenuItem;
    Cancel: TMenuItem;
    JGSCLBH: TStringField;
    JGSUSERDATE: TDateTimeField;
    JGSUSERID: TStringField;
    JGSJGNO: TStringField;
    Auto: TMenuItem;
    JGSTempQty: TFloatField;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    Label3: TLabel;
    Button4: TButton;
    JGMasCFMID3: TStringField;
    JGMasCFMDate3: TDateTimeField;
    Button5: TButton;
    CheckBox1: TCheckBox;
    Button6: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure ModifyClick(Sender: TObject);
    procedure CancelClick(Sender: TObject);
    procedure SaveClick(Sender: TObject);
    procedure AutoClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    sYear,sMonth:String;
    sSTDT,sEDDT:String;
    IsAllowUserID:Boolean;
    procedure ReadIni();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExtraCon: TExtraCon;
  NDate,sdate,edate:Tdate;

implementation

uses MaterialArea1, FunUnit, main1;

{$R *.dfm}
procedure TExtraCon.ReadIni();
var MyIni :Tinifile;
    AppDir,UserIDList:string;
    tmpUserIDList:TStringlist;
    index:integer;
begin

  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      UserIDList:=MyIni.ReadString('ERP','Extra_N21_CheckUserID','');
    finally
      MyIni.Free;
    end;
  end;
  if  UserIDList <> '' then
  begin
    tmpUserIDList:=FuncObj.SplitString(UserIDList,',');
    index:=tmpUserIDList.IndexOf(main.Edit1.Text);
    if index>=0 then IsAllowUserID:=true;
    tmpUserIDList.Free;
  end else
  begin
    IsAllowUserID:=false;
  end;
end;

procedure TExtraCon.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;
//
procedure TExtraCon.Button1Click(Sender: TObject);
var
  ff:textfile;
begin
  with JGMas do
  begin
    Active:=false;
    sql.Clear;
    sql.add('select JGZL.*,ZSZL.ZSYWJC ');
    sql.add('from JGZL');
    sql.add('left join ZSZL on ZSZL.ZSDH=JGZL.ZSBH ');
    sql.add('where ISNULL(flowflag,'''')<>''X'' and JGZl.CFMID1='+''''+'NO'+'''');
    sql.add('and convert(smalldatetime,convert(varchar,JGZL.USERDATE,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +'''');
    sql.add(' and  ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    sql.add('and JGZL.GSBH='+''''+main.Edit2.Text+'''');
    sql.add('and JGZL.JGNO like '+''''+edit1.Text+'%'+'''');
    sql.add('order by JGZL.JGNO  ');
    active:=true;
  end;

  JGDet.Active:=true;
  JGS.Active:=true;
end;

procedure TExtraCon.Button3Click(Sender: TObject);
begin
  JGDet.Active:=false;
  JGDet.Active:=true;
  JGMas.Active:=false;
  JGMas.Active:=true;             
end;

procedure TExtraCon.FormCreate(Sender: TObject);
var y,m,d:word;
    ayear,amonth:string;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    Ndate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  //
  DTP1.Date:=Ndate-3;
  DTP2.Date:=Ndate;
  IsAllowUserID:=false;
  ReadIni();
  //if main.edit1.text = '00186' then
  if IsAllowUserID=true then
  begin
    Button4.Enabled := true;
    Button5.Enabled := true;
    Button6.Enabled := true;
    CheckBox1.Enabled := true;
    Button1.Enabled := false;
    Button2.Enabled := false;
    Button3.Enabled := false;
  end;
end;
procedure TExtraCon.Button2Click(Sender: TObject);
var y1,m1,d1,y2,m2,d2:word;
    i:integer;
    LLQty,RemQty,UseQty:double;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select LLNO from KCLL where JGNO = '''+JGMas.fieldbyname('JGNO').Value+''' and SCBH=''JJJJJJJJJJ'' and CFMID <>''NO'' and CFMID<>''SYSTEM'' and ISNULL(flowflag,'''')<>''X'' ');
    sql.Add('group by LLNO');
    active:=true;
  end;
  if Qtemp.RecordCount=0  then
  begin
    showmessage('chua xuat vat tu con.');
    Abort;
  end;


  decodedate(JGMas.fieldbyname('JGDATE').value,y1,m1,d1);
  decodedate(date,y2,m2,d2);
  if  daysbetween(Ndate,JGMas.fieldbyname('JGDATE').Value)>240  then
  begin
    showmessage('Pls contect with data maintainer.');
    abort;
  end;

  JGDet.first; //檢查材料庫位是否輸入，沒有則要先輸入庫位
  while not JGDet.eof do
  begin
    if JGDet.fieldbyname('KCBH').IsNull then
    begin
       MaterialArea:=TMaterialArea.create(self);
       MaterialArea.Edit1.Text:=JGDet.fieldbyname('CLBH').AsString;
       MaterialArea.CBX1.Text:=JGMas.fieldbyname('CKBH').AsString;
       MaterialArea.button1click(nil);
       MaterialArea.show;
       JGDet.Active:=false;
       JGMas.Active:=false;
       abort;
    end;
    if JGDet.fieldbyname('Qty').isnull then
    begin
      showmessage('Qty can not be empty.');
      abort;
    end;
    //
    if  JGS.RecordCount>0 then
    begin
       if (JGDet.FieldByName('Qty').Value<> DBGrideh1.getfootervalue(0,dbgrideh1.columns[2])) then
       begin
        showmessage('Qty not the same!');
        abort;
       end;
    end;
    JGDet.next;
  end;
  try  //更新真正庫存
    with JGDet do
    begin
      first;
      while not eof do
      begin
          Qtemp.Active:=false;
          Qtemp.SQL.Clear;
          Qtemp.SQL.add('update KCZLS ');
          Qtemp.SQL.add('set KCQty=KCQty+'+floattostr(roundto(fieldbyname('Qty').value,-1)));
          Qtemp.SQL.add('where CKBH='+''''+JGMas.fieldbyname('CKBH').Value+'''');
          Qtemp.SQL.add('      and CLBH='+''''+JGDet.fieldbyname('CLBH').Value+'''');
          Qtemp.execsql;
          if updatestatus=usmodified then
          begin
              UPdet.apply(ukmodify);
          end;
          next;
      end;
    end;
    with JGMas do
    begin
      edit;
      fieldbyname('CFMID1').Value:=main.edit1.text;
      fieldbyname('CFMDATE1').Value:=Ndate;
      fieldbyname('CFMID2').Value:='NO';
      UPMas.Apply(ukmodify);
      active:=false;
      active:=true;
    end;
    showmessage('Succeed.');
  except
    showmessage('Have wrong.');
  end;
end;

procedure TExtraCon.FormDestroy(Sender: TObject);
begin
  ExtraCon:=nil;
end;

procedure TExtraCon.Excel1Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin
  if  JGMas.active  then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        JGDet.active:=false;
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   JGMas.fieldcount-1   do
        begin
          eclApp.Cells(1,i+1):=JGMas.fields[i].FieldName;
        end;
        JGMas.First;
        j:=2;
        while   not   JGMas.Eof   do
        begin
          for   i:=0   to  JGMas.fieldcount-1  do
          begin
           eclApp.Cells(j,i+1):=JGMas.Fields[i].Value;
          end;
          JGMas.Next;
          inc(j);
        end;
        eclapp.columns.autofit;
        eclApp.Visible:=True;
        showmessage('Succeed');
        JGDet.active:=true;
      except
      on   F:Exception   do
          showmessage(F.Message);
      end;
  end;
end;

procedure TExtraCon.ModifyClick(Sender: TObject);
begin
  if JGS.Active then
  begin
    JGS.RequestLive:=true;
    JGS.CachedUpdates:=true;
    JGS.Edit;
    Auto.Enabled:=true;
    Save.enabled:=true;
    Cancel.enabled:=true;
    DBGridEh1.Columns[2].ReadOnly:=false;
  end;
end;

procedure TExtraCon.CancelClick(Sender: TObject);
begin
  if JGS.CachedUpdates then
  begin
    JGS.Active:=false;
    JGS.CachedUpdates:=false;
    JGS.RequestLive:=false;
    JGS.Active:=true;
  end;
  Auto.Enabled:=false;
  Save.enabled:=false;
  Cancel.enabled:=false;
end;

procedure TExtraCon.SaveClick(Sender: TObject);
var i: integer;
begin
  //
  if JGS.Active=true then
  begin
    if MessageDlg('Save ? ',mtCustom, [mbYes,mbCancel], 0)=mrYes then
    begin
      JGS.First;
      for i:=0 to JGS.RecordCount-1 do
      begin
        case JGS.updatestatus of
          usmodified:
          begin
           JGs.edit;
           JGs.FieldByName('userID').Value:=main.edit1.text;
           JGs.FieldByName('userdate').Value:=now;
           UpOrder.apply(ukmodify);
          end;
      end;
      JGS.Next;
    end;
    Showmessage('Success');
  end;
  end;
  auto.Enabled:=false;
  Save.Enabled:=false;
  Cancel.Enabled:=false;
end;

procedure TExtraCon.AutoClick(Sender: TObject);
var i,j:integer;
    Qty_Au:double;
begin
    Qty_Au:=JGDet.FieldByName('Qty').Value;
    JGS.First;
    for i:=0 to JGS.RecordCount-1 do
    begin
      if (JGS.FieldByName('CLSL').Value>=Qty_Au) then
      begin
        JGS.Edit;
        JGS.FieldByName('TempQty').Value:=Qty_Au;
        //JGS.FieldByName('Qty').Value:= JGS.FieldByName('TempQty').Value;
        JGS.Post;
        Qty_Au:=0;
      end else
      begin
        JGS.Edit;
        JGS.FieldByName('TempQty').Value:=JGS.FieldByName('CLSL').Value;
        Qty_Au:=Qty_Au- JGS.FieldByName('TempQty').Value;
        //JGS.FieldByName('Qty').Value:= JGS.FieldByName('TempQty').Value;
        JGS.Post;
      end;
     if Qty_Au<=0 then break;
     JGS.Next;
    end;
    JGS.First;
    for j:=0 to JGS.RecordCount-1 do
    begin
      JGS.Edit;
      JGS.FieldByName('Qty').Value:= JGS.FieldByName('TempQty').Value;
      JGS.Post;
      JGS.Next;
    end;
 end;

procedure TExtraCon.Button4Click(Sender: TObject);
begin
  if JGMas.FieldByName('CFMID3').Value = 'NO' then begin
    With Qtemp do begin
      Active := false;
      SQL.Clear;
      SQL.Add('Update JGZL set CFMID3 = '''+main.edit1.text+''',CFMDate3 = '''+formatdatetime('YYYY/MM/DD',JGMas.FieldByName('CFMDate1').Value)+'''');
      SQL.Add('Where JGNO = '''+JGMas.FieldByName('JGNO').AsString+'''');
      ExecSQL;
    end;
    Button5.Click;
  end;
end;

procedure TExtraCon.Button5Click(Sender: TObject);
var
  ff:textfile;
begin
  with JGMas do
  begin
    Active:=false;
    sql.Clear;
    //sql.add('select JGZL.*,ZSZL.ZSYWJC ');
    sql.Add('select JGZL.JGNO,JGZL.ZSBH,ZSZL.ZSYWJC,JGZL.JGDate,JGZL.JGLX,JGZL.GSBH,JGZL.CKBH,JGZL.UserID,JGZL.UserDate ');
    sql.Add('       ,JGZL.CFMID1,JGZL.CFMDate1,JGZL.CFMID2,JGZL.CFMDate2,isnull(JGZL.CFMID3,''NO'') as CFMID3,JGZL.CFMDate3,JGZL.YN ');
    sql.add('from JGZL');
    sql.add('left join ZSZL on ZSZL.ZSDH=JGZL.ZSBH ');
    if CheckBox1.Checked = false then
      sql.add('where isnull(JGZl.CFMID3,''NO'') = ''NO'' and JGZL.CFMID1 <> ''NO'' ')
    else
      sql.add('where (isnull(JGZL.CFMID3,''NO'') <> ''NO'') ');
    sql.add('and convert(smalldatetime,convert(varchar,JGZL.USERDATE,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +'''');
    sql.add(' and  ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    sql.add('and JGZL.GSBH='+''''+main.Edit2.Text+'''');
    sql.add('and JGZL.JGNO like '+''''+edit1.Text+'%'+'''');
    sql.add('order by JGZL.JGNO  ');
    active:=true;
  end;

  JGDet.Active:=true;
  JGS.Active:=true;
end;

procedure TExtraCon.Button6Click(Sender: TObject);
var i:integer;
begin
  if messagedlg('Confirm All or not ?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    JGMas.First;
    for i:=0 to JGMas.RecordCount-1 do
    begin
      if JGMas.FieldByName('CFMID3').Value = 'NO' then
      begin
        With Qtemp do
        begin
          Active := false;
          SQL.Clear;
          SQL.Add('Update JGZL set CFMID3 = '''+main.edit1.text+''',CFMDate3 = '''+formatdatetime('YYYY/MM/DD',JGMas.FieldByName('CFMDate1').Value)+'''');
          SQL.Add('Where JGNO = '''+JGMas.FieldByName('JGNO').AsString+'''');
          ExecSQL;
        end;
       end;
       JGMas.Next;
    end;
    Button5.Click;
  end;
end;

end.



