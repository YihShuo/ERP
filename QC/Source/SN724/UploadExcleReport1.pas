unit UploadExcleReport1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, DB, DBTables, StdCtrls;

type
  TUploadExcleReport = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Button1: TButton;
    Label1: TLabel;
    Query1No_ID: TIntegerField;
    Query1RKNO: TStringField;
    Query1RY: TStringField;
    Query1Article: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1Qty: TCurrencyField;
    Query1Lab_Check: TStringField;
    Query1Lab_FinishDate: TDateTimeField;
    Query1File_Name_Lab: TStringField;
    Label2: TLabel;
    QUpdate: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    FilePath: string;
    { Private declarations }
  public
    procedure LoadData(RequestedDate, MatID, Result, Path: string);
    { Public declarations }
  end;

var
  UploadExcleReport: TUploadExcleReport;

implementation

uses
  main1, FileTransClient1;

{$R *.dfm}

procedure TUploadExcleReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TUploadExcleReport.FormDestroy(Sender: TObject);
begin
  UploadExcleReport := Nil;
end;

procedure TUploadExcleReport.LoadData(RequestedDate, MatID, Result, Path: string);
begin
  FilePath := Path;
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT No_ID, RKNO, RY, Article, CLBH, YWPM, Qty, ''' + Result + ''' AS Lab_Check, CONVERT(SmallDateTime, CONVERT(VARCHAR, GetDate(), 111)) AS Lab_FinishDate, ''' + ExtractFileName(FilePath) + ''' AS File_Name_Lab FROM MaterialQCcheck');
    SQL.Add('LEFT JOIN CLZL ON CLZL.CLDH = MaterialQCcheck.CLBH');
    SQL.Add('WHERE DateInput = ''' + RequestedDate + ''' AND CLBH = ''' + MatID + ''' AND GSBH = ''' + main.Edit2.Text + '''');
    Active := true;
  end;

  with QUpdate do
  begin
    SQL.Clear;
    SQL.Add('UPDATE MaterialQCcheck SET Lab_Check = ''' + Result + ''', Lab_FinishDate = CONVERT(SmallDateTime, CONVERT(VARCHAR, GetDate(), 111)), File_Name_Lab = ''' + ExtractFileName(FilePath) + '''');
    SQL.Add('WHERE DateInput = ''' + RequestedDate + ''' AND CLBH = ''' + MatID + ''' AND GSBH = ''' + main.Edit2.Text + '''');
  end;
end;

procedure TUploadExcleReport.Button1Click(Sender: TObject);
var
  UploadObj: TFileTransClient;
  SaveFN, Response, FileString: String;
  IsActionUpload: Boolean;
begin
  if (Query1.RecordCount > 0) then
  begin
    //上傳檔案
    UploadObj := TFileTransClient.Create();
    SaveFN := ExtractFileName(FilePath);
    FileString := UploadObj.List('QC\' + main.Edit2.Text + '\Lab\');
    IsActionUpload := true;
    // check file exists
    if (Pos(SaveFN, FileString) > 0) then
    begin
      if (MessageDlg('Override Lab File', mtCustom, [mbYes,mbNo], 0) = mrNo) then
      begin
        IsActionUpload := false;
        ShowMessage('File name exists!');
      end;
    end;

    if (IsActionUpload) then
    begin
      //檢查是否擋案存在，如存在則刪除
      if (Query1.FieldByName('File_Name_Lab').AsString <> '') then
        Response := UploadObj.delete(Query1.FieldByName('File_Name_Lab').AsString, 'QC\' + main.Edit2.Text + '\Lab\', false);

      Response := UploadObj.put(FilePath, SaveFN, 'QC\' + main.Edit2.Text + '\Lab\', false);
      if (Pos(',', Response) > 0) then //上傳失敗
      begin
        ShowMessage(Response);
      end
      else begin
        QUpdate.ExecSQL;
        QUpdate.SQL.Clear;
        ShowMessage('Execution success.');
      end;
    end;
    UploadObj.Free;
    Close;
  end;
end;

end.
