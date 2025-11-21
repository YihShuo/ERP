unit SampleMerge_CL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TSampleMerge_CL = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    Edit3: TEdit;
    DBGrid1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Button3: TButton;
    Label3: TLabel;
    Edit5: TEdit;
    Label4: TLabel;
    Query1YPDH: TStringField;
    Query1KFJD: TStringField;
    Query1JiJie: TStringField;
    YPZLBHLabel: TLabel;
    Query1YPZLBH: TStringField;
    Query1MergeCount: TIntegerField;
    NotMergeCK: TCheckBox;
    Query1Size: TStringField;
    Query1devcode: TStringField;
    Query1ProductionLocation: TStringField;
    ComboBox1: TComboBox;
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SampleMerge_CL: TSampleMerge_CL;

implementation

uses main1,SampleMerge1,FunUnit;

{$R *.dfm}
Function GetSeasonString(before:string):string;
begin
  if Pos('''''',before)<=0 then
    if Pos('''',before)>0 then
       result:=StringReplace(before, '''', '''''',[rfReplaceAll, rfIgnoreCase])
    else
       result:=before
  else
    result:=before;
end;
procedure TSampleMerge_CL.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit2.SetFocus;
end;

procedure TSampleMerge_CL.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit3.SetFocus;
end;

procedure TSampleMerge_CL.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
  //edit4.SetFocus;
end;

procedure TSampleMerge_CL.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
   button1click(nil);
end;

procedure TSampleMerge_CL.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select ypzl.YPDH,kfxxzl.devcode,KFJD,kfxxzl.JiJie,YS.YPZLBH,YS.MergeCount,ypzl.ypcc as Size,ypzl.ProductionLocation ');
    sql.add('from  ypzl ');
    sql.add('left join kfxxzl on kfxxzl.XIEXING =ypzl.XIEXING and kfxxzl.SHEHAO=ypzl.SHEHAO');
    sql.Add('left join (SELECT YPZLZLS.YPDH,Max(YPZLZLS.YPZLBH) as YPZLBH,Count(YPZLZLS.YPDH) as MergeCount   FROM YPZLZLS Group by YPZLZLS.YPDH) YS on YPZL.YPDH=YS.YPDH ');
    //sql.add('left join (SELECT YPZLZLS.YPDH,YPZLZLS.YPZLBH FROM YPZLZLS WHERE YPZLZLS.YPZLBH='''+YPZLBHLabel.Caption+'''');
    //sql.add('           ) YS on YS.YPDH=ypzl.YPDH');
    sql.add(' where 1=1 and ypzl.ProductionLocation like ''%'+combobox1.text+''' ');
    if  edit1.Text <> '' then
        sql.add('and kfxxzl.JiJie = '+''''+GetSeasonString(edit1.Text)+'''');
    if  edit2.Text <> '' then
        sql.add('and ypzl.KFJD = '+''''+edit2.Text+'''');
    if  edit3.Text <> '' then
        sql.add('and ypzl.YPDH like ''%'+edit3.Text+'%''');
    if  edit5.Text <> '' then
        sql.add('and ,kfxxzl.devcode like ''%'+edit5.Text+'%''');
    if  NotMergeCK.Checked=true then
        sql.add('and YS.YPZLBH is null ');
    sql.Add('and (YPZL.GSDH=''LAI'' or YPZL.GSDH='''+main.Edit2.Text+''') ');
    sql.add('order by kfxxzl.JiJie,KFJD,ypzl.YPDH');
    active:=true;
  end;
end;

procedure TSampleMerge_CL.DBGrid1DblClick(Sender: TObject);
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;

  if query1.fieldbyname('devcode').AsString<>'' then
  begin
    with SampleMerge.YPZLZLS do
    begin
      insert;
      fieldbyname('YPDH').value:=query1.fieldbyname('YPDH').value;
      fieldbyname('devcode').value:=query1.fieldbyname('devcode').value;
      fieldbyname('KFJD').value:=query1.fieldbyname('KFJD').value;
      fieldbyname('JiJie').value:=query1.fieldbyname('JiJie').value;
      post;
    end;
    showmessage('Succeed.');
  end else
  begin
    showmessage('Article can''t be empty!');
  end;

end;

procedure TSampleMerge_CL.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
     DBGrid1DblClick(nil);
end;

procedure TSampleMerge_CL.FormDestroy(Sender: TObject);
begin
SampleMerge_CL:=nil;
end;

procedure TSampleMerge_CL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

action:=cafree;
end;

procedure TSampleMerge_CL.Button3Click(Sender: TObject);
var bm:Tbookmark;
    i:integer;
    Qty:real;
    bookmarklist:tbookmarklistEh;
begin
  if messagedlg('Do you really want to copy these record?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
  Qty:=0;
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  query1.disablecontrols;
  bm:=query1.getbookmark;
  bookmarklist:=dbgrid1.selectedrows;
  if bookmarklist.count>0 then
  begin
      try
        for i:=0 to bookmarklist.count-1 do
        begin
          query1.gotobookmark(pointer(bookmarklist[i]));
          if query1.fieldbyname('ARTICLE').AsString<>'' then
          begin
            with SampleMerge.YPZLZLS do
            begin
                insert;
                fieldbyname('YPDH').value:=query1.fieldbyname('YPDH').value;
                fieldbyname('ARTICLE').value:=query1.fieldbyname('ARTICLE').value;
                fieldbyname('KFJD').value:=query1.fieldbyname('KFJD').value;
                fieldbyname('JiJie').value:=query1.fieldbyname('JiJie').value;
                post;
            end;
          end else
          begin
            showmessage('Article can''t be empty!');
            break;
          end;
        end;
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

procedure TSampleMerge_CL.FormActivate(Sender: TObject);
begin

  EDIT1.Text:=SampleMerge.YPZLZL.fieldbyname('JiJie').value;
  EDIT2.Text:=SampleMerge.YPZLZL.fieldbyname('KFJD').value;

end;

procedure TSampleMerge_CL.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if Query1.FieldByName('YPZLBH').IsNull=True then
  begin
    DBGrid1.canvas.font.color:=clred;
    DBGrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TSampleMerge_CL.FormCreate(Sender: TObject);
begin
   Combobox1.text:=samplemerge.YPZLZL.fieldbyname('ProductionLocation').AsString;
end;

end.
