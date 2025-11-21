unit MassMatMOQ1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, StdCtrls, GridsEh, DBGridEh, Buttons, ExtCtrls,comobj,IniFiles,ShellApi;

type
  TMassMatMOQ = class(TForm)
    Panel1: TPanel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    btnExcel: TBitBtn;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    MatNoEdit: TEdit;
    EngNameEdit: TEdit;
    Button1: TButton;
    Query1: TQuery;
    DS1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    QSearch: TQuery;
    ShowLimitCK: TCheckBox;
    Label4: TLabel;
    ChinesNameEdit: TEdit;
    Label5: TLabel;
    BuyNoEdit: TEdit;
    Label6: TLabel;
    SupplierEdit: TEdit;
    Label20: TLabel;
    LocCB: TComboBox;
    Query1clbh: TStringField;
    Query1ywpm: TStringField;
    Query1zwpm: TStringField;
    Query1dwbh: TStringField;
    Query1ProdLeadTime: TIntegerField;
    Query1Forecast_Leadtime: TIntegerField;
    Query1Memo: TStringField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    Query1GSBH: TStringField;
    chkNoLT: TCheckBox;
    chkLT: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private

    { Private declarations }

  public
    { Public declarations }
  end;

var
  MassMatMOQ: TMassMatMOQ;

implementation

uses main1,fununit;

{$R *.dfm}

procedure TMassMatMOQ.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TMassMatMOQ.FormDestroy(Sender: TObject);
begin
  MassMatMOQ:=nil;
end;

procedure TMassMatMOQ.BB1Click(Sender: TObject);
begin
  Panel2.Visible := true;
end;

procedure TMassMatMOQ.Button1Click(Sender: TObject);
begin

    with query1 do
    begin
      active:=false;
      sql.Clear;
      if ShowLimitCK.Checked=true then
        sql.Add(' select top 100 zlzls2.clbh as clbh,clzl.ywpm,clzl.zwpm,clzl.dwbh,MaterialMassMOQ.ProdLeadTime,Forecast_Leadtime,MaterialMassMOQ.Memo,MaterialMassMOQ.UserID,MaterialMassMOQ.UserDate,MaterialMassMOQ.YN,MaterialMassMOQ.GSBH')
      else
        sql.Add(' select  zlzls2.clbh as clbh,clzl.ywpm,clzl.zwpm,clzl.dwbh,MaterialMassMOQ.ProdLeadTime,Forecast_Leadtime,MaterialMassMOQ.Memo,MaterialMassMOQ.UserID,MaterialMassMOQ.UserDate,MaterialMassMOQ.YN,MaterialMassMOQ.GSBH');
      sql.Add(' from zlzls2 inner join ddzl ');
      sql.Add(' on zlzls2.zlbh=ddzl.ddbh  ');
      sql.Add(' left join clzl on zlzls2.CLBH=clzl.cldh ');
      sql.Add(' left join MaterialMassMOQ on clzl.cldh=MaterialMassMOQ.CLBH and MaterialMassMOQ.GSBH= '''+main.edit2.text+''' ');
      sql.Add(' left join zszl on zlzls2.CSBH=zszl.zsdh ');
      sql.Add(' where zlzls2.ZMLB=''N'' and zlzls2.CLSL<>0 and zlzls2.CLBH not like ''W%'' ');
      sql.Add('   and DDZL.GSBH = '''+main.edit2.text+''' ');
      if MatNoEdit.Text <> '' then
        sql.Add(' and clzl.cldh like '''+MatNoEdit.Text+'%'' ');
      if EngNameEdit.Text <> '' then
        sql.Add(' and clzl.ywpm like ''%'+EngNameEdit.Text+'%'' ');
      if ChinesNameEdit.Text <> '' then
        sql.Add(' and clzl.zwpm like ''%'+ChinesNameEdit.Text+'%'' ');
      if BuynoEdit.Text <> '' then
        sql.Add(' and DDZL.Buyno like '''+BuyNoEdit.Text+'%'' ');
      if SupplierEdit.Text <> '' then
        sql.Add(' and zszl.zsywjc like ''%'+SupplierEdit.Text+'%'' ');
      if LocCB.Text <> '' then
        sql.Add(' and clzl.cqdh='''+LocCB.Text+''' ');
      if chkNoLT.Checked then
        sql.Add(' and (isnull(ProdLeadTime,'''')='''' or isnull(Forecast_Leadtime,'''')='''' )');
      if chkLT.Checked then
        sql.Add(' and (isnull(ProdLeadTime,'''')<>'''' or isnull(Forecast_Leadtime,'''')<>'''' )');
      sql.Add(' group by zlzls2.clbh ,clzl.ywpm,clzl.zwpm,clzl.dwbh,MaterialMassMOQ.ProdLeadTime,Forecast_Leadtime,MaterialMassMOQ.Memo,MaterialMassMOQ.UserID,MaterialMassMOQ.UserDate,MaterialMassMOQ.YN,MaterialMassMOQ.GSBH ');
      sql.Add(' order by zlzls2.clbh ');
      //funcobj.WriteErrorLog(sql.Text);
      active:=true;
    end;

  if query1.RecordCount >0 then
  begin
    BB4.Enabled := true;
    btnExcel.Enabled := true;
  end;
end;

procedure TMassMatMOQ.BB4Click(Sender: TObject);
begin
  with Query1 do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TMassMatMOQ.BB6Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  BB5.Enabled := false;
  BB6.Enabled := false;
end;

procedure TMassMatMOQ.BB5Click(Sender: TObject);
var
  NDate: TDate;
  i: integer;
begin
   //取Server的年月值
  with QSearch do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT GETDATE() AS NDate');
    Active := true;

    NDate := FieldByName('NDate').Value;
    Active := false;
  end;

  try
    Query1.First;
    for i := 1 to Query1.RecordCount do
    begin
      case Query1.UpdateStatus of
        usModified:
        begin
          if (Query1.FieldByName('YN').AsString = '1') then
          begin
             if (NDate-Query1.FieldByName('USERDATE').value)<7  then
             begin
                Query1.Edit;
                Query1.FieldByName('USERID').Value := main.Edit1.text;
                Query1.FieldByName('USERDATE').Value := NDate;
                UpdateSQL1.Apply(ukModify);
             end else
             begin
                showmessage('Date>7, can not modify.');
                abort;
             end;
          end else
          begin
            Query1.Edit;
            Query1.FieldByName('GSBH').Value:= main.Edit2.text;
            Query1.FieldByName('USERID').Value := main.Edit1.Text;
            Query1.FieldByName('USERDATE').Value := NDate;
            Query1.FieldByName('YN').Value := 1;
            UpdateSQL1.Apply(ukInsert);
          end;
        end;
      end;
      Query1.Next;
    end;

    Query1.Active := false;
    Query1.CachedUpdates := false;
    Query1.RequestLive := false;
    Query1.Active := true;
    BB5.Enabled := false;
    BB6.Enabled := false;
  except
    MessageDlg('Have wrong, can not save data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TMassMatMOQ.btnExcelClick(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if query1.Active then
  begin
    if query1.recordcount=0 then
    begin
      showmessage('No record.');
      abort;
    end;
  end else
  begin
    showmessage('No record.');
    abort;
  end;

  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;

  try
    WorkBook:=eclApp.workbooks.Add;
    for i:=0 to DBGridEh1.Columns.Count-1 do
    begin
      eclApp.Cells(1,i+1):=DBGridEh1.Columns[i].Title.Caption;
      eclApp.Cells.Cells.item[1,i+1].font.name := 'Calibri';
      eclApp.Cells.Cells.item[1,i+1].font.size:='10';
    end;
    query1.First;
    j:=2;
    while   not  query1.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for i:=0 to DBGridEh1.Columns.Count-1 do
      begin
         eclApp.Cells(j,i+1):=DBGridEh1.Fields[i].Value;
         eclApp.Cells.Cells.item[j,i+1].font.size:='10';
         eclApp.Cells.Cells.item[j,i+1].font.name := 'Calibri';
      end;
      query1.Next;
      inc(j);
    end;
    //eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;

procedure TMassMatMOQ.FormCreate(Sender: TObject);
var
  myYear, myMonth, myDay : Word;
  i:integer;
begin
  DecodeDate(Date(), myYear, myMonth, myDay);
  BuyNoEdit.Text:=FormatDateTime('YYYYMM',Date());
end;


end.
