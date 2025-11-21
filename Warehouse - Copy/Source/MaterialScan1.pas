unit MaterialScan1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, Grids, DBGrids, DBTables, Menus;

type
  TMaterialScan = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    BitBtn1: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label5: TLabel;
    Edit3: TEdit;
    KCSM: TQuery;
    KCSMZLBH: TStringField;
    KCSMCLBH: TStringField;
    KCSMQty: TFloatField;
    KCSMXH: TStringField;
    UpKCSM: TUpdateSQL;
    DS1: TDataSource;
    DBGrid1: TDBGrid;
    KCSMDFL: TStringField;
    KCSMMATCODE: TStringField;
    KCSMDepID: TStringField;
    KCSMUSERDATE: TDateTimeField;
    KCSMUSERID: TStringField;
    KCSMYN: TStringField;
    KCSMYWPM: TStringField;
    KCSMDWBH: TStringField;
    KCSMCL: TQuery;
    KCSMCLZLBH: TStringField;
    KCSMCLCLBH: TStringField;
    KCSMCLDFL: TStringField;
    KCSMCLXH: TStringField;
    KCSMCLQty: TCurrencyField;
    KCSMCLMATCODE: TStringField;
    KCSMCLDepID: TStringField;
    KCSMCLUSERDATE: TDateTimeField;
    KCSMCLUSERID: TStringField;
    KCSMCLYN: TStringField;
    KCSMCLYWPM: TStringField;
    KCSMCLDWBH: TStringField;
    KCSMUSERID2: TStringField;
    Qtemp: TQuery;
    KCSMDepName: TStringField;
    KCSMUSERDATE2: TDateTimeField;
    PopupMenu1: TPopupMenu;
    Delete1: TMenuItem;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Delete1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialScan: TMaterialScan;
  NDate:TDate;

implementation

uses MaterialScan_Dep1, main1;

{$R *.dfm}

procedure TMaterialScan.FormDestroy(Sender: TObject);
begin
MaterialScan:=nil;
end;

procedure TMaterialScan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if KCSM.recordcount>0 then
  begin
    if messagedlg('Still have date not upload to server,discard?',mtinformation,[mbYes,mbNo],0)=mrYes then
      begin
        KCSMCL.Active:=false;
        KCSM.Active:=false;
        action:=cafree;
      end
      else
        abort;
  end
  else
    begin      
      KCSM.Active:=false;
      KCSMCL.Active:=false;
      action:=cafree;
    end;
end;

procedure TMaterialScan.Edit1DblClick(Sender: TObject);
begin

MaterialScan_Dep:=TMaterialScan_Dep.create(self);
MaterialScan_Dep.show;
end;

procedure TMaterialScan.FormCreate(Sender: TObject);
begin

with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
KCSMCL.Active:=true;
KCSM.Active:=true;
end;

procedure TMaterialScan.Edit3Enter(Sender: TObject);
begin
if edit1.text='' then
  begin
    showmessage('Pls key in department name first.');
    edit1.SetFocus;
  end;
end;

procedure TMaterialScan.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  begin
    if KCSMCL.locate('MatCode',edit3.Text,[]) then
      begin
        with KCSM do
          begin
            if locate('MatCode',edit3.Text,[]) then
              begin
                windows.beep(1500,500);
                windows.beep(1500,500);
                windows.beep(1500,500);
                edit3.Text:='';
                abort;
              end;
            insert;
            fieldbyname('ZLBH').Value:=KCSMCL.fieldbyname('ZLBH').Value; 
            fieldbyname('CLBH').Value:=KCSMCL.fieldbyname('CLBH').Value; 
            fieldbyname('DFL').Value:=KCSMCL.fieldbyname('DFL').Value;  
            fieldbyname('XH').Value:=KCSMCL.fieldbyname('XH').Value;
            fieldbyname('Qty').Value:=KCSMCL.fieldbyname('Qty').Value;
            fieldbyname('MATCODE').Value:=KCSMCL.fieldbyname('MATCODE').Value; 
            fieldbyname('YWPM').Value:=KCSMCL.fieldbyname('YWPM').Value;
            fieldbyname('DWBH').Value:=KCSMCL.fieldbyname('DWBH').Value;
            fieldbyname('DepID').Value:=edit1.text;
            fieldbyname('DepName').Value:=edit5.text;
            fieldbyname('USERDATE2').Value:=NDate;
            fieldbyname('USERID2').Value:=main.edit1.text;
            fieldbyname('YN').Value:='2';
            post;
            edit4.Text:=inttostr(recordcount);
            edit3.Text:='';
          end;
      end;
  end;
end;

procedure TMaterialScan.Delete1Click(Sender: TObject);
begin
if KCSM.recordcount>0 then
  begin
    KCSM.Delete;
    edit4.Text:=inttostr(KCSM.RecordCount);
  end;

end;

procedure TMaterialScan.BitBtn1Click(Sender: TObject);
begin
edit1dblclick(nil);
end;

procedure TMaterialScan.Button1Click(Sender: TObject);
begin
with KCSM do
  begin
    first;
    while not eof do
      begin
        UpKCSM.Apply(ukinsert);
        next;
      end;
    active:=false  ;
    active:=true;
    showmessage('Succeed');
  end;
end;

procedure TMaterialScan.Button2Click(Sender: TObject);
begin

with KCSM do
  begin
    active:=false;
    active:=true;
  end;
end;

procedure TMaterialScan.Button3Click(Sender: TObject);
begin
close;
end;

end.
