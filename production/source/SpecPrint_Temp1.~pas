unit SpecPrint_Temp1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, DBTables, Menus,comobj;

type
  TSpecPrint_Temp = class(TForm)
    Query1: TQuery;
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    PopupMenu1: TPopupMenu;
    EXCEL1: TMenuItem;
    Query1DDBH: TStringField;
    Query1ZLBH: TStringField;
    Query1Article: TStringField;
    Query1XieMing: TStringField;
    Query1BUYNO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure EXCEL1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SpecPrint_Temp: TSpecPrint_Temp;

implementation

uses SpecPrint1, main1;

{$R *.dfm}

procedure TSpecPrint_Temp.FormCreate(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct DDZL.DDBH,DDZL.BUYNO,ZLZLS2.ZLBH,XXZL.Article,XXZl.XieMing ');
    sql.add('from DDZL ');
    sql.add('left join XXZL on DDZl.XieXing=XXZL.XieXing and DDZl.SheHao=XXZl.SheHao ');
    sql.add('left join XXZLSVN on XXZLSVN.XieXing=XXZL.XieXing and XXZLSVN.SheHao=XXZl.SheHao ');
    sql.Add('left join ZLZLS2 on ZLZLS2.ZLBH=DDZl.ZLBH and ZLZLS2.BWBH=XXZLSVN.BWBH ');
    sql.add('left join  kfzl on KFZl.KFDH=DDZL.KHBH');
    sql.Add('where DDZL.ZLBH like ');
    sql.add(''''+SpecPrint.edit1.Text+'%'+'''');
    sql.add('and KFZL.KFJC like');
    sql.add(''''+'%'+SpecPrint.edit3.Text+'%'+'''');
    sql.add('and XXZL.XieMing like ');
    sql.add(''''+'%'+SpecPrint.edit2.text+'%'+'''');
    if SpecPrint.RB1.Checked=true then
    begin
      sql.add('and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between ');
      sql.add('  '''+formatdatetime('yyyy/MM/dd',SpecPrint.DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',SpecPrint.DTP2.date)+'''');
    end else if SpecPrint.RB2.Checked=true then
    begin
      sql.Add('and DDZL.BUYNO like '''+SpecPrint.BuyNoEdit.Text+'%'' ');
    end;
    sql.add('and DDZL.GSBH='+''''+main.Edit2.Text+'''');
    sql.add('and ZLZLS2.ZLBH is null ');
    sql.add('order by DDZL.DDBH');
    active:=true;
  end;

end;

procedure TSpecPrint_Temp.EXCEL1Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
  begin
  if  Query1.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Mcrosoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   Query1.fieldCount-1   do
          begin
              eclApp.Cells(1,i+1):=Query1.fields[i].FieldName;
          end;
        Query1.First;
        j:=2;
        while   not   Query1.Eof   do
          begin
            for   i:=0   to   Query1.FieldCount-1   do
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

procedure TSpecPrint_Temp.FormDestroy(Sender: TObject);
begin
  SpecPrint_Temp:=nil;
end;

procedure TSpecPrint_Temp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TSpecPrint_Temp.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
