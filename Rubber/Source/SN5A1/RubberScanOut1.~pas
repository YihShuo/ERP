unit RubberScanOut1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TRubberScanOut = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    CLassCB: TComboBox;
    UploadBtn: TButton;
    Button2: TButton;
    DBGrid1: TDBGrid;
    UpdateSQL1: TUpdateSQL;
    DS1: TDataSource;
    WorkScanQry: TQuery;
    UpdataQuery: TQuery;
    GroupBox1: TGroupBox;
    RadioQRCODE: TRadioButton;
    RadioButton2: TRadioButton;
    WorkScanQryCODEBAR: TStringField;
    WorkScanQryDDBH: TStringField;
    WorkScanQryXXCC: TStringField;
    WorkScanQryokCTS: TIntegerField;
    WorkScanQryoutCTS: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure UploadBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RubberScanOut: TRubberScanOut;

implementation

uses main1;

{$R *.dfm}

procedure TRubberScanOut.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TRubberScanOut.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key=#13) and (Length(edit1.text)>9) then
  begin
    if RadioQRCODE.Checked then
    begin
    WorkscanQry.Filter:= 'CODEBAR='''+edit1.text+'''';
    if NOT WorkScanQry.FindFirst then
    begin
      with UpdataQuery do
      begin
        active:=false;
        sql.Clear;
        sql.Add('SELECT [CODEBAR],[DDBH],[XXCC],[okCTS] ,[okCTS]-isnull([outCTS],0) [outCTS] FROM [dbo].[SMDDSS] ');
        sql.Add('where [okCTS]-isnull([outCTS],0)>0 and GXLB=''O''and [CODEBAR]='''+edit1.text+'''');
        active:=true;
        if UpdataQuery.RecordCount>0 then
        begin
          while NOT Eof Do
          begin
            WorkScanQry.Insert;
            WorkScanQry.fieldbyname('CODEBAR').value:=fieldbyname('CODEBAR').Value;
            WorkScanQry.fieldbyname('DDBH').value:=fieldbyname('DDBH').Value;
            WorkScanQry.fieldbyname('XXCC').value:=fieldbyname('XXCC').Value;
            WorkScanQry.fieldbyname('okCTS').value:=fieldbyname('okCTS').Value;
            WorkScanQry.fieldbyname('outCTS').value:=fieldbyname('outCTS').Value;
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
        sql.Add('SELECT [CODEBAR],[DDBH],[XXCC],[okCTS] ,[okCTS]-isnull([outCTS],0) [outCTS] FROM [dbo].[SMDDSS] ');
        sql.Add('where [okCTS]-isnull([outCTS],0)>0 and GXLB=''O''and [DDBH]='''+edit1.text+'''');
        active:=true;
        if UpdataQuery.RecordCount>0 then
        begin
          while NOT Eof Do
          begin
            WorkScanQry.Insert;
            WorkScanQry.fieldbyname('CODEBAR').value:=fieldbyname('CODEBAR').Value;
            WorkScanQry.fieldbyname('DDBH').value:=fieldbyname('DDBH').Value;
            WorkScanQry.fieldbyname('XXCC').value:=fieldbyname('XXCC').Value;
            WorkScanQry.fieldbyname('okCTS').value:=fieldbyname('okCTS').Value;
            WorkScanQry.fieldbyname('outCTS').value:=fieldbyname('outCTS').Value;
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

procedure TRubberScanOut.FormDestroy(Sender: TObject);
begin
   RubberScanOut:=nil;
end;

procedure TRubberScanOut.Button2Click(Sender: TObject);
begin
    WorkScanQry.Active:=false;
    WorkScanQry.Active:=true;
end;

procedure TRubberScanOut.FormCreate(Sender: TObject);
begin
 WorkScanQry.Active:=true;
end;

procedure TRubberScanOut.UploadBtnClick(Sender: TObject);
var i,Qty:integer;
var msg:string;
begin
  //
  if WorkScanQry.RecordCount>0 then
  begin
    msg:='';
    WorkScanQry.First;
    //檢查是否大於數量
    while Not WorkScanQry.Eof do
    begin
      Qty:=WorkScanQry.FieldByName('outCTS').Value;
      if (Qty>0) and (Qty>WorkScanQry.FieldByName('okCTS').Value) then
      begin
       msg:=msg+ WorkScanQry.FieldByName('CODEBAR').AsString+' Scan out outCTS error !;';
      end;
      WorkScanQry.Next;
    end;

    if msg='' then
    begin
      WorkScanQry.First;
      while Not WorkScanQry.Eof do
      begin
        Qty:=WorkScanQry.FieldByName('outCTS').Value;
        if (Qty>0) and (WorkScanQry.FieldByName('okCTS').Value>=Qty) then
        begin
          UpdataQuery.Active:=false;
          UpdataQuery.SQL.Clear;
          UpdataQuery.SQL.Add('update dbo.[SMDDSS] set [outCTS]=[outCTS]+'+inttostr(Qty)+',[ScanOutUserId] = '''+main.edit1.Text+''',[ScanOutDate] = GETDATE() ');
          UpdataQuery.SQL.Add('where [CODEBAR]='''+WorkScanQry.FieldByName('CODEBAR').AsString+'''; ');
          UpdataQuery.ExecSQL;
        end;
        WorkScanQry.Next;
      end;
      WorkScanQry.Active:=false;
      WorkScanQry.Active:=true;
    end
    else
    begin
      showmessage(msg);
    end;
    end;
  end;
end.
