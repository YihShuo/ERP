unit DeveloperName1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, GridsEh, DBGridEh, DB, DBTables, StdCtrls, Buttons,
  ComCtrls;

type
  TDeveloperName = class(TForm)
    DS1: TDataSource;
    Qry1: TQuery;
    udqr1: TUpdateSQL;
    Qry1UserID: TStringField;
    Qry1UserName: TStringField;
    Qry1Engname: TStringField;
    Qry1Email: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Panel3: TPanel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    Panel4: TPanel;
    DBGridEh1: TDBGridEh;
    TabSheet2: TTabSheet;
    Panel5: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Panel6: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Button2: TButton;
    Edit4: TEdit;
    udqry2: TUpdateSQL;
    DBGridEh2: TDBGridEh;
    Qry2: TQuery;
    DS2: TDataSource;
    TabSheet3: TTabSheet;
    Panel7: TPanel;
    BT1: TBitBtn;
    BT2: TBitBtn;
    BT3: TBitBtn;
    BT4: TBitBtn;
    BT5: TBitBtn;
    BT6: TBitBtn;
    Panel8: TPanel;
    Button3: TButton;
    Qry3: TQuery;
    UdQry3: TUpdateSQL;
    DS3: TDataSource;
    DBGridEh3: TDBGridEh;
    Qry3TeamLeader: TStringField;
    Qry3TeamLeader2: TStringField;
    Qry2FDID: TStringField;
    Qry2Engname: TStringField;
    Qry2TeamLeader: TStringField;
    Qry2TeamLeaderEngname: TStringField;
    Qry2TeamLeader2: TStringField;
    Qry2TeamLeader2Engname: TStringField;
    Qry3FDTeam: TStringField;
    Qry2YN: TStringField;
    Qry2FDTeam: TStringField;
    Qry2fdname: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BT1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BT2Click(Sender: TObject);
    procedure BT5Click(Sender: TObject);
    procedure BT6Click(Sender: TObject);
    procedure BT4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DeveloperName: TDeveloperName;

implementation

{$R *.dfm}

procedure TDeveloperName.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TDeveloperName.FormDestroy(Sender: TObject);
begin
  DeveloperName:=nil;
end;

procedure TDeveloperName.BB1Click(Sender: TObject);
begin
    panel2.Visible:=true;
end;

procedure TDeveloperName.Button1Click(Sender: TObject);
begin
    if (edit1.text='') and (edit2.text='') then
    begin
       showmessage('plz key userid');
       abort;
    end else
    begin
      with qry1 do
      begin
        active:=false;
        sql.Clear;
        sql.add('select UserID,UserName,Engname,Email from busers where userid is not null  ');
        if edit1.text<>'' then
           sql.Add('and userid ='''+edit1.text+'''');
        if edit2.text<>'' then
           sql.Add('and engname='''+edit2.text+'''');
        active:=true;
      end;
      bb4.Enabled:=true;
    end;  
end;

procedure TDeveloperName.BB4Click(Sender: TObject);
begin
  with qry1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  bb4.Enabled:=false;
  bb5.enabled:=true;
  bb6.Enabled:=true;
end;

procedure TDeveloperName.BB5Click(Sender: TObject);
var
   i:integer;
begin
      qry1.first;
      for i:=1 to qry1.RecordCount do
      begin
          case qry1.updatestatus of
            usmodified:
            begin
              udqr1.apply(ukmodify);
            end;
         end;
         qry1.next;
      end;//for
      bb4.Enabled:=true;
      bb5.Enabled:=false;
      bb6.Enabled:=false;
end;

procedure TDeveloperName.BB6Click(Sender: TObject);
begin
  qry1.active:=false;
  qry1.cachedupdates:=false;
  qry1.requestlive:=false;
  bb4.Enabled:=true;
  bb5.Enabled:=false;
  bb6.Enabled:=false;
end;

procedure TDeveloperName.BitBtn1Click(Sender: TObject);
begin
    panel6.Visible:=true;
end;

procedure TDeveloperName.Button2Click(Sender: TObject);
begin

      with qry2 do
      begin
        active:=false;
        sql.Clear;
        sql.add('select FDGroups.FDTeam,FDID,FDEng.Engname,');
        sql.add('FDGroup.TeamLeader,TeamLeaderEng.Engname as TeamLeaderEngname,');
        sql.add('FDGroup.TeamLeader2,TeamLeader2Eng.engname as TeamLeader2Engname,'''' YN,FDGroups.fdname from FDGroups');
        sql.add('left join FDGroup on FDGroup.FDTeam=FDGroups.FDTeam');
        sql.add('left join busers FDEng on FDEng.userid=FDGroups.FDID');
        sql.add('left join busers TeamLeaderEng on TeamLeaderEng.userid=FDGroup.TeamLeader');
        sql.add('left join busers TeamLeader2Eng on TeamLeader2Eng.userid=FDGroup.TeamLeader2 where FDID is not null');
        if edit3.text<>'' then
           sql.Add('and FDID ='''+edit3.text+'''');
        if edit4.text<>'' then
           sql.Add('and FDEng.Engname='''+edit4.text+'''');
      //  showmessage(sql.text);
        active:=true;
      end;
      BitBtn2.Enabled:=true;
      BitBtn3.Enabled:=true;      
      BitBtn4.Enabled:=true;
end;

procedure TDeveloperName.BitBtn4Click(Sender: TObject);
begin
  with qry2 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BitBtn4.Enabled:=false;
  BitBtn5.enabled:=true;
  BitBtn6.Enabled:=true;
end;

procedure TDeveloperName.BitBtn5Click(Sender: TObject);
var
i:integer;
begin
   try
      qry2.first;
      for i:=1 to qry2.RecordCount do
        begin
          case qry2.updatestatus of
            usinserted:
              begin
                 qry2.edit;
                 udqry2.apply(ukinsert);
                end;
            usmodified:
            begin
               if qry2.fieldbyname('YN').value='0' then
                begin
                  udqry2.apply(ukdelete);
                end;
               if qry2.fieldbyname('YN').value<>'0' then
                begin
                  udqry2.apply(ukModify);
                end;
            end;
          end;
         qry2.next;
        end;
  qry2.active:=false;
  qry2.cachedupdates:=false;
  qry2.requestlive:=false;
  qry2.active:=true;
  BitBtn2.Enabled:=true;
  BitBtn3.Enabled:=true;
  BitBtn4.Enabled:=true;
  BitBtn5.enabled:=false;
  BitBtn6.enabled:=false;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TDeveloperName.BitBtn6Click(Sender: TObject);
begin
  qry2.active:=false;
  qry2.cachedupdates:=false;
  qry2.requestlive:=false;
  BitBtn4.Enabled:=true;
  BitBtn5.Enabled:=false;
  BitBtn6.Enabled:=false;
end;

procedure TDeveloperName.BT1Click(Sender: TObject);
begin
    panel8.Visible:=true;
end;

procedure TDeveloperName.Button3Click(Sender: TObject);
begin
      with qry3 do
      begin
        active:=false;
        sql.Clear;
        sql.add('select FDTeam,TeamLeader,TeamLeader2 from FDGroup where FDTeam is not null');
       // showmessage(sql.text);
        active:=true;
      end;
      BT2.Enabled:=true;      
      BT4.Enabled:=true;
end;

procedure TDeveloperName.BT2Click(Sender: TObject);
begin
  with qry3 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    Insert;
  end;
  BT2.Enabled:=false;
  BT5.Enabled:=true;
  BT6.Enabled:=true;
end;

procedure TDeveloperName.BT5Click(Sender: TObject);
var
i:integer;
begin
   try
      qry3.first;
      for i:=1 to qry3.RecordCount do
        begin
          case qry3.updatestatus of
            usinserted:
              begin
                 qry3.edit;
                 udqry3.apply(ukinsert);
                end;
            usmodified:
                begin
                  udqry3.apply(ukModify);
                end;
          end;
         qry3.next;
        end;
  qry3.active:=false;
  qry3.cachedupdates:=false;
  qry3.requestlive:=false;
  qry3.active:=true;
  BT2.Enabled:=true;
  BT3.Enabled:=true;
  BT4.Enabled:=true;
  bT5.enabled:=false;
  bT6.enabled:=false;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TDeveloperName.BT6Click(Sender: TObject);
begin
  qry3.active:=false;
  qry3.cachedupdates:=false;
  qry3.requestlive:=false;
  BT2.Enabled:=true;  
  BT4.Enabled:=true;
  BT5.Enabled:=false;
  BT6.Enabled:=false;
end;

procedure TDeveloperName.BT4Click(Sender: TObject);
begin
  with qry3 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BT2.Enabled:=false;
  BT4.Enabled:=false;  
  BT5.enabled:=true;
  BT6.Enabled:=true;
end;

procedure TDeveloperName.BitBtn2Click(Sender: TObject);
begin
  with qry2 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    Insert;
  end;
  BitBtn2.Enabled:=false;
  BitBtn5.Enabled:=true;
  BitBtn6.Enabled:=true;
end;

procedure TDeveloperName.BitBtn3Click(Sender: TObject);
begin
  with qry2 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BitBtn2.Enabled:=false;
  BitBtn5.Enabled:=true;
  BitBtn6.Enabled:=true;  
end;

procedure TDeveloperName.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if qry2.FieldByName('YN').value='0' then
  begin
    dbgrideh2.canvas.font.color:=clred;
  end;
end;

end.
