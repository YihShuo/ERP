unit Leather_standard1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TLeather_standard = class(TForm)
    Panel6: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Button2: TButton;
    DBGrid_SD: TDBGridEh;
    qry1: TQuery;
    qry1Material: TStringField;
    qry1ZSDH: TStringField;
    qry1Types: TStringField;
    qry1Softness: TStringField;
    qry1Grade: TStringField;
    qry1zsywjc: TStringField;
    qry1Country: TStringField;
    qry1SDID: TStringField;
    qry1Dimention: TStringField;
    qry1Season: TStringField;
    DS1: TDataSource;
    procedure Button2Click(Sender: TObject);
    procedure DBGrid_SDDblClick(Sender: TObject);
    procedure qry1AfterOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Leather_standard: TLeather_standard;

implementation

uses main1,LeatherSummary1, FunUnit;

{$R *.dfm}

procedure TLeather_standard.Button2Click(Sender: TObject);
begin
    with qry1 do
    begin
        active:=false;
        sql.clear;

        sql.Add('select Leather_Standard.*,zsywjc,zszl_dev.Country');
        sql.Add('from (');
        sql.Add('       SELECT SDID');
        sql.Add('       FROM Leather_Standard');
        sql.Add('     )aa inner join Leather_Standard on Leather_Standard.SDID=aa.SDID');
        sql.Add('         left join zszl on zszl.ZSDH=Leather_Standard.ZSDH');
        sql.Add('         left join zszl_dev on zszl.ZSDH=zszl_dev.ZSDH and zszl_dev.GSBH='''+main.Edit2.Text+''' ');
        sql.Add('where Leather_Standard.GSBH='''+main.Edit2.Text+''' ');
        sql.Add('     and  Leather_Standard.ZSDH ='''+LeatherSummary.qry_All.fieldbyname('ZSBH').AsString+''' ');
        if edit5.Text <> '' then
            sql.Add(' and Leather_Standard.material like ''%'+edit5.Text+'%'' ');
        if edit6.Text <> '' then
            sql.Add(' and zsywjc like ''%'+edit6.Text+'%'' ');
        //funcObj.WriteErrorLog(sql.Text);
        active:=true;
    end;
end;

procedure TLeather_standard.DBGrid_SDDblClick(Sender: TObject);
begin
     if qry1.RecordCount = 0 then exit;

      if LeatherSummary.qry_All.RequestLive then
      begin
        with LeatherSummary.qry_All do
        begin
            edit;
            fieldbyname('TypeName').AsString:=qry1.fieldbyname('Material').AsString;
            fieldbyname('Standard_Grade').AsString:=qry1.fieldbyname('Grade').AsString;
            fieldbyname('Standard_Softness').AsString:=qry1.fieldbyname('Softness').AsString;
            fieldbyname('Standard_Dimention').AsString:=qry1.fieldbyname('Dimention').AsString;
        end;
        close;
      end;

end;

procedure TLeather_standard.qry1AfterOpen(DataSet: TDataSet);
begin
    if qry1.RecordCount = 0 then
    begin
        showmessage('No data.');
        abort;
    end;
end;

procedure TLeather_standard.FormShow(Sender: TObject);
begin
    main.FormLanguage(Pointer(self),self.Name);
    Button2Click(nil);
end;

end.
