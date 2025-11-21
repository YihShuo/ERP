{
  20130930 author:weston
  同塔廠出材料單用
  使用表格
  CCLD(出材料單主檔)
  CCLDS(出材料單明細)
}
unit DeliverMatDTp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls,
  Grids, DBGrids, DB, DBTables, ComCtrls;

type
  TDeliverMatDT = class(TForm)
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
    Panel3: TPanel;
    DBGrid2: TDBGrid;
    Panel4: TPanel;
    BD2: TBitBtn;
    BD3: TBitBtn;
    UpMas: TUpdateSQL;
    DS1: TDataSource;
    CCLDMas: TQuery;
    CCLDDet: TQuery;
    UpDet: TUpdateSQL;
    DS2: TDataSource;
    Panel2: TPanel;
    Label11: TLabel;
    DDBHEdit: TEdit;
    Label3: TLabel;
    DTP1: TDateTimePicker;
    Label4: TLabel;
    DTP2: TDateTimePicker;
    Check: TCheckBox;
    QryBtn: TButton;
    tmpQuery: TQuery;
    DBGrid1: TDBGrid;
    BD1: TBitBtn;
    ExeQuery: TQuery;
    BBT5: TBitBtn;
    CLMCCombo: TComboBox;
    CSHJSCombo: TComboBox;
    Label1: TLabel;
    CLMCEdit: TEdit;
    Label2: TLabel;
    CCLDNOEdit: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure QryBtnClick(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure CCLDMasBeforeScroll(DataSet: TDataSet);
    procedure BB3Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BBT1Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BD1Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure CCLDMasAfterOpen(DataSet: TDataSet);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure CLMCComboExit(Sender: TObject);
    procedure CSHJSComboExit(Sender: TObject);
    procedure BBT5Click(Sender: TObject);
  private
    UserAction:string;
    { Private declarations }
    Function GetCCLDNO():string;
    Function GetDBServerDate():TDate;
    Function InsertCCLDS(CCLDNO,DDBH:string):boolean;
    procedure GetCSHJS(DDBH:string);
  public
    { Public declarations }

  end;

var
  DeliverMatDT: TDeliverMatDT;

implementation
  uses main1,SalesOrder_DDZL,BDepartment,DeliverMatDT_Print,FunUnit;
{$R *.dfm}

procedure TDeliverMatDT.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if UserAction<>'' then
  begin
    messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
    Action:=caNone;
  end else
  begin
    if DDZLForm<>nil then
    begin
      DDZLForm.Free;
      DDZLForm:=nil;
    end;
    if BDepForm<>nil then
    begin
      BDepForm.Free;
      BDepForm:=nil;
    end;
    DeliverMatDT.free;
    DeliverMatDT:=nil;
  end;
end;

procedure TDeliverMatDT.FormDestroy(Sender: TObject);
begin
  DeliverMatDT:=nil;
end;

procedure TDeliverMatDT.FormCreate(Sender: TObject);
begin
  //CCLDMas.Active:=true;
  //CCLDDet.Active:=true;
  DTP1.Date:=Date()-15;
  DTP2.Date:=Date();
end;

procedure TDeliverMatDT.BB1Click(Sender: TObject);
begin
 Panel2.Visible:=true;
end;

procedure TDeliverMatDT.QryBtnClick(Sender: TObject);
begin
  //
  UserAction:='';
  with CCLDMas do
    begin
      active:=false;
      sql.Clear;
      sql.add('select CCLD.*,');
      sql.add('(select top 1 B1.DepName from BDepartment B1 where (CCLD.LCBM=B1.ID)) as LCBMNM,');
      sql.add('(select top 1 B2.DepName from BDepartment B2 where (CCLD.SCBM=B2.ID)) as SCBMNM,');
      sql.add('(select top 1 B3.DepName from BDepartment B3 where (CCLD.SYBM=B3.ID)) as SYBMNM');
      sql.add('from CCLD ');
      sql.add('where (CCLD.DDBH like '+''''+DDBHEdit.Text+'%'+''')');
      If CLMCEdit.Text<>'' then
        sql.add('    and (CCLD.CLMC like '+'''%'+CLMCEdit.Text+'%'+''')');
      If CCLDNOEdit.Text<>'' then
        sql.add('    and (CCLD.CCLDNO like '+''''+CCLDNOEdit.Text+'%'+''')');
      sql.add('      and (SubString(CCLD.CCLDNO,1,8)>='+FormatDateTime('YYYYMMDD',DTP1.Date)+') ');
      sql.add('      and (SubString(CCLD.CCLDNO,1,8)<='+FormatDateTime('YYYYMMDD',DTP2.Date)+') ');
      if Check.Checked then
         sql.Add('   and (USERID='''+main.edit1.text+''')  ');
      sql.Add(' order by CCLDNO desc');
      active:=true;
    end;
  //
  CCLDDet.Active:=true;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  BB5.enabled:=false;
  BB6.enabled:=false;
  Panel2.Visible:=false;
end;

procedure TDeliverMatDT.BB2Click(Sender: TObject);
begin

  with CCLDMas do
    begin
      requestlive:=true;
      cachedupdates:=true;
      insert;
      FieldByName('CCLDNO').AsString:='AUTO';
      FieldByName('GSBH').AsString:='AUTO';
    end;
  BB3.Enabled:=false;
  BB4.Enabled:=false;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  dbgrid1.columns[2].ReadOnly:=false;
  dbgrid1.columns[1].ButtonStyle:=cbsEllipsis;
  dbgrid1.columns[3].ButtonStyle:=cbsEllipsis;
  dbgrid1.columns[4].ButtonStyle:=cbsEllipsis;
  dbgrid1.columns[5].ButtonStyle:=cbsEllipsis;
  dbgrid1.SelectedField:=dbgrid1.Fields[0];
  UserAction:='INSERT';
end;

procedure TDeliverMatDT.BB6Click(Sender: TObject);
begin
  UserAction:='';
  with CCLDMas do
    begin
      active:=false;
      requestlive:=false;
      cachedupdates:=false;
      active:=true;
    end;
  //
  CLMCCombo.Visible := False;
  CSHJSCombo.Visible := False;
  bb2.Enabled:=true;
  bb3.Enabled:=true;
  bb4.Enabled:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
  BB5.enabled:=false;
  BB6.enabled:=false;
  dbgrid1.columns[2].ReadOnly:=true;
  dbgrid1.columns[1].ButtonStyle:=cbsNone;
  dbgrid1.columns[3].ButtonStyle:=cbsNone;
  dbgrid1.columns[4].ButtonStyle:=cbsNone;
  dbgrid1.columns[5].ButtonStyle:=cbsNone;
end;
//取得自動編號
Function TDeliverMatDT.GetCCLDNO():string;
begin
  with tmpQuery do
  begin
    Active:=false;
    sql.Clear;
    sql.Add('select top 1 SubString(CCLDNO,10,3) as SerialNO from CCLD where SUBSTRING(CCLDNO,1,8)='''+FormatDateTime('YYYYMMDD',Date())+''' order by CCLDNO desc');
    Active:=true;
  end;
  if tmpQuery.RecordCount>0 then
    result:=FormatDateTime('YYYYMMDD',Date())+'-'+Format('%.3d', [strtoint(tmpQuery.FieldByName('SerialNO').AsString)+1] )
  else
    result:=FormatDateTime('YYYYMMDD',Date())+'-001';
  tmpQuery.Active:=true;
end;
//取得DBServer日期
Function TDeliverMatDT.GetDBServerDate():TDate;
begin
  with tmpQuery do
  begin
    Active:=false;
    sql.Clear;
    sql.Add('select getdate() as NDate');
    Active:=true;
  end;
  if tmpQuery.RecordCount>0 then
    result:=tmpQuery.FieldByName('NDate').Value
  else
    result:=Date();
  tmpQuery.Active:=true;
end;
//新增資料到CCLDS
Function TDeliverMatDT.InsertCCLDS(CCLDNO,DDBH:string):boolean;
var i:integer;
begin
  with tmpQuery do
  begin
    Active:=false;
    sql.Clear;
    sql.Add('SELECT CC from DDZLS where DDBH='''+DDBH+''' order by CC');
    Active:=true;
  end;
  for i:=1 to tmpQuery.RecordCount do
  begin

     with ExeQuery do
     begin
       Active:=false;
       sql.Clear;
       sql.Add('Insert into CCLDS (CCLDNO,DDBH,CC,Qty,Package,YN,USERDATE,USERID) Values('''+CCLDNO+''','''+DDBH+''','''+tmpQuery.FieldByName('CC').AsString+''',0,0,''1'',getDate(),'''+main.edit1.text+''')');
       ExecSQL;
     end;
     tmpQuery.Next;
  end;
  result:=true;
end;
//取得回轉數
procedure TDeliverMatDT.GetCSHJS(DDBH:string);
begin
  with tmpQuery do
  begin
    Active:=false;
    sql.Clear;
    //修正迴轉數只有兩碼 20131209
    sql.Add('select SubString(DDBH,len('''+DDBH+''')+2,LEN(DDBH)-len('''+DDBH+''')-1) from SMDD where (SubString(DDBH,1,len('''+DDBH+''')) ='''+DDBH+''') and (len('''+DDBH+''')<(LEN(DDBH)-2)) group by SubString(DDBH,len('''+DDBH+''')+2,LEN(DDBH)-len('''+DDBH+''')-1)');
    //sql.Add('select RIGHT(DDBH, 3) from SMDD where (SubString(DDBH,1,len('''+DDBH+''')) ='''+DDBH+''') and (len('''+DDBH+''')<LEN(DDBH)) group by RIGHT(DDBH, 3)');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  CSHJSCombo.Clear;
  while not tmpQuery.Eof do
  begin
    CSHJSCombo.Items.Add(tmpQuery.Fields[0].AsString);
    tmpQuery.Next;
  end;
  tmpQuery.Active:=false;
end;
procedure TDeliverMatDT.BB5Click(Sender: TObject);
  //出材料類別
  function GetLB(CLMC:string):string;
  var i,index:integer;
  begin
    index:=6;
    for i:=0 to CLMCCombo.Items.Count-1 do
      if CLMC=CLMCCombo.Items[i] then
      begin
        index:=i;
        break;
      end;
    if index<=2 then
      result:='1'
    else if index<=5 then
      result:='2'
    else
      result:='0';
  end;
var i:integer;
    AlertMsg:string;
begin
  try
    //新增檢查欄位
    if UserAction='INSERT' then
      if CCLDMas.FieldByName('DDBH').isnull then
      begin
        Showmessage('Khong chon sao chep muc tieu DDBH!');
        exit;
      end;
    //
    CLMCCombo.Visible := False;
    CSHJSCombo.Visible := False;
    //
    AlertMsg:=''; //提示非自建資料不能刪除
    UserAction:='';
    CCLDMas.first;
    for i:=1 to CCLDMas.RecordCount do
    begin
      case CCLDMas.updatestatus of
        usinserted:
        begin
            CCLDMas.Edit;
            CCLDMas.FieldByName('CCLDNO').AsString:=GetCCLDNO();
            CCLDMas.FieldByName('LB').AsString:=GetLB(CCLDMas.FieldByName('CLMC').AsString);
            CCLDMas.FieldByName('GSBH').AsString:=main.edit2.text;
            CCLDMas.FieldByName('USERID').AsString:=main.edit1.text;
            CCLDMas.FieldByName('USERDATE').value:=Date();//GetDBServerDate();
            CCLDMas.FieldByName('YN').AsString:='1';
            upMas.apply(ukinsert);
            //
            InsertCCLDS(CCLDMas.FieldByName('CCLDNO').AsString,CCLDMas.FieldByName('DDBH').AsString);
        end;
        usmodified:
        begin
          if (CCLDMas.fieldbyname('UserID').AsString=main.edit1.text) and (CCLDMas.fieldbyname('UserDate').Value>=Date()-3) then
          begin
            if CCLDMas.fieldbyname('YN').AsString='0'then
            begin
                with tmpQuery do
                begin
                    active:=false;
                    sql.Clear;
                    sql.add('insert into BDelRec ');
                    sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                    sql.add('values ('+''''+'CCLD'+''''+','+''''+CCLDMas.fieldbyname('DDBH').AsString+'-'+CCLDMas.fieldbyname('CLMC').AsString+'''');
                    sql.add(','+''''+''+''''+','+''''+CCLDMas.fieldbyname('USERID').AsString+''''+',');
                    sql.add(''''+main.Edit1.Text+''''+',getdate())');
                    execsql;
                    active:=false;
                end;
                //先刪除名細
                with ExeQuery do
                begin
                    active:=false;
                    sql.Clear;
                    sql.add('Delete From CCLDS where CCLDNO='''+CCLDMas.fieldbyname('CCLDNO').AsString+''' and DDBH='''+CCLDMas.fieldbyname('DDBH').AsString+'''');
                    execsql;
                    active:=false;
                end;
                //明細有刪除成功才刪除主檔
                if ExeQuery.RowsAffected>0 then upMas.apply(ukdelete);
            end else
            begin
                CCLDMas.Edit;
                CCLDMas.FieldByName('LB').AsString:=GetLB(CCLDMas.FieldByName('CLMC').AsString);
                CCLDMas.FieldByName('GSBH').AsString:=main.edit2.text;
                CCLDMas.FieldByName('USERID').AsString:=main.edit1.text;
                CCLDMas.FieldByName('USERDATE').value:=Date();//GetDBServerDate();
                upMas.apply(ukModify);
            end;
          end else
          begin
           if (CCLDMas.fieldbyname('UserID').AsString=main.edit1.text) then
             AlertMsg:='Date > 3, can not modify.'
           else
             AlertMsg:='It is not yours, can not modify.';

          end;
        end;
        usDeleted:
        begin

        end;
      end;
      //
      CCLDMas.Next;
    end;
    if AlertMsg<>'' then Showmessage(AlertMsg);
    CLMCCombo.Visible:=false;
    BB2.Enabled:=true;
    BB3.Enabled:=true;
    BB4.Enabled:=true;
    BB5.enabled:=false;
    BB6.enabled:=false;
    dbgrid1.columns[2].ReadOnly:=true;
    dbgrid1.columns[1].ButtonStyle:=cbsNone;
    dbgrid1.columns[3].ButtonStyle:=cbsNone;
    dbgrid1.columns[4].ButtonStyle:=cbsNone;
    dbgrid1.columns[5].ButtonStyle:=cbsNone;
    //
    with CCLDMas do
    begin
      active:=false;
      requestlive:=false;
      cachedupdates:=false;
      active:=true;
    end;
  except
    on E:Exception do
      Messagedlg('Have wrong, can not save data!'+E.Message,mtwarning,[mbyes],0);
  end;
end;

procedure TDeliverMatDT.DBGrid1EditButtonClick(Sender: TObject);
begin
  with DBGrid1 do
  begin
    if Selectedfield.fieldname='DDBH' then
    begin
      //修改部允許變更訂單編號欄位
      if CCLDMas.FieldByName('CCLDNO').AsString='AUTO' then
      begin
        if DDZLForm=nil then DDZLForm:=TDDZLForm.create(self);
        DDZLForm.SetParentQuery(CCLDMas,'DDBH');
        DDZLForm.ShowModal;
      end;
    end else if Selectedfield.fieldname='LCBMNM' then
    begin
        if BDepForm=nil then BDepForm:=TBDepForm.create(self);
        BDepForm.SetParentQuery(CCLDMas,'LCBM');
        BDepForm.ShowModal;
    end else if Selectedfield.fieldname='SCBMNM' then
    begin
        if BDepForm=nil then  BDepForm:=TBDepForm.create(self);
        BDepForm.SetParentQuery(CCLDMas,'SCBM');
        BDepForm.ShowModal;
    end else if Selectedfield.fieldname='SYBMNM' then
    begin
        if BDepForm=nil then BDepForm:=TBDepForm.create(self);
        BDepForm.SetParentQuery(CCLDMas,'SYBM');
        BDepForm.ShowModal;
    end else if Selectedfield.fieldname='CSHJS' then
    begin
    end;
  end;
end;

procedure TDeliverMatDT.BB4Click(Sender: TObject);
begin
  with CCLDMas do
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
    end;
  BB2.Enabled:=false;
  BB3.Enabled:=false;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  dbgrid1.columns[2].ReadOnly:=false;
  dbgrid1.columns[3].ButtonStyle:=cbsEllipsis;
  dbgrid1.columns[4].ButtonStyle:=cbsEllipsis;
  dbgrid1.columns[5].ButtonStyle:=cbsEllipsis;
  dbgrid1.SelectedField:=dbgrid1.Fields[0];
  UserAction:='MODIFY';
end;

procedure TDeliverMatDT.CCLDMasBeforeScroll(DataSet: TDataSet);
begin
   if UserAction='INSERT'  then Abort;
end;

procedure TDeliverMatDT.BB3Click(Sender: TObject);
begin
    with CCLDMas do
      begin  
        if fieldbyname('USERID').value=main.edit1.Text then
          begin
            requestlive:=true;
            cachedupdates:=true;
            edit;
            fieldbyname('YN').AsString:='0';
          end
          else
            begin
              showmessage('It is not yours,can not delete.');
            end;
      end;
  BB2.Enabled:=false;
  BB4.Enabled:=false;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  UserAction:='DELETE';
end;

procedure TDeliverMatDT.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var i:integer;
begin
  //
   if CCLDMas.FieldByName('YN').value='0' then
    begin
      dbgrid1.canvas.font.color:=clred;
      dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
    end;

   if (CCLDMas.FieldByName('DDBH').isnull) or (CCLDMas.FieldByName('CCLDNO').AsString='AUTO') then
    begin
      dbgrid1.canvas.font.color:=clLime;
      dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
    end;

  //新增或編輯狀態
  if (UserAction='INSERT') or (UserAction='MODIFY') then
  begin
    if (gdFocused in State) then
    begin
      if (Column.Field.FieldName = 'CLMC') then
      with CLMCCombo do
      begin
        Left := Rect.Left + DBGrid1.Left + 2;
        Top := Rect.Top + DBGrid1.Top + 2;
        Width := Rect.Right - Rect.Left;
        Width := Rect.Right - Rect.Left;
        Height := Rect.Bottom - Rect.Top;
        //固定幾個材料名稱
        for i:=0 to items.Count-1 do
        begin
          if items[i]=CCLDMas.FieldByName('CLMC').AsString then
          begin
            itemindex:=i;
            break;
          end;
        end;
        //
        Visible := True;
      end;
      //
      if (Column.Field.FieldName = 'CSHJS') and  (CCLDMas.FieldByName('DDBH').isnull=false) then
      with CSHJSCombo do
      begin
        Left := Rect.Left + DBGrid1.Left + 2;
        Top := Rect.Top + DBGrid1.Top + 2;
        Width := Rect.Right - Rect.Left;
        Width := Rect.Right - Rect.Left;
        Height := Rect.Bottom - Rect.Top;
        //
        GetCSHJS(CCLDMas.FieldByName('DDBH').AsString);
        //固定幾個材料名稱
        for i:=0 to items.Count-1 do
        begin
          if items[i]=CCLDMas.FieldByName('CSHJS').AsString then
          begin
            itemindex:=i;
            break;
          end;
        end;
        //
        Visible := True;
      end;
    end
  end;
end;

procedure TDeliverMatDT.BBT1Click(Sender: TObject);
begin
  if CCLDMas.Active=true then CCLDMas.First;
end;

procedure TDeliverMatDT.BBT4Click(Sender: TObject);
begin
  if CCLDMas.Active=true then CCLDMas.Last;
end;

procedure TDeliverMatDT.BBT3Click(Sender: TObject);
begin
    if CCLDMas.Active=true then CCLDMas.Next;
end;

procedure TDeliverMatDT.BBT2Click(Sender: TObject);
begin
  if CCLDMas.Active=true then CCLDMas.Prior;
end;

procedure TDeliverMatDT.BB7Click(Sender: TObject);
begin
     Close;
end;

procedure TDeliverMatDT.BD1Click(Sender: TObject);
begin
  //
  with CCLDDet do
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
    end;
  DBGrid2.Columns[1].Color:=$00C1FFFF;
  DBGrid2.Columns[2].Color:=$00C1FFFF;
  BD1.Enabled:=false;
  BD2.Enabled:=true;
  BD3.Enabled:=true;
  //
end;

procedure TDeliverMatDT.BD3Click(Sender: TObject);
begin
  with CCLDDet do
    begin
      active:=false;
      requestlive:=false;
      cachedupdates:=false;
      active:=true;
    end;
  //
  DBGrid2.Columns[1].Color:=clWindow;
  DBGrid2.Columns[2].Color:=clWindow;
  BD1.Enabled:=true;
  BD2.Enabled:=false;
  BD3.Enabled:=false;
end;

procedure TDeliverMatDT.BD2Click(Sender: TObject);
var i:integer;
begin
  //檢查非自己的資料或更新超過三天以上不得變更
  if (CCLDMas.fieldbyname('UserID').AsString=main.edit1.text) and (CCLDMas.fieldbyname('UserDate').Value>=Date()-3) then
  begin
    CCLDDet.First;
    for i:=1 to CCLDDet.RecordCount do
    begin

      case CCLDDet.updatestatus of
        usmodified:
        begin
          CCLDDet.Edit;
          CCLDDet.FieldByName('USERID').AsString:=main.edit1.text;
          CCLDDet.FieldByName('USERDATE').value:=Date();
          upDet.apply(ukModify);
        end;
      end;
      CCLDDet.Next;
    end;
  end else
  begin
    if (CCLDMas.fieldbyname('UserID').AsString=main.edit1.text) then
      showmessage('Date > 3, can not modify.')
    else
      showmessage('It is not yours, can not modify.');
  end;
  //
  with CCLDDet do
    begin
      active:=false;
      requestlive:=false;
      cachedupdates:=false;
      active:=true;
    end;
  DBGrid2.Columns[1].Color:=clWindow;
  DBGrid2.Columns[2].Color:=clWindow;
  BD1.Enabled:=true;
  BD2.Enabled:=false;
  BD3.Enabled:=false;
end;

procedure TDeliverMatDT.CCLDMasAfterOpen(DataSet: TDataSet);
begin
  if CCLDMas.RecordCount>0 then
  begin
    BD1.Enabled:=true;
    BBT1.Enabled:=true;
    BBT2.Enabled:=true;
    BBT3.Enabled:=true;
    BBT4.Enabled:=true;
    BBT5.Enabled:=true;
  end else
  begin
    BD1.Enabled:=false;
    BBT1.Enabled:=false;
    BBT2.Enabled:=false;
    BBT3.Enabled:=false;
    BBT4.Enabled:=false;
    BBT5.Enabled:=false;
  end;
end;

procedure TDeliverMatDT.DBGrid1ColExit(Sender: TObject);
begin
  if DBGrid1.SelectedField.FieldName ='CLMC' then CLMCCombo.Visible := False;
  if DBGrid1.SelectedField.FieldName ='CSHJS' then CSHJSCombo.Visible := False;
end;

procedure TDeliverMatDT.CLMCComboExit(Sender: TObject);
begin
  with CCLDMas do
  begin
    Edit;
    FieldByName('CLMC').AsString:=CLMCCombo.Text;
    Post;
  end;
end;

procedure TDeliverMatDT.CSHJSComboExit(Sender: TObject);
begin
  with CCLDMas do
  begin
    Edit;
    FieldByName('CSHJS').AsString:=CSHJSCombo.Text;
    Post;
  end;
end;

procedure TDeliverMatDT.BBT5Click(Sender: TObject);
begin
  if CCLDMas.FieldByName('CCLDNO').IsNull=false then
  begin
    CCLDPrintForm:=TCCLDPrintForm.Create(nil);
    CCLDPrintForm.LoadData(CCLDMas.FieldByName('CCLDNO').AsString);
    CCLDPrintForm.QuickRep1.prepare;
    CCLDPrintForm.QuickRep1.Preview;
    CCLDPrintForm.Free;
  end;
end;

end.
