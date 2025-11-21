unit ExtraMatNo1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, ExtCtrls, StdCtrls,FunUnit;

type
  TExtraMatNo = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    udMain: TUpdateSQL;
    Copy: TButton;
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DbClick(Sender: TObject);
    procedure KeyPress(Sender: TObject; var Key: Char);
    procedure CopyClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExtraMatNo: TExtraMatNo;

implementation

uses ExtraCost;


{$R *.dfm}

procedure TExtraMatNo.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    sql.Clear();
    sql.Add('select ExtraVN.clbh,clzl.zwpm,clzl.ywpm');
    sql.Add('from ExtraVN left join DDZL on DDZL.XieXing=ExtraVN.XieXing and DDZL.SheHao=ExtraVN.SheHao');
    sql.add('Left join (select YSBH from SMDD where GXLB= ''A''');
    sql.Add('Group by YSBH ) as SMDD on SMDD.YSBH = DDZl.DDBH');
    sql.Add('left join clzl on clzl.cldh = ExtraVN.clbh');
    sql.add('where ExtraVN.clbh like '+''''+''+Edit1.Text+'%'+'''');
    sql.Add('Group by ExtraVN.clbh,clzl.zwpm,clzl.ywpm');
    sql.Add('order by ExtraVN.clbh');
    active:=true;
  end;
  with DBGridEh1 do
   begin
     columns[0].Width:=80;
     columns[0].Footer.ValueType:=fvtcount;
     columns[1].Width:=160;
     columns[2].Width:=160;
   end;
   ExtraCost1.Edit2.Clear;
end;

procedure TExtraMatNo.DBGridEh1DbClick(Sender: TObject);
var i:integer;
  dNeed,dNeed1:double;
begin
  dNeed:=query1.fieldbyname('clbh').value;

  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  with ExtraMatNo.Query1 do
  begin
    if Query1.Fields[0].FieldName = ExtraMatNo.Query1.fields[0].FieldName  then
    begin
        ExtraCost1.edit2.text:= Query1.FieldByName('clbh').AsString;
    end;
  end;
    showmessage('Succeed.');
end;


procedure TExtraMatNo.KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  DBGridEh1DbClick(nil);
end;


procedure TExtraMatNo.CopyClick(Sender: TObject);
var bm:Tbookmark;
    i,j,k:integer;
    bookmarklist:tbookmarklistEh;
    S: string;
begin
  if messagedlg('Do you really want to copy these record?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    Query1.disablecontrols;
    bm:=Query1.getbookmark;
    bookmarklist:=DBGridEh1.selectedrows;
    if bookmarklist.count>0 then
    begin
      Query1.disablecontrols;
      bm:=Query1.getbookmark;
      bookmarklist:=DBGridEh1.selectedrows;
      if bookmarklist.count>0 then
      begin
      try
        for i:=0 to bookmarklist.count-1 do
        begin
          Query1.GotoBookmark(pointer(bookmarklist[i]));
          S := S+ Query1.FieldByName('clbh').AsString + '*' ;
        end;
        SetLength(S, Length(S) - 1); // bo di ky tu cuoi
      finally
        begin
          Query1.gotobookmark(bm);
          Query1.freebookmark(bm);
          Query1.enablecontrols;
          ExtraCost1.Edit2.Text := S ;
          showmessage('You have finish copy!');
        end;
      end;
     end;
    end;
    Query1.EnableControls;
  end;
end;

end.
