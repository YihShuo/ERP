unit Reality_Remain_Quantity1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, GridsEh, DBGridEh, DB,
  DBTables,comobj, Menus;

type
  TReality_Remain_Quantity = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    bbt6: TBitBtn;
    Panel2: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit2: TEdit;
    Edit3: TEdit;
    CheckBox1: TCheckBox;
    ZKBHEdit: TEdit;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
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
    Edit1: TEdit;
    Label1: TLabel;
    RemainQtyCK: TCheckBox;
    CKmine: TCheckBox;
    qryCGKCUSE: TQuery;
    qryCGKCUSEBUYNO: TStringField;
    qryCGKCUSEZLBH: TStringField;
    qryCGKCUSEQty: TCurrencyField;
    DSCGKCUSE: TDataSource;
    Label3: TLabel;
    Edit4: TEdit;
    Label6: TLabel;
    Edit5: TEdit;
    Label7: TLabel;
    Edit6: TEdit;
    PopupMenu1: TPopupMenu;
    mnu1: TMenuItem;
    mnu3: TMenuItem;
    Chk_Det: TCheckBox;
    qryKCZKLQty: TFloatField;
    mnu4: TMenuItem;
    N1: TMenuItem;
    mnu5: TMenuItem;
    qryCGKCUSEKHPO: TStringField;
    qryCGKCUSEPairs: TIntegerField;
    qryCGKCUSECLBH: TStringField;
    qryCGKCUSEYWPM: TStringField;
    PopupMenu2: TPopupMenu;
    Excel1: TMenuItem;
    Panel4: TPanel;
    DBGridEh2: TDBGridEh;
    Splitter1: TSplitter;
    Panel5: TPanel;
    Panel6: TPanel;
    DBGridEh3: TDBGridEh;
    qryCGKCUSESize: TStringField;
    BC2: TBitBtn;
    BC3: TBitBtn;
    BC4: TBitBtn;
    BC5: TBitBtn;
    BC6: TBitBtn;
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
    qryKCZKZKNO: TStringField;
    Label8: TLabel;
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
    procedure Chk_DetClick(Sender: TObject);
    procedure SetClick(Sender: TObject);
    procedure mnu5Click(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure BB7Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure qryKCZKSAfterOpen(DataSet: TDataSet);
    procedure BC2Click(Sender: TObject);
    procedure BC3Click(Sender: TObject);
    procedure BC4Click(Sender: TObject);
    procedure BC6Click(Sender: TObject);
    procedure BC5Click(Sender: TObject);
    procedure DBGridEh3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    NDate:TDate;
    ClickColumnIndex:integer;
    { Private declarations }
    procedure InsertKCZKS(ZKBH:string;KCZKSMemo:String);
  public
    { Public declarations }
  end;

var
  Reality_Remain_Quantity: TReality_Remain_Quantity;

implementation

uses Material1, main1, MaterialOrder1, untClipboard, FunUnit;

{$R *.dfm}

procedure TReality_Remain_Quantity.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if BB5.enabled  then
  begin
    messagedlg('You have to save data Report first.',mtwarning,[mbyes],0);
    action:=canone;
  end else
    action:=cafree;
end;

procedure TReality_Remain_Quantity.FormDestroy(Sender: TObject);
begin
  Reality_Remain_Quantity:=nil;
end;

procedure TReality_Remain_Quantity.BB1Click(Sender: TObject);
begin
  panel2.Visible:=true;
end;

procedure TReality_Remain_Quantity.Button1Click(Sender: TObject);
begin
  with qryKCZK do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select KCZK.ZKNO,KCZK.ZKBH,KCZK.GSBH,KCZK.CLBH,clzl.ywpm,clzl.DWBH,KCZK.Qty,KCZK.LQty , ');
    sql.add('       KCZK.Memo,KCZK.UserID,KCZK.UserDate,KCZK.YN');
    sql.Add('from KCZK');
    sql.Add('left join clzl on KCZK.CLBH=clzl.cldh');
    sql.add('where KCZK.ZKNO=''ZZZZZZZZZZ'' and  KCZK.GSBH='''+main.Edit2.Text+''' ');
    if ZKBHEdit.Text<>'' then
    sql.add(' and KCZK.ZKBH like '''+ZKBHEdit.Text+'%'' ');
    if CheckBox1.Checked=true then
    begin
      sql.add(' and  convert(smalldatetime,convert(varchar,KCZK.USERDATE,111)) between ');
      sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    IF edit2.Text<>'' then
      SQL.Add(' AND KCZK.CLBH LIKE '''+EDIT2.Text+'%''');
    if edit3.Text<>'' then
      sql.Add('and CLZL.YWPM like ''%'+edit3.Text+'%''');
    if Edit1.Text<>'' then
      sql.add('and KCZK.USERID='''+Edit1.Text+''' ');
    if ((Edit4.Text<>'') or  (edit5.Text<>'')) then
    begin
      sql.add('and KCZK.ZKBH in (select ZKBH from CGKCUSES,DDZL where CGKCUSES.ZLBH=DDZL.ddbh and CGKCUSES.GSBH=DDZL.GSBH ');
      if Edit4.Text<>'' then
      sql.Add(' and CGKCUSES.ZLBH like  '''+EDIT4.Text+'%''');
      if edit5.Text<>'' then
      sql.Add(' and DDZL.BUYNO like '''+EDIT5.Text+'%''');
      sql.Add(') ');
    end;
    if edit6.Text<>'' then
      sql.Add('and KCZK.Memo like ''%'+EDIT6.Text+'%''');
    if CKmine.Checked=true then
      sql.Add('and KCZK.USERID='''+main.Edit1.Text+''' ');
    if RemainQtyCK.Checked=false then
      sql.add('and KCZK.LQty >0 ');
    sql.Add('order by KCZK.LQty desc, KCZK.CLBH asc');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  Bb4.Enabled:=true;
  if Chk_Det.Checked=true then
    qryCGKCUSE.Active:=true;
  qryKCZKS.Active:=true;  
end;

procedure TReality_Remain_Quantity.BB2Click(Sender: TObject);
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
  DBGridEh1.columns[6].ReadOnly:=true;
end;

procedure TReality_Remain_Quantity.BB4Click(Sender: TObject);
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
  DBGridEh1.columns[6].ReadOnly:=true;
end;

procedure TReality_Remain_Quantity.BB6Click(Sender: TObject);
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
end;

procedure TReality_Remain_Quantity.FormCreate(Sender: TObject);
var i:integer;
begin
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
  dtp1.Date:=now-30;
  DTP2.Date:=now;
end;

procedure TReality_Remain_Quantity.DBGridEh1EditButtonClick(
  Sender: TObject);
begin
  if DBGridEh1.selectedfield.fieldname='CLBH' then
  begin
    if  Messagedlg(Pchar('Select material from list material or order?'),mtInformation,[mbNo,mbYes],0)=mrYes then
    begin
      Material:=TMaterial.create(self);
      Material.show;
    end else
    begin
      MaterialOrder:=TMaterialOrder.create(self);
      MaterialOrder.show;
    end;
  end;
end;

procedure TReality_Remain_Quantity.BB3Click(Sender: TObject);
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
procedure TReality_Remain_Quantity.InsertKCZKS(ZKBH:string;KCZKSMemo:String);
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
procedure TReality_Remain_Quantity.BB5Click(Sender: TObject);
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
    qryCGKCUSE.Active:=false;
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
                 qryKCZK.fieldbyname('ZKNO').Value:='ZZZZZZZZZZ';
                 qryKCZK.fieldbyname('ZKBH').Value:=ZKBH;
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
    if Chk_Det.Checked=true then
       qryCGKCUSE.Active:=true;
    BB5.enabled:=false;
    BB6.enabled:=false;
    DBGridEh1.columns[2].ButtonStyle:=cbsnone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TReality_Remain_Quantity.DBGridEh1GetCellParams(Sender: TObject;
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

procedure TReality_Remain_Quantity.bbt6Click(Sender: TObject);
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
            if qryCGKCUSE.Active=true then
            begin
              qryCGKCUSE.First;
              for k:=1 to qryCGKCUSE.RecordCount do
              begin
                RY:=RY+qryCGKCUSE.FieldByName('ZLBH').AsString+'('+qryCGKCUSE.FieldByName('Qty').AsString+')'+',';
                qryCGKCUSE.Next;
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

procedure TReality_Remain_Quantity.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if qryKCZK.FieldByName('LQty').value=0 then
  begin
     DBGridEh1.canvas.Brush.Color:=clBtnFace;
     DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
end;

procedure TReality_Remain_Quantity.Chk_DetClick(Sender: TObject);
begin
  if Chk_Det.Checked then
  begin
    if qryKCZK.Active=true then qryCGKCUSE.Active:=true;
    DBGridEh2.Visible:=true;
  end
  else
  begin
    qryCGKCUSE.Active:=false;
    DBGridEh2.Visible:=false;
  end;
end;

procedure TReality_Remain_Quantity.SetClick(Sender: TObject);
var
  i: integer;
  bm: Tbookmark;
  bookmarklist: TBookmarkListEh;
  SetVal,FieldName: string;
begin
  if qryKCZK.RequestLive=false then exit;
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
procedure TReality_Remain_Quantity.mnu5Click(Sender: TObject);
var
  CbBuf: PChar;
  BufSize: Integer;
  Handle: THandle;
  Text:WideString;
  rowList,colList:TStringlist;
  i,j:integer;
begin
 try
   if qryKCZK.RequestLive=false then exit;
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

procedure TReality_Remain_Quantity.DBGridEh1CellClick(Column: TColumnEh);
begin
  ClickColumnIndex:=Column.Index;
end;

procedure TReality_Remain_Quantity.BB7Click(Sender: TObject);
begin
  close();
end;

procedure TReality_Remain_Quantity.Excel1Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
   if  qryCGKCUSE.active  then
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
        for   i:=0   to   qryCGKCUSE.fieldcount-1   do
        begin
          eclApp.Cells(1,i+1):=qryCGKCUSE.fields[i].FieldName;
        end;

        qryCGKCUSE.First;
        j:=2;
        while   not   qryCGKCUSE.Eof   do
        begin
          for   i:=0   to  qryCGKCUSE.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=qryCGKCUSE.Fields[i].Value;
          end;
          qryCGKCUSE.Next;
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

procedure TReality_Remain_Quantity.qryKCZKSAfterOpen(DataSet: TDataSet);
begin
  BC2.Enabled:=true;
  BC3.Enabled:=true;
  BC4.Enabled:=true;
end;

procedure TReality_Remain_Quantity.BC2Click(Sender: TObject);
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

procedure TReality_Remain_Quantity.BC3Click(Sender: TObject);
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

procedure TReality_Remain_Quantity.BC4Click(Sender: TObject);
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

procedure TReality_Remain_Quantity.BC6Click(Sender: TObject);
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

procedure TReality_Remain_Quantity.BC5Click(Sender: TObject);
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
                        SQL.Add('select KCZKS.ZKBH,KCZKS.SIZE,IsNull(CGKCUSE.Qty,0) as UseQty,Round(KCZKS.Qty-IsNull(CGKCUSE.Qty,0),1) as LQty from KCZKS');
                        SQL.Add('left join (');
                        SQL.Add('Select '''+qryKCZK.FieldByName('ZKBH').Value+''' as ZKBH,CGKCUSES.SIZE,Sum(CGKCUSES.Qty) as Qty from CGKCUSES');
                        SQL.Add('where CGKCUSES.ZKBH='''+qryKCZK.FieldByName('ZKBH').Value+''' ');
                        SQL.Add('Group by CGKCUSES.SIZE ) CGKCUSE on KCZKS.ZKBH=CGKCUSE.ZKBH and KCZKS.SIZE=CGKCUSE.SIZE ');
                        SQL.Add('where KCZKS.ZKBH='''+qryKCZK.FieldByName('ZKBH').Value+''' ) A');
                        SQL.Add('where  A.ZKBH=KCZKS.ZKBH and A.SIZE=KCZKS.SIZE');
                        //funcObj.WriteErrorLog(sql.Text);
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

procedure TReality_Remain_Quantity.DBGridEh3GetCellParams(Sender: TObject;
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

procedure TReality_Remain_Quantity.DBGridEh3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if qryKCZK.FieldByName('LQty').value=0 then
  begin
     DBGridEh3.canvas.Brush.Color:=clBtnFace;
     DBGridEh3.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
end;

end.
