unit SampleMaterial_CombinatedDev1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls;

type
  TSampleMaterial_CombinatedDev = class(TForm)
    Panel1: TPanel;
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
    CLZHZLVNGrid: TDBGridEh;
    CLZHZLVN: TQuery;
    DS1: TDataSource;
    CLZHZLVNcldh: TStringField;
    CLZHZLVNcldh1: TStringField;
    CLZHZLVNccq: TStringField;
    CLZHZLVNccq1: TStringField;
    CLZHZLVNsyl: TFloatField;
    CLZHZLVNzsdh: TStringField;
    CLZHZLVNUSERID: TStringField;
    CLZHZLVNUSERDATE: TDateTimeField;
    CLZHZLVNYN: TStringField;
    CLZHZLVNZWPM: TStringField;
    CLZHZLVNYWPM: TStringField;
    CLZHZLVNDWBH: TStringField;
    UpSQL1: TUpdateSQL;
    tmpQuery: TQuery;
    CLZHZLVNzsjc: TStringField;
    CLZHZLVNzsdh_dev: TStringField;
    CLZHZLVNzsjc_dev: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure CLZHZLVNGridEditButtonClick(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure CLZHZLVNGridGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SampleMaterial_CombinatedDev: TSampleMaterial_CombinatedDev;

implementation
  uses main1, SampleOrder1, SampleMaterial_SupplierDev1, FunUnit;
{$R *.dfm}

procedure TSampleMaterial_CombinatedDev.FormDestroy(Sender: TObject);
begin
  SampleMaterial_CombinatedDev:=nil;
end;

procedure TSampleMaterial_CombinatedDev.BB4Click(Sender: TObject);
begin
  with CLZHZLVN do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  //CLZHZLVNGrid.columns[0].ButtonStyle:=cbsEllipsis;
  CLZHZLVNGrid.columns[4].ButtonStyle:=cbsEllipsis;
end;

procedure TSampleMaterial_CombinatedDev.CLZHZLVNGridEditButtonClick(
  Sender: TObject);
begin
  with CLZHZLVNGrid do
  begin
    if Selectedfield.fieldname='zsdh_dev' then
    begin
     if SampleMaterial_SupplierDev=nil then
     begin
       SampleMaterial_SupplierDev:=TSampleMaterial_SupplierDev.Create(self);
       SampleMaterial_SupplierDev.Show;
     end else
     begin
       SampleMaterial_SupplierDev.Show;
     end;
    end;
  end;
end;

procedure TSampleMaterial_CombinatedDev.BB6Click(Sender: TObject);
begin
  with CLZHZLVN do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.enabled:=false;
  CLZHZLVNGrid.columns[0].ButtonStyle:=cbsNone;
  CLZHZLVNGrid.columns[4].ButtonStyle:=cbsNone;
end;

procedure TSampleMaterial_CombinatedDev.BB5Click(Sender: TObject);
var i:integer;
begin

  try
    with CLZHZLVN do
    begin
      CLZHZLVN.first;
      for i:=1 to CLZHZLVN.RecordCount do
      begin
        case updatestatus of
        usinserted:
        begin
        end;
        usmodified:
        begin
           with tmpQuery do
           begin
             Active:=false;
             SQL.Clear;
             SQL.Add('Select cldh1 from CLZHZL_dev where cldh1='''+CLZHZLVN.FieldByName('cldh1').AsString+''' and cldh='''+CLZHZLVN.FieldByName('cldh').AsString+''' ');
             Active:=true;
             if RecordCount>0 then
             begin
               CLZHZLVN.edit;
               CLZHZLVN.FieldByName('userID').Value:=main.edit1.text;
               CLZHZLVN.FieldByName('userdate').Value:=date;
               CLZHZLVN.FieldByName('YN').Value:='1';
               CLZHZLVN.Post;
               UpSQL1.apply(ukmodify);
             end else
             begin
               CLZHZLVN.edit;
               CLZHZLVN.FieldByName('userID').Value:=main.edit1.text;
               CLZHZLVN.FieldByName('userdate').Value:=date;
               CLZHZLVN.FieldByName('YN').Value:='1';
               UpSQL1.apply(ukinsert);
             end;
             Active:=false;
           end;
        end;
        end;
         CLZHZLVN.Next;
      end;//for
  end;//with
  //
  CLZHZLVN.active:=false;
  CLZHZLVN.cachedupdates:=false;
  CLZHZLVN.requestlive:=false;
  CLZHZLVN.active:=true;
  //
  bb5.enabled:=false;
  bb6.enabled:=false;
  CLZHZLVNGrid.columns[4].ButtonStyle:=cbsNone;
  except
    Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
  end;

end;

procedure TSampleMaterial_CombinatedDev.CLZHZLVNGridGetCellParams(
  Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if CLZHZLVN.FieldByName('YN').value='0' then
  begin
    CLZHZLVNGrid.canvas.font.color:=clred;
  end;
end;

procedure TSampleMaterial_CombinatedDev.FormCreate(Sender: TObject);
begin
  CLZHZLVN.Active:=true;
end;

end.
