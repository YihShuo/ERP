unit PurtraceMatch_NoNeedPurchase1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls;

type
  TPurtraceMatch_NoNeedPurchase = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    DBGrid1: TDBGridEh;
    DS1: TDataSource;
    CLZLFilterQry: TQuery;
    UpMas: TUpdateSQL;
    CLZLFilterQryGSBH: TStringField;
    CLZLFilterQrycldh: TStringField;
    CLZLFilterQryUserID: TStringField;
    CLZLFilterQryUserDate: TDateTimeField;
    CLZLFilterQryYn: TStringField;
    CLZLFilterQryYWPM: TStringField;
    CLZLFilterQryZWPM: TStringField;
    CLZLFilterQryDWBH: TStringField;
    CLZLFilterQryCQDH: TStringField;
    Panel2: TPanel;
    Label1: TLabel;
    MatNoEdit: TEdit;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CLZLFilterQryAfterOpen(DataSet: TDataSet);
    procedure BB6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure BB5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PurtraceMatch_NoNeedPurchase: TPurtraceMatch_NoNeedPurchase;

implementation
  uses main1;
{$R *.dfm}

procedure TPurtraceMatch_NoNeedPurchase.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TPurtraceMatch_NoNeedPurchase.FormDestroy(Sender: TObject);
begin
  PurtraceMatch_NoNeedPurchase:=nil;
end;

procedure TPurtraceMatch_NoNeedPurchase.CLZLFilterQryAfterOpen(
  DataSet: TDataSet);
begin
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
end;

procedure TPurtraceMatch_NoNeedPurchase.BB6Click(Sender: TObject);
begin
  with CLZLFilterQry do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  //
  BB5.enabled:=false;
  BB6.enabled:=false;
end;

procedure TPurtraceMatch_NoNeedPurchase.Button1Click(Sender: TObject);
begin
  with CLZLFilterQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select CLZLFilter.*,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,CLZL.CQDH ');
    SQL.Add('from CLZLFilter ');
    SQL.Add('left join CLZL on CLZL.CLDH=CLZLFilter.CLDH ');
    SQL.Add('where GSBH='''+main.Edit2.Text+'''  ');
    if MatNoEdit.Text<>'' then
    SQL.Add('  and  CLZLFilter.CLDH like '''+MatNoEdit.Text+'%'' ');
    Active:=true;
  end;
end;

procedure TPurtraceMatch_NoNeedPurchase.BB2Click(Sender: TObject);
begin
  with CLZLFilterQry do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TPurtraceMatch_NoNeedPurchase.BB4Click(Sender: TObject);
begin
  with CLZLFilterQry do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TPurtraceMatch_NoNeedPurchase.BB3Click(Sender: TObject);
begin
  with CLZLFilterQry do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TPurtraceMatch_NoNeedPurchase.DBGrid1DrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if CLZLFilterQry.FieldByName('YN').value='0' then
  begin
    DBGrid1.canvas.font.color:=clred;
    DBGrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TPurtraceMatch_NoNeedPurchase.BB5Click(Sender: TObject);
var i:integer;
begin

  try
    CLZLFilterQry.first;
    for i:=1 to CLZLFilterQry.RecordCount do
    begin
        case CLZLFilterQry.updatestatus of
          usinserted:
            begin
               CLZLFilterQry.edit;
               CLZLFilterQry.FieldByName('userID').Value:=main.edit1.text;
               CLZLFilterQry.FieldByName('userdate').Value:=Date;
               CLZLFilterQry.FieldByName('YN').Value:='1';
               UpMas.apply(ukinsert);
            end;
          usmodified:
            begin
              if CLZLFilterQry.fieldbyname('YN').value='0' then
              begin
                UpMas.apply(ukdelete);
              end else
              begin
                CLZLFilterQry.edit;
                CLZLFilterQry.FieldByName('userID').Value:=main.edit1.text;
                CLZLFilterQry.FieldByName('userdate').Value:=Date;
                UpMas.apply(ukmodify);
              end;
            end;
        end;
        CLZLFilterQry.next;
    end;
    CLZLFilterQry.active:=false;
    CLZLFilterQry.cachedupdates:=false;
    CLZLFilterQry.requestlive:=false;
    CLZLFilterQry.active:=true;
    //
    BB5.enabled:=false;
    BB6.enabled:=false;
  except
    on E:Exception do
    begin
      Messagedlg('Have wrong, can not save data!'+E.Message,mtwarning,[mbyes],0);
    end;
  end;
end;

end.
