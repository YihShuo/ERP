unit SampleTrackingRms1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls,
  GridsEh, DBGridEh;

type
  TSampleTrackingRms = class(TForm)
    MasPanel: TPanel;
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
    BDT6: TBitBtn;
    ToolPanel: TPanel;
    Button1: TButton;
    DS: TDataSource;
    SPSLRms: TQuery;
    UpMas: TUpdateSQL;
    SPSLRmsLYBH: TStringField;
    SPSLRmsGSBH: TStringField;
    SPSLRmsItemNM: TStringField;
    SPSLRmsZWSM: TStringField;
    SPSLRmsYWSM: TStringField;
    SPSLRmsUserID: TStringField;
    SPSLRmsUserDate: TDateTimeField;
    SPSLRmsYN: TIntegerField;
    DBGridRm: TDBGridEh;
    tmpQuery: TQuery;
    Label1: TLabel;
    ZWSM: TEdit;
    Label2: TLabel;
    YWSM: TEdit;
    Label3: TLabel;
    InfoPanel: TPanel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    GroupBox3: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    GroupBox4: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    GroupBox5: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    ItemNM: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure DBGridRmDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure DBGridRmDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure GetPicking();
  public
    Department:String;
    SubSQL:string;
    { Public declarations }
    procedure SetDepartment(NM:string);
  end;

var
  SampleTrackingRms: TSampleTrackingRms;
  NDate:TDate;
implementation
  uses main1,FunUnit;
{$R *.dfm}

procedure TSampleTrackingRms.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TSampleTrackingRms.FormDestroy(Sender: TObject);
begin
  SampleTrackingRms:=nil;
end;

procedure TSampleTrackingRms.Button1Click(Sender: TObject);
begin

  //List Reason Item
  GetPicking();
  with SPSLRms do
  begin
     Active:=false;
     SQL.Clear;
     SQL.Add('Select *,1 as YN from SPSCRmS '+SubSQL);
     SQL.Add(' and ItemNM like ''%'+ItemNM.Text+'%'' ');
     if ZWSM.Text<>'' then
       SQL.Add(' and ZWSM like ''%'+ZWSM.Text+'%'' ');
     if YWSM.Text<>'' then
       SQL.Add(' and YWSM like ''%'+YWSM.Text+'%'' ');
     SQL.Add(' and GSBH='''+main.Edit2.Text+''' ');
     SQL.Add('Order by ItemNM,LYBH ');
     Active:=true;
  end;
  //
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  //
  ToolPanel.Visible:=false;
  InfoPanel.Visible:=false;
  //

end;

procedure TSampleTrackingRms.BB1Click(Sender: TObject);
begin
  ToolPanel.Visible:=true;
  InfoPanel.Visible:=true;
end;

procedure TSampleTrackingRms.BB2Click(Sender: TObject);
begin

  //
  with SPSLRms do
    begin
      requestlive:=true;
      cachedupdates:=true;
      insert;
      FieldByName('LYBH').AsString:='Auto';
      FieldByName('GSBH').AsString:=main.Edit2.Text;
    end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  //

end;

procedure TSampleTrackingRms.BB4Click(Sender: TObject);
begin
  //
  with SPSLRms do
    begin
      requestlive:=true;
      cachedupdates:=true;
      Edit;
    end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  //
end;

procedure TSampleTrackingRms.BB3Click(Sender: TObject);
begin
  //
  with SPSLRms do
  begin
      if fieldbyname('USERID').value=main.edit1.Text then
      begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
        fieldbyname('YN').Value:='0';
      end else
      begin
        showmessage('It is not yours,can not delete.');
      end;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  //
end;

procedure TSampleTrackingRms.DBGridRmDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin

  //
end;

procedure TSampleTrackingRms.DBGridRmDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  //
  if SPSLRms.FieldByName('YN').value='0' then
  begin
    DBGridRm.canvas.font.color:=clred;
    DBGridRm.defaultdrawcolumncell(rect,datacol,column,state);
  end;
  //
end;

procedure TSampleTrackingRms.BB6Click(Sender: TObject);
begin
  //
  with SPSLRms do
    begin
      active:=false;
      requestlive:=false;
      cachedupdates:=false;
      active:=true;
    end;
  bb5.enabled:=false;
  bb6.enabled:=false;
  //
end;
//
procedure TSampleTrackingRms.SetDepartment(NM:string);
begin
  Department:=NM;
end;
//取得項目
procedure TSampleTrackingRms.GetPicking();
begin
  //全部
  DBGridRm.Columns[2].PickList.Clear;
  if Department='' then
  begin
    DBGridRm.Columns[2].PickList.add('CkExDate');
    DBGridRm.Columns[2].PickList.add('RelyDate');
    DBGridRm.Columns[2].PickList.add('ZBExDate');
    DBGridRm.Columns[2].PickList.add('SJExDate');
    DBGridRm.Columns[2].PickList.add('JDExDate');
    DBGridRm.Columns[2].PickList.add('WBExDate');
    DBGridRm.Columns[2].PickList.add('SPExDate');
    DBGridRm.Columns[2].PickList.add('MLExDate');
    DBGridRm.Columns[2].PickList.add('FLExDate');
    DBGridRm.Columns[2].PickList.add('DLExDate');
    DBGridRm.Columns[2].PickList.add('BOMExDate');
    DBGridRm.Columns[2].PickList.add('SKExDate');
    DBGridRm.Columns[2].PickList.add('YLExDate');
    DBGridRm.Columns[2].PickList.add('CutExDate');
    DBGridRm.Columns[2].PickList.add('SteExDate');
    DBGridRm.Columns[2].PickList.add('AseExDate');
    DBGridRm.Columns[2].PickList.add('BGExDate');
  end;
  //
  if Department='Develop' then
  begin
    if main.Edit2.Text='CDC' then
    begin
      DBGridRm.Columns[2].PickList.add('CkExDate');
      DBGridRm.Columns[2].PickList.add('RelyDate');
      DBGridRm.Columns[2].PickList.add('SPExDate');
      DBGridRm.Columns[2].PickList.add('SKExDate');
      SubSQL:='where (ItemNM=''CkExDate'' or ItemNM=''RelyDate'' or ItemNM=''SPExDate'' or ItemNM=''SKExDate'')';
    end else //KDC
    begin
      DBGridRm.Columns[2].PickList.add('CkExDate');
      DBGridRm.Columns[2].PickList.add('RelyDate');
      DBGridRm.Columns[2].PickList.add('SPExDate');
      DBGridRm.Columns[2].PickList.add('SKExDate');
      DBGridRm.Columns[2].PickList.add('SJExDate');
      SubSQL:='where (ItemNM=''CkExDate'' or ItemNM=''RelyDate'' or ItemNM=''SPExDate'' or ItemNM=''SKExDate'' or ItemNM=''SJExDate'' )';
    end;
  end;
  if Department='Pattern' then
  begin
    if main.Edit2.Text='CDC' then
    begin
      DBGridRm.Columns[2].PickList.add('ZBExDate');
      DBGridRm.Columns[2].PickList.add('SJExDate');
      DBGridRm.Columns[2].PickList.add('JDExDate');
      DBGridRm.Columns[2].PickList.add('WBExDate');
      SubSQL:='where (ItemNM=''ZBExDate'' or ItemNM=''SJExDate'' or ItemNM=''JDExDate'' or ItemNM=''WBExDate'')';
    end else //KDC
    begin
      DBGridRm.Columns[2].PickList.add('ZBExDate');
      DBGridRm.Columns[2].PickList.add('JDExDate');
      DBGridRm.Columns[2].PickList.add('WBExDate');
      SubSQL:='where (ItemNM=''ZBExDate'' or ItemNM=''JDExDate'' or ItemNM=''WBExDate'')';
    end;
  end;
  if Department='Purchase' then
  begin
    DBGridRm.Columns[2].PickList.add('MLExDate');
    DBGridRm.Columns[2].PickList.add('FLExDate');
    DBGridRm.Columns[2].PickList.add('DLExDate');
    SubSQL:='where (ItemNM=''MLExDate'' or ItemNM=''FLExDate'' or ItemNM=''DLExDate'')';
  end;
  if Department='Price' then
  begin
    DBGridRm.Columns[2].PickList.add('BOMExDate');
    DBGridRm.Columns[2].PickList.add('YLExDate');
    DBGridRm.Columns[2].PickList.add('BGExDate');
    SubSQL:='where (ItemNM=''BOMExDate'' or ItemNM=''YLExDate'' or ItemNM=''BGExDate'')';
  end;
  if Department='Production' then
  begin
    DBGridRm.Columns[2].PickList.add('AseExDate');
    DBGridRm.Columns[2].PickList.add('CutExDate');
    DBGridRm.Columns[2].PickList.add('SteExDate');
    SubSQL:='where (ItemNM=''CutExDate'' or ItemNM=''SteExDate'' or ItemNM=''AseExDate'')';
  end;
  //
end;
//
procedure TSampleTrackingRms.BB5Click(Sender: TObject);
var i:integer;
    LYBH:string;
begin

  //
  SPSLRms.First;
  for i:=0 to SPSLRms.RecordCount-1 do
  begin
    case SPSLRms.updatestatus of
      usinserted:
      begin
         //
         with tmpQuery do    //計算領料單流水號
         begin
             active:=false;
             sql.Clear;
             sql.Add('select top 1 LYBH from SPSCRmS order by LYBH desc ');
             active:=true;
             if recordcount >0 then
               LYBH:=Format('%.4d',[strtoint(FieldByName('LYBH').Value)+1])
             else
               LYBH:='0001';
             active:=false;
         end;
         SPSLRms.edit;
         SPSLRms.fieldbyname('LYBH').Value:=LYBH;
         SPSLRms.fieldbyname('UserID').Value:=main.Edit1.Text;
         SPSLRms.fieldbyname('UserDate').Value:=Date();
         SPSLRms.Post;
         upMas.apply(ukinsert);
      end;
      usmodified:
      begin
         //
         if (SPSLRms.fieldbyname('UserID').AsString=main.edit1.text)  then
         begin
           if SPSLRms.fieldbyname('YN').value='0' then
           begin
             upMas.apply(ukdelete);
           end else
           begin
             //
             SPSLRms.edit;
             SPSLRms.fieldbyname('UserID').Value:=main.Edit1.Text;
             SPSLRms.fieldbyname('UserDate').Value:=NDate;
             SPSLRms.Post;
             upMas.apply(ukmodify);
             //
           end;
         end else
         begin
           showmessage('It is not yours, can not modify.');
         end;
         //
      end;
    end;
    SPSLRms.Next;
  end;
  //
  SPSLRms.active:=false;
  SPSLRms.cachedupdates:=false;
  SPSLRms.requestlive:=false;
  SPSLRms.active:=true;
  //
  bb5.enabled:=false;
  bb6.enabled:=false;
  //
end;

procedure TSampleTrackingRms.FormCreate(Sender: TObject);
begin
  //
  with tmpQuery do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;

end;

end.
