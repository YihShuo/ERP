unit QC_FailReasonList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls;

type
  TQC_FailReasonList = class(TForm)
    ItemView: TListView;
    Panel1: TPanel;
    BB5: TBitBtn;
    BB6: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure ItemViewCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure ItemViewDblClick(Sender: TObject);
    procedure BB5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QC_FailReasonList: TQC_FailReasonList;

implementation
  uses QC_DailyBonding1;
{$R *.dfm}

procedure TQC_FailReasonList.FormCreate(Sender: TObject);
var MyItem: TListItem;
begin
  ItemView.DoubleBuffered:=true;
  ItemView.Items.Clear;
  MyItem := ItemView.Items.Add;
  MyItem.StateIndex:=0;
  MyItem.Caption := 'Over dried cement';
  MyItem.SubItems.Add('N');
  MyItem := ItemView.Items.Add;
  MyItem.StateIndex:=0;
  MyItem.Caption := 'Material Failure';
  MyItem.SubItems.Add('N');
  MyItem := ItemView.Items.Add;
  MyItem.StateIndex:=0;
  MyItem.Caption := 'Poor Priming';
  MyItem.SubItems.Add('N');
  MyItem := ItemView.Items.Add;
  MyItem.StateIndex:=0;
  MyItem.Caption := 'Poor Pressing';
  MyItem.SubItems.Add('N');
  MyItem := ItemView.Items.Add;
  MyItem.StateIndex:=0;
  MyItem.Caption := 'Poor Roughing';
  MyItem.SubItems.Add('N');
  MyItem := ItemView.Items.Add;
  MyItem.StateIndex:=0;
  MyItem.Caption := 'Cohesive Failure';
  MyItem.SubItems.Add('N');
  MyItem := ItemView.Items.Add;
  MyItem.StateIndex:=0;
  MyItem.Caption := 'Cohesive Failure';
  MyItem.SubItems.Add('N');
  MyItem := ItemView.Items.Add;
  MyItem.StateIndex:=0;
  MyItem.Caption := 'Wet Cement';
  MyItem.SubItems.Add('N');
  MyItem := ItemView.Items.Add;
  MyItem.StateIndex:=0;
  MyItem.Caption := 'Delamination';
  MyItem.SubItems.Add('N');
  MyItem := ItemView.Items.Add;
  MyItem.StateIndex:=0;
  MyItem.Caption := 'Cracking of foxing tape';
  MyItem.SubItems.Add('N');
  MyItem := ItemView.Items.Add;
  MyItem.StateIndex:=0;
  MyItem.Caption := 'Breaking of outsole';
  MyItem.SubItems.Add('N');
  MyItem := ItemView.Items.Add;
  MyItem.StateIndex:=0;
  MyItem.Caption := 'Tearing of material';
  MyItem.SubItems.Add('N');
  MyItem := ItemView.Items.Add;
  MyItem.StateIndex:=0;
  MyItem.Caption := 'Other damage';
  MyItem.SubItems.Add('N');

end;

procedure TQC_FailReasonList.BB6Click(Sender: TObject);
begin
  Close;
end;

procedure TQC_FailReasonList.ItemViewCustomDrawItem(
  Sender: TCustomListView; Item: TListItem; State: TCustomDrawState;
  var DefaultDraw: Boolean);
begin
  if Item.StateIndex=1 then
     Sender.Canvas.Brush.Color:= clYellow;
end;

procedure TQC_FailReasonList.ItemViewDblClick(Sender: TObject);
begin
  if ItemView.Selected.StateIndex=0 then
  begin
    ItemView.Selected.StateIndex:=1;
    ItemView.Selected.SubItems[0]:='Y';
  end else
  begin
    ItemView.Selected.StateIndex:=0;
    ItemView.Selected.SubItems[0]:='N';
  end;
end;

procedure TQC_FailReasonList.BB5Click(Sender: TObject);
var i:integer;
    InfoStr:string;
begin
  //
  InfoStr:='';
  for i:=0 to ItemView.Items.Count-1 do
  begin
    if ItemView.Items[i].StateIndex=1 then
       InfoStr:=InfoStr+ItemView.Items[i].Caption+'&';
  end;
  if length(InfoStr)>2 then
  begin
    InfoStr:=Copy(InfoStr,1,length(InfoStr)-1);
    with QC_DailyBonding.LabTS do
    begin
      edit;
      fieldbyname('FailMm').AsString:=InfoStr;
      Post;
    end;
  end;
  Close;
  //
end;

end.
