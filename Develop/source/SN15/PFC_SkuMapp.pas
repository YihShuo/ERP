unit PFC_SkuMapp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls, DB, DBTables;

type
  TPFC_SkuMap = class(TForm)
    Panel3: TPanel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    Panel1: TPanel;
    Label5: TLabel;
    QryBtn: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Panel2: TPanel;
    PFCDBGridEh: TDBGridEh;
    DS: TDataSource;
    PFCQuery: TQuery;
    LBQryCombo: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    PFCUpd: TUpdateSQL;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    LBComBo: TComboBox;
    Label2: TLabel;
    MArticleEdit: TEdit;
    MArtBtn: TSpeedButton;
    Label6: TLabel;
    Label7: TLabel;
    Button1: TButton;
    tmpQuery: TQuery;
    LBDesc: TLabel;
    CheckBox1: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure QryBtnClick(Sender: TObject);
    procedure MArtBtnClick(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure PFCDBGridEhEditButtonClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure PFCDBGridEhGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BB3Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure LBComBoChange(Sender: TObject);
  private
    { Private declarations }
    procedure SaveOrCancelAfter();
  public
    { Public declarations }
  end;

var
  PFC_SkuMap: TPFC_SkuMap;
  LBArray:array [0..7] of string=('Stitching','Cutting','Assembly','Packing', 'Conference', 'OutsoleProcess','PrintProcess','TestReport');
implementation
  uses SKUQryp,FunUnit, main1;
{$R *.dfm}

procedure TPFC_SkuMap.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if  SKUQry<>nil then
  begin
   SKUQry.Free;
   SKUQry:=nil;
  end;
  Action:=Cafree;
end;

procedure TPFC_SkuMap.FormDestroy(Sender: TObject);
begin
  PFC_SkuMap:=nil;
end;

procedure TPFC_SkuMap.QryBtnClick(Sender: TObject);
begin
  with PFCQuery do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select PFCSKUmap.*,xxzl.XieXing+''-''+xxzl.SheHao  as FolderNM from PFCSKUmap ');
    SQL.Add('left join xxzl on PFCSKUmap.MArticle=xxzl.ARTICLE ');
    SQL.Add('where  MArticle like ''%'+Edit2.Text+'%'' and ');
    SQL.Add('       DArticle like ''%'+Edit3.Text+'%'' ');
    if trim(LBQryCombo.Text)<>'' then
        SQL.Add('   and LB='''+trim(LBQryCombo.Text)+'''  ');
    if CheckBox1.Checked then
        SQL.Add('   and PFCSKUmap.UserID='''+main.Edit1.Text+'''');
    SQL.Add(' order by LB,MArticle,DArticle ');
    Active:=true;
  end;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  Panel1.Visible:=false;
end;

procedure TPFC_SkuMap.MArtBtnClick(Sender: TObject);
begin
   if SKUQry=nil then SKUQry:=TSKUQry.Create(self);
   SKUQry.setParam('Master','',''); //傳遞 Master Article給查詢視窗
   SKUQry.ShowModal;
end;

procedure TPFC_SkuMap.BB2Click(Sender: TObject);
begin
  Panel1.Visible:=false;
  Panel2.Visible:=true;
  //類別預設為第一個
  LBComBo.ItemIndex:=0;
  LBDesc.Caption:=LBArray[LBComBo.itemindex];
  //取消按鈕
  BB6.Enabled:=true;
end;

procedure TPFC_SkuMap.PFCDBGridEhEditButtonClick(Sender: TObject);
begin

  if PFCDBGridEh.Selectedfield.fieldname='DArticle'  then
  begin
    if SKUQry=nil then SKUQry:=TSKUQry.Create(self);
    SKUQry.setParam('Detail',MArticleEdit.Text,LBComBo.Text);
    SKUQry.ShowModal;
  end;
end;

procedure TPFC_SkuMap.Button1Click(Sender: TObject);
begin
  if  ((LBComBo.Text<>'') and (MArticleEdit.Text<>'') ) then
  begin
    with PFCQuery do
    begin
      requestlive:=true;
      cachedupdates:=true;
      insert;
      PFCQuery.FieldByName('LB').AsString:=LBComBo.Text;
      PFCQuery.FieldByName('MArticle').AsString:=MArticleEdit.Text;
      Post;
    end;
    PFCDBGridEh.columns[2].color:=clSkyBlue;
    PFCDBGridEh.columns[2].ButtonStyle:=cbsEllipsis;
    //鎖定MArticle選擇
    LBComBo.Enabled:=false;
    MArticleEdit.Enabled:=false;
    MArtBtn.Enabled:=false;
    //功能按鈕
    BB2.Enabled:=false;
    BB3.Enabled:=false;
    BB5.Enabled:=true;
    BB6.Enabled:=true;
  end else
  begin
    showmessage('Please Choice LB and MArticle!');
  end;
end;

procedure TPFC_SkuMap.BB1Click(Sender: TObject);
begin
  LBQryCombo.ItemIndex:=-1;
  Panel1.Visible:=true;
  CheckBox1.Checked:=true;
  //避免Panel2出現在Panel上面
  if Panel2.Visible=true then
  begin
    Panel2.Visible:=false;
    Panel2.Visible:=true;
  end;
end;

procedure TPFC_SkuMap.BB5Click(Sender: TObject);
var i,j:integer;
begin
    PFCQuery.First;
    for i:=1 to PFCQuery.RecordCount do
    begin
        case PFCQuery.updatestatus of
          usinserted:
          begin
            PFCQuery.Edit;
            PFCQuery.FieldByName('UserID').AsString:=main.edit1.text;
            PFCQuery.FieldByName('Userdate').Value:=Now();
            PFCQuery.FieldByName('YN').AsString:='1';
            PFCQuery.Post;
            //檢查是否重複 或DArticle不為空值
            if  PFCQuery.FieldByName('DArticle').AsString<>'' then
            begin
              with tmpQuery do
              begin
                Active:=false;
                SQL.Clear;
                SQL.Add('select LB,MArticle,DArticle from PFCSKUmap where ');
                SQL.Add(' LB='''+PFCQuery.FieldByName('LB').AsString+''' and ');
                SQL.Add(' MArticle='''+PFCQuery.FieldByName('MArticle').AsString+''' and ');
                SQL.Add(' DArticle='''+PFCQuery.FieldByName('DArticle').AsString+'''  ');
                Active:=true;
                if RecordCount=0 then
                begin
                  PFCUpd.Apply(ukinsert);
                end;
                Active:=false;
              end;
            end;
            //

          end;
          usmodified:
          begin
            if  PFCQuery.FieldByName('YN').AsString='0' then
            begin
              if   PFCQuery.FieldByName('UserID').AsString=main.Edit1.Text then
              begin
                //刪除
                PFCUpd.Apply(ukDelete);
              end else
              begin
                showmessage('It is not yours, can not modify.');
              end;
            end;
          end;
        end;
        PFCQuery.next;
    end;
  //儲存或取消最後動作
  SaveOrCancelAfter();
end;
//儲存或取消最後動作
procedure TPFC_SkuMap.SaveOrCancelAfter();
begin
  //
  with PFCQuery do
    begin
      active:=false;
      requestlive:=false;
      cachedupdates:=false;
      active:=true;
    end;
  //解除鎖定MArticle選擇
  LBComBo.Enabled:=true;
  MArticleEdit.Enabled:=true;
  MArticleEdit.Text:='';
  MArtBtn.Enabled:=true;
  Panel2.Visible:=false;
  //
  bb2.enabled:=true;
  bb3.enabled:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
  PFCDBGridEh.columns[2].color:=clwhite;
  PFCDBGridEh.columns[2].ButtonStyle:=cbsnone;
end;
procedure TPFC_SkuMap.BB6Click(Sender: TObject);
begin
  //儲存或取消最後動作
  SaveOrCancelAfter();
end;

procedure TPFC_SkuMap.PFCDBGridEhGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  with PFCQuery do
  begin
    if (FieldByName('YN').AsString='0') then
      PFCDBGridEh.canvas.font.color:=clred;
    if (FieldByName('YN').IsNull) then
      PFCDBGridEh.canvas.font.color:=clgreen;
  end;
end;

procedure TPFC_SkuMap.BB3Click(Sender: TObject);
begin
  //
  with PFCQuery do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
    Post;
  end;
  //功能按鈕
  BB2.Enabled:=false;
  BB5.Enabled:=true;
  BB6.Enabled:=true;

end;

procedure TPFC_SkuMap.BB7Click(Sender: TObject);
begin
  Close;
end;

procedure TPFC_SkuMap.LBComBoChange(Sender: TObject);
begin
  LBDesc.Caption:=LBArray[LBComBo.itemindex];
end;

end.
