unit LastArea1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls, DBTables, DB,
  Menus;

type
  TLastArea = class(TForm)
    DS1: TDataSource;
    MatArea: TQuery;
    UPMatArea: TUpdateSQL;
    TempSql: TQuery;
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    bbt5: TBitBtn;
    bbt6: TBitBtn;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    CBX1: TComboBox;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    DBGridEh1: TDBGridEh;
    MatAreaCLBH: TStringField;
    MatAreaYWPM: TStringField;
    MatAreaZWPM: TStringField;
    MatAreaSIZ: TStringField;
    MatAreaDWBH: TStringField;
    MatAreaLYCC: TStringField;
    MatAreaCLZMLB: TStringField;
    MatAreaCQDH: TStringField;
    MatAreaCKBH: TStringField;
    MatAreaKCBH: TStringField;
    MatAreaUSERID: TStringField;
    MatAreaUSERDATE: TDateTimeField;
    MatAreaYN: TStringField;
    MatAreaKCMC: TStringField;
    MatAreaMemo: TStringField;
    MatAreaoldCLBH: TStringField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    BDT7: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure N1Click(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure BDT7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LastArea: TLastArea;

implementation

uses main1, LastSiteArea1, LastArea_KC1;

{$R *.dfm}

procedure TLastArea.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TLastArea.FormDestroy(Sender: TObject);
begin
  LastArea:=nil;
end;

procedure TLastArea.Button1Click(Sender: TObject);
begin

  with MatArea do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select LastSizeR.CLBH,CLZL.YWPM,CLZL.ZWPM,LastSizeR.SIZ,CLZL.DWBH,KCZLS.CLBH as oldCLBH,');
    SQL.Add('     CLZL.LYCC,CLZL.CLZMLB,CLZL.CQDH,KCZLS.CKBH,KCZLS.KCBH,KCZLS.USERID,KCZLS.USERDATE,KCZLS.YN,KCZL.KCMC,KCZL.Memo ');
    SQL.Add('from LastSizeR');
    SQL.Add('left join (select LastKCZLS.* from LastKCZLS where 1=1 ');
    SQL.Add('             and LastKCZLS.CKBH='''+CBX1.Text+''' ');
    SQL.Add('           ) KCZLS on KCZLS.CLBH=LastSizeR.CLBH and KCZLS.SIZ=LastSizeR.SIZ');
    SQL.Add('left join LastKCZL KCZL on KCZL.CKBH=KCZLS.CKBH and KCZL.KCBH=KCZLS.KCBH');
    SQL.Add('left join CLZL on CLZL.cldh=LastSizeR.CLBH');
    SQL.Add('where LastSizeR.CLBH like '''+edit1.Text+'%'' ');
    sql.add('and CLZL.YWPM like ''%'+edit2.Text+'%''');
    sql.add('and CLZL.YWPM like ''%'+edit3.Text+'%''');
    sql.add('and CLZL.YWPM like ''%'+edit4.Text+'%''');
    SQL.Add('order by CLZL.CLDH,LastSizeR.SIZ');
    Active:=true;
  end;
  BB4.Enabled:=true;
  BBt1.Enabled:=true;
  BBt2.Enabled:=true;
  BBt3.Enabled:=true;
  BBt4.Enabled:=true;
  BBt5.Enabled:=true;
  BBt6.Enabled:=true;
end;

procedure TLastArea.FormCreate(Sender: TObject);
begin
  with tempsql do
  begin
    active:=false;
    sql.clear;
    sql.add('select CKBH from LastKCCK where GSBH='''+main.Edit2.Text+'''');
    active:=true;
    while not tempsql.eof do
    begin
        CBX1.Items.Add(fields[0].value);
        Next;
    end;
    if CBX1.text='' then
    begin
        CBX1.ItemIndex:=0;
    end;
    active:=false;
  end;
end;

procedure TLastArea.BB4Click(Sender: TObject);
begin
  with  MatArea do
  begin
    RequestLive:=true;
    CachedUpdates:=true;
    Edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TLastArea.BB6Click(Sender: TObject);
begin
  with MatArea do
  begin
    Active:=false;
    requestlive:=false;
    cachedupdates:=false;
    Active:=true;
  end;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
end;

procedure TLastArea.BB5Click(Sender: TObject);
var i:integer;
begin
  try
    MatArea.First;
    for i:=1 to MatArea.RecordCount do
    begin
      if MatArea.updatestatus=usmodified then
        begin
          if not MatArea.FieldByName('oldCLBH').isnull then
          begin
            UPMatArea.apply(ukmodify);
          end else
          begin
            MatArea.edit;
            MatArea.FieldByName('CKBH').Value:=CBX1.Text;
            MatArea.fieldbyname('USERDATE').Value:=date;
            MatArea.fieldbyname('USERID').Value:=main.edit1.text;
            MatArea.fieldbyname('YN').Value:='1';
            UPMatArea.apply(ukinsert);
          end;
        end;
      MatArea.next;
    end;
    MatArea.active:=false;
    MatArea.requestlive:=false;
    MatArea.cachedupdates:=false;
    MatArea.active:=true;
    BB5.Enabled:=false;
    BB6.Enabled:=false;
    showmessage('Succeed');
  except
    showmessage('have wrong');
  end;

end;

procedure TLastArea.DBGridEh1CellClick(Column: TColumnEh);
begin
  if MatArea.requestlive then
  begin
     if DBGridEh1.Selectedindex=4  then
     begin
         DBGridEh1.columns[4].ButtonStyle:=cbsEllipsis;
     end;
  end else
  begin
      DBGridEh1.columns[4].ButtonStyle:=cbsnone;
  end;
end;

procedure TLastArea.N1Click(Sender: TObject);
var CKBH,KCBH,KCMC:String;
begin
  if MatArea.Active=false then Exit;
  CKBH:=MatArea.FieldByName('CKBH').AsString;
  KCBH:=MatArea.FieldByName('KCBH').AsString;
  KCMC:=MatArea.FieldByName('KCMC').AsString;
  while not MatArea.Eof do
  begin
    MatArea.Edit;
    MatArea.FieldByName('CKBH').Value:=CKBH;
    MatArea.FieldByName('KCBH').Value:=KCBH;
    MatArea.FieldByName('KCMC').Value:=KCMC;
    MatArea.Post;
    MatArea.Next;
  end;

end;

procedure TLastArea.DBGridEh1EditButtonClick(Sender: TObject);
begin
  LastArea_KC:=TLastArea_KC.create(self);
  LastArea_KC.show;
end;

procedure TLastArea.BDT7Click(Sender: TObject);
begin
   if LastSiteArea <> nil then
   begin
      LastSiteArea.show;
      LastSiteArea.windowstate := wsmaximized;
   end else
   begin
     LastSiteArea:=TLastSiteArea.Create(self);
     LastSiteArea.Show;
   end;
end;

end.
