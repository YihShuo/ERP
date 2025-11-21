unit DevQuotaEx1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls;

type
  TDevQuotaEx = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    DBGrid3: TDBGridEh;
    MaterialCBDEx: TQuery;
    UpdSQL: TUpdateSQL;
    MaterialCBDExGSBH: TStringField;
    MaterialCBDExCWHL: TFloatField;
    MaterialCBDExUSERID: TStringField;
    MaterialCBDExUSERDATE: TDateTimeField;
    DS1: TDataSource;
    MaterialCBDExCWHL_ID: TFloatField;
    MaterialCBDExKHBH: TStringField;
    MaterialCBDExkfjc: TStringField;
    Label51: TLabel;
    CBBrand: TComboBox;
    MaterialCBDExSeason: TStringField;
    Label21: TLabel;
    Edit6: TEdit;
    MaterialCBDExCustomerCFMDate: TDateTimeField;
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure MaterialCBDExBeforeScroll(DataSet: TDataSet);
    procedure BB1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure CBBrandSelect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DevQuotaEx: TDevQuotaEx;

implementation
  uses main1;
{$R *.dfm}

procedure TDevQuotaEx.BB4Click(Sender: TObject);
begin
  if MaterialCBDEx.Active=true then
  begin
    with MaterialCBDEx do
    begin
      cachedupdates:=true;
      requestlive:=true;
      edit;
    end;
    BB5.Enabled:=true;
    BB6.Enabled:=true;
  end;
end;

procedure TDevQuotaEx.BB6Click(Sender: TObject);
begin
    with MaterialCBDEx do
    begin
      active:=false;
      requestlive:=false;
      cachedupdates:=false;
      active:=true;
    end;
    BB5.Enabled:=false;
    BB6.Enabled:=false;
end;

procedure TDevQuotaEx.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TDevQuotaEx.FormDestroy(Sender: TObject);
begin
  DevQuotaEx:=nil;
end;

procedure TDevQuotaEx.FormCreate(Sender: TObject);
begin
  //MaterialCBDEx.Active:=true;
  if (main.edit2.text='VC1') or (main.edit2.text='VC2') then
  begin
      CBBrand.Items.Clear;              
      CBBrand.Items.Add('Cariuma');
      CBBrand.Items.Add('Uniqlo');
      CBBrand.Items.Add('Vessi');
      CBBrand.ItemIndex:=0;
      //Cariuma
  end
  else 
  begin
      CBBrand.Visible:=false;
      Label51.Visible:=false;
  end;
  BB1.Click;
end;

procedure TDevQuotaEx.BB5Click(Sender: TObject);
var i:integer;
    KHDH,KFCQ,FTY:string;
begin
  if main.Edit2.Text='CDC' then
          KHDH:='036'
  else if main.Edit2.Text='VC1' then
      if CBBrand.ItemIndex=0 then
          KHDH:='0079'
      else if CBBrand.ItemIndex=1 then
          KHDH:='0078'
      else if CBBrand.ItemIndex=2 then
          KHDH:='0082';
  {if ComboBox5.ItemIndex=0 then
  begin
      FTY:='LYN-9Z';
      KFCQ:='JNG'
  end
  else if ComboBox5.ItemIndex=1 then
  begin
      KFCQ:='YQA';
      FTY:='LYI-6L';
  end;        }
  //
  MaterialCBDEx.First;

for i:=1 to MaterialCBDEx.RecordCount do

  with MaterialCBDEx do
  begin
  Edit;
  FieldByName('userID').Value:=main.edit1.text;
  FieldByName('userdate').Value:=Date();     
  FieldByName('KHBH').Value:=KHDH;


    case updatestatus of usInserted:
      begin
       FieldByName('GSBH').Value:=main.edit2.text;
       UpdSQL.apply(ukinsert);
      end;
    end;
    case updatestatus of usmodified:
      begin
       Edit;
       UpdSQL.apply(ukmodify);
      end;
    end;
    MaterialCBDEx.Next;
  end;
  //
  MaterialCBDEx.active:=false;
  MaterialCBDEx.cachedupdates:=false;
  MaterialCBDEx.requestlive:=false;
  MaterialCBDEx.active:=true;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
end;

procedure TDevQuotaEx.MaterialCBDExBeforeScroll(DataSet: TDataSet);
begin
  // abort;
end;

procedure TDevQuotaEx.BB1Click(Sender: TObject);
var    KHDH,KFCQ,FTY:string;
begin
  if main.Edit2.Text='CDC' then
          KHDH:='036'
  else if main.Edit2.Text='VC1' then
      if CBBrand.ItemIndex=0 then
          KHDH:='0079'
      else if CBBrand.ItemIndex=1 then
          KHDH:='0078'
      else if CBBrand.ItemIndex=2 then
          KHDH:='0082';
    with MaterialCBDEx do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select MaterialCBDEx.*,KFZL.kfjc from MaterialCBDEx');
      SQL.Add('left join KFZL on KFZL.KFDH=MaterialCBDEx.KHBH');     
        SQL.Add('where MaterialCBDEx.KHBH='''+KHDH+'''');
      if  Edit6.text<>'' then
        SQL.Add('and MaterialCBDEx.Season like '''+Edit6.text+'''');
      Active:=true;
      cachedupdates:=true;
      requestlive:=true;
      edit;
    end;
    BB5.Enabled:=true;
    BB6.Enabled:=true;
end;

procedure TDevQuotaEx.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

procedure TDevQuotaEx.BB2Click(Sender: TObject);
var KHDH,KFCQ,FTY:string;
begin
  if main.Edit2.Text='CDC' then
          KHDH:='036'
  else if main.Edit2.Text='VC1' then
      if CBBrand.ItemIndex=0 then
          KHDH:='0079'
      else if CBBrand.ItemIndex=1 then
          KHDH:='0078'
      else if CBBrand.ItemIndex=2 then
          KHDH:='0082';
  MaterialCBDEx.RequestLive:=true;
  MaterialCBDEx.CachedUpdates:=true;
  MaterialCBDEx.Insert;
  MaterialCBDEx.edit;
  MaterialCBDEx.FieldByName('KHBH').Value:=KHDH;
end;

procedure TDevQuotaEx.BB3Click(Sender: TObject);
begin
    UpdSQL.apply(ukdelete); 
    BB1.Click;
end;

procedure TDevQuotaEx.CBBrandSelect(Sender: TObject);
begin
  if main.Edit2.Text='VC1' then
      if CBBrand.ItemIndex=0 then
          Edit6.Text:='Winter 25'
      else if CBBrand.ItemIndex=1 then
          Edit6.Text:='FW25';

end;

end.
