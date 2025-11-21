unit ModelTolerP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, GridsEh, DBGridEh, Buttons,
  ExtCtrls,comobj;

type
  TModelToler = class(TForm)
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
    bbt5: TBitBtn;
    bbt6: TBitBtn;
    DBGrid1: TDBGridEh;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    YWXXNew: TQuery;
    DS2: TDataSource;
    UPYWXXNew: TUpdateSQL;
    YWXXNewQuery: TQuery;
    Label5: TLabel;
    Edit5: TEdit;
    YWXXNewXieXing: TStringField;
    YWXXNewSheHao: TStringField;
    YWXXNewArticle: TStringField;
    YWXXNewXXCC: TStringField;
    YWXXNewNWeigh: TCurrencyField;
    YWXXNewOWeigh: TCurrencyField;
    YWXXNewCLBH: TStringField;
    YWXXNewUSERDATE: TDateTimeField;
    YWXXNewUSERID: TStringField;
    YWXXNewYN: TStringField;
    YWXXNewDAOMH: TStringField;
    YWXXNewKFJC: TStringField;
    YWXXNewXieMing: TStringField;
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    Query1: TQuery;
    Query1BWBH: TStringField;
    Query1CSBH: TStringField;
    Query1MJBH: TStringField;
    Query1CLBH: TStringField;
    Query1ZMLB: TStringField;
    Query1SIZE: TStringField;
    Query1CLSL: TFloatField;
    Query1DWBH: TStringField;
    Query1YWPM: TStringField;
    BitBtn1: TBitBtn;
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure YWXXNewBeforeScroll(DataSet: TDataSet);
    procedure YWXXNewAfterOpen(DataSet: TDataSet);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure BitBtn1Click(Sender: TObject);
  private
    UserAction:string;
    { Private declarations }
    function CheckInsertRepeat():boolean;
    procedure InsertAction(); //新增彈跳視窗
  public
    { Public declarations }
  end;

var
  ModelToler: TModelToler;

implementation

uses main1,ModelToler_DDZL,FunUnit;

{$R *.dfm}

procedure TModelToler.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if BB5.Enabled then
  begin
    showmessage('Pls save data first.');
    action:=canone;
  end else
  begin
    action:=cafree;
    if ModelToler_DDZLForm<>nil then
    begin
      ModelToler_DDZLForm.Free;
      ModelToler_DDZLForm:=nil;
    end;
  end;
end;

procedure TModelToler.Button1Click(Sender: TObject);
begin

  with YWXXNew do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select  YWXXNew.XieXing,YWXXNew.SheHao,XXList.Article,YWXXNew.XXCC,YWXXNew.NWeigh,YWXXNew.OWeigh,YWXXNew.CLBH,');
    sql.Add('        YWXXNew.USERDATE,YWXXNew.USERID,YWXXNew.YN,XXList.DAOMH,XXList.KFJC,XXList.XieMing');
    sql.Add('from YWXXNew left join ');
    sql.Add('    (select XXZL.XieXing,XXZL.SheHao,XXZL.Article,XXZL.DAOMH,XXZL.XieMing,KFZL.KFJC ');
    sql.Add('     From XXZL left join  KFZL on KFZL.KFDH=XXZL.KHDH ');
    sql.Add('     group by XXZL.XieXing,XXZL.SheHao,XXZL.Article,XXZL.DAOMH,XXZL.XieMing,KFZL.KFJC  ) XXList');
    sql.Add('  on YWXXNew.XieXing=XXList.XieXIng and YWXXNew.SheHao = XXList.SheHao ');
    sql.Add('where YWXXNew.XieXing like '''+edit1.text+'%''');
    if trim(edit2.Text)<>'' then
      sql.Add(' and XXList.SheHao like ''%'+edit2.text+'%'' ');
    if trim(edit3.Text)<>'' then
      sql.Add(' and  XXList.KFJC like '''+edit3.text+'%'' ');
    if trim(edit4.Text)<>'' then
      sql.Add(' and XXList.Article like ''%'+edit4.text+'%'' ');
    if trim(edit5.Text)<>'' then
      sql.Add(' and XXList.DAOMH like ''%'+edit5.text+'%'' ');
    sql.Add('order by  YWXXNew.XieXing,YWXXNew.SheHao,XXList.Article,YWXXNew.XXCC');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  BB2.Enabled:=true;
  BB4.Enabled:=true;
  BBT6.enabled:=true;
  BitBtn1.Enabled:=true;
  Query1.Active:=true;
end;

procedure TModelToler.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TModelToler.BB4Click(Sender: TObject);
begin
  with YWXXNew do
    begin
      cachedupdates:=true;
      requestlive:=true;
      Edit;
    end;
  BB2.Enabled:=false;
  BB4.Enabled:=false;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  Dbgrid1.Columns[7].Color:=$00C4FFFF;
  Dbgrid1.Columns[8].Color:=$00C4FFFF;  
  UserAction:='MODIFY';
end;
//檢查新增主鍵XieXing SheHao XXCC是否重複
function TModelToler.CheckInsertRepeat():boolean;
begin
  with YWXXNewQuery do
  begin
    active:=false;
    sql.clear;
    sql.Add('Select XieXing from YWXXNew where ');
    sql.Add(' XieXing='''+YWXXNew.FieldByName('XieXing').AsString+''' and ');
    sql.Add(' SheHao='''+YWXXNew.FieldByName('SheHao').AsString+''' and ');
    sql.Add(' XXCC='''+YWXXNew.FieldByName('XXCC').AsString+'''');
    active:=true;
    //
    if RecordCount>0 then
      result:=true
    else
      result:=false;
    active:=false;
  end;

end;
//
procedure TModelToler.BB5Click(Sender: TObject);
var i:integer;
    AlertMsg:string;
    IsBreak:boolean;
begin
  try

    //
    IsBreak:=false;
    YWXXNew.first;
    for i:=1 to YWXXNew.RecordCount do
    begin
      case YWXXNew.updatestatus of
      usinserted:
          begin
              //檢查新增欄位
              AlertMsg:='';
              if UserAction='INSERT' then
              begin
                if YWXXNew.FieldByName('XieXing').IsNull then  AlertMsg:=AlertMsg+'XieXing can not allow null!'+#13#10;
                if ((YWXXNew.FieldByName('XXCC').IsNull) or (YWXXNew.FieldByName('XXCC').AsString='')) then  AlertMsg:=AlertMsg+'XXCC can not allow null!'+#13#10;
                if YWXXNew.FieldByName('NWeigh').IsNull then  AlertMsg:=AlertMsg+'NWeigh can not allow null!'+#13#10;
                if YWXXNew.FieldByName('OWeigh').IsNull then  AlertMsg:=AlertMsg+'OWeigh can not allow null!'+#13#10;
                if AlertMsg<>'' then
                begin
                  showmessage(AlertMsg);
                  IsBreak:=true;
                  break;
                end;
                //
                if CheckInsertRepeat()=true then
                begin
                 // AlertMsg:='XieXing,SheHao,XXCC is repeat!'+#13#10+
                 //           'Mater Key:'+YWXXNew.FieldByName('XieXing').AsString+','+YWXXNew.FieldByName('SheHao').AsString+','+YWXXNew.FieldByName('XXCC').AsString;
                  AlertMsg:='Nhap trung lap!';
                  showmessage(AlertMsg);
                  YWXXNew.Edit;
                  YWXXNew.FieldByName('XXCC').AsString:='';
                  YWXXNew.Post;
                  IsBreak:=true;
                  break;
                end;
              end;
          end;
      end;
      YWXXNew.Next;
    end;
    //
    if IsBreak=false then
    begin
      YWXXNew.first;
      for i:=1 to YWXXNew.RecordCount do
      begin
        case YWXXNew.updatestatus of
        usinserted:
            begin
                YWXXNew.Edit;
                YWXXNew.FieldByName('USERID').AsString:=main.edit1.text;
                YWXXNew.FieldByName('USERDATE').value:=Date();//GetDBServerDate();
                YWXXNew.FieldByName('YN').AsString:='1';
                UPYWXXNew.apply(ukinsert);
            end;
        usmodified:
            begin
                if YWXXNew.fieldbyname('YN').AsString='0'then
                begin
                    {
                    //刪除
                    }
                end else
                begin
                    YWXXNew.Edit;
                    YWXXNew.FieldByName('USERID').AsString:=main.edit1.text;
                    YWXXNew.FieldByName('USERDATE').value:=date();
                    UPYWXXNew.apply(ukModify);
                end;

            end;
        end;
        YWXXNew.next;
      end;
      //
      UserAction:='';
      //if AlertMsg<>'' then Showmessage(AlertMsg);
      BB2.Enabled:=true;
      BB4.Enabled:=true;
      BB5.Enabled:=false;
      BB6.Enabled:=false;
      Dbgrid1.Columns[0].Color:=clwhite;
      Dbgrid1.Columns[6].Color:=clwhite;
      Dbgrid1.Columns[6].ReadOnly:=true;
      Dbgrid1.Columns[7].Color:=clwhite;
      Dbgrid1.Columns[8].Color:=clwhite;
      //
      with YWXXNew do
      begin
        active:=false;
        requestlive:=false;
        cachedupdates:=false;
        active:=true;
      end;
    end;
  except
    on E:Exception do
    begin
      showmessage('Have wrong:'+E.Message);
    end;
  end;

end;

procedure TModelToler.BB6Click(Sender: TObject);
begin
  with YWXXNew do
    begin
      active:=false;
      requestlive:=false;
      cachedupdates:=false;
      active:=true;
    end;
    BB2.Enabled:=true;
    BB4.Enabled:=true;
    BB5.Enabled:=false;
    BB6.Enabled:=false;
    UserAction:='';
    Dbgrid1.Columns[0].Color:=clwhite;
    Dbgrid1.columns[0].ButtonStyle:=cbsNone;
    Dbgrid1.Columns[6].Color:=clwhite;
    Dbgrid1.Columns[6].ReadOnly:=true;
    Dbgrid1.Columns[7].Color:=clwhite;
    Dbgrid1.Columns[8].Color:=clwhite;        
end;

procedure TModelToler.bbt6Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin

  if messagedlg('Special Excel Format',mtCustom,[mbYes,mbNo], 0)=mrYes then
  begin
  if  YWXXNew.active  then
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
        for   i:=0   to   YWXXNew.fieldcount-1   do
          begin
              eclApp.Cells(1,1):='adidasWeights';
              eclApp.Cells(1,2):='Manufacturering size';
              eclApp.Cells(1,3):='Uom';
              eclApp.Cells(1,4):='Net Weight';
              eclApp.Cells(1,5):='Net Net Weight';
          end;

        YWXXNew.First;
        j:=2;
        while   not   YWXXNew.Eof   do
          begin
              eclApp.Cells(j,1):=YWXXNew.Fields[2].Value;
              if  copy(YWXXNew.Fields[6].Value,1,1)='0' then
              begin
                  eclApp.Cells(j,2):=copy(StringReplace(StringReplace(trim(YWXXNew.Fields[6].Value),'.0','',[rfReplaceAll]),'.5','-',[rfReplaceAll]),2,5);
              end else
              begin
                  eclApp.Cells(j,2):=StringReplace(StringReplace(trim(YWXXNew.Fields[6].Value),'.0','',[rfReplaceAll]),'.5','-',[rfReplaceAll]);
              end;
              eclApp.Cells(j,3):='KG';

              if  ((YWXXNew.Fields[7].Value = null) or (YWXXNew.Fields[8].Value= null)) then
              begin
                  eclApp.Cells(j,4):=0;
              end else
              begin
                  eclApp.Cells(j,4):=FormatFloat('000.00',(YWXXNew.Fields[7].Value+YWXXNew.Fields[8].Value));
              end;

              if  (YWXXNew.Fields[7].Value = null) then
              begin
                eclApp.Cells(j,5):=0;
              end else
              begin
                eclApp.Cells(j,5):=FormatFloat('000.00',YWXXNew.Fields[7].Value);
              end;
          YWXXNew.Next;
          inc(j);
          end;

      eclapp.columns.autofit;
      showmessage('Succeed');
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
  end else
  begin
  if  YWXXNew.active  then
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
        for   i:=0   to   YWXXNew.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=YWXXNew.fields[i].FieldName;
          end;

        YWXXNew.First;
        j:=2;
        while   not   YWXXNew.Eof   do
          begin
            for   i:=0   to  YWXXNew.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=YWXXNew.Fields[i].Value;
            end;
          YWXXNew.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
      showmessage('Succeed');
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
  end;

end;
end;

procedure TModelToler.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin

if Key = #13 then
  if ActiveControl = DBGrid1 then
    begin
      TDBGrideh(ActiveControl).SelectedIndex := TDBGrideh(ActiveControl).SelectedIndex + 1;
      Key := #0;
    end;
end;

procedure TModelToler.FormDestroy(Sender: TObject);
begin
   ModelToler:=nil;
end;


procedure TModelToler.BB2Click(Sender: TObject);
begin
  //
  with YWXXNew do
    begin
      cachedupdates:=true;
      requestlive:=true;
    end;
  //
  Dbgrid1.Columns[0].Color:=$00C4FFFF;
  //Dbgrid1.columns[0].ButtonStyle:=cbsEllipsis;
  Dbgrid1.Columns[6].ReadOnly:=false;
  Dbgrid1.Columns[6].Color:=$00C4FFFF;
  Dbgrid1.Columns[7].Color:=$00C4FFFF;
  Dbgrid1.Columns[8].Color:=$00C4FFFF;
  //BB2.Enabled:=false;
  BB4.Enabled:=false;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  UserAction:='INSERT';
  InsertAction(); //新增彈跳視窗
end;

procedure TModelToler.YWXXNewBeforeScroll(DataSet: TDataSet);
begin
 // if UserAction='INSERT'  then Abort;
end;

procedure TModelToler.YWXXNewAfterOpen(DataSet: TDataSet);
begin
  if YWXXNew.RecordCount>0 then
  begin
    BBT1.Enabled:=true;
    BBT2.Enabled:=true;
    BBT3.Enabled:=true;
    BBT4.Enabled:=true;
    BBT5.Enabled:=true;
  end else
  begin
    BBT1.Enabled:=false;
    BBT2.Enabled:=false;
    BBT3.Enabled:=false;
    BBT4.Enabled:=false;
    BBT5.Enabled:=false;
  end;
end;

procedure TModelToler.BBT1Click(Sender: TObject);
begin
  YWXXNew.First;  
end;

procedure TModelToler.BBT2Click(Sender: TObject);
begin
  YWXXNew.Prior;
end;

procedure TModelToler.BBT3Click(Sender: TObject);
begin
  YWXXNew.Next;
end;

procedure TModelToler.BBT4Click(Sender: TObject);
begin
  YWXXNew.Last;
end;

procedure TModelToler.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (YWXXNew.FieldByName('UserID').IsNull)  then
  begin
    dbgrid1.canvas.font.color:=clBlue;
    dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
  if (YWXXNew.FieldByName('KFJC').AsString='')  then
  begin
    dbgrid1.canvas.font.color:=clRed;
    dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;
//CallBack使用
procedure AddSelXieXing(valarray:array of string);
var IsRepeat:boolean;
    i:integer;
begin

   if  High(valarray)>=5 then
   begin
     ModelToler.YWXXNew.Insert;
     ModelToler.YWXXNew.FieldByName('XieXing').AsString:=valarray[0];
     ModelToler.YWXXNew.FieldByName('SheHao').AsString:=valarray[1];
     ModelToler.YWXXNew.FieldByName('Article').AsString:=valarray[2];
     ModelToler.YWXXNew.FieldByName('DAOMH').AsString:=valarray[3];
     ModelToler.YWXXNew.FieldByName('XieMing').AsString:=valarray[4];
     ModelToler.YWXXNew.FieldByName('KFJC').AsString:=valarray[5];
     ModelToler.YWXXNew.FieldByName('XXCC').AsString:=valarray[6];
     ModelToler.YWXXNew.FieldByName('OWeigh').AsString:=valarray[7];
     ModelToler.YWXXNew.Post;

   end;

end;
//新增動作
procedure TModelToler.InsertAction();
var parentValueList,parentFieldList:TStringlist;
    i:integer;
begin
  with DBGrid1 do
  begin
        //
        parentValueList:=TStringlist.Create;
        parentFieldList:=TStringlist.Create;
        parentFieldList.Add('XieXing');parentFieldList.Add('SheHao');
        parentFieldList.Add('Article');parentFieldList.Add('DAOMH');
        parentFieldList.Add('XieMing');parentFieldList.Add('KFJC');
        parentFieldList.Add('XXCC'); parentFieldList.Add('OWeigh');
        if ModelToler_DDZLForm=nil then ModelToler_DDZLForm:=TModelToler_DDZLForm.create(self); //根據訂單資料彈跳視窗
          ModelToler_DDZLForm.SetParentCallbackFun(AddSelXieXing,parentFieldList,3); //callback函數
        ModelToler_DDZLForm.ShowModal;
        //
        parentValueList.Free;
        parentFieldList.Free;
      //
  end;
end;


//


procedure TModelToler.BitBtn1Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j,k:integer;
begin

  if messagedlg('Special Excel Format',mtCustom,[mbYes,mbNo], 0)=mrYes then
  begin
  if  YWXXNew.active  then
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
        for   i:=0   to   YWXXNew.fieldcount-1   do
        begin
            eclApp.Cells(1,1):='adidasWeights';
            eclApp.Cells(1,2):='Manufacturering size';
            eclApp.Cells(1,3):='Uom';
            eclApp.Cells(1,4):='Net Weight';
            eclApp.Cells(1,5):='Net Net Weight';
        end;

        for   i:=0   to   Query1.fieldcount-1   do
        begin
            eclApp.Cells(YWXXNew.RecordCount+3,i+1):=Query1.fields[i].FieldName;
        end;

        YWXXNew.First;
        Query1.First;
        j:=2;
        while   not   YWXXNew.Eof   do
        begin
            eclApp.Cells(j,1):=YWXXNew.Fields[2].Value;
            if  copy(YWXXNew.Fields[6].Value,1,1)='0' then
            begin
                eclApp.Cells(j,2):=copy(StringReplace(StringReplace(trim(YWXXNew.Fields[6].Value),'.0','',[rfReplaceAll]),'.5','-',[rfReplaceAll]),2,5);
            end else
            begin
                eclApp.Cells(j,2):=StringReplace(StringReplace(trim(YWXXNew.Fields[6].Value),'.0','',[rfReplaceAll]),'.5','-',[rfReplaceAll]);
            end;
            eclApp.Cells(j,3):='KG';

            if  ((YWXXNew.Fields[7].Value = null) or (YWXXNew.Fields[8].Value= null)) then
            begin
                eclApp.Cells(j,4):=0;
            end else
            begin
                eclApp.Cells(j,4):=FormatFloat('000.00',(YWXXNew.Fields[7].Value+YWXXNew.Fields[8].Value));
            end;

            if  (YWXXNew.Fields[7].Value = null) then
            begin
              eclApp.Cells(j,5):=0;
            end else
            begin
              eclApp.Cells(j,5):=FormatFloat('000.00',YWXXNew.Fields[7].Value);
            end;
          YWXXNew.Next;
          inc(j);
        end;
        k:=YWXXNew.RecordCount;
        while   not   Query1.Eof   do
        begin
          for   i:=0   to  Query1.fieldcount-1  do
          begin
            eclApp.Cells(k+3,i+1):=Query1.Fields[i].Value;
          end;
          Query1.Next;
          inc(k);
        end;
      eclapp.columns.autofit;
      showmessage('Succeed');
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
  end else
  begin
  if  YWXXNew.active  then
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
        for   i:=0   to   YWXXNew.fieldcount-1   do
        begin
            eclApp.Cells(1,i+1):=YWXXNew.fields[i].FieldName;
        end;

        for   i:=0   to   Query1.fieldcount-1   do
        begin
            eclApp.Cells(YWXXNew.RecordCount+3,i+1):=Query1.fields[i].FieldName;
        end;
        Query1.First;
        YWXXNew.First;
        j:=2;
        while   not   YWXXNew.Eof   do
        begin
          for   i:=0   to  YWXXNew.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=YWXXNew.Fields[i].Value;
          end;
          YWXXNew.Next;
          inc(j);
        end;

        k:=YWXXNew.RecordCount;
        while   not   Query1.Eof   do
        begin
          for   i:=0   to  Query1.fieldcount-1  do
          begin
            eclApp.Cells(k+3,i+1):=Query1.Fields[i].Value;
          end;
          Query1.Next;
          inc(k);
        end;
      eclapp.columns.autofit;
      showmessage('Succeed');
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
  end;
end;
end;

end.
