unit JGMatQtyClassifyp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBTables, DB, Mask, DBCtrls,
  GridsEh, DBGridEh ,ExtraMaterial1;

type
  TJGMatQtyClassify = class(TForm)
    Panel1: TPanel;
    BB5: TBitBtn;
    BB6: TBitBtn;
    DC_TLFLMas: TQuery;
    DC_TLFLUp: TUpdateSQL;
    DS: TDataSource;
    TLFLDBGridEh: TDBGridEh;
    tmpQuery: TQuery;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DC_TLFLMasJGNO: TStringField;
    DC_TLFLMasTempQty: TCurrencyField;
    DC_TLFLMasCLDH: TStringField;
    DC_TLFLMasCLBH: TStringField;
    DC_TLFLMasLB: TIntegerField;
    DC_TLFLMasDJBH: TStringField;
    DC_TLFLMasGSBH: TStringField;
    DC_TLFLMasTQty: TFloatField;
    DC_TLFLMasLYOU: TStringField;
    DC_TLFLMasAQty: TFloatField;
    DC_TLFLMasBQty: TFloatField;
    DC_TLFLMasCQty: TFloatField;
    DC_TLFLMasDQty: TFloatField;
    DC_TLFLMasEQty: TFloatField;
    DC_TLFLMasFQty: TFloatField;
    DC_TLFLMasGQty: TFloatField;
    DC_TLFLMasUserID: TStringField;
    DC_TLFLMasUserDate: TDateTimeField;
    DC_TLFLMasYN: TStringField;
    DC_TLFLMasDFL1: TStringField;
    DC_TLFLMasDFL2: TStringField;
    DC_TLFLMasZMLB: TStringField;
    chkQuery: TQuery;
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TLFLDBGridEhGetCeJGParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure TLFLDBGridEhGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    NDate:TDate;
    { Private declarations }
    procedure GetNDate();
    Function CheckHaveChildMat():boolean;
  public
    { Public declarations }
    procedure LoadTLFL();
  end;

var
  JGMatQtyClassify: TJGMatQtyClassify;

implementation
{$R *.dfm}

uses main1,FunUnit;

procedure TJGMatQtyClassify.GetNDate();
begin
  with tmpQuery do
  begin
      active:=false;
      sql.Clear;
      sql.add('select getdate() as NDate ');
      active:=true;
      NDate:=fieldbyname('NDate').Value;
      active:=false;
  end;

end;
//載入關聯表格
procedure TJGMatQtyClassify.LoadTLFL();
var DC_TLFLCLBH,DFL1,DFL2:string;

begin
  with DC_TLFLMas do
  begin
   Active:=false;
   SQL.Clear;
   SQL.Add('select JGZLS.JGNO,JGZLS.CLBH as CLDH,JGZLS.ZMLB,case when ZMLB=''ZZZZZZZZZZ'' then Qty else Qty*(select SubJG.qty from JGZLS As SubJG where SubJG.JGNO=:JGNO and SubJG.CLBH=JGZLS.CLBH and SubJG.ZMLB=''ZZZZZZZZZZ'' ) end  as Qty,DC_TLFL.*  ');
   SQL.Add('from JGZLS ');
   SQL.Add('left join DC_TLFL on  JGZLS.JGNO=DC_TLFL.DJBH and DC_TLFL.DFL1=JGZLS.CLBH and DC_TLFL.DFL2=JGZLS.ZMLB  and DC_TLFL.GSBH='''+main.Edit2.Text+'''  and DC_TLFL.LB=3 ');
   SQL.Add('where JGZLS.JGNO=:JGNO  ');
   Active:=true;
  end;
  //檢查是否存在資料如果不存在要先新增
  DC_TLFLMas.First;
  while Not DC_TLFLMas.Eof do
  begin
    //加工單子母材料
    if DC_TLFLMas.fieldByName('ZMLB').AsString='ZZZZZZZZZZ' then
       //加工母材料進
       DC_TLFLCLBH:=DC_TLFLMas.fieldByName('CLDH').AsString
    else
       //加工子材料出
       DC_TLFLCLBH:=DC_TLFLMas.fieldByName('ZMLB').AsString;
    //紀錄子母材料
    DFL1:=DC_TLFLMas.fieldByName('CLDH').AsString;
    DFL2:=DC_TLFLMas.fieldByName('ZMLB').AsString;
    //新增材料數量分類明細
    if DC_TLFLMas.FieldByName('DJBH').isnull then
    begin
      with tmpQuery do
      begin
          //
          active:=false;
          sql.Clear;
          sql.add('Insert Into DC_TLFL ');
          sql.add('(CLBH, LB, DJBH, GSBH, DFL1, DFL2, TQty, LYOU, AQty, BQty, CQty, DQty, EQty, FQty, GQty, UserID, UserDate,YN ) Values');
          sql.Add('('''+DC_TLFLCLBH+''',3,'''+DC_TLFLMas.fieldByName('JGNO').AsString+''',');
          sql.Add(''''+main.edit2.text+''','''+DFL1+''','''+DFL2+''','+DC_TLFLMas.fieldByName('Qty').AsString+','''',0,0,0,0,0,0,0,'''+main.edit1.text+''','''+Datetostr(NDate)+''',''1'')');
          execsql;
      end;
    end else
    begin
      //已經存在更新數量 避免使用者修改入庫數量
      if  DC_TLFLMas.fieldByName('Qty').AsString<>DC_TLFLMas.fieldByName('TQty').AsString then
      begin
        if DC_TLFLMas.fieldByName('YN').AsString='1' then
        begin
          with tmpQuery do
          begin
              active:=false;
              sql.Clear;
              sql.add('Update DC_TLFL Set ');
              sql.Add('TQty='+DC_TLFLMas.fieldByName('Qty').AsString+',UserID='''+main.edit1.text+''',UserDate='''+Datetostr(NDate)+''' ');
              sql.Add('where DJBH='''+DC_TLFLMas.fieldByName('JGNO').AsString+''' and CLBH='''+DC_TLFLMas.fieldByName('CLDH').AsString+''' and DFL1='''+DFL1+''' and DFL2='''+DFL2+''' and GSBH='''+main.edit2.text+''' and LB=3');
              execsql;
          end;
        end;
      end;
    end;
    DC_TLFLMas.Next;
  end;
  DC_TLFLMas.Active:=false;
  DC_TLFLMas.Active:=true;
  with DC_TLFLMas do
  begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
  end;
  //CDC 和 KDC顯示項目不一樣
  if main.edit2.text='CDC' then
  begin
    TLFLDBGridEh.Columns[7].Visible:=false;
    TLFLDBGridEh.Columns[8].Visible:=false;
   //和預設介面一樣
  end;
  if main.edit2.text='KDC' then
  begin
    TLFLDBGridEh.Columns[3].Title.Caption:='K-SwissQty';
    TLFLDBGridEh.Columns[4].Title.Caption:='PAJGADIUMQty';
    TLFLDBGridEh.Columns[5].Title.Caption:='361Qty';
    TLFLDBGridEh.Columns[6].Title.Caption:='G-STARQty';
    TLFLDBGridEh.Columns[7].Title.Caption:='TOMMYQty';
    TLFLDBGridEh.Columns[8].Title.Caption:='RevQty';
    TLFLDBGridEh.Columns[9].Title.Caption:='RevQty';
    TLFLDBGridEh.Columns[7].Visible:=true;
    TLFLDBGridEh.Columns[8].Visible:=true;
    TLFLDBGridEh.Columns[9].Visible:=true;
	  Label1.Caption:='Total<>K-Swi+PAJG+361+G-START+TOMM+Rev';
  end;  
end;

procedure TJGMatQtyClassify.BB6Click(Sender: TObject);
begin
  Close;
end;
//檢查加工子材料是否有選
Function TJGMatQtyClassify.CheckHaveChildMat():boolean;
var  tmpRes:boolean;
begin
   //
   tmpRes:=true;
   with tmpQuery do
   begin
      //
      active:=false;
      sql.Clear;
      //sql.add('select DFL1,DFL2 from DC_TLFL where DJBH='''+DC_TLFLMas.FieldByName('DJBH').AsString+''' and LB=3 group by DFL1,DFL2  order by DFL1,DFL2 desc
      //sql.Add('select DFL1 from DC_TLFL where DJBH='''+DC_TLFLMas.FieldByName('DJBH').AsString+''' and LB=3 and DFL1 in (select DFL1 from DC_TLFL where DJBH='''+DC_TLFLMas.FieldByName('DJBH').AsString+''' and LB=3 and DFL2=''ZZZZZZZZZZ'' ) and DFL2<>''ZZZZZZZZZZ'' group by DFL1 having COUNT(DFL1)=0 ');
      sql.Add('select M_CLBH.*,IsNull(C_CLBH.count,0) as count from (select DFL1 as DFL1 from DC_TLFL where DJBH='''+DC_TLFLMas.FieldByName('DJBH').AsString+''' and LB=3 and DFL2=''ZZZZZZZZZZ'' ) M_CLBH  ');
      sql.Add('left join ');
      sql.Add('(select DFL1,COUNT(DFL1) as count from DC_TLFL where DJBH='''+DC_TLFLMas.FieldByName('DJBH').AsString+''' and LB=3 and DFL1 in (select DFL1 from DC_TLFL where DJBH='''+DC_TLFLMas.FieldByName('DJBH').AsString+''' and LB=3 and DFL2=''ZZZZZZZZZZ'' ) and DFL2<>''ZZZZZZZZZZ'' group by DFL1 having COUNT(DFL1)>0 ) C_CLBH on M_CLBH.DFL1=C_CLBH.DFL1 ');
      sql.Add('where  C_CLBH.count is null');
      Active:=true;
      //
      if RecordCount>0 then tmpRes:=false;
   end;
   //
   result:=tmpRes;
end;

procedure TJGMatQtyClassify.BB5Click(Sender: TObject);
var i:integer;
begin

  //檢查是否有子材料
  if CheckHaveChildMat()=false then
  begin
    Showmessage('No son material! please check son material');
    exit;
  end;
  //檢查技轉 開發 NG Fail Spec 數量加總是否等於 總數量
  DC_TLFLMas.First;
  while not DC_TLFLMas.Eof do
  begin
    with DC_TLFLMas do
    begin
      //A12 Converse  開發中心
      if main.edit2.text='CDC' then
      begin
        if ((FloattoStr(FieldByName('AQty').AsFloat+FieldByName('BQty').AsFloat+FieldByName('CQty').AsFloat+
            FieldByName('DQty').AsFloat))<>Floattostr(FieldByName('TQty').AsFloat)) then
        begin
          Showmessage('Sum Quantity <> Total Quantity!');
          exit;
        end;
      end;
      //
      //A3Converse  開發中心
      if main.edit2.text='KDC' then
      begin
        if ((FloattoStr(FieldByName('AQty').AsFloat+FieldByName('BQty').AsFloat+FieldByName('CQty').AsFloat+
            FieldByName('DQty').AsFloat+FieldByName('EQty').AsFloat+FieldByName('FQty').AsFloat))<>Floattostr(FieldByName('TQty').AsFloat)) then
        begin
          Showmessage('Sum Quantity <> Total Quantity!');
          exit;
        end;
      end;

    end;
    DC_TLFLMas.Next;
  end;
  //
  //修改或更新
  DC_TLFLMas.First;
  for i:=1 to DC_TLFLMas.RecordCount do
  begin
    case DC_TLFLMas.updatestatus of
        usmodified:
        begin
        with chkQuery do
        begin
          active:=false;
          sql.Clear;
          sql.add('select top 1. * from dc_tlflmonth');
          sql.add('where dcyear='''+formatdatetime('YYYY',ExtraMaterial.JGDet.fieldbyname('UserDate').Value)+'''');
          sql.Add('and dcmonth='''+formatdatetime('MM',ExtraMaterial.JGDet.fieldbyname('UserDate').Value)+'''');
          sql.Add('and gsbh='''+main.edit2.text+'''');
          active:=true;
        end;
        if chkQuery.RecordCount<=0 then
          begin
            with DC_TLFLMas do
            begin
              edit;
              FieldByName('USERID').AsString:=main.edit1.text;
              FieldByName('USERDATE').value:=NDate;
              Post;
            end;
            DC_TLFLUp.Apply(ukmodify);
          end else
          begin
            showmessage('Monthly Ending, can not modify.');
            close;
          end;
        end;
    end;
    DC_TLFLMas.Next;
  end;
  DC_TLFLMas.active:=false;
  DC_TLFLMas.cachedupdates:=false;
  DC_TLFLMas.requestlive:=false;
  //關閉
  Close;
end;

procedure TJGMatQtyClassify.FormCreate(Sender: TObject);
begin
  GetNDate();
end;

procedure TJGMatQtyClassify.TLFLDBGridEhGetCeJGParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  with DC_TLFLMas do
  begin
    //A12 Converse  開發中心
    if main.edit2.text='CDC' then
    begin
      //總數量和分類加總不一致
      if ((FloattoStr(FieldByName('AQty').AsFloat+FieldByName('BQty').AsFloat+FieldByName('CQty').AsFloat+
            FieldByName('DQty').AsFloat))<>Floattostr(FieldByName('TQty').AsFloat)) then
      begin
        TLFLDBGridEh.canvas.font.color:=clred;
      end;
    end;
    //A3  開發中心
    if main.edit2.text='KDC' then
    begin
      //總數量和分類加總不一致
      if ((FloattoStr(FieldByName('AQty').AsFloat+FieldByName('BQty').AsFloat+FieldByName('CQty').AsFloat+
            FieldByName('DQty').AsFloat+FieldByName('EQty').AsFloat+FieldByName('FQty').AsFloat))<>Floattostr(FieldByName('TQty').AsFloat)) then
      begin
        TLFLDBGridEh.canvas.font.color:=clred;
      end;
    end;
    //已經月結
    if (FieldByName('YN').AsString='2') then
    begin
      TLFLDBGridEh.canvas.font.color:=clblue;
    end;
  end;

end;

procedure TJGMatQtyClassify.TLFLDBGridEhGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  with DC_TLFLMas do
  begin
    //A12 Converse  開發中心
    if main.edit2.text='CDC' then
    begin
      //總數量和分類加總不一致
      if ((FloattoStr(FieldByName('AQty').AsFloat+FieldByName('BQty').AsFloat+FieldByName('CQty').AsFloat+
            FieldByName('DQty').AsFloat))<>Floattostr(FieldByName('TQty').AsFloat)) then
      begin
        TLFLDBGridEh.canvas.font.color:=clred;
      end;
    end;
    //A3  開發中心
    if main.edit2.text='KDC' then
    begin
      //總數量和分類加總不一致
      if ((FloattoStr(FieldByName('AQty').AsFloat+FieldByName('BQty').AsFloat+FieldByName('CQty').AsFloat+
            FieldByName('DQty').AsFloat+FieldByName('EQty').AsFloat+FieldByName('FQty').AsFloat))<>Floattostr(FieldByName('TQty').AsFloat)) then
      begin
        TLFLDBGridEh.canvas.font.color:=clred;
      end;
    end;
    //已經月結
    if (FieldByName('YN').AsString='2') then
    begin
      TLFLDBGridEh.canvas.font.color:=clblue;
    end;
  end;
end;

end.
