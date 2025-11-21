unit UsageCopy1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls,
  GridsEh, DBGridEh, jpeg;

type
  TUsageCopy = class(TForm)
    BitBtn1: TBitBtn;
    UpdateQry: TQuery;
    Label4: TLabel;
    EditYPDH: TEdit;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Edit2: TEdit;
    Image1: TImage;
    TempQry: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
      NDate:TDate;
      DelList:TStringlist;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UsageCopy: TUsageCopy;

implementation

uses SampleOrder1,FunUnit, PartNo1, SampleNo1, main1;

{$R *.dfm}

procedure TUsageCopy.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DelList.Free;
  Action:=caFree;
end;

procedure TUsageCopy.FormDestroy(Sender: TObject);
begin
  UsageCopy:=nil;
end;
procedure TUsageCopy.Button1Click(Sender: TObject);
begin
  SampleNo:=TSampleNo.Create(self);
  SampleNo.Show;
end;

procedure TUsageCopy.Button2Click(Sender: TObject);
begin
  if editYPDH.Text='' then
  begin
    showmessage('Pls key in Sample No first');
    abort;
  end;
  PartNo:=TPartNo.Create(self);
  PartNo.Show;
end;

procedure TUsageCopy.FormCreate(Sender: TObject);
begin
    edit2.Text:=SampleOrder.YPZLS.fieldbyname('YPDH').AsString;
    with TempQry do
    begin
      Active:=false;
      Sql.Clear;
      Sql.add('select getdate() as NDate ');
      active:=true;
      NDate:=fieldbyname('NDate').Value;
    end;
end;

procedure TUsageCopy.BitBtn1Click(Sender: TObject);
begin
  if  (EditYPDH.Text='') or (Edit2.Text='') then
  begin
    showmessage('Pls key in Sample No');
    abort;
  end;
  with TempQry do
  begin
    Active:=false;
    sql.Clear;
    sql.Add(' Select * from ypzls ') ;
    sql.Add(' Where ypdh='''+EditYPDH.Text+''' ');
    if  edit1.Text <> '' then
      SQL.Add(' and BWBH='''+ edit1.Text+''' ');
    active:=true;
  end;
  if  TempQry.RecordCount > 0 then
  begin
    with UpdateQry do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add(' Update YPZLS ');
      SQL.Add(' Set clsl=(Select Clsl from ypzls ypzl1 where YPDH='''+EditYPDH.Text+''' and ypzl1.BWBH=ypzls.BWBH ),UserID='''+main.edit1.text+''',UserDate='''+FormatDateTime('YYYY/MM/DD',NDate)+''' ');
      SQL.Add(' Where YPDH='''+edit2.Text+''' ');
      if  edit1.Text <> '' then
        SQL.Add(' and BWBH='''+ edit1.Text+''' ');
      //funcobj.WriteErrorLog(UpdateQry.Text);
      ExecSQL;
      showmessage('Finshed Copy Usage');
      UsageCopy.Close;
    end;
    SampleOrder.YPZLS.Active:=false;
    SampleOrder.YPZLS.Active:=true;
  end else
  begin
    showmessage('Data not valid');
    abort;
  end;
end;

end.
