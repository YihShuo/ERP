unit ScanOutRubber1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ExtCtrls, DB, DBTables, strutils;

type
  TScanOutRubber = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    CLassCB: TComboBox;
    UpdataQuery: TQuery;
    DS1: TDataSource;
    Splitter1: TSplitter;
    DBGridEh2: TDBGridEh;
    DBGridEh1: TDBGridEh;
    WorkScanQry: TQuery;
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
    UpdateSQL1: TUpdateSQL;
    workplansQry: TQuery;
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
    DS2: TDataSource;
    UpdateSQL2: TUpdateSQL;
    UploadBtn: TButton;
    Button2: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    WorkScanQryUserDate: TDateTimeField;
    WorkScanQryscandate: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure UploadBtnClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
    procedure WorkScanQryQtySetText(Sender: TField; const Text: String);
  private
    { Private declarations }
    procedure BarcodeScanIn(Key: Char);
    procedure UploadScan();
    procedure InitUpdateSQL();
  public
    { Public declarations }
  end;

var
  ScanOutRubber: TScanOutRubber;

implementation
  uses main1, FunUnit;
{$R *.dfm}


procedure TScanOutRubber.InitUpdateSQL();
begin
  UpdateSQL1.InsertSQL.Clear;
  UpdateSQL1.InsertSQL.Add('insert into '+main.LIY_DD+'.dbo.workscan (CodeBar, ScanDate, InOut, Class, WorkID, MJBH, ColorNo, DDBH, Size, Qty, UserID, UserDate, YN)');
  UpdateSQL1.InsertSQL.Add('values (:CodeBar, :ScanDate, :InOut, :Class, :WorkID, :MJBH, :ColorNo, :DDBH, :Size, :Qty, :UserID, :UserDate, :YN)');
end;

procedure TScanOutRubber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  Action:=CaFree;
end;

procedure TScanOutRubber.FormDestroy(Sender: TObject);
begin
  ScanOutRubber:=nil;
end;

procedure TScanOutRubber.BarcodeScanIn(Key: Char);
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
      if CheckBox2.Checked=true then
      begin
        if (workplansQry.FieldByName('OutQty').value<workplansQry.FieldByName('OkQty').value)  then
        begin
            SCANDate:=FormatDatetime('YYYY/MM/DD hh:nn:00',Now());
            //浪琩计秖琌禬筁
            if (workplansQry.FieldByName('OutQty').Value+workplansQry.fieldbyname('Package').Value)<=workplansQry.FieldByName('OkQty').Value then
              Qty:=workplansQry.fieldbyname('Package').Value
            else
              Qty:=workplansQry.FieldByName('OkQty').Value-workplansQry.FieldByName('OutQty').Value;
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
              WorkScanQry.fieldbyname('InOut').value:='O';
              WorkScanQry.fieldbyname('Class').value:=inttostr(classcb.itemindex);
              WorkScanQry.fieldbyname('WorkID').value:=workplansQry.fieldbyname('WorkID').Value;
              WorkScanQry.fieldbyname('MJBH').value:=workplansQry.fieldbyname('MJBH').Value;
              WorkScanQry.fieldbyname('ColorNo').value:=workplansQry.fieldbyname('ColorNo').Value;
              WorkScanQry.fieldbyname('DDBH').value:=workplansQry.fieldbyname('DDBH').Value;
              WorkScanQry.fieldbyname('Size').value:=workplansQry.fieldbyname('Size').Value;
              WorkScanQry.fieldbyname('Qty').value:=Qty;
              WorkScanQry.fieldbyname('EnglishName').value:=workplansQry.fieldbyname('EnglishName').Value;
              WorkScanQry.fieldbyname('UserId').value:=main.Edit1.Text;
              WorkScanQry.fieldbyname('UserDate').value:=SCANDate;
              WorkScanQry.fieldbyname('YN').value:=1;
              WorkScanQry.post;
            end;
            //
            workplansQry.Edit;
            workplansQry.FieldByName('OutQty').value:=workplansQry.FieldByName('OutQty').value+Qty;
            workplansQry.Post;
            Edit1.Text:='';
        end else
        begin
          showmessage('More than Order Qty.'+#39+'禬筁计秖'+#39+'Don hang du so luong ');
          Edit1.Text:='';
        end;
      end else
      begin
            SCANDate:=FormatDatetime('YYYY/MM/DD hh:nn:00',Now());
            //浪琩计秖琌禬筁
            Qty:=workplansQry.fieldbyname('Package').Value;
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
              WorkScanQry.fieldbyname('InOut').value:='O';
              WorkScanQry.fieldbyname('Class').value:=inttostr(classcb.itemindex);
              WorkScanQry.fieldbyname('WorkID').value:=workplansQry.fieldbyname('WorkID').Value;
              WorkScanQry.fieldbyname('MJBH').value:=workplansQry.fieldbyname('MJBH').Value;
              WorkScanQry.fieldbyname('ColorNo').value:=workplansQry.fieldbyname('ColorNo').Value;
              WorkScanQry.fieldbyname('DDBH').value:=workplansQry.fieldbyname('DDBH').Value;
              WorkScanQry.fieldbyname('Size').value:=workplansQry.fieldbyname('Size').Value;
              WorkScanQry.fieldbyname('Qty').value:=Qty;
              WorkScanQry.fieldbyname('EnglishName').value:=workplansQry.fieldbyname('EnglishName').Value;
              WorkScanQry.fieldbyname('UserId').value:=main.Edit1.Text;
              WorkScanQry.fieldbyname('UserDate').value:=SCANDate;
              WorkScanQry.fieldbyname('YN').value:=1;
              WorkScanQry.post;
            end;
            //
            workplansQry.Edit;
            workplansQry.FieldByName('OutQty').value:=workplansQry.FieldByName('OutQty').value+Qty;
            workplansQry.Post;
            Edit1.Text:='';
      end;
    end else
    begin
        showmessage('Don hang khong co tua,'+#39+'  xin gap can bo doi tem ma vach');
        Edit1.Text:='';
    end;
  end;
end;

procedure TScanOutRubber.UploadScan();
var i,Qty:integer;
begin
  //
  if WorkScanQry.RecordCount>0 then
  begin
    WorkScanQry.First;
    for i:=0 to WorkScanQry.RecordCount-1 do
    begin
      Qty:=WorkScanQry.FieldByName('Qty').Value;
      //浪琩琌计秖
      with updataquery do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('select WorkID,SNO,DDBH,SIZE,OKQty,OutQty ');
        SQL.Add('from  '+main.LIY_DD+'.dbo.workplans  workplans');
        SQL.Add('where Codebar='''+WorkScanQry.FieldByName('CodeBar').AsString+''' ');
        Active:=true;
        if (FieldByName('OKQty').Value-FieldByName('OutQty').Value)<Qty then
        begin
          if CheckBox2.Checked=true then
          begin
            Qty:=FieldByName('OKQty').Value-FieldByName('OutQty').Value;
            WorkScanQry.Edit;
            WorkScanQry.FieldByName('Qty').Value:=Qty;
            WorkScanQry.Post;
          end;
        end;
        Active:=false;
      end;
      //
      UpdateSQL1.Apply(ukInsert);
      with updataquery do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('update '+main.LIY_DD+'.dbo.workplans set OutQty=OutQty+'+inttostr(Qty)+' ');
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

procedure TScanOutRubber.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
   BarcodeScanIn(Key);
end;

procedure TScanOutRubber.FormCreate(Sender: TObject);
begin

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
    sql.Add(' and workplans.OKQty>workplans.OutQty ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //
  InitUpdateSQL();
end;

procedure TScanOutRubber.UploadBtnClick(Sender: TObject);
begin
  UploadScan();
end;

procedure TScanOutRubber.CheckBox1Click(Sender: TObject);
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
    sql.Add(' and workplans.OKQty>workplans.OutQty ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

procedure TScanOutRubber.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if workplansQry.FieldByName('OutQty').value>=workplansQry.FieldByName('OKQty').value then
    DBGridEh2.Canvas.Font.Color:=ClBlue;
end;

procedure TScanOutRubber.Button2Click(Sender: TObject);
begin
    WorkScanQry.Active:=false;
    WorkScanQry.Active:=true;
    workplansQry.Active:=false;
    workplansQry.Active:=true;
end;

procedure TScanOutRubber.WorkScanQryQtySetText(Sender: TField;
  const Text: String);
var OldQty,Qty:integer;
    BarCode:string;
begin
  OldQty:=Sender.Value;
  Qty:=strtoint(Text);
  BarCode:=WorkScanQry.FieldByName('codebar').AsString;
  if workplansQry.Locate('codebar',BarCode,[]) then
  begin
    if CheckBox2.Checked=true then
    begin
      if (workplansQry.FieldByName('OutQty').Value-OldQty+Qty)<=workplansQry.FieldByName('OkQty').Value then
      begin
        Sender.Value:=Text;
        workplansQry.Edit;
        workplansQry.FieldByName('OutQty').Value:=workplansQry.FieldByName('OutQty').Value-OldQty+Qty;
        workplansQry.Post;
      end else
      begin
        Sender.Value:=workplansQry.FieldByName('OkQty').Value-(workplansQry.FieldByName('OutQty').Value-OldQty);
        workplansQry.Edit;
        workplansQry.FieldByName('OutQty').Value:=workplansQry.FieldByName('OutQty').Value-OldQty+(workplansQry.FieldByName('OkQty').Value-(workplansQry.FieldByName('OutQty').Value-OldQty));
        workplansQry.Post;
      end;
    end else
    begin
      Sender.Value:=Text;
    end;
  end;
end;

end.
