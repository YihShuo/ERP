unit UPStyleGroup1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBTables, DB, GridsEh, DBGridEh, StdCtrls, Menus, strutils;

type
  TUPStyleGroup = class(TForm)
    Panel1: TPanel;
    Splitter1: TSplitter;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1Style: TStringField;
    Query1SGroup: TStringField;
    Query1Department: TStringField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    UpdateSQL1: TUpdateSQL;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    PopupMenu1: TPopupMenu;
    Insert1: TMenuItem;
    Modify1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    Delete1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Insert1Click(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure DBGridEh1Columns1EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UPStyleGroup: TUPStyleGroup;

implementation

uses  main1, UPSelectStyle1;

{$R *.dfm}

procedure TUPStyleGroup.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Query1.RequestLive then
    begin
      messagedlg('You have to save data first.',mtwarning,[mbyes],0);
      abort;
    end;
  action:=Cafree;
end;
procedure TUPStyleGroup.FormDestroy(Sender: TObject);
begin
  UPStyleGroup:=nil;
end;

procedure TUPStyleGroup.Button1Click(Sender: TObject);
begin
    with Query1 do
       begin
         active:=false;
         sql.Clear;
         sql.Add(' SELECT ');
         sql.Add(' dusg.Style, dusg.SGroup, dusg.Department, dusg.UserID, dusg.UserDate, dusg.YN ');
         sql.Add(' FROM Data_UP_Style_Group dusg ');
         sql.Add(' WHERE 1=1 ');
         if ComboBox1.Text <> '' then
         sql.add(' and dusg.SGroup like '''+ComboBox1.Text+''' ');
         if Edit1.Text <> '' then
         sql.add(' and dusg.Style Like '''+Edit1.Text+'%'+''' ');
         active:=true;
         requestlive:=false;
         cachedupdates:=false;
       end;
end;

procedure TUPStyleGroup.Insert1Click(Sender: TObject);
begin
  //設定按鈕權限
  Insert1.Enabled:=false;
  Modify1.Enabled:=false;
  Delete1.Enabled:=false;
  Save1.Enabled:=true;
  Cancel1.Enabled:=true;



  dbgrideh1.FieldColumns['style'].ButtonStyle :=cbsEllipsis;
  Query1.Active := true;
  if Query1.Active then
    with Query1 do
      begin
        Query1.RequestLive:=true;
        Query1.CachedUpdates:=true;
        Query1.Insert;
      end;
end;


procedure TUPStyleGroup.Modify1Click(Sender: TObject);
begin
dbgrideh1.FieldColumns['style'].ButtonStyle :=cbsEllipsis;
  //設定按鈕權限
  Insert1.Enabled:=false;
  Modify1.Enabled:=false;
  Delete1.Enabled:=false;
  Save1.Enabled:=true;
  Cancel1.Enabled:=true;

  with Query1 do
    begin
      cachedupdates:=true;
      requestlive:=True;
      active:=true;
      edit;
    end;
end;

procedure TUPStyleGroup.Cancel1Click(Sender: TObject);
begin
dbgrideh1.FieldColumns['style'].ButtonStyle :=cbsnone;
  //設定按鈕權限
  Insert1.Enabled:=true;
  Modify1.Enabled:=true;
  Delete1.Enabled:=true;
  Save1.Enabled:=false;
  Cancel1.Enabled:=false;

with Query1 do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
end;

procedure TUPStyleGroup.Delete1Click(Sender: TObject);
begin
dbgrideh1.FieldColumns['style'].ButtonStyle :=cbsnone;
  //設定按鈕權限
  Insert1.Enabled:=false;
  Modify1.Enabled:=false;
  Delete1.Enabled:=false;
  Save1.Enabled:=true;
  Cancel1.Enabled:=true;

  with Query1 do
    begin
      cachedupdates:=true;
      requestlive:=True;
      active:=true;
      Edit;
      FieldByName('YN').value:='0';
    end;
end;


procedure TUPStyleGroup.Save1Click(Sender: TObject);
Var
i : integer;
A,DelStatus : string;

begin
  //設定按鈕權限
  Insert1.Enabled:=true;
  Modify1.Enabled:=true;
  Delete1.Enabled:=true;
  Save1.Enabled:=false;
  Cancel1.Enabled:=false;

dbgrideh1.FieldColumns['style'].ButtonStyle :=cbsnone;
     Query1.first;
     DelStatus:='';
       for i:=1 to Query1.RecordCount do
          begin
              case Query1.updatestatus of
              usinserted:
                 begin
                   A:=A+''''+Query1.fieldByName('style').AsString+''',';
                   Query1.Edit ;
                   Query1.FieldByName('YN').value:='1';
                   Query1.fieldbyname('userdate').Value:=formatdatetime('yyyy/MM/dd hh:mm:ss',Now);
                   Query1.FieldByName('USERID').Value:=main.edit1.text;
                   UpdateSQL1.apply(ukinsert);
                 end;
              usmodified:
                 begin
                   Query1.Edit ;
                   if Query1.FieldByName('YN').AsString = '0' then
                      begin
                      DelStatus:='D';
                        UpdateSQL1.apply(ukdelete);
                      end
                   else
                     begin
                       A:=A+''''+Query1.fieldByName('style').AsString+''',';
                       Query1.fieldbyname('userdate').Value:=formatdatetime('yyyy/MM/dd hh:mm:ss',Now);
                       Query1.FieldByName('USERID').Value:=main.edit1.text;
                       UpdateSQL1.apply(ukmodify);
                     end;
                 end;
          end;
            Query1.next;
        end;

       If DelStatus ='D' then
       Button1.Click
       else
         begin
           A:=leftstr(A,length(A)-1);
         with Query1 do
         begin
         active:=false;
         sql.Clear;
         sql.Add(' SELECT ');
         sql.Add(' dusg.Style, dusg.SGroup, dusg.Department, dusg.UserID, dusg.UserDate, dusg.YN ');
         sql.Add(' FROM Data_UP_Style_Group dusg ');
         if A <> '' then
         sql.Add(' WHERE dusg.style in ('+a+') ');
         active:=true;
         requestlive:=false;
         cachedupdates:=false;
       end;
   end;
end;




procedure TUPStyleGroup.DBGridEh1Columns1EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin

  if UPSelectStyle <> nil then
  begin
    UPSelectStyle.show;
    UPSelectStyle.windowstate:=wsmaximized;
  end else
  begin
      UPSelectStyle:=TUPSelectStyle.Create(self);
      UPSelectStyle.Show;
  end;

end;

procedure TUPStyleGroup.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (Query1.FieldByName('YN').AsString = '0') then
      DBGridEh1.Canvas.Font.Color := $000000E1;
      DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TUPStyleGroup.FormShow(Sender: TObject);
begin
  edit1.SetFocus;
   {  with Query1 do
       begin
         active:=false;
         sql.Clear;
         sql.Add(' SELECT ');
         sql.Add(' distinct z.Style, dusg.SGroup, dusg.Department, dusg.UserID, dusg.UserDate, dusg.YN ');
         sql.Add(' FROM ZSZL z ');
         sql.Add(' LEFT JOIN Data_UP_Style_Group dusg ON dusg.Style = z.Style ');
         sql.Add(' WHERE 1=1 ');
         active:=true;
         requestlive:=false;
         cachedupdates:=false;
       end;  }
end;

procedure TUPStyleGroup.Query1AfterOpen(DataSet: TDataSet);
begin
  dbgrideh1.FieldColumns['Style'].Footer.FieldName:='Style';
  dbgrideh1.FieldColumns['Style'].Footer.ValueType:=fvtcount;
end;

end.
