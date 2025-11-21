unit MaterialMOQ_Copy1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,comobj,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,DBGridEhImpExp, ShellAPI,
  DBGridEh;

type
  TMaterialMOQ_Copy = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button3: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    DBGridEh3: TDBGridEh;
    Qry_Copy: TQuery;
    Query1zsdh: TStringField;
    StringField1: TStringField;
    Query1CR1: TStringField;
    Query1CR2: TStringField;
    Query1Presell: TStringField;
    Query1SMS: TStringField;
    Query1PT: TStringField;
    StringField2: TStringField;
    DateTimeField1: TDateTimeField;
    StringField3: TStringField;
    Query1style: TStringField;
    StringField4: TStringField;
    Query1Country: TStringField;
    Query1CR1_FreeQty: TCurrencyField;
    Query1CR1_Charge: TCurrencyField;
    Query1CR2_FreeQty: TCurrencyField;
    Query1CR2_charge: TCurrencyField;
    Query1Presell_FreeQty: TCurrencyField;
    Query1Presell_Charge: TCurrencyField;
    Query1SMS_FreeQty: TCurrencyField;
    Query1SMS_Charge: TCurrencyField;
    Query1PT_FreeQty: TCurrencyField;
    Query1PT_Charge: TCurrencyField;
    DateTimeField2: TDateTimeField;
    DateTimeField3: TDateTimeField;
    DS_Copy: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialMOQ_Copy: TMaterialMOQ_Copy;

implementation

uses SupplierSample1 , MaterialMOQ1;

{$R *.dfm}

procedure TMaterialMOQ_Copy.Button1Click(Sender: TObject);
begin

  if MaterialMOQ_Copy.Edit1.Text='' then
     begin
       showmessage('Pls keyin [Old Season] !');
       exit ;
     end;

with Qry_Copy do
  begin
    active:=false;
    sql.clear;
    sql.add('select zszlSamplePayment.Season  ');
    sql.add('      ,zszlSamplePayment.CR1_FreeQty  ');
    sql.add('      ,zszlSamplePayment.CR2_FreeQty  ');
    sql.add('      ,zszlSamplePayment.Presell_FreeQty  ');
    sql.add('      ,zszlSamplePayment.SMS_FreeQty  ');
    sql.add('      ,zszlSamplePayment.PT_FreeQty  ');
    sql.add('      ,zszlSamplePayment.CR1_Charge  ');
    sql.add('      ,zszlSamplePayment.CR2_Charge  ');
    sql.add('      ,zszlSamplePayment.Presell_Charge  ');
    sql.add('      ,zszlSamplePayment.SMS_Charge  ');
    sql.add('      ,zszlSamplePayment.PT_Charge  ');
    sql.add('      ,zszlSamplePayment.CR1  ');
    sql.add('      ,zszlSamplePayment.CR2  ');
    sql.add('      ,zszlSamplePayment.Presell  ');
    sql.add('      ,zszlSamplePayment.SMS  ');
    sql.add('      ,zszlSamplePayment.PT  ');
    sql.add('      ,zszlSamplePayment.EffectiveDate  ');
    sql.add('      ,zszlSamplePayment.EffectiveDate as EffectiveDate_OLD ');
    sql.add('      ,zszlSamplePayment.USERID  ');
    sql.add('      ,zszlSamplePayment.USERDATE  ');
    sql.add('      ,ZSZL.zsdh,ZSZL.ZSYWJC,ZSZL.style,BUSERS.USERNAME as SamplePurchaser_Name,ZSZL.Country ');
    sql.add('from ZSZL ');
    sql.add('left join (select * from zszlSamplePayment ');
    sql.add('           where zszlSamplePayment.Season='+''''+MaterialMOQ_Copy.Edit1.Text+'''');
    sql.add('           ) zszlSamplePayment on ZSZL.zsdh=zszlSamplePayment.zsdh');
    sql.add('left join BUSERS  on BUSERS.USERID=ZSZL.SamplePurchaser  ');
    sql.add('where 1=1  ');
    sql.add('       and exists ( select CGZLS.CGNO from CGZLS,CGZL ');
    sql.add('                        where CGZl.CGNO=CGZLS.CGNO ');
    sql.add('                              AND CGZL.CGLX=''6'' and CGZLS.Qty>0  ');
    sql.add('                              and CGZL.ZSBH=ZSZL.zsdh and CGZl.Season='''+MaterialMOQ_Copy.Edit1.Text+''') ');

    if MaterialMOQ.Edit8.Text<>'' then
       sql.add(' and isnull(ZSZL.SamplePurchaser,'''')='+''''+MaterialMOQ.Edit8.Text+'''');
    if MaterialMOQ.SuppEdit.Text<>'' then
       sql.add(' and ZSZL.ZSYWJC like ''%'+MaterialMOQ.SuppEdit.Text+'%'+'''');
    if MaterialMOQ.SupIDEdit.Text<>'' then
       sql.add(' and ZSZL.zsdh='''+MaterialMOQ.SupIDEdit.Text+'''');
    sql.add('and isnull(SamplePurchaser,'''')<>'''' ');
    sql.add('and YN=''2'' ');  //越南輸入的廠商資料
    sql.add('order by ZSYWJC');
    active:=true;
  end;


end;

procedure TMaterialMOQ_Copy.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  // edit2.setfocus
end;

procedure TMaterialMOQ_Copy.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button1click(nil);
end;

procedure TMaterialMOQ_Copy.FormDestroy(Sender: TObject);
begin
MaterialMOQ_Copy:=nil;
end;

procedure TMaterialMOQ_Copy.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

action:=cafree;
end;

procedure TMaterialMOQ_Copy.Button3Click(Sender: TObject);
var bm:Tbookmark;
i:integer;
Qty:real;
bookmarklist:tbookmarklistEH;
begin

if messagedlg('Do you really want to copy the data?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
   begin
     Qty:=0;
     if (not Qry_Copy.Active) then
        begin
          abort;
     end;
     if (Qry_Copy.recordcount<1) then
        begin
          abort;
        end;
     Qry_Copy.disablecontrols;
     bm:=Qry_Copy.getbookmark;
     bookmarklist:=DBGridEh3.selectedrows;
     if bookmarklist.count>0 then
       begin
         try
           for i:=0 to bookmarklist.count-1 do
           begin
             Qry_Copy.gotobookmark(pointer(bookmarklist[i]));
                 if MaterialMOQ.Qry_Policy.locate('zsdh',Qry_Copy.fieldbyname('zsdh').asstring,[]) then
                    begin
                      MaterialMOQ.Qry_Policy.Edit;
                      MaterialMOQ.Qry_Policy.fieldbyname('CR1_FreeQty').value:=Qry_Copy.fieldbyname('CR1_FreeQty').value;
                      MaterialMOQ.Qry_Policy.fieldbyname('CR1_Charge').value:=Qry_Copy.fieldbyname('CR1_Charge').value;
                      MaterialMOQ.Qry_Policy.fieldbyname('CR2_FreeQty').value:=Qry_Copy.fieldbyname('CR2_FreeQty').value;
                      MaterialMOQ.Qry_Policy.fieldbyname('CR2_charge').value:=Qry_Copy.fieldbyname('CR2_charge').value;
                      MaterialMOQ.Qry_Policy.fieldbyname('Presell_FreeQty').value:=Qry_Copy.fieldbyname('Presell_FreeQty').value;
                      MaterialMOQ.Qry_Policy.fieldbyname('Presell_Charge').value:=Qry_Copy.fieldbyname('Presell_Charge').value;
                      MaterialMOQ.Qry_Policy.fieldbyname('SMS_FreeQty').value:=Qry_Copy.fieldbyname('SMS_FreeQty').value;
                      MaterialMOQ.Qry_Policy.fieldbyname('SMS_Charge').value:=Qry_Copy.fieldbyname('SMS_Charge').value;
                      MaterialMOQ.Qry_Policy.fieldbyname('PT_FreeQty').value:=Qry_Copy.fieldbyname('PT_FreeQty').value;
                      MaterialMOQ.Qry_Policy.fieldbyname('PT_Charge').value:=Qry_Copy.fieldbyname('PT_Charge').value;
                      MaterialMOQ.Qry_Policy.post;
                    end;
           end;
         finally
           begin
             Qry_Copy.gotobookmark(bm);
             Qry_Copy.freebookmark(bm);
             Qry_Copy.enablecontrols;
             showmessage('You have finish copy!');
           end;
         end;
       end;
   end;

end;

end.
