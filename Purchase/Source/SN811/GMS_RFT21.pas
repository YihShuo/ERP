unit GMS_RFT21;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, Buttons, StdCtrls, ExtCtrls,
  Grids, DBGrids;

type
  TGMS_RFT2 = class(TForm)
    DS1: TDataSource;
    Query1: TQuery;
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Query1zsdh: TStringField;
    Query1zsywjc: TStringField;
    UpdateSQL1: TUpdateSQL;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    DBGridEh1: TDBGridEh;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    //procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GMS_RFT2: TGMS_RFT2;

implementation

uses GMS_RFT1, main1;

{$R *.dfm}

procedure TGMS_RFT2.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select zsdh,zsywjc,USERID,USERDATE');
    sql.Add('from zszl');
    sql.Add('where not EXISTS (select * from zszl_gms where zszl.zsdh = zszl_gms.zsdh )');
    sql.Add('and zsdh like '''+'%'+edit1.text+'%'+''' ');
    sql.Add('and zsywjc like '''+'%'+edit2.text+'%'+''' ');
    active:=true;
  end;
end;

procedure TGMS_RFT2.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGrid1Dblclick(nil);
end;

procedure TGMS_RFT2.DBGrid1DblClick(Sender: TObject);
var
  i,j:integer;
begin
  if query1.Active then
    begin
      if query1.recordcount>0 then
      begin
        with GMS_RFT.GMS_QRY do
        begin
          edit;
          for i:=0 to query1.FieldCount-1 do
            for j:= 0 to GMS_RFT.GMS_QRY.FieldCount-1 do
             if query1.Fields[i].FieldName = GMS_RFT.GMS_QRY.fields[j].FieldName then
             begin
                GMS_RFT.GMS_QRY.fields[j].Value:= query1.Fields[i].Value;
             end ;
          post;
          insert;
        end;
      end;
      query1.Active:=false;
      close;
    end;
end;

end.
