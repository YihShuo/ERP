unit BDepartment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TBDepForm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    GSBHEdit: TEdit;
    DepNMEdit: TEdit;
    Button1: TButton;
    DBGrid1: TDBGridEh;
    DS1: TDataSource;
    DepQuery: TQuery;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    parentQuery:TQuery;
    parentFieldNM:string;
    DeliverMat_FieldName:string;
    { Private declarations }
  public
    { Public declarations }
    procedure SetParentQuery(qryObj:TQuery;FieNM:string);
  end;

var
  BDepForm: TBDepForm;

implementation
   uses main1,DeliverMatDTp,FunUnit;
{$R *.dfm}
procedure TBDepForm.SetParentQuery(qryObj:TQuery;FieNM:string);
begin
  parentQuery:=qryObj;
  parentFieldNM:=FieNM;
end;
//
procedure TBDepForm.Button1Click(Sender: TObject);
begin
  with DepQuery do
  begin
    Active:=false;
    sql.Clear;
    sql.Add('select ID,DepName,DepMemo from BDepartment ');
    sql.Add('   where ID like ''%'+GSBHEdit.Text+'%'' ' );
    sql.Add('   and DepName like ''%'+DepNMEdit.Text+'%'' order by GSBH,DepName');
    Active:=true;
  end;

end;

procedure TBDepForm.DBGrid1DblClick(Sender: TObject);
begin
 if DepQuery.Active=true then
 begin
    if DepQuery.RecordCount>0 then
    begin
      with parentQuery do
      begin
       Edit;
       FieldByName(parentFieldNM).AsString:=DepQuery.fieldByName('ID').AsString;
       FieldByName(parentFieldNM+'NM').AsString:=DepQuery.fieldByName('DepName').AsString;
       Post;
       
      end;
      close;
    end;
 end;
end;

end.
