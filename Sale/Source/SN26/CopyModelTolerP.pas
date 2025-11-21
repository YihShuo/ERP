unit CopyModelTolerP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, DBCtrls, Buttons, ExtCtrls,DB,
  DBTables, ComCtrls;
//
type
  TCacheYWXXNew=record
    XXCC:string;
    NWeigh:string;
    OWeigh:string;
    CLBH:string;
end;
type
  TCopyModelToler = class(TForm)
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
    DS1: TDataSource;
    DBGrid1: TDBGridEh;
    YWXXNew: TQuery;
    YWXXCopy: TQuery;
    DS2: TDataSource;
    Panel4: TPanel;
    Panel3: TPanel;
    FromGroupBox: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    XieXingDBText: TDBText;
    SheHaoDBText: TDBText;
    SaleOrderBtn2: TBitBtn;
    Panel5: TPanel;
    DBGridEh2: TDBGridEh;
    Label9: TLabel;
    XieXingListView: TListView;
    Panel6: TPanel;
    SelXieXingBtn: TBitBtn;
    DelXieXingBtn: TBitBtn;
    CopyXieXingBtn: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure CopyXieXingBtnClick(Sender: TObject);
    procedure SelXieXingBtnClick(Sender: TObject);
    procedure DelXieXingBtnClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure YWXXNewAfterOpen(DataSet: TDataSet);
    procedure BBT1Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
  private
    CCXXDataCount:integer;
    SelectXieXing:String;
    SelectSheHao:string;
    { Private declarations }
    procedure ShowCopyYWXXData();
    procedure CopyMulitYWXXData();
  public
    { Public declarations }
  end;


var
  CopyModelToler: TCopyModelToler;

implementation
uses main1,ModelToler_DDZL,FunUnit;
{$R *.dfm}

procedure TCopyModelToler.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  if ModelToler_DDZLForm<>nil then
  begin
    ModelToler_DDZLForm.Free;
    ModelToler_DDZLForm:=nil;
  end;
end;

procedure TCopyModelToler.Button1Click(Sender: TObject);
var parentValueList,parentFieldList:TStringlist;
begin

  //
  Edit1.Text:='';
  Edit2.Text:='';
  parentValueList:=TStringlist.Create;
  parentFieldList:=TStringlist.Create;
  parentFieldList.Add('XieXing');parentFieldList.Add('SheHao');
  if ModelToler_DDZLForm=nil then ModelToler_DDZLForm:=TModelToler_DDZLForm.create(self);
    ModelToler_DDZLForm.SetParentTStringList(parentValueList,parentFieldList,1);
  ModelToler_DDZLForm.ShowModal;
  //更新介面
  if parentValueList.Count=2 then
  begin
    Edit1.Text:=parentValueList.Strings[0];
    Edit2.Text:=parentValueList.Strings[1];
  end;
  parentValueList.Free;
  parentFieldList.Free;
  //
  if ((Edit1.Text<>'') and (Edit2.Text<>'')) then
  begin
    with YWXXNew do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select  YWXXNew.XieXing,YWXXNew.SheHao,XXList.Article,YWXXNew.XXCC,YWXXNew.NWeigh,YWXXNew.OWeigh,YWXXNew.CLBH,');
      sql.Add('        XXList.DAOMH,XXList.KFJC,XXList.XieMing');
      sql.Add('from YWXXNew left join ');
      sql.Add('    (select XXZL.XieXing,XXZL.SheHao,XXZL.Article,XXZL.DAOMH,XXZL.XieMing,KFZL.KFJC ');
      sql.Add('     From XXZL left join  KFZL on KFZL.KFDH=XXZL.KHDH ');
      sql.Add('     group by XXZL.XieXing,XXZL.SheHao,XXZL.Article,XXZL.DAOMH,XXZL.XieMing,KFZL.KFJC   ) XXList');
      sql.Add('  on YWXXNew.XieXing=XXList.XieXIng and YWXXNew.SheHao = XXList.SheHao ');
      sql.Add('where  YWXXNew.XieXing like '''+edit1.text+'''');
      if trim(edit2.Text)<>'' then
        sql.Add(' and XXList.SheHao like '''+edit2.text+''' ');
      if trim(edit3.Text)<>'' then
        sql.Add(' and  XXList.KFJC like '''+edit3.text+'%'' ');
      if trim(edit4.Text)<>'' then
        sql.Add(' and XXList.Article like ''%'+edit4.text+'%'' ');
      sql.Add('order by  YWXXNew.XieXing,YWXXNew.SheHao,YWXXNew.Article,YWXXNew.XXCC');
      active:=true;
    end;
    //
    if YWXXNew.RecordCount>0 then
    begin
      SelectXieXing:=YWXXNew.FieldByName('XieXing').AsString;
      SelectSheHao:=YWXXNew.FieldByName('SheHao').AsString;
    end;
    //
  end;
  //
end;

procedure TCopyModelToler.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin

end;
//複製Multi YWXXData
procedure TCopyModelToler.CopyMulitYWXXData();
var MsgStr:string;
    i,j:integer;
    //
    CacheYWXXNewCount:integer;
    CacheYWXXNew:array [0..29] of TCacheYWXXNew;
begin
  //
  //來源鞋型色號不能為空
  if ((SelectXieXing='') or (SelectSheHao='') or (YWXXNew.Active=false))   then
  begin
    showmessage('Don''t have any Shoe Style,Khong chon sao chep SKU');
    exit;
  end;
  //目的鞋型色號不能為空
  if  (XieXingListView.Items.Count=0)  then
  begin
    showmessage('It is don''t allow no any choice, Khong chon sao chep muc tieu SKU');
    exit;
  end;
  //先檢查資料是否存在
  DS2.DataSet:=nil;
  MsgStr:='';
  for i:=0 to  XieXingListView.Items.Count-1 do
  begin
    with YWXXCopy do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select XieXing from YWXXNew where (XieXing='''+XieXingListView.Items[i].Caption+''') and (SheHao='''+XieXingListView.Items[i].SubItems[0]+''')');
      active:=true;
    end;
    //
    if YWXXCopy.RecordCount>0 then
    begin
       XieXingListView.Items[i].StateIndex:=1;//標記資料存在
       MsgStr:=MsgStr+'XieXing:'+XieXingListView.Items[i].Caption+' SheHao:'+XieXingListView.Items[i].SubItems[0]+' data will be override!'+#13#10;
    end;
  end;
  //
  //詢問視窗
  //MsgStr:='Do you want to execte copy action?'#13#10+MsgStr;
  MsgStr:='are you sure copy ? Xac dinh sao chep?';
  if  Messagedlg(Pchar(MsgStr),mtInformation,[mbYES,mbNo],0)=mrYes then
  begin
    //原先資料存在 先刪除
    for i:=0 to  XieXingListView.Items.Count-1 do
    begin
      if XieXingListView.Items[i].StateIndex=1 then
        with YWXXCopy do
        begin
          active:=false;
          sql.Clear;
           sql.Add('delete  from YWXXNew where (XieXing='''+XieXingListView.Items[i].Caption+''') and (SheHao='''+XieXingListView.Items[i].SubItems[0]+''')');
          ExecSQL();
        end;
    end;
    YWXXCopy.active:=false;
    //複製新增資料 先位移到複製資料開頭
    CacheYWXXNewCount:=0;
    YWXXNew.First;
    while not YWXXNew.Eof do
    begin
      if( (YWXXNew.FieldByName('XieXing').AsString=SelectXieXing) and (( YWXXNew.FieldByName('SheHao').AsString=SelectSheHao))) then break;
      YWXXNew.Next;
    end;
    //儲存資料檔避免DBGrid重複位移 畫面閃爍
    repeat
      with YWXXNew do
      begin
        CacheYWXXNew[CacheYWXXNewCount].XXCC:=YWXXNew.FieldByName('XXCC').AsString;
        CacheYWXXNew[CacheYWXXNewCount].NWeigh:=YWXXNew.FieldByName('NWeigh').AsString;
        CacheYWXXNew[CacheYWXXNewCount].OWeigh:=YWXXNew.FieldByName('OWeigh').AsString;
        CacheYWXXNew[CacheYWXXNewCount].CLBH:=YWXXNew.FieldByName('CLBH').AsString;
        Inc(CacheYWXXNewCount);
      end;
      YWXXNew.Next;
    until  ( (YWXXNew.FieldByName('XieXing').AsString<>SelectXieXing) or ( YWXXNew.FieldByName('SheHao').AsString<>SelectSheHao) or YWXXNew.Eof);
    //複製新增資料
    for i:=0 to  XieXingListView.Items.Count-1 do
    begin
      for j:=0 to CacheYWXXNewCount-1 do
      begin
        YWXXCopy.Active:=false;
        YWXXCopy.SQL.Clear;
        YWXXCopy.SQL.Add('Insert into YWXXNew (XieXing,SheHao,Article,XXCC,NWeigh,OWeigh,CLBH,USERDATE,USERID,YN) Values(');
        YWXXCopy.SQL.Add(''''+XieXingListView.Items[i].Caption+''','''+XieXingListView.Items[i].SubItems[0]+''','''+XieXingListView.Items[i].SubItems[1]+''',');
        YWXXCopy.SQL.Add(''''+CacheYWXXNew[j].XXCC+''','+CacheYWXXNew[j].NWeigh+','+CacheYWXXNew[j].OWeigh+',');
        YWXXCopy.SQL.Add(''''+CacheYWXXNew[j].CLBH+''',getdate(),'''+main.edit1.Text+''',''1'')');
        YWXXCopy.ExecSQL;
      end;
    end;
    //最後顯示複製資料
    DS2.DataSet:=YWXXCopy;
    ShowCopyYWXXData();
  end else
  begin
    YWXXCopy.active:=false;
  end;
   
end;
//
procedure TCopyModelToler.ShowCopyYWXXData();
var i:integer;
    SubSQL:string;
begin

  //
  for i:=0 to XieXingListView.Items.Count-1 do
  begin
     SubSQL:=SubSQL+' ((YWXXNew.XieXing = '''+XieXingListView.Items[i].Caption+''') and (YWXXNew.SheHao = '''+XieXingListView.Items[i].SubItems[0]+''')) or ';
  end;
  SubSQL:=copy(SubSQL,1,length(SubSQL)-4);
  //
  with YWXXCopy do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select  YWXXNew.XieXing,YWXXNew.SheHao,XXList.Article,');
    sql.Add('        XXList.DAOMH,XXList.KFJC,XXList.XieMing');
    sql.Add('from YWXXNew left join ');
    sql.Add('    (select XXZL.XieXing,XXZL.SheHao,XXZL.Article,XXZL.DAOMH,XXZL.XieMing,KFZL.KFJC ');
    sql.Add('     From XXZL left join  KFZL on KFZL.KFDH=XXZL.KHDH ');
    sql.Add('       Group by  XXZL.XieXing,XXZL.SheHao,XXZL.Article,XXZL.DAOMH,XXZL.XieMing,KFZL.KFJC) XXList ');
    sql.Add('  on YWXXNew.XieXing=XXList.XieXIng and YWXXNew.SheHao = XXList.SheHao  ');
    sql.Add('where  '+SubSQL);
    sql.Add(' Group by YWXXNew.XieXing,YWXXNew.SheHao,XXList.Article,XXList.DAOMH,XXList.KFJC,XXList.XieMing ');
    active:=true;
  end;

end;
procedure TCopyModelToler.CopyXieXingBtnClick(Sender: TObject);
begin
  CopyMulitYWXXData();
end;
//CallBack使用
procedure AddSelXieXing(valarray:array of string);
var IsRepeat:boolean;
    i:integer;
begin

      //檢查是否重複或和來源鞋型色號一樣
      IsRepeat:=false;
      with CopyModelToler do
      begin
        for i:=0 to XieXingListView.Items.Count-1 do
        begin
          if (  ((XieXingListView.Items[i].Caption=valarray[0]) and (XieXingListView.Items[i].SubItems[0]=valarray[1]))
              or ((SelectXieXing=valarray[0]) and (SelectSheHao=valarray[1]))  ) then
          begin
            IsRepeat:=true;
            break;
          end;
        end;
        //
        if IsRepeat=false then
          with XieXingListView.Items.Add do
          begin
            Caption:=valarray[0];
            SubItems.add(valarray[1]);
            SubItems.add(valarray[2]);
          end;
      end;
      //
end;
//挑選鞋型 色號
procedure TCopyModelToler.SelXieXingBtnClick(Sender: TObject);
var parentValueList,parentFieldList:TStringlist;
    i:integer;
    IsRepeat:boolean;
begin
   parentFieldList:=TStringlist.Create;
   parentFieldList.Add('XieXing');parentFieldList.Add('SheHao');parentFieldList.Add('Article');
   if ModelToler_DDZLForm=nil then ModelToler_DDZLForm:=TModelToler_DDZLForm.create(self);
   ModelToler_DDZLForm.SetParentCallbackFun(AddSelXieXing,parentFieldList,2);
   ModelToler_DDZLForm.ShowModal;
   parentFieldList.Free;
   
end;

procedure TCopyModelToler.DelXieXingBtnClick(Sender: TObject);
var selectindex:integer;
begin
  //刪除選單
   if XieXingListView.Selected<>nil then
      XieXingListView.Selected.Delete;
end;

procedure TCopyModelToler.FormDestroy(Sender: TObject);
begin
  CopyModelToler:=nil;
end;

procedure TCopyModelToler.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TCopyModelToler.YWXXNewAfterOpen(DataSet: TDataSet);
begin
  if YWXXNew.RecordCount>0 then
  begin
    BBT1.Enabled:=true;
    BBT2.Enabled:=true;
    BBT3.Enabled:=true;
    BBT4.Enabled:=true;
  end else
  begin
    BBT1.Enabled:=false;
    BBT2.Enabled:=false;
    BBT3.Enabled:=false;
    BBT4.Enabled:=false;
  end;
end;

procedure TCopyModelToler.BBT1Click(Sender: TObject);
begin
  YWXXNew.First;
end;

procedure TCopyModelToler.BBT4Click(Sender: TObject);
begin
  YWXXNew.Last;
end;

procedure TCopyModelToler.BBT2Click(Sender: TObject);
begin
  YWXXNew.Prior;
end;

procedure TCopyModelToler.BBT3Click(Sender: TObject);
begin
  YWXXNew.Next;
end;

procedure TCopyModelToler.BB1Click(Sender: TObject);
begin
  Button1.Click;
end;

end.
