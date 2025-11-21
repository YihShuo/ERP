unit RSLBatch1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, DB, DBGridEh;

type
  TRSLBatch = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DT1: TDateTimePicker;
    Button1: TButton;
    Label2: TLabel;
    RSLFileEdit: TEdit;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure RSLFileEditClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    RSLFieldName:String;
    { Public declarations }
  end;

var
  RSLBatch: TRSLBatch;

implementation

uses main1, SetRSLList1, FileTransClient1;

{$R *.dfm}

procedure TRSLBatch.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action:=caFree;
end;

procedure TRSLBatch.FormDestroy(Sender: TObject);
begin
  RSLBatch:=nil;
end;

procedure TRSLBatch.RSLFileEditClick(Sender: TObject);
var
  UploadObj: TFileTransClient;
  RSLFileNM, SaveFN, Response, FileString: string;
begin
  if SetRSLList.OpenDialog1.Execute then
  begin
    // 輸入 fileName 後上傳資料
    RSLFileNM := StringReplace(ExtractFileName(SetRSLList.OpenDialog1.FileName), ExtractFileExt(SetRSLList.OpenDialog1.FileName), '', [rfReplaceAll]);
    if InputQuery('Input the FileName', SetRSLList.OpenDialog1.FileName, RSLFileNM) then
    begin
      if (RSLFileNM = '') then
      begin
        ShowMessage('FileName cannot be empty !!!');
        Exit;
      end;

      UploadObj := TFileTransClient.Create();
      SaveFN := RSLFileNM + ExtractFileExt(SetRSLList.OpenDialog1.FileName);
      FileString := UploadObj.List('QC\' + main.Edit2.Text + '\RSL\');

      // check file exists
      if Pos(SaveFN, FileString) > 0 then
      begin
        if MessageDlg('Override RSL File', mtCustom, [mbYes,mbNo], 0) = mrYes then
        begin
          //上傳
          Response := UploadObj.put(SetRSLList.OpenDialog1.FileName, SaveFN, 'QC\' + main.Edit2.Text + '\RSL\', false);
          if Pos(',', Response) > 0 then  //fail
          begin
            ShowMessage(Response);
          end
          else begin
            RSLFileEdit.Text := SaveFN;
            ShowMessage(Response);
          end;
        end
        else begin
          ShowMessage('File name exists!');
        end;
      end
      else begin
        //上傳
        Response := UploadObj.put(SetRSLList.OpenDialog1.FileName, SaveFN, 'QC\' + main.Edit2.Text + '\RSL\', false);
        if Pos(',', Response) > 0 then  //fail
        begin
          ShowMessage(Response);
        end
        else begin
          RSLFileEdit.Text := SaveFN;
          ShowMessage(Response);
        end;
      end;
      UploadObj.Free;
    end;
  end;
end;

procedure TRSLBatch.Button1Click(Sender: TObject);
var bm:Tbookmark;
    i:integer;
    bookmarklist:tbookmarklistEh;
begin
  SetRSLList.RSLQry.disablecontrols;
  bm:=SetRSLList.RSLQry.getbookmark;
  if SetRSLList.DBGrid1.selectedrows.Count=0 then SetRSLList.DBGrid1.SelectedRows.CurrentRowSelected:=true;
  bookmarklist:=SetRSLList.DBGrid1.selectedrows;
  if bookmarklist.count>0 then
  begin
    try
      for i:=0 to bookmarklist.count-1 do
      begin
        SetRSLList.RSLQry.gotobookmark(pointer(bookmarklist[i]));
        with SetRSLList.RSLQry do
        begin
           Edit;
           FieldByName('PDDate').AsString:=FormatDateTime('YYYY/MM/DD',DT1.Date);
           FieldBYName(RSLFieldName).Value:=RSLFileEdit.Text;
           Post;
        end;
      end;
    finally
      SetRSLList.RSLQry.gotobookmark(bm);
      SetRSLList.RSLQry.freebookmark(bm);
      SetRSLList.RSLQry.enablecontrols;
      showmessage('You have finish copy!');
    end;
  end;
  Close;
end;

procedure TRSLBatch.Button2Click(Sender: TObject);
begin
  Close;
end;

end.
