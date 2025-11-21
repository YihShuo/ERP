unit Choice_CLBH1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, DB, DBTables;

type
  TChoice_CLBH = class(TForm)
    Query1: TQuery;
    DS1: TDataSource;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Query1cldh: TStringField;
    Query1zwpm: TStringField;
    Query1ywpm: TStringField;
    DBGrid2: TDBGrid;
    DS2: TDataSource;
    Query2: TQuery;
    Query2ID: TStringField;
    Query2DepName: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Choice_CLBH: TChoice_CLBH;

implementation

uses SGDH_Stock1, main1;

{$R *.dfm}

procedure TChoice_CLBH.Button1Click(Sender: TObject);
begin
  if Label1.Caption = 'CLBH:' then
  begin
    with query1 do
    begin
      active := false;
      sql.Clear;
      sql.add('select cldh,zwpm,ywpm from clzl ');
      sql.add('where cldh like ' + '''' + edit1.Text + '%' + '''');
      sql.add('and ywpm like ' + '''' + '%' + edit2.Text + '%' + '''');
      //20160809 don't allow create material W%
      //
      sql.add('order by cldh');
      active := true;
    end;
  end
  else begin
    with query2 do
    begin
      active := false;
      sql.Clear;
      sql.add('select ID,DEPNAME from BDepartment ');
      sql.add('where SGDH_ID is not null ');
      sql.add('and ID like ' + '''' + edit1.Text + '%' + '''');
      sql.add('and DEPNAME like ' + '''' + '%' + edit2.Text + '%' + '''');
      sql.add('order by DEPNAME');
      active := true;
    end;
  end;
end;

procedure TChoice_CLBH.DBGrid1DblClick(Sender: TObject);
begin
  if query1.Active then
  begin
    if query1.recordcount > 0 then
    begin
      if SGDH_Stock.query1.State in [DsEdit] then
      else
        SGDH_Stock.query1.Edit;
      SGDH_Stock.query1.FieldByName('cldh').Value := query1.fieldbyname('cldh').Value;
      SGDH_Stock.query1.FieldByName('ywpm').Value := query1.fieldbyname('ywpm').Value;
      SGDH_Stock.query1.FieldByName('zwpm').Value := query1.fieldbyname('zwpm').Value;
      close;
    end;
  end;

end;

procedure TChoice_CLBH.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    DBGrid1dblclick(nil);
end;

procedure TChoice_CLBH.FormDestroy(Sender: TObject);
begin
  Choice_CLBH := nil;
end;

procedure TChoice_CLBH.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  action := cafree;
end;

procedure TChoice_CLBH.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self), self.Name);
end;

procedure TChoice_CLBH.DBGrid2DblClick(Sender: TObject);
begin
  if query2.Active then
  begin
    if query2.recordcount > 0 then
    begin
      if SGDH_Stock.query1.State in [DsEdit] then
      else
        SGDH_Stock.query1.Edit;
      SGDH_Stock.query1.FieldByName('ID').Value := query2.fieldbyname('ID').Value;
      SGDH_Stock.query1.FieldByName('DEPNAME').Value := query2.fieldbyname('DEPNAME').Value;
      close;
    end;
  end;
end;

end.
