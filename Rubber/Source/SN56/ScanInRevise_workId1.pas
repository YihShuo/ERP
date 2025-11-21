unit ScanInRevise_workId1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TScanInRevise_workId = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Query: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    WorkIDEdit: TEdit;
    CKBox: TCheckBox;
    Button1: TButton;
    Label3: TLabel;
    MJCB: TComboBox;
    CLCB: TComboBox;
    Label4: TLabel;
    TmpQuery: TQuery;
    colorclassQry: TQuery;
    colorclassQryColorNo: TStringField;
    colorclassQryEnglishName: TStringField;
    Query1workid: TStringField;
    Query1SNO: TIntegerField;
    Query1SIZE: TStringField;
    Query1MJBH: TStringField;
    Query1colorno: TStringField;
    Query1englishname: TStringField;
    Query1qty: TIntegerField;
    Query1okqty: TIntegerField;
    Query1codebar: TStringField;
    Query1DDBH: TStringField;
    updSQL: TUpdateSQL;
    Label2: TLabel;
    DDBHEdit: TEdit;
    procedure QueryClick(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure CLCBChange(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    ColorNo:String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanInRevise_workId: TScanInRevise_workId;

implementation
  uses main1, ScanInRevise1, FunUnit;
{$R *.dfm}

procedure TScanInRevise_workId.QueryClick(Sender: TObject);
begin
  //
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select * from (');
    SQL.Add('Select workplans.workid,workplans.SNO,workplans.SIZE,workplan.MJBH,workplan.colorno,colorclass.englishname,workplans.qty, workplans.OKQty ,workplans.codebar,DDBH ');
    SQL.Add('from '+main.LIY_DD+'.dbo.workplans workplans ');
    SQL.Add('left join '+main.LIY_DD+'.dbo.workplan workplan on workplan.workID=workplans.workID ');
    SQL.Add('left join '+main.LIY_DD+'.dbo.colorclass colorclass on colorclass.colorno=workplan.colorno ');
    SQL.Add('where 1=1 ');
    if MJCB.Text <> 'ALL' then
    begin
      SQL.add('   and workplan.MJBH='+''''+MJCB.Text+'''');
    end;
    if CLCB.Text<>'ALL' then
    begin
      SQL.add('   and workplan.ColorNo='''+ColorNo+'''');
    end;
    if DDBHEdit.Text<>'' then
      SQL.Add('   and workplans.DDBH like '''+DDBHEdit.Text+'%'' ');
    SQL.Add('and workplans.workid like '''+WorkIDEdit.Text+'%'' ');
    SQL.Add(') workplans where 1=1 ');
    if CKBox.Checked=true then
    SQL.Add('and Qty > OKQty ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //
end;

procedure TScanInRevise_workId.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Query1.FieldByName('Qty').value<=Query1.FieldByName('OkQty').value then
  begin
    DBGridEh1.canvas.font.color:=clred;
  end;
end;

procedure TScanInRevise_workId.FormCreate(Sender: TObject);
var i:integer;
begin
  //
  with TmpQuery do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select bz2 as MJBH from '+main.LIY_DD+'.dbo.MJZL group by bz2');
    active:=true;
    mjcb.Items.Clear;
    MJCB.Items.Add('ALL');
    for i:=1 to recordcount do
    begin
      MJCB.Items.Add(fieldbyname('MJBH').asstring);
      next;
    end;
    active:=false;
  end;
  //
  with colorclassQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select Colorno,EnglishName from '+main.LIY_DD+'.dbo.Colorclass');
    Active:=true;
    CLCB.Items.Clear;
    CLCB.Items.Add('ALL');
    for i:=1 to recordcount do
    begin
      CLCB.Items.Add(fieldbyname('EnglishName').asstring);
      next;
    end;
    active:=true;
  end;
  //
end;

procedure TScanInRevise_workId.CLCBChange(Sender: TObject);
begin
  colorclassQry.locate('Englishname',clcb.Text,[]);
  colorno:=colorclassQry.fieldbyname('ColorNo').Value;
end;

procedure TScanInRevise_workId.DBGridEh1DblClick(Sender: TObject);
begin

  if Query1.FieldByName('Qty').Value-Query1.FieldByName('OkQty').Value>0 then
  begin
    ScanInRevise.workscanQry.Edit;
    ScanInRevise.workscanQry.FieldByName('workID').Value:=Query1.FieldByName('workID').Value;
    ScanInRevise.workscanQry.FieldByName('Class').Value:=0;
    ScanInRevise.workscanQry.FieldByName('MJBH').Value:=Query1.FieldByName('MJBH').Value;
    ScanInRevise.workscanQry.FieldByName('ColorNo').Value:=Query1.FieldByName('ColorNo').Value;
    ScanInRevise.workscanQry.FieldByName('colorname').Value:=Query1.FieldByName('englishname').Value;
    ScanInRevise.workscanQry.FieldByName('CodeBar').Value:=Query1.FieldByName('CodeBar').Value;
    ScanInRevise.workscanQry.FieldByName('SIZE').Value:=Query1.FieldByName('SIZE').Value;
    ScanInRevise.workscanQry.FieldByName('Qty').Value:=Query1.FieldByName('Qty').Value-Query1.FieldByName('OkQty').Value;
    ScanInRevise.workscanQry.FieldByName('DDBH').Value:=Query1.FieldByName('DDBH').Value;
    ScanInRevise.workscanQry.FieldByName('InOut').Value:='I';
    ScanInRevise.workscanQry.Post;
    //
    Query1.Edit;
    Query1.FieldByName('OKQty').Value:=Query1.FieldByName('Qty').Value-Query1.FieldByName('OkQty').Value;
    Query1.Post;
    ScanInRevise.workscanQry.Insert;
  end else
  begin
    Showmessage('Already in warehouse/Da nhap kho xong ');
  end;
  
end;

procedure TScanInRevise_workId.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TScanInRevise_workId.FormDestroy(Sender: TObject);
begin
  ScanInRevise:=nil;
end;

procedure TScanInRevise_workId.Button1Click(Sender: TObject);
var bm:Tbookmark;
    bookmarklist:tbookmarklistEh;
    i:integer;
begin

  Query1.disablecontrols;
  bm:=Query1.getbookmark;
  bookmarklist:=DBGridEh1.selectedrows;
  //
  if bookmarklist.count>0 then
  begin
      try
        for i:=0 to bookmarklist.count-1 do
        begin
          Query1.gotobookmark(pointer(bookmarklist[i]));
          //
          if Query1.FieldByName('Qty').Value-Query1.FieldByName('OkQty').Value>0 then
          begin
            ScanInRevise.workscanQry.Edit;
            ScanInRevise.workscanQry.FieldByName('workID').Value:=Query1.FieldByName('workID').Value;
            ScanInRevise.workscanQry.FieldByName('Class').Value:=0;
            ScanInRevise.workscanQry.FieldByName('MJBH').Value:=Query1.FieldByName('MJBH').Value;
            ScanInRevise.workscanQry.FieldByName('ColorNo').Value:=Query1.FieldByName('ColorNo').Value;
            ScanInRevise.workscanQry.FieldByName('colorname').Value:=Query1.FieldByName('englishname').Value;
            ScanInRevise.workscanQry.FieldByName('CodeBar').Value:=Query1.FieldByName('CodeBar').Value;
            ScanInRevise.workscanQry.FieldByName('SIZE').Value:=Query1.FieldByName('SIZE').Value;
            ScanInRevise.workscanQry.FieldByName('Qty').Value:=Query1.FieldByName('Qty').Value-Query1.FieldByName('OkQty').Value;
            ScanInRevise.workscanQry.FieldByName('DDBH').Value:=Query1.FieldByName('DDBH').Value;
            ScanInRevise.workscanQry.Post;
            //
            Query1.Edit;
            Query1.FieldByName('OKQty').Value:=Query1.FieldByName('Qty').Value-Query1.FieldByName('OkQty').Value;
            Query1.Post;
            ScanInRevise.workscanQry.Insert;
          end;
          //
        end;
      finally
        begin
          Query1.gotobookmark(bm);
          Query1.freebookmark(bm);
          Query1.enablecontrols;
          showmessage('You have finish copy!');
        end;
      end;
  end;
  //
end;

procedure TScanInRevise_workId.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
