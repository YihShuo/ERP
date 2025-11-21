unit MaterialTestFD_TestData1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,DBGridEhImpExp, ShellAPI,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, ExtCtrls, StdCtrls, DBCtrls;

type
  TMaterialTestFD_TestData = class(TForm)
    ds_CLZLTEST: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    Button1: TButton;
    SaveDialog1: TSaveDialog;
    Qry_CLZLTEST: TQuery;
    Qry_CLZLTESTcldh: TStringField;
    Qry_CLZLTESTFormCode: TStringField;
    Qry_CLZLTESTFDSentDate: TDateTimeField;
    Qry_CLZLTESTSentDate: TDateTimeField;
    Qry_CLZLTESTundertest: TBooleanField;
    Qry_CLZLTESTpass: TBooleanField;
    Qry_CLZLTESTfail: TBooleanField;
    Qry_CLZLTESTGuarantee: TBooleanField;
    Qry_CLZLTESTTestReportCode: TStringField;
    Qry_CLZLTESTTestReportDate: TDateTimeField;
    Qry_CLZLTESTSupplier: TStringField;
    Qry_CLZLTESTPDMCode: TStringField;
    Qry_CLZLTESTREMARK: TStringField;
    Qry_CLZLTESTUSERDATE: TDateTimeField;
    Qry_CLZLTESTUSERID: TStringField;
    Qry_CLZLTESTtime: TIntegerField;
    dbgrdh2: TDBGridEh;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialTestFD_TestData: TMaterialTestFD_TestData;

implementation

{$R *.dfm}

procedure TMaterialTestFD_TestData.FormCreate(Sender: TObject);
begin
  Qry_CLZLTEST.Active := false;
  Qry_CLZLTEST.Active := true;
  //TSampleShoe1.
end;

procedure TMaterialTestFD_TestData.FormDestroy(Sender: TObject);
begin
  MaterialTestFD_TestData:=nil;
end;

procedure TMaterialTestFD_TestData.Button1Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
begin

  tdbgh := dbgrdh2;

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
