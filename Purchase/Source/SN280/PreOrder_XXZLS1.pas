unit PreOrder_XXZLS1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, GridsEh, DBGridEh, DB, DBTables;

type
  TPreOrder_XXZLS = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    ArticleEdit: TEdit;
    CLBHEdit: TEdit;
    Label5: TLabel;
    Label2: TLabel;
    Query1: TQuery;
    DS1: TDataSource;
    Query1XieXing: TStringField;
    Query1SheHao: TStringField;
    Query1ARTICLE: TStringField;
    Query1BWBH: TStringField;
    Query1YWSM: TStringField;
    Query1ZWSM: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1DWBH: TStringField;
    Query1CQDH: TStringField;
    Query1CSBH: TStringField;
    Query1zsywjc: TStringField;
    Label1: TLabel;
    YWPMEdit: TEdit;
    Label3: TLabel;
    YWSMEdit: TEdit;
    Label4: TLabel;
    ZSYWJCEdit: TEdit;
    CSBHEdit: TEdit;
    Label6: TLabel;
    Button2: TButton;
    Query1CCQQ: TStringField;
    Query1CCQZ: TStringField;
    TWCKBox: TCheckBox;
    VNCKBox: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PreOrder_XXZLS: TPreOrder_XXZLS;

implementation
  uses PreOrder_Calcuate1, FunUnit, main1;
{$R *.dfm}

procedure TPreOrder_XXZLS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TPreOrder_XXZLS.FormDestroy(Sender: TObject);
begin
  PreOrder_XXZLS:=nil;
end;

procedure TPreOrder_XXZLS.Button1Click(Sender: TObject);
begin
   if ArticleEdit.Text='' then
   begin
     Showmessage('Please input Article ');
     Exit;
   end;
   //
   with Query1 do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('');
     //
     SQL.Add('Select XXZL.XieXing,XXZL.SheHao,XXZL.ARTICLE,');
     SQL.Add('       XXZL.XieXing, XXZL.SheHao, XXZLS.BWBH, BWZL.YWSM, BWZL.ZWSM ,XXZLS.CLBH,CLZL.YWPM,CLZL.ZWPM,');
     SQL.Add('       CLZL.DWBH,CLZL.CQDH,XXZLS.CSBH,ZSZL.zsywjc,XXZLS.CCQQ,XXZLS.CCQZ');
     SQL.Add('from XXZLS');
     SQL.Add('Left join XXZL on XXZL.XieXing=XXZLS.XieXing and XXZL.SheHao=XXZLS.SheHao');
     SQL.Add('Left join bwzl on bwzl.bwdh=XXZLS.BWBH');
     SQL.Add('left join clzl on clzl.CLDH=XXZLS.CLBH');
     SQL.Add('left join zszl on zszl.zsdh=XXZLS.CSBH');
     SQL.Add('where XXZL.ARTICLE like '''+ArticleEdit.Text+'%'' ');
     if CLBHEdit.Text<>'' then
     SQL.Add(' and XXZLS.CLBH like '''+CLBHEdit.Text+'%'' ');
     if YWSMEdit.Text<>'' then
     SQL.Add(' and bwzl.YWSM like ''%'+YWSMEdit.Text+'%'' ');
     if YWPMEdit.Text<>'' then
     SQL.Add(' and clzl.YWPM like ''%'+YWPMEdit.Text+'%'' ');
     if CSBHEdit.Text<>'' then
     SQL.Add(' and XXZLS.CSBH like ''%'+CSBHEdit.Text+'%'' ');
     if ZSYWJCEdit.Text<>'' then
     SQL.Add(' and ZSZL.zsywjc like ''%'+ZSYWJCEdit.Text+'%'' ');
      if ((TWCKBox.Checked=true) and (VNCKBox.Checked=false)) then
         sql.add(' and CLZL.CQDH=''TW''');
      if ((TWCKBox.Checked=false) and (VNCKBox.Checked=true)) then
         sql.add(' and CLZL.CQDH=''VN''');
     //funcObj.WriteErrorLog(sql.Text);
     Active:=true;
     //
   end;
   //
end;

procedure TPreOrder_XXZLS.DBGridEh1DblClick(Sender: TObject);
begin
  //
  with PreOrder_Calcuate.qryYGZLS do
  begin
    Edit;
    FieldByName('Article').Value:=Query1.FieldByName('Article').Value;
    FieldByName('XieXing').Value:=Query1.FieldByName('XieXing').Value;
    FieldByName('SheHao').Value:=Query1.FieldByName('SheHao').Value;
    FieldByName('BWBH').Value:=Query1.FieldByName('BWBH').Value;
    FieldByName('YWSM').Value:=Query1.FieldByName('YWSM').Value;
    FieldByName('ZWSM').Value:=Query1.FieldByName('ZWSM').Value;
    FieldByName('YWPM').Value:=Query1.FieldByName('YWPM').Value;
    FieldByName('ZWPM').Value:=Query1.FieldByName('ZWPM').Value;
    FieldByName('CLBH').Value:=Query1.FieldByName('CLBH').Value;
    FieldByName('DWBH').Value:=Query1.FieldByName('DWBH').Value;
    FieldByName('CQDH').Value:=Query1.FieldByName('CQDH').Value;
    FieldByName('CSBH').Value:=Query1.FieldByName('CSBH').Value;
    FieldByName('ZSYWJC').Value:=Query1.FieldByName('ZSYWJC').Value;
    Post;
    Insert;
  end;
  //
end;

procedure TPreOrder_XXZLS.Button2Click(Sender: TObject);
var bm:Tbookmark;
    i:integer;
    bookmarklist:TbookmarklistEH;
begin
  if messagedlg('Do you really want to copy these record?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    if (not query1.Active) then
    begin
      abort;
    end;
    if (Query1.recordcount<1) then
    begin
      abort;
    end;

    query1.disablecontrols;
    bm:=query1.getbookmark;
    bookmarklist:=DBGridEh1.selectedrows;
    if bookmarklist.count>0 then
    begin
      try
        for i:=0 to bookmarklist.count-1 do
        begin
          query1.gotobookmark(pointer(bookmarklist[i]));
          with PreOrder_Calcuate.qryYGZLS do
          begin
            Edit;
            FieldByName('Article').Value:=Query1.FieldByName('Article').Value;
            FieldByName('XieXing').Value:=Query1.FieldByName('XieXing').Value;
            FieldByName('SheHao').Value:=Query1.FieldByName('SheHao').Value;
            FieldByName('BWBH').Value:=Query1.FieldByName('BWBH').Value;
            FieldByName('YWSM').Value:=Query1.FieldByName('YWSM').Value;
            FieldByName('ZWSM').Value:=Query1.FieldByName('ZWSM').Value;
            FieldByName('YWPM').Value:=Query1.FieldByName('YWPM').Value;
            FieldByName('ZWPM').Value:=Query1.FieldByName('ZWPM').Value;
            FieldByName('CLBH').Value:=Query1.FieldByName('CLBH').Value;
            FieldByName('DWBH').Value:=Query1.FieldByName('DWBH').Value;
            FieldByName('CQDH').Value:=Query1.FieldByName('CQDH').Value;
            FieldByName('CSBH').Value:=Query1.FieldByName('CSBH').Value;
            FieldByName('ZSYWJC').Value:=Query1.FieldByName('ZSYWJC').Value;
            Post;
            Insert;
          end;
        end; //end for loop
      finally
        begin
          query1.gotobookmark(bm);
          query1.freebookmark(bm);
          query1.enablecontrols;
          showmessage('You have finish copy!');
        end;
      end;
    end;
  end;

end;

procedure TPreOrder_XXZLS.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
