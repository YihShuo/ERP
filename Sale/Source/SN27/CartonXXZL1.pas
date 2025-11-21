unit CartonXXZL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls,
  Menus;

type
  TCartonXXZL = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    ArticleEdit: TEdit;
    Button1: TButton;
    DBGrid1: TDBGridEh;
    XXZLQry: TQuery;
    DS1: TDataSource;
    XXZLQryXieXing: TStringField;
    XXZLQrySheHao: TStringField;
    XXZLQryArticle: TStringField;
    XXZLQryXieMing: TStringField;
    XXZLQryJiJie: TStringField;
    Splitter1: TSplitter;
    DBGrid2: TDBGridEh;
    YWWX2SQry: TQuery;
    DS2: TDataSource;
    Qtemp: TQuery;
    UpdateSQL1: TUpdateSQL;
    Label2: TLabel;
    KFJDEdit: TEdit;
    Label3: TLabel;
    XieMingEdit: TEdit;
    Label4: TLabel;
    XieXingEdit: TEdit;
    Label5: TLabel;
    SheHaoEdit: TEdit;
    Label6: TLabel;
    BuyNoEdit: TEdit;
    Label7: TLabel;
    JiJieEdit: TEdit;
    PopupMenu1: TPopupMenu;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    XXZLQryiCLBH: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure XXZLQryAfterScroll(DataSet: TDataSet);
    procedure XXZLQryAfterOpen(DataSet: TDataSet);
    procedure BB4Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure DBGrid2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BB5Click(Sender: TObject);
    procedure DBGrid2EditButtonClick(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BB7Click(Sender: TObject);
  private
    Copy_Article:String;
    Copy_XieXing:String;
    Copy_SheHao:String;
    Close_YWWXS:boolean;
    { Private declarations }
    procedure ShowYWWXS2();
  public
    { Public declarations }
  end;

var
  CartonXXZL: TCartonXXZL;

implementation
  uses main1, CartonXXZL_CLZL1, FunUnit;
{$R *.dfm}

procedure TCartonXXZL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TCartonXXZL.FormDestroy(Sender: TObject);
begin
  CartonXXZL:=nil;
end;

procedure TCartonXXZL.Button1Click(Sender: TObject);
begin
  //
  if ((ArticleEdit.Text='') and (XieXingEdit.Text='') and (SheHaoEdit.Text='') and (JiJieEdit.Text='') and (KFJDEdit.Text='') and (XieMingEdit.Text='')  and (BuyNoEdit.Text='') ) then
  begin
    Showmessage('Please input 1 search at least');
    abort;
  end;
  Close_YWWXS:=true;
  with XXZLQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select XXZL.XieXing,XXZL.SheHao,XXZL.Article,XXZL.XieMing,XXZL.JiJie,YWWX2S.iCLBH ');
    SQL.Add('from XXZL');
    SQL.Add('left join kfzl on KFZL.kfdh=XXZL.KHDH ');
    SQL.Add('left join (select XieXing,SheHao,Count(CLBH) iCLBH from YWWX2S Group by XieXing,SheHao) YWWX2S on YWWX2S.XieXing=XXZL.XieXing and YWWX2S.SheHao=XXZL.SheHao ');
    SQL.Add('where 1=1 ');
    if ArticleEdit.Text<>'' then
    SQL.Add(' and XXZL.Article like '''+ArticleEdit.Text+'%'' ');
    if XieXingEdit.Text<>'' then
    SQL.Add(' and XXZL.XieXing like '''+XieXingEdit.Text+'%'' ');
    if SheHaoEdit.Text<>'' then
    SQL.Add(' and XXZL.SheHao like '''+SheHaoEdit.Text+'%'' ');
    if JiJieEdit.Text<>'' then
    SQL.Add(' and XXZL.JiJie like '''+JiJieEdit.Text+'%'' ');
    if KFJDEdit.Text<>'' then
    SQL.Add(' and kfzl.KFJC like '''+KFJDEdit.Text+'%'' ');
    if XieMingEdit.Text<>'' then
    SQL.Add(' and XXZL.XieMing like '''+XieMingEdit.Text+'%'' ');
    if BuyNoEdit.Text<>'' then
    SQL.Add('  and Exists (select distinct Article from DDZL where DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' and GSBH='''+main.Edit2.Text+''')');
    //funcObj.WriteErrorLog(sql.Text);
    SQL.Add('order by iCLBH asc ');
    Active:=true;
  end;
  ShowYWWXS2();
  Close_YWWXS:=false;
end;

procedure TCartonXXZL.ShowYWWXS2();
var i:integer;
begin
    if XXZLQry.recordcount>0 then
    begin
       with Qtemp do
       begin
          Active:=false;
          SQL.Clear;
          SQL.add('Select US_Size from XXZLS3 where XieXing='''+XXZLQry.FieldByName('XieXing').AsString+''' order by US_Size');
          //funcObj.WriteErrorLog(sql.Text);
          Active:=true;
       end;
       with YWWX2SQry do
       begin
         Active:=false;
         SQL.Clear;
         SQL.Add('Select YWWX2S.*,YWWX2.Length,YWWX2.Width,YWWX2.Height,YWWX2.Capacity from ( ');
         SQL.Add('Select YWWX2S.CLBH,CLZL.YWPM ');
         while not Qtemp.Eof do
         begin
           SQL.Add('     ,Max(case when CC='''+Qtemp.FieldByName('US_Size').AsString+''' then 1 else 0 end) as ''['+Qtemp.FieldByName('US_Size').AsString+']'' ');
           Qtemp.Next;
         end;
         SQl.Add('       ,Max(YWWX2S.YN) as YN');
         SQL.Add('from YWWX2S ');
         SQL.Add('left join CLZL on CLZL.cldh=YWWX2S.CLBH ');
         SQL.Add('where XieXing=:XieXing and SheHao=:SheHao  ');
         SQL.Add('Group by YWWX2S.CLBH,CLZL.ywpm  ) YWWX2S');
         SQL.Add('left join YWWX2 on YWWX2.CLBH=YWWX2S.CLBH ');
         SQL.Add('order by ');
         Qtemp.First;
         while not Qtemp.Eof do
         begin
           SQL.Add(' YWWX2S.[['+Qtemp.FieldByName('US_Size').AsString+']]] desc,');
           Qtemp.Next;
         end;
         Qtemp.Active:=false;
         SQL.Add('YWWX2.Capacity ');
         //funcObj.WriteErrorLog(sql.Text);
         Active:=true;
       end;
       //
       DBGrid2.Columns[0].Width:=80;
       DBGrid2.Columns[1].Width:=150;
       for i:=2 to  YWWX2SQry.FieldCount-1-5 do
       begin
         DBGrid2.Columns[i].Width:=45;
         DBGrid2.Columns[i].Checkboxes:=true;
       end;
       //YN欄位
       DBGrid2.Columns[YWWX2SQry.FieldCount-5].Visible:=false;
       //長寬高 數量
       DBGrid2.Columns[YWWX2SQry.FieldCount-4].Width:=45;
       DBGrid2.Columns[YWWX2SQry.FieldCount-3].Width:=45;
       DBGrid2.Columns[YWWX2SQry.FieldCount-2].Width:=45;
       DBGrid2.Columns[YWWX2SQry.FieldCount-1].Width:=45;
    end;

end;
procedure TCartonXXZL.XXZLQryAfterScroll(DataSet: TDataSet);
begin
  if Close_YWWXS=false then
  begin
    ShowYWWXS2();
  end;
end;

procedure TCartonXXZL.XXZLQryAfterOpen(DataSet: TDataSet);
begin
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
end;

procedure TCartonXXZL.BB4Click(Sender: TObject);
begin
  with YWWX2SQry do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Edit;
  end;
  DBGrid2.Columns[0].ButtonStyle:=cbsellipsis;
  BB5.Enabled:=true;
  BB6.enabled:=true;
  DBGrid1.Enabled:=false;
end;

procedure TCartonXXZL.BB2Click(Sender: TObject);
begin
  with YWWX2SQry do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
  end;
  DBGrid2.Columns[0].ButtonStyle:=cbsellipsis;
  BB5.Enabled:=true;
  BB6.enabled:=true;
  DBGrid1.Enabled:=false;
end;

procedure TCartonXXZL.BB6Click(Sender: TObject);
begin
  with YWWX2SQry do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
  end;
  DBGrid2.Columns[0].ButtonStyle:=cbsnone;
  BB5.enabled:=false;
  BB6.enabled:=false;
  ShowYWWXS2();
  DBGrid1.Enabled:=true;
end;

procedure TCartonXXZL.BB3Click(Sender: TObject);
begin
    with YWWX2SQry do
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
      fieldbyname('YN').Value:='0';
    end;
    DBGrid2.Columns[0].ButtonStyle:=cbsellipsis;
    BB5.Enabled:=true;
    BB6.Enabled:=true;
    DBGrid1.Enabled:=false;
end;

procedure TCartonXXZL.DBGrid2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if YWWX2SQry.FieldByName('YN').value='0' then
  begin
    DBGrid2.canvas.font.color:=clred;
  end;
end;

procedure TCartonXXZL.BB5Click(Sender: TObject);
var i,j:integer;
    SizeCC:string;
begin
  try
    YWWX2SQry.first;
    for i:=1 to YWWX2SQry.RecordCount do
    begin
        case YWWX2SQry.updatestatus of
          usinserted:
          begin

            with Qtemp do
            begin
              Active:=false;
              SQL.Clear;
              SQL.Add('Delete from YWWX2S where XieXing='''+XXZLQry.FieldByName('XieXing').AsString+''' and SheHao='''+XXZLQry.FieldByName('SheHao').AsString+''' and CLBH='''+YWWX2SQry.FieldByName('CLBH').AsString+'''  ');
              ExecSQL();
            end;
            for j:=2 to YWWX2SQry.FieldCount-1-5 do
            begin
              if YWWX2SQry.Fields[j].AsString='1' then
              begin
                SizeCC:=Copy(YWWX2SQry.Fields[j].FieldName,2,length(YWWX2SQry.Fields[j].FieldName)-2);
                Qtemp.Active:=false;
                Qtemp.SQL.Clear;
                Qtemp.SQL.Add('Insert into YWWX2S (XieXing, SheHao, CLBH, CC, USERID, USERDATE, YN) Values ');
                Qtemp.SQL.Add('('''+XXZLQry.FieldByName('XieXing').AsString+''','''+XXZLQry.FieldByName('SheHao').AsString+''','''+YWWX2SQry.FieldByName('CLBH').AsString+''','''+SizeCC+''','''+main.Edit1.Text+''',GetDate(),1) ');
                Qtemp.ExecSQL();
              end;
            end;
            //
          end;
          usmodified:
          begin
           if YWWX2SQry.fieldbyname('YN').value='0'then
           begin
             with Qtemp do
             begin
              Active:=false;
              SQL.Clear;
              SQL.Add('Delete from YWWX2S where XieXing='''+XXZLQry.FieldByName('XieXing').AsString+''' and SheHao='''+XXZLQry.FieldByName('SheHao').AsString+''' and CLBH='''+YWWX2SQry.FieldByName('CLBH').AsString+'''  ');
              ExecSQL();
             end;
           end else
           begin
             //
              with Qtemp do
              begin
                Active:=false;
                SQL.Clear;
                SQL.Add('Delete from YWWX2S where XieXing='''+XXZLQry.FieldByName('XieXing').AsString+''' and SheHao='''+XXZLQry.FieldByName('SheHao').AsString+''' and CLBH='''+YWWX2SQry.FieldByName('CLBH').AsString+'''  ');
                ExecSQL();
              end;
              for j:=2 to YWWX2SQry.FieldCount-1-5 do
              begin
                if YWWX2SQry.Fields[j].AsString='1' then
                begin
                  SizeCC:=Copy(YWWX2SQry.Fields[j].FieldName,2,length(YWWX2SQry.Fields[j].FieldName)-2);
                  Qtemp.Active:=false;
                  Qtemp.SQL.Clear;
                  Qtemp.SQL.Add('Insert into YWWX2S (XieXing, SheHao, CLBH, CC, USERID, USERDATE, YN) Values ');
                  Qtemp.SQL.Add('('''+XXZLQry.FieldByName('XieXing').AsString+''','''+XXZLQry.FieldByName('SheHao').AsString+''','''+YWWX2SQry.FieldByName('CLBH').AsString+''','''+SizeCC+''','''+main.Edit1.Text+''',GetDate(),1) ');
                  Qtemp.ExecSQL();
                end;
              end;
             //
           end;
          end;
        end;
       YWWX2SQry.next;
    end;
    YWWX2SQry.active:=false;
    YWWX2SQry.cachedupdates:=false;
    YWWX2SQry.requestlive:=false;
    ShowYWWXS2();
    BB5.enabled:=false;
    BB6.enabled:=false;
    DBGrid2.columns[0].ButtonStyle:=cbsnone;
    DBGrid1.Enabled:=true;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TCartonXXZL.DBGrid2EditButtonClick(Sender: TObject);
begin
  if DBGrid2.SelectedField.FieldName = 'CLBH' then
  begin
    CartonXXZL_CLZL:=TCartonXXZL_CLZL.Create(self);
    CartonXXZL_CLZL.Show;
  end;
end;

procedure TCartonXXZL.Copy1Click(Sender: TObject);
begin
  //
  if XXZLQry.Active=true then
  begin
    if XXZLQry.RecordCount>0 then
    begin
      Copy_Article:=XXZLQry.FieldByName('Article').AsString;
      Copy_XieXing:=XXZLQry.FieldByName('XieXing').AsString;
      Copy_SheHao:=XXZLQry.FieldByName('SheHao').AsString;
    end;
  end;
  //
end;

procedure TCartonXXZL.Paste1Click(Sender: TObject);
begin
  //
  if Dialogs.MessageDlg('Do you mant to Copy Article='+Copy_Article+' to '+XXZLQry.FieldByName('Article').AsString+' ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    with Qtemp  do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Delete from YWWX2S where XieXing='''+XXZLQry.FieldByName('XieXing').AsString+''' and SheHao='''+XXZLQry.FieldByName('SheHao').AsString+'''   ');
      SQL.Add('Insert into YWWX2S (XieXing, SheHao, CLBH, CC, USERID, USERDATE, YN)  ');
      SQL.Add('Select '''+XXZLQry.FieldByName('XieXing').AsString+''' as XieXing,'''+XXZLQry.FieldByName('SheHao').AsString+''' as SheHao, CLBH, CC,'''+main.Edit1.Text+''',GetDate(),YN ');
      SQL.Add('from YWWX2S where XieXing='''+Copy_XieXing+''' and SheHao='''+Copy_SheHao+'''  ');
      //funcObj.WriteErrorLog(sql.Text);
      Qtemp.ExecSQL();
    end;
    ShowYWWXS2();
    Showmessage('Success');
  end;
  //
end;

procedure TCartonXXZL.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if XXZLQry.FieldByName('iCLBH').AsString<>'' then
  begin
    DBGrid1.Canvas.font.color:=clBlue;
  end;
end;

procedure TCartonXXZL.BB7Click(Sender: TObject);
begin
  Close;
end;

end.
