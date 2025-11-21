unit KCPKRK1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls;

type
  TKCPKRK = class(TForm)
    ADOConn: TADOConnection;
    ADOQuery1: TADOQuery;
    Memo1: TMemo;
    Button1: TButton;
    ADOQuery2: TADOQuery;
    ExecQry: TADOQuery;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    AppDir:String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  KCPKRK: TKCPKRK;

implementation
  uses FunUnit;
{$R *.dfm}

procedure TKCPKRK.Button1Click(Sender: TObject);
var i,j:integer;
    Qty,TotalQty:double;
begin
   //
   with ADOQuery1 do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('Select  * ');
     SQL.Add('From KCCLMONTH_HG ');
     SQL.Add('Where KCYEAR=''2022'' and KCMONTH=''11''  and HGLB in (''HD'',''NK'',''KD'') ');
     SQL.Add('  and CKBH in (''CDC'',''CDT'',''BYC'',''BYT'',''CBY'',''SDC'',''SDT'',''SRC'',''VA12'',''VTXW'') ');
     //SQL.Add('  and CKBH in (''CDC'',''CDT'',''BYC'',''BYT'',''CBY'',''SDC'',''SDT'',''SRC'',''VA12'',''VTXW'') ');
     //FuncObj.WriteErrorLog(SQL.Text);
     Active:=true;
   end;
   //
   for i:=0 to ADOQuery1.RecordCount-1 do
   begin
     Application.ProcessMessages;
     Label1.Caption:=inttostr(i+1)+'/'+inttostr(ADOQuery1.RecordCount);
     TotalQty:=ADOQuery1.FieldByName('Qty').Value;
     with ADOQuery2 do
     begin
       Active:=false;
       SQL.Clear;
       SQL.Add('Select top 1000 KCRKS.RKNO,KCRKS.CLBH,Sum(Qty) as Qty,KCRK.UserDate ');
       SQL.Add('From KCRK');
       SQL.Add('Left join KCRKS on KCRK.RKNO=KCRKS.RKNO');
       SQL.Add('where  KCRK.CKBH='''+ADOQuery1.FieldByName('CKBH').AsString+''' and  HGLB='''+ADOQuery1.FieldByName('HGLB').AsString+''' and Convert(smalldatetime,convert(varchar,KCRK.USERDATE,111))<=''2022/11/30''  ');
       SQL.Add('      and KCRKS.CLBH='''+ADOQuery1.FieldByName('CLBH').AsString+'''');
       SQL.Add('Group by KCRKS.RKNO,KCRKS.CLBH,KCRK.UserDate ');
       SQL.Add('order by KCRK.USERDATE desc ');
       //funcObj.WriteErrorLog(sql.Text);
       Active:=true;
       //
       while not ADOQuery2.Eof do
       begin
          if TotalQty>=ADOQuery2.FieldByName('Qty').Value then
          begin
            Qty:=ADOQuery2.FieldByName('Qty').Value;
            TotalQty:=TotalQty-Qty;
          end else
          begin
            Qty:=TotalQty;
            TotalQty:=TotalQty-Qty;
          end;
          //
          ExecQry.Active:=false;
          ExecQry.SQL.Clear;
          ExecQry.SQL.Add('Insert into KCPKRK1 (KCYEAR,KCMONTH,RKNO, CLBH, Qty ,UserID, UserDate, YN) ');
          ExecQry.SQL.Add('Values ');
          ExecQry.SQL.Add(' (''2022'',''11'','''+ADOQuery2.FieldByName('RKNO').AsString+''','''+ADOQuery2.FieldByName('CLBH').AsString+''','+floattostr(Qty)+',''21191'',GetDate(),''1'') ');
          //funcObj.WriteErrorLog(ExecQry.SQL.Text);
          ExecQry.ExecSQL();
          //
          if TotalQty<=0 then break;
          ADOQuery2.Next;
       end;
     end;
     ADOQuery1.Next;
   end;
   //
   ADOQuery1.Active:=false;
   ADOQuery2.Active:=false;
   ExecQry.Active:=false;
   Showmessage('Finish');
end;
//
procedure TKCPKRK.FormCreate(Sender: TObject);
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  FuncObj:=TFUncObj.Create;
  FuncObj.SetParameter(true, AppDir);
end;

procedure TKCPKRK.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FuncObj.Free;
end;
//

end.
