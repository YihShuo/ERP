unit ExtraPur_BJ1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBTables, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh ,IniFiles,math;

type
  TExtraPur_BJ = class(TForm)
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
    Query1DWBH: TStringField;
    Query1YWPM: TStringField;
    Button2: TButton;
    DBGridEh1: TDBGridEh;
    Query1VNPrice: TCurrencyField;
    Query1Discount: TFloatField;
    Query1PayVN: TStringField;
    Query1CWHL: TCurrencyField;
    Query1SuppEx: TFloatField;
    CWHLS: TQuery;
    UpdateSQL1: TUpdateSQL;
    Query1Sort: TFloatField;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
  end;

var
  ExtraPur_BJ: TExtraPur_BJ;

implementation

uses ExtraPur1, Quotation1, main1, ExchExtra1;

{$R *.dfm}

procedure TExtraPur_BJ.Button1Click(Sender: TObject);
var sdate,edate:string;
    myYear, myMonth, myDay : Word;
begin
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
  TCurrencyField(query1.FieldByName('VNPrice')).DisplayFormat:=ExtraPur.VNPrice_DiplayFormat;
  TCurrencyField(query1.FieldByName('CWHL')).DisplayFormat:=ExtraPur.VNPrice_DiplayFormat;

  query1.Params.Items[0].AsString :=edit1.Text;
  query1.Params.Items[1].AsString :=main.edit2.text;
  query1.active:=true;
end;

procedure TExtraPur_BJ.Button2Click(Sender: TObject);
begin
  Quotation:=TQuotation.create(self);
  Quotation.show;
  close;
end;

procedure TExtraPur_BJ.FormDestroy(Sender: TObject);
begin
  ExtraPur_BJ:=nil;
end;

procedure TExtraPur_BJ.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//action:=Cafree;
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


procedure TExtraPur_BJ.DBGridEh1DblClick(Sender: TObject);
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
  if (Query1.FieldByName('Sort').Value=1) then
  begin
    with ExtraPur.JGDet do
    begin
      CWHL:=query1.fieldbyname('CWHL').value;
      if ((query1.fieldbyname('SuppEx').AsString<>'') and (query1.fieldbyname('SuppEx').AsString<>'0')) then  CWHL:=query1.fieldbyname('SuppEx').value;
      for i:=0 to RecordCount-1 do
      begin
        edit;
        if query1.FieldByName('PayVN').Value=1 then
        begin
          if query1.fieldbyname('USprice').IsNull then
          begin
            Showmessage('USD is null, khong the tinh toan VND');
            abort;
          end;
          if (query1.FieldByName('Discount').Value<>1)   then
          begin
            fieldbyname('VNPrice').value:=ERPTrunc(query1.fieldbyname('USprice').value*CWHL*query1.FieldByName('Discount').Value,-ExtraPur.VNPrice_Decimal);
          end else
          begin
            fieldbyname('VNPrice').value:=ERPTrunc(query1.fieldbyname('USprice').value*CWHL,-ExtraPur.VNPrice_Decimal);
          end;
        end else
        begin
          if (query1.FieldByName('Discount').Value<>1)  then
          begin
            fieldbyname('USPrice').value:= query1.fieldbyname('USPrice').value*query1.FieldByName('Discount').Value;
            fieldbyname('VNPrice').value:=ERPTrunc_Down(query1.fieldbyname('VNPrice').value*query1.FieldByName('Discount').Value,ExtraPur.VNPrice_Decimal);
          end else
          begin
            fieldbyname('USPrice').value:=query1.fieldbyname('USPrice').value;
            fieldbyname('VNPrice').value:=query1.fieldbyname('VNPrice').value;
          end;
        end;
        fieldbyname('BJNO').value:=query1.fieldbyname('BJNO').value;
      end;
    end;
    close;
  end else
  begin
    showmessage ('Vui long chon bao gia moi nhat');
  end;    
end;

procedure TExtraPur_BJ.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  DBGridEh1dblclick(nil);
end;

procedure TExtraPur_BJ.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(Query1.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
end;




procedure TExtraPur_BJ.FormCreate(Sender: TObject);
begin
  ReadIni();
end;

procedure TExtraPur_BJ.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

procedure TExtraPur_BJ.Query1AfterOpen(DataSet: TDataSet);
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

procedure TExtraPur_BJ.DBGridEh1EditButtonClick(Sender: TObject);
begin
  if (DBGridEh1.SelectedField.FieldName='CWHL') then
  begin
    ExchExtra:=TExchExtra.create(self);
    ExchExtra.Button1.Click;
    ExchExtra.ShowModal();
    ExchExtra.Free; 
  end;
end;

procedure TExtraPur_BJ.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if Query1.FieldByName('Sort').AsString<>'1' then
  begin
     DBGridEh1.canvas.Brush.Color:=clBtnFace;
     DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
end;

end.
