unit HRMNHhanVien1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, GridsEh, DBGridEh, DBTables, Menus, Comobj;

type
  THRMNHhanVien = class(TForm)
    HRMQry: TQuery;
    DS1: TDataSource;
    DBGridEh1: TDBGridEh;
    HRMQryNDay: TStringField;
    HRMQryX_MA_: TStringField;
    HRMQryDV_MA: TStringField;
    HRMQryCV_MA: TStringField;
    HRMQryNV_MA: TStringField;
    HRMQryNV_Ten: TStringField;
    HRMQryNP_Ma: TStringField;
    HRMQryCC_GIOBINHTHUONG: TFloatField;
    HRMQryCC_HESONGAYCONG: TFloatField;
    PopupMenu: TPopupMenu;
    Excel1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Excel1Click(Sender: TObject);
  private
    { Private declarations }
    procedure NhavVienList();
  public
    DV_MA:String;
    SelDate:String;
    SubSQL:string;
    { Public declarations }
  end;

var
  HRMNHhanVien: THRMNHhanVien;

implementation
  uses HRMDepartmentAttend1,FunUnit;
{$R *.dfm}

procedure THRMNHhanVien.NhavVienList();
begin
  with HRMQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('SELECT ');
    SQL.Add(' '''+SelDate+''' as NDay,ST_DONVI.X_MA_,ST_NHANVIEN.DV_MA,ST_NHANVIEN.CV_MA,ST_NHANVIEN.NV_MA,ST_NHANVIEN.NV_Ten,ST_GIOQUETTHE.NP_Ma,ST_GIOQUETTHE.CC_GIOBINHTHUONG,ST_GIOQUETTHE.CC_HESONGAYCONG');
    SQL.Add('FROM HumanDB.[P0104-TYXUAN].dbo.ST_GIOQUETTHE  ST_GIOQUETTHE');
    SQL.Add('INNER JOIN HumanDB.['+HRMDepartmentAttend.HrmsDBName+'].dbo.ST_DONVI ST_DONVI ON ST_GIOQUETTHE.DV_MA = ST_DONVI.DV_MA AND DV_LocBB =0 AND DV_TV <> 1 ');  //
    SQL.Add('LEFT JOIN HumanDB.['+HRMDepartmentAttend.HrmsDBName+'].dbo.ST_NHANVIEN ST_NHANVIEN ON ST_NHANVIEN.NV_Ma = ST_GIOQUETTHE .NV_MA AND QT_NGAY = '''+SelDate+'''');
    SQL.Add('LEFT JOIN HumanDB.['+HRMDepartmentAttend.HrmsDBName+'].dbo.IT_NUOICONDUOI12THANG IT_NUOICONDUOI12THANG ON ST_NHANVIEN.NV_MA = IT_NUOICONDUOI12THANG.NV_MA');
    SQL.Add('AND CHONNGAYSANH=1 AND '''+SelDate+''' BETWEEN CONVERT(DATETIME,NGAYSANH,103) AND DATEADD(M,12,CONVERT(DATETIME,NGAYSANH,103))');
    SQL.Add('LEFT JOIN HumanDB.['+HRMDepartmentAttend.HrmsDBName+'].dbo.IT_THAITHANGTHU7 IT_THAITHANGTHU7 ON ST_NHANVIEN.NV_MA = IT_THAITHANGTHU7.NV_MA');
    SQL.Add('AND '''+SelDate+''' BETWEEN ISNULL(BATDAUTU,DATEADD(YY,-100, '''+SelDate+''')) AND ISNULL(IT_THAITHANGTHU7.DENNGAY,DATEADD(YY,-100, '''+SelDate+'''))');
    SQL.Add('WHERE ST_NHANVIEN.NV_Ngayvao <= '''+SelDate+'''');
    SQL.Add('AND ST_NHANVIEN.DV_MA NOT IN (''BGD'',''BGDX'')');
    SQL.Add('AND ST_NHANVIEN.DV_MA NOT LIKE ''%CG%''');
    if DV_MA<>'' then
      SQL.Add('AND ST_NHANVIEN.DV_MA like ''%'+DV_MA+'%'' ');
    SQL.Add(SubSQL);
    SQL.Add('order by ST_DONVI.X_MA_,ST_NHANVIEN.DV_MA');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //
end;
procedure THRMNHhanVien.FormShow(Sender: TObject);
begin
  NhavVienList();
end;

procedure THRMNHhanVien.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  HRMNHhanVien:=nil;
end;

procedure THRMNHhanVien.Excel1Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  HRMQry.active  then
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
        for   i:=0   to   HRMQry.fieldcount-1   do
        begin
          eclApp.Cells(1,i+1):=HRMQry.fields[i].FieldName;
        end;

        HRMQry.First;
        j:=2;
        while   not   HRMQry.Eof   do
        begin
          for   i:=0   to  HRMQry.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=HRMQry.Fields[i].Value;
          end;
          HRMQry.Next;
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

end.
