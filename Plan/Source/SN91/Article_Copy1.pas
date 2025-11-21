unit Article_Copy1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, Buttons, jpeg, ExtCtrls, DBTables,
  DB;

type
  TArticle_Copy = class(TForm)
    Query1: TQuery;
    Query2: TQuery;
    Temp: TQuery;
    Label1: TLabel;
    EDSKU: TEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Image1: TImage;
    Label5: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Button2: TButton;
    BitBtn2: TBitBtn;
    Image2: TImage;
    Image3: TImage;
    Edit6: TEdit;
    Edit7: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Image4: TImage;
    Label4: TLabel;
    Edit8: TEdit;
    Image5: TImage;
    Label6: TLabel;
    Edit9: TEdit;
    BitBtn1: TBitBtn;
    Query3: TQuery;
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Article_Copy: TArticle_Copy;
  NDate: TDate;

implementation

uses Article_Data1,fununit, main1;

{$R *.dfm}

procedure TArticle_Copy.Button2Click(Sender: TObject);
begin
  with Query1 do
  begin
    active := false;
    sql.Clear;
    sql.add('select XieXing,SheHao');
    sql.add('from  IE_ARTICLEDATA');
    sql.add('where 1 = 1');
    sql.add('and XieXing = '''+Edit1.Text+'''');
    sql.add('and SheHao = '''+Edit2.Text+'''');
    active := true;
    if Query1.RecordCount=0 then
    begin
      showmessage('Khong ton tai du lieu de copy');
      abort;
    end;
  end;

  if Edit3.Text='' then
  begin
    showmessage('Nhap Article');
    abort;
  end;
  with Query1 do
  begin
    active := false;
    sql.Clear;
    sql.add('select DISTINCT XXZL.XieXing,XXZL.SheHao');
    sql.add('from XXZL');
    sql.add('where 1 = 1');
    if Edit3.Text <> '' then
      sql.add('and XXZL.ARTICLE = '''+Edit3.Text+'''');
    if Edit7.Text <> '' then
      sql.add('and xxzl.DAOMH = '''+Edit7.Text+'''');
    active := true;
    if Query1.RecordCount=0 then
    begin
      showmessage('Article hoac ma DAO khong dung');
      abort;
    end;
    Edit4.Text:=Query1.fieldbyname('XieXing').AsString;
    Edit5.Text:=Query1.fieldbyname('SheHao').AsString;
  end;

  {with Query1 do
  begin
    active := false;
    sql.Clear;
    sql.add('select XieXing,SheHao');
    sql.add('from  IE_ARTICLEDATA');
    sql.add('where 1 = 1');
    sql.add('and XieXing = '''+Edit4.Text+'''');
    sql.add('and SheHao = '''+Edit5.Text+'''');
    active := true;
    if Query1.RecordCount>0 then
    begin
      showmessage('Article da ton tai');
      abort;
    end;
  end;}
end;

procedure TArticle_Copy.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TArticle_Copy.FormDestroy(Sender: TObject);
begin
   Article_Copy := nil;
end;

procedure TArticle_Copy.FormCreate(Sender: TObject);
begin
  with query3 do
  begin
    active := false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active := true;
    NDate := fieldbyname('NDate').Value;
    active := false;
  end;
  EDSKU.Text:=Article_Data.xxzl.fieldbyname('SKU').AsString;
  Edit1.Text:=Article_Data.xxzl.fieldbyname('XieXing').AsString;
  Edit2.Text:=Article_Data.xxzl.fieldbyname('SheHao').AsString;
  Edit6.Text:=Article_Data.xxzl.fieldbyname('DAOMH').AsString;
  Edit8.Text:=Article_Data.IE1.fieldbyname('VERSION').AsString;
end;

procedure TArticle_Copy.BitBtn2Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('insert into IE_ARTICLEDATA(');
    SQL.Add('XieXing,SheHao,Production_Category,VERSION,VERSION_MEMO,Hourly_Output,IE_DL,Actual_DL,IDL,LBR,Status,Test_Day,Approve_Time,Activation_Time,USERID,USERDATE,YN,File_Name,TCT)');
    SQL.Add('(select '''+Edit4.Text+''' as XieXing,'''+Edit5.Text+''' as SheHao,Production_Category,VERSION,VERSION_MEMO,Hourly_Output,IE_DL,Actual_DL,IDL,LBR,Status,Test_Day');
    SQL.Add(',Approve_Time,Activation_Time,'''+main.edit1.text+''','''+ formatdatetime('yyyy/MM/dd', NDate)+''',YN,File_Name,TCT');
    SQL.Add('from IE_ARTICLEDATA');
    SQL.add('where 1 = 1');
    SQL.add('and XieXing = '''+Edit1.Text+'''');
    SQL.add('and SheHao = '''+Edit2.Text+''')');
    //funcobj.WriteErrorLog(sql.Text);
    ExecSQL;
    Active:=false;
    SQL.Clear;
    SQL.Add('insert into IE_ARTICLEDATAS(');
    SQL.Add('XieXing,SheHao,Production_Category,VERSION,Cut_Type,Piece_percut,Process_name,Process_YWPM,CT,Ideal_Labor,Labor_needed,File_Name,USERID,USERDATE,YN,SChiTiet,TKT,Tong_TG,TG_Loss,SLKH,SNguoi_KH,SNguoi_NC,LoaiMay,Actual,STT,Remark)');
    SQL.Add('(select '''+Edit4.Text+''' as XieXing,'''+Edit5.Text+''' as SheHao,Production_Category,VERSION,Cut_Type,Piece_percut,Process_name,Process_YWPM,CT,Ideal_Labor,Labor_needed,File_Name');
    SQL.Add(','''+main.edit1.text+''','''+ formatdatetime('yyyy/MM/dd', NDate)+''',YN,SChiTiet,TKT,Tong_TG,TG_Loss,SLKH,SNguoi_KH,SNguoi_NC,LoaiMay,Actual,STT,Remark');
    SQL.Add('from IE_ARTICLEDATAS');
    SQL.add('where 1 = 1');
    SQL.add('and XieXing = '''+Edit1.Text+'''');
    SQL.add('and SheHao = '''+Edit2.Text+''')');
    //funcobj.WriteErrorLog(sql.Text);
    ExecSQL;
    showmessage('Finshed Copy');
  end;
end;

procedure TArticle_Copy.BitBtn1Click(Sender: TObject);
begin
  if Edit9.Text = '' then
  begin
    showmessage('Vui long nhap VERSION ');
    abort;
  end;
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('insert into IE_ARTICLEDATA(');
    SQL.Add('XieXing,SheHao,Production_Category,VERSION,VERSION_MEMO,Hourly_Output,IE_DL,Actual_DL,IDL,LBR,Status,Test_Day,Approve_Time,Activation_Time,USERID,USERDATE,YN,File_Name,TCT)');
    SQL.Add('(select '''+Edit4.Text+''' as XieXing,'''+Edit5.Text+''' as SheHao,Production_Category,'''+Edit9.Text+''',VERSION_MEMO,Hourly_Output,IE_DL,Actual_DL,IDL,LBR,Status,Test_Day,Approve_Time');
    SQL.Add(',Activation_Time,'''+main.edit1.text+''','''+ formatdatetime('yyyy/MM/dd', NDate)+''',YN,File_Name,TCT');
    SQL.Add('from IE_ARTICLEDATA');
    SQL.add('where 1 = 1');
    SQL.add('and XieXing = '''+Edit1.Text+'''');
    SQL.add('and SheHao = '''+Edit2.Text+'''');
    SQL.add('and VERSION = '''+Edit8.Text+''')');
    //funcobj.WriteErrorLog(sql.Text);
    ExecSQL;
    Active:=false;
    SQL.Clear;
    SQL.Add('insert into IE_ARTICLEDATAS(');
    SQL.Add('XieXing,SheHao,Production_Category,VERSION,Cut_Type,Piece_percut,Process_name,Process_YWPM,CT,Ideal_Labor,Labor_needed,File_Name,USERID,USERDATE,YN,SChiTiet,TKT,Tong_TG,TG_Loss,SLKH,SNguoi_KH,SNguoi_NC,LoaiMay,Actual,STT,Remark)');
    SQL.Add('(select '''+Edit4.Text+''' as XieXing,'''+Edit5.Text+''' as SheHao,Production_Category,'''+Edit9.Text+''',Cut_Type,Piece_percut,Process_name,Process_YWPM,CT,Ideal_Labor,Labor_needed,File_Name');
    SQL.Add(','''+main.edit1.text+''','''+ formatdatetime('yyyy/MM/dd', NDate)+''',YN,SChiTiet,TKT,Tong_TG,TG_Loss,SLKH,SNguoi_KH,SNguoi_NC,LoaiMay,Actual,STT,Remark');
    SQL.Add('from IE_ARTICLEDATAS');
    SQL.add('where 1 = 1');
    SQL.add('and XieXing = '''+Edit1.Text+'''');
    SQL.add('and SheHao = '''+Edit2.Text+'''');
    SQL.add('and VERSION = '''+Edit8.Text+''')');
    //funcobj.WriteErrorLog(sql.Text);
    ExecSQL;
    showmessage('Finshed Copy');
  end;
end;

end.
