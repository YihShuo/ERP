unit PurSize_BL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,dateutils;
  {Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, DBCtrls, Grids, DBGrids, StdCtrls, ComCtrls, Buttons,
  ExtCtrls, Menus;}

type
  TPurSize_BL = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    CBX2: TComboBox;
    CBX3: TComboBox;
    Edit5: TEdit;
    DBGrid1: TDBGrid;
    DS1: TDataSource;
    Query1: TQuery;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1CLSL: TFloatField;
    Query1ZLBH: TStringField;
    Label6: TLabel;
    Edit6: TEdit;
    Query1BWBH: TStringField;
    Query1YWSM: TStringField;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PurSize_BL: TPurSize_BL;
  sdate,edate:TDate;

implementation

uses PurSize1, main1;

{$R *.dfm}

procedure TPurSize_BL.Button1Click(Sender: TObject);
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
  if y>2020 then
    begin
      showmessage('Pls contect with designer.');
      abort;
    end;
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


with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select  ZLZLS2.ZLBH,ZLZLS2.BWBH,BWZL.YWSM,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH');
    sql.add(',isnull(ZLZLS2.CLSL,0) as CLSL');
    sql.add('from ZLZLS2 left join CLZL on CLZL.CLDH=ZLZLs2.CLBH');
    sql.add('left join DDZl on DDZl.ZLBH=ZLZLS2.ZLBH');
    sql.add('left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH');
    sql.add('left join BWZL on BWZL.BWDH=ZLZLS2.BWBH');
    sql.add('where ZLZLS2.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('and ZLZLS2.ZLBH like '+''''+edit5.Text+'%'+'''');
    sql.add('and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
    sql.add('and CLZL.YWPM like '+''''+'%'+edit4.Text+'%'+'''');
    sql.add('and ZLZLS2.BWBH like '+''''+'%'+edit6.Text+'%'+'''');
    sql.add('and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between ' );
    sql.add(''''+formatdatetime('yyyy/MM/dd',sdate) +''''+'and '+''''+formatdatetime('yyyy/MM/dd',edate) +'''');
    sql.add('and DDZL.DDZT='+''''+'Y'+'''');
    sql.add('and ZLZLS2.ZMLB='+''''+'N'+'''');
    sql.add('and CLZL.LYCC='+''''+'N'+'''');
    sql.add('and DDZL.GSBH='+''''+main.edit2.text+'''');
    sql.add('and exists(select SCZL.SCBH from SCZL where SCZL.ZLBH=ZLZLS2.ZLBH )');
    sql.add('and ZLZLS2.CLSL<>0');
    sql.add('order by ZLZLS2.CLBH,ZLZLS2.ZLBH,ZLZLS2.BWBH');
    active:=true;
  end;

end;

procedure TPurSize_BL.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit2.SetFocus;
end;

procedure TPurSize_BL.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit3.SetFocus;
end;

procedure TPurSize_BL.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit4.SetFocus;
end;

procedure TPurSize_BL.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit5.SetFocus;
end;

procedure TPurSize_BL.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  button1click(nil);
end;

procedure TPurSize_BL.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit5.SetFocus;
end;


  {
procedure GetSelectedRecord  
(DataSet : TDataSet; FieldName : String;  
BookmarkList : TBookmarkList; Strings : TStrings);  
//???程中的??分??：?据表、字段名?、??、用?保存所?字段?容的  
//字符串（用于??容??到另一???窗体中的TLIST控件中）  
var  
I: Integer;  
bm : TBookMark;  
begin  
Strings.Clear;  
with Dataset do begin  
DisableControls;  
bm := GetBookMark;  
try  
//每???的??都有一????志，?就??理它?提供了?件  
for I := 0 to BookmarkList.Count - 1 do begin  
Bookmark := BookmarkList[I];
Strings.Add(DataSet.FindField(fieldname).AsString);  
end;  
finally  
GotoBookMark(bm);  
FreeBookMark(bm);  
EnableControls;  
end;  
end;  
end;  }


procedure TPurSize_BL.Button2Click(Sender: TObject);
var bm:Tbookmark;
i:integer;
Qty:real;
bookmarklist:tbookmarklist;
begin
if messagedlg('Do you really want to copy these record?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
begin
Qty:=0;
with query1 do
  begin
    disablecontrols;
    bm:=getbookmark;
    bookmarklist:=dbgrid1.selectedrows;
    try
      for i:=0 to bookmarklist.count-1 do
      begin
        gotobookmark(pointer(bookmarklist[i]));
        Qty:=Qty+Query1.fieldbyname('CLSL').Value;
      end;
      PurSize.CGDet.edit;
      PurSize.CGDet.fieldbyname('Memo').Value:=
                           fieldbyname('CLBH').Value+'('+floattostr(Qty)+')';
    finally
      begin
        gotobookmark(bm);
        freebookmark(bm);
        enablecontrols;
        showmessage('You have finish copy!');
      end;
    end;
  end;
end;

end;

procedure TPurSize_BL.FormDestroy(Sender: TObject);
begin
PurSize_BL:=nil;
end;

procedure TPurSize_BL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
query1.active:=false;
end;

end.
