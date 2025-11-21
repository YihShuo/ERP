unit ScanBanDo_RY1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, ExtCtrls, StdCtrls, Menus,
  Buttons;

type
  TScanBanDo_RY = class(TForm)
    YWCPMas: TQuery;
    YWCPDet: TQuery;
    DS1: TDataSource;
    DS2: TDataSource;
    YWCPMasDDBH: TStringField;
    YWCPMasPairs: TIntegerField;
    YWCPMasKVBH: TStringField;
    YWCPMasKCBH: TStringField;
    Panel1: TPanel;
    Panel2: TPanel;
    Splitter1: TSplitter;
    Label1: TLabel;
    QryBtn: TButton;
    Label2: TLabel;
    RYEdit: TEdit;
    KVBHEdit: TEdit;
    YWCPDetCARTONBAR: TStringField;
    YWCPDetKVBH: TStringField;
    YWCPDetQty: TIntegerField;
    Panel3: TPanel;
    DBGrid2: TDBGridEh;
    Panel4: TPanel;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    upMas: TUpdateSQL;
    upDet: TUpdateSQL;
    PopupMenu1: TPopupMenu;
    SetKVBH1: TMenuItem;
    ExeQuery: TQuery;
    Panel5: TPanel;
    Panel6: TPanel;
    DBGrid1: TDBGridEh;
    BA4: TBitBtn;
    BA5: TBitBtn;
    BA6: TBitBtn;
    PopupMenu2: TPopupMenu;
    SetKVBH2: TMenuItem;
    YWCPMasStatus: TStringField;
    procedure QryBtnClick(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BA4Click(Sender: TObject);
    procedure BA5Click(Sender: TObject);
    procedure BA6Click(Sender: TObject);
    procedure SetKVBH1Click(Sender: TObject);
    procedure SetKVBH2Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    IsFresh:boolean;
    { Private declarations }
  public
    KCBH:string;
    { Public declarations }
  end;

var
  ScanBanDo_RY: TScanBanDo_RY;

implementation
  uses FunUnit, ScanBanDo1;
{$R *.dfm}

procedure TScanBanDo_RY.QryBtnClick(Sender: TObject);
begin
  //
  with YWCPMas do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select DDBH,KCBH,KVBH,SUM(Qty) as Pairs,Status from YWCP ');
    SQL.Add('where KCBH='''+KCBH+'''and SB=1 ');
    if KVBHEdit.Text<>'' then
    SQL.Add('  and KVBH='''+KVBHEdit.Text+''' ');
    if RYEdit.Text<>'' then
      SQL.Add(' and DDBH like '''+RYEdit.Text+'%'' ');
    SQL.Add('Group by DDBH,KCBH,KVBH,Status ');
    SQL.Add('order by DDBH');
    Active:=true;
  end;
  YWCPDet.Active:=true;
  //
end;

procedure TScanBanDo_RY.BB4Click(Sender: TObject);
begin
  //
  with YWCPDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  SetKVBH2.Enabled:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  //  
end;

procedure TScanBanDo_RY.BB6Click(Sender: TObject);
begin
  with YWCPDet do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  SetKVBH2.Enabled:=false;
  BB5.enabled:=false;
  BB6.enabled:=false;
end;

procedure TScanBanDo_RY.BB5Click(Sender: TObject);
var i:integer;
begin
  try
    YWCPDet.first;
    for i:=1 to YWCPDet.RecordCount do
    begin
      case YWCPDet.updatestatus of
          usmodified:
          begin
            upDet.apply(ukmodify);
          end;
       end;
       YWCPDet.next;
    end;
    YWCPDet.active:=false;
    YWCPDet.cachedupdates:=false;
    YWCPDet.requestlive:=false;
    YWCPDet.active:=true;
    SetKVBH2.Enabled:=false;
    BB5.enabled:=false;
    BB6.enabled:=false;
    IsFresh:=true;
    showmessage('Succeed.');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TScanBanDo_RY.FormCreate(Sender: TObject);
begin
  IsFresh:=false;
end;

procedure TScanBanDo_RY.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if   IsFresh=true then ScanBanDo.GetYWCPDate();
end;

procedure TScanBanDo_RY.BA4Click(Sender: TObject);
begin
  //
  with YWCPMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  SetKVBH1.Enabled:=true;
  BA5.Enabled:=true;
  BA6.Enabled:=true;
end;

procedure TScanBanDo_RY.BA5Click(Sender: TObject);
var i:integer;
begin
  try
    YWCPDet.Active:=false;
    YWCPMas.first;
    for i:=1 to YWCPMas.RecordCount do
    begin
      case YWCPMas.updatestatus of
          usmodified:
          begin
            with ExeQuery do
            begin
              Active:=false;
              SQL.Clear;
              SQL.Add('Update YWCP Set KVBH='''+YWCPMas.FieldByname('KVBH').AsString+''',Status='''+YWCPMas.FieldByname('Status').AsString+''' where DDBH='''+YWCPMas.FieldByname('DDBH').AsString+''' ');
              ExecSQL();
            end;
            //upMas.apply(ukmodify);
          end;
       end;
       YWCPMas.next;
    end;
    YWCPMas.active:=false;
    YWCPMas.cachedupdates:=false;
    YWCPMas.requestlive:=false;
    YWCPMas.active:=true;
    YWCPDet.Active:=true;
    SetKVBH1.Enabled:=false;
    BA5.enabled:=false;
    BA6.enabled:=false;
    IsFresh:=true;
    showmessage('Succeed.');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TScanBanDo_RY.BA6Click(Sender: TObject);
begin
  with YWCPMas do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  SetKVBH1.Enabled:=false;
  BA5.enabled:=false;
  BA6.enabled:=false;
end;

procedure TScanBanDo_RY.SetKVBH1Click(Sender: TObject);
var KVBH:string;
    i:integer;
    bm:Tbookmark;
    bookmarklist:tbookmarklistEh;
begin
  //
  KVBH:=inputbox('Please Input KVBH','vi du:A01.. / B01..','');
  if length(KVBH)=3 then
  begin
    YWCPMas.disablecontrols;
    bm:=YWCPMas.getbookmark;
    bookmarklist:=DBGrid1.selectedrows;
      try
        for i:=0 to bookmarklist.count-1 do
        begin
           YWCPMas.gotobookmark(pointer(bookmarklist[i]));
           YWCPMas.Edit;
           YWCPMas.FieldByName('KVBH').Value:=KVBH;
           YWCPMas.Post;
        end;
      finally
        begin
          YWCPMas.gotobookmark(bm);
          YWCPMas.freebookmark(bm);
          YWCPMas.enablecontrols;
          showmessage('Xong roi!');
        end;
      end;
  end;
end;

procedure TScanBanDo_RY.SetKVBH2Click(Sender: TObject);
var KVBH:string;
    i:integer;
    bm:Tbookmark;
    bookmarklist:tbookmarklistEh;
begin
  //
  KVBH:=inputbox('Please Input KVBH','vi du:A01.. / B01..','');
  if length(KVBH)=3 then
  begin
    YWCPDet.disablecontrols;
    bm:=YWCPDet.getbookmark;
    bookmarklist:=DBGrid2.selectedrows;
      try
        for i:=0 to bookmarklist.count-1 do
        begin
           YWCPDet.gotobookmark(pointer(bookmarklist[i]));
           YWCPDet.Edit;
           YWCPDet.FieldByName('KVBH').Value:=KVBH;
           YWCPDet.Post;
        end;
      finally
        begin
          YWCPDet.gotobookmark(bm);
          YWCPDet.freebookmark(bm);
          YWCPDet.enablecontrols;
          showmessage('Xong roi!');
        end;
      end;
  end;

end;

procedure TScanBanDo_RY.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
   if Column.FieldName = 'Status' then
  begin
    // 檢查 A 欄位的數值
    if YWCPMas.FieldByName('Status').Value = 'Pass' then
      DBGrid1.Canvas.Brush.Color := clGreen
    else if YWCPMas.FieldByName('Status').Value = 'False' then
      DBGrid1.Canvas.Brush.Color := clRed;
    // 繪製單元格
    DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

end.
