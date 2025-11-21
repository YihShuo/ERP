unit Orderpack_TP1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBTables;

type
  TOrderpack_TP = class(TForm)
    YWDDTP: TTable;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    Edit2: TEdit;
    SpeedButton2: TSpeedButton;
    Edit3: TEdit;
    SpeedButton3: TSpeedButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    OpenDialog1: TOpenDialog;
    OpenDialog2: TOpenDialog;
    OpenDialog3: TOpenDialog;
    CB1: TCheckBox;
    CB2: TCheckBox;
    CB3: TCheckBox;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Orderpack_TP: TOrderpack_TP;

implementation

uses OrderList1, main1;

{$R *.dfm}

procedure TOrderpack_TP.FormDestroy(Sender: TObject);
begin
Orderpack_TP:=nil;
end;

procedure TOrderpack_TP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
YWDDTP.active:=false;
end;

procedure TOrderpack_TP.FormCreate(Sender: TObject);
begin
button3click(nil);
end;

procedure TOrderpack_TP.Button3Click(Sender: TObject);
begin
YWDDTP.active:=true;
if YWDDTP.recordcount>0 then
  begin
    YWDDTP.First;
    edit1.Text:=YWDDTP.fieldbyname('TPMEMO').Value;
    if YWDDTP.fieldbyname('MT').value='Y' then
      begin
        CB1.checked:=true;
      end
      else
        begin
          CB1.checked:=false;
        end;
  end;  
if YWDDTP.recordcount>1 then
  begin
    YWDDTP.Next;
    edit2.Text:=YWDDTP.fieldbyname('TPMEMO').Value;   
    if YWDDTP.fieldbyname('MT').value='Y' then
      begin
        CB2.checked:=true;
      end
      else
        begin
          CB2.checked:=false;
        end;
  end;
if YWDDTP.recordcount>2 then
  begin
    YWDDTP.Next;
    edit3.Text:=YWDDTP.fieldbyname('TPMEMO').Value;   
    if YWDDTP.fieldbyname('MT').value='Y' then
      begin
        CB3.checked:=true;
      end
      else
        begin
          CB3.checked:=false;
        end;
  end;

end;

procedure TOrderpack_TP.SpeedButton1Click(Sender: TObject);
begin
if opendialog1.execute then
  begin
    edit1.Text:=opendialog1.FileName;
  end;
end;

procedure TOrderpack_TP.SpeedButton2Click(Sender: TObject);
begin

if opendialog2.execute then
  begin
    edit2.Text:=opendialog2.FileName;
  end;
end;

procedure TOrderpack_TP.SpeedButton3Click(Sender: TObject);
begin

if opendialog3.execute then
  begin
    edit3.Text:=opendialog3.FileName;
  end;
end;

procedure TOrderpack_TP.Button2Click(Sender: TObject);
begin
button3click(nil);
end;

procedure TOrderpack_TP.Button1Click(Sender: TObject);
begin
with YWDDTP do
  begin
    first;
    while recordcount>0 do
      begin
        delete;
      end;
    if edit1.Text<>'' then
      begin
        insert;
        fieldbyname('DDBH').Value:=OrderList.SpecMas.fieldbyname('DDBH').value;
        fieldbyname('XH').Value:='1';
        fieldbyname('TPMEMO').Value:=edit1.Text;
        if CB1.checked then
          begin
            fieldbyname('MT').value:='C';
          end
          else
            begin
              fieldbyname('MT').value:='N';
            end;
        fieldbyname('USERID').Value:=main.edit1.Text;
        fieldbyname('USERDATE').Value:=date;
        post;
      end;  
    if edit2.Text<>'' then
      begin
        insert;
        fieldbyname('DDBH').Value:=OrderList.SpecMas.fieldbyname('DDBH').value;
        fieldbyname('XH').Value:='2';
        fieldbyname('TPMEMO').Value:=edit2.Text;   
        if CB2.checked then
          begin
            fieldbyname('MT').value:='C';
          end
          else
            begin
              fieldbyname('MT').value:='N';
            end;
        fieldbyname('USERID').Value:=main.edit1.Text;
        fieldbyname('USERDATE').Value:=date;
        post;
      end; 
    if edit3.Text<>'' then
      begin
        insert;
        fieldbyname('DDBH').Value:=OrderList.SpecMas.fieldbyname('DDBH').value;
        fieldbyname('XH').Value:='3';
        fieldbyname('TPMEMO').Value:=edit3.Text; 
        if CB3.checked then
          begin
            fieldbyname('MT').value:='C';
          end
          else
            begin
              fieldbyname('MT').value:='N';
            end;
        fieldbyname('USERID').Value:=main.edit1.Text;
        fieldbyname('USERDATE').Value:=date;
        post;
      end;

  end;
end;

procedure TOrderpack_TP.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
