unit AdjustDelivery1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Bde.DBTables, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TAdjustDelivery = class(TForm)
    DBGrid1: TDBGridEh;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit1: TEdit;
    DelMas: TQuery;
    UpMas: TUpdateSQL;
    DS3: TDataSource;
    DelDet: TQuery;
    UPDet: TUpdateSQL;
    DS4: TDataSource;
    BDelRec: TQuery;
    Qtemp: TQuery;
    DelMasLLNO: TStringField;
    DelMasGSBH: TStringField;
    DelMasDepID: TStringField;
    DelMasLB: TStringField;
    DelMasMemo: TStringField;
    DelMasUSERID: TStringField;
    DelMasUSERDATE: TDateTimeField;
    DelMasCFMID: TStringField;
    DelMasCFMDATE: TDateTimeField;
    DelMasYN: TStringField;
    DelMasDepName: TStringField;
    DBGrid2: TDBGridEh;
    DelDetLLNO: TStringField;
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
    DelDetSBBH: TStringField;
    DelDetYWPM: TStringField;
    DelDetZWPM: TStringField;
    DelDetDepName: TStringField;
    DelDetDepID_Memo: TStringField;
    DelDetUSERID: TStringField;
    DelDetUSERDATE: TDateTimeField;
    DelDetYN: TStringField;
    DelDetQUCBH: TStringField;
    DelDetLSBH: TStringField;
    DelDetNSX: TStringField;
    DelDetTSBH: TStringField;
    DelDetQty: TFloatField;
    DelDetVWPM: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DelDetAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DBGrid2ColumnShow();
  public
    { Public declarations }
  end;

var
  NDate:TDate;
  AdjustDelivery: TAdjustDelivery;

implementation

{$R *.dfm}

uses main1;

procedure TAdjustDelivery.Button1Click(Sender: TObject);
begin
  with DelMas do
  begin
    Active:=false;
    sql.Clear;
    sql.add('select KCLL.*,BDepartment.DepName ');
    sql.add('from TSCD_KCLL KCLL ');
    sql.add('left join TSCD_BDepartment Bdepartment on KCLL.DepID=BDepartment.ID  ');
    sql.add('where ISNULL(flowflag,'''')<>''X'' and KCLL.USERDATE>='+''''+formatdatetime('yyyy/MM/dd',DTP1.date )+'''');
    sql.add('and KCLL.USERDATE<='+''''+formatdatetime('yyyy/MM/dd',DTP2.date )+'''');
    sql.add('and KCLL.LLNO like '+''''+edit1.Text+'%'+'''');
    sql.add('and Bdepartment.GSBH='+''''+main.edit2.text+'''');
    sql.add('order by KCLL.LLNO  ');
    //funcObj.WriteErrorLog(sql.text);
    active:=true;
  end;
  if DelMas.RecordCount>0 then
  begin
    DelDet.Active:=true;
  end;
end;

procedure TAdjustDelivery.Button2Click(Sender: TObject);
var IsUpdate:boolean;
begin
  with DelMas do
  begin
    if ((fieldbyname('USERDATE').AsString='') or (fieldbyname('USERID').AsString='')
        or (fieldbyname('YN').AsString='') ) then
    begin
      showmessage('SCBH / USERDATE / USERID / YN can not be empty.');
      abort;
    end;
    if fieldbyname('CFMID').AsString='NO' then
    begin
      if fieldbyname('CFMDate').AsString<>'' then
      begin
        showmessage('CFMDate must be null');
        abort;
      end;
    end else
    begin
      if fieldbyname('CFMDate').AsString='' then
      begin
        showmessage('CFMDate can not be empty ');
        abort;
      end;
    end;
  end;
  with DelDet do
  begin
    first;
    while not eof do
    begin
        if fieldbyname('Qty').AsString='' then
        begin
            showmessage('Qty can not be empty.');
            abort;
        end;
        next;
    end;
  end;

 IsUpdate:=false;
 try
   with DelDet do
   begin
      first;
      while not eof do
      begin
          if updatestatus=usmodified then
          begin
            IsUpdate:=true;
            UPdet.apply(ukmodify);
          end;
          next;
      end;
   end;

   with DelMas do
   begin
      if ((state in [dsedit]) or (IsUpdate=true)) then
      begin
        IsUpdate:=true;
        Edit;
        with BDelRec do
        begin
          active:=false;
          sql.Clear;
          sql.add('insert into BDelRec ');
          sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
          sql.add('values ('+''''+'TSCD_KCLLC'+''''+','+''''+DelMas.fieldbyname('LLNO').Value+'''');
          sql.add(','+''''+' '+''''+','+''''+DelMas.fieldbyname('USERID').Value+''''+',');
          sql.add(''''+main.Edit1.Text+''''+',getdate())');
          execsql;
          active:=false;
        end;
        UPMas.Apply(ukmodify);
      end;
      active:=false;
      active:=true;
   end;
  showmessage('Succeed.');
  except
    showmessage('Have wrong.');
  end;
end;

procedure TAdjustDelivery.Button3Click(Sender: TObject);
begin
  DelDet.Active:=false;
  DelMas.Active:=false;
  DelMas.Active:=true;
  DelDet.Active:=true;
end;

procedure TAdjustDelivery.DelDetAfterOpen(DataSet: TDataSet);
begin
  DBGrid2ColumnShow();
end;
procedure TAdjustDelivery.DBGrid2ColumnShow();
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
  with AdjustDelivery.DelMas do
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

procedure TAdjustDelivery.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TAdjustDelivery.FormCreate(Sender: TObject);
begin
  with Qtemp do
  begin
    active:=false;
    sql.clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').value;
    DTP1.Date:=NDate-3;
    DTP2.Date:=NDate;
    active:=false;
  end;
end;

procedure TAdjustDelivery.FormDestroy(Sender: TObject);
begin
  AdjustDelivery:=nil;
end;

end.
