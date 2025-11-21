unit OrderCheckCus_Det1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, PrnDbgeh, DB, DBTables, GridsEh, DBGridEh,DBGridehImpExp;

type
  TOrderCheckCus_Det = class(TForm)
    DBGrid1: TDBGridEh;
    Query1: TQuery;
    Query1ZLBH: TStringField;
    Query1Ord_Size: TStringField;
    Query1XXCC: TStringField;
    Query1Tot_Qty: TFloatField;
    Query1C_Qty: TFloatField;
    Query1W_Qty: TFloatField;
    Query1Z_Qty: TFloatField;
    Query1O_Qty: TFloatField;
    Query1S_Qty: TFloatField;
    Query1A_Qty: TFloatField;
    Query1F_Qty: TFloatField;
    Query1A_Set: TFloatField;
    DataSource1: TDataSource;
    PrintDBGridEh1: TPrintDBGridEh;
    PopupMenu1: TPopupMenu;
    Print1: TMenuItem;
    Excel1: TMenuItem;
    SaveDialog1: TSaveDialog;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PrintDBGridEh1BeforePrint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderCheckCus_Det: TOrderCheckCus_Det;

implementation

uses OrderCheckCus1;

{$R *.dfm}

procedure TOrderCheckCus_Det.FormDestroy(Sender: TObject);
begin
OrderCheckCus_Det:=nil;
end;

procedure TOrderCheckCus_Det.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
query1.active:=false;
end;

procedure TOrderCheckCus_Det.PrintDBGridEh1BeforePrint(Sender: TObject);
begin
PrintDBGridEh1.SetSubstitutes(['%[Customer]',OrderCheckCus.query1.FieldByName('KFJC').asstring]);

end;

procedure TOrderCheckCus_Det.FormCreate(Sender: TObject);
begin

query1.Active:=true;
end;

procedure TOrderCheckCus_Det.Excel1Click(Sender: TObject);
  var   ExpClass:TDBGridEhExportClass;
          Ext:String;
  begin
          SaveDialog1.FileName   :=   '';
          if   SaveDialog1.Execute   then
          begin
              case   SaveDialog1.FilterIndex   of
                  1:   begin   ExpClass   :=   TDBGridEhExportAsText;   Ext   :=   'txt';   end;
                  2:   begin   ExpClass   :=   TDBGridEhExportAsCSV;   Ext   :=   'csv';   end;
                  3:   begin   ExpClass   :=   TDBGridEhExportAsHTML;   Ext   :=   'htm';   end;
                  4:   begin   ExpClass   :=   TDBGridEhExportAsRTF;   Ext   :=   'rtf';   end;
                  5:   begin   ExpClass   :=   TDBGridEhExportAsXLS;   Ext   :=   'xls';   end;
              else
                  ExpClass   :=   nil;   Ext   :=   '';
              end;
              if   ExpClass   <>   nil   then
              begin
                  if   UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3))   <>
                        UpperCase(Ext)   then
                      SaveDialog1.FileName   :=   SaveDialog1.FileName   +   '.'   +   Ext;
                  SaveDBGridEhToExportFile(ExpClass,dbgrid1,
                            SaveDialog1.FileName,true);
              end;
          end;


end;

procedure TOrderCheckCus_Det.Print1Click(Sender: TObject);
begin

printdbgrideh1.Preview;
end;

end.
