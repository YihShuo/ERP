unit ScanIn1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,strutils,
  GridsEh, DBGridEh, ComCtrls, DateUtils;

type
  TScanIn = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    CLassCB: TComboBox;
    Edit1: TEdit;
    UploadBtn: TButton;
    UpdateSQL1: TUpdateSQL;
    DS1: TDataSource;
    UpdataQuery: TQuery;
    WorkScanQry: TQuery;
    Splitter1: TSplitter;
    DBGridEh2: TDBGridEh;
    DBGridEh1: TDBGridEh;
    WorkScanQryProNo: TFloatField;
    WorkScanQryCodebar: TStringField;
    WorkScanQryInOut: TStringField;
    WorkScanQryClass: TStringField;
    WorkScanQryWorkID: TStringField;
    WorkScanQryMJBH: TStringField;
    WorkScanQryColorNo: TStringField;
    WorkScanQryDDBH: TStringField;
    WorkScanQrySize: TStringField;
    WorkScanQryQty: TIntegerField;
    WorkScanQryUserid: TStringField;
    WorkScanQryYN: TStringField;
    WorkScanQryenglishname: TStringField;
    Button2: TButton;
    workplansQry: TQuery;
    DS2: TDataSource;
    UpdateSQL2: TUpdateSQL;
    workplansQryWorkID: TStringField;
    workplansQryDDBH: TStringField;
    workplansQrySNO: TIntegerField;
    workplansQrySize: TStringField;
    workplansQryPackage: TIntegerField;
    workplansQryQty: TIntegerField;
    workplansQryOKQTY: TIntegerField;
    workplansQryOutQTY: TIntegerField;
    workplansQryNBarCode: TIntegerField;
    workplansQryPbarcode: TIntegerField;
    workplansQryUserID: TStringField;
    workplansQryCreatDate: TDateTimeField;
    workplansQryUpdateDate: TDateTimeField;
    workplansQryLastUser: TStringField;
    workplansQrycodebar: TStringField;
    workplansQryYN: TStringField;
    workplansQryColorNo: TStringField;
    workplansQryMJBH: TStringField;
    workplansQryenglishname: TStringField;
    workplansQryChinaNmae: TStringField;
    CheckBox1: TCheckBox;
    WorkScanQryUserDate: TDateTimeField;
    WorkDTP: TDateTimePicker;
    Label2: TLabel;
    WorkScanQryscandate: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure UploadBtnClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure WorkDTPChange(Sender: TObject);
    procedure CLassCBChange(Sender: TObject);
    procedure WorkDTPExit(Sender: TObject);
    procedure WorkScanQryQtySetText(Sender: TField; const Text: String);
  private
    workDate:string;
    { Private declarations }
    procedure BarcodeScanIn(Key: Char);
    procedure UploadScan();
    procedure InitUpdateSQL();
    procedure RefreshWorkDate();
  public
    { Public declarations }

  end;

var
  ScanIn: TScanIn;

implementation

uses main1, FunUnit;

{$R *.dfm}


procedure TScanIn.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TScanIn.InitUpdateSQL();
begin
  UpdateSQL1.InsertSQL.Clear;
  UpdateSQL1.InsertSQL.Add('insert into '+main.LIY_DD+'.dbo.workscan (CodeBar, ScanDate, InOut, Class, WorkID, MJBH, ColorNo, DDBH, Size, Qty, UserID, UserDate, YN)');
  UpdateSQL1.InsertSQL.Add('values (:CodeBar, :ScanDate, :InOut, :Class, :WorkID, :MJBH, :ColorNo, :DDBH, :Size, :Qty, :UserID, :UserDate, :YN)');
end;
procedure TScanIn.FormCreate(Sender: TObject);
begin
  with UpdataQuery do
  begin
    active:=false;
    sql.Clear;
    sql.add('select SupervisorID from Busers where UserID='''+main.Edit1.Text+''' ');
    active:=true;
    if FieldByName('SupervisorID').AsString<>'' then
    begin
      DBGridEh1.Columns[4].ReadOnly:=false;
      DBGridEh1.Columns[4].Color:=clyellow;
    end else
    begin
      DBGridEh1.Columns[4].ReadOnly:=true;
      DBGridEh1.Columns[4].Color:=$00DDFFFF;
    end;
    active:=false;
  end;
  with WorkScanQry do
  begin
    active:=false;
    sql.Clear;
    sql.add('select workscan.ProNo,workscan.CodeBar,Convert(varchar,workscan.ScanDate) as scandate,WorkScan.InOut,WorkScan.Class, ');
    sql.add('       workscan.WorkID,workscan.MJBH,workscan.ColorNo,workscan.DDBH,workscan.Size,workscan.Qty,workscan.UserID,workscan.UserDate,workScan.YN ');
    sql.add('       ,colorclass.englishname ');
    sql.add('from '+main.LIY_DD+'.dbo.workscan workscan ');
    sql.add('left join '+main.LIY_DD+'.dbo.colorclass colorclass on colorclass.colorno=workscan.colorno ');
    sql.add('where 1=2 ');
    active:=true;
  end;

  with workplansQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add(' select workplans.*,workplan.ColorNo,workplan.MJBH,colorclass.englishname,colorclass.ChinaNmae ');
    sql.Add(' from '+main.LIY_DD+'.dbo.workplans workplans  ');
    sql.Add(' left join '+main.LIY_DD+'.dbo.workplan  workplan on workplan.WorkID=workplans.WorkID');
    sql.Add(' left join '+main.LIY_DD+'.dbo.colorclass colorclass on workplan.ColorNo=colorclass.ColorNo ');
    sql.Add(' where  workplans.creatdate>GetDate()-360 '); //Qty>OKQty and
    if CheckBox1.Checked=true then
    sql.Add(' and workplans.Qty>workplans.OKQty ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //
  InitUpdateSQL();
  WorkDTP.Date:=Date();
  RefreshWorkDate();
end;

procedure TScanIn.FormDestroy(Sender: TObject);
begin
  ScanIn:=Nil;
end;

procedure TScanIn.UploadBtnClick(Sender: TObject);
begin
  UploadScan();
end;

procedure TScanIn.BarcodeScanIn(Key: Char);
var SCANDate:String;
    BarCode:string;
    Qty:integer;
begin
  if key=#13 then
  begin
    if pos('-',edit1.text)>0 then
    begin
       BarCode:=LeftStr(Edit1.text,(pos('-',edit1.text)-1));
    end else
    begin
       BarCode:=Edit1.Text;
    end;
    if workplansQry.Locate('codebar',BarCode,[]) then
    begin
      if workplansQry.FieldByName('okQty').value<workplansQry.FieldByName('Qty').value then
      begin
          SCANDate:=FormatDatetime('YYYY/MM/DD hh:nn:00',Now());
          //檢查數量是否超過
          if (workplansQry.FieldByName('OkQty').Value+workplansQry.fieldbyname('Package').Value)<=workplansQry.FieldByName('Qty').Value then
            Qty:=workplansQry.fieldbyname('Package').Value
          else
            Qty:=workplansQry.FieldByName('Qty').Value-workplansQry.FieldByName('OkQty').Value;
          //
          if WorkScanQry.Locate('CODEBAR;ScanDate',VarArrayOf([BarCode,SCANDate]),[]) then
          begin
            WorkScanQry.Edit;
            WorkScanQry.FieldByName('Qty').Value:=WorkScanQry.FieldByName('Qty').Value+Qty;
            WorkScanQry.Post;
          end else
          begin
            WorkScanQry.Insert;
            WorkScanQry.fieldbyname('CodeBar').value:=BarCode;
            WorkScanQry.fieldbyname('ScanDate').value:=SCANDate;
            WorkScanQry.fieldbyname('InOut').value:='I';
            WorkScanQry.fieldbyname('Class').value:=inttostr(classcb.itemindex);
            WorkScanQry.fieldbyname('WorkID').value:=workplansQry.fieldbyname('WorkID').Value;
            WorkScanQry.fieldbyname('MJBH').value:=workplansQry.fieldbyname('MJBH').Value;
            WorkScanQry.fieldbyname('ColorNo').value:=workplansQry.fieldbyname('ColorNo').Value;
            WorkScanQry.fieldbyname('DDBH').value:=workplansQry.fieldbyname('DDBH').Value;
            WorkScanQry.fieldbyname('Size').value:=workplansQry.fieldbyname('Size').Value;
            WorkScanQry.fieldbyname('Qty').value:=Qty;
            WorkScanQry.fieldbyname('EnglishName').value:=workplansQry.fieldbyname('EnglishName').Value;
            WorkScanQry.fieldbyname('UserId').value:=main.Edit1.Text;
            WorkScanQry.fieldbyname('UserDate').value:=WorkDate;
            WorkScanQry.fieldbyname('YN').value:=1;
            WorkScanQry.post;
          end;
          //
          workplansQry.Edit;
          workplansQry.FieldByName('okQty').value:=workplansQry.FieldByName('okQty').value+Qty;
          workplansQry.Post;
          Edit1.Text:='';
      end else
      begin
        showmessage('More than Order Qty.'+#39+'超過了數量'+#39+'Don hang du so luong ');
        Edit1.Text:='';
      end;
    end else
    begin
        showmessage('Don hang khong co tua,'+#39+'  xin gap can bo doi tem ma vach');
        Edit1.Text:='';
    end;
  end;
end;
procedure TScanIn.UploadScan();
var i,Qty:integer;
begin
  //
  if WorkScanQry.RecordCount>0 then
  begin
    WorkScanQry.First;
    for i:=0 to WorkScanQry.RecordCount-1 do
    begin
      Qty:=WorkScanQry.FieldByName('Qty').Value;
      //檢查是否大於數量
      with updataquery do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('select WorkID,SNO,DDBH,SIZE,Qty,OKQty ');
        SQL.Add('from  '+main.LIY_DD+'.dbo.workplans  workplans');
        SQL.Add('where Codebar='''+WorkScanQry.FieldByName('CodeBar').AsString+''' ');
        Active:=true;
        if (FieldByName('Qty').Value-FieldByName('OKQty').Value)<Qty then
        begin
            Qty:=FieldByName('Qty').Value-FieldByName('OKQty').Value;
            WorkScanQry.Edit;
            WorkScanQry.FieldByName('Qty').Value:=Qty;
            WorkScanQry.Post;
        end;
        Active:=false;
      end;
      //
      UpdateSQL1.Apply(ukInsert);
      with updataquery do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('update '+main.LIY_DD+'.dbo.workplans set OKQty=OKQty+'+WorkScanQry.FieldByName('Qty').AsString+' ');
        SQL.Add('where Codebar='''+WorkScanQry.FieldByName('CodeBar').AsString+''' ');
        ExecSQL();
      end;
      //
      WorkScanQry.Next;
    end;
    WorkScanQry.Active:=false;
    WorkScanQry.Active:=true;
    workplansQry.Active:=false;
    workplansQry.Active:=true;
  end;
  //
end;
procedure TScanIn.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
   BarcodeScanIn(Key);
end;

procedure TScanIn.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if workplansQry.FieldByName('okQty').value>=workplansQry.FieldByName('Qty').value then
    DBGridEh2.Canvas.Font.Color:=ClBlue;
end;

procedure TScanIn.Button2Click(Sender: TObject);
begin
    WorkScanQry.Active:=false;
    WorkScanQry.Active:=true;
    workplansQry.Active:=false;
    workplansQry.Active:=true;
end;

procedure TScanIn.CheckBox1Click(Sender: TObject);
begin
  with workplansQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add(' select workplans.*,workplan.ColorNo,workplan.MJBH,colorclass.englishname,colorclass.ChinaNmae ');
    sql.Add(' from '+main.LIY_DD+'.dbo.workplans workplans  ');
    sql.Add(' left join '+main.LIY_DD+'.dbo.workplan  workplan on workplan.WorkID=workplans.WorkID');
    sql.Add(' left join '+main.LIY_DD+'.dbo.colorclass colorclass on workplan.ColorNo=colorclass.ColorNo ');
    sql.Add(' where  workplans.creatdate>GetDate()-360 '); //Qty>OKQty and
    if CheckBox1.Checked=true then
    sql.Add(' and workplans.Qty>workplans.OKQty ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

procedure TScanIn.WorkDTPChange(Sender: TObject);
begin
  RefreshWorkDate();
end;

procedure TScanIn.RefreshWorkDate();
begin
  if CLassCB.ItemIndex=0 then
    workDate:=FormatDatetime('YYYY/MM/DD 06:00:00',WorkDTP.Date);
  if CLassCB.ItemIndex=1 then
    workDate:=FormatDatetime('YYYY/MM/DD 14:00:00',WorkDTP.Date);
  if CLassCB.ItemIndex=2 then
    workDate:=FormatDatetime('YYYY/MM/DD 22:00:00',WorkDTP.Date);
end;
procedure TScanIn.CLassCBChange(Sender: TObject);
begin
  RefreshWorkDate();
end;

procedure TScanIn.WorkDTPExit(Sender: TObject);
begin
  if SecondsBetween(WorkDTP.Date,Date())>(24*60*60) then
  begin
    WorkDTP.Date:=now();
  end;
  RefreshWorkDate();
end;

procedure TScanIn.WorkScanQryQtySetText(Sender: TField;
  const Text: String);
var OldQty,Qty:integer;
    BarCode:string;
begin
  OldQty:=Sender.Value;
  Qty:=strtoint(Text);
  BarCode:=WorkScanQry.FieldByName('codebar').AsString;
  if workplansQry.Locate('codebar',BarCode,[]) then
  begin
    if (workplansQry.FieldByName('OkQty').Value-OldQty+Qty)<=workplansQry.FieldByName('Qty').Value then
    begin
      Sender.Value:=Text;
      workplansQry.Edit;
      workplansQry.FieldByName('OkQty').Value:=workplansQry.FieldByName('OkQty').Value-OldQty+Qty;
      workplansQry.Post;
    end else
    begin
      Sender.Value:=workplansQry.FieldByName('Qty').Value-(workplansQry.FieldByName('OkQty').Value-OldQty);
      workplansQry.Edit;
      workplansQry.FieldByName('OkQty').Value:=workplansQry.FieldByName('OkQty').Value-OldQty+(workplansQry.FieldByName('Qty').Value-(workplansQry.FieldByName('OkQty').Value-OldQty));
      workplansQry.Post;
    end;
  end;
end;

end.
