unit Leather_supp1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ExtCtrls, DB, DBTables;

type
  TLeather_supp = class(TForm)
    Panel6: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    cboLocation: TComboBox;
    Button2: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    qry1: TQuery;
    DataSource1: TDataSource;
    qry1ZSDH: TStringField;
    qry1zsywjc: TStringField;
    qry1Country: TStringField;
    LeaCK: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Leather_supp: TLeather_supp;

implementation

uses  LeatherSummary1, main1, FunUnit;

{$R *.dfm}

procedure TLeather_supp.FormCreate(Sender: TObject);
begin

    with query1 do
    begin
        active:=false;
        sql.Clear;
        sql.Add('select Country from zszl  ');
        sql.Add('left join zszl_dev on zszl.zsdh=zszl_dev.zsdh and zszl_dev.gsbh='''+main.Edit2.Text+''' ');
        sql.Add('where zszl_dev.style=''Leather'' group by zszl_dev.Country ');
        active:=true;
        cboLocation.Clear;
        while not eof do
        begin
            cboLocation.Items.Add(query1.fieldbyName('Country').AsString);
            next;
        end;
        //cboLocation.Items.Insert(0,'');
    end;

end;

procedure TLeather_supp.Button2Click(Sender: TObject);
begin
   with qry1 do
   begin
      active:=false;
      sql.Clear;
      sql.Add('select ZSZL.ZSDH, ZSZL.zsywjc, zszl_dev.Country from zszl');
      sql.Add('left join zszl_dev on zszl.zsdh=zszl_dev.zsdh and zszl_dev.gsbh='''+main.Edit2.Text+''' ');
      sql.Add('where 1=1 ');
      if LeaCK.Checked=true then
      sql.Add('       and zszl_dev.style=''Leather'' ');
      sql.Add('       and ZSZL.ZSDH like '''+edit5.Text+'%'' ');
      sql.Add('       and ZSZL.zsywjc like ''%'+edit6.Text+'%'' ');
      if cboLocation.Text<>'' then
      sql.Add('       and zszl_dev.Country like '''+cboLocation.Text+'%'' ');
      active:=true;
   end;
end;

procedure TLeather_supp.DBGridEh1DblClick(Sender: TObject);
begin
    if (not qry1.Active) or (qry1.RecordCount<1) then
    begin
       abort;
    end;

    try
       with LeatherSummary.qry_SD do
       begin
              edit;
              fieldbyname('ZSDH').AsString:=qry1.fieldbyname('ZSDH').AsString;
              fieldbyname('zsywjc').AsString:=qry1.fieldbyname('zsywjc').AsString;
              fieldbyname('Country').AsString:=qry1.fieldbyname('Country').AsString;
       end;
       close;
      except
          showmessage('Can not insert data, pls double check again !!!');
      end;
end;

procedure TLeather_supp.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
