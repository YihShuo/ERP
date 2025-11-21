unit PurSample_IM1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, ComCtrls,math,
  dateutils, GridsEh, DBGridEh;

type
  TPurSample_IM = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1CLSL: TFloatField;
    Query1okQty: TCurrencyField;
    Button2: TButton;
    CB2: TCheckBox;
    Button3: TButton;
    Query1CSBH: TStringField;
    Query1ZSYWJC: TStringField;
    Label3: TLabel;
    Edit7: TEdit;
    Query1YPZLBH: TStringField;
    Edit9: TEdit;
    Button4: TButton;
    CKmine: TCheckBox;
    Label4: TLabel;
    Edit8: TEdit;
    tmpQry: TQuery;
    DBGridEh1: TDBGridEh;
    procedure Button1Click(Sender: TObject);
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit8KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PurSample_IM: TPurSample_IM;
  sdate,edate:TDate;

implementation

uses  SonMaterial1, main1, PurSample1, Pursample_S1, FunUnit;

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
procedure TPurSample_IM.Button1Click(Sender: TObject);
var i:integer;
    SubSQL:String;
begin
  if length(edit7.Text) = 0 then
  begin
    Showmessage('Please Input  Merge NO');
    exit;
  end;
  with tmpQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select YPZL.KFJD,YPZL.Article from YPZLZL ');
    SQL.Add('left join YPZLZLS on YPZLZLS.YPZLBH=YPZLZL.YPZLBH ');
    SQL.Add('left join YPZL on YPZL.YPDH=YPZLZLS.YPDH ');
    SQL.Add('where YPZLZL.YPZLBH= '''+edit7.Text+''' ');
    Active:=true;
    if RecordCount>0 then
    begin
       SubSQL:='';
       for i:=0 to RecordCount-1 do
       begin
        SubSQL:='((CGZLSS.ZLBH='''+FieldByName('Article').AsString+''') and (CGZLSS.Stage='''+FieldByName('KFJD').AsString+''')) or ';
        Next;
       end;
       SubSQL:=' and ('+Copy(SubSQL,1,length(SubSQL)-4)+')';
    end else
    begin
      Showmessage('MergeNo have no any Sample');
      exit;
    end;
    Active:=false;
  end;
  //
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select  YPZLZLS2.YPZLBH,YPZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,isnull(CGZL.okQty,0) as okQty,');
    sql.add('        isnull(sum(YPZLZLS2.CLSL),0) as CLSL, YPZLZLS2.CSBH, ZSZL.ZSYWJC ');
    sql.add('from YPZLZLS2');
    sql.add('left join (select sum(CGZLSS.Qty) as okQty,CGZLSS.CLBH,CGZLS.JGNO ');
    sql.add('           from CGZLSS ');
    sql.add('           left join CLZL on CLZL.CLDH=CGZLSS.CLBH ');
    sql.add('           left join CGZLS on CGZLS.CGNO=CGZLSS.CGNO AND CGZLS.CLBH=CGZLSS.CLBH  ');
    sql.add('           left join CGZL on CGZL.CGNO=CGZLSS.CGNO ');
    sql.add('           where CGZLSS.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('                 and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('                 and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
    sql.add('                 and CLZL.YWPM like '+''''+'%'+edit4.Text+'%'+'''');
    sql.add('                '+SubSQL);
    //sql.add('                 and CGZLSS.XXCC='+''''+'ZZZZZZ'+'''');
    sql.add('                 and CGZL.GSBH='+''''+main.edit2.text+'''');
    sql.add('           group by CGZLS.JGNO,CGZLSS.CLBH ) CGZL on CGZL.CLBH=YPZLZLS2.CLBH  ');

    sql.add('left join CLZL on CLZL.CLDH=YPZLZLs2.CLBH');
    sql.add('left join ZSZL on ZSZL.ZSDH=YPZLZLs2.CSBH');
    sql.add('left join ZSZL_DEV on ZSZL.ZSDH=ZSZL_DEV.ZSDH and  ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
    sql.add('left join YPZLZL on YPZLZL.YPZLBH=YPZLZLS2.YPZLBH');
    sql.add('where YPZLZLS2.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+edit4.Text+'%'+'''');
    sql.add('      and YPZLZLS2.ZMLB='+''''+'N'+'''');
    sql.add('      and YPZLZLS2.Size='+''''+'ZZZZZZ'+'''');
    sql.add('      and YPZLZL.PD=''P'' ');
    sql.add('      and YPZLZL.YPZLBH= '+''''+edit7.Text+'''');
    IF  edit8.Text<>'' THEN
        sql.add('      and YPZLZLS2.CSBH = '''+edit8.Text+''' ');
    if CB2.Checked then
    begin
        sql.add('and YPZLZLS2.MJBH='+''''+'ZZZZZZZZZZ'+'''');
    end;
    if CKmine.Checked=true then
      sql.add('and ZSZL_DEV.SamplePurchaser='''+main.Edit1.Text+''' ');
    sql.add('group by YPZLZLS2.YPZLBH,YPZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CGZL.okQty,YPZLZLS2.CSBH,ZSZL.ZSYWJC ');
    sql.add('order by YPZLZLS2.YPZLBH,YPZLZLS2.CLBH');
    active:=true;
  end;
end;

procedure TPurSample_IM.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit2.SetFocus;
end;

procedure TPurSample_IM.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit3.SetFocus;
end;

procedure TPurSample_IM.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit4.SetFocus;
end;

procedure TPurSample_IM.Edit8KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  button1click(nil);
end;

procedure TPurSample_IM.Button2Click(Sender: TObject);
begin
  SonMaterial:=TSonMaterial.create(self);
  SonMaterial.show;
end;

procedure TPurSample_IM.FormDestroy(Sender: TObject);
begin
  PurSample_IM:=nil;
end;

procedure TPurSample_IM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TPurSample_IM.Button3Click(Sender: TObject);
var bm:Tbookmark;
    i:integer;
    Qty:real;
    bookmarklist:tbookmarklistEH;
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
  //with query1 do
   // begin
  query1.disablecontrols;
  bm:=query1.getbookmark;
  bookmarklist:=DBGridEh1.selectedrows;
  if bookmarklist.count>0 then
    begin
      try
        for i:=0 to bookmarklist.count-1 do
        begin
          query1.gotobookmark(pointer(bookmarklist[i]));
          with PurSample.CGDet do
            begin
              insert;
              fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
              fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
              fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
              fieldbyname('JGNO').value:=query1.fieldbyname('YPZLBH').value;
              if  query1.fieldbyname('CLSL').value>query1.fieldbyname('okQty').value then
                begin
                  fieldbyname('XqQty').value:=roundto(query1.fieldbyname('CLSL').value-query1.fieldbyname('okQty').value,-1);
                end
                else
                  begin
                    fieldbyname('XqQty').value:=0;
                  end;
              Post;
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

procedure TPurSample_IM.Button4Click(Sender: TObject);
begin
Pursample_S:=TPursample_S.create(self);
Pursample_S.show;
end;

procedure TPurSample_IM.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin

  if query1.FieldByName('CLSL').value<=query1.FieldByName('okQty').value then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;

  if (query1.FieldByName('okQty').value>0) and (query1.FieldByName('CLSL').value>query1.FieldByName('okQty').value) then
  begin
    DBGridEh1.canvas.font.color:=clLime;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;

end;

procedure TPurSample_IM.DBGridEh1DblClick(Sender: TObject);
begin
  if (not query1.Active) then
    begin
      abort;
    end;
  if (Query1.recordcount<1) then
    begin
      abort;
    end;
  with PurSample.CGDet do
    begin
      insert;
      fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
      fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
      fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
      fieldbyname('JGNO').value:=query1.fieldbyname('YPZLBH').value;
      if  query1.fieldbyname('CLSL').value>query1.fieldbyname('okQty').value then
      begin
        fieldbyname('XqQty').value:=roundto(query1.fieldbyname('CLSL').value-query1.fieldbyname('okQty').value,-1);
      end else
      begin
        fieldbyname('XqQty').value:=0;
      end;
      Post;
    end;
  showmessage('Succeed.');
end;

procedure TPurSample_IM.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGridEh1DblClick(nil);
end;

end.
