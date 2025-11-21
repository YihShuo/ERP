unit SalesOrder_DDZL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ExtCtrls, DB, DBTables,dateutils;

type
  TDDZLForm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    CBX2: TComboBox;
    CBX3: TComboBox;
    DBGrid1: TDBGridEh;
    DS1: TDataSource;
    DDZLQuery: TQuery;
    DDZLQueryDDBH: TStringField;
    DDZLQueryYWSM: TStringField;
    DDZLQueryKHPO: TStringField;
    DDZLQueryXieXing: TStringField;
    DDZLQuerySheHao: TStringField;
    DDZLQueryArticle: TStringField;
    DDZLQueryXieMing: TStringField;
    DDZLQueryShipDate: TDateTimeField;
    DDZLQueryDDCC: TStringField;
    DDZLQueryXXCC: TStringField;
    DDZLQueryPairs: TIntegerField;
    DDZLQueryokQty: TFloatField;
    DDZLQueryGSBH: TStringField;
    DDZLQueryKFJC: TStringField;
    Label3: TLabel;
    Edit3: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    ReturnType:byte;  //¦^¶Ç¤è¦¡Ãþ«¬
    //ReturnType=1      ¦^¶Çµ¹¥ÀForm TAdoquery
    parentQuery:TQuery;
    parentFieldNM:string;
    //ReturnType=2      ¦^¶Çµ¹¥ÀForm TStringlist;
    parentFieldList:TStringlist;
    parentValueList:TStringlist;
    //
    sdate,edate:Tdate;
    { Private declarations }
  public
    { Public declarations }
    procedure SetParentQuery(qryObj:TQuery;FieNM:string);
    procedure SetParentTStringList(var ValueList:TStringlist;FieldList:TStringList);
  end;

var
  DDZLForm: TDDZLForm;

implementation
  uses main1,FunUnit;
{$R *.dfm}
procedure TDDZLForm.SetParentQuery(qryObj:TQuery;FieNM:string);
begin
  ReturnType:=1;
  parentQuery:=qryObj;
  parentFieldNM:=FieNM;
end;
//
procedure TDDZLForm.SetParentTStringList(var ValueList:TStringlist;FieldList:TStringList);
begin
  ReturnType:=2;
  parentFieldList:=FieldList;
  parentValueList:=ValueList;
end;
//
procedure TDDZLForm.Button1Click(Sender: TObject);
var y,m:word;
begin
  if (CBX2.text='')or (CBX3.text='')  then
    begin
      showmessage('You have to select the year and month first.');
      abort;
    end;
  y:=strtoint(CBX2.Text);
  m:=strtoint(CBX3.Text);
  if (y>2999) or (y<1900) then
    begin
      showmessage('Pls key in right year');
      abort;
    end;
  if (m=0) or (m>12) then
    begin
      showmessage('Pls key in right month');
      abort;
    end;
  sdate:=encodedate(y,m,1);
  edate:=endofthemonth(sdate);
  with DDZLQuery do
    begin
      active:=false;
      sql.Clear;
      sql.add('select DDZL.DDBH,DDZL.XieXing,DDZL.SheHao, XXZL.XieMing,LBZLS.YWSM,DDZL.KHPO,  ');
      sql.add('       DDZL.Article,DDZL.ShipDate,XXZL.CCGB as XXCC,DDZL.CCGB as DDCC ,');
      sql.add('       isnull(YWDD.okQty,0) as okQty,DDZL.Pairs,KFZL.KFJC,GSBH ');
      sql.add('from DDZL ');
      sql.add('left join XXZL on XXZL.XieXIng=DDZl.XieXIng and XXZl.SheHao=DDZl.SheHao');
      sql.add('left join KFZL on KFZl.KFDH=DDZL.KHBH ');
      sql.add('left join (select YSBH,sum(Qty) as okQty from YWDD ');
      sql.add('           where YSBH like '+''''+edit1.Text+'%'+'''');
      sql.add('            group by YSBH) YWDD on YWDD.YSBH=DDZL.DDBH ');
      sql.add('left join LBZLS on LBZLS.LB='+''''+'06'+''''+' and LBZLS.LBDH=DDZL.DDGB');
      sql.add('where convert(smalldatetime,convert(varchar,DDZl.ShipDate,111)) between ');
      sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
      sql.add('      and DDZl.DDBH like '+''''+edit1.Text+'%'+'''');
      sql.add('      and DDZl.XieXing like '+''''+edit3.Text+'%'+'''');
      sql.add('      and XXZl.XieMIng like '+''''+'%'+edit2.Text+'%'+'''') ;
      sql.add('      and DDZL.GSBH='+''''+main.edit2.Text+'''');
      sql.add('order by DDZL.DDBH ');
      active:=true;
    end;

end;

procedure TDDZLForm.FormDestroy(Sender: TObject);
begin
  DDZLForm:=nil;
end;

procedure TDDZLForm.DBGrid1DblClick(Sender: TObject);
var i:integer;
begin
  //¦^¶ÇAdoquery
  if ReturnType=1 then
  begin
    parentQuery.Edit;
    parentQuery.FieldByName(parentFieldNM).AsString:=DDZLQuery.FieldByName(parentFieldNM).AsString;
    parentQuery.Post;
  end;
  //¦^¶Ç¦r¦êList
  if ReturnType=2 then
  begin
    for i:=0 to parentFieldList.Count-1 do
    begin
      parentValueList.Add(DDZLQuery.FieldByName(parentFieldList.Strings[i]).AsString);
    end;
  end;
  ReturnType:=0;
  Close;
end;

procedure TDDZLForm.FormCreate(Sender: TObject);
var i:integer;
    myYear,myMonth,myDay:word;
begin
  DecodeDate(Date(), myYear, myMonth, myDay);
  for i:=0 to CBX2.Items.Count-1 do
  begin
     if strtoint(CBX2.Items[i])=myYear then
     begin
       CBX2.ItemIndex:=i;
       break;
     end;
  end;
  for i:=0 to CBX3.Items.Count-1 do
  begin
     if strtoint(CBX3.Items[i])=myMonth then
     begin
       CBX3.ItemIndex:=i;
       break;
     end;
  end;
  //¦^¶Ç¤è¦¡
  ReturnType:=0;
end;

end.
