unit SampleTrackReason1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, DBTables, Grids, DBGrids;

type
  TSampleTrackReason = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    ZWSM: TEdit;
    Button1: TButton;
    ReasonQry: TQuery;
    DS: TDataSource;
    DBGrid1: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    ItemNM:string;
    ParentQry:TQuery;
    { Private declarations }
  public
    { Public declarations }
    procedure SetItemNM(NM:string;Qry:TQuery);
  end;

var
  SampleTrackReason: TSampleTrackReason;

implementation
  uses main1,FunUnit;
{$R *.dfm}
//
procedure TSampleTrackReason.SetItemNM(NM:string;Qry:TQuery);
begin
  ItemNM:=NM;
  ParentQry:=Qry;
end;
//
procedure TSampleTrackReason.Button1Click(Sender: TObject);
begin
  //
  with ReasonQry do
  begin
     Active:=true;
     SQL.Clear;
     SQL.Add('Select LYBH,YWSM,ZWSM from SPSCRmS where GSBH='''+main.Edit2.Text+''' and ItemNM='''+ItemNM+''' ');
     SQL.Add('and ZWSM like ''%'+ZWSM.Text+'%'' ');
     SQL.Add('order by LYBH ');
     //FuncObj.WriteErrorLog(sql.Text);
     Active:=true;
  end;
  //
end;

procedure TSampleTrackReason.DBGrid1DblClick(Sender: TObject);
begin
  ParentQry.Edit;
  ParentQry.FieldByName('LYBH').AsString:=ReasonQry.FieldByName('LYBH').AsString;
  ParentQry.FieldByName('ZWSM').AsString:=ReasonQry.FieldByName('ZWSM').AsString;
  ParentQry.FieldByName('YWSM').AsString:=ReasonQry.FieldByName('YWSM').AsString;
  ParentQry.Post;
  Close;
end;

end.
