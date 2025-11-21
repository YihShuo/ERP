unit SOPProcessFlow_Copy1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TSOPProcessFlow_Copy = class(TForm)
    Panel1: TPanel;
    Label6: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ArticleEdit: TEdit;
    XieXingEdit: TEdit;
    SheHaoEdit: TEdit;
    JiJieEdit: TEdit;
    Button3: TButton;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    XXZL: TQuery;
    XXZLXieXing: TStringField;
    XXZLSheHao: TStringField;
    XXZLARTICLE: TStringField;
    XXZLXieMing: TStringField;
    XXZLJiJie: TStringField;
    DS1: TDataSource;
    ExeQuery: TQuery;
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    Org_XieXing,Org_SheHao:String;
    { Private declarations }
  public
    { Public declarations }
    procedure SetArticleInfo(XieXing,SheHao:String);
  end;

var
  SOPProcessFlow_Copy: TSOPProcessFlow_Copy;

implementation
  uses main1, FunUnit;
{$R *.dfm}

procedure TSOPProcessFlow_Copy.SetArticleInfo(XieXing,SheHao:String);
begin
  Org_XieXing:=XieXing;
  Org_SheHao:=SheHao;
end;
procedure TSOPProcessFlow_Copy.Button3Click(Sender: TObject);
begin
  with XXZL do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select XXZL.XieXing,XXZL.SheHao,XXZL.Article,XXZL.XieMing,XXZL.JiJie from XXZL ');
    SQL.Add('where  XXZL.ARTICLE like ''%'+ArticleEdit.Text+'%'' ');
    if XieXingEdit.Text<>'' then
    SQL.Add(' and XXZL.XieXIng like '''+XieXingEdit.Text+'%'' ');
    if SheHaoEdit.Text<>'' then
    SQL.Add(' and XXZL.SheHao like '''+SheHaoEdit.Text+'%'' ');
    if JIJIEEdit.Text<>'' then
    SQL.Add(' and XXZL.JiJIE like '''+JIJIEEdit.Text+'%'' ');
    SQL.add('and not (XieXing='''+Org_XieXing+''' and SheHao='''+Org_SheHao+''') ' );
    SQL.Add('order by XXZL.XieXing,XXZL.SheHao ');
    //FuncObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

procedure TSOPProcessFlow_Copy.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TSOPProcessFlow_Copy.FormDestroy(Sender: TObject);
begin
  SOPProcessFlow_Copy:=nil;
end;

procedure TSOPProcessFlow_Copy.Button1Click(Sender: TObject);
var bm:Tbookmark;
    i:integer;
    bookmarklist:tbookmarklistEh;
    IsSOPFile:boolean;
begin


 if messagedlg('Do you want to Coyp Article ?',mtCustom,[mbYes ,mbCancel], 0)=mrYes then
 begin
    XXZL.disablecontrols;
    bm:=XXZL.getbookmark;
    bookmarklist:=DBGridEh1.selectedrows;
    if bookmarklist.count>0 then
    begin
      try
        for i:=0 to bookmarklist.count-1 do
        begin
          XXZL.gotobookmark(pointer(bookmarklist[i]));
          with ExeQuery do
          begin
            Active:=false;
            SQL.Clear;
            SQL.Add('Delete from KT_SOPCutS_GC where XieXing='''+XXZL.FieldByName('XieXing').AsString+''' and SheHao='''+XXZL.FieldByName('SheHao').AsString+''' ');
            SQL.Add('Insert into KT_SOPCutS_GC ');
            SQL.Add('Select '''+XXZL.FieldByName('XieXing').AsString+''' as XieXing,'''+XXZL.FieldByName('SheHao').AsString+''' as SheHao, GCBWDH, Levels,'''+main.Edit1.Text+''' as UserID,GetDate() as UserDate, YN ');
            SQL.Add('from KT_SOPCutS_GC where XieXing='''+Org_XieXing+''' and SheHao='''+Org_SheHao+'''  ');
            funcObj.WriteErrorLog(sql.Text);
            ExeQuery.ExecSQL;
            //
            Active:=false;
            SQL.Clear;
            SQL.Add('Delete from KT_SOPCutS_GCS where XieXing='''+XXZL.FieldByName('XieXing').AsString+''' and SheHao='''+XXZL.FieldByName('SheHao').AsString+''' ');
            SQL.Add('Insert into KT_SOPCutS_GCS ');
            SQL.Add('Select '''+XXZL.FieldByName('XieXing').AsString+''' as XieXing,'''+XXZL.FieldByName('SheHao').AsString+''' as SheHao, GCBWDH, bwdh, UserID,GetDate() as  UserDate, YN ');
            SQL.Add('from KT_SOPCutS_GCS where XieXing='''+Org_XieXing+''' and SheHao='''+Org_SheHao+''' ');
            SQL.Add('   and ( KT_SOPCutS_GCS.BWDH in  (select BWBH from XXZLS where XXZLS.XieXing='''+XXZL.FieldByName('XieXing').AsString+''' and SheHao='''+XXZL.FieldByName('SheHao').AsString+''' )');
            SQL.Add('         or  KT_SOPCutS_GCS.BWDH like ''0G%'') ');
            funcObj.WriteErrorLog(sql.Text);
            ExeQuery.ExecSQL;
            //
          end;

        end;
      finally
        XXZL.gotobookmark(bm);
        XXZL.freebookmark(bm);
        XXZL.enablecontrols;
        showmessage('You have finish copy!');
      end;
    end;
    Close;
  end;

end;

end.
