unit BarcodePrint1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,ShellApi,
  GridsEh, DBGridEh;

type
  Tbarcodeprint = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    cb1: TComboBox;
    cb2: TComboBox;
    Button1: TButton;
    CKB1: TCheckBox;
    SizeQry: TQuery;
    Query: TQuery;
    QueryWorkID: TStringField;
    QueryColorNo: TStringField;
    QuerySize: TStringField;
    QueryQty: TIntegerField;
    QueryNBarCode: TIntegerField;
    QueryPbarcode: TIntegerField;
    QueryEnglishName: TStringField;
    QueryChinaNmae: TStringField;
    Querycodebar: TStringField;
    DS1: TDataSource;
    DBGridEh1: TDBGridEh;
    QueryDDBH: TStringField;
    QueryPackage: TIntegerField;
    QuerySNO: TIntegerField;
    QueryMJBH: TStringField;
    QueryBtn: TButton;
    upwps: TUpdateSQL;
    QueryOKQTY: TIntegerField;
    QueryUserID: TStringField;
    QueryCreatDate: TDateTimeField;
    QueryUpdateDate: TDateTimeField;
    QueryLastUser: TStringField;
    QueryYN: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cb1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QueryBtnClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure InitUpdateSQL();
  public
    { Public declarations }
  end;

var
  barcodeprint: Tbarcodeprint;

implementation

uses main1, FunUnit;

{$R *.dfm}
procedure Tbarcodeprint.InitUpdateSQL();
begin
  upwps.ModifySQL.Clear;
  upwps.ModifySQL.Add('update '+main.LIY_DD+'.dbo.workplans');
  upwps.ModifySQL.Add('set  Pbarcode = :Pbarcode ');
  upwps.ModifySQL.Add('where WorkID = :OLD_WorkID and SNO = :OLD_SNO and Size = :OLD_Size and DDBH=:OLD_DDBH ');
end;
procedure Tbarcodeprint.Button1Click(Sender: TObject);
var i:integer;
    TxtFile:textfile;
    sline:string;
begin
  if Query.Active=false then
  begin
    Showmessage('Please Query first');
    Exit;
  end;
  try
    assignfile(TxtFile,ExtractFilePath(Application.ExeName)+'R3Code.txt');
    rewrite(TxtFile);
    //
    Query.First;
    while not Query.Eof do
    begin
      //尾數會造成多計迴圈要改
      for i:=1 to Query.FieldByName('NBarCode').Value do
      begin
          Query.Edit;
          Query.fieldbyname('PbarCODE').Value:=Query.fieldbyname('PbarCODE').Value+1;
          Query.Post;
          //
          sline:='';
          //sline:=sline+Query.fieldbyname('CODEBAR').Value+'-'+inttostr(Query.fieldbyname('PbarCODE').Value)+',';
          sline:=sline+Query.fieldbyname('CODEBAR').Value+','; //條碼重複
          sline:=sline+Query.fieldbyname('englishname').AsString+',';
          sline:=sline+inttostr(i)+',';
          if Query.fieldbyname('DDBH').AsString<>'ZZZZZZZZZZ' then
          begin
            sline:=sline+Query.fieldbyname('DDBH').AsString+',';
          end else
          begin
            sline:=sline+Query.fieldbyname('CODEBAR').AsString+',';
          end;
          sline:=sline+Query.fieldbyname('MJBH').AsString+',';
          sline:=sline+Query.fieldbyname('Package').AsString+',';
          sline:=sline+Query.fieldbyname('SIZE').AsString+',';
          sline:=sline+Query.fieldbyname('SNO').AsString+',';
          sline:=sline+Query.fieldbyname('workid').AsString;
          //funcObj.WriteErrorLog(fieldbyname('CODEBAR').AsString);
          append(TxtFile);
          writeln(TxtFile, sline);
      end;
      upwps.Apply(ukmodify);
      Query.Next;
    end;
    closefile(TxtFile);
  except
    begin
      closefile(TxtFile);
    end;
  end;
  if fileexists(extractfilepath(application.ExeName)+'R3CodeBar.btw') then
  begin
    ShellExecute(Handle,'open',PChar(ExtractFilePath(Application.ExeName)+'R3Codebar.btw'),nil,pchar(ExtractFilePath(Application.ExeName)),SW_SHOW);
  end else
  begin
    showmessage('Pls setup the program first. Abort');
  end;

end;

procedure Tbarcodeprint.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Query.Active:=false;
  action:=cafree;
end;

procedure Tbarcodeprint.cb1Change(Sender: TObject);
begin
  cb2.Items.Clear;
  with SizeQry do
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

procedure Tbarcodeprint.FormCreate(Sender: TObject);
var i:integer;
begin
  //設定CB1和CB2選擇SIZE 來源cbq
  cb1.Items.Clear;
  cb2.Items.Clear;
  with SizeQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select size from '+main.LIY_DD+'.dbo.workplans');
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
  InitUpdateSQL();
end;

procedure Tbarcodeprint.QueryBtnClick(Sender: TObject);
begin
  with Query do
  begin
    sql.Clear;
    sql.Add('select workplans.*,workplan.ColorNo,workplan.MJBH,colorclass.englishname,colorclass.ChinaNmae from '+main.LIY_DD+'.dbo.workplans workplans ');
    sql.Add('left join '+main.LIY_DD+'.dbo.workplan  workplan on workplan.WorkID=workplans.WorkID');
    sql.add('left join '+main.LIY_DD+'.dbo.colorclass colorclass on workplan.ColorNo=colorclass.ColorNo ');
    sql.add('where workplans.workid=:workid');
    if ckb1.Checked then
      sql.add(' and workplans.YN=2 ')
    else
      sql.add(' and workplans.YN=1 ');
    sql.add(' and workplans.size >='+''''+cb1.Text+'''');
    sql.add(' and workplans.size <='+''''+cb2.Text+'''');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure Tbarcodeprint.FormDestroy(Sender: TObject);
begin
  barcodeprint:=nil;
end;

end.
