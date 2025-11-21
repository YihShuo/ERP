unit ModelToler_DDZL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ExtCtrls, DB, DBTables,dateutils,IniFiles;

type
  TParentCallBack_3Param=procedure (valarray:array of string);
  TModelToler_DDZLForm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    DBGrid1: TDBGridEh;
    DS1: TDataSource;
    Label3: TLabel;
    Edit3: TEdit;
    DDZLQuery: TQuery;
    Label4: TLabel;
    Edit4: TEdit;
    Button2: TButton;
    CK1: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    SQLStrChoice:byte;
    ReturnType:byte;  //回傳方式類型
    //回傳給母Form TAdoquery  ReturnType=1
    parentQuery:TQuery;
    parentFieldNM:string;
    //回傳給母Form TStringlist;  ReturnType=2
    parentFieldList:TStringlist;
    parentValueList:TStringlist;
    //回傳給母Form callback函數 ReturnType=3
    parentCallBackFun:TParentCallBack_3Param;
    { Private declarations }
  public
    BOM_N31_KFCQ:String;
    { Public declarations }
    procedure SetParentQuery(qryObj:TQuery;FieNM:string;SQLChoice:byte);
    procedure SetParentTStringList(var ValueList:TStringlist;FieldList:TStringList;SQLChoice:byte);
    procedure SetParentCallbackFun(CallBackFun:TParentCallBack_3Param;FieldList:TStringList;SQLChoice:byte);
    procedure ReadIni();
  end;

var
  ModelToler_DDZLForm: TModelToler_DDZLForm;

implementation
  uses main1,FunUnit, ModelTolerP;
{$R *.dfm}
procedure TModelToler_DDZLForm.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      BOM_N31_KFCQ:=MyIni.ReadString('ERP','BOM_N31_KFCQ','');
    finally
      MyIni.Free;
    end;
  end;
end;
procedure TModelToler_DDZLForm.SetParentQuery(qryObj:TQuery;FieNM:string;SQLChoice:byte);
begin
  if SQLStrChoice<>SQLChoice then DDZLQuery.Active:=false;
  ReturnType:=1;
  SQLStrChoice:=SQLChoice;//2;
  parentQuery:=qryObj; //ADOQuery元件指標
  parentFieldNM:=FieNM;

end;
//
procedure TModelToler_DDZLForm.SetParentTStringList(var ValueList:TStringlist;FieldList:TStringList;SQLChoice:byte);
begin
  if SQLStrChoice<>SQLChoice then DDZLQuery.Active:=false;
  ReturnType:=2;
  SQLStrChoice:=SQLChoice;
  parentFieldList:=FieldList;
  parentValueList:=ValueList; //回傳TStringlist物件
end;
//
procedure TModelToler_DDZLForm.SetParentCallbackFun(CallBackFun:TParentCallBack_3Param;FieldList:TStringList;SQLChoice:byte);
begin
   if SQLStrChoice<>SQLChoice then DDZLQuery.Active:=false;
   ReturnType:=3;
   SQLStrChoice:=SQLChoice;//2;
   parentFieldList:=FieldList;
   parentCallBackFun:=CallBackFun;  //回傳到父Form Callback函數
end;

procedure TModelToler_DDZLForm.Button1Click(Sender: TObject);
begin


  if SQLStrChoice=1 then
  begin
    with DDZLQuery do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select  YWXXNew.XieXing,YWXXNew.SheHao,XXList.Article,');
      sql.Add('        XXList.DAOMH,XXList.KFJC,XXList.XieMing');
      sql.Add('from YWXXNew left join ');
      sql.Add('    (select XXZL.XieXing,XXZL.SheHao,XXZL.Article,XXZL.DAOMH,XXZL.XieMing,KFZL.KFJC ');
      sql.Add('     From XXZL left join  KFZL on KFZL.KFDH=XXZL.KHDH');
      sql.Add('          Group by XXZL.XieXing,XXZL.SheHao,XXZL.Article,XXZL.DAOMH,XXZL.XieMing,KFZL.KFJC ) XXList ');
      sql.Add('  on YWXXNew.XieXing=XXList.XieXIng and YWXXNew.SheHao = XXList.SheHao  ');
      sql.Add('where  YWXXNew.XieXing like '+'''%'+edit1.Text+'%''');
      if trim(edit2.Text)<>'' then
         sql.add(' and YWXXNew.SheHao like '+'''%'+edit2.text+'%''');
      if trim(edit3.Text)<>'' then
         sql.add(' and XXList.Article like '+'''%'+edit3.text+'%''');
      if trim(edit4.Text)<>'' then
         sql.add(' and XXList.DAOMH like '+'''%'+edit4.text+'%''');
      sql.Add(' Group by YWXXNew.XieXing,YWXXNew.SheHao,XXList.Article,XXList.DAOMH,XXList.KFJC,XXList.XieMing ');
      active:=true;
    end;
  end else  if SQLStrChoice=2 then
  begin
      with DDZLQuery do
      begin
        active:=false;
        sql.Clear;
        sql.add('select distinct DDZL.XieXing,DDZL.SheHao,max(XXZL.Article) as Article,');
        sql.add('             max(XXZL.DAOMH) as DAOMH,XXZL.XieMing,KFZL.KFJC');
        sql.add('      from ZLZLS');
        //sql.add('      left join DDZLS on ZLZLS.ZLBH=DDZL.ZLBH and ZLZLS.ZLCC=DDZLS.CC');
        sql.add('      left join DDZL on DDZl.DDBH=ZLZLS.ZLBH');
        sql.add('      left join XXZL on XXZl.XieXing=DDZl.XieXing and DDZl.SheHao=XXZL.SheHao');
        sql.add('      left join KFZL on KFZL.KFDH=XXZL.KHDH ');

        sql.add('      where (DDZL.DDZT='+''''+'Y'+''''+' or ddzl.ddzt='+''''+'S'+''''+')');
        sql.add('            and Convert(varchar,DDZL.Shipdate,111)>'+''''+'2008/08/01'+'''');
        sql.add('            and DDZL.ShipDate>getdate()-120 ');
        if trim(edit1.Text)<>'' then
          sql.add('            and DDZL.XieXing like '+'''%'+edit1.Text+'%''');
        if trim(edit2.Text)<>'' then
          sql.add('            and XXZL.SheHao like '+'''%'+edit2.text+'%''');
        if trim(edit3.Text)<>'' then
          sql.add('            and XXZL.Article like '+'''%'+edit3.text+'%''');
        if trim(edit4.Text)<>'' then
          sql.add('            and XXZL.DAOMH like '+'''%'+edit4.text+'%''');
        sql.add('            group by DDZL.XieXing,DDZL.SheHao,XXZL.XieMing,KFZL.KFJC ');
        active:=true;
      end;
  end else  if SQLStrChoice=3 then
  begin
      with DDZLQuery do
      begin
        active:=false;
        sql.Clear;
        sql.add('select  XXZL.XieXing,XXZL.SheHao,XXZL.Article,');
        sql.add('             XXZL.DAOMH,XXZL.XieMing,KFZL.KFJC,ddzls.CC as XXCC,ywxxbox.Oweigh');
        sql.add('      from XXZL');
        sql.add('      left join KFZL on KFZL.KFDH=XXZL.KHDH ');
        sql.Add('      left join ddzl on xxzl.XieXing=DDZL.XieXing and xxzl.SheHao=DDZL.SheHao');
        sql.Add('      left join ddzls on ddzl.DDBH=ddzls.DDBH');
        sql.Add('      left join xxzls on xxzl.XieXing=xxzls.XieXing and xxzl.SheHao=xxzls.SheHao');
        sql.Add(' 	   and xxzls.clbh like ''H14%'' and xxzls.BWLB=''1'' and ddzls.cc between xxzls.CCQQ and xxzls.ccqz ');
        sql.Add(' 	   left join ywxxbox on xxzls.clbh=ywxxbox.clbh');
        sql.add('      where XXZL.XieXing like '+'''%'+edit1.Text+'%''');
        if trim(edit2.Text)<>'' then
          sql.add('            and XXZL.SheHao like '+'''%'+edit2.text+'%''');
        if trim(edit3.Text)<>'' then
          sql.add('            and XXZL.Article like '+'''%'+edit3.text+'%''');
        if trim(edit4.Text)<>'' then
          sql.add('            and XXZL.DAOMH like '+'''%'+edit4.text+'%''');
        if BOM_N31_KFCQ<>'' then
          sql.add('       and XXZL.KFCQ in ('''+BOM_N31_KFCQ+''' )');
        if CK1.Checked then
          sql.Add('       and ddzls.CC is not null');  
        sql.Add('       Group by XXZL.XieXing,XXZL.SheHao,XXZL.Article,XXZL.DAOMH,XXZL.XieMing,KFZL.KFJC,ddzls.CC,ywxxbox.Oweigh ');
        sql.add('       order by XXZL.XieXing,ddzls.CC  ');
        //memo1.Lines:=sql;
        active:=true;
      end;
  end;

end;

procedure TModelToler_DDZLForm.FormDestroy(Sender: TObject);
begin
  ModelToler_DDZLForm:=nil;
end;

procedure TModelToler_DDZLForm.DBGrid1DblClick(Sender: TObject);
var i:integer;
    valarray:array of string;
begin
  //回傳Adoquery
  if ReturnType=1 then
  begin
    parentQuery.Edit;
    parentQuery.FieldByName(parentFieldNM).AsString:=DDZLQuery.FieldByName(parentFieldNM).AsString;
    parentQuery.Post;
    ReturnType:=0;
    Close;
  end;
  //回傳字串List
  if ReturnType=2 then
  begin
    for i:=0 to parentFieldList.Count-1 do
    begin
      parentValueList.Add(DDZLQuery.FieldByName(parentFieldList.Strings[i]).AsString);
    end;
    ReturnType:=0;
    Close;
  end;
  //回傳Callback函數
  if ReturnType=3 then
  begin
    setlength(valarray,parentFieldList.Count);
    for i:=0 to High(valarray) do
      valarray[i]:=DDZLQuery.FieldByName(parentFieldList.Strings[i]).AsString;
    parentCallBackFun(valarray);//回傳父Form Callback函數
    setlength(valarray,0);
  end;
  //
end;

procedure TModelToler_DDZLForm.FormCreate(Sender: TObject);
begin
  //回傳方式
  ReturnType:=0;
  SQLStrChoice:=0;
  ReadIni();
end;

procedure TModelToler_DDZLForm.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

procedure TModelToler_DDZLForm.Button2Click(Sender: TObject);
var bm:Tbookmark;
  i:integer;
  Qty:real;
  bookmarklist:tbookmarklistEh;
begin
   if messagedlg('Do you really want to copy these record?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
   begin
     if (not DDZLQuery.Active) then
      begin
        abort;
      end;
      if (DDZLQuery.recordcount<1) then
      begin
        abort;
      end;

    DDZLQuery.disablecontrols;
    bm:=DDZLQuery.getbookmark;
    bookmarklist:=DBGrid1.selectedrows;
    if bookmarklist.count>0 then
    begin
      try
         for i:=0 to bookmarklist.count-1 do
         begin
           DDZLQuery.gotobookmark(pointer(bookmarklist[i]));
           //
              with ModelToler.YWXXNew do
              begin
                  edit;
                  ModelToler.YWXXNew.FieldByName('XieXing').AsString:=DDZLQuery.fieldbyname('XieXing').value ;
                  ModelToler.YWXXNew.FieldByName('SheHao').AsString:=DDZLQuery.fieldbyname('SheHao').value ;
                  ModelToler.YWXXNew.FieldByName('Article').AsString:=DDZLQuery.fieldbyname('Article').value ;
                  ModelToler.YWXXNew.FieldByName('DAOMH').AsString:=DDZLQuery.fieldbyname('DAOMH').value ;
                  ModelToler.YWXXNew.FieldByName('XieMing').AsString:=DDZLQuery.fieldbyname('XieMing').value ;
                  ModelToler.YWXXNew.FieldByName('KFJC').AsString:=DDZLQuery.fieldbyname('KFJC').value ;
                  ModelToler.YWXXNew.FieldByName('XXCC').AsString:=DDZLQuery.fieldbyname('XXCC').value ;
                  ModelToler.YWXXNew.FieldByName('OWeigh').AsString:=DDZLQuery.fieldbyname('OWeigh').value ;
                  insert;
              end;
            end;
           //
      finally
        begin
          DDZLQuery.gotobookmark(bm);
          DDZLQuery.freebookmark(bm);
          DDZLQuery.enablecontrols;
          showmessage('You have finish copy!');
        end;
    end;
   end;
  end; 
end;

end.
