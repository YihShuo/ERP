unit SKU_ExtraXXZLS1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, Comobj;

type
  TSKU_ExtraXXZLS = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    CB2: TCheckBox;
    Button3: TButton;
    CB3: TCheckBox;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1BWDH: TStringField;
    Query1YWSM: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    MatIDEdit: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    MatNMEdit: TEdit;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SKU_ExtraXXZLS: TSKU_ExtraXXZLS;

implementation
  uses FunUnit,SKU_ExtraCost1;
{$R *.dfm}

procedure TSKU_ExtraXXZLS.Button2Click(Sender: TObject);
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

procedure TSKU_ExtraXXZLS.Button1Click(Sender: TObject);
begin

  with query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select BWZL.BWDH,BWZL.YWSM,XXZLS.CLBH,CLZL.YWPM');
    SQL.Add('from XXZLS');
    SQL.Add('Left join CLZL on CLZL.CLDH=XXZLS.CLBH');
    SQL.Add('Left join BWZL on BWZL.BWDH=XXZLS.BWBH');
    SQL.Add('left join XXZL on XXZLS.XieXing=XXZL.XieXing and XXZLS.SheHao=XXZL.SheHao');
    SQL.Add('left join KFZL on KFZL.KFDH=XXZL.KHDH ');
    SQL.Add('where 1=1 and XXZLS.XieXing='''+SKU_ExtraCost.XXZL.FieldByName('XieXing').AsString+'''  and XXZLS.SheHao='''+SKU_ExtraCost.XXZL.FieldByName('SheHao').AsString+''' ');
    if MatIDEdit.Text<>'' then
      sql.add(' and CLZL.CLDH like '''+MatIDEdit.Text+'%'' ');
    if MatNMEdit.Text<>'' then
      sql.add(' and CLZL.YWPM like ''%'+MatNMEdit.Text+'%'' ');
    if CB2.Checked=true then
    begin
      sql.add(' and CLZL.YWPM like ''%SHRINKPROOF%'' ');
    end;
    if CB3.Checked=true then
    begin
      sql.add(' and CLZL.YWPM like ''%EMBROIDERY%'' ');
    end;
    active:=true;
  end;
  //
  
end;

procedure TSKU_ExtraXXZLS.Button3Click(Sender: TObject);
var bm:Tbookmark;
    i:integer;
    Qty:real;
    bookmarklist:TbookmarklistEh;
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
    bookmarklist:=DBGridEh1.selectedrows;
    if bookmarklist.count>0 then
    begin
      try
        for i:=0 to bookmarklist.count-1 do
        begin
          query1.gotobookmark(pointer(bookmarklist[i]));
          with SKU_ExtraCost.ExtraVNS do
          begin
              edit;
              fieldbyname('YWSM').value:=query1.fieldbyname('YWSM').value;
              fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
              fieldbyname('BWBH1').value:=query1.fieldbyname('BWDH').value;
              fieldbyname('CLBH1').value:=query1.fieldbyname('CLBH').value;
              insert;
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

procedure TSKU_ExtraXXZLS.DBGridEh1DblClick(Sender: TObject);
var i:integer;
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  with SKU_ExtraCost.ExtraVNS do
  begin
      Edit;
      Fieldbyname('YWSM').value:=query1.fieldbyname('YWSM').value;
      Fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
      Fieldbyname('BWBH1').value:=query1.fieldbyname('BWDH').value;
      Fieldbyname('CLBH1').value:=query1.fieldbyname('CLBH').value;
      Post;          //¥Îpost
  end;
  showmessage('Succeed.');
  close;
end;

end.
