unit FDStatus_Bom1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,DBGridEhImpExp, ShellAPI,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, ExtCtrls, StdCtrls, DBCtrls;

type
  TFDStatus_Bom = class(TForm)
    DataSource1: TDataSource;
    Query1: TQuery;
    Query1XH: TStringField;
    Query1BWBH: TStringField;
    Query1BWMC: TStringField;
    Query1CLBH: TStringField;
    Query1CLMC: TStringField;
    Query1DWBH: TStringField;
    Query1LYCC: TStringField;
    Query1BZ: TStringField;
    Query1ZSYWJC: TStringField;
    Query1LOSS: TFloatField;
    Query1CLSL: TFloatField;
    Query1CLZMLB: TStringField;
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Button1: TButton;
    SaveDialog1: TSaveDialog;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDStatus_Bom: TFDStatus_Bom;

implementation

{$R *.dfm}

procedure TFDStatus_Bom.FormCreate(Sender: TObject);
begin
  query1.Active := false;
  query1.Active := true;
  //TSampleShoe1.
end;

procedure TFDStatus_Bom.FormDestroy(Sender: TObject);
begin
  FDStatus_Bom:=nil;
end;

procedure TFDStatus_Bom.Button1Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
begin

  tdbgh := DBGridEh1;

  if (tdbgh is TDBGridEh) then
    if SaveDialog1.Execute then
    begin
      case SaveDialog1.FilterIndex of
        1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
        2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
        3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
        4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
        5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
      else
        ExpClass := nil; Ext := '';
      end;
      if ExpClass <> nil then
      begin
        if UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3)) <> UpperCase(Ext) then
          SaveDialog1.FileName := SaveDialog1.FileName + '.' + Ext;
        SaveDBGridEhToExportFile(ExpClass,tdbgh,SaveDialog1.FileName,true);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;

end;

end.
