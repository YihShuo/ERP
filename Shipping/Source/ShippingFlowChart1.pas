unit ShippingFlowChart1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus;

type
  TShippingFlowChart = class(TForm)
    mainPanel: TPanel;
    shp6: TShape;
    SN11_Back: TShape;
    SN21_Back: TShape;
    SN12_Back: TShape;
    SN12_Link: TLabel;
    Shape8: TShape;
    SN21_Link: TLabel;
    SN11_Link: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    SN13_Link: TLabel;
    SN13_Back: TShape;
    SN14_Back: TShape;
    SN14_Link: TLabel;
    Shape1: TShape;
    Label1: TLabel;
    SN31_Back: TShape;
    SN31_Link: TLabel;
    SN33_Link: TLabel;
    SN33_Back: TShape;
    SN32_Link: TLabel;
    SN32_Back: TShape;
    Shape2: TShape;
    Label2: TLabel;
    SN41_Link: TLabel;
    SN41_Back: TShape;
    SN34_Link: TLabel;
    SN34_Back: TShape;
    SN42_Link: TLabel;
    SN42_Back: TShape;
    SN15_Back: TShape;
    SN15_Link: TLabel;
    Shape3: TShape;
    SN43_Back: TShape;
    SN43_Link: TLabel;
    SN92_Back: TShape;
    Label3: TLabel;
    SN92_Link: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
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
  ShippingFlowChart: TShippingFlowChart;

implementation

uses main1;

{$R *.dfm}

procedure TShippingFlowChart.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if willClose=false then
    Action:=caNone
  else
    Action:=caFree;
end;

procedure TShippingFlowChart.FormCreate(Sender: TObject);
begin
  willClose:=false;
end;

procedure TShippingFlowChart.FormDestroy(Sender: TObject);
begin
  ShippingFlowChart:=nil;
end;

procedure TShippingFlowChart.LinkClick(Sender: TObject);
var tmpMenu:TMenuItem;
    NameStr:string;
begin
  NameStr:=TLabel(Sender).Name;
  NameStr:=StringReplace(NameStr, '_Link', '',[rfReplaceAll, rfIgnoreCase]);
  tmpMenu:=TMenuItem(main.FindComponent(NameStr));
  if tmpMenu<>nil then  tmpMenu.Click;
end;
procedure TShippingFlowChart.LinkMouseLeave(Sender: TObject);
var NameStr:string;
    tmpShape:TShape;
begin

  TLabel(Sender).Color:=clMoneyGreen;
  NameStr:=TLabel(Sender).Name;
  NameStr:=StringReplace(NameStr, 'Link', 'Back',[rfReplaceAll, rfIgnoreCase]);
  tmpShape:=TShape(FindComponent(NameStr));
  if tmpShape<>nil then  tmpShape.Brush.Color:=clMoneyGreen;

end;
procedure TShippingFlowChart.LinkMouseMove(Sender: TObject;
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

//ลvญญ
procedure TShippingFlowChart.Authority();
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

procedure TShippingFlowChart.FormShow(Sender: TObject);
begin
  Authority();
end;

end.
