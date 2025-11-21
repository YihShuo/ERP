unit ArticleChoose1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, ExtCtrls, GridsEh, DBGridEh, Grids;

type
  TArticleChoose = class(TForm)
    pnl1: TPanel;
    lbl1: TLabel;
    ArticleEtd: TEdit;
    lbl2: TLabel;
    SeasonEtd: TEdit;
    lbl3: TLabel;
    ShoeNameEtd: TEdit;
    btn1: TButton;
    DS1: TDataSource;
    qry1: TQuery;
    dbgrdh1: TDBGridEh;
    qry1DevType: TStringField;
    qry1FD: TStringField;
    qry1JiJie: TStringField;
    qry1XieMing: TStringField;
    qry1DDMH: TStringField;
    qry1DAOMH: TStringField;
    qry1XTMH: TStringField;
    recordengname: TQuery;
    qry1kfjd: TStringField;
    Edit1: TEdit;
    Label1: TLabel;
    qry1DEVCODE: TStringField;
    Edit2: TEdit;
    Label2: TLabel;
    qry1ypdh: TStringField;
    qry1ypcc: TStringField;
    qry1productiontype: TStringField;
    qry1subtype: TStringField;
    Edit3: TEdit;
    Label3: TLabel;
    qry1YN: TStringField;
    qry1YSSM: TStringField;
    procedure btn1Click(Sender: TObject);
    procedure dbgrdh1CellClick(Column: TColumnEh);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ArticleChoose: TArticleChoose;

implementation
uses  main1, PaperRoom_shoeTest, FunUnit;

{$R *.dfm}

procedure TArticleChoose.btn1Click(Sender: TObject);
begin

  Edit2.Text:=recordengname.fieldbyname('engname').value;
  if (edit2.Text='') and (main.edit1.text<>'35376') and (main.edit1.text<>'51270') and (main.edit1.text<>'53029') and (main.edit1.text<>'75993') and (main.edit1.text<>'45091') and (main.edit1.text<>'50785') then
  begin
    ShowMessage('plz type Developer Name');
    Abort;
  end;

  qry1.Active := False;
  qry1.SQL.Clear;
  qry1.SQL.Add('select kfxxzl.DEVCODE,ypzl.kfjd,kfxxzl.DevType,ypzl.FD,kfxxzl.JiJie,kfxxzl.XieMing,kfxxzl.XTMH ');
  qry1.SQL.Add('       ,kfxxzl.DDMH,kfxxzl.DAOMH,ypzl.ypdh,ypzl.ypcc,xxzlkf.productiontype,ypzl.subtype,ypzl.YN,kfxxzl.YSSM ');
  qry1.SQL.Add('from ypzl ');
  qry1.SQL.Add('left join kfxxzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.shehao=kfxxzl.shehao');
  qry1.SQL.Add('left join xxzlkf on xxzlkf.xiexing=kfxxzl.xiexing and xxzlkf.shehao=kfxxzl.shehao');
  qry1.SQL.Add('where 1=1');
  qry1.SQL.Add('and  not exists (select ypdh from shoetest where Substring(ypdh,4,1)=''V'' and  ypzl.ypdh=shoetest.ypdh group by ypdh)');  //laiv開過的不能開開第二次
  if ArticleEtd.text<>'' then
     qry1.SQL.Add(' and kfxxzl.devcode like '''+ArticleEtd.Text+'%''');
  if SeasonEtd.text<>'' then
     qry1.SQL.Add(' and kfxxzl.JiJie like '''+SeasonEtd.Text+'%''');
  if ShoenameEtd.text<>'' then
     qry1.SQL.Add(' and kfxxzl.XieMing like '''+ShoenameEtd.Text+'%''');
  if edit3.text<>'' then
     qry1.SQL.Add(' and ypzl.ypdh like '''+edit3.Text+'%''');
  qry1.SQL.Add(' and ypzl.kfjd like '''+edit1.Text+'%''');
  if (main.edit1.text<>'35376') AND (main.edit1.text<>'51022') AND (main.edit1.text<>'51270') AND (main.edit1.text<>'53029') AND (main.edit1.text<>'75993') AND (main.edit1.text<>'45091') AND (main.edit1.text<>'50785') then //非管理者跟技轉人員只能開自己的型體
     qry1.SQL.Add(' and ypzl.fd= '''+edit2.text+''' ');
  if (main.edit1.text='35376') or (main.edit1.text='75993') or (main.edit1.text='45091') or (main.edit1.text='50785') then   //技轉人員只能開lait
     qry1.SQL.Add(' and (Substring(ypdh,4,1)=''T'' or ypzl.kfjd=''PDT'') and kfxxzl.KHDH = ''036'' ');
  if (main.edit1.text='53029')  then   //SKX人員只能開SKXt
     qry1.SQL.Add(' and (Substring(ypdh,4,1)=''T'' or ypzl.kfjd=''PDT'') and kfxxzl.KHDH = ''0075'' ');
  if (main.edit1.text<>'35376') AND (main.edit1.text<>'51022') AND (main.edit1.text<>'51270') and (main.edit1.text<>'53029') AND (main.edit1.text<>'75993') AND (main.edit1.text<>'45091') AND (main.edit1.text<>'50785') then  //非管理者跟技轉人員只能開laiv跟laik
     qry1.SQL.Add(' and (Substring(ypdh,4,1)=''V'' or Substring(ypdh,4,1)=''K'') ');
  //20220302
  qry1.SQL.Add('and ypzl.gsdh='''+main.edit2.text+'''');
  qry1.SQL.Add(' group by ypzl.subtype,ypzl.ypdh,kfxxzl.DEVCODE,ypzl.kfjd,kfxxzl.XieXing,kfxxzl.DevType,ypzl.FD,kfxxzl.JiJie,ypzl.ypcc ');
  qry1.SQL.Add(' ,kfxxzl.SheHao,kfxxzl.XieMing,kfxxzl.XieXing,kfxxzl.XTMH,kfxxzl.DDMH,kfxxzl.DAOMH,ypzl.ypcc,xxzlkf.productiontype,YPZL.YN,kfxxzl.YSSM ');
  qry1.SQL.Add('order by ypzl.ypdh desc');
  //showmessage(qry1.SQL.text);
  //funcobj.WriteErrorLog(qry1.SQL.text);
  qry1.Active := True;

end;

procedure TArticleChoose.dbgrdh1CellClick(Column: TColumnEh);
begin
    //出貨鎖定，不得再開領料單
  if qry1.FieldByName('YN').value='5' then
  begin
    showmessage('Already finished. Pls checked accont first.' );
    abort;
  end;
  PaperRoom.Masqry.Edit;
  PaperRoom.Masqry.FieldByName('Article').Value := qry1.FieldByName('DEVCODE').Value;
  PaperRoom.Masqry.FieldByName('Stage').Value := qry1.FieldByName('kfjd').Value;
  PaperRoom.Masqry.FieldByName('FD').Value := qry1.FieldByName('FD').Value;
  PaperRoom.Masqry.FieldByName('season').Value := qry1.FieldByName('JiJie').Value;
  PaperRoom.Masqry.FieldByName('XieMing').Value := qry1.FieldByName('XieMing').Value;
  PaperRoom.Masqry.FieldByName('LastNo').Value := qry1.FieldByName('XTMH').Value;
  PaperRoom.Masqry.FieldByName('CutDieNo').Value := qry1.FieldByName('DAOMH').Value;
  PaperRoom.Masqry.FieldByName('DDMH').Value := qry1.FieldByName('DDMH').Value;
  PaperRoom.Masqry.FieldByName('ypdh').Value := qry1.FieldByName('ypdh').Value;
  PaperRoom.Masqry.FieldByName('devtp').Value := qry1.FieldByName('devtype').Value;
  PaperRoom.Masqry.FieldByName('siz').Value := qry1.FieldByName('ypcc').Value;
  PaperRoom.Masqry.FieldByName('Construction').Value := qry1.FieldByName('productiontype').Value;
  PaperRoom.Masqry.FieldByName('subtp').Value := qry1.FieldByName('subtype').Value;
  if PaperRoom.ComboBox2.Text = 'SKX' then
    PaperRoom.Masqry.FieldByName('brand').Value := 'Skechers'
  else if PaperRoom.ComboBox2.Text = 'SRL' then
    PaperRoom.Masqry.FieldByName('brand').Value := 'SOREL'
  else
    PaperRoom.Masqry.FieldByName('brand').Value := 'Converse';


end;

procedure TArticleChoose.FormCreate(Sender: TObject);
begin
  with recordengname do
  begin
    Active:=false;        //抓取使用者資料
    SQL.Clear;
    SQL.add('select isnull(Engname,'''') as Engname from Busers');
    SQL.add('where userid= '''+main.Edit1.Text+''' ');
    Active:=true;
  end;
end;

end.
