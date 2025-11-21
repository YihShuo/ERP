unit limit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, DBCtrls, ExtCtrls, Grids, DBGrids, StdCtrls,
  Buttons;

type
  Tlimit = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    CBX1: TComboBox;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Bevel1: TBevel;
    Button1: TButton;
    Button3: TButton;
    Button7: TButton;
    DBGrid2: TDBGrid;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query2: TQuery;
    DataSource2: TDataSource;
    UpdateSQL2: TUpdateSQL;
    Query1FORMID: TStringField;
    Query1FORMNAME: TStringField;
    CBX2: TComboBox;
    Label3: TLabel;
    UpdateSQL1: TUpdateSQL;
    Query3: TQuery;
    Button2: TButton;
    Query2USERID: TStringField;
    Query2MKID: TStringField;
    Query2FORMID: TStringField;
    Query2SUSERID: TStringField;
    Query2USERDATE: TDateTimeField;
    Query2MKNAME: TStringField;
    Query2FORMNAME: TStringField;
    Query1MKID: TStringField;
    Query1MKNAME: TStringField;
    Label4: TLabel;
    CBX3: TComboBox;
    Query2GSBH: TStringField;
    UserID: TEdit;
    MsgLabel: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CBX2Change(Sender: TObject);
    procedure CBX1Change(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure CBX3Change(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure UserIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  limit: Tlimit;

implementation

uses main1;

{$R *.dfm}

procedure Tlimit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {
  //註解有簽核系統不能隨意刪除
  with query3 do
  begin
    active:=false;
    sql.clear;
    sql.add('delete Busers ');
    sql.add('where not exists(select userid');
    sql.add('from Blimits');
    sql.add('where Blimits.userid=Busers.userid)');
    execsql;
  end;
  }
  action:=cafree;

end;

procedure Tlimit.FormCreate(Sender: TObject);
begin
  with query3 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct MKNAME from BLimit order by MKNAME ');
    active:=true;
    CBX2.Items.Clear;
    while not eof do
      begin
        CBX2.Items.Add(fieldbyname('MKNAME').AsString);
        next;
      end;
    active:=false;
    sql.Clear;
    sql.add('select USERID,USERNAME from BUSERS order by USERID');
    active:=true;
    Edit1.text:=fieldbyname('USERNAME').Value;
    CBX1.items.clear;
    while not eof do
      begin
        CBX1.items.add(fieldbyname('USERID').asstring );
        next;
      end;
    active:=false;
    sql.Clear;
    sql.add('select GSdH from BGSZL order by GSdH DESC ');
    active:=true;
    CBX3.Items.Clear;
    while not eof do
      begin
        CBX3.Items.Add(fieldbyname('GSdH').AsString);
        next;
      end;
    close;
  end;
  CBX1.ItemIndex:=0;
  CBX2.ItemIndex:=0;
  CBX3.ItemIndex:=0;
  UserID.Text:=CBX1.Items[0];
  button2click(nil);

end;

procedure Tlimit.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure Tlimit.Button2Click(Sender: TObject);
var a:string;
begin
  with query3 do
  begin
    active:=true;
    sql.Clear;
    sql.add('select distinct MKID from BLimit ');
    sql.add('where MKNAME='+''''+CBX2.Text+'''');
    //sql.add('and GSBH='+''''+CBX3.text+'''');
    active:=true;
    a:=fieldbyname('MKID').AsString;
    active:=false;
    sql.Clear;
    sql.add('select distinct USERNAME from BUSERS where USERID='+''''+UserID.Text+'''');
    active:= true;
    edit1.Text:=fieldbyname('USERNAME').value;
    active:=false;
  end;

  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select BLimit.* from BLimit ');
    sql.add('where not exists');
    sql.add('(select BLimits.FORMID from BLimits ');
    sql.add('where BLimitS.MKID=BLIMIT.MKID and BLimitS.FORMID=BLimit.FORMID ');
    sql.add('and BLimits.MKID='+''''+a+'''');
    sql.add('and BLimits.USERID='+''''+UserID.Text+'''');
    sql.add('and BLimits.GSBH='+''''+CBX3.text+'''');
    sql.add(') and BLimit.MKID='+''''+a+'''');
    sql.add('order by BLimit.FORMID   ');
    active:=true;
  end;
  with query2 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select BLimits.*,BLimit.MKNAME,BLimit.FORMNAME from BLimits ' );
    sql.add('left join BLimit on BLimit.MKID=BLimits.MKID and BLimit.FORMID=BLimits.FORMID');
    sql.add('where BLimit.MKNAME='+''''+CBX2.Text+'''');
    sql.add('and BLimits.USERID='+''''+UserID.text+'''');  
    sql.add('and BLimits.GSBH='+''''+CBX3.text+'''');
    sql.add('order by BLimitS.FORMID ');
    active:=true;
  end;
end;

procedure Tlimit.CBX2Change(Sender: TObject);
begin
  Button2Click(nil);
end;

procedure Tlimit.CBX1Change(Sender: TObject);
begin
   UserID.Text:=CBX1.Text;
   Button2Click(nil);
end;

procedure Tlimit.Button7Click(Sender: TObject);
begin
  query1.RequestLive:=true;
  query1.CachedUpdates:=true;
  query2.RequestLive:=true;
  query2.CachedUpdates:=true;
  button1.Enabled:=true;
  button3.Enabled:=true;
end;

procedure Tlimit.Button1Click(Sender: TObject);
begin
  try
    with query2 do
    begin
      IF Query1.recordcount>0 then
        begin
          append;
          fieldbyname('GSBH').Value:=CBX3.Text;
          fieldbyname('USERID').Value:=CBX1.Text;
          fieldbyname('MKID').Value:=query1.fieldbyname('MKID').Value ;
          fieldbyname('FORMID').Value:=query1.fieldbyname('FORMID').Value;
          fieldbyname('FORMNAME').Value:=query1.fieldbyname('FORMNAME').Value ;
          fieldbyname('USERDATE').Value:=date;
          fieldbyname('SUSERID').Value:=main.edit1.Text;
          updatesql2.Apply(ukinsert);
        end;
    end;
    query1.Active:=false;
    query2.Active:=false;
    query1.Active:=true;
    query2.Active:=true;
  except
    showmessage('Have wrong.');
  end;
end;

procedure Tlimit.Button3Click(Sender: TObject);
begin
  try
    with query2 do
    begin
      if query2.recordcount>0 then
         updatesql2.Apply(ukdelete);
    end;
    query1.Active:=false;
    query2.Active:=false;
    query1.Active:=true;
    query2.Active:=true;
  except
    showmessage('Have wrong.');
  end;
end;

procedure Tlimit.CBX3Change(Sender: TObject);
begin 
  Button2Click(nil);
end;

procedure Tlimit.FormDestroy(Sender: TObject);
begin
  limit:=nil;
end;

procedure Tlimit.UserIDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var i:integer;
    IsFind:boolean;
begin

   if Key=13 then
   begin
     IsFind:=false;
     for i:=0 to CBX1.Items.Count-1 do
     begin
       if trim(CBX1.Items[i])=trim(UserID.Text) then
       begin
         Button2Click(nil);
         IsFind:=true;
         MsgLabel.Caption:='';
         CBX1.ItemIndex:=i;
         break;
       end;
     end;
     if IsFind=false then MsgLabel.Caption:='Can''t Find User ID';
   end;

end;

end.
