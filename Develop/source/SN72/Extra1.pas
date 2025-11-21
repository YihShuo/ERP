unit Extra1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls;

type
  TExtra = class(TForm)
    Panel1: TPanel;
    ItemView: TListView;
    Panel2: TPanel;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ItemViewDblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Extra: TExtra;

implementation

uses SampleDevelopInformation1;

{$R *.dfm}

procedure TExtra.FormCreate(Sender: TObject);
var MyItem: TListItem;
begin
  MyItem := ItemView.Items.Add;
  MyItem.Caption := 'sublimation/ditgial printing';
  MyItem.SubItems.Add('7');
  MyItem.SubItems.Add('昇華轉印/數碼印刷');

  MyItem := ItemView.Items.Add;
  MyItem.Caption := 'WP shoe no bootie';
  MyItem.SubItems.Add('7');
  MyItem.SubItems.Add('沒有襪套的防水鞋');

  MyItem := ItemView.Items.Add;
  MyItem.Caption := 'WP shoe with bootie';
  MyItem.SubItems.Add('14');
  MyItem.SubItems.Add('有襪套的防水鞋');

  MyItem := ItemView.Items.Add;
  MyItem.Caption := 'wash upper shoe';
  MyItem.SubItems.Add('21');
  MyItem.SubItems.Add('水洗鞋');

  MyItem := ItemView.Items.Add;
  MyItem.Caption := 'Normal Laser';
  MyItem.SubItems.Add('7');
  MyItem.SubItems.Add('一般雷射');

  MyItem := ItemView.Items.Add;
  MyItem.Caption := 'Special Laser';
  MyItem.SubItems.Add('14');
  MyItem.SubItems.Add('特殊雷射');

  MyItem := ItemView.Items.Add;
  MyItem.Caption := 'CPU (Casting PU)';
  MyItem.SubItems.Add('7');
  MyItem.SubItems.Add('微量射出');

  MyItem := ItemView.Items.Add;
  MyItem.Caption := 'Rubber Shoes';
  MyItem.SubItems.Add('7');
  MyItem.SubItems.Add('橡膠鞋');

  MyItem := ItemView.Items.Add;
  MyItem.Caption := 'Twice time assembly';
  MyItem.SubItems.Add('7');
  MyItem.SubItems.Add('2次成型');

  MyItem := ItemView.Items.Add;
  MyItem.Caption := 'Special Process/Special Pattern';
  MyItem.SubItems.Add('14');
  MyItem.SubItems.Add('特殊流程/特殊面版');

  MyItem := ItemView.Items.Add;
  MyItem.Caption := 'Special Process2/Special Pattern2';
  MyItem.SubItems.Add('7');
  MyItem.SubItems.Add('特殊流程2/特殊面版2');

  MyItem := ItemView.Items.Add;
  MyItem.Caption := 'Full Embroidery/Full Printing';
  MyItem.SubItems.Add('7');
  MyItem.SubItems.Add('滿版電繡/滿版印刷');
  {MyItem := ItemView.Items.Add;
  MyItem.Caption := 'Half cold cement process';
  MyItem.SubItems.Add('7');
  MyItem.SubItems.Add('半冷貼流程');

  MyItem := ItemView.Items.Add;
  MyItem.Caption := 'Half vulcanized process';
  MyItem.SubItems.Add('7');
  MyItem.SubItems.Add('半加硫流程');   }
end;

procedure TExtra.FormDestroy(Sender: TObject);
begin
  extra:=nil;
end;

procedure TExtra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TExtra.ItemViewDblClick(Sender: TObject);
var
  days:integer;
begin
    try
      if SampleDevelopInformation.qrykfxxzl.RequestLive then
      begin
        with SampleDevelopInformation.qrykfxxzl do
        begin
          edit;
          fieldbyname('extra').AsString:= fieldbyname('extra').AsString+ItemView.Selected.Caption + ',';
          fieldbyname('extraday').Asinteger:= fieldbyname('extraday').Asinteger+strtoint(ItemView.Selected.subItems[0]);
        end;
      end
      else
        abort;
      except
          showmessage('Can not insert data, pls double check again !!!');
      end;
end;

procedure TExtra.Button1Click(Sender: TObject);
var
  days:integer;
begin
    try
      if SampleDevelopInformation.qrykfxxzl.RequestLive then
      begin
        with SampleDevelopInformation.qrykfxxzl do
        begin
          edit;
          fieldbyname('extra').AsString:='';
          fieldbyname('extraday').Asinteger:=0;
        end;
      end
      else
        abort;
      except
          showmessage('Can not insert data, pls double check again !!!');
      end;
end;

end.
