unit InnerBoxScanTick1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, DBTables, iniFiles;

type
  TInnerBoxScanTick = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    DepNMEdit: TEdit;
    Label1: TLabel;
    Label4: TLabel;
    QtyLabel: TLabel;
    Qtemp: TQuery;
    DepNo: TQuery;
    DepNoID: TStringField;
    DepNoGSBH: TStringField;
    DepNoDepName: TStringField;
    DepNoDepMemo: TStringField;
    DepNoGXLB: TStringField;
    InfoLabel: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DepNMEditDblClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure ReadSetting();

  public
    DepID:String;
    { Public declarations }
    procedure InitSMZLQty();
  end;

var
  InnerBoxScanTick: TInnerBoxScanTick;

implementation
  uses main1, InnerBoxScanTick_Dep1, FunUnit;
{$R *.dfm}

//
procedure TInnerBoxScanTick.ReadSetting();
var MyIni :Tinifile;
    DiskNM:string;
begin
  DiskNM:='';
  if DirectoryExists('D:\') and (DiskNM='') then DiskNM:='D';
  if DirectoryExists('E:\') and (DiskNM='') then DiskNM:='E';
  if DiskNM<>'' then
  begin
    if FileExists(DiskNM+':\ERP_Temp\ERP_Setting.ini')=true then
    begin
      try
        MyIni := Tinifile.Create(DiskNM+':\ERP_Temp\ERP_Setting.ini');
        DepID:=MyIni.ReadString('Plan_SN722','DepID','');
        //±a¤JDepNO
        DepNo.active:=true;
        if DepNo.Locate('ID',copy(DepID,0,10),[]) then
        begin
          DepNMEdit.Text:=DepNo.fieldbyname('DepName').Value;
          Edit1.text:='';
        end;
        //
      finally
        MyIni.Free;
      end;
    end;
  end;
end;

procedure TInnerBoxScanTick.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TInnerBoxScanTick.FormDestroy(Sender: TObject);
begin
  InnerBoxScanTick:=nil;
end;

procedure TInnerBoxScanTick.DepNMEditDblClick(Sender: TObject);
begin
  InnerBoxScanTick_Dep := TInnerBoxScanTick_Dep.Create(self);
  InnerBoxScanTick_Dep.Show;
end;

procedure TInnerBoxScanTick.InitSMZLQty();
begin
  //
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select IsNull(Sum(Qty),0) as Qty ');
    SQL.Add('from LIY_TYXUAN.dbo.SMZL_TX SMZL_TX');
    SQL.Add('where DepNO='''+DepID+''' ');
    SQL.Add(' and Convert(smalldatetime,convert(varchar,SMZL_TX.ScanDate,111)) ='''+FormatDateTime('YYYY/MM/DD',Date())+''' ');
    Active:=true;
    if RecordCount>0 then
    QtyLabel.Caption:=FieldByName('Qty').AsString;
    Active:=false;
  end;
  //
end;
procedure TInnerBoxScanTick.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    try
      if ((Edit1.Text<>'') and (DepID<>'')) then
      begin
        with Qtemp do
        begin
         Active:=false;
         SQL.Clear;
         SQL.Add('Insert into LIY_TYXUAN.dbo.SMZL_TX ');
         SQL.Add('  (InBoxBar, Qty, DepNo, ScanDate, USERID, USERDATE, YN) ');
         SQL.Add('Values ');
         SQL.Add('  ('''+Edit1.Text+''',1,'''+DepID+''',GetDate(),'''+main.Edit1.Text+''',GetDate(),''1'') ');
         ExecSQL();
        end;
        Edit1.Text:='';
        Edit1.SetFocus();
        QtyLabel.Caption:=inttostr(strtoint(QtyLabel.Caption)+1);
      end else
      begin
        windows.beep(1500,500);
        windows.beep(1500,500);
        windows.beep(1500,500);
        Edit1.SetFocus();
        InfoLabel.Caption:='Barcode or DepID can''t empty';
      end;
      //
    except
      on E:Exception do
      begin
        windows.beep(1500,500);
        windows.beep(1500,500);
        windows.beep(1500,500);
        Edit1.Text:='';
        Edit1.SetFocus();
        funcObj.WriteErrorLog(E.Message);
      end;
    end;
  end;
end;

procedure TInnerBoxScanTick.FormCreate(Sender: TObject);
begin
  ReadSetting();
  InitSMZLQty();
  
end;

procedure TInnerBoxScanTick.FormShow(Sender: TObject);
begin
  Edit1.SetFocus();
end;

end.
