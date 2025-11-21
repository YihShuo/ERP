unit TBClear;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls, ehlibBDE;

type
  TTBClear1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel3: TPanel;
    Label1: TLabel;
    Edit3: TEdit;
    Panel4: TPanel;
    Label2: TLabel;
    Edit1: TEdit;
    Panel5: TPanel;
    Label3: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    TabSheet4: TTabSheet;
    Button3: TButton;
    Panel6: TPanel;
    Label4: TLabel;
    Edit4: TEdit;
    Button4: TButton;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    Panel7: TPanel;
    Label5: TLabel;
    Edit5: TEdit;
    Button5: TButton;
    Label6: TLabel;
    Panel8: TPanel;
    Label7: TLabel;
    Edit6: TEdit;
    Button6: TButton;
    Panel9: TPanel;
    Label8: TLabel;
    Edit7: TEdit;
    Button7: TButton;
    Panel10: TPanel;
    Label9: TLabel;
    Edit8: TEdit;
    Button8: TButton;
    DBGridEh2: TDBGridEh;
    DataSource1: TDataSource;
    Query1: TQuery;
    Query1testno: TStringField;
    Query1Article: TStringField;
    Query1TBReceive: TBooleanField;
    Query1Pending_P: TBooleanField;
    Query1PreparationDate: TDateTimeField;
    DataSource2: TDataSource;
    Query2: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    BooleanField1: TBooleanField;
    BooleanField2: TBooleanField;
    Query1S_material: TDateTimeField;
    DataSource3: TDataSource;
    Query3: TQuery;
    StringField15: TStringField;
    StringField16: TStringField;
    BooleanField15: TBooleanField;
    BooleanField16: TBooleanField;
    Query3insole_send: TDateTimeField;
    DataSource4: TDataSource;
    Query4: TQuery;
    StringField17: TStringField;
    StringField18: TStringField;
    BooleanField17: TBooleanField;
    BooleanField18: TBooleanField;
    Query4lace_send: TDateTimeField;
    DBGridEh1: TDBGridEh;
    DBGridEh9: TDBGridEh;
    DBGridEh10: TDBGridEh;
    DBGridEh3: TDBGridEh;
    DataSource5: TDataSource;
    Query5: TQuery;
    StringField3: TStringField;
    StringField4: TStringField;
    BooleanField3: TBooleanField;
    Query1Pending_C: TBooleanField;
    Query1CutDate: TDateTimeField;
    DBGridEh4: TDBGridEh;
    DataSource6: TDataSource;
    Query6: TQuery;
    Query2Testno: TStringField;
    Query2Article: TStringField;
    Query2TBReceive: TBooleanField;
    Query2Pending_S: TBooleanField;
    Query2StitchingDate: TDateTimeField;
    DBGridEh5: TDBGridEh;
    DataSource7: TDataSource;
    Query7: TQuery;
    StringField5: TStringField;
    StringField6: TStringField;
    BooleanField4: TBooleanField;
    Query1Assemblecomplete: TDateTimeField;
    DBGridEh6: TDBGridEh;
    DataSource8: TDataSource;
    Query8: TQuery;
    StringField7: TStringField;
    StringField8: TStringField;
    Query1Finish: TBooleanField;
    Query1Complete: TDateTimeField;
    BooleanField5: TBooleanField;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TBClear1: TTBClear1;

implementation

uses main1;

{$R *.dfm}

procedure TTBClear1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action:=caFree;
end;

procedure TTBClear1.FormDestroy(Sender: TObject);
begin
  TBClear1:=nil;
end;

procedure TTBClear1.FormCreate(Sender: TObject);
var i: Integer;
    sheet:TTabSheet;
begin
  if main.Edit1.Text = '32733' then begin
    PageControl1.ActivePageIndex := 0;
    PageControl1.OnChange(sender);
{    with query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,PreparationDate from shoetest where CONVERT(varchar(100), PreparationDate, 112) = CONVERT(varchar(100), GETDATE(), 112) ');
      Active:=true;
    end;}
  end
  else if main.Edit1.Text = '73563' then begin
    PageControl1.ActivePageIndex := 4;
    PageControl1.OnChange(sender);
  end;
  for i:=0 to PageControl1.PageCount-1 do
  begin
         sheet:=PageControl1.Pages[i];                    
         if sheet=PageControl1.ActivePage then
            sheet.Highlighted:=true
         else
            sheet.Highlighted:=false;
  end;
end;

procedure TTBClear1.PageControl1Change(Sender: TObject);
var i: Integer;
    sheet:TTabSheet;
begin
  if (main.Edit1.Text = '32733') and (PageControl1.ActivePageIndex >= 4) then begin
    showmessage('You Cant Use That!');
    PageControl1.ActivePageIndex := 0;
    TabSheet1.Highlighted := true;
  end
  else if (main.Edit1.Text = '73563') and (PageControl1.ActivePageIndex <= 3) then begin
    showmessage('You Cant Use That!');
    PageControl1.ActivePageIndex := 4;
    TabSheet5.Highlighted := true;
  end;

  for i:=0 to PageControl1.PageCount-1 do
  begin
         sheet:=PageControl1.Pages[i];
         if sheet=PageControl1.ActivePage then
            sheet.Highlighted:=true
         else
            sheet.Highlighted:=false;
  end;
  if PageControl1.ActivePageIndex = 0 then begin
    with query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,PreparationDate from shoetest where CONVERT(varchar(100), PreparationDate, 112) = CONVERT(varchar(100), GETDATE(), 112) ');
      Active:=true;
    end;
  end
  else if PageControl1.ActivePageIndex = 1 then begin
    with query2 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,S_material from shoetest where CONVERT(varchar(100), S_material, 112) = CONVERT(varchar(100), GETDATE(), 112)');
      Active:=true;
    end;
  end
  else if PageControl1.ActivePageIndex = 2 then begin
    with query3 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,insole_send from shoetest where CONVERT(varchar(100), insole_send, 112) = CONVERT(varchar(100), GETDATE(), 112) ');
      Active:=true;
    end;
  end
  else if PageControl1.ActivePageIndex = 3 then begin
    with query4 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_P,lace_send from shoetest where CONVERT(varchar(100), lace_send, 112) = CONVERT(varchar(100), GETDATE(), 112) ');
      Active:=true;
    end;
  end
  else if PageControl1.ActivePageIndex = 4 then begin
    with query5 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_C,CutDate from shoetest where CONVERT(varchar(100), CutDate, 112) = CONVERT(varchar(100), GETDATE(), 112)');
      Active:=true;
    end;
  end
  else if PageControl1.ActivePageIndex = 5 then begin
    with query6 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Pending_S,StitchingDate from shoetest where CONVERT(varchar(100), StitchingDate, 112) = CONVERT(varchar(100), GETDATE(), 112)');
      Active:=true;
    end;
  end
  else if PageControl1.ActivePageIndex = 6 then begin
    with query7 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Assemblecomplete from shoetest where CONVERT(varchar(100), Assemblecomplete, 112) = CONVERT(varchar(100), GETDATE(), 112)');
      Active:=true;
    end;
  end
  else if PageControl1.ActivePageIndex = 7 then begin
    with query8 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Finish,Complete from shoetest where CONVERT(varchar(100), Complete, 112) = CONVERT(varchar(100), GETDATE(), 112)');
      Active:=true;
    end;
  end
end;

procedure TTBClear1.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('update shoetest set Pending_P =null,PreparationDate=null where Testno='''+Edit1.text+'''');
    ExecSQL;
    PageControl1Change(sender);
  end;
end;

procedure TTBClear1.Button2Click(Sender: TObject);
begin
  with query2 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('update shoetest set S_material=null where Testno='''+edit2.text+'''');
    ExecSQL;
    PageControl1Change(sender);
  end;
end;

procedure TTBClear1.Button3Click(Sender: TObject);
begin
  with query3 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('update shoetest set insole_send=null where Testno='''+edit3.text+'''');
    ExecSQL;
    PageControl1Change(sender);
  end;
end;

procedure TTBClear1.Button4Click(Sender: TObject);
begin
  with query4 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('update shoetest set lace_send=null where Testno='''+edit4.text+'''');
    ExecSQL;
    PageControl1Change(sender);
  end;
end;

procedure TTBClear1.Button5Click(Sender: TObject);
begin
  with query5 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('update shoetest set Pending_C =null,CutDate=null where Testno='''+edit5.text+'''');
    ExecSQL;
    PageControl1Change(sender);
  end;
end;

procedure TTBClear1.Button6Click(Sender: TObject);
begin
  with query6 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('update shoetest set Pending_S =null,StitchingDate=null where Testno='''+edit6.text+'''');
    ExecSQL;
    PageControl1Change(sender);
  end;
end;

procedure TTBClear1.Button7Click(Sender: TObject);
begin
  with query7 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('update shoetest set Assemblecomplete=null where Testno='''+edit7.text+'''');
    ExecSQL;
    PageControl1Change(sender);
  end;
end;

procedure TTBClear1.Button8Click(Sender: TObject);
begin
  with query8 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('update shoetest set finish =null,complete=null where Testno='''+edit8.text+'''');
    ExecSQL;                         
    PageControl1Change(sender);
  end;
end;

end.
