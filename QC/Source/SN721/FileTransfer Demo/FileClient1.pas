unit FileClient1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IniFiles, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, StdCtrls, IdMultipartFormData;

type
  TFileClient = class(TForm)
    lstMsg: TListBox;
    btnList: TButton;
    btnGet: TButton;
    btnPut: TButton;
    btnDel: TButton;
    httpC: TIdHTTP;
    chkRefresh: TCheckBox;
    edtSub: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure btnListClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGetClick(Sender: TObject);
    procedure btnPutClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FileClient: TFileClient;
  serverhost, serverport: string;
implementation
uses FileTransClient1;

{$R *.dfm}

procedure TFileClient.btnListClick(Sender: TObject);
var
  ss: TStringStream;
  ls: TStringList;
  http: TIdHttp;
  i: integer;
begin
  ss := TStringStream.Create('');
  ls := TStringList.Create;
  http := TIdHttp.Create(self);

  try
    if edtSub.Text <> '' then
      http.Get(Format('Http://%s:%s/?f=list&fp=%s', [serverhost, serverport, edtSub.Text]), ss)
    else
      http.Get(Format('Http://%s:%s/?f=list', [serverhost, serverport]), ss);
    ls.CommaText := ss.DataString;
    lstMsg.Items.Clear;
    for i := 0 to ls.Count - 1 do
      lstMsg.Items.Add(ls[i]);
  finally
    ss.Free;
    ls.Free;
    http.Free;
  end;
end;

procedure TFileClient.FormCreate(Sender: TObject);
var
  ini: TIniFile;
  sfn: string;
  hWnd: Integer;
begin
  sfn := ExtractFilePath(application.GetNamePath);
  if not FileExists(sfn + 'fileclient.ini') then
    begin
      hWnd := FileCreate(sfn + 'fileclient.ini');
      FileClose(hWnd);
      //---¼g¤JINIÀÉ
      try
        ini := TIniFile.Create(sfn + 'fileclient.ini');
        ini.WriteString('client', 'ServerHost', '192.168.23.252');
        ini.WriteString('client', 'ServerPort', '9978');
      finally
        ini.Free;
      end;
    end;

  try
    ini := TIniFile.Create(sfn + 'fileclient.ini');
    serverhost := ini.ReadString('client', 'ServerHost', '192.168.23.252');
    serverport := ini.ReadString('client', 'ServerPort', '9978');
  finally
    ini.Free;
  end;
end;

procedure TFileClient.btnGetClick(Sender: TObject);
var
  http: TIdHttp;
  ms: TMemoryStream;
  sf: TSaveDialog;
  fn, str: string;
  hWnd: integer;
begin
  if lstMsg.ItemIndex > -1 then
    begin
      fn := lstMsg.Items[lstMsg.ItemIndex];
      sf := TSaveDialog.Create(self);
      sf.Filter := 'All file|*.*';
      sf.FileName := fn;
      str := '';

      if edtSub.Text <> '' then
        str := Format('&fp=%s', [edtSub.Text]);

      if sf.Execute then
        begin
          http := TIdHttp.Create(self);
          ms := TMemoryStream.Create;

          hWnd := FileCreate(sf.FileName);
          FileClose(hWnd);

          http.Get(Format('Http://%s:%s/?f=get%s&fn=%s', [serverhost, serverport, str, fn]), ms);
          ms.SaveToFile(sf.FileName);
          ShowMessage('get file success');

          ms.Free;
          http.Free;
        end;
      sf.Free;
    end;
end;

procedure TFileClient.btnPutClick(Sender: TObject);
var
  http: TIdHttp;
  ds: TIdMultipartFormDataStream;
  ms: TMemoryStream;
  ss: TStringStream;
  ls: TStringList;
  op: TOpenDialog;
  fn, str: string;
  i: integer;
begin
  op := TOpenDialog.Create(self);
  op.Filter := 'All file|*.*';
  if op.Execute then
    begin
      http := TIdHttp.Create(self);
      fn := ExtractFileName(op.FileName);
      ds := TIdMultiPartFormDataStream.Create;
      ms := TMemoryStream.Create;
      ms.LoadFromFile(op.FileName);
      ss := TStringStream.Create('');
      str := '';

      ms.Position := 0;
      http.Request.Referer := Format('Http://%s:%s/?f=put&fn=%s', [serverhost, serverport, fn]);
      http.Request.ContentType := 'application/octet-stream';

      ds.AddObject('upload_file', 'application/octet-stream', ms, fn);
      ds.Position := 0;
      http.Connect(10000);

      if edtSub.Text <> '' then
        str := Format('&fp=%s', [edtSub.Text]);

      if chkRefresh.Checked then
        begin
          http.Post(Format('Http://%s:%s/?f=put%s&op=y&fn=%s', [serverhost, serverport, str, fn]), ds, ss);
          if pos('error', ss.DataString) > 0 then
            begin
              showmessage(ss.DataString);
            end
          else
            begin
              ls := TStringList.Create;
              ls.CommaText := ss.DataString;
              lstMsg.Items.Clear;
              for i := 0 to ls.Count - 1 do
                lstMsg.Items.Add(ls[i]);
              ls.Free;
              showmessage('success');
            end;
        end
      else
        begin
          http.Post(Format('Http://%s:%s/?f=put%s&fn=%s', [serverhost, serverport, str, fn]), ds, ss);
          showmessage(ss.DataString);
        end;

      ss.Free;
      ds.Free;
      ms.Free;
      http.Free;
    end;
end;

procedure TFileClient.btnDelClick(Sender: TObject);
var
  http: TIdHttp;
  ss: TStringStream;
  fn, str: string;
  ls: TStringList;
  i: integer;
begin
  if lstMsg.ItemIndex > -1 then
    begin
      fn := lstMsg.Items[lstMsg.ItemIndex];
      ss := TStringStream.Create('');
      http := TIdHttp.Create(self);
      str := '';

      if edtSub.Text <> '' then
        str := Format('&fp=%s', [edtSub.Text]);

      if chkRefresh.Checked then
        begin
          http.Get(Format('Http://%s:%s/?f=delete%s&op=y&fn=%s', [serverhost, serverport, str, fn]), ss);
          if pos('error', ss.DataString) > 0 then
            begin
              showmessage(ss.DataString);
            end
          else
            begin
              ls := TStringList.Create;
              ls.CommaText := ss.DataString;
              lstMsg.Items.Clear;
              for i := 0 to ls.Count - 1 do
                lstMsg.Items.Add(ls[i]);
              ls.Free;
              showmessage('success');
            end;
        end
      else
        begin
          http.Get(Format('Http://%s:%s/?f=delete%s&fn=%s', [serverhost, serverport, str, fn]), ss);
          ShowMessage(ss.DataString);
        end;

      ss.Free;
      http.Free;
    end;
end;

procedure TFileClient.Button1Click(Sender: TObject);
var
  ct: TFileTransClient;
  str: string;
begin
  ct := TFileTransClient.Create();

  str := ct.List(edtSub.Text);

  if POS(',', str) > 0 then
    lstMsg.Items.CommaText := str
  else
    ShowMessage(str);

  ct.Free;
end;

procedure TFileClient.Button2Click(Sender: TObject);
var
  ct: TFileTransClient;
  ms: TMemoryStream;
  i: integer;
begin
  ct := TFileTransClient.Create();

  if lstMsg.ItemIndex > -1 then
    begin
      ms := TMemoryStream.Create;

      ms.LoadFromStream(ct.down(lstMsg.Items[lstMsg.ItemIndex], edtSub.Text));
      if ms.Size > 0 then
        showmessage('Download file OK')
      else
        showmessage('Download file error');

      ms.Free;
    end;

  ct.Free;
end;

procedure TFileClient.Button3Click(Sender: TObject);
var
  ct: TFileTransClient;
  str: string;
begin
  ct := TFileTransClient.Create();

  str := ct.put('', edtSub.Text, chkRefresh.Checked);
  if pos(',', str) > 0 then
    lstMsg.Items.CommaText := str
  else
    showmessage(str);

  ct.Free;
end;

procedure TFileClient.Button4Click(Sender: TObject);
var
  ct: TFileTransClient;
  str: string;
begin
  ct := TFileTransClient.Create();

  if lstMsg.ItemIndex > -1 then
    begin
      str := ct.delete(lstMsg.Items[lstMsg.ItemIndex], edtSub.Text, chkRefresh.Checked);

      if POS(',', str) > 0 then
        lstMsg.Items.CommaText := str
      else
        ShowMessage(str);
    end;
  ct.Free;
end;

end.

