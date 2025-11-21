unit LLMaterial1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, Spin, ExtCtrls,
  ComCtrls;

type
  TLLMaterial = class(TForm)
    Panel1: TPanel;
    Label5: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    EditArticle: TEdit;
    EditXieXing: TEdit;
    EditSheHao: TEdit;
    CbSize: TComboBox;
    EditMatNo: TEdit;
    Button1: TButton;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    QueryLLMaterial: TQuery;
    QueryLLMaterialXH: TStringField;
    QueryLLMaterialBWBH: TStringField;
    QueryLLMaterialBWMC: TStringField;
    QueryLLMaterialCLBH: TStringField;
    QueryLLMaterialYWPM: TStringField;
    QueryLLMaterialZWPM: TStringField;
    QueryLLMaterialDWBH: TStringField;
    QueryLLMaterialXTCC: TStringField;
    QueryLLMaterialCLSL: TFloatField;
    QueryLLMaterialKCQty: TCurrencyField;
    DSLLMaterial: TDataSource;
    GroupBox1: TGroupBox;
    RB1: TRadioButton;
    RB2: TRadioButton;
    BaseDate: TDateTimePicker;
    Button2: TButton;
    Label7: TLabel;
    ChildMatCK: TCheckBox;
    cb1: TComboBox;
    QueryLLMaterialDFL: TStringField;
    QueryLLMaterialXFL: TStringField;
    QueryLLMaterialDType: TStringField;
    qtypairs: TEdit;
    procedure FormDestroy(Sender: TObject);
    //procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    
  private
    LastMon:string;
    LastYear:string;
    STLastMonDate:string;
    EDLastMonDate:string;
    //
    LastMon2:string;
    LastYear2:string;
    //
    STDate:string;
    EDDate:string;
    { Private declarations }
    procedure GetDateParam();
    procedure CheckMaterailExists(KCQty:Double);
  public
    { Public declarations }
  end;

var
  LLMaterial: TLLMaterial;

implementation

uses main1,DelOther_D1,FunUnit;

{$R *.dfm}
//
function   DaysOfItsMonth(ADate:   TDateTime):   Word;
var
   Y,M,D:Word;
begin
    DecodeDate(ADate,Y,M,D);
    ADate:=EncodeDate(Y,M,1);
    Result:=Trunc(IncMonth(ADate,1)-ADate);
end;
procedure TLLMaterial.GetDateParam();
var myYear, myMonth, myDay : Word;
    tmpDate:TDate;
begin
  tmpDate:=incmonth(BaseDate.Date,-1);
  DecodeDate(tmpDate, myYear, myMonth, myDay);
  LastMon:=Format('%.2d',[myMonth]);
  LastYear:=Format('%.4d',[myYear]);
  STLastMonDate:=FormatDateTime('YYYY/MM/DD', EncodeDate(myYear, myMonth, 1));
  EDLastMonDate:=FormatDateTime('YYYY/MM/DD', EncodeDate(myYear, myMonth, DaysOfItsMonth(tmpDate)));

  tmpDate:=incmonth(BaseDate.Date,-2);
  DecodeDate(tmpDate, myYear, myMonth, myDay);
  LastMon2:=Format('%.2d',[myMonth]);
  LastYear2:=Format('%.4d',[myYear]);

  DecodeDate(BaseDate.Date, myYear, myMonth, myDay);
  STDate:=FormatDateTime('YYYY/MM/DD', EncodeDate(myYear, myMonth, 1));
  EDDate:=FormatDateTime('YYYY/MM/DD', BaseDate.Date);
end;
//
procedure TLLMaterial.FormDestroy(Sender: TObject);
begin
    LLMaterial:=nil;
end;

procedure TLLMaterial.Button1Click(Sender: TObject);
var BOM:string;
begin
if   editarticle.Text='' then
  begin
    showmessage('Vui long nhap Article truoc!');
    abort;
  end;
  if cbsize.Text='' then
  begin
      showmessage('Vui long chon Size truoc!');
      abort;
  end;
  //
  if RB1.Checked=true then
    BOM:='XTBWYL1'
  else
    BOM:='XTBWYL';
  //
  if ChildMatCK.Checked=true then
  begin
    with QueryLLMaterial do
    begin
      active:=false;
      sql.clear;
      sql.add('select XXZLS.XH, XXZLS.BWBH,XXZLS.BWMC,XXZLS.CLBH,xxZLS.DType,XXZLS.CLMC YWPM,XXBWFLs.DFL,XXBWFLs.XFL,');
      sql.add('xxzls.CLZW ZWPM,XXZLS.DWBH,'+BOM+'.XTCC,'+BOM+'.CLSL,KCZLS.KCQty');
      sql.Add('FROM (select XXZLS.XIEXING,xxzlS.SHEHAO,XXZLS.XH, XXZLS.BWBH,BWZL.ywsm BWMC,XXZLS.CLBH, ''As'' AS DType,CLZL.YWPM as CLMC, CLZL.ZWPM as CLZW,BWZL.zwsm  as BWZW,');
      sql.Add('       CLZL.DWBH,CLZL.LYCC,LBZLS.BZ,XXZLS.BWLB,ZSZL.ZSYWJC,XXZLS.LOSS,XXZLS.CLSL,XXZLS.CCQQ,XXZLS.CCQZ,CLZL.CLZMLB');
      sql.Add('       FROM XXZLS left join xxzl on xxzls.xiexing=xxzl.xiexing and xxzls.shehao=xxzl.shehao');
      sql.Add('       LEFT JOIN BWZL  ON XXZLS.BWBH = BWZL.bwdh');
      sql.Add('       LEFT JOIN CLZL   ON XXZLS.CLBH = CLZL.cldh');
      sql.Add('       LEFT JOIN LBZLS ON SUBSTRING(XXZLS.CLBH,1,1) = LBZLS.lbdh AND LBZLS.LB=''05''');
      sql.Add('       LEFT JOIN ZSZL on ZSZL.ZSDH=XXZLS.CSBH');
      sql.Add('       where XXZLS.XieXing like '''+editXieXing.text+'%'+''' and XXZLS.SheHao like '''+editSheHao.text+'%'+'''');
      sql.Add('       and xxzl.ARTICLE like '''+editArticle.text+'%'+'''');
      sql.Add('       GROUP BY XXZLS.XIEXING,xxzlS.SHEHAO,XXZLS.XH, XXZLS.BWBH,BWZL.ywsm,XXZLS.CLBH,CLZL.YWPM,CLZL.ZWPM ,BWZL.zwsm,CLZL.DWBH,CLZL.LYCC,LBZLS.BZ,XXZLS.BWLB,');
      sql.Add('       ZSZL.ZSYWJC,XXZLS.LOSS,XXZLS.CLSL,XXZLS.CCQQ,XXZLS.CCQZ,CLZL.CLZMLB');
      sql.Add('       union all');
      sql.Add('       select XXZLS.XIEXING,xxzlS.SHEHAO,XXZLS.XH, XXZLS.BWBH,BWZL.ywsm BWMC,clzhzl.cldh1,''Ex''AS DType,CLZL.YWPM as CLMC, CLZL.ZWPM as CLZW,BWZL.zwsm  as BWZW,');
      sql.Add('       CLZL.DWBH,CLZL.LYCC,LBZLS.BZ,XXZLS.BWLB,ZSZL.ZSYWJC,XXZLS.LOSS,(clzhzl.syl*XXZLS.CLSL)as CLSL,XXZLS.CCQQ,XXZLS.CCQZ,CLZL.CLZMLB');
      sql.Add('       FROM XXZLS inner join clzhzl on clzhzl.cldh=xxzls.clbh');
      sql.Add('       left join xxzl on xxzls.xiexing=xxzl.xiexing and xxzls.shehao=xxzl.shehao');
      sql.Add('       LEFT JOIN BWZL  ON XXZLS.BWBH = BWZL.bwdh');
      sql.Add('       LEFT JOIN CLZL   ON clzhzl.cldh1 = CLZL.cldh');
      sql.Add('       LEFT JOIN LBZLS ON SUBSTRING(XXZLS.CLBH,1,1) = LBZLS.lbdh AND LBZLS.LB=''05''');
      sql.Add('       LEFT JOIN ZSZL on ZSZL.ZSDH=XXZLS.CSBH');
      sql.Add('       where XXZLS.XieXing like '''+editXieXing.text+'%'+''' and XXZLS.SheHao like '''+editSheHao.text+'%'+''' and xxzl.ARTICLE like '''+editArticle.text+'%'+'''');
      sql.Add('       GROUP BY XXZLS.XIEXING,xxzlS.SHEHAO,XXZLS.XH, XXZLS.BWBH,BWZL.ywsm,clzhzl.cldh1,CLZL.YWPM, CLZL.ZWPM,BWZL.zwsm,CLZL.DWBH,CLZL.LYCC,LBZLS.BZ,XXZLS.BWLB,');
      sql.Add('       ZSZL.ZSYWJC,XXZLS.LOSS,(clzhzl.syl*XXZLS.CLSL),XXZLS.CCQQ,XXZLS.CCQZ,CLZL.CLZMLB)XXZLS');
      sql.add('left join xxzl on xxzls.xiexing=xxzl.xiexing and xxzls.shehao=xxzl.shehao');
      sql.add('Left join KCZLS on KCZLS.CLBH=XXZLS.CLBH and KCZLS.CKBH='+''''+DelOther_D.DelMas.fieldbyname('CKBH').value+'''');
      sql.add('left JOIN '+BOM+' on XXZLS.XieXing='+BOM+'.XieXing and XXZLS.SheHao='+BOM+'.SheHao and XXZLS.BWBH='+BOM+'.BWBH and '+BOM+'.XTCC='''+cbsize.text+'''');
      //20160310 add DFL-----
      sql.Add('left join XXBWFL on XXBWFL.BWBH=XXZLS.BWBH and XXBWFL.XieXing=XXZLS.XieXing');
      sql.Add('left join XXBWFLS on XXBWFL.FLBH=XXBWFLS.FLBH');
      sql.add('where XXZLS.XieXing like '''+editXieXing.text+'%'+''' and XXZLS.SheHao like '''+editSheHao.text+'%'+'''' );
      sql.Add(' and XXZL.ARTICLE like '''+editArticle.text+'%'+'''');
      sql.add(' and XXZLS.CLBH like '''+editMatNo.text+'%'+'''');
      if (cb1.Text<>'') then
      begin
        sql.Add('and XXBWFLS.DFL='''+cb1.Text+'''');
      end;
      sql.add('order by xxzls.xh,XXZLS.DType');
      //funcobj.WriteErrorLog(sql.Text);
      active:=true;
    end;
  end else
  begin
    with QueryLLMaterial do
    begin
      active:=false;
      sql.clear;
      sql.add('select XXZLS.XH, XXZLS.BWBH,BWZL.ywsm BWMC,''As'' as DType,XXZLS.CLBH,CLZL.YWPM,XXBWFLs.DFL, XXBWFLs.XFL,');
      sql.add('CLZL.ZWPM,CLZL.DWBH,'+BOM+'.XTCC,'+BOM+'.CLSL,KCZLS.KCQty');
      sql.add('FROM XXZLS left join xxzl on xxzls.xiexing=xxzl.xiexing and xxzls.shehao=xxzl.shehao');
      sql.add('LEFT JOIN BWZL ON XXZLS.BWBH = BWZL.bwdh');
      sql.add('LEFT JOIN CLZL ON XXZLS.CLBH = CLZL.cldh');
      sql.add('Left join KCZLS on KCZLS.CLBH=CLZL.CLDh and KCZLS.CKBH='+''''+DelOther_D.DelMas.fieldbyname('CKBH').value+'''');
      sql.add('left JOIN '+BOM+' on XXZLS.XieXing='+BOM+'.XieXing and XXZLS.SheHao='+BOM+'.SheHao and XXZLS.BWBH='+BOM+'.BWBH and '+BOM+'.XTCC='''+cbsize.text+'''');
      //20160310 add DFL-----
      sql.Add('left join XXBWFL on XXBWFL.BWBH=XXZLS.BWBH and XXBWFL.XieXing=XXZLS.XieXing');
      sql.Add('left join XXBWFLS on XXBWFL.FLBH=XXBWFLS.FLBH');
      sql.add('where XXZLS.XieXing like '''+editXieXing.text+'%'+''' and XXZLS.SheHao like '''+editSheHao.text+'%'+'''' );
      sql.Add(' and XXZL.ARTICLE like '''+editArticle.text+'%'+'''');
      sql.add(' and XXZLS.CLBH like '''+editMatNo.text+'%'+'''');
      if (cb1.Text<>'') then
      begin
        sql.Add('and XXBWFLS.DFL='''+cb1.Text+'''');
      end;
      sql.add('order by xxzls.xh');
      //funcobj.WriteErrorLog(sql.Text);
      active:=true;
    end;
  end;
  DBGridEh1.Columns[3].Visible:=ChildMatCK.Checked xor false;
end;
//
procedure TLLMaterial.CheckMaterailExists(KCQty:Double);
var IsFind:boolean;
begin
  IsFind:=false;
  DelOther_D.DelDet.First;
  while not  DelOther_D.DelDet.Eof do
  begin
    with DelOther_D.DelDet do
    begin
      if QueryLLMaterial.fieldbyname('CLBH').Value=DelOther_D.DelDet.FieldByName('CLBH').AsString then
      begin
        Edit;
        fieldbyname('TempQty').value:=formatfloat('#,##0.##',(fieldbyname('TempQty').value+(QueryLLMaterial.fieldbyname('CLSL').Value )* QtyPairs.text));
        //20150424記錄庫存數-檢查開發或技轉領用上限
        //fieldbyname('TQty').value:=KCQty;
        //
        Post;
        IsFind:=true;
        break;
      end;
      Next;
    end;
  end;
  if IsFind=false then
  begin
    with DelOther_D.DelDet do
    begin
      insert;
      fieldbyname('CLBH').Value:=QueryLLMaterial.fieldbyname('CLBH').Value;
      fieldbyname('YWPM').Value:=QueryLLMaterial.fieldbyname('YWPM').Value;
      fieldbyname('DWBH').value:=QueryLLMaterial.fieldbyname('DWBH').value;
      fieldbyname('TempQty').value:=formatfloat('#,##0.##',(QueryLLMaterial.fieldbyname('CLSL').Value )* QtyPairs.text);
      fieldbyname('CostID').value:='627';
      fieldbyname('DFL').value:='N';
      //20150424記錄庫存數-檢查開發或技轉領用上限
      //fieldbyname('TQty').value:=KCQty;
      post;
    end;
  end;
end;
//

procedure TLLMaterial.DBGridEh1DblClick(Sender: TObject);
var KCQty:Double;
begin
  //20150424檢查開發和技轉領料
  if (not QueryLLMaterial.Active) then
  begin
    abort;
  end;
  if (QueryLLMaterial.recordcount<1) then
  begin
    abort;
  end;
  if QueryLLMaterial.FieldByName('KCQty').value=0 then
  begin
    showmessage('Khong con ton kho, van can mo phieu sao?');
  end;
  CheckMaterailExists(KCQty);
  showmessage('Succeed.');
end;

procedure TLLMaterial.Button2Click(Sender: TObject);
var bm:Tbookmark;
    i:integer;
    bookmarklist:tbookmarklistEh;
begin
  //
  if messagedlg('Do you really want to copy these record?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    QueryLLMaterial.disablecontrols;
    bm:=QueryLLMaterial.getbookmark;
    bookmarklist:=DBGridEh1.selectedrows;
    if bookmarklist.count>0 then
    begin
      QueryLLMaterial.disablecontrols;
      bm:=QueryLLMaterial.getbookmark;
      bookmarklist:=DBGridEh1.selectedrows;
      if bookmarklist.count>0 then
      begin
      try
        for i:=0 to bookmarklist.count-1 do
        begin
          QueryLLMaterial.gotobookmark(pointer(bookmarklist[i]));
          CheckMaterailExists(0);
        end;
      finally
        begin
          QueryLLMaterial.gotobookmark(bm);
          QueryLLMaterial.freebookmark(bm);
          QueryLLMaterial.enablecontrols;
          showmessage('You have finish copy!');
        end;
      end;
      end;
    end;
    QueryLLMaterial.enablecontrols;
  end;
  //
end;
procedure TLLMaterial.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
