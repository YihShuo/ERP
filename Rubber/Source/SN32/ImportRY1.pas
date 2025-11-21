unit ImportRY1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, ExtCtrls, GridsEh, DBGridEh;

type
  TImportRY = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    RYEdit: TEdit;
    DDZL: TQuery;
    DS1: TDataSource;
    gdMain: TDBGridEh;
    DDZLDDBH: TStringField;
    DDZLPairs: TIntegerField;
    DDZLShipDate: TDateTimeField;
    tmpQuery: TQuery;
    DDZLGSBH: TStringField;
    DDZLXieXing: TStringField;
    DDZLSheHao: TStringField;
    DDZLARTICLE: TStringField;
    DDZLCCGB: TStringField;
    DDZLKHBH: TStringField;
    DDZLBB: TStringField;
    DDZLKHPO: TStringField;
    DDZLVersion: TSmallintField;
    DDZLTrader: TStringField;
    DDZLTraderPO: TStringField;
    DDZLDDLB: TStringField;
    DDZLDDZT: TStringField;
    DDZLCPLB: TStringField;
    DDZLBZFS: TStringField;
    DDZLDest: TStringField;
    DDZLDDGB: TStringField;
    DDZLDDRQ: TDateTimeField;
    DDZLJYTJ: TStringField;
    DDZLFKTJ: TStringField;
    DDZLTotals: TFloatField;
    DDZLZLBH: TStringField;
    DDZLGSDH: TStringField;
    DDZLCFNO: TStringField;
    DDZLUSERID: TStringField;
    DDZLUSERDATE: TDateTimeField;
    DDZLDDCZ: TStringField;
    DDZLDDPACKSM: TStringField;
    DDZLLABELCHARGE: TFloatField;
    DDZLGender: TStringField;
    DDZLYN: TStringField;
    DDZLordermode: TStringField;
    DDZLBUYNO: TStringField;
    DDZLPairs2: TIntegerField;
    DDZLbalance2: TStringField;
    DDZLFlag: TStringField;
    DDZLRYTYPE: TStringField;
    chkOutsoleSize: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure gdMainDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImportRY: TImportRY;

implementation

uses OrderRubber1, main1, FunUnit;

{$R *.dfm}

procedure TImportRY.Button1Click(Sender: TObject);
begin
  //
  if RYEdit.Text='' then
  begin
    showmessage('Please key in RY ');
    abort;
  end;
  //
  with DDZL do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('SELECT top 10 * from '+main.LIY_ERP+'.dbo.DDZL DDZL where 1=1 ');
    SQL.Add('and DDZL.DDBH like '''+RYEdit.Text+'%'' ');
    SQL.Add('and DDZL.DDBH not in (SELECT A.DDBH from '+main.LIY_DD+'.dbo.DDZL A where A.CQDh='''+main.Edit2.Text+''' and A.DDBH like '''+RYEdit.Text+'%'' )');
    SQL.Add('order by DDBH');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //
end;

procedure TImportRY.gdMainDblClick(Sender: TObject);
begin
  //
  if DDZL.Active=true then
  begin
     if messagedlg('Input '+DDZL.FieldByName('DDBH').AsString,mtCustom, [mbYes,mbCancel], 0)= mrYes then
     begin
       //
       OrderRubber.PC1.TabIndex:=1;
       if OrderRubber.DDZLSQry.RequestLive then
       begin
         showmessage('Pls save Size data first.');
         abort;
       end;
       //
       with OrderRubber.DDZLQry do
       begin
         requestlive:=true;
         cachedupdates:=true;
         Insert;
         FieldByName('DDBH').Value:=DDZL.FieldByName('DDBH').Value;
         FieldByName('XieXing').Value:=DDZL.FieldByName('XieXing').Value;
         FieldByName('SheHao').Value:=DDZL.FieldByName('SheHao').Value;
         FieldByName('Article').Value:=DDZL.FieldByName('Article').Value;
         FieldByName('ZLBH1').Value:=DDZL.FieldByName('ZLBH').Value;
         FieldByName('DDLB').Value:=DDZL.FieldByName('DDLB').Value;
         FieldByName('KHDH').Value:= DDZL.FieldByName('GSBH').Value;
         FieldByName('KHPO').Value:=DDZL.FieldByName('DDBH').Value;
         FieldByName('CQDH').Value:=main.Edit2.Text;
         FieldByName('DDRQ').Value:=FormatDateTime('yyyyMMdd',Date());
         FieldByName('DDJQ').Value:=FormatDateTime('yyyyMMdd',DDZL.FieldByName('ShipDate').Value);
         FieldByName('Pairs').Value:=DDZL.FieldByName('Pairs').Value;
         FieldByName('QtySC').Value:='0.0';
         FieldByName('QtyCH').Value:='0.0';
         FieldByName('Totals').Value:='0.0';
         //
         FieldByName('ACCNO').Value:='ZZZZZZZZZZ';
         FieldByName('ZLBH').Value:='ZZZZZZZZZZZZZZZ';
         FieldByName('DDZT').Value:=DDZL.FieldByName('DDZT').Value;
         FieldByName('CQDH1').Value:=main.Edit2.Text;
         FieldByName('USERID').Value:=main.Edit1.Text;
         FieldByName('USERDate').Value:=FormatDateTime('yyyyMMdd',Date());
         FieldByName('QKBL').Value:='100.0';
         FieldByName('ZLBHA').Value:='ZZZZZZZZZZZZZZZ';
         Post;
       end;
       with tmpQuery do
       begin
         Active:=false;
         SQL.Clear;
         if chkOutsoleSize.Checked then
         begin
          sql.Add('select DDZLS.DDBH,XXGJS.GJCC as CC,DDZLs.Quantity');
          sql.Add('from '+main.LIY_ERP+'.dbo.DDZLS DDZLS left join '+main.LIY_ERP+'.dbo.DDZL DDZL on DDZLS.DDBH=DDZL.DDBH');
          sql.Add('left join '+main.LIY_ERP+'.dbo.XXGJS XXGJS on DDZL.XieXing=XXGJS.XieXing and XXGJS.GJLB=''101'' and XXGJS.XXCC=DDZLS.cc');
          sql.Add('where DDZLS.DDBH='''+DDZL.FieldByName('DDBH').Value+'''');
         end else
         begin
          SQL.Add('Select  * from '+main.LIY_ERP+'.dbo.DDZLS where DDBH='''+DDZL.FieldByName('DDBH').Value+''' ');
         end;
         Active:=true;
       end;
       OrderRubber.BB5.Enabled:=true;
       OrderRubber.BB6.Enabled:=true;
       OrderRubber.DDZLSQry.DataSource:=nil;
       //Size©ú²Ó
       with OrderRubber.DDZLSQry do
       begin
         requestlive:=true;
         cachedupdates:=true;
         while not tmpQuery.eof do
         begin
           insert;
           FieldByName('DDBH').Value:=tmpQuery.FieldByName('DDBH').Value;
           FieldByName('CQDH').Value:=main.Edit2.Text;
           FieldByName('CC').Value:=tmpQuery.FieldByName('CC').Value;
           FieldByName('QTY').Value:=tmpQuery.FieldByName('Quantity').Value;
           FieldByName('USERID').Value:=main.Edit1.Text;
           FieldByName('USERDate').Value:=FormatDateTime('yyyyMMdd',Date());
           FieldByName('XH').Value:='T';
           Post;
           tmpQuery.Next;
         end;
       end;
       tmpQuery.Active:=false;
       OrderRubber.BC5.Enabled:=true;
       OrderRubber.BC6.Enabled:=true;
       OrderRubber.ImportRYMode:=true;
       //
       Close;
     end;
  end;
  //
end;

procedure TImportRY.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

procedure TImportRY.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TImportRY.FormDestroy(Sender: TObject);
begin
  ImportRY:=nil;
end;

end.
