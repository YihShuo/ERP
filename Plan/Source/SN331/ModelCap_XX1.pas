unit ModelCap_XX1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Grids, DBGrids, ExtCtrls,comobj,
  GridsEh, DBGridEh,dateutils;

type
  TModelCap_XX = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1XieXing: TStringField;
    Query1XieMing: TStringField;
    Button2: TButton;
    CB1: TCheckBox;
    Label3: TLabel;
    Edit3: TEdit;
    Query1DAOMH: TStringField;
    Query1KFJC: TStringField;
    CB2: TCheckBox;
    Edit4: TEdit;
    Label4: TLabel;
    DBGridEh1: TDBGridEh;
    Edit5: TEdit;
    Label5: TLabel;
    Query1jijie: TStringField;
    Query1article: TStringField;
    bnCopy: TButton;
    Label6: TLabel;
    Edit6: TEdit;
    Query1SheHao: TStringField;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure bnCopyClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ModelCap_XX: TModelCap_XX;

implementation

uses main1,ModelCapacity1, FunUnit;

{$R *.dfm}

procedure TModelCap_XX.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit2.SetFocus;
end;

procedure TModelCap_XX.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    button1click(nil);
end;

procedure TModelCap_XX.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select XieXing,SheHao,XieMing,DAOMH,KFZL.KFJC,article as article,JIJIE  ');
    sql.add('from XXZL');
    sql.add('left join KFZL on KFZL.KFDH=XXZL.KHDH ');
    sql.add('where 1=1 ');
    if Edit1.Text<>'' then
      sql.add(' and XXZL.XieXing like '''+Edit1.Text+'%'' ');
    if Edit2.Text<>'' then
      sql.add(' and XXZL.XieMing like ''%'+Edit2.Text+'%'' ');
    if Edit3.Text<>'' then
      sql.add(' and XXZL.DAOMH like ''%'+Edit3.Text+'%'' ');
    if Edit4.Text<>'' then
      sql.add(' and XXZL.Article like ''%'+Edit4.Text+'%'' ');
    if Edit5.Text<>'' then
      sql.add(' and XXZL.jijie like ''%'+Edit5.Text+'%'' ');
    if length(Edit6.Text)>=4 then
    begin
      sql.add(' and exists (select XieXing from DDZL');
      sql.add('             where DDZL.BUYNO like '''+Edit6.Text+'%'' and GSBH='''+main.Edit2.Text+''' ');
      sql.add('                   and DDZl.XieXing=XXZL.XieXing and DDZl.SheHao=XXZl.SheHao');
      sql.add('                   and XXZL.XieXing like '+''''+edit1.Text+'%'' ');
      sql.add('                   and XXZl.XieMing like '+''''+'%'+edit2.text+'%'' ');
      sql.add('             Group by XieXing) ');
    end;
    if CB2.Checked=true then
    begin
      sql.add(' and exists (select XieXing from DDZL');
      sql.add('             where DDZL.ShipDate>=getdate()-90  and GSBH='''+main.Edit1.Text+''' ');
      sql.add('                   and DDZl.XieXing=XXZL.XieXing and DDZl.SheHao=XXZl.SheHao');
      sql.add('                   and XXZL.XieXing like '+''''+edit1.Text+'%'+'''');
      sql.add('                   and XXZl.XieMing like '+''''+'%'+edit2.text+'%'+''''+')');
    end;
    if CB1.checked then
    begin
      sql.add('and  not exists (select XieXing from SCXXCL where SCXXCL.XieXing=XXZl.XieXing)');
    end;
    sql.add('order by KFZL.KFJC,XieXing');
    active:=true;
  end;

end;

procedure TModelCap_XX.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
    DBGridEh1DblClick(nil);
end;

procedure TModelCap_XX.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
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

procedure TModelCap_XX.FormDestroy(Sender: TObject);
begin
  ModelCap_XX:=nil;
end;

procedure TModelCap_XX.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TModelCap_XX.DBGridEh1DblClick(Sender: TObject);
var i:integer;
    GXLB:array [0..3] of string;
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  GXLB[0]:='S';
  GXLB[1]:='C';
  GXLB[2]:='P';
  GXLB[3]:='A';
  //GXLB[3]:='AR';
  with ModelCapacity.query1 do
  begin
    for i:=0 to 3 do
    begin
      insert;
      fieldbyname('XieXing').value:=query1.fieldbyname('XieXing').value;
      fieldbyname('SheHao').value:=query1.fieldbyname('SheHao').value;
      fieldbyname('XieMing').value:=query1.fieldbyname('XieMing').value;
      fieldbyname('Article').value:=query1.fieldbyname('Article').value;
      fieldbyname('DAOMH').value:=query1.fieldbyname('DAOMH').value;
      fieldbyname('GXLB').value:=GXLB[i];
      fieldbyname('BZLB').value:='3';
      Post;          //用post
    end;
  end;
  showmessage('Succeed.');
  close;
end;

procedure TModelCap_XX.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGridEh1DblClick(nil);
end;
procedure TModelCap_XX.bnCopyClick(Sender: TObject);
var
  bm:Tbookmark;
  i,j:integer;
  bookmarklist:TbookmarklistEH;
  GXLB:array [0..3] of string;
begin
  if messagedlg('Do you really want to add these record?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
     if (not query1.active) or (query1.recordcount<1) then
     abort;
     query1.DisableControls;       //停止控制
     bm:=query1.getbookmark;
     bookmarklist:=DBGridEh1.selectedrows;
     if bookmarklist.count>0 then
     begin
       GXLB[0]:='S';
       GXLB[1]:='C';
       GXLB[2]:='P';
       GXLB[3]:='A';
       try
        for i:=0 to bookmarklist.count-1 do                                  //{
        begin                                                                     //多筆
          query1.gotobookmark(pointer(bookmarklist[i]));
          begin
                 with ModelCapacity.query1 do
                 begin
                  for j:=0 to 3 do
                  begin
                    insert;
                    fieldbyname('XieXing').value:=query1.fieldbyname('XieXing').value;
                    fieldbyname('SheHao').value:=query1.fieldbyname('SheHao').value;
                    fieldbyname('XieMing').value:=query1.fieldbyname('XieMing').value;
                    fieldbyname('Article').value:=query1.fieldbyname('Article').value;
                    fieldbyname('DAOMH').value:=query1.fieldbyname('DAOMH').value;
                    fieldbyname('GXLB').value:=GXLB[j];
                    fieldbyname('BZLB').value:='3';
                    Post;
                    //用post
                  end;
                end;
          end;//with
       end; //for
      //end;
       finally
       begin
        query1.gotobookmark(bm);
        query1.freebookmark(bm);
        query1.enablecontrols;
        showmessage('You have finish copy!');
       end;
     end;

  end;
 end;
end;

procedure TModelCap_XX.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
