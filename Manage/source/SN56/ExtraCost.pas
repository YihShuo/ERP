unit ExtraCost;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, ComCtrls,comobj,
  Buttons;

type
  TExtraCost1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    Label6: TLabel;
    DTP1: TDateTimePicker;
    Label8: TLabel;
    DTP2: TDateTimePicker;
    CH1: TCheckBox;
    CH2: TCheckBox;
    TempQry: TQuery;
    DataSource1: TDataSource;
    Qtemp: TQuery;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    //procedure SpeedButton1Click(Sender: TObject);
    procedure GetSubSQL(var SQL:string;EditObj:TEdit;FieldNM:string;Flag:string);
    procedure SpeedButton1Click(Sender: TObject);
  private
    AppDir:String;
    MatNoFilterIndex:byte;
    { Private declarations }
  public
    { Public declarations }
  end;
const
  MatNoFilter:array [0..0] of string= ('like');

var
  ExtraCost1: TExtraCost1;

implementation

uses main1,ExcelSheetDlg1,FunUnit, ExtraMatNo1;

{$R *.dfm}

procedure TExtraCost1.GetSubSQL(var SQL:string;EditObj:TEdit;FieldNM:string;Flag:string);
var tmpList,tmpList1:TStringlist;
    i:integer;
begin
  SQL:='';
  if trim(Edit2.Text)<>'' then
    begin
    if Pos('*', Edit2.Text)>0 then
      begin
        tmpList:=funcObj.SplitString(trim(Edit2.Text),'*');
        for i:=0 to tmpList.Count-1 do
        begin
          SQL:=SQL+'('+FieldNM+' like '''+Flag+tmpList.Strings[i]+'%'') or ';
        end;
        SQL:='and ('+Copy(SQL,1,length(SQL)-4)+')';
        tmpList.Free;
    end else
    if  trim(Edit2.Text)<>'' then
    begin
      tmpList:=funcObj.SplitString(trim(Edit2.Text),'');
      for i:=0 to tmpList.Count-1 do
      begin
        SQL:=SQL+'('+FieldNM+' like '''+Flag+tmpList.Strings[i]+'%'')  ';
      end;
      SQL:='and ('+Copy(SQL,1,length(SQL)-4)+')';
      tmpList.Free;
  end;
end;
end;

procedure TExtraCost1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;
procedure TExtraCost1.FormCreate(Sender: TObject);
begin
  AppDir:=ExtractFilePath(Application.ExeName);
end;

procedure TExtraCost1.Button1Click(Sender: TObject);
var a,b,c :word;
    i:word;
    k :word;
    j,h :word;
    MatNoSQL,like:string;
    tmpList:TStringlist;
begin
  with TempQry do
  begin
    active:=false;
    sql.Clear();
    sql.Add('select top 1 CWHL  from CWHLS order by HLYEAR desc ,HLMONTH desc,HLDAY desc');
    active:=true;
  end;
  GetSubSQL(MatNoSQL,Edit2,'ExtraVN.clbh','');
  with QTemp do
  begin
    active:=false;
    sql.Clear();
    sql.Add('select ExtraVN.clbh,clzl.zwpm ');
    sql.Add('from ExtraVN left join DDZL on DDZL.XieXing=ExtraVN.XieXing and DDZL.SheHao=ExtraVN.SheHao');
    sql.add('Left join (select YSBH from SMDD where GXLB= ''A''');
    sql.Add('and convert(smalldatetime,convert(varchar,SMDD.PlanDate,111)) between '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''+'');
    sql.Add('Group by YSBH ) as SMDD on SMDD.YSBH = DDZl.DDBH');
    sql.Add('left join clzl on clzl.cldh = ExtraVN.clbh');
    sql.add('where DDZL.DDBH like '+''''+''+Edit1.Text+'%'+'''');
    if  Edit2.Text <> '' then
    begin
      if Pos('*', Edit2.Text)>0 then
      begin
      sql.add(''+StringReplace(MatNoSQL, 'cldh', 'ExtraVN.clbh',[rfReplaceAll, rfIgnoreCase]));
      end else
      if  trim(Edit2.Text)<>'' then
      sql.add('and ExtraVN.clbh like  '+''''+''+Edit2.Text+'%'+'''');
    end;
    sql.Add('Group by ExtraVN.clbh,clzl.zwpm');
    active:=true;
  end;
   if (CH1.Checked = false) and (CH2.Checked = false)  then
   begin
      showmessage('Choose unit price');
   end else
   if (CH1.Checked = true) and (CH2.Checked = true)  then
   begin
      showmessage('Just select one');
   end else
  begin
  if QTemp.RecordCount > 0 then
  begin
   with query1 do
    begin
    active:=false;
    sql.clear;
     if (CH1.Checked = false) and (CH2.Checked = true) then
     begin
       sql.add('select  DDZL.DDBH,DDZL.Article,DDZL.Pairs ');
       while not QTemp.eof do
       begin
         sql.add(',Max(Case when EXTRAVN.CLBH like '+''''+ QTemp.fieldbyname('CLBH').AsString+'%'' then case when EXTRAVN.VNPrice is null ');
         sql.add('then Round(EXTRAVN.USPrice* '+TempQry.fieldbyname('CWHL').AsString+'.0,3) else EXTRAVN.VNPrice end end ) as '+''''+ QTemp.fieldbyname('zwpm').AsString+'''');
         QTemp.Next;
       end ;
       QTemp.First;
       while not QTemp.eof do
       begin
         sql.add(',sum(Case when EXTRAVN.CLBH like '+''''+ QTemp.fieldbyname('CLBH').AsString+'%'' then case when EXTRAVN.VNPrice is null ');
         sql.add('then Round(EXTRAVN.USPrice*'+TempQry.fieldbyname('CWHL').AsString+'.0,3) else EXTRAVN.VNPrice end end )*DDZL.Pairs as '+''''+ QTemp.fieldbyname('zwpm').AsString+'Total''');
         QTemp.Next;
       end;
       sql.add(',(');
       QTemp.First;
       while not QTemp.eof do
       begin
         sql.add(' + IsNull(sum(Case when EXTRAVN.CLBH  like '+''''+ QTemp.fieldbyname('CLBH').AsString+'%'' then case when EXTRAVN.VNPrice is null ');
         sql.add('then Round(EXTRAVN.USPrice*'+TempQry.fieldbyname('CWHL').AsString+'.0,3) else EXTRAVN.VNPrice end end)*DDZL.Pairs,0)');
         QTemp.Next;
       end;
       sql.add('     ) as '+''''+'TotalPrice'+''''+'');
       sql.add('from DDZL');
       sql.add('Left join (');
       sql.add('select EXTRAVN.*,CLZL.YWPM,CLZL.ZWPM from EXTRAVN,CLZL where CLZL.CLDH=EXTRAVN.CLBH) EXTRAVN  ');
       sql.add('on EXTRAVN.XieXing = DDZl.XieXing and EXTRAVN.SheHao = DDZl.SheHao ');
       sql.add('Left join CLZL on CLZL.CLDH=EXTRAVN.CLBH ');
       sql.add('Left join (select YSBH,PlanDate from SMDD where GXLB= ''A'' and convert(smalldatetime,convert(varchar,SMDD.PlanDate,111)) between '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''+'');
       sql.add('Group by YSBH,PlanDate )as SMDD on SMDD.YSBH = DDZl.DDBH ');
       sql.add('where  DDZL.GSBH='''+main.Edit2.Text+''' ');
       sql.add('and convert(smalldatetime,convert(varchar,SMDD.PlanDate,111)) between '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''+'');
       sql.add('and DDZL.DDBH like '+''''+''+Edit1.Text+'%'+'''');
       sql.add('and DDZL.article like '+''''+''+Edit3.Text+'%'+'''');
       sql.add('Group by DDZL.DDBH,DDZL.Pairs,DDZL.Article  ');
     end else
     begin
       sql.add('select  DDZL.DDBH,DDZL.Article,DDZL.Pairs ');
       while not QTemp.eof do
       begin
         sql.add(',Max(Case when EXTRAVN.CLBH like '+''''+ QTemp.fieldbyname('CLBH').AsString+'%'' then case when EXTRAVN.USPrice is null ');
         sql.add('then Round(EXTRAVN.VNPrice/'+TempQry.fieldbyname('CWHL').AsString+'.0,3) else EXTRAVN.USPrice end end ) as '+''''+ QTemp.fieldbyname('zwpm').AsString+'''');
         QTemp.Next;
       end ;
       QTemp.First;
       while not QTemp.eof do
       begin
         sql.add(',sum(Case when EXTRAVN.CLBH like '+''''+ QTemp.fieldbyname('CLBH').AsString+'%'' then case when EXTRAVN.USPrice is null ');
         sql.add('then Round(EXTRAVN.VNPrice/'+TempQry.fieldbyname('CWHL').AsString+'.0,3) else EXTRAVN.USPrice end end )*DDZL.Pairs as '+''''+ QTemp.fieldbyname('zwpm').AsString+'Total''');
         QTemp.Next;
       end;
       sql.add(',(');
      QTemp.First;
      while not QTemp.eof do
      begin
         sql.add(' + IsNull(sum(Case when EXTRAVN.CLBH like '+''''+ QTemp.fieldbyname('CLBH').AsString+'%'' then case when EXTRAVN.USPrice is null ');
         sql.add('then Round(EXTRAVN.VNPrice/'+TempQry.fieldbyname('CWHL').AsString+'.0,3) else EXTRAVN.USPrice end end)*DDZL.Pairs,0)');
         QTemp.Next;
      end;
       sql.add('     ) as '+''''+'TotalPrice'+''''+'');
       sql.add('from DDZL');
       sql.add('Left join (');
       sql.add('select EXTRAVN.*,CLZL.YWPM,CLZL.ZWPM from EXTRAVN,CLZL where CLZL.CLDH=EXTRAVN.CLBH) EXTRAVN  ');
       sql.add('on EXTRAVN.XieXing = DDZl.XieXing and EXTRAVN.SheHao = DDZl.SheHao ');
       sql.add('Left join CLZL on CLZL.CLDH=EXTRAVN.CLBH ');
       sql.add('Left join (select YSBH,PlanDate from SMDD where GXLB= ''A'' and convert(smalldatetime,convert(varchar,SMDD.PlanDate,111)) between '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''+'');
       sql.add('Group by YSBH,PlanDate )as SMDD on SMDD.YSBH = DDZl.DDBH ');
       sql.add('where  DDZL.GSBH='''+main.Edit2.Text+''' ');
       sql.add('and convert(smalldatetime,convert(varchar,SMDD.PlanDate,111)) between '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''+'');
       sql.add('and DDZL.DDBH like '+''''+''+Edit1.Text+'%'+'''');
       sql.add('and DDZL.article like '+''''+''+Edit3.Text+'%'+'''');
       sql.add('Group by DDZL.DDBH,DDZL.Pairs,DDZL.Article  ');
     end;
     active:=true;
   end;
   with DBGridEh1 do
   begin
     columns[0].Width:=80;
     columns[0].title.caption:='訂單編號|DDBH';
     columns[0].Footer.ValueType:=fvtcount;
     columns[1].Width:=60;
     columns[1].title.caption:='SKU#|Article';
     columns[2].Width:=60;
     columns[2].title.caption:='雙數|pairs';
     h:= Qtemp.RecordCount;
     for i:= 3 to  (3+h)-1 do
       begin
         columns[i].Width:=120;
         columns[i].Title.Caption:='單價|'+columns[i].Title.Caption;
       end;
     for i:= 3+h to  Query1.FieldCount-1    do
       begin
         columns[i].Width:=140;
         columns[i].Title.Caption:='總金額|'+columns[i].Title.Caption;
         columns[i].Footer.ValueType:=fvtsum;
       end;
     for j:= Query1.FieldCount-1 to  Query1.FieldCount-1 do
       begin
         columns[j].Width:=80;
         columns[j].title.caption:='小計|Total';
         columns[j].Footer.ValueType:=fvtsum;
       end;
   end;
 end else
 showmessage('Khong co vat tu');
end;
end;

procedure TExtraCost1.Button2Click(Sender: TObject);
var i,j,k:integer;
    h: integer;
    eclApp,WorkBook:olevariant;
    slSplit:TStringList;
begin
    if Query1.Active then
    begin
      if Query1.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
    end else
    begin
      showmessage('No record.');
      abort;
    end;
    try
      eclApp:=CreateOleObject('Excel.Application');
      eclApp.DisplayAlerts := False; // xoa thong bao
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('NO Microsoft Excel','Microsoft Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
    WorkBook:=eclApp.workbooks.Add;
    h:= Qtemp.RecordCount;
     for i:= 4 to  (Query1.FieldCount- h)-1 do
     begin
      eclApp.Cells(1,i):=Query1.fields[i].FieldName;
      eclApp.Cells(1,i):='單價';
      eclApp.Range[eclApp.Cells[1,i],eclApp.Cells[1,(4+h)-1]].merge;
      eclApp.Range[eclApp.Cells[1,i],eclApp.Cells[1,(4+h)-1]].Font.Bold:=true;
      eclApp.Range[eclApp.Cells[1,i],eclApp.Cells[1,(4+h)-1]].HorizontalAlignment := -4108;
     end;
     Query1.First;
     for i:= 4+h to   Query1.FieldCount-1  do
     begin
      eclApp.Cells(1,i):=Query1.fields[i].FieldName;
      eclApp.Cells(1,i):='總金額';
      eclApp.Range[eclApp.Cells[1,i],eclApp.Cells[1,Query1.FieldCount-1]].merge;
      eclApp.Range[eclApp.Cells[1,i],eclApp.Cells[1,Query1.FieldCount-1]].Font.Bold:=true;
      eclApp.Range[eclApp.Cells[1,i],eclApp.Cells[1,Query1.FieldCount-1]].HorizontalAlignment := -4108;
     end;
    for i:=1 to Query1.fieldcount do
    begin
      eclApp.Cells(2,i):=Query1.fields[i-1].FieldName;
    end;
    for i:=1 to DBGridEh1.fieldcount do
    begin
      eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[2,1]].merge;
      eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[2,1]].Font.Bold:=true;
      eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[2,1]].HorizontalAlignment := -4108;
      eclApp.Cells(1,1):='訂單編號';

      eclApp.Range[eclApp.Cells[1,2],eclApp.Cells[2,2]].merge;
      eclApp.Range[eclApp.Cells[1,2],eclApp.Cells[2,2]].Font.Bold:=true;
      eclApp.Range[eclApp.Cells[1,2],eclApp.Cells[2,2]].HorizontalAlignment := -4108;
      eclApp.Cells(1,2):='SKU#';

      eclApp.Range[eclApp.Cells[1,3],eclApp.Cells[2,3]].merge;
      eclApp.Range[eclApp.Cells[1,3],eclApp.Cells[2,3]].Font.Bold:=true;
      eclApp.Range[eclApp.Cells[1,3],eclApp.Cells[2,3]].HorizontalAlignment := -4108;
      eclApp.Cells(1,3):='雙數';

      eclApp.Range[eclApp.Cells[1,DBGridEh1.fieldcount],eclApp.Cells[2,DBGridEh1.fieldcount]].merge;
      eclApp.Range[eclApp.Cells[1,DBGridEh1.fieldcount],eclApp.Cells[2,DBGridEh1.fieldcount]].Font.Bold:=true;
      eclApp.Range[eclApp.Cells[1,DBGridEh1.fieldcount],eclApp.Cells[2,DBGridEh1.fieldcount]].HorizontalAlignment := -4108;
      eclApp.Cells(1,DBGridEh1.fieldcount):= '合計';
    end;
    Query1.First;
      j:=3;
      while not Query1.Eof do
      begin
      for k:=0 to Query1.fieldcount-1 do
      begin
          eclApp.Cells(j,k+1):=Query1.Fields[k].Value;
      end;
      Query1.Next;
      inc(j);
    end;
    eclApp.range[eclApp.cells[1,1],eclApp.cells[j-1,k]].borders.weight:=2;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
    except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;

procedure TExtraCost1.SpeedButton1Click(Sender: TObject);
begin
  ExtraMatNo:=TExtraMatNo.create(self);
  ExtraMatNo.Show;
  //enabled:=true;
end;
  
end.
