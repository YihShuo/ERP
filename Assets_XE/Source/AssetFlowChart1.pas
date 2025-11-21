unit AssetFlowChart1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus;

type
  TAssetFlowChart = class(TForm)
    mainPanel: TPanel;
    shp6: TShape;
    SN211_Back: TShape;
    SN213_Back: TShape;
    SN212_Back: TShape;
    SN212_Link: TLabel;
    SN213_Link: TLabel;
    SN211_Link: TLabel;
    Shape1: TShape;
    Label1: TLabel;
    SN11_Link: TLabel;
    SN11_Back: TShape;
    Shape10: TShape;
    Label7: TLabel;
    Shape11: TShape;
    Shape14: TShape;
    SN13_Link: TLabel;
    SN13_Back: TShape;
    SN214_Link: TLabel;
    SN214_Back: TShape;
    SN215_Link: TLabel;
    SN215_Back: TShape;
    SN216_Back: TShape;
    SN216_Link: TLabel;
    Shape2: TShape;
    SN222_Back: TShape;
    SN22_Link: TLabel;
    SN33_Back: TShape;
    SN23_Link: TLabel;
    SN31_Back: TShape;
    SN23_Back: TShape;
    Shape6: TShape;
    SN217_Link: TLabel;
    SN217_Back: TShape;
    SN24_Back: TShape;
    SN24_Link: TLabel;
    Shape9: TShape;
    Shape12: TShape;
    SN31_Link: TLabel;
    SN34_Back: TShape;
    SN35_Back: TShape;
    SN33_Link: TLabel;
    SN34_Link: TLabel;
    SN35_Link: TLabel;
    Label2: TLabel;
    SN12_Link: TLabel;
    SN12_Back: TShape;
    SN218_Link: TLabel;
    SN218_Back: TShape;
    SN219_Back: TShape;
    SN219_Link: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure Authority();
  public
    willClose:boolean;
    { Public declarations }
    procedure LinkMouseLeave(Sender: TObject);
    procedure LinkMouseMove(Sender: TObject;Shift: TShiftState; X, Y: Integer);
    procedure LinkClick(Sender: TObject);
  end;

var
  AssetFlowChart: TAssetFlowChart;

implementation
  uses main1, FunUnit;
{$R *.dfm}

procedure TAssetFlowChart.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if willClose=false then
    Action:=caNone
  else
    Action:=caFree;
end;

procedure TAssetFlowChart.FormDestroy(Sender: TObject);
begin
  AssetFlowChart:=nil;
end;

procedure TAssetFlowChart.LinkClick(Sender: TObject);
var tmpMenu:TMenuItem;
    NameStr:string;
begin
  NameStr:=TLabel(Sender).Name;
  NameStr:=StringReplace(NameStr, '_Link', '',[rfReplaceAll, rfIgnoreCase]);
  tmpMenu:=TMenuItem(main.FindComponent(NameStr));
  if tmpMenu<>nil then  tmpMenu.Click;
end;

procedure TAssetFlowChart.LinkMouseLeave(Sender: TObject);
var NameStr:string;
    tmpShape:TShape;
begin

  TLabel(Sender).Color:=clMoneyGreen;
  NameStr:=TLabel(Sender).Name;
  NameStr:=StringReplace(NameStr, 'Link', 'Back',[rfReplaceAll, rfIgnoreCase]);
  tmpShape:=TShape(FindComponent(NameStr));
  if tmpShape<>nil then  tmpShape.Brush.Color:=clMoneyGreen;

end;
procedure TAssetFlowChart.LinkMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var NameStr:string;
    tmpShape:TShape;
begin
  TLabel(Sender).Color:=clFuchsia;
  NameStr:=TLabel(Sender).Name;
  NameStr:=StringReplace(NameStr, 'Link', 'Back',[rfReplaceAll, rfIgnoreCase]);
  tmpShape:=TShape(FindComponent(NameStr));
  if tmpShape<>nil then  tmpShape.Brush.Color:=clFuchsia;
end;

procedure TAssetFlowChart.FormCreate(Sender: TObject);
begin
  willClose:=false;
end;
//ลvญญ
procedure TAssetFlowChart.Authority();
var i,j:integer;
    MenuName:String;
    tmpLabel:TLabel;
    tmpShape:TShape;
begin
   for i:=0 to  main.ComponentCount-1 do
   begin
     if main.Components[i] is TMenuItem then
     begin
        MenuName:=TMenuItem(main.Components[i]).Name;
        if TMenuItem(main.Components[i]).Enabled=true then
        begin
           tmpLabel:=TLabel(FindComponent(MenuName+'_Link'));
           if tmpLabel<>nil then
           begin
             tmpLabel.Enabled:=true;
             tmpLabel.OnMouseMove:=LinkMouseMove;
             tmpLabel.OnMouseLeave:=LinkMouseLeave;
             tmpLabel.OnClick:=LinkClick;
           end;
        end;
     end;
   end;
   //
end;

procedure TAssetFlowChart.FormShow(Sender: TObject);
begin
  Authority();
  //
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
