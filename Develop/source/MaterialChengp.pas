unit MaterialChengp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Grids, DBGrids, DBTables, ExtCtrls, Mask, DBCtrls;

type
  TMaterialCheng = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Query1: TQuery;
    Query2: TQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Query1tempddbh: TStringField;
    Query1cllb: TStringField;
    Query1zwpm: TStringField;
    Query1ywpm: TStringField;
    Query1ddbh: TStringField;
    Button1: TButton;
    Button2: TButton;
    Query2cldh: TStringField;
    Query2zwpm: TStringField;
    Query2ywpm: TStringField;
    Query2cllb: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    UpdateSQL1: TUpdateSQL;
    Edit2: TEdit;
    cb1: TComboBox;
    classq: TQuery;
    ckb1: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialCheng: TMaterialCheng;

implementation

{$R *.dfm}

procedure TMaterialCheng.FormCreate(Sender: TObject);
var i:integer;
begin
  classq.Active:=true;
  cb1.Items.Clear;
  cb1.Items.Add('ALL');
  classq.First;
  for i:=1 to classq.RecordCount do
  begin
    cb1.Items.Add(classq.fieldbyname('cllb').Value);
    classq.Next;
  end;
  classq.active:=false;
end;

procedure TMaterialCheng.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TMaterialCheng.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select * from clzltemp ');
    sql.add('where ywpm is not null ');
    if (cb1.Text <> 'ALL') and (cb1.text<>'') then
      sql.Add(' and cllb='+''''+cb1.Text+'''');
    if ckb1.Checked then
      sql.Add(' and ddbh is null');
    active:=true;
    query2.active:=true;  
  end;
end;

procedure TMaterialCheng.DBGrid2DblClick(Sender: TObject);
begin
  with query2 do
  begin
    edit2.Text:=fieldbyname('cldh').AsString;
  end;
end;

procedure TMaterialCheng.Button2Click(Sender: TObject);
begin
  with classq do
  begin
    if messagedlg('Chang data?',mtinformation,[mbYes,mbNo],0)=mrYes then
    begin
      sql.Clear;
      sql.Add('update clzltemp set ddbh='+''''+edit2.Text+'''' );
      sql.Add(' where tempddbh='+''''+DBEdit1.Text+'''');
      sql.add('update cgzls set clbh='+''''+edit2.Text+'''' );
      sql.add(' where clbh='+''''+DBEdit1.Text+'''');
      sql.add('update cgzl');
      sql.add('set cglx = '+''''+'6'+'''');
      sql.add('from cgzl where cgno in ');
      sql.add('(select cgzl.cgno from cgzl');
      sql.add('	left join');
      sql.add('	(select cgno,isnull(count(*),0) as con');
      sql.add('      from cgzls');
      sql.add('      where substring(clbh,1,1)='+''''+'T'+ '''');
      sql.add('      group by  cgno)');
      sql.add('	 as z on cgzl.cgno=z.cgno');
      sql.add('	where cgzl.cglx='+''''+'T'+''''+'and isnull(z.con,0)=0)');
      sql.add('');

      ExecSQL;
      query1.Active:=false;
      query1.Active:=true;
    end;
  end;
end;

end.
