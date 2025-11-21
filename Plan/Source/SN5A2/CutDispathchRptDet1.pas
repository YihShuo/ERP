unit CutDispathchRptDet1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, Comobj, Menus;

type
  TCutDispathchRptDet = class(TForm)
    DBGridEh1: TDBGridEh;
    CutDisMasQry: TQuery;
    DS1: TDataSource;
    PopupMenu: TPopupMenu;
    Detail1: TMenuItem;
    CutDisMasQryDLNO: TStringField;
    CutDisMasQryZLBH: TStringField;
    CutDisMasQryBWBH: TStringField;
    CutDisMasQrySIZE: TStringField;
    CutDisMasQryCLBH: TStringField;
    CutDisMasQryQty: TIntegerField;
    CutDisMasQryXXCC: TStringField;
    CutDisMasQryCutNum: TIntegerField;
    CutDisMasQryokCutNum: TIntegerField;
    CutDisMasQryywpm: TStringField;
    CutDisMasQryzwpm: TStringField;
    CutDisMasQryywsm: TStringField;
    CutDisMasQryzwsm: TStringField;
    CutDisMasQryUSERDATE: TDateTimeField;
    procedure Detail1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CutDispathchRptDet: TCutDispathchRptDet;

implementation
  uses CutDispatchRpt1,FunUnit;
{$R *.dfm}


procedure TCutDispathchRptDet.Detail1Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin

 if  CutDisMasQry.active  then
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
          for  i:=0  to  CutDisMasQry.fieldcount-1   do
          begin
            eclApp.Cells(1,i+1):=CutDisMasQry.fields[i].FieldName;
          end;

          CutDisMasQry.First;
          j:=2;
          while   not   CutDisMasQry.Eof   do
          begin
            for   i:=0   to  CutDisMasQry.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=CutDisMasQry.Fields[i].Value;
            end;
            CutDisMasQry.Next;
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

procedure TCutDispathchRptDet.FormCreate(Sender: TObject);
begin
   CutDisMasQry.Active:=true;
end;

procedure TCutDispathchRptDet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TCutDispathchRptDet.FormDestroy(Sender: TObject);
begin
  CutDispathchRptDet:=nil;
end;

end.
