unit SOPTool1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,Comobj, Spin;

type
  TSOPTool = class(TForm)
    ExlBtn: TButton;
    Edit1: TEdit;
    Memo1: TMemo;
    Edit2: TEdit;
    Label1: TLabel;
    Button1: TButton;
    KeyEdit: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ColEdit1: TEdit;
    ColEdit2: TEdit;
    ColNumSpin: TSpinEdit;
    Label5: TLabel;
    Label6: TLabel;
    ColEdit3: TEdit;
    Label7: TLabel;
    ColEdit4: TEdit;
    procedure ExlBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    AppDir:string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SOPTool: TSOPTool;

implementation

{$R *.dfm}

procedure TSOPTool.ExlBtnClick(Sender: TObject);
var eclApp,WorkBook:olevariant;
    workSheet,shape : OleVariant;
    i:integer;
begin
  try
    eclApp:=CreateOleObject('Excel.Application');
    eclapp.DisplayAlerts := False;
    //WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;
  //
  eclapp.WorkBooks.Open(AppDir+Edit1.Text);
  workSheet := eclApp.WorkSheets[1];
  showmessage(inttostr(workSheet.Shapes.Count));

  while  workSheet.Shapes.Count>0 do
  begin
    workSheet.Shapes.Item(1).delete
  end;
  eclapp.ActiveWorkbook.SaveAs(AppDir+Edit2.Text,-4143 );   //纗Αxls
  eclApp.quit;
  Showmessage('Success');
end;

procedure TSOPTool.FormCreate(Sender: TObject);
begin
  AppDir:=ExtractFilePath(Application.ExeName);

end;

procedure TSOPTool.Button1Click(Sender: TObject);
var i:integer;
   html,hidden:string;
   XML,XMLSub:string;
begin

 XML:='<?xml version="1.0" encoding="UTF-8"?><data>';
 XMLSub:='';
 for i:=1 to ColNumSpin.Value do
 begin
   XMLSub:=XMLSub+'<para><kid>erp'+inttostr(i)+'</kid><kerp>'+KeyEdit.Text+'</kerp><khidden>erp'+inttostr(i)+'1</khidden>';
   //3逆
   XMLSub:=XMLSub+'<sub><id>erp'+inttostr(i)+'2</id><erp>'+ColEdit1.Text+'</erp><hidden>nil</hidden></sub>'; //计
   XMLSub:=XMLSub+'<sub><id>erp'+inttostr(i)+'3</id><erp>'+ColEdit2.Text+'</erp><hidden>nil</hidden></sub>'; //糷计
   XMLSub:=XMLSub+'<sub><id>erp'+inttostr(i)+'6</id><erp>'+ColEdit4.Text+'</erp><hidden>erp'+inttostr(i)+'6</hidden></sub>';  //瓜
   XMLSub:=XMLSub+'<sub><id>erp'+inttostr(i)+'4</id><erp>'+ColEdit3.Text+'</erp><hidden>erp'+inttostr(i)+'4</hidden></sub>';  //へ絏
   XMLSub:=XMLSub+'</para>';
 end;
 XML:=XML+XMLSub+'</data>';
 html:='<input type=''hidden'' id=''erpdata'' value='''+XML+''' >';
 //Hidden Input  kid 1
 for i:=1 to ColNumSpin.Value do
 begin
   hidden:=hidden+'<input type=''hidden'' id=''erp'+inttostr(i)+'1'' value=''''>'+#13#10;
 end;
 //2 piece 计
 //3 layter 糷计
 //Hidden Input  id 4  へ絏 Size Run
 for i:=1 to ColNumSpin.Value do
 begin
   hidden:=hidden+'<input type=''hidden'' id=''erp'+inttostr(i)+'4'' value=''''>'+#13#10;
 end;
 //5 オ竲ぃノ
 //6 场瓜
 for i:=1 to ColNumSpin.Value do
 begin
   hidden:=hidden+'<input type=''hidden'' id=''erp'+inttostr(i)+'6'' value=''''>'+#13#10;
 end;
 Memo1.Text:=html+#13#10+hidden;
end;

end.
