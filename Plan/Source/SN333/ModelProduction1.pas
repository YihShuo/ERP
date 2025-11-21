unit ModelProduction1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Buttons, GridsEh, DBGridEh, StdCtrls, ExtCtrls,comobj;

type
  TModelProduction = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    edXiexing: TEdit;
    Button1: TButton;
    edShehao: TEdit;
    edArticle: TEdit;
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
    bbt5: TBitBtn;
    Label4: TLabel;
    edXieMing: TEdit;
    DBGridEh1: TDBGridEh;
    qrySCXXLN: TQuery;
    UpSCXXLN: TUpdateSQL;
    DS1: TDataSource;
    OpenDialog1: TOpenDialog;
    TmpQry: TQuery;
    ExeQry: TQuery;
    qrySCXXLNXieXing: TStringField;
    qrySCXXLNSheHao: TStringField;
    qrySCXXLNARTICLE: TStringField;
    qrySCXXLNXieMing: TStringField;
    qrySCXXLNDepID: TStringField;
    qrySCXXLNDepName: TStringField;
    qrySCXXLNBZJS: TIntegerField;
    qrySCXXLNBZCL: TIntegerField;
    qrySCXXLNUserID: TStringField;
    qrySCXXLNUserDate: TDateTimeField;
    qrySCXXLNYN: TStringField;
    Label5: TLabel;
    DepNMEdit: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BB5Click(Sender: TObject);
    procedure bbt5Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
  private
    { Private declarations }
    procedure ImportLeanArticle();
  public
    { Public declarations }
  end;

var
  ModelProduction: TModelProduction;

implementation

uses main1,ModelProduction_Dep1, ModelProduction_XX1, FunUnit ;

{$R *.dfm}

procedure TModelProduction.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action:=cafree;
end;

procedure TModelProduction.FormDestroy(Sender: TObject);
begin
  ModelProduction:=nil;
end;

procedure TModelProduction.BB1Click(Sender: TObject);
begin
  panel3.Visible:=true;
end;

procedure TModelProduction.Button1Click(Sender: TObject);
begin
  with qrySCXXLN do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select SCXXLN.XieXing, SCXXLN.SheHao,XXZL.ARTICLE,XXZL.XieMing,SCXXLN.DepID,BDepartment.DepName,');
    sql.Add('SCXXLN.BZJS,SCXXLN.BZCL,SCXXLN.UserID,SCXXLN.UserDate,SCXXLN.YN');
    sql.Add('from scxxln left join xxzl');
    sql.Add('on scxxln.xiexing=xxzl.XieXing and scxxln.shehao=xxzl.SheHao');
    sql.Add('left join BDepartment on SCXXLN.DepID=BDepartment.ID');
    sql.Add('where 1=1');
    if edXieXing.Text<>'' then
      sql.Add('and SCXXLN.XieXing like '''+edXieXing.Text+'%''');
    if edSheHao.Text<>'' then
      sql.Add('and SCXXLN.SheHao like '''+edSheHao.Text+'%''');
    if edArticle.Text<>'' then
      sql.Add('and XXZL.Article like '''+edArticle.Text+'%''');
    if edXieMing.Text<>'' then
      sql.Add('and XXZL.XieMing like '''+edXieMing.Text+'%''');
    if DepNMEdit.Text<>'' then
      sql.Add('and BDepartment.DepName like '''+DepNMEdit.Text+'%'' ');
    active:=true;
  end;
  Panel3.Visible:=false;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  bbt5.Enabled:=true;
end;

procedure TModelProduction.BB2Click(Sender: TObject);
begin
 with qrySCXXLN do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
  end;
  bb5.enabled:=true;
  bb6.enabled:=true;
  DBGridEh1.columns[0].ButtonStyle:=cbsEllipsis;
  DBGridEh1.columns[4].ButtonStyle:=cbsEllipsis;
end;

procedure TModelProduction.BB6Click(Sender: TObject);
begin
  with qrySCXXLN do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.enabled:=false;
  //
  DBGridEh1.Columns[0].ButtonStyle:=cbsNone;
  DBGridEh1.Columns[4].ButtonStyle:=cbsNone;
end;

procedure TModelProduction.BB3Click(Sender: TObject);
begin
 with qrySCXXLN do
  begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
      fieldbyname('YN').Value:='0';
  end;
  bb5.enabled:=true;
  bb6.enabled:=true;
end;

procedure TModelProduction.BB4Click(Sender: TObject);
begin
 with qrySCXXLN do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
  end;
  bb5.enabled:=true;
  bb6.enabled:=true;
  DBGridEh1.columns[0].ButtonStyle:=cbsEllipsis;
  DBGridEh1.columns[4].ButtonStyle:=cbsEllipsis;
end;

procedure TModelProduction.DBGridEh1EditButtonClick(Sender: TObject);
begin
  if DBGridEh1.SelectedField.FieldName='DepName' then
  begin
    ModelProduction_Dep:=TModelProduction_Dep.Create(self);
    ModelProduction_Dep.Show;
  end;
  if DBGridEh1.SelectedField.FieldName='XieXing' then
  begin
    ModelProduction_XX:=TModelProduction_XX.Create(self);
    ModelProduction_XX.show;
  end;
end;

procedure TModelProduction.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
if  qrySCXXLN.fieldbyname('YN').Value=0 then
    DBGridEh1.canvas.font.color:=clred;
end;

procedure TModelProduction.BB5Click(Sender: TObject);
var i:integer;
begin
 // check column is null
    with qrySCXXLN do
    begin
      first;
      while not qrySCXXLN.Eof   do
        begin
          if qrySCXXLN.FieldByName('XieXing').IsNull then
          begin
            showmessage('Pls select XieXing and Shehao!');
            abort;
          end;
          next;
        end;
    end;
    //
    qrySCXXLN.First;
    for i:=1 to qrySCXXLN.RecordCount do
    begin
      case qrySCXXLN.UpdateStatus of
      usinserted:
        begin
         qrySCXXLN.Edit;
         qrySCXXLN.FieldByName('UserID').Value:=main.edit1.Text;
         qrySCXXLN.FieldByName('UserDate').Value:=now;
         qrySCXXLN.FieldByName('YN').Value:=1;
         qrySCXXLN.Post;
         upSCXXLN.Apply(ukinsert);
        end;
     usmodified:
      begin
      if (now-qrySCXXLN.FieldByName('userdate').Value)<=30  then 
        begin
          if qrySCXXLN.FieldByName('YN').Value='0' then
            begin
              upSCXXLN.Apply(ukdelete);
            end
          else
            begin
              qrySCXXLN.Edit;
              qrySCXXLN.FieldByName('UserID').Value:=main.edit1.Text;
              qrySCXXLN.FieldByName('UserDate').Value:=now;
              qrySCXXLN.Post;
              upSCXXLN.Apply(ukmodify);
            end;
        end
      else
        begin
          showmessage('Date >30, can not modify or delete!');
        end;
     end;

    end;
      qrySCXXLN.Next;
  end;
  qrySCXXLN.Active:=false;
  qrySCXXLN.RequestLive:=false;
  qrySCXXLN.CachedUpdates:=false;
  qrySCXXLN.Active:=true;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  //
  DBGridEh1.Columns[0].ButtonStyle:=cbsNone;
  DBGridEh1.Columns[4].ButtonStyle:=cbsNone;
end;

procedure TModelProduction.bbt5Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  qrySCXXLN.active  then
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
        for   i:=0   to   qrySCXXLN.fieldcount-1   do
        begin
          eclApp.Cells(1,i+1):=qrySCXXLN.fields[i].FieldName;
        end;
        qrySCXXLN.First;
        j:=2;
        while   not   qrySCXXLN.Eof   do
        begin
          for   i:=0   to  qrySCXXLN.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=qrySCXXLN.Fields[i].Value;
          end;
          qrySCXXLN.Next;
          inc(j);
        end;
        eclapp.columns.autofit;
        eclApp.Visible:=True;
    except
        on  F:Exception   do
          showmessage(F.Message);
    end;
  end;

end;

procedure TModelProduction.ImportLeanArticle();
var ExcelApp: Variant;
    i,j,k:integer;
    S_SKUList:TStringlist;
    S_Lean,S_DepID,S_SKU,S_ProdStdQty,S_ProdPWorkers:String;
    S_Lean_Next,S_Lean_Next1:string;
begin
  //
  if OpenDialog1.Execute then
  begin
    if messagedlg('Import will update , are you sure import',mtinformation,[mbYes,mbNo],0)=mrYes then
    begin
      ExcelApp:=CreateOleObject('Excel.Application');
      ExcelApp.WorkBooks.Open(OpenDialog1.FileName);
      ExcelApp.WorkSheets[1].Activate;
      //檢查欄位格式
      if ((ExcelApp.Cells[2,1].Value<>'等級') and (ExcelApp.Cells[2,5].Value<>'SKU') and (ExcelApp.Cells[2,7].Value<>'IE設定人數')
           ) then
      begin
        Showmessage('Excel Format is not exact');
        exit;
      end;
      i:=4;
      S_Lean:=ExcelApp.Cells[i,1].Value;
      S_Lean_Next:=ExcelApp.Cells[i+1,1].Value;
      S_Lean_Next1:=ExcelApp.Cells[i+2,1].Value;
      S_SKU:=ExcelApp.Cells[i,5].Value;
      S_ProdStdQty:=ExcelApp.Cells[i,6].Value;
      S_ProdPWorkers:=ExcelApp.Cells[i,7].Value;

      //
      while((trim(S_Lean)<>'') or (trim(S_Lean_Next)<>'') or (trim(S_Lean_Next1)<>''))  do
      begin
        if ((trim(S_Lean)<>'') and (trim(S_SKU)<>'') and (trim(S_ProdStdQty)<>'')) then
        begin
          S_DepID:='';
          //更新SCXXLN
          with TmpQry do
          begin
            Active:=false;
            SQL.Clear;
            SQL.Add('select ID,DepName from BDepartment where GSBH='''+main.Edit2.Text+''' and sumline is not null and ProYN=1 and YN=1 ');
            SQL.Add('and GXLB=''S'' and sumline like ''A02%'' and substring(sumline,7,2)='''+Copy(S_Lean,2,2)+'''  ');
            //funcObj.WriteErrorLog(sql.Text);
            Active:=true;
            if TmpQry.RecordCount>0 then
            begin
              S_DepID:=FieldByName('ID').AsString;
            end;
            //
            if S_DepID<>'' then
            begin
              S_SKUList:=FuncObj.SplitString(S_SKU,',');
              for j:=0 to S_SKUList.Count-1 do
              begin
                //funcObj.WriteErrorLog('S_SKU:'+S_SKU+' j:'+inttostr(j)+' '+S_SKUList.Strings[j]);
                with TmpQry do
                begin
                  Active:=false;
                  SQL.Clear;
                  SQL.Add('Select XieXing,Shehao,Article from XXZL where KHDH in (''036'',''0036'') and Article='''+S_SKUList.Strings[j]+''' ');
                  //funcObj.WriteErrorLog(sql.Text);
                  Active:=true;
                  for k:=0 to TmpQry.RecordCount-1 do
                  begin
                    ExeQry.Active:=false;
                    ExeQry.SQL.Clear;
                    ExeQry.SQL.Add('IF NOT EXISTS (Select * from SCXXLN where XieXing='''+FieldByName('XieXing').AsString+''' and SheHao='''+FieldByName('Shehao').AsString+''' and DepID='''+S_DepID+''' )  ');
                    ExeQry.SQL.Add('Begin ');
                    ExeQry.SQL.Add('Insert into SCXXLN (XieXing, SheHao, DepID, BZJS, BZCL, USERID, USERDATE, YN)  ');
                    ExeQry.SQL.Add('Values ('''+FieldByName('XieXing').AsString+''','''+FieldByName('Shehao').AsString+''','''+S_DepID+''','''+S_ProdPWorkers+''','+S_ProdStdQty+','''+main.Edit1.Text+''',GetDate(),1) ');
                    ExeQry.SQL.Add('End else ');
                    ExeQry.SQL.Add('Begin ');
                    ExeQry.SQL.Add('Update SCXXLN  Set BZJS='+S_ProdPWorkers+',BZCL='+S_ProdStdQty+',USERID='''+main.Edit1.Text+''',USERDATE=GetDate()  ');
                    ExeQry.SQL.Add('where XieXing='''+FieldByName('XieXing').AsString+''' and SheHao='''+FieldByName('Shehao').AsString+''' and DepID='''+S_DepID+'''   ');
                    ExeQry.SQl.Add('End ');
                    //funcObj.WriteErrorLog(ExeQry.sql.Text);
                    ExeQry.ExecSQL();
                  end;
                  Active:=false;
                end;
              end;
              S_SKUList.Free;
            end;
          end;
        end;
        //
        i:=i+1;
        S_Lean:=ExcelApp.Cells[i,1].Value;
        S_Lean_Next:=ExcelApp.Cells[i+1,1].Value;
        S_Lean_Next1:=ExcelApp.Cells[i+2,1].Value;
        //
        S_SKU:=ExcelApp.Cells[i,5].Value;
        S_ProdStdQty:=ExcelApp.Cells[i,6].Value;
        S_ProdPWorkers:=ExcelApp.Cells[i,7].Value;

      end;
      //關閉Excel
      ExcelApp.WorkBooks.Close;
      ExcelApp.quit;
    end;
  end;
  //
end;

procedure TModelProduction.bbt6Click(Sender: TObject);
begin
  ImportLeanArticle();
end;

end.
