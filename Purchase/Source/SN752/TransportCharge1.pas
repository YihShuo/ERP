unit TransportCharge1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,dateutils,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, Grids, DBGrids, Mask, ComCtrls, GridsEh, DBGridEh,
  Buttons, ExtCtrls, Menus,comobj;

type
  TTransportCharge = class(TForm)
    Panel1: TPanel;
    Query1: TQuery;
    Qry_TransportCharge: TQuery;
    UpMas: TUpdateSQL;
    DS_BOMReceive: TDataSource;
    BDelRec: TQuery;
    qry1: TQuery;
    Pop_Master: TPopupMenu;
    Excel2: TMenuItem;
    Panel4: TPanel;
    Panel6: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    Edit_Bill: TEdit;
    Edit_Supplier: TEdit;
    Button1: TButton;
    DBGrid3: TDBGridEh;
    Qry_TransportChargeTC_NO: TStringField;
    Qry_TransportChargeDate: TDateTimeField;
    Qry_TransportChargeSupplier: TStringField;
    Qry_TransportChargeBill: TStringField;
    Qry_TransportChargeEstimate_Amount: TCurrencyField;
    Qry_TransportChargeActual_Amount: TCurrencyField;
    Qry_TransportChargeTransport: TStringField;
    Qry_TransportChargeCountry: TStringField;
    Qry_TransportChargeRemark: TStringField;
    Qry_TransportChargeUSERDate: TDateTimeField;
    Qry_TransportChargeUSERID: TStringField;
    Qry_TransportChargeYN: TStringField;
    Check: TCheckBox;
    CB_Transport: TComboBox;
    Label10: TLabel;
    CheckBox5: TCheckBox;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Qry_TransportChargePrePaid: TCurrencyField;
    Qry_TransportChargeWeight: TCurrencyField;
    Qry_TransportChargeGSBH: TStringField;
    Panel2: TPanel;
    Memo1: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
    procedure CGSCLSLChange(Sender: TField);
    procedure DBGrid1Columns3NotInList(Sender: TObject; NewText: String;
      var RecheckInList: Boolean);
    procedure DBGrid3Columns5NotInList(Sender: TObject; NewText: String;
      var RecheckInList: Boolean);
    procedure Excel2Click(Sender: TObject);
    procedure DBGrid3Columns4NotInList(Sender: TObject; NewText: String;
      var RecheckInList: Boolean);
    procedure DBGrid3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Qry_TransportChargeAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TransportCharge: TTransportCharge;
  NDate,sdate,edate:TDate;

implementation

uses main1;

{$R *.dfm}

procedure TTransportCharge.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if BB5.enabled  then
  begin
    messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
   action:=Cafree;

end;

procedure TTransportCharge.Button1Click(Sender: TObject);
var y,m:word;
begin


with Qry_TransportCharge do
  begin
    active:=false;
    sql.Clear;
    sql.add('select TC_NO,GSBH ');
    sql.add('       ,Date ');
    sql.add('       ,Supplier ');
    sql.add('       ,Bill ');
    sql.add('       ,Estimate_Amount ');
    sql.add('       ,Actual_Amount ');
    sql.add('       ,Transport ');
    sql.add('       ,Country ');
    sql.add('       ,Remark ');
    sql.add('       ,USERDate ');
    sql.add('       ,USERID ');
    sql.add('       ,YN ');
    sql.add('       ,PrePaid ');
    sql.add('       ,Weight ');
    sql.add('from TransportCharge');
    sql.add('where 1=1 ');
    if Edit_Bill.Text<>'' then
       sql.add('   and Bill like '''+Edit_Bill.Text+'%'+'''');
    if Edit_Supplier.Text<>'' then
       sql.add('   and Supplier like '''+Edit_Supplier.Text+'%'+'''');
    if CB_Transport.Text<>'' then
       sql.add('   and Transport like '''+CB_Transport.Text+'%'+'''');
    if CheckBox5.Checked  then
       begin
         sql.add('and convert(smalldatetime,convert(varchar,TransportCharge.Date,111))  between ');
         sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
       end;
    if Check.Checked then
      begin
        sql.Add('and TransportCharge.USERID='+''''+main.Edit1.Text+'''');
      end;
    sql.Add(' and GSBH='''+main.Edit2.Text+''' ');
    sql.add('order by TransportCharge.Date ');
    active:=true;
  end;
BB2.Enabled:=true;
BB3.Enabled:=true;
BB4.Enabled:=true;

end;


procedure TTransportCharge.BB2Click(Sender: TObject);
begin
with Qry_TransportCharge do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
BB2.Enabled:=false;
BB3.Enabled:=false;
BB4.Enabled:=false;
BB5.Enabled:=true;
BB6.Enabled:=true;
Button1.Enabled:=false;
DBGrid3.columns[1].ButtonStyle:=cbsAuto;
end;

procedure TTransportCharge.FormCreate(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
//  cbx2.ItemIndex := yearof(date) - 2010 ;
//  cbx3.ItemIndex := monthof(date)  ;
  DTP2.Datetime:=Now();
  DTP1.Datetime:=Now()-30;

end;

procedure TTransportCharge.BB3Click(Sender: TObject);
begin
    with Qry_TransportCharge do
      begin
        if fieldbyname('USERID').value=main.edit1.Text then
          begin
            requestlive:=true;
            cachedupdates:=true;
            edit;
            fieldbyname('YN').Value:='0';
          end
          else
            begin
              showmessage('It is not yours,can not delete.');
            end;
      end;

BB5.Enabled:=true;
BB6.Enabled:=true;
BB2.Enabled:=false;
BB3.Enabled:=false;
BB4.Enabled:=false;
Button1.Enabled:=false;
//dbgrid3.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TTransportCharge.BB4Click(Sender: TObject);
begin

 if Qry_TransportCharge.fieldbyname('USERID').value=main.edit1.Text then
   begin
     with Qry_TransportCharge do
       begin
         requestlive:=true;
         cachedupdates:=true;
        edit;
       end;
     BB2.Enabled:=false;
     BB3.Enabled:=false;
     BB4.Enabled:=false;
     BB5.Enabled:=true;
     BB6.Enabled:=true;
     Button1.Enabled:=false;
     DBGrid3.Columns[1].ButtonStyle:=cbsAuto;
   end
   else
     begin
       showmessage('It is not yours,can not modify.');
     end;

end;


procedure TTransportCharge.BB5Click(Sender: TObject);
var y,m,a:string;
i:integer;
begin
with query1 do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('Ndate').Value;
    active:=false;
  end;
if length(m)<2 then
  m:='0'+m;

try
    Qry_TransportCharge.first;
    for i:=1 to Qry_TransportCharge.RecordCount do
      begin
        case Qry_TransportCharge.updatestatus of
          usinserted:
            begin
              if (Qry_TransportCharge.fieldbyname('Date').isnull) then
                begin
                  Qry_TransportCharge.delete;
                end
                else
                  //if (CGMas.fieldbyname('ReceiveDate').AsString=''  )  then
                  //   begin
                  //     showmessage('ReceiveDate can not empty.');
                  //     exit;
                  //   end;
                begin
                     with query1 do    //計算採購單流水號
                       begin
                         active:=false;
                         sql.Clear;
                         sql.Add('select TC_NO from TransportCharge where TC_NO like '+''''+y+m+'%'+'''');
                         sql.add('order by TC_NO');
                         active:=true;
                         if recordcount >0 then
                           begin
                             last;
                             a:=fieldbyname('TC_NO').AsString;
                             a:=copy(a,7,5);
                             a:=inttostr(strtoint(a)+1);
                             while length(a)<5 do
                               begin
                                 a:='0'+a;
                               end;
                           end
                             else
                               begin
                                 a:='00001';
                               end;
                         a :=y+m+a;
                         active:=false;
                       end;
                     Qry_TransportCharge.edit;
                     Qry_TransportCharge.fieldbyname('TC_NO').Value:=a;
                     Qry_TransportCharge.fieldbyname('GSBH').Value:=main.Edit2.Text;
                     Qry_TransportCharge.FieldByName('userID').Value:=main.edit1.text;
                     Qry_TransportCharge.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                     Qry_TransportCharge.FieldByName('YN').Value:='1';
                     upMas.apply(ukinsert);
                end;
            end;
          usmodified:
             begin
              if Qry_TransportCharge.fieldbyname('YN').value='0'then
                begin
//                    with BDelRec do
//                      begin
//                        active:=false;
//                        sql.Clear;
//                        sql.add('insert into BDelRec ');
//                        sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
//                        sql.add('values ('+''''+'CGZL'+''''+','+''''+CGMas.fieldbyname('CGNO').Value+'''');
//                        sql.add(','+''''+' '+''''+','+''''+CGMas.fieldbyname('USERID').Value+''''+',');
//                        sql.add(''''+main.Edit1.Text+''''+',getdate())');
 //                       execsql;
//                        active:=false;
//                      end;
                  upMas.apply(ukdelete);
                end
                else
                  begin
                    if (NDate-Qry_TransportCharge.FieldByName('Date').value)<150  then
                      begin
                        Qry_TransportCharge.edit;
                        Qry_TransportCharge.FieldByName('userID').Value:=main.edit1.text;
                        Qry_TransportCharge.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                        upMas.apply(ukmodify);
                      end
                      else
                        begin
                          showmessage('Date>150, can not modify.');
                        end;
                  end;
             end;
        end;
       Qry_TransportCharge.next;
      end;
Qry_TransportCharge.active:=false;
Qry_TransportCharge.cachedupdates:=false;
Qry_TransportCharge.requestlive:=false;
Qry_TransportCharge.active:=true;
BB2.Enabled:=true;
BB3.Enabled:=true;
BB4.Enabled:=true;
bb5.enabled:=false;
bb6.enabled:=false;
Button1.Enabled:=true;
DBGrid3.columns[1].ButtonStyle:=cbsnone;

except
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end;


end;

procedure TTransportCharge.BB6Click(Sender: TObject);
begin
with Qry_TransportCharge do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
BB2.Enabled:=true;
BB3.Enabled:=true;
BB4.Enabled:=true;  
bb5.enabled:=false;
bb6.enabled:=false;

Button1.Enabled:=true;
dbgrid3.columns[1].ButtonStyle:=cbsnone;
end;

procedure TTransportCharge.BB7Click(Sender: TObject);
begin
close;
end;

procedure TTransportCharge.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if Qry_TransportCharge.FieldByName('YN').value='0' then
  begin
    dbgrid3.canvas.font.color:=clred;
    //dbgrid3.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TTransportCharge.FormDestroy(Sender: TObject);
begin
  TransportCharge:=nil;
end;

procedure TTransportCharge.CGSCLSLChange(Sender: TField);
begin
{
            if not CGS.FieldByName('CLSL').IsNull then
                    begin
                     CGS.Edit;
                     CGS.FieldByName('Qty').value:=CGS.FieldByName('CLSL').value;
                    end
}
end;

procedure TTransportCharge.DBGrid1Columns3NotInList(Sender: TObject;
  NewText: String; var RecheckInList: Boolean);
begin
       showmessage('Pls select Size from list ,can not alter by manually.');
       abort;
end;

procedure TTransportCharge.DBGrid3Columns5NotInList(Sender: TObject;
  NewText: String; var RecheckInList: Boolean);
begin
       showmessage('Pls select Stage from list .');
       abort;
end;

procedure TTransportCharge.Excel2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
 begin
  if  Qry_TransportCharge.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   Qry_TransportCharge.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=Qry_TransportCharge.fields[i].FieldName;
          end;

        Qry_TransportCharge.First;
        j:=2;
        while   not   Qry_TransportCharge.Eof   do
          begin
            for   i:=0   to  Qry_TransportCharge.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=Qry_TransportCharge.Fields[i].Value;
            end;
          Qry_TransportCharge.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
       eclApp.Visible:=True;
       showmessage('Succeed');
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure TTransportCharge.DBGrid3Columns4NotInList(Sender: TObject;
  NewText: String; var RecheckInList: Boolean);
begin
       showmessage('Pls select SEASON from list .');
       abort;
end;

procedure TTransportCharge.DBGrid3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (Qry_TransportCharge.FieldByName('YN').Value='0')  then
    begin
          DBGrid3.canvas.font.color:=clred;
         // dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
    end;
end;

procedure TTransportCharge.Qry_TransportChargeAfterOpen(DataSet: TDataSet);
begin
BB5.Enabled:=false;
BB6.Enabled:=false;
end;

end.
