unit Import_Excel_To_MsSQL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, DB, ADODB, DBTables;

type
  TImport_Excel_To_MsSQL = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    Panel2: TPanel;
    ADOConnection3: TADOConnection;
    ADOConnection2: TADOConnection;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    DataSource2: TDataSource;
    ADOQuery2: TADOQuery;
    OpenDialog1: TOpenDialog;
    Query1: TQuery;
    procedure Panel1Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Import_Excel_To_MsSQL: TImport_Excel_To_MsSQL;
  NDate:TDate;
implementation

uses main1;

{$R *.dfm}

procedure TImport_Excel_To_MsSQL.Panel1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    ADOConnection1.ConnectionString:='Provider = Microsoft.Jet.OLEDB.4.0; Data Source ='''+OpenDialog1.FileName+'''; Extended Properties="Excel 8.0;Persist Security Info=False;IMEX=1;"';
    ADOConnection2.ConnectionString:='Provider=SQLOLEDB.1;Password=jack;Persist Security Info=True;User ID=sa;Initial Catalog=LIY_ERP;Data Source=192.168.23.9';
    ADOConnection3.ConnectionString:='Provider=SQLOLEDB.1;Password=jack;Persist Security Info=True;User ID=sa;Initial Catalog=LIY_ERP;Data Source=192.168.23.9';
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Text:='Select * from [LTM$]';
    ADOQuery1.Open;
    ADOQuery2.Close;
    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Text:='Select * from [LTM1$]';
    ADOQuery2.Open;
  end else
  showmessage('Please choose Excel first!!!')
end;

procedure TImport_Excel_To_MsSQL.Panel2Click(Sender: TObject);
var
  MasSql,DetSql:String;
  AdoCmd,AdosCmd:TAdoCommand;
  P_Start,P_Cost:DWORD;
begin
  MasSql := 'Insert into Lab_Materialtest (ReportID,GSBH,ReqDate,Factory,Department,Result,Material0,Material1,Material2,Material3,'+
          'Material4,Color,Component,MaterialType,Treatment,SupplierCode,Category,Season,SamplingFor,SKU,SR,TestedBy,Approvalby,'+
          'AcceptedDate,CompleteDate,Comment,FailReason,UserID,UserDate,YN)'+
          'values (:ReportID,:GSBH,:ReqDate,:Factory,:Department,:Result,:Material0,:Material1,:Material2,:Material3,:Material4,'+
          ':Color,:Component,:MaterialType,:Treatment,:SupplierCode,:Category,:Season,:SamplingFor,:SKU,:SR,:TestedBy,:Approvalby,'+
          ':AcceptedDate,:CompleteDate,:Comment,:FailReason,:UserID,:UserDate,:YN)';
  AdoCmd := TAdoCommand.Create(NIL);
  AdoCmd.Connection := ADOConnection2;
  AdoCmd.Parameters.Clear();
  AdoCmd.CommandText := MasSql;
  AdoCmd.CommandType := cmdText;
  AdoCmd.Parameters.ParseSQL( MasSql, True );
  AdoCmd.Parameters.ParamByName('ReportID').DataType := ftString;
  AdoCmd.Parameters.ParamByName('GSBH').DataType := ftString;
  AdoCmd.Parameters.ParamByName('ReqDate').DataType := ftString;
  AdoCmd.Parameters.ParamByName('Factory').DataType := ftString;
  AdoCmd.Parameters.ParamByName('Department').DataType := ftString;
  AdoCmd.Parameters.ParamByName('Result').DataType := ftString;
  AdoCmd.Parameters.ParamByName('Material0').DataType := ftString;
  AdoCmd.Parameters.ParamByName('Material1').DataType := ftString;
  AdoCmd.Parameters.ParamByName('Material2').DataType := ftString;
  AdoCmd.Parameters.ParamByName('Material3').DataType := ftString;
  AdoCmd.Parameters.ParamByName('Material4').DataType := ftString;
  AdoCmd.Parameters.ParamByName('Color').DataType := ftString;
  AdoCmd.Parameters.ParamByName('Component').DataType := ftString;
  AdoCmd.Parameters.ParamByName('MaterialType').DataType := ftString;
  AdoCmd.Parameters.ParamByName('Treatment').DataType := ftString;
  AdoCmd.Parameters.ParamByName('SupplierCode').DataType := ftString;
  AdoCmd.Parameters.ParamByName('Category').DataType := ftString;
  AdoCmd.Parameters.ParamByName('Season').DataType := ftString;
  AdoCmd.Parameters.ParamByName('SamplingFor').DataType := ftString;
  AdoCmd.Parameters.ParamByName('SKU').DataType := ftString;
  AdoCmd.Parameters.ParamByName('SR').DataType := ftString;
  AdoCmd.Parameters.ParamByName('TestedBy').DataType := ftString;
  AdoCmd.Parameters.ParamByName('Approvalby').DataType := ftString;
  AdoCmd.Parameters.ParamByName('AcceptedDate').DataType := ftString;
  AdoCmd.Parameters.ParamByName('CompleteDate').DataType := ftString;
  AdoCmd.Parameters.ParamByName('Comment').DataType := ftString;
  AdoCmd.Parameters.ParamByName('FailReason').DataType := ftString;
  AdoCmd.Parameters.ParamByName('UserID').DataType := ftString;
  AdoCmd.Parameters.ParamByName('UserDate').DataType := ftString;
  AdoCmd.Parameters.ParamByName('YN').DataType := ftString;
  DetSql:= 'Insert into Lab_Materialtests (ReportID,SerialID,TestID,Units,MPSMin,MPSMax,MCSMin,MCSMax,Result1,Result2,Result3,Result4,'+
           'Result5,Min,Max,Avg,Result,Remark,UserID,UserDate,YN)'+
           'values(:ReportID,:SerialID,:TestID,:Units,:MPSMin,:MPSMax,:MCSMin,:MCSMax,:Result1,:Result2,:Result3,:Result4,'+
           ':Result5,:Min,:Max,:Avg,:Result,:Remark,:UserID,:UserDate,:YN)';
  AdosCmd := TAdoCommand.Create(NIL);
  AdosCmd.Connection := ADOConnection3;
  AdosCmd.Parameters.Clear();
  AdosCmd.CommandText := DetSql;
  AdosCmd.CommandType := cmdText;
  AdosCmd.Parameters.ParseSQL( DetSql, True );
  AdosCmd.Parameters.ParamByName('ReportID').DataType := ftString;
  AdosCmd.Parameters.ParamByName('SerialID').DataType := ftString;
  AdosCmd.Parameters.ParamByName('TestID').DataType := ftString;
  AdosCmd.Parameters.ParamByName('Units').DataType := ftString;
  AdosCmd.Parameters.ParamByName('MPSMin').DataType := ftString;
  AdosCmd.Parameters.ParamByName('MPSMax').DataType := ftString;
  AdosCmd.Parameters.ParamByName('MCSMin').DataType := ftString;
  AdosCmd.Parameters.ParamByName('MCSMax').DataType := ftString;
  AdosCmd.Parameters.ParamByName('Result1').DataType := ftString;
  AdosCmd.Parameters.ParamByName('Result2').DataType := ftString;
  AdosCmd.Parameters.ParamByName('Result3').DataType := ftString;
  AdosCmd.Parameters.ParamByName('Result4').DataType := ftString;
  AdosCmd.Parameters.ParamByName('Result5').DataType := ftString;
  AdosCmd.Parameters.ParamByName('Min').DataType := ftString;
  AdosCmd.Parameters.ParamByName('Max').DataType := ftString;
  AdosCmd.Parameters.ParamByName('Avg').DataType := ftString;
  AdosCmd.Parameters.ParamByName('Result').DataType := ftString;
  AdosCmd.Parameters.ParamByName('Remark').DataType := ftString;
  AdosCmd.Parameters.ParamByName('UserID').DataType := ftString;
  AdosCmd.Parameters.ParamByName('UserDate').DataType := ftString;
  AdosCmd.Parameters.ParamByName('YN').DataType := ftString;
  //Loop°j°é
  P_Start:=GetTickCount();
    try
      AdoCmd.Connection.BeginTrans;
      AdosCmd.Connection.BeginTrans;
      try
        ADOQuery1.First;
        ADOQuery2.First;
        while not ADOQuery1.eof  do
        begin
          AdoCmd.Parameters.ParamByName('ReportID').Value := ADOQuery1.FieldByName('ReportID').AsString;
          AdoCmd.Parameters.ParamByName('GSBH').Value := main.edit2.text;
          AdoCmd.Parameters.ParamByName('ReqDate').Value := ADOQuery1.FieldByName('ReqDate').AsString;
          AdoCmd.Parameters.ParamByName('Factory').Value := ADOQuery1.FieldByName('Factory').AsString;
          AdoCmd.Parameters.ParamByName('Department').Value := ADOQuery1.FieldByName('Department').AsString;
          AdoCmd.Parameters.ParamByName('Result').Value := ADOQuery1.FieldByName('Result').AsString;
          AdoCmd.Parameters.ParamByName('Material0').Value := ADOQuery1.FieldByName('Material0').AsString;
          AdoCmd.Parameters.ParamByName('Material1').Value := ADOQuery1.FieldByName('Material1').AsString;
          AdoCmd.Parameters.ParamByName('Material2').Value := ADOQuery1.FieldByName('Material2').AsString;
          AdoCmd.Parameters.ParamByName('Material3').Value := ADOQuery1.FieldByName('Material3').AsString;
          AdoCmd.Parameters.ParamByName('Material4').Value := ADOQuery1.FieldByName('Material4').AsString;
          AdoCmd.Parameters.ParamByName('Color').Value := ADOQuery1.FieldByName('Color').AsString;
          AdoCmd.Parameters.ParamByName('Component').Value := ADOQuery1.FieldByName('Component').AsString;
          AdoCmd.Parameters.ParamByName('MaterialType').Value := ADOQuery1.FieldByName('MaterialType').AsString;
          AdoCmd.Parameters.ParamByName('Treatment').Value := ADOQuery1.FieldByName('Treatment').AsString;
          AdoCmd.Parameters.ParamByName('SupplierCode').Value := ADOQuery1.FieldByName('SupplierCode').AsString;
          AdoCmd.Parameters.ParamByName('Category').Value := ADOQuery1.FieldByName('Category').AsString;
          AdoCmd.Parameters.ParamByName('Season').Value := ADOQuery1.FieldByName('Season').AsString;
          AdoCmd.Parameters.ParamByName('SamplingFor').Value := ADOQuery1.FieldByName('SamplingFor').AsString;
          AdoCmd.Parameters.ParamByName('SKU').Value := ADOQuery1.FieldByName('SKU').AsString;
          AdoCmd.Parameters.ParamByName('SR').Value := ADOQuery1.FieldByName('SR').AsString;
          AdoCmd.Parameters.ParamByName('TestedBy').Value := ADOQuery1.FieldByName('TestedBy').AsString;
          AdoCmd.Parameters.ParamByName('Approvalby').Value := ADOQuery1.FieldByName('Approvalby').AsString;
          AdoCmd.Parameters.ParamByName('AcceptedDate').Value := ADOQuery1.FieldByName('AcceptedDate').AsString;
          AdoCmd.Parameters.ParamByName('CompleteDate').Value := ADOQuery1.FieldByName('CompleteDate').AsString;
          AdoCmd.Parameters.ParamByName('Comment').Value := ADOQuery1.FieldByName('Comment').AsString;
          AdoCmd.Parameters.ParamByName('FailReason').Value := ADOQuery1.FieldByName('FailReason').AsString;
          AdoCmd.Parameters.ParamByName('UserID').Value := main.edit1.text;
          AdoCmd.Parameters.ParamByName('UserDate').Value := formatdatetime('yyyy/MM/dd',NDate);
          AdoCmd.Parameters.ParamByName('YN').Value := '1';
          AdoCmd.Execute;
          ADOQuery1.Next;
        end;
        while not ADOQuery2.eof  do
        begin
          AdosCmd.Parameters.ParamByName('ReportID').Value := ADOQuery2.FieldByName('ReportID').AsString;
          AdosCmd.Parameters.ParamByName('SerialID').Value := ADOQuery2.FieldByName('SerialID').AsString;
          AdosCmd.Parameters.ParamByName('TestID').Value := ADOQuery2.FieldByName('TestID').AsString;
          AdosCmd.Parameters.ParamByName('Units').Value := ADOQuery2.FieldByName('Units').AsString;
          AdosCmd.Parameters.ParamByName('MPSMin').Value := ADOQuery2.FieldByName('MPSMin').AsString;
          AdosCmd.Parameters.ParamByName('MPSMax').Value := ADOQuery2.FieldByName('MPSMax').AsString;
          AdosCmd.Parameters.ParamByName('MCSMin').Value := ADOQuery2.FieldByName('MCSMin').AsString;
          AdosCmd.Parameters.ParamByName('MCSMax').Value := ADOQuery2.FieldByName('MCSMax').AsString;
          AdosCmd.Parameters.ParamByName('Result1').Value := ADOQuery2.FieldByName('Result1').AsString;
          AdosCmd.Parameters.ParamByName('Result2').Value := ADOQuery2.FieldByName('Result2').AsString;
          AdosCmd.Parameters.ParamByName('Result3').Value := ADOQuery2.FieldByName('Result3').AsString;
          AdosCmd.Parameters.ParamByName('Result4').Value := ADOQuery2.FieldByName('Result4').AsString;
          AdosCmd.Parameters.ParamByName('Result5').Value := ADOQuery2.FieldByName('Result5').AsString;
          AdosCmd.Parameters.ParamByName('Min').Value := ADOQuery2.FieldByName('Min').AsString;
          AdosCmd.Parameters.ParamByName('Max').Value := ADOQuery2.FieldByName('Max').AsString;
          AdosCmd.Parameters.ParamByName('Avg').Value := ADOQuery2.FieldByName('Avg').AsString;
          AdosCmd.Parameters.ParamByName('Result').Value := ADOQuery2.FieldByName('Result').AsString;
          AdosCmd.Parameters.ParamByName('Remark').Value := ADOQuery2.FieldByName('Remark').AsString;
          AdosCmd.Parameters.ParamByName('UserID').Value := main.edit1.text;
          AdosCmd.Parameters.ParamByName('UserDate').Value := formatdatetime('yyyy/MM/dd',NDate);
          AdosCmd.Parameters.ParamByName('YN').Value := '1';
          AdosCmd.Execute;
          ADOQuery2.Next;
        end
      finally
        AdoCmd.Connection.CommitTrans;
        AdosCmd.Connection.CommitTrans;
      end;
      except
       AdoCmd.Connection.RollbackTrans;
       AdosCmd.Connection.RollbackTrans;
    end;
    p_Cost:=GetTickCount()-p_Start;
    showmessage('spend time: '+format('%0.3n',[p_Cost/1000])+'s');
    close;
end;

procedure TImport_Excel_To_MsSQL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=Cafree;
end;

procedure TImport_Excel_To_MsSQL.FormDestroy(Sender: TObject);
begin
  Import_Excel_To_MsSQL:=nil;
end;

procedure TImport_Excel_To_MsSQL.FormCreate(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
end;

end.
