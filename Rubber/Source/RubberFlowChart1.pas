unit RubberFlowChart1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus;

type
  TRubberFlowChart = class(TForm)
    mainPanel: TPanel;
    SN61_Back: TShape;
    SN61_Link: TLabel;
    SN62_Link: TLabel;
    Shape1: TShape;
    SN62_Back: TShape;
    SN32_Link: TLabel;
    SN32_Back: TShape;
    SN22_Link: TLabel;
    SN22_Back: TShape;
    Shape6: TShape;
    Shape7: TShape;
    SN34_Back: TShape;
    SN34_Link: TLabel;
    Shape11: TShape;
    Shape13: TShape;
    Shape8: TShape;
    Label5: TLabel;
    Label6: TLabel;
    SN312_Link: TLabel;
    Shape2: TShape;
    SN312_Back: TShape;
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
  RubberFlowChart: TRubberFlowChart;

implementation

uses main1;

{$R *.dfm}

procedure TRubberFlowChart.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if willClose=false then
    Action:=caNone
  else
    Action:=caFree;
end;

procedure TRubberFlowChart.FormCreate(Sender: TObject);
begin
  willClose:=false;
end;

procedure TRubberFlowChart.FormDestroy(Sender: TObject);
begin
  RubberFlowChart:=nil;
end;

procedure TRubberFlowChart.LinkClick(Sender: TObject);
var tmpMenu:TMenuItem;
    NameStr:string;
begin
  NameStr:=TLabel(Sender).Name;
  NameStr:=StringReplace(NameStr, '_Link', '',[rfReplaceAll, rfIgnoreCase]);
  tmpMenu:=TMenuItem(main.FindComponent(NameStr));
  if tmpMenu<>nil then  tmpMenu.Click;
end;
procedure TRubberFlowChart.LinkMouseLeave(Sender: TObject);
var NameStr:string;
    tmpShape:TShape;
begin

  TLabel(Sender).Color:=clMoneyGreen;
  NameStr:=TLabel(Sender).Name;
  NameStr:=StringReplace(NameStr, 'Link', 'Back',[rfReplaceAll, rfIgnoreCase]);
  tmpShape:=TShape(FindComponent(NameStr));
  if tmpShape<>nil then  tmpShape.Brush.Color:=clMoneyGreen;

end;
procedure TRubberFlowChart.LinkMouseMove(Sender: TObject;
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
procedure TRubberFlowChart.Authority();
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

procedure TRubberFlowChart.FormShow(Sender: TObject);
begin
  Authority();
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
