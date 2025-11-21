unit ModelCapacity1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Buttons, StdCtrls, DBCtrls, Mask, Grids, DBGrids,
  ExtCtrls,comobj, Menus, GridsEh, DBGridEh ;

type
  TModelCapacity = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
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
    Query1: TQuery;
    UpSQL1: TUpdateSQL;
    DS1: TDataSource;
    Label1: TLabel;
    Label7: TLabel;
    Query1XieXing: TStringField;
    Query1GXLB: TStringField;
    Query1BZLB: TStringField;
    Query1XXGS: TCurrencyField;
    Query1BZRS: TIntegerField;
    Query1BZCL: TIntegerField;
    Query1USERDATE: TDateTimeField;
    Query1USERID: TStringField;
    Query1YN: TStringField;
    Query1XieMing: TStringField;
    PopupMenu1: TPopupMenu;
    Nofinished1: TMenuItem;
    CB1: TComboBox;
    Edit3: TEdit;
    Label3: TLabel;
    Query1article: TStringField;
    Query1BZJS: TIntegerField;
    Query1RSJS: TIntegerField;
    DBGrid1: TDBGridEh;
    Label4: TLabel;
    BuyNoEdit: TEdit;
    tmpQry: TQuery;
    Query1SheHao: TStringField;
    Query1DaoMH: TStringField;
    CKNull: TCheckBox;
    Label5: TLabel;
    CB2: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB7Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BB5Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Nofinished1Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Click(Sender: TObject);
    procedure Edit3Click(Sender: TObject);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
   { procedure DBGrid1DblClick(Sender: TObject); }
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ModelCapacity: TModelCapacity;

implementation

uses ModelCap_XX1, main1, ModelCap_NO1, FunUnit;

{$R *.dfm}

procedure TModelCapacity.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if query1.requestlive then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
   action:=Cafree;
end;

procedure TModelCapacity.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TModelCapacity.BB1Click(Sender: TObject);
begin
  panel3.Visible:=true;
  edit1.SetFocus;
end;

procedure TModelCapacity.Button1Click(Sender: TObject);
begin
  if BuyNoEdit.Text<>'' then
    if Length(BuyNoEdit.Text)<4 then
    begin
      showmessage('Please BuyNo at least 4 char');
    end;
  //
  with Query1 do
  begin
    active:=false;
    sql.clear;
    if Length(BuyNoEdit.Text)>=4 then
    begin
      //2021/2/19 新增distinct
      sql.add('select distinct DDZL.XieXing,DDZL.SheHao,DDZL.GXLB,IsNull(SCXXCL.BZLB,DDZL.BZLB) as BZLB,SCXXCL.XXGS,SCXXCL.BZRS,SCXXCL.BZJS,SCXXCL.BZCL,SCXXCL.USERDATE,SCXXCL.USERID,SCXXCL.YN,XXZL.XieMing,XXZL.DaoMH,xxzl.article,(BZRS+BZJS) as RSJS   ');
      sql.add('from (');
      sql.add('select XieXing,SheHao,''A'' as GXLB,''3'' as BZLB from DDZL where DDZL.GSBH='''+main.Edit2.Text+''' and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' Group by XieXing,SheHao  ');
      sql.add('Union all ');
      sql.add('select XieXing,SheHao,''C'' as GXLB,''3'' as BZLB from DDZL where DDZL.GSBH='''+main.Edit2.Text+''' and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' Group by XieXing,SheHao  ');
      sql.add('Union all ');
      sql.add('select XieXing,SheHao,''S'' as GXLB,''3'' as BZLB from DDZL where DDZL.GSBH='''+main.Edit2.Text+''' and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' Group by XieXing,SheHao  ');
      sql.add('Union all ');
      sql.add('select XieXing,SheHao,''P'' as GXLB,''3'' as BZLB from DDZL where DDZL.GSBH='''+main.Edit2.Text+''' and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' Group by XieXing,SheHao  ');
      sql.add(' ) DDZL ');
      sql.add('Left join SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.SheHao=DDZL.SheHao and SCXXCL.GXLB=DDZL.GXLB ');
      sql.add('left join XXZL  on XXZl.XieXing=DDZL.XieXing and  XXZL.SheHao=DDZL.SheHao ');
      //2021/2/19 新增Left Join
      sql.add('Left Join BDepartment on SCXXCL.BZLB=BDepartment.BZLB ')
    end else
    begin
      //2021/2/19 新增distinct
      sql.add('select distinct SCXXCL.*,XXZL.XieMing,XXZL.DaoMH,xxzl.article,(BZRS+BZJS) as RSJS  ');
      sql.add('from SCXXCL  ');
      sql.add('left join XXZL  on SCXXCL.XieXing=XXZl.XieXing and  SCXXCL.SheHao=XXZl.SheHao ');
      //2021/2/19 新增Left Join
      sql.add('left join BDepartment on SCXXCL.BZLB=BDepartment.BZLB ')
    end;
    sql.add('where 1=1 ');
    if edit1.Text<>'' then
      sql.add('      and XXZL.DaoMH like '''+edit1.Text+'%'' ');
    if edit2.Text<>'' then
      sql.add('      and XXZL.XieMing like ''%'+edit2.Text+'%'' ');
    if edit3.Text<>'' then
      sql.add('      and XXZL.Article like ''%'+edit3.Text+'%'' ');
    if CB1.text<>'All' then
      sql.add('      and SCXXCL.GXLB ='''+CB1.Text+'''');
    if CB2.text<>'All'  then
      sql.add('      and SCXXCL.BZLB ='''+CB2.Text+'''');
    if CKNull.Checked=true then
    begin
      sql.add('  and (SCXXCL.BZRS is null or SCXXCL.BZJS is null or SCXXCL.BZCL is null) ');
    end;
    if Length(BuyNoEdit.Text)>=4 then
    //2021/2/19 新增DDZL.BZLB
       sql.add('order by XXZL.Article,IsNull(SCXXCL.BZLB,DDZL.BZLB),DDZL.GXLB')
    else
    //2021/2/19 新增SCXXCL.BZLB
       sql.add('order by XXZL.Article,SCXXCL.BZLB,SCXXCL.GXLB');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  panel3.visible:=false;
  panel3.visible:=true;
  bb2.enabled:=true;
  //bb3.enabled:=true;
  bb4.enabled:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
  bb7.enabled:=true;
  bbt1.enabled:=true;
  bbt2.enabled:=true;
  bbt3.enabled:=true;
  bbt4.enabled:=true;
  bbt5.enabled:=true;
  bbt6.enabled:=true;
end;

procedure TModelCapacity.BB2Click(Sender: TObject);
begin
  with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
  end;
  bb5.enabled:=true;
  bb6.enabled:=true;
  DBGrid1.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TModelCapacity.BB4Click(Sender: TObject);
begin
  with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    query1.edit;
  end;
  bb5.enabled:=true;
  bb6.enabled:=true;
  dbgrid1.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TModelCapacity.BB6Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.enabled:=false;
end;

procedure TModelCapacity.BBT1Click(Sender: TObject);
begin
  query1.First;
end;

procedure TModelCapacity.BBT2Click(Sender: TObject);
begin
query1.Prior;
end;

procedure TModelCapacity.BBT3Click(Sender: TObject);
begin
  query1.Next;
end;

procedure TModelCapacity.BBT4Click(Sender: TObject);
begin
  query1.Last;
end;

procedure TModelCapacity.bbt6Click(Sender: TObject);
var   
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
 begin
  if  query1.active  then
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
        for   i:=0   to   query1.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
          end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
          begin
            for   i:=0   to  query1.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=query1.Fields[i].Value;
            end;
          query1.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure TModelCapacity.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit2.SetFocus;
end;

procedure TModelCapacity.BB5Click(Sender: TObject);
begin

 try
    query1.first;
    while not query1.Eof do
      begin
        case query1.updatestatus of
          usinserted:
            begin
              query1.edit;
              if ((query1.fieldbyname('BZRS').value)+(query1.fieldbyname('BZJS').value))>0 then
              begin
                Query1.fieldbyname('XXGS').value:=query1.fieldbyname('BZCL').value/((query1.fieldbyname('BZRS').value)+(query1.fieldbyname('BZJS').value)) ;
              end else
              begin
                Query1.fieldbyname('XXGS').value:=0;
              end;
              Query1.FieldByName('userdate').Value:=date;
              Query1.FieldByName('userid').Value:=main.edit1.text;
              Query1.FieldByName('YN').Value:='1';
              with tmpQry do
              begin
                Active:=false;
                SQL.Clear;
                SQL.Add('Select * from SCXXCL where XieXing='''+query1.fieldbyname('XieXing').AsString+''' and SheHao='''+query1.fieldbyname('SheHao').AsString+''' ');
                SQL.Add('and GXLB='''+query1.fieldbyname('GXLB').AsString+''' and BZLB='+query1.fieldbyname('BZLB').AsString);
                Active:=true;
                if RecordCount=0 then
                  upsql1.apply(ukinsert);
                Active:=false;
              end;

            end;
          usmodified:
             begin
               Query1.Edit;
               if ((query1.fieldbyname('BZRS').value)+(query1.fieldbyname('BZJS').value))>0 then
               begin
                Query1.fieldbyname('XXGS').value:=query1.fieldbyname('BZCL').value/((query1.fieldbyname('BZRS').value)+(query1.fieldbyname('BZJS').value)) ;
               end else
               begin
                Query1.fieldbyname('XXGS').value:=0;
               end;
               query1.FieldByName('userdate').Value:=date;
               query1.FieldByName('userid').Value:=main.edit1.text;
               query1.FieldByName('YN').Value:='1';
               with tmpQry do
               begin
                  Active:=false;
                  SQL.Clear;
                  SQL.Add('Select * from SCXXCL where XieXing='''+query1.fieldbyname('XieXing').AsString+''' and SheHao='''+query1.fieldbyname('SheHao').AsString+''' ');
                  SQL.Add('and GXLB='''+query1.fieldbyname('GXLB').AsString+''' and BZLB='+query1.fieldbyname('BZLB').AsString);
                  Active:=true;
                  if RecordCount=0 then
                    upsql1.apply(ukinsert)
                  else
                    upsql1.Apply(ukmodify);
                  Active:=false;
               end;
             end;
        end;
        query1.next;
  end;
  query1.active:=false;
  query1.cachedupdates:=false;
  query1.requestlive:=false;
  query1.active:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
  showmessage('succeed.');
except
  Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
end;
end;

procedure TModelCapacity.FormDestroy(Sender: TObject);
begin
  ModelCapacity:=nil;
end;

procedure TModelCapacity.Nofinished1Click(Sender: TObject);
begin
  ModelCap_NO:=TModelCap_NO.create(self);
  ModelCap_NO.show;
end;

procedure TModelCapacity.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit3.SetFocus;
end;


procedure TModelCapacity.Edit1Click(Sender: TObject);
begin
     edit1.Text:='';
end;

procedure TModelCapacity.Edit3Click(Sender: TObject);
begin
     edit3.Text:='';
end;

procedure TModelCapacity.DBGrid1ColEnter(Sender: TObject);
begin
  if query1.RequestLive then
  begin
    if dbgrid1.selectedfield.fieldname='XXGS' then
      begin
        if (not query1.fieldbyname('BZRS').isnull ) and  (not query1.fieldbyname('BZCL').isnull ) then
          begin
            if query1.fieldbyname('BZRS').value <>0 then
              begin
                query1.Edit;
                query1.fieldbyname('XXGS').value:=query1.fieldbyname('BZCL').value/query1.fieldbyname('BZRS').value ;   //更新 20160824原本:BZRS/BZCL 更改為:BZCL/BZRS  by jessy
              end;
          end;
      end;
  end;
end;

procedure TModelCapacity.DBGrid1EditButtonClick(Sender: TObject);
begin
  ModelCap_XX:=TModelCap_XX.create(self);
  ModelCap_XX.show;
end;

procedure TModelCapacity.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if  query1.fieldbyname('YN').Value<>'1' then
    DBGrid1.canvas.font.color:=clLime;
  if  query1.fieldbyname('BZCL').Value>=400 then
    DBGrid1.canvas.font.color:=clBlue;
  if  query1.fieldbyname('RSJS').Value>=300 then
    DBGrid1.canvas.font.color:=clBlue;
  if  query1.fieldbyname('BZCL').IsNull then
    DBGrid1.canvas.font.color:=clred;
end;

end.
