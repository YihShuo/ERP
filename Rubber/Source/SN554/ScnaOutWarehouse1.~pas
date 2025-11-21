unit ScnaOutWarehouse1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBTables, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TScnaOutWarehouse = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    CBX1: TComboBox;
    UploadBtn: TButton;
    Button2: TButton;
    UpdateSQL1: TUpdateSQL;
    DS1: TDataSource;
    WorkScanQry: TQuery;
    UpdataQuery: TQuery;
    WorkScanQryYSBH: TStringField;
    WorkScanQryArticle: TStringField;
    WorkScanQryXieMing: TStringField;
    WorkScanQryQty: TIntegerField;
    WorkScanQrySCCX: TStringField;
    WorkScanQryQRCode: TStringField;
    WorkScanQryYSSM: TStringField;
    WorkScanQryROut: TIntegerField;
    Label2: TLabel;
    WorkScanQryDDMH: TStringField;
    GroupBox1: TGroupBox;
    RadioQRCODE: TRadioButton;
    RadioButton2: TRadioButton;
    DBGridEh1: TDBGridEh;
    WorkScanQrySuppName: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure UploadBtnClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScnaOutWarehouse: TScnaOutWarehouse;

implementation

uses main1;

{$R *.dfm}

procedure TScnaOutWarehouse.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TScnaOutWarehouse.FormDestroy(Sender: TObject);
begin
     ScnaOutWarehouse:=nil;
end;

procedure TScnaOutWarehouse.Edit1KeyPress(Sender: TObject; var Key: Char);
var SCANDate:String;
    BarCode:string;
    Qty:integer;
begin
  if (key=#13) and (Length(edit1.text)>9) then
  begin
    if RadioQRCODE.Checked then
    begin
    WorkscanQry.Filter:= 'QRCode='''+edit1.text+'''';
    if NOT WorkScanQry.FindFirst then
    begin
      with UpdataQuery do
      begin
        active:=false;
        sql.Clear;
        sql.Add('SELECT [YSBH],[Article],[XieMing],[Qty],[SCCX],[QRCode],[YSSM],[Qty]-[ROut] AS [ROut],');
        sql.Add('REPLACE((select top 1 DDMH FROM [dbo].xxzl where XieMing=a.[XieMing]),''HOKA-'','''') as DDMH, SuppName');
        sql.Add(' FROM '+main.LIY_DD+'.[dbo].[SMDDScanOut] a');
        sql.Add('where [QRCode]='''+edit1.text+''' and [GXLB]=''O'' and [Qty]>0 and [ROut]<[Qty] and WIn>0');
        active:=true;
        if UpdataQuery.RecordCount>0 then
        begin
          while NOT Eof Do
          begin
            WorkScanQry.Insert;
            WorkScanQry.fieldbyname('YSBH').value:=fieldbyname('YSBH').Value;
            WorkScanQry.fieldbyname('Article').value:=fieldbyname('Article').Value;
            WorkScanQry.fieldbyname('XieMing').value:=fieldbyname('XieMing').Value;
            WorkScanQry.fieldbyname('Qty').value:=fieldbyname('Qty').Value;
            WorkScanQry.fieldbyname('SCCX').value:=fieldbyname('SCCX').Value;
            WorkScanQry.fieldbyname('QRCode').value:=fieldbyname('QRCode').Value;
            WorkScanQry.fieldbyname('YSSM').value:=fieldbyname('YSSM').Value;
            WorkScanQry.fieldbyname('ROut').value:=fieldbyname('ROut').Value;
            WorkScanQry.fieldbyname('DDMH').value:=fieldbyname('DDMH').Value;
            WorkScanQry.fieldbyname('SuppName').value:=fieldbyname('SuppName').Value;
            WorkScanQry.post;
            Next;
          end;
        end
        else
        begin
          showmessage('Don hang khong co tua,'+#39+'  xin gap can bo doi tem ma vach');
        end;
      end;
    end
    else
    begin
      showmessage('Don hang khong co tua,'+#39+'  xin gap can bo doi tem ma vach');
    end;
    end
    else
    begin
           with UpdataQuery do
      begin
        active:=false;
        sql.Clear;
        sql.Add('SELECT [YSBH],[Article],[XieMing],[Qty],[SCCX],[QRCode],[YSSM],[Qty]-[ROut] AS [ROut],');
        sql.Add('REPLACE((select top 1 DDMH FROM [dbo].xxzl where XieMing=a.[XieMing]),''HOKA-'','''') as DDMH, SuppName');
        sql.Add(' FROM '+main.LIY_DD+'.[dbo].[SMDDScanOut] a');
        sql.Add('where [YSBH]='''+edit1.text+''' and [GXLB]=''O'' and [Qty]>0 and [ROut]<[Qty] order by [YSBH],[Article],[XieMing],[SCCX]');
        active:=true;
        if UpdataQuery.RecordCount>0 then
        begin
          while NOT Eof Do
          begin
            WorkScanQry.Insert;
            WorkScanQry.fieldbyname('YSBH').value:=fieldbyname('YSBH').Value;
            WorkScanQry.fieldbyname('Article').value:=fieldbyname('Article').Value;
            WorkScanQry.fieldbyname('XieMing').value:=fieldbyname('XieMing').Value;
            WorkScanQry.fieldbyname('Qty').value:=fieldbyname('Qty').Value;
            WorkScanQry.fieldbyname('SCCX').value:=fieldbyname('SCCX').Value;
            WorkScanQry.fieldbyname('QRCode').value:=fieldbyname('QRCode').Value;
            WorkScanQry.fieldbyname('YSSM').value:=fieldbyname('YSSM').Value;
            WorkScanQry.fieldbyname('ROut').value:=fieldbyname('ROut').Value;
            WorkScanQry.fieldbyname('DDMH').value:=fieldbyname('DDMH').Value;
            WorkScanQry.fieldbyname('SuppName').value:=fieldbyname('SuppName').Value;
            WorkScanQry.post;
            Next;
          end;
        end
        else
        begin
          showmessage('Don hang khong co tua,'+#39+'  xin gap can bo doi tem ma vach');
        end;
      end;
    end;
    Edit1.Text:='';
  end;
end;

procedure TScnaOutWarehouse.FormCreate(Sender: TObject);
begin
  WorkScanQry.Active:=true;
end;

procedure TScnaOutWarehouse.UploadBtnClick(Sender: TObject);
var i,Qty:integer;
begin
  //
  if WorkScanQry.RecordCount>0 then
  begin
    WorkScanQry.First;
    while Not WorkScanQry.Eof do
    begin
      Qty:=WorkScanQry.FieldByName('Rout').Value;
      //檢查是否大於數量
      if (Qty>0) and (WorkScanQry.FieldByName('Qty').Value>=Qty) then
      begin
        UpdataQuery.Active:=false;
        UpdataQuery.SQL.Clear;
        UpdataQuery.SQL.Add('update '+main.LIY_DD+'.dbo.[SMDDScanOut] set [ROut]=Qty,[OUtUser] = '''+main.edit1.Text+''',[OutDate] = GETDATE(), [SuppName]= '''+CBX1.Text+''' ');
        UpdataQuery.SQL.Add('where [QRCode]='''+WorkScanQry.FieldByName('QRCode').AsString+'''; ');
        UpdataQuery.ExecSQL();
        //變更庫存量
        (*UpdataQuery.SQL.Add('update '+main.LIY_DD+'.dbo.workplans set OutQty=OutQty+'+inttostr(Qty)+' ');
        UpdataQuery.SQL.Add('where [WorkID]=(SELECT top 1 [WorkID] FROM [TB_DD].[dbo].[WorkPlan] where [MJBH]='''+WorkScanQry.FieldByName('DDMH').AsString+''') AND SIZE='''+WorkScanQry.FieldByName('SCCX').AsString+'''; ');
        showmessage(UpdataQuery.SQL.Text) ;
        UpdataQuery.ExecSQL(); *)
      end;
      WorkScanQry.Next;
    end;
    WorkScanQry.Active:=false;
    WorkScanQry.Active:=true;
  end;
  //
end;

procedure TScnaOutWarehouse.Button2Click(Sender: TObject);
begin
   WorkScanQry.Active:=false;
   WorkScanQry.Active:=true;
end;

end.
