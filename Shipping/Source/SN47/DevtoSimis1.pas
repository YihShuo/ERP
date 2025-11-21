unit DevtoSimis1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, StdCtrls, GridsEh, DBGridEh, Buttons, ExtCtrls,
  ComCtrls, ComObj;

type
  TDevtoSimis = class(TForm)
    PageControl3: TPageControl;
    TabSheet5: TTabSheet;
    Panel7: TPanel;
    BD9: TButton;
    BD7: TBitBtn;
    BD6: TBitBtn;
    BD5: TBitBtn;
    BD4: TBitBtn;
    BD3: TBitBtn;
    BD2: TBitBtn;
    BD1: TBitBtn;
    ImportPanel: TPanel;
    DBGridEh3: TDBGridEh;
    Panel24: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    ponoEdit: TEdit;
    Button3: TButton;
    ypdhEdit: TEdit;
    tmpQry: TQuery;
    ExcelDS_Pur: TDataSource;
    FC_Pur: TQuery;
    upFC_pur: TUpdateSQL;
    opendialog: TOpenDialog;
    FC_PurYPDH: TStringField;
    FC_PurCustomer_Account: TStringField;
    FC_PurInvoiceNo: TStringField;
    FC_PurAWB: TStringField;
    FC_PurUserID: TStringField;
    FC_PurUserDate: TDateTimeField;
    FC_PurYN: TStringField;
    FC_PurEx_factoryDate: TStringField;
    FC_PurETD: TStringField;
    FC_PurSHIP_QTY: TFloatField;
    FC_PurTL_FOB_Amount: TFloatField;
    FC_PurTL_VN_Amount: TFloatField;
    FC_PurSERNO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BD9Click(Sender: TObject);
    procedure BD1Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure DBGridEh3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    PONO1,PONO2,Importflag:string;
  end;

var
  DevtoSimis: TDevtoSimis;
  NDate:TDate;
implementation

uses main1, FunUnit;

{$R *.dfm}

procedure TDevtoSimis.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TDevtoSimis.FormDestroy(Sender: TObject);
begin
  DevtoSimis:=nil;
end;

procedure TDevtoSimis.BD9Click(Sender: TObject);
var
  i,j:integer;
  flag:boolean;
  eclApp, Sheet: Variant;
  s:string;
begin
   with FC_pur do
   begin
       active:=false;
       sql.Clear;
       sql.add('select * from Devtosimis where 1=2');
       active:=true;
   end;
   if opendialog.Execute then
   begin
     try
       eclApp := CreateOleObject('Excel.Application');
       eclApp.workbooks.Open(opendialog.FileName);
       Sheet := eclApp.WorkSheets[1];
     except
       Application.MessageBox('NO Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
       Exit;
     end;

     Importflag := '1';
     BD5.enabled:=True;
     BD6.enabled:=True;
     with FC_pur do
     begin
       cachedupdates:=true;
       requestlive:=true;
       FC_pur.edit;
       FC_pur.first;
     end;
     PONO1 := '';
     PONO2 := '';
     for j:=2 to Sheet.UsedRange.Rows.count do
     begin
       tmpQry.Active := false;
       s := Sheet.Cells[j,7];
       tmpqry.SQL.Text := 'Select count(*) from YPZL where YPDH = '''+s+'''';
       tmpqry.Active := true;
       if tmpqry.RecordCount > 0 then begin
         s := Sheet.Cells[j,1];
         if s <> '' then begin
           s := Sheet.Cells[j,7];
           if PONO1 <> s then begin
             PONO1 := Sheet.Cells[j,7];
             if PONO2 = '' then
               PONO2 := ' '''+ PONO1 +''' '
             else
               PONO2 := PONO2 + ','''+ PONO1 +''' ';
           end;

           s := Sheet.Cells[j,1];

           FC_pur.insert;
           FC_pur.FieldByName('SERNO').AsString:=Sheet.Cells[j,1];   //序號
           FC_pur.FieldByName('YPDH').AsString:=Sheet.Cells[j,7];    //LAIV
           FC_pur.FieldByName('Ex_factoryDate').AsString:=Sheet.Cells[j,5];   //離廠日
           FC_pur.FieldByName('ETD').AsString:=Sheet.Cells[j,5];              //ETD
           FC_pur.FieldByName('Customer_Account').AsString:=Sheet.Cells[j,4];    //國家
           FC_pur.FieldByName('SHIP_QTY').AsString:=Sheet.Cells[j,10];        //雙數
           FC_pur.FieldByName('TL_FOB_Amount').AsString:=Sheet.Cells[j,11];   //單價
           FC_pur.FieldByName('TL_VN_Amount').AsString:=Sheet.Cells[j,12];   //總價
           FC_pur.FieldByName('InvoiceNo').AsString:=Sheet.Cells[j,3];     //客戶發票
           FC_pur.FieldByName('AWB').AsString:=Sheet.Cells[j,2];          //海關號碼

           FC_pur.FieldByName('USERID').AsString:=main.Edit1.text;
           FC_pur.FieldByName('USERdate').value:=NDate;
           FC_pur.FieldByName('YN').AsString:='1';
           FC_pur.Post;
         end;
       end;
     end;
     FC_pur.next;
     eclApp.WorkBooks.Close;
     eclApp.Quit;
   end;
end;

procedure TDevtoSimis.BD1Click(Sender: TObject);
begin
  Panel24.Visible:=true;
end;

procedure TDevtoSimis.BD5Click(Sender: TObject);
var i:integer;
begin
  with FC_Pur do
  begin
    FC_Pur.first;
    while not FC_Pur.eof do
    begin
      case FC_Pur.updatestatus of
        usinserted:
        begin
          upFC_pur.apply(ukinsert);
        end;
        usmodified:
        begin
          if FC_Pur.fieldbyname('YN').Value=0 then
          begin
            upFC_pur.apply(ukdelete);
          end else
          begin
            if FC_Pur.fieldbyname('CLSL').Value>=0 then
            begin
              tmpQry.Active:=false;
              tmpQry.SQL.Clear;
              tmpQry.SQL.Add('Update DevtoSimis Set ShippingDate='+fieldbyname('ShippingDate').Value+',ShippingUserID='''+main.Edit1.Text+'''  ');
              tmpQry.SQL.Add('where YPDH='''+FieldByName('YPDH').Value+''' ');
              tmpQry.ExecSQL;
            end;
          end;
        end;
      end;
      FC_Pur.Next;
    end;
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  BD5.enabled:=false;
  BD6.Enabled:=false;
  if Importflag = '1' then begin
    FC_pur.Active := false;
    FC_pur.SQL.Clear;
    FC_pur.SQL.Add('Select * from DevtoSimis where YPDH in ( ' +PONO2+ ') ');
    FC_pur.Active := true;
  end;
  if FC_pur.RecordCount > 0 then begin
    BD3.Enabled := true;
    BD4.Enabled := true;
  end;
  Importflag := '0';
end;

procedure TDevtoSimis.BD6Click(Sender: TObject);
begin
    with FC_Pur do
    begin
      active:=false;
      cachedupdates:=false;
      requestlive:=false;
      active:=true;
    end;
    BD5.Enabled:=false;
    BD6.Enabled:=false;
end;

procedure TDevtoSimis.FormCreate(Sender: TObject);
begin
  with tmpQry do          //取服務器的年月值
  begin
     active:=false;
     sql.Clear;
     sql.Add('select getdate() as NDate');
     active:=true;
     NDate:=fieldbyname('Ndate').value;
     active:=false;
  end;
  Importflag := '0';
end;

procedure TDevtoSimis.BD3Click(Sender: TObject);
begin
  with FC_Pur do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BD1.Enabled:= false;
  BD4.Enabled:=false;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
end;

procedure TDevtoSimis.Button3Click(Sender: TObject);
begin
  FC_pur.Active := false;
  FC_pur.SQL.Clear;
  FC_pur.SQL.Add('Select * from DevtoSimis where 1 = 1 ');
  if ypdhEdit.Text <> '' then
    FC_pur.SQL.Add('and YPDH = ''' +ypdhEdit.Text+ ''' ');
  if ponoEdit.Text <> '' then
    FC_pur.SQL.Add('and PONO = ''' +ponoEdit.Text+ ''' ');
  FC_pur.Active := true;
  if FC_pur.RecordCount > 0 then begin
    BD3.Enabled := true;
    BD4.Enabled := true;
  end;
end;

procedure TDevtoSimis.BD4Click(Sender: TObject);
begin
  with FC_pur do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
  end;
  BD1.Enabled:= false;
  BD3.Enabled:=false;
  BD4.Enabled:=false;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
end;

procedure TDevtoSimis.DBGridEh3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
    if FC_pur.FieldByName('YN').value='0' then
    begin
      DBGridEh3.canvas.font.color:=clred;
      DBGridEh3.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;
end;

end.
