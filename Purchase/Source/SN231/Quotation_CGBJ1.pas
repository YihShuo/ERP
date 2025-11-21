unit Quotation_CGBJ1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, Comobj;

type
  TQuotation_CGBJ = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    YWPM1Edit: TEdit;
    CLBHEdit: TEdit;
    YWPM2Edit: TEdit;
    YWPM3Edit: TEdit;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Label3: TLabel;
    ZSBHEdit: TEdit;
    Query1BJNO: TStringField;
    Query1ZSBH: TStringField;
    Query1CLBH: TStringField;
    Query1USPrice: TFloatField;
    Query1VNPrice: TCurrencyField;
    Query1Discount: TFloatField;
    Query1SuppEx: TFloatField;
    Query1zsywjc: TStringField;
    Label4: TLabel;
    zsywjcEdit: TEdit;
    Query1rn: TFloatField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1DWBH: TStringField;
    Button2: TButton;
    Button3: TButton;
    Query1EXPDATE: TDateTimeField;
    Qtemp: TQuery;
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Quotation_CGBJ: TQuotation_CGBJ;

implementation
  uses main1, Quotation1, FunUnit;
{$R *.dfm}

procedure TQuotation_CGBJ.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select CGBJ.*,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,ZSZL.zsywjc from (');
    SQL.Add('	Select *  from (select CGBJ.BJNO,CGBJ.ZSBH,CGBJS.CLBH,CGBJS.USPrice,CGBJS.VNPrice ,CGBJS.Discount, CGBJS.SuppEx,CGBJ.EXPDATE,');
    SQL.Add('	ROW_NUMBER() over (PARTITION BY CGBJS.CLBH ORDER BY CGBJ.BJNO DESC) as  rn');
    SQL.Add('				from CGBJ');
    SQL.Add('				left join CGBJS on CGBJ.BJNO=CGBJS.BJNO');
    SQL.Add('				where CGBJ.GSBH='''+main.Edit2.Text+''' and CGBJS.CLBH is not null');
    if ZSBHEdit.Text<>'' then
    SQL.Add('            and CGBJ.ZSBH like '''+ZSBHEdit.Text+'%'' ');
    if CLBHEdit.Text<>'' then
    SQL.Add('            and CGBJS.CLBH like '''+CLBHEdit.Text+'%'' ');
    SQL.Add('	 ) CGBJ where rn=1 ) CGBJ');
    SQL.Add('left join CLZL on CLZL.CLDH=CGBJ.CLBH');
    SQL.Add('left join ZSZL on ZSZL.ZSDH=CGBJ.ZSBH');
    SQL.Add('where 1=1 ');
    if zsywjcEdit.Text<>'' then
    SQL.Add('  and ZSZL.zsywjc like ''%'+zsywjcEdit.Text+'%'' ');
    if YWPM1Edit.Text<>'' then
    SQL.add('  and CLZL.YWPM like ''%'+YWPM1Edit.Text+'%'' ');
    if YWPM2Edit.Text<>'' then
    SQL.add('  and CLZL.YWPM like ''%'+YWPM2Edit.Text+'%'' ');
    if YWPM3Edit.Text<>'' then
    SQL.add('  and CLZL.YWPM like ''%'+YWPM3Edit.Text+'%'' ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;

end;

procedure TQuotation_CGBJ.DBGridEh1DblClick(Sender: TObject);
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  with Qtemp do
      begin
          active:=false;
          sql.Clear;
          sql.add('select IsNull((select top 1 CWHL from CWHLS  where HLYEAR=Year(GetDate()) and HLMONTH=Month(GetDate()) and HLDay=Day(GetDate())-1),0)as CWHL,');
          sql.add('(case when month(GETDATE())<07 then ''FH''+SUBSTRING(CAST(YEAR(GETDATE()) as VARCHAR),3,2) ');
          sql.add('else ''S''+SUBSTRING(CAST(YEAR(GETDATE())+1 as VARCHAR),3,2) end )as season');
          active:=true;
      end;
  with Quotation.BJDet do
  begin
    insert;
    fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
    fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
    fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
    fieldbyname('USPrice').Value:=query1.fieldbyname('USPrice').value;
    fieldbyname('VNPrice').Value:=query1.fieldbyname('VNPrice').value;
    fieldbyname('Discount').Value:=query1.fieldbyname('Discount').value;
    fieldbyname('SuppEx').Value:=query1.fieldbyname('SuppEx').value;   
    fieldbyname('Season').value:= Qtemp.fieldbyname('Season').value;
    fieldbyname('ErpEx').value:= Qtemp.fieldbyname('CWHL').value;
    post;
  end;
  Qtemp.Active:=false;
  showmessage('Succeed.');
  //query1.active:=false;
  //close;
end;

procedure TQuotation_CGBJ.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  Query1.active  then
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
      for   i:=0   to   Query1.fieldcount-1   do
      begin
        eclApp.Cells(1,i+1):=Query1.fields[i].FieldName;
      end;

      Query1.First;
      j:=2;
      while   not   Query1.Eof   do
      begin
        for   i:=0   to  Query1.fieldcount-1  do
        begin
          eclApp.Cells(j,i+1):=Query1.Fields[i].Value;
        end;
        Query1.Next;
        inc(j);
      end;
      eclapp.columns.autofit;
      showmessage('Succeed');
      eclApp.Visible:=True;
    except
      on   F:Exception   do
            showmessage(F.Message);
      end;
  end;
end;

procedure TQuotation_CGBJ.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TQuotation_CGBJ.FormDestroy(Sender: TObject);
begin
  Quotation_CGBJ:=nil;
end;

procedure TQuotation_CGBJ.Button3Click(Sender: TObject);
var bm:Tbookmark;
    i:integer;
    bookmarklist:TbookmarklistEH;
begin
  if messagedlg('Do you really want to copy these record?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    if (not query1.Active) then
    begin
      abort;
    end;
    if (Query1.recordcount<1) then
    begin
      abort;
    end;

    query1.disablecontrols;
    bm:=query1.getbookmark;
    bookmarklist:=DBGridEh1.selectedrows;
    if bookmarklist.count>0 then
    begin
      try
        for i:=0 to bookmarklist.count-1 do
        begin
          query1.gotobookmark(pointer(bookmarklist[i]));
          with Quotation.BJDet do
          begin
              Insert;
              fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
              fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
              fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
              fieldbyname('USPrice').Value:=query1.fieldbyname('USPrice').value;
              fieldbyname('VNPrice').Value:=query1.fieldbyname('VNPrice').value;
              fieldbyname('Discount').Value:=query1.fieldbyname('Discount').value;
              fieldbyname('SuppEx').Value:=query1.fieldbyname('SuppEx').value;
              Post;
          end;
        end; //end for loop
      finally
        begin
          query1.gotobookmark(bm);
          query1.freebookmark(bm);
          query1.enablecontrols;
          showmessage('You have finish copy!');
        end;
      end;
    end;
  end;

end;

end.
