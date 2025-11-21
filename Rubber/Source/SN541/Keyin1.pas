unit Keyin1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh, ComCtrls, DateUtils;

type
  Tkeyin = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    workidcb: TComboBox;
    Query: TButton;
    UpdateBtn: TButton;
    CLassCB: TComboBox;
    tempQry: TQuery;
    UpdataQuery: TQuery;
    DS1: TDataSource;
    workplansedit: TQuery;
    wpsu: TUpdateSQL;
    DBGridEh1: TDBGridEh;
    workplanseditWorkID: TStringField;
    workplanseditDDBH: TStringField;
    workplanseditSNO: TIntegerField;
    workplanseditSize: TStringField;
    workplanseditPackage: TIntegerField;
    workplanseditQty: TIntegerField;
    workplanseditOKQTY: TIntegerField;
    workplanseditOutQTY: TIntegerField;
    workplanseditNBarCode: TIntegerField;
    workplanseditPbarcode: TIntegerField;
    workplanseditUserID: TStringField;
    workplanseditCreatDate: TDateTimeField;
    workplanseditUpdateDate: TDateTimeField;
    workplanseditLastUser: TStringField;
    workplanseditcodebar: TStringField;
    workplanseditYN: TStringField;
    workplanseditColorNo: TStringField;
    workplanseditMJBH: TStringField;
    workplanseditenglishname: TStringField;
    workplanseditChinaNmae: TStringField;
    CheckBox1: TCheckBox;
    workplanseditOKCTS: TIntegerField;
    Label3: TLabel;
    WorkDTP: TDateTimePicker;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure QueryClick(Sender: TObject);
    procedure UpdateBtnClick(Sender: TObject);
    procedure workplanseditOKCTSSetText(Sender: TField;
      const Text: String);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure WorkDTPChange(Sender: TObject);
    procedure CLassCBChange(Sender: TObject);
    procedure WorkDTPExit(Sender: TObject);
  private
    workDate:String;
    { Private declarations }
    procedure InitUpdateSQL();
    procedure RefreshWorkDate();
  public
    { Public declarations }
  end;

var
  keyin: Tkeyin;

implementation

uses main1,FunUnit;

{$R *.dfm}

procedure Tkeyin.InitUpdateSQL();
begin
  wpsu.ModifySQL.Clear;
  wpsu.ModifySQL.Add('update '+main.LIY_DD+'.dbo.workplans');
  wpsu.ModifySQL.Add('set okqty = :okQty');
  wpsu.ModifySQL.Add('where workid = :OLD_workid and DDBH =:OLD_DDBH and SNO = :OLD_SNO and Size = :OLD_Size ');
end;


procedure Tkeyin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  keyin:=nil;
end;

procedure Tkeyin.FormCreate(Sender: TObject);
var i:integer;
begin
  tempQry.Active:=true;
  with tempQry do
  begin
    workidcb.Items.Clear;
    workidCB.Items.Add('ALL');
    for i:=1 to recordcount do
    begin
      workidCB.Items.Add(fieldbyname('workid').asstring);
      next;
    end;
    workidCB.ItemIndex:=0;
  end;
  tempQry.Active:=false;
  InitUpdateSQL();
  WorkDTP.Date:=Date();
  RefreshWorkDate();
end;

procedure Tkeyin.QueryClick(Sender: TObject);
begin

  if classcb.ItemIndex=-1 then
  begin
    showmessage('Pls select Class first.');
    abort;
  end;
  UpdateBtn.Visible:=true;
  with workplansedit do
  begin
    active:=false;
    sql.Clear;
    sql.Add(' select workplans.*,workplan.ColorNo,workplan.MJBH,colorclass.englishname,colorclass.ChinaNmae,0 as OKCTS  ');
    sql.Add(' from '+main.LIY_DD+'.dbo.workplans workplans  ');
    sql.Add(' left join '+main.LIY_DD+'.dbo.workplan  workplan on workplan.WorkID=workplans.WorkID');
    sql.Add(' left join '+main.LIY_DD+'.dbo.colorclass colorclass on workplan.ColorNo=colorclass.ColorNo ');
    sql.Add(' where  workplans.creatdate>GetDate()-360 '); //Qty>OKQty and
    if CheckBox1.Checked=true then
      sql.Add(' and workplans.Qty>workplans.OKQty ');
    if workidcb.Text<>'ALL' then
      sql.Add('and workplans.workid='+''''+workidcb.Text+'''');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;

end;

procedure Tkeyin.UpdateBtnClick(Sender: TObject);
var i,Qty:integer;
begin
  //
  try
    Workplansedit.First;
    for i:=0 to workplansedit.RecordCount-1 do
    begin
      case workplansedit.updatestatus of
        usmodified:
        begin
          Qty:=workplansedit.FieldByName('Package').Value*workplansedit.FieldByName('OKCTS').Value;
          if Qty>0 then
          begin
            workplansedit.Edit;
            workplansedit.FieldByName('OKQty').Value:=workplansedit.FieldByName('OKQty').Value+(workplansedit.FieldByName('Package').Value*workplansedit.FieldByName('OKCTS').Value);
            workplansedit.Post;
            wpsu.apply(ukmodify);
            //
            with UpdataQuery do
            begin
              Active:=false;
              SQL.Clear;
              SQL.Add('Insert into '+main.LIY_DD+'.dbo.WorkScan ');
              SQL.Add('  (CodeBar, ScanDate, InOut, Class, WorkID, MJBH, ColorNo, DDBH, Size, Qty, UserID, UserDate, YN ) ');
              SQL.Add('Values ');
              SQL.Add('  ('''+workplansedit.FieldByName('CodeBar').AsString+''',GetDate(),''I'','+inttostr(classcb.itemindex)+',');
              SQL.Add('  '''+workplansedit.FieldByName('WorkID').AsString+''','''+workplansedit.FieldByName('MJBH').AsString+''',');
              SQL.Add('  '''+workplansedit.FieldByName('ColorNo').AsString+''','''+workplansedit.FieldByName('DDBH').AsString+''',');
              SQL.Add('  '''+workplansedit.FieldByName('Size').AsString+''','+inttostr(Qty)+',');
              SQL.Add('  '''+main.Edit1.Text+''','''+workDate+''',''1'') ');
              //funcObj.WriteErrorLog(sql.Text);
              ExecSQL();
            end;
          end;
        end;
      end;
      workplansedit.Next;
    end;
    Showmessage('Success');
    //
    workplansedit.Active:=false;
    workplansedit.Active:=true;
  except
    on E:Exception do
    begin
      Showmessage(E.Message);
    end;
  end;
end;

procedure Tkeyin.workplanseditOKCTSSetText(Sender: TField;
  const Text: String);
var RemQty,CTS:integer;
begin
  Sender.Value:=Text;
  CTS:=Sender.Value;
  if CTS<0 then
  begin
    CTS:=0;
    Sender.Value:=CTS;
  end;
  RemQty:=workplansedit.FieldByName('Qty').Value-workplansedit.FieldByName('OKQty').Value;
  if CTS*workplansedit.FieldByName('Package').Value>=RemQty then
  begin
     CTS:=(RemQty div workplansedit.FieldByName('Package').Value);
     Sender.Value:=CTS;
  end;
end;

procedure Tkeyin.DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if workplansedit.FieldByName('okQty').value>=workplansedit.FieldByName('Qty').value then
    DBGridEh1.Canvas.Font.Color:=ClBlue;
end;
procedure Tkeyin.RefreshWorkDate();
begin
  if CLassCB.ItemIndex=0 then
    workDate:=FormatDatetime('YYYY/MM/DD 06:00:00',WorkDTP.Date);
  if CLassCB.ItemIndex=1 then
    workDate:=FormatDatetime('YYYY/MM/DD 14:00:00',WorkDTP.Date);
  if CLassCB.ItemIndex=2 then
    workDate:=FormatDatetime('YYYY/MM/DD 22:00:00',WorkDTP.Date);
end;
procedure Tkeyin.WorkDTPChange(Sender: TObject);
begin
  RefreshWorkDate();
end;

procedure Tkeyin.CLassCBChange(Sender: TObject);
begin
  RefreshWorkDate();
end;

procedure Tkeyin.WorkDTPExit(Sender: TObject);
begin
  if SecondsBetween(WorkDTP.Date,Date())>(24*60*60) then
  begin
    WorkDTP.Date:=now();
  end;
  RefreshWorkDate();
end;

end.
