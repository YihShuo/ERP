unit EntryList_DLG1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TEntryList_DLG = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EntryList_DLG: TEntryList_DLG;

implementation

uses EntryList_TW1, EntryList_VN1, EntryList_QT1, EntryList1,
  EntryList_VNS1, EntryList_CT1, EntryList_Sample1, main1;

{$R *.dfm}

procedure TEntryList_DLG.Button1Click(Sender: TObject);
begin
  if EntryList.ENMas.FieldByName('ZSNO').isnull then
  begin
    showmessage('Pls key in Con_No first.');
  end
  else
    begin
      EntryList_TW :=TEntryList_TW.create(self);
      EntryList_TW.EDIT1.text:=EntryList.EnMas.fieldbyname('ZSNO').asstring;
      EntryList_TW.button1click(nil);
      EntryList_TW.show;
      close;
    end;
end;

procedure TEntryList_DLG.Button2Click(Sender: TObject);
begin
  //從采購訂單引入數量，無尺寸 及有尺寸兩種不同情況
  if messagedlg('Select Order Size material or not ?',mtinformation,[mbYes,mbNo],0)=mrNo then
  begin  //No size
    EntryList_VN :=TEntryList_VN.create(self);
    EntryList_VN.EDIT1.text:=EntryList.EnMas.fieldbyname('ZSBH').value;
    if not EntryList.EnMas.fieldbyname('ZSNO').isnull then
      begin
          EntryList_VN.EDIT2.text:=EntryList.EnMas.fieldbyname('ZSNO').value;
      end;
    EntryList_VN.button1click(nil);
    EntryList_VN.Show;
  end else
  begin
      if EntryList.EnMas.fieldbyname('ZSNO').isnull then
      begin
        showmessage('Pls key in CGNO in the master first.');
      end else
      begin    //Have Size
        EntryList_VNS:=TEntryList_VNS.create(self);
        EntryList_VNS.EDIT1.text:=EntryList.EnMas.fieldbyname('ZSBH').value;
        EntryList_VNS.EDIT2.text:=EntryList.EnMas.fieldbyname('ZSNO').value;
        EntryList_VNS.button1click(nil);
        EntryList_VNS.Show;
      end;
  end;

end;

procedure TEntryList_DLG.Button3Click(Sender: TObject);
begin
  if messagedlg('Entry Carton?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin   
    EntryList_CT :=TEntryList_CT.create(self);
    EntryList_CT.show;
  end else
  begin
    EntryList_QT :=TEntryList_QT.create(self);
    EntryList_QT.show;
  end;
end;

procedure TEntryList_DLG.FormDestroy(Sender: TObject);
begin
  EntryList_DLG:=nil;
end;

procedure TEntryList_DLG.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TEntryList_DLG.Button4Click(Sender: TObject);
begin
    EntryList_Sample :=TEntryList_Sample.create(self);
    if not EntryList.EnMas.fieldbyname('ZSNO').isnull then
    begin
          EntryList_Sample.EDIT2.text:=EntryList.EnMas.fieldbyname('ZSNO').value;
    end;
    EntryList_Sample.button1click(nil);
    EntryList_Sample.Show;
end;

procedure TEntryList_DLG.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
