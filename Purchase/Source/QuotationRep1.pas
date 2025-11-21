unit QuotationRep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,comobj,
  GridsEh, DBGridEh;

type
  TQuotationRep = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    DS1: TDataSource;
    Query1: TQuery;
    Query1BJNO: TStringField;
    Query1ZSBH: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1CFMDate: TDateTimeField;
    Query1CLBH: TStringField;
    Query1USPrice: TCurrencyField;
    Query1VNPrice: TCurrencyField;
    Query1BJLX: TStringField;
    Query1Memo: TStringField;
    Query1ZSYWJC: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Button2: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Query1ZWPM: TStringField;
    checkbox1: TCheckBox;
    checkbox2: TCheckBox;
    Check: TCheckBox;
    Label5: TLabel;
    Edit7: TEdit;
    Label6: TLabel;
    Edit8: TEdit;
    DBGrid1: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QuotationRep: TQuotationRep;

implementation

uses main1,FunUnit;

{$R *.dfm}

procedure TQuotationRep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TQuotationRep.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select CGBJ.*,CGBJS.*,ZSZL.ZSYWJC,CLZL.ZWPM,CLZL.YWPM,CLZL.DWBH');
    sql.add('from CGBJ');
    sql.add('left join CGBJS on CGBJ.BJNO=CGBJS.BJNO');
    sql.add('left join ZSZL on ZSZL.ZSDH=CGBJ.ZSBH');
    sql.add('left join CLZL on CLZl.CLDH=CGBJS.CLBH');
    sql.add('where CGBJS.CLBH like '+''''+edit1.Text+'%'+'''');
    if trim(Edit8.Text)<>'' then
      sql.add(' and CGBJ.BJNO like ''%'+Edit8.Text+'%'' ');
    if ((checkbox1.Checked=true) and (checkbox2.Checked=false)) then
      sql.add(' and CLZL.CQDH=''TW''');
    if ((checkbox1.Checked=false) and (checkbox2.Checked=true)) then
      sql.add(' and CLZL.CQDH=''VN''');
    if trim(edit2.Text)<>'' then
      sql.add(' and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    if trim(edit3.Text)<>'' then
      sql.add(' and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
    if trim(edit5.Text)<>'' then
      sql.add(' and CLZL.ZWPM like '+''''+'%'+edit5.Text+'%'+'''');
    if trim(edit6.Text)<>'' then
      sql.add(' and CLZL.ZWPM like '+''''+'%'+edit6.Text+'%'+'''');
    if trim(Edit7.Text)<>'' then
      sql.add(' and ZSZL.ZSJC like ''%'+Edit7.Text+'%'' ');
    sql.add(' and CGBJ.ZSBH like '+''''+edit4.Text+'%'+'''');
    sql.add(' and CGBJ.GSBH='+''''+main.edit2.Text+'''');
    if Check.Checked=true then
      sql.add('and CGBJ.USERID='''+main.Edit1.Text+''' ');
    sql.add('order by CGBJ.BJNO desc,CGBJS.CLBH ');
    active:=true;
  end;

end;

procedure TQuotationRep.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
 begin
  if  query1.active  then
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
        for   i:=0   to   query1.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
          end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
          begin
            for   i:=0   to  query1.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=query1.Fields[i].Value;
            end;
          query1.Next;
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

procedure TQuotationRep.FormDestroy(Sender: TObject);
begin
QuotationRep:=nil;
end;

end.
