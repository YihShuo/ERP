unit Reality_Remain_Quantity_Pre1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, GridsEh, DBGridEh, DB,
  DBTables,comobj, Menus, Math, iniFiles;

type
  TReality_Remain_Quantity_Pre = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    bbt6: TBitBtn;
    DSKCZL: TDataSource;
    qryKCZK: TQuery;
    UpKCZK: TUpdateSQL;
    qryKCZKZKBH: TStringField;
    qryKCZKGSBH: TStringField;
    qryKCZKCLBH: TStringField;
    qryKCZKMemo: TStringField;
    qryKCZKUserID: TStringField;
    qryKCZKUserDate: TDateTimeField;
    qryKCZKYN: TStringField;
    qryKCZKywpm: TStringField;
    Query1: TQuery;
    qryKCZKQty: TFloatField;
    qryKCZKdwbh: TStringField;
    qryCGYGUSE: TQuery;
    qryCGYGUSEBUYNO: TStringField;
    qryCGYGUSEZLBH: TStringField;
    qryCGYGUSEQty: TCurrencyField;
    DSCGYGUSE: TDataSource;
    PopupMenu1: TPopupMenu;
    mnu1: TMenuItem;
    mnu3: TMenuItem;
    qryKCZKLQty: TFloatField;
    mnu4: TMenuItem;
    N1: TMenuItem;
    mnu5: TMenuItem;
    qryCGYGUSEKHPO: TStringField;
    qryCGYGUSEPairs: TIntegerField;
    qryCGYGUSECLBH: TStringField;
    qryCGYGUSEYWPM: TStringField;
    PopupMenu2: TPopupMenu;
    Excel1: TMenuItem;
    qryCGYGUSESize: TStringField;
    qryKCZKS: TQuery;
    qryKCZKSZKBH: TStringField;
    qryKCZKSSIZE: TStringField;
    qryKCZKSQty: TFloatField;
    qryKCZKSLQty: TFloatField;
    qryKCZKSUserID: TStringField;
    qryKCZKSUserDate: TDateTimeField;
    qryKCZKSYN: TStringField;
    DSKCZKS: TDataSource;
    UpKCZKS: TUpdateSQL;
    qryKCZKP: TQuery;
    DSKCZKP: TDataSource;
    qryKCZKPZKNO: TStringField;
    qryKCZKPGSBH: TStringField;
    qryKCZKPMemo: TStringField;
    qryKCZKPUserID: TStringField;
    qryKCZKPUserDate: TDateTimeField;
    qryKCZKPYN: TStringField;
    UpKCZKP: TUpdateSQL;
    Panel7: TPanel;
    BD2: TBitBtn;
    BD3: TBitBtn;
    BD4: TBitBtn;
    BD5: TBitBtn;
    BD6: TBitBtn;
    BD7: TBitBtn;
    BD1: TBitBtn;
    PC1: TPageControl;
    TS1: TTabSheet;
    TS2: TTabSheet;
    DBGridEh4: TDBGridEh;
    Panel3: TPanel;
    Splitter1: TSplitter;
    Panel4: TPanel;
    DBGridEh2: TDBGridEh;
    Panel5: TPanel;
    DBGridEh3: TDBGridEh;
    LeftPanel: TPanel;
    DBGridEh1: TDBGridEh;
    qryKCZKZKNO: TStringField;
    Panel6: TPanel;
    BC2: TBitBtn;
    BC3: TBitBtn;
    BC4: TBitBtn;
    BC5: TBitBtn;
    BC6: TBitBtn;
    qryKCZKCGNO: TStringField;
    qryKCZKZSBH: TStringField;
    qryKCZKCQDH: TStringField;
    qryKCZKZSYWJC: TStringField;
    N2: TMenuItem;
    mnu6: TMenuItem;
    BDT5: TBitBtn;
    qryKCZKZsdh_TW: TStringField;
    BDT6: TBitBtn;
    Panel2: TPanel;
    Label4: TLabel;
    Label8: TLabel;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    CheckBox1: TCheckBox;
    ZKNOEdit: TEdit;
    Label1: TLabel;
    MemoEdit: TEdit;
    Check: TCheckBox;
    bbt7: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure bbt6Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure SetClick(Sender: TObject);
    procedure mnu5Click(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure BB7Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure BC2Click(Sender: TObject);
    procedure BC3Click(Sender: TObject);
    procedure BC4Click(Sender: TObject);
    procedure BC6Click(Sender: TObject);
    procedure BC5Click(Sender: TObject);
    procedure DBGridEh3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure qryKCZKAfterOpen(DataSet: TDataSet);
    procedure qryKCZKPAfterOpen(DataSet: TDataSet);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure DBGridEh4GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BD7Click(Sender: TObject);
    procedure DBGridEh4DblClick(Sender: TObject);
    procedure mnu6Click(Sender: TObject);
    procedure BDT5Click(Sender: TObject);
    procedure BDT6Click(Sender: TObject);
    procedure bbt7Click(Sender: TObject);
  private
    FY,FM:string;
    NDate:TDate;
    ClickColumnIndex:integer;
    VNPrice_Decimal:Byte;
    { Private declarations }
    procedure ReadIni();
    procedure InsertCGNO_Pre(bm: Tbookmark;bookmarklist: TBookmarkListEh);
    procedure InsertKCZKS(ZKBH:string;KCZKSMemo:String);
    function CreateCGBJ(ZSBH:string;CLBH:String;CQDH:String):string;
  public
    { Public declarations }
  end;

var
  Reality_Remain_Quantity_Pre: TReality_Remain_Quantity_Pre;

implementation

uses main1, Material_Pre1, MaterialOrder_Pre1, ZSZL_Pre1, Reality_Remain_Quantity_Pre_Print1,
     Reality_Remain_Quantity_Pre_Print21, PurOther1, FunUnit, untClipboard, Reality_Remain_Quantity_Pre_YGNO1;

{$R *.dfm}
procedure TReality_Remain_Quantity_Pre.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  VNPrice_Decimal:=0;
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
    finally
      MyIni.Free;
    end;
  end;
end;
//

procedure TReality_Remain_Quantity_Pre.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TReality_Remain_Quantity_Pre.FormDestroy(Sender: TObject);
begin
  Reality_Remain_Quantity_Pre:=nil;
end;

procedure TReality_Remain_Quantity_Pre.BB1Click(Sender: TObject);
begin
  panel2.Visible:=true;
end;

procedure TReality_Remain_Quantity_Pre.Button1Click(Sender: TObject);
begin
  with qryKCZKP do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select * from KCZKP ');
    SQL.Add('where GSBH='''+main.Edit2.Text+''' and ZKNO like '''+ZKNOEdit.Text+'%'' ');
    if MemoEdit.Text<>'' then
      sql.Add('and KCZKP.Memo like ''%'+MemoEdit.Text+'%''');
    if CheckBox1.Checked=true then
    begin
      sql.add(' and  convert(smalldatetime,convert(varchar,KCZKP.USERDATE,111)) between ');
      sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    SQL.Add('Order by KCZKP.ZKNO DESC ');
    Active:=true;
  end;

  with qryKCZK do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select KCZK.ZKNO,KCZK.ZKBH,KCZK.GSBH,KCZK.CLBH,clzl.ywpm,clzl.DWBH,KCZK.Qty,KCZK.LQty , ');
    sql.add('       KCZK.Memo,KCZK.CGNO,KCZK.ZSBH,ZSZL.ZSYWJC,ZSZL_DEV.Zsdh_TW,CLZL.CQDH,KCZK.UserID,KCZK.UserDate,KCZK.YN');
    sql.Add('from KCZK');
    sql.Add('left join clzl on KCZK.CLBH=clzl.cldh ');
    sql.Add('left join zszl on zszl.ZSDH=KCZK.ZSBH ');
    sql.Add('left join zszl_Dev on zszl.ZSDH=zszl_Dev.zsdh and zszl_Dev.GSBH='''+main.Edit2.Text+''' ');
    sql.add('where KCZK.ZKNO=:ZKNO and KCZK.GSBH='''+main.Edit2.Text+''' ');
    sql.Add('order by KCZK.ZSBH,KCZK.LQty desc, KCZK.CLBH asc');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  qryCGYGUSE.Active:=true;
end;

procedure TReality_Remain_Quantity_Pre.BB2Click(Sender: TObject);
begin
  with qryKCZK do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGridEh1.columns[2].ButtonStyle:=cbsEllipsis;
  DBGridEh1.columns[10].ButtonStyle:=cbsEllipsis;
  DBGridEh1.columns[6].ReadOnly:=true;
end;

procedure TReality_Remain_Quantity_Pre.BB4Click(Sender: TObject);
begin
  with qryKCZK do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGridEh1.columns[2].ButtonStyle:=cbsEllipsis;
  DBGridEh1.columns[10].ButtonStyle:=cbsEllipsis;
  DBGridEh1.columns[6].ReadOnly:=true;
end;

procedure TReality_Remain_Quantity_Pre.BB6Click(Sender: TObject);
begin
  with qryKCZK do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.enabled:=false;
  DBGridEh1.columns[2].ButtonStyle:=cbsnone;
  DBGridEh1.columns[10].ButtonStyle:=cbsnone;
end;

procedure TReality_Remain_Quantity_Pre.FormCreate(Sender: TObject);
var i:integer;
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
    active:=true;
    FY:=fieldbyname('FY').asstring;
    FM:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  if length(FM)<2 then
    FM:='0'+FM;
  //
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select distinct XXZLS3.US_SIZE ');
    SQL.Add('from XXZLS3');
    SQL.Add('inner join DDZL on DDZL.XieXIng=XXZLS3.XieXing and GSBH='''+main.Edit2.Text+'''');
    SQL.Add('where DDZL.ShipDate>GetDate()-180 and US_SIZE<>''0'' and US_SIZE<>''''');
    SQL.Add('Order by XXZLS3.US_SIZE ');
    Active:=true;
    DBGridEh3.Columns[0].PickList.add('ZZZZZZ');
    for i:=0 to RecordCount-1 do
    begin
      DBGridEh3.Columns[0].PickList.add(FieldByName('US_SIZE').AsString);
      Next;
    end;
    Active:=false;
  end;
  //
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Update KCZK set CGNO=null ');
    SQL.Add('from (');
    SQL.Add('select * from (');
    SQL.Add('Select ZKBH,CLBH ');
    SQL.Add('from KCZK');
    SQL.Add('where ZKNO<>''ZZZZZZZZZZ'' and CGNO is not null ) KCZK ');
    SQL.Add('where not exists (select CGNO from CGZLSS where ZLBH=KCZK.ZKBH and CLBH=KCZK.CLBH and Stage=''PREO'') ) A ');
    SQL.Add('where KCZK.ZKBH=A.ZKBH and KCZK.CLBH=A.CLBH ');
    ExecSQL();
  end;
  //
  DTP1.Date:=now-14;
  DTP2.Date:=now;
  ReadIni();

end;

procedure TReality_Remain_Quantity_Pre.DBGridEh1EditButtonClick(
  Sender: TObject);
begin
  if DBGridEh1.selectedfield.fieldname='CLBH' then
  begin
    if  Messagedlg(Pchar('Select material from list material or order?'),mtInformation,[mbNo,mbYes],0)=mrYes then
    begin
      Material_Pre:=TMaterial_Pre.create(self);
      Material_Pre.show;
    end else
    begin
      MaterialOrder_Pre:=TMaterialOrder_Pre.create(self);
      MaterialOrder_Pre.show;
    end;
  end;
  if DBGridEh1.selectedfield.fieldname='ZSBH' then
  begin
    ZSZL_Pre:=TZSZL_Pre.create(self);
    ZSZL_Pre.show;
  end;
end;

procedure TReality_Remain_Quantity_Pre.BB3Click(Sender: TObject);
begin
  if QryKCZKS.recordcount>0 then
  begin
    showmessage('Pls delete the  detail first.');
    abort;
  end;
  with QryKCZK do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end ;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

//20210324 預購材料入造庫清單
procedure TReality_Remain_Quantity_Pre.InsertKCZKS(ZKBH:string;KCZKSMemo:String);
var tmpList,SplitList:TStringList;
    Str:string;
    i:integer;
begin
   Str:=Copy(KCZKSMemo,6,length(KCZKSMemo)-5);
   tmpList:=funcObj.SplitString(Str,',');
   for i:=0 to tmpList.Count-1 do
   begin
     SplitList:=funcObj.SplitString(tmpList.Strings[i],':');
     with Query1 do
     begin
       Active:=false;
       SQL.Clear;
       SQL.Add('Insert into KCZKS ');
       SQL.Add('(ZKBH ,SIZE, Qty, LQty, UserID, UserDate ,YN) ');
       SQL.Add('Values ');
       SQL.Add('('''+ZKBH+''','''+SplitList.Strings[0]+''','+SplitList.Strings[1]+','+SplitList.Strings[1]+','''+main.edit1.text+''',GetDate(),1) ');
       ExecSQL;
     end;
     SplitList.Free;
   end;
   tmpList.Free;
end;
//
procedure TReality_Remain_Quantity_Pre.BB5Click(Sender: TObject);
var y,m,ZKBH,KCZKSMemo:string;
    i:integer;
begin

  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  if length(m)<2 then
    m:='0'+m;
  try
    qryCGYGUSE.Active:=false;
    qryKCZK.first;
    for i:=1 to qryKCZK.RecordCount do
    begin
        case qryKCZK.updatestatus of
          usinserted:
            begin
              if qryKCZK.fieldbyname('CLBH').isnull   then
              begin
                qryKCZK.delete;
              end else
              begin
                with query1 do
                begin
                  active:=false;
                  sql.Clear;
                  sql.Add('select ZKBH from KCZK where ZKBH like '''+y+m+'%''');
                  sql.add('order by ZKBH');
                  active:=true;
                  if recordcount >0 then
                  begin
                    last;
                    ZKBH:=fieldbyname('ZKBH').AsString;
                    ZKBH:=copy(ZKBH,7,5);
                    ZKBH:=inttostr(strtoint(ZKBH)+1);
                    while length(ZKBH)<5 do
                    begin
                      ZKBH:='0'+ZKBH;
                    end;
                  end else
                  begin
                    ZKBH:='00001';
                  end;
                  ZKBH :=y+m+ZKBH;
                  active:=false;
                  sql.Clear;
                 end;
                 qryKCZK.edit;
                 qryKCZK.fieldbyname('ZKBH').Value:=ZKBH;
                 qryKCZK.fieldbyname('ZKNO').Value:=qryKCZKP.FieldByName('ZKNO').Value;
                 qryKCZK.fieldbyname('GSBH').Value:=main.Edit2.text;
                 if qryKCZK.fieldbyname('Qty').IsNull then
                   qryKCZK.fieldbyname('Qty').Value:=0;
                 if qryKCZK.fieldbyname('Qty').Value<0 then
                   qryKCZK.fieldbyname('Qty').Value:=0;
                 //預購材料尺碼備註 指定SIZE RUN
                 if Copy(qryKCZK.FieldByName('Memo').AsString,1,5)='KCZK@' then
                 begin
                   KCZKSMemo:=qryKCZK.FieldByName('Memo').Value;
                   qryKCZK.FieldByName('Memo').Value:='';
                 end;
                 qryKCZK.fieldbyname('Memo').Value:=qryKCZKP.FieldByName('Memo').Value;
                 qryKCZK.fieldbyname('LQty').Value:=qryKCZK.fieldbyname('Qty').Value;
                 qryKCZK.FieldByName('UserID').Value:=main.edit1.text;
                 qryKCZK.FieldByName('UserDate').Value:=now;
                 qryKCZK.FieldByName('YN').Value:='1';
                 upKCZK.apply(ukinsert);
                 //20210324 Default Insert into KCZK.Qty=KCZKS.Qty & SIZE=ZZZZZZ
                 if KCZKSMemo='' then
                 begin
                   with Query1 do
                   begin
                     Active:=false;
                     SQL.Clear;
                     SQL.Add('Insert into KCZKS ');
                     SQL.Add('(ZKBH ,SIZE, Qty, LQty, UserID, UserDate ,YN) ');
                     SQL.Add('Values ');
                     SQL.Add('('''+qryKCZK.fieldbyname('ZKBH').Value+''',''ZZZZZZ'','+qryKCZK.fieldbyname('Qty').AsString+','+qryKCZK.fieldbyname('LQty').AsString+','''+main.edit1.text+''',GetDate(),1) ');
                     ExecSQL;
                   end;
                 end else
                 begin
                    InsertKCZKS(ZKBH,KCZKSMemo);
                 end;
                 //
              end;
          end;
          usmodified:
             begin
                if qryKCZK.FieldByName('UserID').AsString=main.Edit1.Text then
                begin
                    if qryKCZK.fieldbyname('YN').value='0'then
                    begin
                      if  qryKCZK.FieldByName('LQty').Value=qryKCZK.FieldByName('Qty').Value then
                      begin
                        with Query1 do
                        begin
                         Active:=false;
                         SQL.Clear;
                         SQL.Add('Delete from KCZKS where ZKBH='''+qryKCZK.fieldbyname('ZKBH').Value+''' ');
                         ExecSQL;
                        end;
                        upKCZk.apply(ukdelete);
                      end else
                      begin
                        showmessage('Already Use Stock! Can not delete');
                        abort;
                      end;
                    end else
                    begin
                       qryKCZK.edit;
                       qryKCZK.FieldByName('userID').Value:=main.edit1.text;
                       qryKCZK.FieldByName('userdate').Value:=now;
                       upKCZK.apply(ukmodify);
                    end;
                end else
                begin
                  showmessage('It is not yours, can not modify.');
                  abort;
                end;
             end;
        end;
        qryKCZK.next;
    end;
    qryKCZK.active:=false;
    qryKCZK.cachedupdates:=false;
    qryKCZK.requestlive:=false;
    qryKCZK.active:=true;
    qryCGYGUSE.Active:=true;
    BB5.enabled:=false;
    BB6.enabled:=false;
    DBGridEh1.columns[2].ButtonStyle:=cbsnone;
    DBGridEh1.columns[10].ButtonStyle:=cbsnone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TReality_Remain_Quantity_Pre.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if qryKCZK.FieldByName('LQty').value=0 then
  begin
    DBGridEh1.canvas.font.color:=clblue;
  end;
  if qryKCZK.FieldByName('YN').value='0' then
  begin
    DBGridEh1.canvas.font.color:=clred;
  end;

end;

procedure TReality_Remain_Quantity_Pre.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j,k,l:integer;
    RY:string;
begin
   if  qryKCZK.active  then
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
          eclApp.Cells(1,1):='ZKBH';
          eclApp.Cells(1,2):='MatID';
          eclApp.Cells(1,3):='MatName';
          eclApp.Cells(1,4):='Unit';
          eclApp.Cells(1,5):='ZKQty';
          eclApp.Cells(1,6):='ZKLQty';
          eclApp.Cells(1,7):='Memo';
          eclApp.Cells(1,8):='UserID';
          eclApp.Cells(1,9):='RY';
          qryKCZK.First;
          j:=2;
          for   i:=0   to  qryKCZK.RecordCount-1  do
          begin
            eclApp.Cells(j,1):=qryKCZK.FieldByName('ZKBH').Value;
            eclApp.Cells(j,2):=qryKCZK.FieldByName('CLBH').Value;
            eclApp.Cells(j,3):=qryKCZK.FieldByName('YWPM').Value;
            eclApp.Cells(j,4):=qryKCZK.FieldByName('DWBH').Value;
            eclApp.Cells(j,5):=qryKCZK.FieldByName('Qty').Value;
            eclApp.Cells(j,6):=qryKCZK.FieldByName('LQty').Value;
            RY:='';
            if qryCGYGUSE.Active=true then
            begin
              qryCGYGUSE.First;
              for k:=1 to qryCGYGUSE.RecordCount do
              begin
                RY:=RY+qryCGYGUSE.FieldByName('ZLBH').AsString+'('+qryCGYGUSE.FieldByName('Qty').AsString+')'+',';
                qryCGYGUSE.Next;
              end;
            end;
            eclApp.Cells(j,7):=qryKCZK.FieldByName('Memo').Value;
            eclApp.Cells(j,8):=qryKCZK.FieldByName('UserID').Value;
            eclApp.Cells(j,9):=Copy(RY,1,length(RY)-1);
            qryKCZK.Next;
            inc(j);
          end;
          //  add outline
          for l:=1 to 4 do
          begin
            eclApp.range[eclApp.cells[1,1],eclApp.cells[j-1,9]].borders[l].linestyle:=1;
          end;
         //
        // eclapp.columns.autofit;
         showmessage('Succeed');
         eclApp.Visible:=True;
      except
          on   F:Exception   do
            showmessage(F.Message);
      end;
    end;
end;

procedure TReality_Remain_Quantity_Pre.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if qryKCZK.FieldByName('LQty').value=0 then
  begin
     DBGridEh1.canvas.Brush.Color:=clBtnFace;
     DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
end;

procedure TReality_Remain_Quantity_Pre.SetClick(Sender: TObject);
var
  i: integer;
  bm: Tbookmark;
  bookmarklist: TBookmarkListEh;
  SetVal,FieldName: string;
begin
  if qryKCZK.RequestLive=false then  Exit;

  bm := qryKCZK.GetBookmark;
  bookmarklist := DBGridEh1.SelectedRows;

  if (TMenuItem(Sender).Name = 'mnu3') then
  begin
    SetVal := '0';
    FieldName:='YN';
  end else if (TMenuItem(Sender).Name = 'mnu1') then
  begin
    FieldName:='Memo';
    if (DBGridEh1.SelectedRows.Count > 0) then
    begin
      if InputQuery('Memo', 'Set Memo To ...', SetVal) then
      begin
        if SetVal = '' then Exit;
      end
      else begin
        Exit;
      end;
    end
    else begin
      ShowMessage('Please select a material.');
      Exit;
    end;
  end else if (TMenuItem(Sender).Name = 'mnu4') then
  begin
    FieldName:='YN';
    if (DBGridEh1.SelectedRows.Count > 0) then
    begin
      if InputQuery('YN', 'Set YN To ...', SetVal) then
      begin
        if SetVal = '' then Exit;
      end
      else begin
        Exit;
      end;
    end
    else begin
      ShowMessage('Please select a material.');
      Exit;
    end;
  end;
  try
    if (DBGridEh1.SelectedRows.Count > 0) then
    begin
      for i:=0 to bookmarklist.Count-1 do
      begin
        qryKCZK.GotoBookmark(Pointer(bookmarklist[i]));
        qryKCZK.Edit;
        qryKCZK.FieldByName(FieldName).Value := SetVal;
        qryKCZK.Post;
      end;
    end
    else begin
      ShowMessage('Please select a material.');
    end;
  finally
    qryKCZK.GotoBookmark(bm);
    qryKCZK.FreeBookmark(bm);
  end;
end;
procedure TReality_Remain_Quantity_Pre.mnu5Click(Sender: TObject);
var
  CbBuf: PChar;
  BufSize: Integer;
  Handle: THandle;
  Text:WideString;
  rowList,colList:TStringlist;
  i,j:integer;
begin
 try
   if qryKCZK.RequestLive=false then  Exit; 
   Text:='';
   if Clipboard.HasFormat(CF_TEXT) then
   begin
    Handle := ClipBoard.GetAsHandle(CF_TEXT);
    BufSize := GlobalSize(Handle);
    GetMem(CbBuf, BufSize);
    Text:=Clipboard.AsUnicodeText;
    //
    rowList:=TStringlist.Create;
    rowList.Text:=Text;
    //ProdDetail.First;
    for i:=0 to rowList.Count-1 do
    begin
      colList:=funcObj.SplitString(rowList.Strings[i],'	');
      qryKCZK.Insert;
      for j:=0 to colList.Count-1 do
      begin
        if trim(colList.Strings[j])<>'' then
        begin
          qryKCZK.Fields[j+ClickColumnIndex].Value:=colList.Strings[j];
        end;
        if j+ClickColumnIndex>=qryKCZK.FieldCount-1 then break;
      end;
      colList.Free;
      qryKCZK.Post;
    end;
    rowList.Free;
   end;
 except
   on E:Exception do
    Showmessage(E.Message);
 end;

end;

procedure TReality_Remain_Quantity_Pre.DBGridEh1CellClick(Column: TColumnEh);
begin
  ClickColumnIndex:=Column.Index;
end;

procedure TReality_Remain_Quantity_Pre.BB7Click(Sender: TObject);
begin
  close();
end;

procedure TReality_Remain_Quantity_Pre.Excel1Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
   if  qryCGYGUSE.active  then
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
        for   i:=0   to   qryCGYGUSE.fieldcount-1   do
        begin
          eclApp.Cells(1,i+1):=qryCGYGUSE.fields[i].FieldName;
        end;

        qryCGYGUSE.First;
        j:=2;
        while   not   qryCGYGUSE.Eof   do
        begin
          for   i:=0   to  qryCGYGUSE.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=qryCGYGUSE.Fields[i].Value;
          end;
          qryCGYGUSE.Next;
          inc(j);
        end;
        eclapp.columns.autofit;
        eclApp.Visible:=True;
        showmessage('Succeed');
    except
      on   F:Exception   do
          showmessage(F.Message);
    end;
    end;
end;

procedure TReality_Remain_Quantity_Pre.BC2Click(Sender: TObject);
begin
  with qryKCZKS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BC5.Enabled:=true;
  BC6.Enabled:=true;
end;

procedure TReality_Remain_Quantity_Pre.BC3Click(Sender: TObject);
begin
  with QRYKCZKS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end ;
  BC5.Enabled:=true;
  BC6.Enabled:=true;
end;

procedure TReality_Remain_Quantity_Pre.BC4Click(Sender: TObject);
begin
  with qryKCZKS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BC5.Enabled:=true;
  BC6.Enabled:=true;
end;

procedure TReality_Remain_Quantity_Pre.BC6Click(Sender: TObject);
begin
  with qryKCZKS do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BC5.enabled:=false;
  BC6.enabled:=false;
end;

procedure TReality_Remain_Quantity_Pre.BC5Click(Sender: TObject);
var i:integer;
    Qty,LQty:double;
begin

  try
    qryKCZKS.first;
    for i:=1 to qryKCZKS.RecordCount do
    begin
        case qryKCZKS.updatestatus of
          usinserted:
            begin
              if qryKCZKS.fieldbyname('SIZE').isnull   then
              begin
                qryKCZKS.delete;
              end else
              begin
                 qryKCZKS.edit;
                 qryKCZKS.fieldbyname('ZKBH').Value:=qryKCZK.FieldByName('ZKBH').Value;
                 if qryKCZKS.fieldbyname('Qty').IsNull then
                   qryKCZKS.fieldbyname('Qty').Value:=0;
                 if qryKCZKS.fieldbyname('Qty').Value<0 then
                   qryKCZKS.fieldbyname('Qty').Value:=0;
                 qryKCZKS.fieldbyname('LQty').Value:=qryKCZKS.fieldbyname('Qty').Value;
                 qryKCZKS.FieldByName('UserID').Value:=main.edit1.text;
                 qryKCZKS.FieldByName('UserDate').Value:=now;
                 qryKCZKS.FieldByName('YN').Value:='1';
                 upKCZKS.apply(ukinsert);
              end;
          end;
          usmodified:
             begin
                if qryKCZKS.FieldByName('UserID').AsString=main.Edit1.Text then
                begin
                    if qryKCZKS.fieldbyname('YN').value='0'then
                    begin
                      if  qryKCZKS.FieldByName('LQty').Value=qryKCZKS.FieldByName('Qty').Value then
                      begin
                        upKCZKS.apply(ukdelete);
                      end else
                      begin
                        showmessage('Already Use Stock! Can not delete');
                        abort;
                      end;
                    end else
                    begin
                      if (qryKCZKS.FieldByName('Qty').Value>= (qryKCZKS.FieldByName('Qty').OldValue-qryKCZKS.FieldByName('LQty').OldValue)) then
                      begin
                       qryKCZKS.edit;
                       if qryKCZKS.fieldbyname('Qty').IsNull then
                         qryKCZKS.fieldbyname('Qty').Value:=0;
                       if qryKCZKS.fieldbyname('Qty').Value<0 then
                         qryKCZKS.fieldbyname('Qty').Value:=0;
                       qryKCZKS.FieldByName('userID').Value:=main.edit1.text;
                       qryKCZKS.FieldByName('userdate').Value:=now;
                       upKCZKS.apply(ukmodify);
                       //20200814重新計算LQty
                       with Query1 do
                       begin
                        Active:=false;
                        SQL.Clear;
                        SQL.Add('update KCZKS set LQty=A.LQty ');
                        SQL.Add('from (');
                        SQL.Add('select KCZKS.ZKBH,KCZKS.SIZE,IsNull(CGYGUSE.Qty,0) as UseQty,Round(KCZKS.Qty-IsNull(CGYGUSE.Qty,0),1) as LQty from KCZKS');
                        SQL.Add('left join (');
                        SQL.Add('Select '''+qryKCZK.FieldByName('ZKBH').Value+''' as ZKBH,CGYGUSES.SIZE,Sum(CGYGUSES.Qty) as Qty from CGYGUSES');
                        SQL.Add('where CGYGUSES.ZKBH='''+qryKCZK.FieldByName('ZKBH').Value+''' ');
                        SQL.Add('Group by CGYGUSES.SIZE ) CGYGUSE on KCZKS.ZKBH=CGYGUSE.ZKBH and KCZKS.SIZE=CGYGUSE.SIZE ');
                        SQL.Add('where KCZKS.ZKBH='''+qryKCZK.FieldByName('ZKBH').Value+''' ) A');
                        SQL.Add('where  A.ZKBH=KCZKS.ZKBH and A.SIZE=KCZKS.SIZE');
                        //funcObj.WriteErrorLog(SQL.Text);
                        ExecSQL();
                       end;
                       //
                      end;
                    end;
                end else
                begin
                  showmessage('It is not yours, can not modify.');
                  abort;
                end;
             end;
        end;
        qryKCZKS.next;
    end;
    //
    qryKCZKS.active:=false;
    qryKCZKS.cachedupdates:=false;
    qryKCZKS.requestlive:=false;
    qryKCZKS.active:=true;
    BC5.enabled:=false;
    BC6.enabled:=false;
    //
    qryKCZKS.First;
    Qty:=0;
    LQty:=0;
    while not qryKCZKS.eof do
    begin
      Qty:=Qty+qryKCZKS.fieldbyname('Qty').Value;
      LQty:=LQty+qryKCZKS.fieldbyname('LQty').Value;
      qryKCZKS.next;
    end;
    with qryKCZK do
    begin
      RequestLive:=true;
      CachedUpdates:=true;
      Edit;
      FieldByName('Qty').Value:=Qty;
      FieldByName('LQty').Value:=LQty;
      UpKCZK.Apply(ukmodify);
      active:=false;
      RequestLive:=false;
      CachedUpdates:=false;
      active:=true;
    end;
    //
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TReality_Remain_Quantity_Pre.DBGridEh3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if qryKCZKS.FieldByName('LQty').value=0 then
  begin
    DBGridEh3.canvas.font.color:=clblue;
  end;
  if qryKCZKS.FieldByName('YN').value='0' then
  begin
    DBGridEh3.canvas.font.color:=clred;
  end;
end;

procedure TReality_Remain_Quantity_Pre.DBGridEh3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if qryKCZK.FieldByName('LQty').value=0 then
  begin
     DBGridEh3.canvas.Brush.Color:=clBtnFace;
     DBGridEh3.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
end;

procedure TReality_Remain_Quantity_Pre.qryKCZKAfterOpen(DataSet: TDataSet);
begin
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  BC2.Enabled:=true;
  BC3.Enabled:=true;
  BC4.Enabled:=true;
  qryKCZKS.Active:=true;
  if qryKCZKP.cachedupdates  then
  begin
    BB2.Enabled:=false;
    BB3.Enabled:=false;
    BB4.Enabled:=false;
    BC2.Enabled:=false;
    BC3.Enabled:=false;
    BC4.Enabled:=false;
  end;
  if qryKCZKP.FieldByName('USERID').value<>main.edit1.text  then
  begin
    BB2.Enabled:=false;
    BB3.Enabled:=false;
    BB4.Enabled:=false;
    BC2.Enabled:=false;
    BC3.Enabled:=false;
    BC4.Enabled:=false;
  end;
end;

procedure TReality_Remain_Quantity_Pre.qryKCZKPAfterOpen(
  DataSet: TDataSet);
begin
  BD2.Enabled:=true;
  BD3.Enabled:=true;
  BD4.Enabled:=true;
end;

procedure TReality_Remain_Quantity_Pre.BD2Click(Sender: TObject);
begin

  with qryKCZKP do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BD5.Enabled:=true;
  BD6.Enabled:=true;

end;

procedure TReality_Remain_Quantity_Pre.BD3Click(Sender: TObject);
begin

  if QryKCZK.recordcount>0 then
  begin
    showmessage('Pls delete the  detail first.');
    abort;
  end;
  with QryKCZKP do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
end;

procedure TReality_Remain_Quantity_Pre.BD4Click(Sender: TObject);
begin
  with qryKCZKP do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
end;

procedure TReality_Remain_Quantity_Pre.BD6Click(Sender: TObject);
begin
  with qryKCZKP do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BD5.enabled:=false;
  BD6.enabled:=false;
end;

procedure TReality_Remain_Quantity_Pre.BD5Click(Sender: TObject);
var i:integer;
    ZKNO:String;
begin

  try
    qryKCZKP.first;
    for i:=1 to qryKCZKP.RecordCount do
    begin
        case qryKCZKP.updatestatus of
          usinserted:
            begin
              if qryKCZKP.fieldbyname('Memo').isnull   then
              begin
                 qryKCZKP.delete;
              end else
              begin
                 with query1 do
                 begin
                  active:=false;
                  sql.Clear;
                  sql.Add('select ZKNO from KCZKP where ZKNO like '''+FY+FM+'%''');
                  sql.add('order by ZKNO');
                  active:=true;
                  if recordcount >0 then
                  begin
                    Last;
                    ZKNO:=fieldbyname('ZKNO').AsString;
                    ZKNO:=copy(ZKNO,7,5);
                    ZKNO:=inttostr(strtoint(ZKNO)+1);
                    while length(ZKNO)<5 do
                    begin
                      ZKNO:='0'+ZKNO;
                    end;
                  end else
                  begin
                    ZKNO:='00001';
                  end;
                  ZKNO :=FY+FM+ZKNO;
                  Active:=false;
                  SQL.Clear;
                 end;
                 qryKCZKP.edit;
                 qryKCZKP.FieldByName('ZKNO').Value:=ZKNO;
                 qryKCZKP.FieldByName('GSBH').Value:=main.Edit2.Text;
                 qryKCZKP.FieldByName('UserID').Value:=main.edit1.text;
                 qryKCZKP.FieldByName('UserDate').Value:=now;
                 qryKCZKP.FieldByName('YN').Value:='1';
                 UpKCZKP.apply(ukinsert);
              end;
          end;
          usmodified:
             begin
                if qryKCZKP.FieldByName('UserID').AsString=main.Edit1.Text then
                begin
                    if qryKCZKP.fieldbyname('YN').value='0'then
                    begin
                       UpKCZKP.apply(ukdelete);
                    end else
                    begin
                       qryKCZKP.edit;
                       qryKCZKP.FieldByName('userID').Value:=main.edit1.text;
                       qryKCZKP.FieldByName('userdate').Value:=now;
                       UpKCZKP.apply(ukmodify);
                       //
                    end;
                end else
                begin
                  showmessage('It is not yours, can not modify.');
                  abort;
                end;
             end;
        end;
        qryKCZKP.Next;
    end;
    //
    qryKCZKP.active:=false;
    qryKCZKP.cachedupdates:=false;
    qryKCZKP.requestlive:=false;
    qryKCZKP.active:=true;
    BD5.enabled:=false;
    BD6.enabled:=false;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TReality_Remain_Quantity_Pre.PC1Change(Sender: TObject);
begin
  if PC1.ActivePage=TS1 then
  begin
     Panel7.Visible:=true;
     Panel1.Visible:=false;
  end else
  begin
     Panel1.Visible:=true;
     Panel7.Visible:=false;
  end;
end;

procedure TReality_Remain_Quantity_Pre.DBGridEh4GetCellParams(
  Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if qryKCZKP.FieldByName('YN').value='0' then
  begin
    DBGridEh4.canvas.font.color:=clred;
  end;
end;

procedure TReality_Remain_Quantity_Pre.BD7Click(Sender: TObject);
begin
  Close;
end;

procedure TReality_Remain_Quantity_Pre.DBGridEh4DblClick(Sender: TObject);
begin
  if  qryKCZKP.Active then
  begin
    if  (qryKCZKP.recordcount>0) then
    begin
      PC1.ActivePage:=TS2;
      panel1.Visible:=true;
      panel7.Visible:=false;
    end;
  end;
end;

procedure TReality_Remain_Quantity_Pre.mnu6Click(Sender: TObject);
var bm: Tbookmark;
    bookmarklist: TBookmarkListEh;
begin
  //
  if messagedlg('Do you  want to generate Purchase Order?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    qryKCZK.disablecontrols;
    bm:=qryKCZK.getbookmark;
    bookmarklist:=DBGridEh1.selectedrows;
    if bookmarklist.count=0 then
    begin
      showmessage('Pls choose data first !');
      abort;
    end;
    try
       InsertCGNO_Pre(bm,bookmarklist);
    finally
      begin
       qryKCZK.gotobookmark(bm);
       qryKCZK.freebookmark(bm);
       qryKCZK.enablecontrols;
      end;
    end;
    qryKCZK.Active:=false;
    qryKCZK.Active:=true;
    Showmessage('Success');
  end;
  //
end;
//產生採購單
procedure TReality_Remain_Quantity_Pre.InsertCGNO_Pre(bm: Tbookmark;bookmarklist: TBookmarkListEh);
var i,j:integer;
    CGNO,BJNO,Supp_ID:string;
    USPrice,VNPrice:string;
    QUSPrice,QVNPrice:string;
    VNPrice_Round:real;
begin
   //
   Supp_ID:=qryKCZK.FieldByName('ZSBH').AsString ;
   with query1 do
   begin
     active:=false;
     sql.Clear;
     sql.Add('select CGNO from CGZL where CGNO like '+''''+FY+FM+'%'+'''');
     sql.add('order by CGNO');
     active:=true;
     if recordcount >0 then
     begin
        last;
        CGNO:=fieldbyname('CGNO').AsString;
        CGNO:=copy(CGNO,7,5);
        CGNO:=inttostr(strtoint(CGNO)+1);
        while length(CGNO)<5 do
        begin
            CGNO:='0'+CGNO;
        end;
     end else
     begin
        CGNO:='00001';
     end;
     CGNO :=FY+FM+CGNO;
     active:=false;
   end;
   //新增採購單頭檔CGZL
   with query1 do
   begin
     active:=false;
     sql.Clear;
     sql.Add('insert CGZL ');
     sql.Add('(CGNO');
     sql.Add(',GSBH');
     sql.Add(',CGLX');
     sql.Add(',ZSBH');
     sql.Add(',Memo');
     sql.Add(',USERID,USERDATE,CGDate,YN,PURPOSE) values (');
     sql.Add(' '''+CGNO+'''');
     sql.Add(','''+main.Edit2.text+'''');
     sql.Add(',''3'' ');  //Other
     sql.Add(','''+Supp_ID+'''');  //廠商代號
     sql.Add(','''+qryKCZKP.FieldByName('Memo').AsString+''' ');
     sql.Add(','''+main.edit1.Text+'''');
     sql.Add(','''+formatdatetime('yyyy/MM/dd',Ndate)+'''');
     sql.Add(','''+formatdatetime('yyyy/MM/dd',Ndate)+'''');
     sql.Add(',''1'','''+qryKCZK.FieldByName('CQDH').AsString+''')');
     execsql;
     active:=false;
   end;
   //新增採購單身檔CGZLS
   for i:=0 to bookmarklist.count-1 do
   begin
     qryKCZK.gotobookmark(pointer(bookmarklist[i]));
     qryKCZKS.Active:=false;
     qryKCZKS.Active:=true;
     if  Supp_ID<>qryKCZK.FieldByName('ZSBH').AsString then break;//至少會跑第一筆廠商不一樣
     if  ((qryKCZKS.RecordCount>0) and (qryKCZK.FieldByName('CGNO').AsString=''))   then
     begin
         USPrice:='';
         VNPrice:='';
         //20190709
         QUSPrice:='';
         QVNPrice:='';
         VNPrice_Round:=0;
         //檢查報價單
         Query1.Active:=false;
         Query1.SQL.Clear;
         Query1.SQL.Add('select *,');
         Query1.SQL.Add('       case when ((USPrice is not null) and (PayVN=1)) then');
         Query1.SQL.Add('            case when SuppEx is not null then round(USPrice*DisCount*SuppEx,0) else round(USPrice*DisCount*ErpEx,0) end');
         Query1.SQL.Add('       else VNPrice*DisCount end ERPVNPrice,');
         Query1.SQL.Add('       USPrice*DisCount as ERPUSPrice');
         Query1.SQL.Add('from(Select  top 1 CGBJS.BJNO,CGBJS.CLBH,CGBJS.USPrice,CGBJS.VNPrice,CGBJS.USERDate,CGBJS.DisCount,CGBJS.SuppEx,ZSZL.PayVN,');
         Query1.SQL.Add('             IsNull((select top 1 CWHL from CWHLS  where HLYEAR=Year(GetDate()) and HLMONTH=Month(GetDate()) and HLDay=1),0) as ErpEx');
         Query1.SQL.Add('     from CGBJS ');
         Query1.SQL.Add('left join CGBJ on CGBJ.BJNO=CGBJS.BJNO ');
         Query1.SQL.Add('left join ZSZL on ZSZL.ZSDH=CGBJ.ZSBH');
         Query1.SQL.Add('where CGBJ.GSBH='''+main.Edit2.Text+'''  and CLBH='''+qryKCZK.fieldbyname('CLBH').AsString+'''  and CGBJ.ZSBH='''+Supp_ID +''' ');
         Query1.SQL.Add('order by CGBJS.BJNO desc,CGBJS.CLBH ) CGBJS');
         Query1.Active:=true;
         if Query1.RecordCount>0 then
         begin
            BJNO:=Query1.Fieldbyname('BJNO').AsString;
            USPrice:=Query1.Fieldbyname('ERPUSPrice').AsString;
            //20200513 round VNPrice allow VNPrice_Decimal
            if (( not  Query1.FieldByName('ERPVNPrice').isnull) and  (Query1.FieldByName('ERPVNPrice').AsString<>'')) then
            begin
              VNPrice_Round:=roundto(Query1.Fieldbyname('ERPVNPrice').value,-VNPrice_Decimal);
              VNPrice:=floattostr(VNPrice_Round);
            end;
            QUSPrice:=Query1.Fieldbyname('USPrice').AsString;
            QVNPrice:=Query1.Fieldbyname('VNPrice').AsString;
         end else
         begin
            //新增
            BJNO:=CreateCGBJ(Supp_ID,qryKCZK.fieldbyname('CLBH').AsString,qryKCZK.fieldbyname('CQDH').AsString);
            if qryKCZK.fieldbyname('CQDH').AsString='VN' then VNPrice:='0' else USPrice:='0';
            if qryKCZK.fieldbyname('CQDH').AsString='VN' then QVNPrice:='0' else QUSPrice:='0';    //20190723
         end;
         Query1.Active:=false;
         //
         with query1 do
         begin
           active:=false;
           sql.Clear;
           sql.Add('insert CGZLS ');
           sql.Add('(CGNO');
           sql.Add(',CLBH');
           sql.Add(',XqQty');
           sql.Add(',Qty');
           if VNPrice<>'' then
             sql.Add(',VNPrice')
           else
             sql.Add(',USPrice');
           sql.Add(',BJNO');
           sql.Add(',YQDate');
           sql.Add(',USERID,USERDATE,YN ');
           if QVNPrice<>'' then
             sql.Add(',QVNPrice')
           else
             sql.Add(',QUSPrice');
           sql.Add(') values ');
           sql.Add('( '''+CGNO+''' ');
           sql.Add(','''+qryKCZK.fieldbyname('CLBH').AsString+''',0,0');
           if VNPrice<>'' then
             sql.Add(','+VNPrice)
           else
             sql.Add(','+USPrice);
           sql.Add(','''+BJNO+''' ');  //固定填Transfer
           sql.Add(',GetDate()+14');  //需求日期固定加14天
           sql.Add(','''+main.edit1.Text+'''');
           sql.Add(',GetDate()');
           sql.Add(',''1''');
           if QVNPrice<>'' then
             sql.Add(','+QVNPrice)
           else
             sql.Add(','+QUSPrice);
           sql.add(') ');
           //funcobj.WriteErrorLog(sql.Text);
           execsql;
           active:=false;
         end;
         //
         for j:=1 to qryKCZKS.RecordCount do
         begin
             if (qryKCZKS.FieldByName('Qty').AsString<>'0')   then
             begin
               with query1 do
               begin
                 active:=false;
                 sql.Clear;
                 sql.Add('insert CGZLSS ');
                 sql.Add('(CGNO');
                 sql.Add(',CLBH');
                 sql.Add(',ZLBH');   //RY
                 sql.Add(',XXCC');
                 sql.Add(',Stage');
                 sql.Add(',YQDate');
                 sql.Add(',Qty');
                 sql.Add(',CLSL');
                 sql.Add(',USERID,USERDATE,YN) values (');
                 sql.Add(' '''+CGNO+''' ');
                 sql.Add(','''+qryKCZK.fieldbyname('CLBH').AsString+'''');
                 sql.Add(','''+qryKCZK.fieldbyname('ZKBH').AsString+'''');
                 sql.Add(','''+qryKCZKS.fieldbyname('Size').AsString+''' ');
                 sql.Add(',''PREO'' ');
                 sql.Add(',GetDate()+14');  //需求日期固定加14天
                 sql.Add(','+qryKCZKS.fieldbyname('Qty').AsString+'');
                 sql.Add(','+qryKCZKS.fieldbyname('Qty').AsString+'');
                 sql.Add(','''+main.edit1.Text+'''');
                 sql.Add(',GetDate()');
                 sql.Add(',''1'')');
                 execsql;
                 active:=false;
               end;
             end;
             qryKCZKS.next;
         end;
         //更新KCZK.CGNO
         with query1 do
         begin
           active:=false;
           sql.Clear;
           sql.add('Update KCZK set CGNO='''+CGNO+''' where  ZKBH='''+qryKCZK.fieldbyname('ZKBH').AsString+''' and CLBH='''+qryKCZK.fieldbyname('CLBH').AsString+'''  ');
           execsql;
         end;
     end;//CGZLS  明細
     //
   end;
   //
   with query1 do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('Update CGZLS set Qty=CGZLSS.Qty, XqQty=CGZLSS.Qty');
     SQL.Add('from (');
     SQL.Add('Select CGNO ,CLBH,Sum(Qty) as Qty');
     SQL.Add('from CGZLSS');
     SQL.Add('where CGNO='''+CGNO+''' ');
     SQL.Add('Group by CGNO,CLBH ) CGZLSS');
     SQL.Add('where CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS.CLBH');
     //funcObj.WriteErrorLog(sql.Text);
     Execsql;
     Close;
   end;
   //
   if PurOther<>nil then
   begin
     PurOther.show;
     PurOther.windowstate:=wsmaximized;
   end else
   begin
     PurOther:=TPurOther.create(self);
     PurOther.show;
     main.FormLanguage(Pointer(PurOther),PurOther.Name);
   end;
   if (PurOther.BB5.Enabled=true) or (PurOther.BD5.Enabled=true)  then
   begin
     showmessage('Pls save data first ');
     abort;
   end;
   PurOther.Edit1.Text:=CGNO;
   PurOther.Check.Checked:=false;
   PurOther.Button1Click(nil);
   //
end;


//新增報價資料
function TReality_Remain_Quantity_Pre.CreateCGBJ(ZSBH:string;CLBH:String;CQDH:String):string;
var BJNO:string;
begin
  //20151022先檢查是否已存在廠商
  BJNO:='';
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('');
    sql.Add('Select BJNO from CGBJ where ZSBH='''+ZSBH+'''  and BJNO like '''+FY+'%'' AND GSBH='''+main.Edit2.Text+''' '); //當年度
    Active:=true;
    if Recordcount>0  then
    begin
      BJNO:=FieldByName('BJNO').AsString;
    end;
    active:=false;
  end;
  //
  if BJNO='' then
  begin
    with query1 do    //計算領料單流水號
    begin
      active:=false;
      sql.Clear;
      sql.Add('select BJNO from CGBJ where BJNO like '+''''+FY+FM+'%'+'''');
      sql.add('order by BJNO');
      active:=true;
      if recordcount >0 then
      begin
        last;
        BJNO:=fieldbyname('BJNO').AsString;
        BJNO:=copy(BJNO,7,5);
        BJNO:=inttostr(strtoint(BJNO)+1);
        while length(BJNO)<5 do
        begin
          BJNO:='0'+BJNO;
        end;
      end
      else
      begin
        BJNO:='00001';
      end;
      BJNO :=FY+FM+BJNO;
      active:=false;
    end;
    //主檔報價
    with Query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQl.Add('Insert CGBJ (BJNO, GSBH, ZSBH, USERID, USERDATE, CFMID,YN) ');
      SQL.Add('Values ('''+BJNO+''','''+main.Edit2.Text+''','''+ZSBH+''','''+main.Edit1.Text+''',GetDate(),''NO'',''1'') ');
      ExecSQL();
    end;
  end;
  with Query1 do
  begin
    //明細報價
    Active:=false;
    SQL.Clear;
    if CQDH='VN' then
      SQL.Add('Insert CGBJS (BJNO, CLBH, VNPrice, UserID, UserDate,Discount, BJLX, YN)')
    else
      SQL.Add('Insert CGBJS (BJNO, CLBH, USPrice, UserID, UserDate, Discount, BJLX, YN)');
    SQL.Add('Values ('''+BJNO+''','''+CLBH+''',0,'''+main.Edit1.Text+''',GetDate(),''1'',''1'',''1'') ');
    ExecSQL();
  end;
  result:=BJNO;

end;

procedure TReality_Remain_Quantity_Pre.BDT5Click(Sender: TObject);
begin
  if qryKCZK.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end else
  begin
    Reality_Remain_Quantity_Pre_Print:=TReality_Remain_Quantity_Pre_Print.Create(nil);
    Reality_Remain_Quantity_Pre_Print.quickrep1.prepare;
    Reality_Remain_Quantity_Pre_Print.Qpage1.caption:=inttostr(Reality_Remain_Quantity_Pre_Print.quickrep1.QRPrinter.pagecount);
    Reality_Remain_Quantity_Pre_Print.quickrep1.preview;
    Reality_Remain_Quantity_Pre_Print.Free;
  end;
end;

procedure TReality_Remain_Quantity_Pre.BDT6Click(Sender: TObject);
begin
  if qryKCZK.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end else
  begin
    Reality_Remain_Quantity_Pre_Print2:=TReality_Remain_Quantity_Pre_Print2.Create(nil);
    Reality_Remain_Quantity_Pre_Print2.quickrep1.prepare;
    Reality_Remain_Quantity_Pre_Print2.Qpage1.caption:=inttostr(Reality_Remain_Quantity_Pre_Print2.quickrep1.QRPrinter.pagecount);
    Reality_Remain_Quantity_Pre_Print2.quickrep1.preview;
    Reality_Remain_Quantity_Pre_Print2.Free;
  end;
end;

procedure TReality_Remain_Quantity_Pre.bbt7Click(Sender: TObject);
begin
    Reality_Remain_Quantity_Pre_YGNO:=TReality_Remain_Quantity_Pre_YGNO.Create(self);
    Reality_Remain_Quantity_Pre_YGNO.Show;
end;

end.
