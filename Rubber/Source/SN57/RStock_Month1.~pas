unit RStock_Month1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls, DB, DBTables;

type
  TRStock_Month = class(TForm)
    Panel2: TPanel;
    BB1: TBitBtn;
    bbt6: TBitBtn;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    MJCB: TComboBox;
    CLCB: TComboBox;
    Button1: TButton;
    DBGridEh2: TDBGridEh;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    bbt5: TBitBtn;
    WHSDMonthQry: TQuery;
    WHSDIODS: TDataSource;
    Label1: TLabel;
    KCYEARCB: TComboBox;
    Label2: TLabel;
    KCMONTHCB: TComboBox;
    upwp: TUpdateSQL;
    WHSDMonthQryKCYEAR: TStringField;
    WHSDMonthQryKCMONTH: TStringField;
    WHSDMonthQryMJBH: TStringField;
    WHSDMonthQryColorNo: TStringField;
    WHSDMonthQrySIZE: TStringField;
    WHSDMonthQryQTY: TCurrencyField;
    WHSDMonthQryUSERID: TStringField;
    WHSDMonthQryUSERDATE: TDateTimeField;
    WHSDMonthQryYN: TStringField;
    WHSDMonthQryEnglishName: TStringField;
    tmpQry: TQuery;
    ColorClassQry: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    //procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CLCBChange(Sender: TObject);
   /// procedure Button1Click(Sender: TObject);
    //procedure BB4Click(Sender: TObject);
    //procedure BB6Click(Sender: TObject);
   // procedure BB5Click(Sender: TObject);
  private
    ColorNo:String;
    { Private declarations }
 //   procedure InitUpdateSQL();
  public
    { Public declarations }
  end;

var
  RStock_Month: TRStock_Month;

implementation

uses main1, FunUnit;

{$R *.dfm}

procedure TRStock_Month.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

{procedure TRStock_Month.FormDestroy(Sender: TObject);
begin
  RStock_Month:=nil;
end; }

{procedure TRStock_Month.InitUpdateSQL();
begin
  upwp.InsertSQL.Clear;
  upwp.InsertSQL.Add('insert into '+main.LIY_DD+'.dbo.WorkWHSD_Month (KCYEAR, KCMONTH, MJBH, ColorNo, Size, Qty, UserID, UserDate, YN)');
  upwp.InsertSQL.Add('values(:KCYEAR, :KCMONTH, :MJBH, :ColorNo, :Size, :Qty, :UserID, :UserDate, :YN)');

  upwp.ModifySQL.Clear;
  upwp.ModifySQL.Add('update '+main.LIY_DD+'.dbo.WorkWHSD_Month');
  upwp.ModifySQL.Add('set  Qty=:Qty, UserID=:UserID, UserDate=:UserDate, YN=:YN ');
  upwp.ModifySQL.Add('where KCYEAR=:OLD_KCYEAR and KCMONTH=:OLD_KCMONTH and MJBH=:OLD_MJBH and ColorNo=:OLD_ColorNo and Size=:OLD_Size ');

  upwp.DeleteSQL.Clear;
  upwp.DeleteSQL.Add('delete from '+main.LIY_DD+'.dbo.WorkWHSD_Month');
  upwp.DeleteSQL.Add('where KCYEAR = :OLD_KCYEAR and KCMONTH =:OLD_KCMONTH and MJBH=:OLD_MJBH and ColorNo=:OLD_ColorNo and Size=:OLD_Size ');
end; }

procedure TRStock_Month.FormCreate(Sender: TObject);
var i:integer;
begin
  with tmpQry do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('select bz2 as mjbh');
    SQL.Add('from '+main.LIY_DD+'.dbo.mjzl');
    SQL.Add('where IsNull(bz2,'''')<>''''');
    SQL.Add('group by bz2');
    SQL.Add('order by bz2');
    active:=true;
    MJCB.Items.Clear;
    MJCB.Items.Add('ALL');
    for i:=1 to recordcount do
    begin
      MJCB.Items.Add(fieldbyname('mjbh').asstring);
      Next;
    end;
    active:=false;
  end;

  with ColorClassQry do
  begin
    active:=false;
    SQL.clear;
    SQL.add('select EnglishName,ColorNo');
    SQL.add('from '+main.LIY_DD+'.dbo.colorclass');
    SQL.add('where IsNull(EnglishName,'''')<>''''');
    SQL.add('group by EnglishName,ColorNo');
    active:=true;
    CLCB.Items.Clear;
    CLCB.Items.Add('ALL');
    for i:=1 to recordcount do
    begin
      CLCB.Items.Add(fieldbyname('EnglishName').asstring);
      Next;
    end;
  end;
  //InitUpdateSQL();
end;

procedure TRStock_Month.CLCBChange(Sender: TObject);
begin
  ColorClassQry.locate('englishname',clcb.Text,[]);
  ColorNo:=ColorClassQry.fieldbyname('colorno').Value;
end;

{procedure TRStock_Month.Button1Click(Sender: TObject);
begin
  with WHSDMonthQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select * from ( ');
    SQL.Add('select WorkWHSD_Month.*,ColorClass.EnglishName,workplan.CQDH ');
    SQL.Add('from '+main.LIY_DD+'.dbo.WorkWHSD_Month WorkWHSD_Month ');
    SQL.Add('left join '+main.LIY_DD+'.dbo.ColorClass ColorClass on ColorClass.ColorNo=WorkWHSD_Month.ColorNo ');
    SQL.Add('left join '+main.LIY_DD+'.dbo.workplan workplan on WorkWHSD_Month.ColorNo=workplan.colorno and workplan.mjbh=WorkWHSD_Month.MJBH ');
    SQL.Add('where WorkWHSD_Month.KCYEAR='''+KCYEARCB.Text+''' and WorkWHSD_Month.KCMONTH='''+KCMONTHCB.Text+''' ');
    SQL.Add(') WorkWHSD_Month where 1=1 and CQDH='''+main.Edit2.Text+'''');
    if MJCB.Text<>'ALL' then
      SQL.Add(' and WorkWHSD_Month.MJBH='''+MJCB.Text+'''');
    if CLCB.Text<>'ALL' then
      SQL.Add(' and WorkWHSD_Month.EnglishName='''+CLCB.Text+'''');
    SQL.Add('group by KCYEAR, KCMONTH,MJBH,ColorNo, SIZE, QTY, UserID, UserDate,YN,EnglishName,CQDH');
    //funcobj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  bb4.enabled:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
end;

procedure TRStock_Month.BB4Click(Sender: TObject);
begin
  with WHSDMonthQry do
  begin
    cachedupdates:=true;
    requestlive:=true;
  end;
  bb5.Enabled:=true;
  bb6.Enabled:=true;
end;

procedure TRStock_Month.BB6Click(Sender: TObject);
begin
  with WHSDMonthQry do
  begin
    CachedUpdates:=false;
    RequestLive:=false;
    Active:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.Enabled:=false;
end;

procedure TRStock_Month.BB5Click(Sender: TObject);
var i:integer;
begin

  try
    WHSDMonthQry.first;
    for i:=0 to WHSDMonthQry.RecordCount-1 do
    begin
        case WHSDMonthQry.updatestatus of
          usmodified:
          begin
            WHSDMonthQry.edit;
            WHSDMonthQry.FieldByName('UserID').Value:=main.edit1.text;
            WHSDMonthQry.FieldByName('UserDate').Value:=Date();
            upwp.apply(ukmodify);
          end;
        end;
        WHSDMonthQry.Next;
    end;
    WHSDMonthQry.active:=false;
    WHSDMonthQry.cachedupdates:=false;
    WHSDMonthQry.requestlive:=false;
    WHSDMonthQry.active:=true;
    bb5.enabled:=false;
    bb6.enabled:=false;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;  }

end.
