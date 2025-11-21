unit ShoeBC1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Spin, DB, DBTables, jpeg, ExtCtrls;

type
  TShoeBC = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    ShoeBSpinEdit: TSpinEdit;
    ShoeCSpinEdit: TSpinEdit;
    Panel1: TPanel;
    BB4: TBitBtn;
    BB5: TBitBtn;
    imgClose: TImage;
    Query1: TQuery;
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure ShoeBSpinEditChange(Sender: TObject);
    procedure ShoeCSpinEditChange(Sender: TObject);
    procedure imgCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    tp: integer;
    pCC: string;
  end;

var
  ShoeBC: TShoeBC;

implementation
uses  main1, FunUnit, QC_BatchInputp;
{$R *.dfm}

procedure TShoeBC.BB4Click(Sender: TObject);
begin
  BB4.Enabled := false;
  if FileExists(ExtractFilePath(Application.ExeName) + '\KeyBoard.exe') = false then
    CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\KeyBoard.exe'), Pchar(ExtractFilePath(Application.ExeName) +
      '\KeyBoard.exe'), false);

  if FileExists(ExtractFilePath(Application.ExeName) + '\KeyBoard.exe') then
  begin
      funcObj.StopAP(ExtractFilePath(Application.ExeName) + '\KeyBoard.exe');
      funcObj.StartAP(ExtractFilePath(Application.ExeName) + '\KeyBoard.exe');
  end;
  BB4.Enabled := true;
  ShoeBSpinEdit.SetFocus;
end;

procedure TShoeBC.BB5Click(Sender: TObject);
var
  shoeB, shoeC: string;
begin
  with Query1 do
  begin
    Active := false;
    sql.Clear;
    sql.Add('select IsNull(shoeB,0) as shoeB,IsNull(ShoeC,0) as shoeC  from WOPR ');
    sql.Add('Where  SCDate='''+formatdatetime('yyyy/MM/dd',QC_BatchInput.WorkDate.Date)+''' ');
    sql.Add('and SJXH ='''+QC_BatchInput.XH_ID.text+''' and DepNo = '''+QC_BatchInput.DepNo.text+''' ');
    sql.Add('and GSBH ='''+main.Edit2.Text+''' and SCBH='''+QC_BatchInput.DDBHCombo.text+''' and GXLB='''+TGXLB+''' ');
    active := true;
  end;
  if Query1.RecordCount>0 then
  begin
    shoeB := inttostr(Query1.fieldbyname('shoeB').Value + ShoeBSpinEdit.Value);
    shoeC := inttostr(Query1.fieldbyname('shoeC').Value + ShoeCSpinEdit.Value);
    with Query1 do
    begin
       active:=false;
       sql.Clear;
       sql.Add('update wopr set shoeB = '+shoeB+', ShoeC = '+ShoeC+' ');
       sql.Add('Where  SCDate='''+formatdatetime('yyyy/MM/dd',QC_BatchInput.WorkDate.Date)+''' ');
       sql.Add('and SJXH ='''+QC_BatchInput.XH_ID.text+''' and DepNo = '''+QC_BatchInput.DepNo.text+''' ');
       sql.Add('and GSBH ='''+main.Edit2.Text+''' and SCBH='''+QC_BatchInput.DDBHCombo.text+''' and GXLB='''+TGXLB+''' ');
       execsql;
       active:=false;
    end;
  end else
  begin
    shoeB := inttostr(ShoeBSpinEdit.Value);
    shoeC := inttostr(ShoeCSpinEdit.Value);
    with Query1 do
    begin
       active:=false;
       sql.Clear;
       sql.Add('INSERT INTO WOPR (SCDate, SJXH, DepNo, GSBH, SCBH, gxlb, CC, qty, ngqty, reqty, shoeB, shoeC, userid, userdate)  ');
       sql.Add('Values('''+formatdatetime('yyyy/MM/dd',QC_BatchInput.WorkDate.Date)+''', ');
       sql.add(' '''+QC_BatchInput.XH_ID.text+''', '''+QC_BatchInput.DepNo.text+''',');
       sql.Add(' '''+main.Edit2.Text+''', '''+QC_BatchInput.DDBHCombo.text+''', '''+TGXLB+''',''NULL'',0,0,0, '+shoeB+', '+shoeC+'');
       sql.Add(', '''+main.Edit1.Text+''', '''+Formatdatetime('YYYY/MM/DD HH:MM:SS',now)+''') ');
       execsql;
       active:=false;
    end;
  end;
  Showmessage('Update OK!');
end;

procedure TShoeBC.ShoeBSpinEditChange(Sender: TObject);
begin
  //if ShoeBSpinEdit.Value < 0 then
   //ShoeBSpinEdit.Value := 0;
end;

procedure TShoeBC.ShoeCSpinEditChange(Sender: TObject);
begin
  //if ShoeCSpinEdit.Value < 0 then
    //ShoeCSpinEdit.Value := 0;
end;

procedure TShoeBC.imgCloseClick(Sender: TObject);
begin
  funcObj.StopAP('KeyBoard.exe');
  CLose;
end;

procedure TShoeBC.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.


