unit SOPDocuCopy1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, GridsEh, DBGridEh, ExtCtrls, DB, DBTables;

type
  TSOPDocuCopy = class(TForm)
    XXZL: TQuery;
    XXZLXieXing: TStringField;
    XXZLSheHao: TStringField;
    XXZLARTICLE: TStringField;
    XXZLXieMing: TStringField;
    DS1: TDataSource;
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Label6: TLabel;
    ArticleEdit: TEdit;
    Label3: TLabel;
    XieXingEdit: TEdit;
    Label4: TLabel;
    SheHaoEdit: TEdit;
    Label5: TLabel;
    JiJieEdit: TEdit;
    Button3: TButton;
    Button1: TButton;
    XXZLJiJie: TStringField;
    ExeQuery: TQuery;
    procedure FormDestroy(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    Org_XieXing,Org_SheHao:String;
    { Private declarations }
  public
    { Public declarations }
    procedure SetArticleInfo(XieXing,SheHao:String);
  end;

var
  SOPDocuCopy: TSOPDocuCopy;

implementation

{$R *.dfm}
  uses FunUnit;
procedure TSOPDocuCopy.FormDestroy(Sender: TObject);
begin
  SOPDocuCopy:=nil;
end;

procedure TSOPDocuCopy.SetArticleInfo(XieXing,SheHao:String);
begin
  Org_XieXing:=XieXing;
  Org_SheHao:=SheHao;
end;
procedure TSOPDocuCopy.Button3Click(Sender: TObject);
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

procedure TSOPDocuCopy.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TSOPDocuCopy.Button1Click(Sender: TObject);
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
      //先檢查是否有Orginal Article SOP檔案
      with ExeQuery do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('Select KT_SOPDoc.XieXing,KT_SOPDoc.SOPFile from KT_SOPDoc ');
        SQL.Add('where XieXing='''+Org_XieXing+''' and SheHao='''+Org_SheHao+''' and LB=''Cutting'' ');
        //funcObj.WriteErrorLog(sql.Text);
        Active:=true;
        if FieldByName('SOPFile').IsNull=false then IsSOPFile:=true else IsSOPFile:=false;
        Active:=false;
      end;
      try
        for i:=0 to bookmarklist.count-1 do
        begin
          XXZL.gotobookmark(pointer(bookmarklist[i]));
          with ExeQuery do
          begin
            Active:=false;
            SQL.Clear;
            SQL.Add('Delete from KT_SOPCut where XieXing='''+XXZL.FieldByName('XieXing').AsString+''' and SheHao='''+XXZL.FieldByName('SheHao').AsString+''' ');
            SQL.Add('   and KT_SOPCut.BWBH in  (select BWBH from KT_SOPCut where XieXing='''+Org_XieXing+''' and SheHao='''+Org_SheHao+''' and layer is not null  ); ');
            SQL.Add('Insert into KT_SOPCut ');
            SQL.Add('Select  '''+XXZL.FieldByName('XieXing').AsString+''' as XieXing,'''+XXZL.FieldByName('SheHao').AsString+''' as SheHao, BWBH, Type, piece, layer,joinnum, LRcom, PartID, IMGName, UserID,GetDate() as UserDate, YN ');
            SQL.Add('from KT_SOPCut where XieXing='''+Org_XieXing+''' and SheHao='''+Org_SheHao+''' and layer is not null ');
            SQL.Add('   and KT_SOPCut.BWBH in  (select BWBH from XXZLS where XXZLS.XieXing='''+XXZL.FieldByName('XieXing').AsString+''' and SheHao='''+XXZL.FieldByName('SheHao').AsString+''' ); ');
            //funcObj.WriteErrorLog(sql.Text);
            ExeQuery.ExecSQL;
            //
            Active:=false;
            SQL.Clear;
            SQL.Add('Delete from KT_SOPCutS where XieXing='''+XXZL.FieldByName('XieXing').AsString+''' and SheHao='''+XXZL.FieldByName('SheHao').AsString+''' ');
            SQL.Add('   and BWBH in  (select BWBH from KT_SOPCut where XieXing='''+Org_XieXing+''' and SheHao='''+Org_SheHao+''' and layer is not null  ); ');
            SQL.Add('Insert into KT_SOPCutS ');
            SQL.Add('Select  '''+XXZL.FieldByName('XieXing').AsString+''' as XieXing,'''+XXZL.FieldByName('SheHao').AsString+''' as SheHao, BWBH, SIZE, XXCC, UserID,GetDate() as  UserDate, YN ');
            SQL.Add('from KT_SOPCutS where XieXing='''+Org_XieXing+''' and SheHao='''+Org_SheHao+''' ');
            SQL.Add('   and KT_SOPCutS.BWBH in  (select BWBH from XXZLS where XXZLS.XieXing='''+XXZL.FieldByName('XieXing').AsString+''' and SheHao='''+XXZL.FieldByName('SheHao').AsString+''' ); ');
            //funcObj.WriteErrorLog(sql.Text);
            ExeQuery.ExecSQL;
            //
          end;
          if IsSOPFile=true then
          begin
            with ExeQuery do
            begin
              Active:=false;
              SQL.Clear;
              SQL.Add('Delete from KT_SOPDoc where XieXing='''+XXZL.FieldByName('XieXing').AsString+''' and SheHao='''+XXZL.FieldByName('SheHao').AsString+''' and LB=''Cutting'' ');
              SQL.Add('Insert into KT_SOPDoc ');
              SQL.Add('Select '''+XXZL.FieldByName('XieXing').AsString+''' as XieXing,'''+XXZL.FieldByName('SheHao').AsString+''' as SheHao,''Cutting'' as LB,null as SOPFile,'''+Org_XieXing+''' as ref_XieXing,'''+Org_SheHao+''' as SheHao, UserID,GetDate() as  UserDate, YN ');
              SQL.Add('from KT_SOPDoc where XieXing='''+Org_XieXing+''' and SheHao='''+Org_SheHao+'''  and LB=''Cutting''; ');
              //funcObj.WriteErrorLog(sql.Text);
              ExeQuery.ExecSQL;
            end;
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
