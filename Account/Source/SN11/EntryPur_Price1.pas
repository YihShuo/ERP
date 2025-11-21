unit EntryPur_Price1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,fununit,
  DBGridEh, math;

type
  TEntryPur_Price = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    EDIT1: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Query1BJNO: TStringField;
    Query1USERDate: TDateTimeField;
    Query1ZSBH: TStringField;
    Query1ZSYWJC: TStringField;
    Query1CLBH: TStringField;
    Query1USPrice: TCurrencyField;
    Query1VNPrice: TCurrencyField;
    Query1DWBH: TStringField;
    Query1YWPM: TStringField;
    CWHLS: TQuery;
    UpdateSQL1: TUpdateSQL;
    tmpQ: TQuery;
    Query1Discount: TFloatField;
    Query1PayVN: TStringField;
    DBGridEh1: TDBGridEh;
    Query1SuppEx: TFloatField;
    Query1SKU: TStringField;
    Query1NotSKU: TStringField;
    Query1XieXing: TStringField;
    Query1SheHao: TStringField;
    Query1CWHL: TCurrencyField;
    Query1Sort: TFloatField;
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure Query1BeforeScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    IsAllowStroll:boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EntryPur_Price: TEntryPur_Price;

implementation

uses EntryPur1, main1, Exchange1;

{$R *.dfm}

procedure TEntryPur_Price.Button1Click(Sender: TObject);
var sdate,edate:string;
    myYear, myMonth, myDay : Word;
begin
  //
  IsAllowStroll:=true;
  DecodeDate(now, myYear, myMonth, myDay);
  sdate:=FormatDateTime('YYYY/MM/DD', EncodeDate(myYear, myMonth, 1));  //¤ëªì¤é´Á
  edate:=FormatDateTime('YYYY/MM/DD', now);
  with CWHLS do
  begin
    active:=false;
    sql.Clear;
    sql.add('select * from CWHLS ');
    sql.add('where HLYEAR+'+''''+ '/'+''''+'+HLMONTH+'+''''+'/'+''''+'+HLDAY between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',strtodate(sdate))+''''+' and '+''''+ formatdatetime('yyyy/MM/dd',strtodate(edate))+'''')   ;
    sql.add('order by HLYEAR,HLMONTH,HLDAY');
    active:=true;
  end;
  TCurrencyField(query1.FieldByName('VNPrice')).DisplayFormat:=EntryPur.VNPrice_DiplayFormat;
  TCurrencyField(query1.FieldByName('CWHL')).DisplayFormat:=EntryPur.VNPrice_DiplayFormat;
  //
  query1.Params.Items[0].AsString := edit1.text;
  query1.Params.Items[1].AsString := edit1.text;
  query1.Params.Items[2].AsString :=main.edit2.text;
  query1.Params.Items[3].AsString := edit1.text;
  query1.Params.Items[4].AsString :=EntryPur.EnDet.fieldbyname('CGBH').AsString;
  query1.Params.Items[5].AsString := main.edit2.text;
  query1.active:=true;
  IsAllowStroll:=false;
end;

procedure TEntryPur_Price.FormDestroy(Sender: TObject);
begin
  EntryPur_Price:=nil;
end;

procedure TEntryPur_Price.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TEntryPur_Price.Query1AfterOpen(DataSet: TDataSet);
var y1,m1,d1:string;
    y,m,d:word;
begin
  if Query1.RecordCount>0 then
  begin
    with Query1 do
    begin      
      decodedate(now,y,m,d);
       if length(inttostr(m))=1 then
        m1:='0'+inttostr(m)
       else
        m1:=inttostr(m);
       y1:=inttostr(y);
       d1:='0'+inttostr(1);
       if CWHLS.locate('HLYEAR;HLMONTH;HLDAY',vararrayof([y1,m1,d1]),[]) then
       begin
          while not eof do
          begin
               if (fieldbyname('CWHL').Value=0) then
                begin
                  edit;
                  fieldbyname('CWHL').value:=CWHLS.FieldByName('CWHL').value   ;
                  post;
                end;
              next;
          end;
          first;
       end;
    end;
  end; 

end;
procedure TEntryPur_Price.DBGrid1EditButtonClick(Sender: TObject);
begin
  if (DBGridEh1.SelectedField.FieldName='CWHL') then
  begin
    Exchange:=TExchange.create(self);
    Exchange.Button1.Click;
    Exchange.ShowModal();
    Exchange.Free;
  end;
end;

procedure TEntryPur_Price.DBGridEh1EditButtonClick(Sender: TObject);
begin
  if (DBGridEh1.SelectedField.FieldName='CWHL') then
  begin
    Exchange:=TExchange.create(self);
    Exchange.Button1.Click;
    Exchange.ShowModal();
    Exchange.Free;
  end;
end;

Function ERPTrunc(value:double;demical:integer):double;
var valueF:double;
    valueFStr:String;
begin
  valueF:=value*power(10,-1*demical)+0.5;
  valueFStr := FloatToStr(valueF);
  IF Pos('.', valueFStr) > 0 Then  valueF:=strtofloat(copy(valueFStr, 1, Pos('.', valueFStr) - 1));
  result:=valueF/power(10,-1*demical);
end;

Function ERPTrunc_Down(FloatNum: Double; demical: integer): Double;
Var
   ls_FloatNumber: String;
Begin
   ls_FloatNumber := FloatToStr(FloatNum);
   IF Pos('.', ls_FloatNumber) > 0 Then
        Result := StrToFloat
          (copy(ls_FloatNumber, 1, Pos('.', ls_FloatNumber) - 1) + '.' + copy
               (ls_FloatNumber, Pos('.', ls_FloatNumber) + 1, demical))
   Else
        Result := FloatNum;
End;

//
procedure TEntryPur_Price.DBGridEh1DblClick(Sender: TObject);
var i,CWHL:integer;
    CLBH:string;
begin

    if (not query1.Active) then
    begin
      abort;
    end;
    if (Query1.recordcount<1) then
    begin
      abort;
    end;
    If (Query1.FieldByName('Sort').Value=1) then
    begin
      with EntryPur.EnDet do
      begin
        CWHL:=query1.fieldbyname('CWHL').value;
        if ((query1.fieldbyname('SuppEx').AsString<>'') and (query1.fieldbyname('SuppEx').AsString<>'0')) then  CWHL:=query1.fieldbyname('SuppEx').value;
        for i:=0 to RecordCount-1 do
        begin
          edit;
          if FieldByName('CLBH').Value=Edit1.Text then
          begin
            if ((Query1.FieldByName('SKU').AsString=fieldbyname('Article').AsString))
               or ((Pos(fieldbyname('Article').AsString,Query1.FieldByName('NotSKU').AsString)=0)and not(Query1.FieldByName('NotSKU').IsNull))
               or ((Query1.FieldByName('SKU').AsString<>fieldbyname('Article').AsString) and (Query1.FieldByName('NotSKU').IsNull) and (Query1.FieldByName('XieXing').AsString='ZZZZZZZZ') and (Query1.FieldByName('SheHao').AsString='ZZZZZ')) then
            begin
              fieldbyname('USACC').value:=null;
              fieldbyname('USPrice').value:=null;
              fieldbyname('VNACC').value:=null;
              fieldbyname('VNPrice').value:=null;
              if query1.FieldByName('PayVN').Value=1 then
              begin
                if query1.fieldbyname('USprice').IsNull then
                begin
                  Showmessage('USD is null, khong the tinh toan VND');
                  abort;
                end;
                if (query1.FieldByName('Discount').Value<>1)   then
                begin
                  fieldbyname('VNPrice').value:=ERPTrunc(query1.fieldbyname('USprice').value*CWHL*query1.FieldByName('Discount').Value,-EntryPur.VNPrice_Decimal);
                end else
                begin
                  fieldbyname('VNPrice').value:=ERPTrunc(query1.fieldbyname('USprice').value*CWHL,-EntryPur.VNPrice_Decimal);
                end;
              end else
              begin
                if (query1.FieldByName('Discount').Value<>1)  then
                begin
                 if not query1.FieldByName('USPrice').IsNull then
                 begin
                  fieldbyname('USPrice').value:= query1.fieldbyname('USPrice').value*query1.FieldByName('Discount').Value;
                 end; 
                 if not query1.FieldByName('VNPrice').IsNull then
                 begin
                  fieldbyname('VNPrice').value:=ERPTrunc_Down(query1.fieldbyname('VNPrice').value*query1.FieldByName('Discount').Value,EntryPur.VNPrice_Decimal);
                 end; 
                end else
                begin
                  fieldbyname('USPrice').value:=query1.fieldbyname('USPrice').value;
                  fieldbyname('VNPrice').value:=query1.fieldbyname('VNPrice').value;
                end;
              end;
            end;
          end;
          //
          if not FieldByName('USPrice').IsNull then
            FieldByName('USACC').value:=trunc(FieldByName('USPrice').value*FieldByName('Qty').value*100+0.5)/100 ;
          if not FieldByName('VNPrice').IsNull then
            FieldByName('VNACC').value:=ERPTrunc(FieldByName('VNPrice').value*FieldByName('Qty').value,-EntryPur.VNPrice_Decimal) ;
          Next;
        end;
        CLBH:=Edit1.Text;
        locate('CLBH',CLBH,[]);
      end;
      close;
    end else
    begin
      showmessage ('Vui long chon bao gia moi nhat');
    end;
end;

procedure TEntryPur_Price.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    DBGridEh1DblClick(nil);
end;

procedure TEntryPur_Price.Query1BeforeScroll(DataSet: TDataSet);
begin
  //if IsAllowStroll=false then abort;
end;

procedure TEntryPur_Price.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

procedure TEntryPur_Price.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  //
  if Query1.FieldByName('Sort').AsString<>'1' then
  begin
     DBGridEh1.canvas.Brush.Color:=clBtnFace;
     DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
end;

end.
