unit Report1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls;

type
  TReport = class(TForm)
    ItemView: TListView;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ItemViewDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Report: TReport;

implementation

uses SysUser1;

{$R *.dfm}

procedure TReport.FormDestroy(Sender: TObject);
begin
  Report:=nil;
end;

procedure TReport.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TReport.FormCreate(Sender: TObject);
var MyItem: TListItem;
begin
  MyItem := ItemView.Items.Add;
  MyItem.Caption := 'P.C';
  MyItem.SubItems.Add('Plan_SN531');

  MyItem := ItemView.Items.Add;
  MyItem.Caption := 'P.C';
  MyItem.SubItems.Add('Plan_SN532');

  MyItem := ItemView.Items.Add;
  MyItem.Caption := 'P.C';
  MyItem.SubItems.Add('Plan_SN535');

end;

procedure TReport.ItemViewDblClick(Sender: TObject);
begin

    try
      if SysUser.Query1.RequestLive then
      begin
        with SysUser.Query1 do
        begin
          edit;
          fieldbyname('Report').AsString:= fieldbyname('Report').AsString+ItemView.Selected.SubItems[0] + ',';
        end;
      end
      else
        abort;
      except
          showmessage('Can not insert data, pls double check again !!!');
      end;
end;

end.
