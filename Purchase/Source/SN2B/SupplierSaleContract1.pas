unit SupplierSaleContract1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, StdCtrls, GridsEh, DBGridEh, Buttons, ExtCtrls,
  ComCtrls,comobj;

type
  TSupplierSaleContract = class(TForm)
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
    Label3: TLabel;
    Label4: TLabel;
    ContractNoEdit: TEdit;
    SuppIDEdit: TEdit;
    Button1: TButton;
    SuppNameEdit: TEdit;
    StyleEdit: TEdit;
    Query1: TQuery;
    DS1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    Qtemp: TQuery;
    DTP1: TDateTimePicker;
    Label6: TLabel;
    DTP2: TDateTimePicker;
    CheckMine: TCheckBox;
    Query1ZSBH: TStringField;
    Query1SaleContractNo: TStringField;
    Query1SignedDate: TDateTimeField;
    Query1ValidDate: TDateTimeField;
    Query1Saler1: TStringField;
    Query1Saler2: TStringField;
    Query1TypeContract: TStringField;
    Query1TermDelivery: TStringField;
    Query1TermPayment: TStringField;
    Query1ContractorIncomeTax: TStringField;
    Query1Warranty: TStringField;
    Query1FileUpload: TStringField;
    Query1Remark: TStringField;
    Query1Addres: TStringField;
    Query1AmexFile: TStringField;
    Query1Phone: TStringField;
    Query1Style: TStringField;
    Query1Style_Chinese: TStringField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    Query1ZSYWJC: TStringField;
    Chk_UserDate: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure DBGridEh1Columns1EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SupplierSaleContract: TSupplierSaleContract;
  NDate:TDate;

implementation

uses main1, ChooseSupplier1;

{$R *.dfm}

procedure TSupplierSaleContract.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TSupplierSaleContract.FormDestroy(Sender: TObject);
begin
  SupplierSaleContract:=nil;
end;

procedure TSupplierSaleContract.FormCreate(Sender: TObject);
begin
  with Qtemp do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  DTP1.Date:=Date-3;
  DTP2.Date:=Date;
end;

procedure TSupplierSaleContract.BB1Click(Sender: TObject);
begin
  Panel2.Visible := true;
end;

procedure TSupplierSaleContract.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add(' select SaleContract.*,ZSZL.ZSYWJC ');
    SQL.Add(' from SaleContract ');
    SQL.Add(' left join ZSZL on ZSZL.ZSDH=SaleContract.ZSBH ');
    SQL.Add(' where 1=1 ');
    if ContractNoEdit.Text<>'' then
      SQL.Add(' and SaleContractNo like '''+ContractNoEdit.Text+'%'' ');
    if SuppIDEdit.Text<>'' then
      SQL.Add(' and ZSBH like '''+SuppIDEdit.Text+'%'' ');
    if SuppNameEdit.Text<>'' then
      SQL.Add(' and ZSZL.ZSYWJC like ''%'+SuppNameEdit.Text+'%'' ');
    if StyleEdit.Text<>'' then
      SQL.Add(' and Style like ''%'+StyleEdit.Text+'%'' ');
    if CheckMine.Checked=true then
      SQL.Add(' and SaleContract.UserID = '''+main.Edit1.Text+''' ');
    if Chk_UserDate.Checked=true then
    begin
      SQL.Add(' and convert(smalldatetime,convert(varchar,SaleContract.UserDate,111))  between ');
      SQL.Add(' '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''' and  '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +''' ');
    end;
    SQL.Add(' order by SaleContractNo,ZSBH ');
    active:=true;
  end;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  btnExcel.Enabled:=true;
end;

procedure TSupplierSaleContract.BB2Click(Sender: TObject);
begin
  with Query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGridEh1.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TSupplierSaleContract.BB3Click(Sender: TObject);
begin
  with Query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGridEh1.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TSupplierSaleContract.BB4Click(Sender: TObject);
begin
  with Query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGridEh1.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TSupplierSaleContract.BB5Click(Sender: TObject);
var i: integer;
begin
  try
    Query1.First;
    for i := 1 to Query1.RecordCount do
    begin
      case Query1.UpdateStatus of
        usInserted:
        begin
          if (Query1.FieldByName('ZSBH').IsNull) then
          begin
            Query1.Delete;
          end else
          begin
            Query1.Edit;
            Query1.FieldByName('UserID').Value := main.Edit1.Text;
            Query1.FieldByName('UserDate').Value := NDate;
            Query1.FieldByName('YN').Value :=1;
            UpdateSQL1.Apply(ukInsert);
          end;
        end;
        //
        usModified:
        begin
          if Query1.FieldByName('UserID').Value = main.Edit1.Text then
          begin
            if Query1.FieldByName('YN').Value='0' then
            begin
              UpdateSQL1.Apply(ukDelete);
            end else
            begin
              Query1.Edit;
              Query1.FieldByName('UserID').Value := main.Edit1.text;
              Query1.FieldByName('UserDate').Value := NDate;
              UpdateSQL1.Apply(ukModify);
            end;
          end else
          begin
            Showmessage('It is not yours, can not delete or modify.');
          end;
        end; //modify
      end;//end case
      Query1.Next;
    end;
    Query1.Active := false;
    Query1.CachedUpdates := false;
    Query1.RequestLive := false;
    Query1.Active := true;
    BB5.Enabled := false;
    BB6.Enabled := false;
    DBGridEh1.columns[1].ButtonStyle:=cbsNone;
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TSupplierSaleContract.BB6Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BB5.Enabled := false;
  BB6.Enabled := false;
  DBGridEh1.columns[1].ButtonStyle:=cbsnone;
end;

procedure TSupplierSaleContract.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TSupplierSaleContract.btnExcelClick(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if Query1.active then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    //
    try
      WorkBook:=eclApp.workbooks.Add;
      for i:=0 to DBGridEh1.fieldcount-1 do
      begin
        eclApp.Cells(1,i+1):=DBGridEh1.fields[i].FieldName;
      end;
      //
      Query1.First;
      j:=2;
      while   not   Query1.Eof   do
        begin
          for   i:=0   to  DBGridEh1.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=DBGridEh1.Fields[i].Value;
          end;
          Query1.Next;
          inc(j);
        end;
     eclapp.columns.autofit;
     showmessage('Succeed');
     eclApp.Visible:=True;
    except
        on  F:Exception  do
          showmessage(F.Message);
    end;
  end;
  //
end;

procedure TSupplierSaleContract.DBGridEh1Columns1EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (ChooseSupplier <> Nil) then
    ChooseSupplier.Close;
  ChooseSupplier := TChooseSupplier.Create(Self);
  ChooseSupplier.ShowModal;
end;


procedure TSupplierSaleContract.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if Query1.FieldByName('YN').value='0' then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

end.
