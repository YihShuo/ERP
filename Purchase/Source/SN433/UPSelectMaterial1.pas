unit UPSelectMaterial1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DBTables, DB, StdCtrls, GridsEh, DBGridEh, ExtCtrls, DBGrids;

type
  TUPSelectMaterial = class(TForm)
    Panel1: TPanel;
    Splitter1: TSplitter;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    Button1: TButton;
    Query1: TQuery;
    DataSource1: TDataSource;
    Label4: TLabel;
    Query1CLBH: TStringField;
    Query1ywpm: TStringField;
    Query1zwpm: TStringField;
    Query1dwbh: TStringField;
    Query1zsdh: TStringField;
    Query1zsywjc: TStringField;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Edit5: TEdit;
    Label5: TLabel;
    Edit6: TEdit;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    RadioButton4: TRadioButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UPSelectMaterial: TUPSelectMaterial;

implementation

uses
  UPMaterial1;

{$R *.dfm}

procedure TUPSelectMaterial.FormShow(Sender: TObject);
begin
  Edit1.SetFocus;
  radiobutton4.Checked := true;
end;

procedure TUPSelectMaterial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TUPSelectMaterial.FormDestroy(Sender: TObject);
begin
  UPSelectMaterial := nil;
end;

procedure TUPSelectMaterial.Button1Click(Sender: TObject);
begin

   // BOM Material
  if radiobutton1.Checked = true then
  begin
    with Query1 do
    begin
      active := false;
      sql.Clear;
      sql.Add(' select distinct z2.CLBH, c.ywpm, c.zwpm, c.dwbh, z.zsdh, z.zsywjc ');
      sql.Add(' from ZLZLS2 z2 ');
      sql.Add(' left join CLZL c on c.cldh=z2.CLBH ');
      sql.Add(' left join zszl z on  z.ZSDH=z2.CSBH ');
      sql.Add(' where 1=1 ');
      sql.add(' and z.zsdh is not null ');
      if (trim(Edit1.Text) <> '') then
      begin
        sql.add(' and z2.CLBH Like ''' + trim(Edit1.Text) + '%' + ''' ');
      end;
      if (trim(Edit2.Text) <> '') then
      begin
        sql.add(' and c.ywpm Like ''' + '%' + trim(edit2.Text) + '%' + ''' ');
      end;
      if (trim(Edit3.Text) <> '') then
      begin
        sql.add(' and c.ywpm Like ''' + '%' + trim(edit3.Text) + '%' + ''' ');
      end;
      if (trim(Edit4.Text) <> '') then
      begin
        sql.add(' and c.ywpm Like ''' + '%' + trim(edit4.Text) + '%' + ''' ');
      end;
      if (trim(Edit5.Text) <> '') then
      begin
        sql.add(' and z.zsdh Like ''' + trim(Edit5.Text) + '%' + ''' ');
      end;
      if (trim(Edit6.Text) <> '') then
      begin
        sql.add(' and z.zsywjc Like ''' + '%' + trim(Edit6.Text) + '%' + ''' ');
      end;
      active := true;
      //requestlive := false;
      //cachedupdates := false;
    end;
  end;

   // Carton
  if radiobutton2.Checked = true then
  begin
    with Query1 do
    begin
      active := false;
      sql.Clear;
      sql.Add(' select distinct c.cldh as clbh, c.ywpm, c.zwpm, c.dwbh, y2.ZSDH, z.zsywjc ');
      sql.Add(' from clzl c ');
      sql.Add(' left join ywbzpo y on y.CLBH = c.cldh ');
      sql.Add(' left join ywdd y2 on y2.DDBH = y.DDBH ');
      sql.Add(' left join zszl z on z.ZSDH = y2.ZSDH ');
      sql.Add(' where 1=1 ');
      sql.add(' and y2.zsdh is not null ');
      if (trim(Edit1.Text) <> '') then
      begin
        sql.add(' and c.cldh Like ''' + trim(Edit1.Text) + '%' + ''' ');
      end;
      if (trim(Edit2.Text) <> '') then
      begin
        sql.add(' and c.ywpm Like ''' + '%' + trim(edit2.Text) + '%' + ''' ');
      end;
      if (trim(Edit3.Text) <> '') then
      begin
        sql.add(' and c.ywpm Like ''' + '%' + trim(edit3.Text) + '%' + ''' ');
      end;
      if (trim(Edit4.Text) <> '') then
      begin
        sql.add(' and c.ywpm Like ''' + '%' + trim(edit4.Text) + '%' + ''' ');
      end;
      if (trim(Edit5.Text) <> '') then
      begin
        sql.add(' and y2.zsdh Like ''' + trim(Edit5.Text) + '%' + ''' ');
      end;
      if (trim(Edit6.Text) <> '') then
      begin
        sql.add(' and z.zsywjc Like ''' + '%' + trim(Edit6.Text) + '%' + ''' ');
      end;
      active := true;
      //requestlive := false;
      //cachedupdates := false;
    end;
  end;


   // Label
  if radiobutton3.Checked = true then
  begin
    with Query1 do
    begin
      active := false;
      sql.Clear;
      sql.Add(' select distinct cgss.CLBH, c.ywpm, c.zwpm, c.dwbh, cg.ZSBH as ZSDH, z.zsywjc ');
      sql.Add(' from CGZLSS cgss ');
      sql.Add(' left join clzl c on c.cldh = cgss.CLBH ');
      sql.Add(' left join cgzl cg on cg.CGNO=cgss.CGNO ');
      sql.Add(' left join zszl z on z.zsdh = cg.ZSBH ');
      sql.Add(' where 1=1 ');
      sql.add(' and Z.ZSDH is not null ');
      if (trim(Edit1.Text) <> '') then
      begin
        sql.add(' and cgss.CLBH Like ''' + trim(Edit1.Text) + '%' + ''' ');
      end;
      if (trim(Edit2.Text) <> '') then
      begin
        sql.add(' and c.ywpm Like ''' + '%' + trim(edit2.Text) + '%' + ''' ');
      end;
      if (trim(Edit3.Text) <> '') then
      begin
        sql.add(' and c.ywpm Like ''' + '%' + trim(edit3.Text) + '%' + ''' ');
      end;
      if (trim(Edit4.Text) <> '') then
      begin
        sql.add(' and c.ywpm Like ''' + '%' + trim(edit4.Text) + '%' + ''' ');
      end;
      if (trim(Edit5.Text) <> '') then
      begin
        sql.add(' and cg.ZSBH Like ''' + trim(Edit5.Text) + '%' + ''' ');
      end;
      if (trim(Edit6.Text) <> '') then
      begin
        sql.add(' and z.zsywjc Like ''' + '%' + trim(Edit6.Text) + '%' + ''' ');
      end;
      active := true;
      //requestlive := false;
      //cachedupdates := false;
    end;
  end;
  //
  if radiobutton4.Checked = true then
  begin
    with Query1 do
    begin
      active := false;
      sql.Clear;
      sql.Add(' Select clzl.cldh as CLBH, clzl.ywpm, clzl.zwpm, clzl.dwbh, zszl.zsdh, zszl.zsywjc ');
      sql.Add(' from clzl  ');
      sql.Add(' left join zszl  on zszl.zsdh = clzl.ZSDH ');
      sql.Add(' where 1=1 ');
      if (trim(Edit1.Text) <> '') then
      begin
        sql.add(' and clzl.CLDH Like ''' + trim(Edit1.Text) + '%' + ''' ');
      end;
      if (trim(Edit2.Text) <> '') then
      begin
        sql.add(' and clzl.ywpm Like ''' + '%' + trim(edit2.Text) + '%' + ''' ');
      end;
      if (trim(Edit3.Text) <> '') then
      begin
        sql.add(' and clzl.ywpm Like ''' + '%' + trim(edit3.Text) + '%' + ''' ');
      end;
      if (trim(Edit4.Text) <> '') then
      begin
        sql.add(' and clzl.ywpm Like ''' + '%' + trim(edit4.Text) + '%' + ''' ');
      end;
      if (trim(Edit5.Text) <> '') then
      begin
        sql.add(' and zszl.zsdh Like ''' + trim(Edit5.Text) + '%' + ''' ');
      end;
      if (trim(Edit6.Text) <> '') then
      begin
        sql.add(' and zszl.zsywjc Like ''' + '%' + trim(Edit6.Text) + '%' + ''' ');
      end;
      active := true;
      //requestlive := false;
      //cachedupdates := false;
    end;
  end;
end;

procedure TUPSelectMaterial.DBGridEh1DblClick(Sender: TObject);
begin
  if (not query1.Active) then
    abort;
  if (query1.recordcount > 0) then
  begin
    with UPMaterial.Query1 do
    begin
      fieldbyname('CLBH').value := Query1.fieldbyname('CLBH').value;
      fieldbyname('ywpm').value := Query1.fieldbyname('ywpm').value;
      fieldbyname('zwpm').value := Query1.fieldbyname('zwpm').value;
      fieldbyname('dwbh').value := Query1.fieldbyname('dwbh').value;
      fieldbyname('ZSDH').value := Query1.fieldbyname('ZSDH').value;
      fieldbyname('zsywjc').value := Query1.fieldbyname('zsywjc').value;
    end;
  end;
end;

end.

