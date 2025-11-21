unit barcodepringP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,comobj,
  Dialogs, StdCtrls, Grids, DBGrids, DB, DBTables, ExtCtrls, OleServer,ShellApi;

type
  Tbarcodepring = class(TForm)
    Panel1: TPanel;
    cb1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    cb2: TComboBox;
    Label3: TLabel;
    Edit1: TEdit;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    qp: TQuery;
    qpWorkID: TStringField;
    qpSno: TIntegerField;
    qpMjbh: TStringField;
    qpColorNo: TStringField;
    qpSize: TStringField;
    qpQty: TIntegerField;
    qpNBarCode: TIntegerField;
    qpPbarcode: TIntegerField;
    qpEnglishName: TStringField;
    qpChinaNmae: TStringField;
    qpcodebar: TStringField;
    ProBARPrint: TTable;
    cbq: TQuery;
    ProBARPrintWORKID: TStringField;
    ProBARPrintCOLOR: TStringField;
    ProBARPrintMG: TStringField;
    ProBARPrintSIZE: TStringField;
    ProBARPrintSNO: TStringField;
    ProBARPrintCODEBAR: TStringField;
    ProBARPrintQTY: TSmallintField;
    ProBARPrintCTS: TSmallintField;
    CKB1: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure cb1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  barcodepring: Tbarcodepring;

implementation

uses ProductionPlanP;

{$R *.dfm}

procedure Tbarcodepring.FormCreate(Sender: TObject);
var i:integer;
begin
//設定CB1和CB2選擇SIZE 來源cbq
  cb1.Items.Clear;
  cb2.Items.Clear;
  with cbq do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select size from workplans');
    sql.add(' where workid=:workid');
    sql.add(' group by size');
    active:=true;
    First;
    for i:=1 to recordcount do
    begin
        cb1.Items.Add(fieldbyname('size').asstring);
        cb2.Items.Add(fieldbyname('size').asstring);
        next;
    end;
    cb1.ItemIndex:=0;
    cb2.ItemIndex:=0;
  end;
end;

procedure Tbarcodepring.cb1Change(Sender: TObject);
begin
//變更CB2從CB1開始
  cb2.Items.Clear;
  with cbq do
  begin
    locate('size',cb1.Text,[]);
    while not eof do
    begin
        cb2.Items.Add(fieldbyname('size').asstring);
        next;
    end;
    cb2.ItemIndex:=0;
  end;

end;

procedure Tbarcodepring.Button1Click(Sender: TObject);
var i,k:integer;
begin
with qp do
begin
  sql.Clear;
  sql.Add('select * from workplans ');
  sql.add('left join colorclass on workplans.colorno=colorclass.colorno ');
  sql.add(' where workid=:workid');
  if ckb1.Checked then
    sql.add(' and sno=2 ')
  else
    sql.add(' and sno=1 ');
  sql.add(' and workplans.size >='+''''+cb1.Text+'''');
  sql.add(' and workplans.size <='+''''+cb2.Text+'''');
  //memo1.text:=sql.text;
  //ExecSQL;
  active:=true;
end;
with ProBARPrint do
  begin
    active:=false;
    active:=true;
    while not eof do
      begin
        delete;
      end;
    insert;
    qp.First;
    while not qp.Eof do
      begin
      //尾數會造成多計迴圈要改
      k:=0;
      for i:=1 to strtoint(edit1.text) do
        begin
          if qp.fieldbyname('sno').Value = 1 then
          begin
            insert;
            fieldbyname('workid').Value:=qp.fieldbyname('workid').Value;
            fieldbyname('color').Value:=qp.fieldbyname('englishname').Value;
            fieldbyname('MG').Value:=qp.fieldbyname('mjbh').Value;
            fieldbyname('size').Value:=qp.fieldbyname('size').Value;
            fieldbyname('sno').Value:=qp.fieldbyname('sno').Value;
            fieldbyname('CTS').Value:=i;
            fieldbyname('CODEBAR').Value:=qp.fieldbyname('CODEBAR').Value+'-'+inttostr(qp.fieldbyname('PbarCODE').Value+i);
            fieldbyname('Qty').Value:=12;
            post;
          end
          else
            if (qp.fieldbyname('PbarCODE').Value=0) and (K=0) then
            begin
              insert;
              fieldbyname('workid').Value:=qp.fieldbyname('workid').Value;
              fieldbyname('color').Value:=qp.fieldbyname('englishname').Value;
              fieldbyname('MG').Value:=qp.fieldbyname('mjbh').Value;
              fieldbyname('size').Value:=qp.fieldbyname('size').Value;
              fieldbyname('sno').Value:=qp.fieldbyname('sno').Value;
              fieldbyname('CTS').Value:=i;
              fieldbyname('CODEBAR').Value:=qp.fieldbyname('CODEBAR').Value+'-'+inttostr(qp.fieldbyname('PbarCODE').Value+i);
              fieldbyname('Qty').Value:=qp.fieldbyname('Qty').Value;
              post;
              K:=1;
          end;
        end;
        qp.Next;
      end;
  end;

if ProBARPrint.RecordCount > 0 then
begin
ProBARPrint.active:=false;
if fileexists(extractfilepath(application.ExeName)+'R3CodeBar.btw') then
  begin
    ShellExecute(Handle,'open',PChar(ExtractFilePath(Application.ExeName)+'R3Codebar.btw'),nil,pchar(ExtractFilePath(Application.ExeName)),SW_SHOW);
    //close;
    with qp do
    begin
      ProBARPrint.active:=true;
      ProBARPrint.First;
      active:=false;
      SQL.Clear;
      for i:=1 to ProBARPrint.RecordCount do
      begin
        sql.Add('update workplans ');
        sql.Add('set pbarcode=pbarcode+1 ');
        sql.Add('where workid='+''''+ProBARPrint.fieldbyname('workid').Value+'''');
        sql.Add(' and sno='+''''+ProBARPrint.fieldbyname('sno').Value+'''');
        sql.Add(' and size='+''''+ProBARPrint.fieldbyname('size').Value+'''');
        sql.Add(' ');
        ProBARPrint.next;
      end;
      execsql;
    end;
  end
  else
    begin
      showmessage('Pls setup the program first. Abort');
    end;
end;
end;

procedure Tbarcodepring.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qp.Active:=false;
  ProBARPrint.Active:=false;
  action:=cafree;
  barcodepring:=nil;
end;

end.
