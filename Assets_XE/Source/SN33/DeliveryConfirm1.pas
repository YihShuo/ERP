unit DeliveryConfirm1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Bde.DBTables, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TDeliveryConfirm = class(TForm)
    Splitter1: TSplitter;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit1: TEdit;
    DBGrid2: TDBGridEh;
    DBGrid1: TDBGridEh;
    Qtemp: TQuery;
    DelMas: TQuery;
    DelMasLLNO: TStringField;
    DelMasDepID: TStringField;
    DelMasLB: TStringField;
    DelMasUSERID: TStringField;
    DelMasUSERDATE: TDateTimeField;
    DelMasCFMID: TStringField;
    DelMasCFMDATE: TDateTimeField;
    DelMasYN: TStringField;
    DelMasDepName: TStringField;
    DS1: TDataSource;
    UpMas: TUpdateSQL;
    UPDet: TUpdateSQL;
    DelDet: TQuery;
    DelDetTSBH: TStringField;
    DelDetTSID: TStringField;
    DelDetPARAMENT1: TStringField;
    DelDetPARAMENT2: TStringField;
    DelDetPARAMENT3: TStringField;
    DelDetPARAMENT4: TStringField;
    DelDetPARAMENT5: TStringField;
    DelDetPARAMENT6: TStringField;
    DelDetVALUE1: TStringField;
    DelDetVALUE2: TStringField;
    DelDetVALUE3: TStringField;
    DelDetVALUE4: TStringField;
    DelDetVALUE5: TStringField;
    DelDetVALUE6: TStringField;
    DelDetCOLUMN1: TStringField;
    DelDetCOLUMN2: TStringField;
    DelDetCOLUMN3: TStringField;
    DelDetCOLUMN4: TStringField;
    DelDetCOLUMN5: TStringField;
    DelDetCOLUMN6: TStringField;
    DelDetLLNO: TStringField;
    DelDetSBBH: TStringField;
    DelDetYWPM: TStringField;
    DelDetZWPM: TStringField;
    DelDetDepName: TStringField;
    DelDetDepID_Memo: TStringField;
    DelDetQUCBH: TStringField;
    DelDetLSBH: TStringField;
    DelDetNSX: TStringField;
    DelDetUSERID: TStringField;
    DelDetUSERDATE: TDateTimeField;
    DelDetYN: TStringField;
    DelDetQty: TFloatField;
    DS2: TDataSource;
    TSCD: TQuery;
    UpdateSQL1: TUpdateSQL;
    Button4: TButton;
    DelDetVWPM: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DelDetAfterOpen(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    procedure DBGrid2ColumnShow();
  public
    { Public declarations }
  end;

var
  DeliveryConfirm: TDeliveryConfirm;
  NDate:TDate;

implementation

{$R *.dfm}

uses main1,FunUnit;



procedure TDeliveryConfirm.Button1Click(Sender: TObject);
begin
  with DelMas do
  begin
    DelDet.Active:=false;
    TSCD.Active:=false;
    Active:=false;
    sql.Clear;
    sql.add('select TSCD_KCLL.*,BDepartment.DepName ');
    sql.add('from TSCD_KCLL ');
    sql.add('left join TSCD_BDepartment BDepartment on TSCD_KCLL.DepID=BDepartment.ID  ');
    sql.add('where TSCD_KCLL.CFMID<>'+''''+'NO'+''' ');
    sql.add('and TSCD_KCLL.YN<>'+''''+'5'+'''');
    sql.add('and convert(smalldatetime,convert(varchar,TSCD_KCLL.USERDATE,111)) between'+''''+formatdatetime('yyyy/MM/dd',DTP1.date )+'''');
    sql.add('and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date )+'''');
    sql.add('and TSCD_KCLL.LLNO like '+''''+edit1.Text+'%'+'''');
    sql.add('and BDepartment.GSBH='+''''+main.edit2.text+'''');
    sql.add('order by TSCD_KCLL.LLNO  ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  if delmas.RecordCount>0 then
  begin
    DelDet.Active:=true;
  end;
end;

procedure TDeliveryConfirm.DelDetAfterOpen(DataSet: TDataSet);
begin
  DBGrid2ColumnShow();
end;
procedure TDeliveryConfirm.Button2Click(Sender: TObject);
begin
  try
    with DelDet do
    begin
      first;
      while not eof do
      begin
          if updatestatus=usmodified then
          begin
              edit;
              fieldbyname('YN').Value:= '5';
              UPdet.apply(ukmodify);
          end;
          next;
      end;
    end;
    with DelMas do
    begin
      edit;
      fieldbyname('YN').Value:='5';
      UPMas.Apply(ukmodify);
      active:=false;
      active:=true;
    end;

    showmessage('Succeed.');
  except
    showmessage('Have wrong.');
  end;
end;

procedure TDeliveryConfirm.Button3Click(Sender: TObject);
begin
  DelDet.Active:=false;
  DelMas.Active:=false;
  DelMas.Active:=true;
  DelDet.Active:=true;
end;

procedure TDeliveryConfirm.Button4Click(Sender: TObject);
begin
  try
    with Qtemp do
    begin
        active:=false;
        sql.Clear;
        sql.add('insert into BDelRec ');
        sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
        sql.add('values ('+''''+'TSCD_KCLLRet'+''''+','+''''+DelMas.fieldbyname('LLNO').Value+'''');
        sql.add(','+''''+' '+''''+','+''''+DelMas.fieldbyname('USERID').Value+''''+',');
        sql.add(''''+main.Edit1.Text+''''+',getdate())');
        execsql;
        active:=false;
    end;
    //
    with DelMas do
    begin
      edit;
      fieldbyname('YN').Value:='1';
      fieldbyname('CFMID').Value:='NO';
      UPMas.Apply(ukmodify);
      active:=false;
      active:=true;
    end;
    showmessage('Succeed.');
  except
    on E:Exception do
    showmessage('Have wrong:'+E.Message);
  end;
end;

procedure TDeliveryConfirm.DBGrid2ColumnShow();
var i:integer;
begin
  //
  for i:=5 to 22 do
  begin
    DBGrid2.Columns[i].Visible:=false;
    DBGrid2.Columns[i].ReadOnly:=true;
    DBGrid2.Columns[i].PickList.Clear;
    DBGrid2.Columns[13].Width:=115;
  end;
  //
  with DeliveryConfirm.DelMas do
  begin
    if DelMas.fieldbyname('LB').AsString ='BBBBBBBBBB' then  //Bao Phe
    begin
      DBGrid2.Columns[7].Visible:=true;
      DBGrid2.columns[7].ButtonStyle:=cbsnone;
      DBGrid2.Columns[7].Title.Caption:='報廢|Bo Phe';
      //
      DBGrid2.Columns[24].Title.Caption:='位置|Vi tri cu';
    end else
    if DelMas.fieldbyname('LB').AsString ='LLLLLLLLLL' then   //Chuyen vi tri
    begin
      DBGrid2.Columns[7].Visible:=true;
      DBGrid2.Columns[7].Title.Caption:='部門|Don vi';
      DBGrid2.Columns[9].Visible:=true;
      DBGrid2.Columns[9].Title.Caption:='備註|Ghi chu';
      //
      DBGrid2.Columns[24].Title.Caption:='位置|Vi tri cu';
    end else
    if DelMas.fieldbyname('LB').AsString ='MMMMMMMMMM' then  //Cho Muon
    begin
      DBGrid2.Columns[7].Visible:=true;
      DBGrid2.Columns[7].Title.Caption:='廠別|Xuong/Don vi';
      DBGrid2.Columns[9].Visible:=true;
      DBGrid2.Columns[9].Title.Caption:='起始日|Ngay Bat Dau';
      DBGrid2.Columns[12].Visible:=true;
      DBGrid2.Columns[12].Title.Caption:='結束日|Ngay Ket Thuc';
      DBGrid2.Columns[15].Visible:=true;
      DBGrid2.Columns[15].Title.Caption:='備註|Ghi chu';
      DBGrid2.Columns[22].Visible:=true;
      DBGrid2.Columns[22].Title.Caption:='聯絡人|nguoi lien lac';
      //
      DBGrid2.Columns[24].Title.Caption:='位置|Vi tri cu';
    end;
    if DelMas.fieldbyname('LB').AsString ='SSSSSSSSSS' then  //Chuyen vi tri
    begin
      DBGrid2.Columns[7].Visible:=true;
      DBGrid2.Columns[7].Title.Caption:='新位置|Vi chi moi';
      DBGrid2.Columns[9].Visible:=true;
      DBGrid2.Columns[9].Title.Caption:='備註|Ghi chu';
      //
      DBGrid2.Columns[24].Title.Caption:='位置|Vi tri cu';
    end;
    if DelMas.fieldbyname('LB').AsString ='RRRRRRRRRR' then  //tra ve ton kho
    begin
      DBGrid2.Columns[7].Visible:=true;
      DBGrid2.Columns[7].Title.Caption:='倉庫|ton kho';
      DBGrid2.columns[9].Visible:=true;
      DBGrid2.Columns[9].Title.Caption:='備註|Ghi chu';
      DBGrid2.Columns[13].Visible:=true;
      DBGrid2.Columns[13].Title.Caption:='歸還入庫日|Ngay Hoan Tra Thuc Te';
      //
      DBGrid2.Columns[24].Title.Caption:='位置|Vi tri cu';
    end;
    if DelMas.fieldbyname('LB').AsString ='DDDDDDDDDD' then  //tra ve ton kho
    begin
      DBGrid2.Columns[7].Visible:=true;
      DBGrid2.Columns[7].Title.Caption:='故障原因|Nguyen do';
      //工務輸入報修
      DBGrid2.Columns[10].Visible:=true;
      DBGrid2.Columns[10].ReadOnly:=false;
      DBGrid2.Columns[10].Title.Caption:='送廠內外|ngoai ra';
      DBGrid2.Columns[10].PickList.add('1');
      DBGrid2.Columns[10].PickList.add('2');
      DBGrid2.Columns[13].Visible:=true;
      DBGrid2.Columns[13].ReadOnly:=false;
      DBGrid2.Columns[13].Title.Caption:='維修處理|ket qua';
      DBGrid2.Columns[13].Width:=200;
      //
      DBGrid2.Columns[24].Title.Caption:='位置|Vi tri cu';
    end;

  end;
  //
end;
procedure TDeliveryConfirm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TDeliveryConfirm.FormCreate(Sender: TObject);
var i: integer;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    Ndate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  DTP1.Date:=Ndate-3;
  DTP2.Date:=Ndate;
end;

procedure TDeliveryConfirm.FormDestroy(Sender: TObject);
begin
  DeliveryConfirm:=nil;
end;

end.
