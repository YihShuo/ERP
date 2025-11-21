unit Orderpack_Label1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls,IniFiles;

type
  TOrderpack_Label = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    DBGridEh1: TDBGridEh;
    ZLZLS2: TQuery;
    UpZLZLS2: TUpdateSQL;
    DS1: TDataSource;
    ZLZLS2ZLBH: TStringField;
    ZLZLS2xh: TStringField;
    ZLZLS2BWBH: TStringField;
    ZLZLS2CSBH: TStringField;
    ZLZLS2MJBH: TStringField;
    ZLZLS2CLBH: TStringField;
    ZLZLS2SIZE: TStringField;
    ZLZLS2CLSL: TFloatField;
    ZLZLS2USAGE: TFloatField;
    ZLZLS2YN: TStringField;
    ZLZLS2ZWPM: TStringField;
    ZLZLS2YWPM: TStringField;
    ZLZLS2DWBH: TStringField;
    Query1: TQuery;
    ZLZLS2userdate: TDateTimeField;
    ZLZLS2userid: TStringField;
    TemQT: TQuery;
    GroupBox1: TGroupBox;
    CBX2: TCheckBox;
    CBX3: TCheckBox;
    CBX1: TCheckBox;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure ZLZLS2NewRecord(DataSet: TDataSet);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure ZLZLS2AfterOpen(DataSet: TDataSet);
    procedure CBX2Click(Sender: TObject);
    procedure CBX3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    IsAllowUserID:Boolean;
    { Private declarations }
    procedure ReadIni();
    procedure QueryBtn();
  public
    { Public declarations }
  end;

var
  Orderpack_Label: TOrderpack_Label;

implementation

uses main1, StrUtils, OrderList1, Fununit;

{$R *.dfm}
procedure TOrderpack_Label.ReadIni();
var MyIni :Tinifile;
    AppDir,UserIDList:String;
    tmpUserIDList:TStringlist;
    index:integer;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      UserIDList:=MyIni.ReadString('ERP','Sale_N12_N5_CheckUserID','');
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
    IsAllowUserID:=true;
  end;
end;

procedure TOrderpack_Label.FormDestroy(Sender: TObject);
begin
  Orderpack_Label:=nil;
end;

procedure TOrderpack_Label.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if BB5.enabled then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
    action:=Cafree;
end;

procedure TOrderpack_Label.FormCreate(Sender: TObject);
begin
  IsAllowUserID:=false;
  ReadIni();
  QueryBtn();

end;
//
procedure TOrderpack_Label.QueryBtn();
begin
  with ZLZLS2 do
  begin
    Active:=false;           //BOM與業務都會改用量，改為業務改過之後，只顯示業務改的
    sql.clear;
    SQL.add('select ZLBH,xh,BWBH,CSBH,MJBH,CLBH,ZMLB,SIZE,CLSL,USAGE,USERID,USERDATE,YN,ZWPM,DWBH');
    SQL.add(',max (Case when (CCQQ is not null and CCQZ is not null) and (CCQQ <> '''' and CCQZ <> '''') then YWPM +''(''+CCQQ +''-'' +CCQZ +'')'' else YWPM end) as YWPM');
    SQL.add('from (');
    SQL.add('select ZLZLS2.*,CLZL.ZWPM,CLZL.YWPM,CLZL.DWBH');
    SQL.add('         ,max (Case when DXXZLS.DDBH is null then XXZLS.CCQQ else DXXZLS.CCQQ end) as CCQQ');
    SQL.add('         ,max (Case when DXXZLS.DDBH is null then XXZLS.CCQZ else DXXZLS.CCQZ end) as CCQZ');
    SQL.add('from ZLZLS2');
    SQL.add('left join CLZL on ZLZLS2.CLBH=CLZL.CLDH');
    SQL.add('LEFT JOIN DDZL AS DDZL ON ZLZLS2.ZLBH = DDZL.ZLBH');
    SQL.add('LEFT JOIN XXZLS AS XXZLS ON DDZL.XIEXING = XXZLS.XIEXING ');
    SQL.add('           AND DDZL.SHEHAO = XXZLS.SHEHAO AND ZLZLS2.BWBH = XXZLS.BWBH ');
    SQL.add('LEFT JOIN DDZL_XXZLS AS DXXZLS ON DDZL.XIEXING = DXXZLS.XIEXING');
    SQL.add('           AND DDZL.SHEHAO = DXXZLS.SHEHAO AND ZLZLS2.BWBH = DXXZLS.BWBH and DXXZLS.DDBH = DDZL.DDBH');
    SQL.add('where ZLZLS2.ZLBH=:YSBH');
    if CBX1.Checked=true then
    SQL.add('         and (ZLZLS2.CLBH like ''L09%''');
    if CBX2.Checked=true then
    SQL.add('         or ZLZLS2.CLBH like ''H15%''');
    // 只有 VA12 會列出內盒數量
    if CBX3.Checked=true then
    SQL.add('         or ZLZLS2.CLBH like ''H14%''');
    SQL.add(')');
    SQL.add('         and  not exists (');
    SQL.add('         select *');
    SQL.add('         from ZLZLS2 A');
    SQL.add('         where ZLZLS2.ZLBH=A.ZLBH and ZLZLS2.BWBH=A.BWBH and ZLZLS2.CLBH=A.CLBH  and ZLZLS2.MJBH=A.MJBH and ZLZLS2.SIZE=A.SIZE and A.YN=2)');
    SQL.add('group by ZLZLS2.ZLBH,ZLZLS2.xh,ZLZLS2.BWBH,ZLZLS2.CSBH,ZLZLS2.MJBH,ZLZLS2.CLBH,ZLZLS2.ZMLB,ZLZLS2.SIZE,');
    SQL.add('ZLZLS2.CLSL,ZLZLS2.USAGE,ZLZLS2.USERID,ZLZLS2.USERDATE,ZLZLS2.YN,CLZL.ZWPM,CLZL.YWPM,CLZL.dwbh');
    SQL.add('union all');
    SQL.add('select ZLZLS2.*,CLZL.ZWPM,CLZL.YWPM,CLZL.DWBH');
    SQL.add('         ,max (Case when DXXZLS.DDBH is null then XXZLS.CCQQ else DXXZLS.CCQQ end) as CCQQ');
    SQL.add('         ,max (Case when DXXZLS.DDBH is null then XXZLS.CCQZ else DXXZLS.CCQZ end) as CCQZ');
    SQL.add('from ZLZLS2');
    SQL.add('left join CLZL on ZLZLS2.CLBH=CLZL.CLDH ');
    SQL.add('LEFT JOIN DDZL AS DDZL ON ZLZLS2.ZLBH = DDZL.ZLBH');
    SQL.add('LEFT JOIN XXZLS AS XXZLS ON DDZL.XIEXING = XXZLS.XIEXING ');
    SQL.add('           AND DDZL.SHEHAO = XXZLS.SHEHAO AND ZLZLS2.BWBH = XXZLS.BWBH');
    SQL.add('LEFT JOIN DDZL_XXZLS AS DXXZLS ON DDZL.XIEXING = DXXZLS.XIEXING');
    SQL.add('           AND DDZL.SHEHAO = DXXZLS.SHEHAO AND ZLZLS2.BWBH = DXXZLS.BWBH and DXXZLS.DDBH = DDZL.DDBH ');
    SQL.add('where ZLZLS2.ZLBH=:YSBH');
    if CBX1.Checked=true then
    SQL.add('          and (ZLZLS2.CLBH like ''L09%''');
    if CBX2.Checked=true then
    SQL.add('          or ZLZLS2.CLBH like ''H15%''');
    // 只有 VA12 會列出內盒數量
    if CBX3.Checked=true then
    SQL.add('          or ZLZLS2.CLBH like ''H14%''');
    SQL.add(')');
    SQL.add('and zlzls2.YN=''2'' ');
    SQL.add('group by ZLZLS2.ZLBH,ZLZLS2.xh,ZLZLS2.BWBH,ZLZLS2.CSBH,ZLZLS2.MJBH,ZLZLS2.CLBH,ZLZLS2.ZMLB,ZLZLS2.SIZE,');
    SQL.add('ZLZLS2.CLSL,ZLZLS2.USAGE,ZLZLS2.USERID,ZLZLS2.USERDATE,ZLZLS2.YN,CLZL.ZWPM,CLZL.YWPM,CLZL.dwbh');
    SQL.add(') ZLZLS2');
    SQL.add('group by ZLBH,xh,BWBH,CSBH,MJBH,CLBH,ZMLB,SIZE,CLSL,USAGE,USERID,USERDATE,YN,ZWPM,DWBH');
    //memo1.Lines:=sql;
    Active:=true;
  end;
end;
//
procedure TOrderpack_Label.BB4Click(Sender: TObject);
begin
  with ZLZLS2 do
  begin
      cachedupdates:=true;
      requestlive:=true;
      BB5.Enabled:=true;
      BB6.Enabled:=true;
  end;
end;

procedure TOrderpack_Label.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TOrderpack_Label.BB6Click(Sender: TObject);
begin

  with ZLZLS2 do
  begin
    active:=false;
    cachedupdates:=false ;
    requestlive:=false;
    active:=true;
    BB5.enabled:=false;
    BB6.enabled:=false;
  end;
  
end;

procedure TOrderpack_Label.BB5Click(Sender: TObject);
var  Ndate:TDate;
begin

  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
  end;

  with ZLZLS2 do
  begin
    first;
    while not eof do
      begin
        if updatestatus=usmodified then
          begin
            edit;
            fieldbyname('YN').Value:='2';
            FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd hh:mm:ss',Ndate);
            FieldByName('userid').Value:=main.Edit1.Text;
            post;
            UpZLZLS2.Apply(ukmodify);
          end;
        next;
      end;
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
    BB5.enabled:=false;
    BB6.enabled:=false;
  end;
  
end;

procedure TOrderpack_Label.ZLZLS2NewRecord(DataSet: TDataSet);
begin
  abort;
end;

procedure TOrderpack_Label.DBGridEh1DblClick(Sender: TObject);
var curString:string;
begin

  //  VA12 混裝用  會將訂單數量代入指定的內盒之數量
  if ( (LeftStr(ZLZLS2.fieldbyname('CLBH').Value, 3)='H14') and (BB4.Enabled=true)) then
  begin
    if messagedlg('sure to  mixed packing ???',mtconfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      with ZLZLS2 do
      begin
        cachedupdates:=true;
        requestlive:=true;
        BB5.Enabled:=true;
        BB6.Enabled:=true;

        curString := fieldbyname('CLBH').Value;
        edit;
        fieldbyname('CLSL').Value := OrderList.SpecMas.fieldbyname('Qty').value;
        post;

        first;
        while not eof do
        begin
          if ( fieldbyname('clbh').Value <> curString ) and ( LeftStr(fieldbyname('CLBH').Value, 3) = 'H14' ) then
          begin
            edit;
            fieldbyname('clsl').Value:= 0;
            post;
          end;
          next;
        end;
        first;
      end; // end of zlzls2
    end;  // end of messagedlg
  end;
end;

procedure TOrderpack_Label.ZLZLS2AfterOpen(DataSet: TDataSet);
begin
    with TemQT do
    begin
      Active:=false;
      sql.clear;
      SQL.add('select DDBH ');
      SQL.add('from DDZL ');
      SQL.add('where DDBH = '''+ZLZLS2.fieldbyname('ZLBH').AsString+'''');
      SQL.add('and DDZL.ShipDate>GetDate()-360 ');
      sql.Add('and DDZL.YN=1 ');
      Active:=true;
    end;
    if ((TemQT.RecordCount>0) and (IsAllowUserID=true)) then
    begin
      BB4.Enabled:=true;
    end else
    begin
      BB4.Enabled:=false;
    end;
end;

procedure TOrderpack_Label.CBX2Click(Sender: TObject);
begin
  QueryBtn();
end;

procedure TOrderpack_Label.CBX3Click(Sender: TObject);
begin
  QueryBtn();
end;

procedure TOrderpack_Label.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
